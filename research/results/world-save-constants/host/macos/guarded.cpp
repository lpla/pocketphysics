// Actual save and Thing/Circle/Pin XML methods are inserted unchanged.
// TinyXML and POSIX file I/O are real; firmware, physics, and drawing are stubs.
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dirent.h>
#include <string>
#include <sys/stat.h>
#include <vector>
#include "tinyxml.h"
#define DEFAULT_GRAVITY		2.0f//8.0f //60.0f
#define DEFAULT_DENSITY		1.0f//5.0f
#define DEFAULT_FRICTION	0.3f
#define DEFAULT_RESTITUTION	0.2f
struct FirmwareData { unsigned short name[10] = {}; } firmware;
FirmwareData *PersonalData = &firmware;
bool failAllocation = false;
void *probeMalloc(size_t bytes) {
    if (failAllocation) { failAllocation = false; return nullptr; }
    return std::malloc(bytes);
}
// libfat ignores the Unix mode; host directories must remain writable.
int probeMkdir(const char *path, int) { return mkdir(path, 0700); }
bool ppDirExists(const char *path) {
    DIR *dir = opendir(path);
    if (!dir) return false;
    closedir(dir);
    return true;
}
struct Thing {
    enum Shape { Circle, Polygon, Pin };
    enum Type { Solid, Dynamic };
    Type type = Dynamic;
    Shape shape;
    int x = 12, y = 34;
    float rotation = 0.0f;
    explicit Thing(Shape value) : shape(value) {}
    virtual ~Thing() = default;
    Shape getShape() const { return shape; }
    void addGenericXMLAttributes(TiXmlElement *);
    virtual TiXmlElement *toXML() = 0;
};
struct Circle : Thing {
    int radius = 7;
    Circle() : Thing(Thing::Circle) {}
    TiXmlElement *toXML() override;
};
struct Pin : Thing {
    Thing *thing1 = nullptr, *thing2 = nullptr;
    Pin() : Thing(Thing::Pin) {}
    Thing *getThing(int);
    TiXmlElement *toXML() override;
};
struct World {
    int n_things = 0;
    Thing *things[50] = {};
    const char *getSketchSaveDirectory() const;
    void save(char *, char *);
};
#define malloc probeMalloc
#define mkdir probeMkdir

const char *World::getSketchSaveDirectory() const
{
	if(ppDirExists("data/pocketphysics/sketches"))
		return "data/pocketphysics/sketches";
	if(ppDirExists("pocketphysics/sketches"))
		return "pocketphysics/sketches";
	return "data/pocketphysics/sketches";
}void World::save(char *filename, char *thumbnail)
{
	// Since 0.5, data is stored in data/pocketphysics/sketches instead of pocketphysics/sketches
	// backwards compatibility for the old path is still provided
	bool use_data_dir = true;
#ifdef PP_RUNTIME_FIXES
	if(strcmp(getSketchSaveDirectory(), "pocketphysics/sketches") == 0)
#else
	if(ppDirExists("pocketphysics/sketches"))
#endif
		use_data_dir = false;
	else
	{
		if(!ppDirExists("data"))
		{
			mkdir("data", 777);
		}
		if(!ppDirExists("data/pocketphysics"))
		{
			mkdir("data/pocketphysics", 777);
		}
		if(!ppDirExists("data/pocketphysics/sketches"))
		{
			mkdir("data/pocketphysics/sketches", 777);
		}
		if(!ppDirExists("data/pocketphysics/sketches"))
		{
			printf("diropen failed!\n");
			return;
		}
	}
	
	// Header
	
	TiXmlDocument doc;
	TiXmlDeclaration *decl = new TiXmlDeclaration( "1.0", "", "" );
	doc.LinkEndChild( decl );
	
	// Root node
	TiXmlElement *ppsketchelement = new TiXmlElement( "ppsketch" );
	doc.LinkEndChild(ppsketchelement);
	
	// World
	
	Thing **idtable = (Thing**)malloc(sizeof(Thing*) * (n_things+1));
#ifdef PP_RUNTIME_FIXES
	if(!idtable) return;
	idtable[0] = 0;
	for(int i=0; i<n_things; ++i)
		idtable[i+1] = things[i];
#endif
	
	// Version
	TiXmlElement *versionelement = new TiXmlElement( "creator" );
	TiXmlText *versiontext = new TiXmlText( "Pocket Physics 0.6" );
	versionelement->LinkEndChild(versiontext);	
	ppsketchelement->LinkEndChild(versionelement);
	
	// Author
#ifdef PP_RUNTIME_FIXES
	char authorname[11] = {0};
#else
	char authorname[10] = {0};
#endif
	for(int i=0; i<10; ++i)
		authorname[i] = PersonalData->name[i] & 0xFF;
	
	TiXmlElement *authorelement = new TiXmlElement( "author" );
	TiXmlText *authortext = new TiXmlText( authorname );
	authorelement->LinkEndChild(authortext);	
	ppsketchelement->LinkEndChild(authorelement);

	
	TiXmlElement *worldelement = new TiXmlElement( "world" );
	//TODO: Swap x and y axis!
	worldelement->SetDoubleAttribute("gravity_x", DEFAULT_GRAVITY);
	worldelement->SetDoubleAttribute("gravity_y", 0.0);
	
	for(int i=0; i<n_things; ++i)
	{
		int id = i+1;
		Thing *thing = things[i];
		idtable[id] = thing;
		
		TiXmlElement *thingelement = thing->toXML();
		
		if(thing->getShape() == Thing::Pin)
		{
			Pin *pin = (Pin*)thing;
			
			for(int j=0; j<2; ++j)
			{
				int pinned_id = 0;
				
				Thing *pinned_thing = pin->getThing(j+1);
				if(pinned_thing)
				{
#ifdef PP_RUNTIME_FIXES
					while( (pinned_id < n_things+1) && (idtable[pinned_id] != pinned_thing) )
#else
					while( (idtable[pinned_id] != pinned_thing) && (pinned_id < n_things+1) )
#endif
						++pinned_id;
					
					if(pinned_id == n_things+1)
					{
						printf("Weird: Pinned thing not found!\n");
#ifdef PP_RUNTIME_FIXES
						// Reject an unresolved endpoint before replacing an existing file.
						delete thingelement;
						delete worldelement;
						free(idtable);
						return;
#endif
					}
				}
				
				TiXmlElement *pinnedthingelement = new TiXmlElement("pinned_thing");
				pinnedthingelement->SetAttribute("id", pinned_id);
				thingelement->LinkEndChild(pinnedthingelement);
			}
		}
		else
		{
			thingelement->SetAttribute("id", id);
		}
		worldelement->LinkEndChild(thingelement);
	}
	
	ppsketchelement->LinkEndChild(worldelement);
	
	free(idtable);
	
	// Thumbnail
	
	TiXmlElement *imageelement = new TiXmlElement( "image" );
	TiXmlText *imagetext = new TiXmlText( thumbnail );
	imageelement->LinkEndChild(imagetext);
	
	ppsketchelement->LinkEndChild(imageelement);
	
	// Save
	
	char *f = (char*)calloc(1, 255);
	if(use_data_dir)
		sprintf(f, "%s/%s", "data/pocketphysics/sketches", filename);
	else
		sprintf(f, "%s/%s", "pocketphysics/sketches", filename);
	doc.SaveFile(f);
	free(f);
}
void Thing::addGenericXMLAttributes(TiXmlElement *thingelement)
{
	if(type==Solid)
		thingelement->SetAttribute("type", "solid");
	else if(type==Dynamic)
		thingelement->SetAttribute("type", "dynamic");
	thingelement->SetDoubleAttribute("density", DEFAULT_DENSITY);
	thingelement->SetDoubleAttribute("friction", DEFAULT_FRICTION);
	thingelement->SetDoubleAttribute("restitution", DEFAULT_RESTITUTION);
	thingelement->SetAttribute("x", x);
	thingelement->SetAttribute("y", y);
	thingelement->SetDoubleAttribute("rotation", rotation);
}
TiXmlElement *Circle::toXML(void)
{
	TiXmlElement *element = new TiXmlElement("circle");
	addGenericXMLAttributes(element);
	element->SetAttribute("radius", radius);
	return element;
}
Thing *Pin::getThing(int nr)
{
	if(nr == 1)
		return thing1;
	if(nr == 2)
		return thing2;
	return 0;
}
TiXmlElement *Pin::toXML(void)
{
	TiXmlElement *element = new TiXmlElement("pin");

	element->SetAttribute("x", x);
	element->SetAttribute("y", y);
	
	return element;
}


#undef malloc
#undef mkdir
void createDirectory(const char *path) {
    std::string name(path);
    for (size_t i = 1; i < name.size(); ++i)
        if (name[i] == '/') mkdir(name.substr(0, i).c_str(), 0700);
    mkdir(path, 0700);
}
int main(int argc, char **argv) {
    assert(argc == 6);
    int nameLength = std::stoi(argv[1]), bodies = std::stoi(argv[2]);
    const std::string placement(argv[3]), root(argv[4]), mode(argv[5]);
    assert(nameLength >= 0 && nameLength <= 10 && bodies >= 0 && bodies <= 49);
    for (int i = 0; i < nameLength; ++i) firmware.name[i] = 'A' + i;
    if (root == "data" || root == "both") createDirectory("data/pocketphysics/sketches");
    if (root == "legacy" || root == "both") createDirectory("pocketphysics/sketches");
    const std::string directory = root == "legacy" ? "pocketphysics/sketches" : "data/pocketphysics/sketches";
    const std::string path = directory + "/scene.pp";
    const std::string sentinel = "original sketch remains intact\n";
    FILE *original = fopen(path.c_str(), "w");
    assert(original);
    fputs(sentinel.c_str(), original); fclose(original);
    std::vector<Circle> circles(bodies);
    Circle absent;
    Pin pin;
    if (bodies) pin.thing1 = &circles[0];
    if (bodies > 1) pin.thing2 = &circles.back();
    if (mode == "unknown") pin.thing2 = &absent;
    World world;
    for (int i = 0; i <= bodies; ++i) {
        int position = placement == "first" ? 0 : placement == "middle" ? bodies/2 : bodies;
        if (i == position) world.things[world.n_things++] = &pin;
        if (i < bodies) world.things[world.n_things++] = &circles[i];
    }
    assert(world.n_things == bodies + 1);
    failAllocation = mode == "allocfail";
    char filename[] = "scene.pp", thumbnail[] = "fixture thumbnail";
    world.save(filename, thumbnail);
    if (mode != "normal") {
        FILE *file = fopen(path.c_str(), "r");
        assert(file);
        char buffer[64] = {};
        assert(fread(buffer, 1, sizeof(buffer)-1, file) == sentinel.size());
        fclose(file);
        if (buffer != sentinel) { fputs("SAVE_PRESERVATION\n", stderr); return 55; }
    } else {
        TiXmlDocument document(path.c_str());
        assert(document.LoadFile());
        TiXmlElement *sketch = document.FirstChildElement("ppsketch");
        assert(sketch);
        const char *author = sketch->FirstChildElement("author")->GetText();
        std::string expected;
        for (int i = 0; i < nameLength; ++i) expected += char('A' + i);
        assert(std::string(author ? author : "") == expected);
        TiXmlElement *worldElement = sketch->FirstChildElement("world");
        double gravityX = -1.0, gravityY = -1.0;
        assert(worldElement->QueryDoubleAttribute("gravity_x", &gravityX) == TIXML_SUCCESS);
        assert(worldElement->QueryDoubleAttribute("gravity_y", &gravityY) == TIXML_SUCCESS);
        assert(gravityX == DEFAULT_GRAVITY && gravityY == 0.0);
        TiXmlElement *element = worldElement->FirstChildElement();
        for (int i = 0; i < world.n_things; ++i, element = element->NextSiblingElement()) {
            assert(element);
            if (world.things[i] == &pin) {
                TiXmlElement *endpoint = element->FirstChildElement("pinned_thing");
                for (Thing *target : {pin.thing1, pin.thing2}) {
                    int expectedId = 0, actualId = -1;
                    for (int j = 0; j < world.n_things; ++j)
                        if (world.things[j] == target) expectedId = j+1;
                    assert(endpoint && endpoint->QueryIntAttribute("id", &actualId) == TIXML_SUCCESS);
                    assert(actualId == expectedId);
                    endpoint = endpoint->NextSiblingElement();
                }
            } else {
                int id = 0;
                assert(element->QueryIntAttribute("id", &id) == TIXML_SUCCESS && id == i+1);
            }
        }
        assert(!element);
        assert(std::string(sketch->FirstChildElement("image")->GetText()) == thumbnail);
    }
    printf("world XML save passed: %d objects, author length %d\n", world.n_things, nameLength);
    return 0;
}
