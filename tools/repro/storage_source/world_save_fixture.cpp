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
// PP_CONSTANTS
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

// PP_METHODS

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
