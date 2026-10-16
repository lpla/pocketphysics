#include <cassert>
#include <cstring>
#include "tinyxml.h"
struct Thing {
 enum Type {Dynamic,Solid,NonSolid}; enum CreatedBy {User,Simulation}; enum Shape {Circle,Polygon,Pin};
 Type type; CreatedBy createdby; Shape shape; int x,y; float rotation; void *b2body; bool invisible;
 explicit Thing(TiXmlElement *);
};
struct Pin:Thing { Thing *thing1,*thing2; void *b2joint; explicit Pin(TiXmlElement *); };
Thing::Thing(TiXmlElement *thingelement):
	x(0), y(0), rotation(0.0f), b2body(0)
{
	if( strcmp(thingelement->Attribute("type"), "solid") == 0 )
		type = Solid;
	else if( strcmp(thingelement->Attribute("type"), "dynamic") == 0 )
		type = Dynamic;
	
	createdby = User;
	
	thingelement->QueryIntAttribute("x", &x);
	thingelement->QueryIntAttribute("y", &y);
	double rot;
	thingelement->QueryDoubleAttribute("rotation", &rot);
	rotation = rot;
	// TODO: density, friction, restitution
}
Pin::Pin(TiXmlElement *thingelement):
	Thing(thingelement), thing1(0), thing2(0), b2joint(0)
{
	shape = Thing::Pin;
}

int main(int argc,char **argv) {
 assert(argc==2); TiXmlDocument doc(argv[1]); assert(doc.LoadFile());
 TiXmlElement *element=doc.FirstChildElement("ppsketch")->FirstChildElement("world")->FirstChildElement("pin");
 assert(element); Pin object(element); return 0;
}
