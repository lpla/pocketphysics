#include "b2Triangle.h"
#include "b2Polygon.h"
#include "../../Source/Dynamics/b2Body.h"

#include <cmath>
#include <climits>

bool intersect(const b2Vec2& a0, const b2Vec2& a1,
		       const b2Vec2& b0, const b2Vec2& b1,
		       b2Vec2& intersectionPoint);

#line 1390 "Contrib/b2Polygon.cpp"
b2Polygon* TraceEdge(b2Polygon* p){
	b2PolyNode* nodes = new b2PolyNode[p->nVertices*p->nVertices];//overkill, but sufficient (order of mag. is right)
	int32 nNodes = 0;

	//Add base nodes (raw outline)
	for (int32 i=0; i < p->nVertices; ++i){
		b2Vec2 pos(p->x[i],p->y[i]);
		nodes[i].position = pos;
		++nNodes;
		int32 iplus = (i==p->nVertices-1)?0:i+1;
		int32 iminus = (i==0)?p->nVertices-1:i-1;
		nodes[i].AddConnection(nodes[iplus]);
		nodes[i].AddConnection(nodes[iminus]);
	}

	//Process intersection nodes
	bool dirty = true;
	while (dirty){
		dirty = false;
		for (int32 i=0; i < nNodes; ++i){
			for (int32 j=0; j < nodes[i].nConnected; ++j){
				for (int32 k=0; k < nNodes; ++k){
					if (k==i || &nodes[k] == nodes[i].connected[j]) continue;
					for (int32 l=0; l < nodes[k].nConnected; ++l){

						if ( nodes[k].connected[l] == nodes[i].connected[j] ||
							 nodes[k].connected[l] == &nodes[i]) continue;
						//Check intersection
						b2Vec2 intersectPt;
						//printf("checking intersection: %d, %d, %d, %d\n",i,j,k,l);
						bool crosses = intersect(nodes[i].position,nodes[i].connected[j]->position,
										 nodes[k].position,nodes[k].connected[l]->position,
										 intersectPt);
						if (crosses){
							//printf("Found crossing\n");
							dirty = true;
							//Destroy and re-hook connections at crossing point
							b2PolyNode* connj = nodes[i].connected[j];
							b2PolyNode* connl = nodes[k].connected[l];
							nodes[i].connected[j]->RemoveConnection(nodes[i]);
							nodes[i].RemoveConnection(*connj);
							nodes[k].connected[l]->RemoveConnection(nodes[k]);
							nodes[k].RemoveConnection(*connl);
							nodes[nNodes] = b2PolyNode(intersectPt);
							nodes[nNodes].AddConnection(nodes[i]);
							nodes[i].AddConnection(nodes[nNodes]);
							nodes[nNodes].AddConnection(nodes[k]);
							nodes[k].AddConnection(nodes[nNodes]);
							nodes[nNodes].AddConnection(*connj);
							connj->AddConnection(nodes[nNodes]);
							nodes[nNodes].AddConnection(*connl);
							connl->AddConnection(nodes[nNodes]);
							++nNodes;
						}
					}
				}
			}
		}
	}

	//Collapse duplicate points
	const float32 COLLAPSE_DIST = FLOAT32_EPSILON;
	for (int32 i=0; i < nNodes; ++i){
		for (int32 j=i+1; j < nNodes; ++j){
			b2Vec2 diff = nodes[i].position - nodes[j].position;
			if (diff.Length() < COLLAPSE_DIST){
				b2PolyNode* inode = &nodes[i];
				b2PolyNode* jnode = &nodes[j];
				//Move all of j's connections to i, and orphan j
				int32 njConn = jnode->nConnected;
				for (int32 k=0; k < njConn; ++k){
					inode->AddConnection(*(jnode->connected[k]));
					jnode->connected[k]->AddConnection(*inode);
					jnode->connected[k]->RemoveConnection(*jnode);
					jnode->RemoveConnectionByIndex(k);
				}
				b2Assert(jnode->nConnected == 0);
			}
		}
	}

	//Now walk the edge of the list

	//Find node with minimum y value
	float32 minY = FLOAT32_MAX;
	float32 maxX = -FLOAT32_MAX;
	int32 minYIndex = -1;
	for (int32 i = 0; i < nNodes; ++i) {
		if (nodes[i].position.y < minY && nodes[i].nConnected > 0) {
			minY = nodes[i].position.y;
			minYIndex = i;
			maxX = nodes[i].position.x;
		} else if (nodes[i].position.y == minY && nodes[i].position.x > maxX && nodes[i].nConnected > 0) {
			minYIndex = i;
			maxX = nodes[i].position.x;
		}
	}

	b2Vec2 origDir(1.0f,0.0f);
	b2Vec2* resultVecs = new b2Vec2[nNodes*nNodes];
	int32 nResultVecs = 0;
	b2PolyNode* currentNode = &nodes[minYIndex];
	b2PolyNode* startNode = currentNode;
	b2PolyNode* nextNode = currentNode->GetRightestConnection(origDir);
	resultVecs[0] = startNode->position;
	++nResultVecs;
	while (nextNode != startNode){
		if (nResultVecs > nNodes*nNodes){
			assert(false);//something messed up
		}
		resultVecs[nResultVecs++] = nextNode->position;
		b2PolyNode* oldNode = currentNode;
		currentNode = nextNode;
		nextNode = currentNode->GetRightestConnection(oldNode);
	}

	float32* xres = new float32[nResultVecs];
	float32* yres = new float32[nResultVecs];
	for (int32 i=0; i<nResultVecs; ++i){
		xres[i] = resultVecs[i].x;
		yres[i] = resultVecs[i].y;
	}
	b2Polygon* retval = new b2Polygon(xres,yres,nResultVecs);
	delete[] resultVecs;
	delete[] yres;
	delete[] xres;
	delete[] nodes;
	return retval;
}
