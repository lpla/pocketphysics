#!/usr/bin/env python3
from pathlib import Path
import sys


def replace_exact(text: str, old: str, new: str, name: str) -> str:
    if old not in text:
        raise SystemExit(f"pattern not found while transforming {name}: {old[:80]!r}")
    return text.replace(old, new)


def replace_between(text: str, start: str, end: str, replacement: str, name: str) -> str:
    a = text.find(start)
    if a < 0:
        raise SystemExit(f"start pattern not found while transforming {name}: {start[:80]!r}")
    b = text.find(end, a)
    if b < 0:
        raise SystemExit(f"end pattern not found while transforming {name}: {end[:80]!r}")
    return text[:a] + replacement + text[b:]


def main() -> int:
    if len(sys.argv) != 3:
        raise SystemExit("usage: transform_convex_decomposition.py SRC_DIR DST_DIR")

    src = Path(sys.argv[1])
    dst = Path(sys.argv[2])
    dst.mkdir(parents=True, exist_ok=True)

    for name in ("b2Polygon.cpp", "b2Polygon.h", "b2Triangle.cpp", "b2Triangle.h"):
        (dst / name).write_text((src / name).read_text())

    tri_h = (dst / "b2Triangle.h").read_text()
    tri_h = tri_h.replace("float* x;", "float32* x;")
    tri_h = tri_h.replace("float* y;", "float32* y;")
    (dst / "b2Triangle.h").write_text(tri_h)

    poly_h = (dst / "b2Polygon.h").read_text()
    poly_h = poly_h.replace("#include \"Box2D.h\"\n", "#include \"Box2D.h\"\n#include <string.h>\n")
    poly_h = poly_h.replace(
        "void DecomposeConvexAndAddTo(b2Polygon* p, b2Body* bd, b2FixtureDef* prototype);",
        "b2PolygonDef* DecomposeConvexAndAddTo(b2World* world, b2Polygon* p, b2Body* bd, b2PolygonDef* prototype);",
    )
    poly_h = poly_h.replace("void AddTo(b2FixtureDef& pd);", "void AddTo(b2PolygonDef& pd);")
    poly_h = poly_h.replace("const float32 COLLAPSE_DIST_SQR = FLT_EPSILON*FLT_EPSILON;", "const float32 COLLAPSE_DIST_SQR = B2_FLT_EPSILON*B2_FLT_EPSILON;")
    (dst / "b2Polygon.h").write_text(poly_h)

    poly_cpp = (dst / "b2Polygon.cpp").read_text()
    poly_cpp = poly_cpp.replace("FLT_EPSILON", "B2_FLT_EPSILON")
    poly_cpp = poly_cpp.replace("FLT_MAX", "B2_FLT_MAX")
    poly_cpp = poly_cpp.replace("fabs(", "b2Abs(")
    poly_cpp = poly_cpp.replace("float x1 =", "float32 x1 =")
    poly_cpp = poly_cpp.replace(" float y1 =", " float32 y1 =")
    poly_cpp = poly_cpp.replace("float x2 =", "float32 x2 =")
    poly_cpp = poly_cpp.replace(" float y2 =", " float32 y2 =")
    poly_cpp = poly_cpp.replace("float x3 =", "float32 x3 =")
    poly_cpp = poly_cpp.replace(" float y3 =", " float32 y3 =")
    poly_cpp = poly_cpp.replace("float x4 =", "float32 x4 =")
    poly_cpp = poly_cpp.replace(" float y4 =", " float32 y4 =")
    poly_cpp = poly_cpp.replace("float ua =", "float32 ua =")
    poly_cpp = poly_cpp.replace("float ub =", "float32 ub =")
    poly_cpp = poly_cpp.replace("float denom =", "float32 denom =")
    poly_cpp = poly_cpp.replace("x = new float[nVertices];", "x = new float32[nVertices];")
    poly_cpp = poly_cpp.replace("y = new float[nVertices];", "y = new float32[nVertices];")
    poly_cpp = poly_cpp.replace("float32* newx = new float[nVertices + 1];", "float32* newx = new float32[nVertices + 1];")
    poly_cpp = poly_cpp.replace("float32* newy = new float[nVertices + 1];", "float32* newy = new float32[nVertices + 1];")
    poly_cpp = poly_cpp.replace("void ReversePolygon(float* x, float* y, int n)", "void ReversePolygon(float32* x, float32* y, int n)")
    poly_cpp = poly_cpp.replace("? 1.0f : nrm", "? float32(1.0f) : nrm")
    poly_cpp = poly_cpp.replace('printf("%ff,",x[i]);', 'printf("%ff,", (float)x[i]);')
    poly_cpp = poly_cpp.replace('printf("%ff,",y[i]);', 'printf("%ff,", (float)y[i]);')

    poly_cpp = replace_between(
        poly_cpp,
        "void b2Polygon::AddTo(b2FixtureDef& pd) {",
        "\n\n\t/**\n\t * Finds and fixes \"pinch points,\"",
        """void b2Polygon::AddTo(b2PolygonDef& pd) {
\tif (nVertices < 3) return;
\t
\tb2Assert(nVertices <= b2_maxPolygonVertices);
\t
\tb2Vec2* vecs = GetVertexVecs();
\tint32 count = 0;
\t
    for (int32 i = 0; i < nVertices; ++i) {
\t\tif (vecs[i].x == vecs[remainder(i + 1, nVertices)].x &&
\t\t\tvecs[i].y == vecs[remainder(i + 1, nVertices)].y) {
\t\t\tcontinue;
\t\t}
\t\tpd.vertices[count++] = vecs[i];
    }
\t
\tpd.vertexCount = count;
\tdelete[] vecs;
}

""",
        "b2Polygon.cpp",
    )

    poly_cpp = replace_between(
        poly_cpp,
        "void DecomposeConvexAndAddTo(b2Polygon* p, b2Body* bd, b2FixtureDef* prototype) {",
        "\n\n\t\n    /**\n\t * Find the convex hull",
        """b2PolygonDef* DecomposeConvexAndAddTo(b2World*, b2Polygon* p, b2Body* bd, b2PolygonDef* prototype) {

        if (p->nVertices < 3) return NULL;
        b2Polygon* decomposed = new b2Polygon[p->nVertices - 2]; //maximum number of polys
        int32 nPolys = DecomposeConvex(p, decomposed, p->nVertices - 2);
\t\tif (nPolys < 1) {
\t\t\tdelete[] decomposed;
\t\t\treturn NULL;
\t\t}

\t\tb2PolygonDef* pdarray = new b2PolygonDef[2*p->nVertices];//extra space in case of splits
\t\tint32 extra = 0;
        for (int32 i = 0; i < nPolys; ++i) {
            b2PolygonDef* toAdd = &pdarray[i+extra];
\t\t\t *toAdd = *prototype;
\t\t\tb2Polygon curr = decomposed[i];
\t\t\tif (curr.nVertices == 3){
\t\t\t\t\tfor (int j=0; j<3; ++j){
\t\t\t\t\t\tint32 lower = (j == 0) ? (curr.nVertices - 1) : (j - 1);
\t\t\t\t\t\tint32 middle = j;
\t\t\t\t\t\tint32 upper = (j == curr.nVertices - 1) ? (0) : (j + 1);
\t\t\t\t\t\tfloat32 dx0 = curr.x[middle] - curr.x[lower]; float32 dy0 = curr.y[middle] - curr.y[lower];
\t\t\t\t\t\tfloat32 dx1 = curr.x[upper] - curr.x[middle]; float32 dy1 = curr.y[upper] - curr.y[middle];
\t\t\t\t\t\tfloat32 norm0 = sqrtf(dx0*dx0+dy0*dy0);\tfloat32 norm1 = sqrtf(dx1*dx1+dy1*dy1);
\t\t\t\t\t\tif ( !(norm0 > 0.0f && norm1 > 0.0f) ) {
\t\t\t\t\t\t\tgoto Skip;
\t\t\t\t\t\t}
\t\t\t\t\t\tdx0 /= norm0; dy0 /= norm0;
\t\t\t\t\t\tdx1 /= norm1; dy1 /= norm1;
\t\t\t\t\t\tfloat32 cross = dx0 * dy1 - dx1 * dy0;
\t\t\t\t\t\tfloat32 dot = dx0*dx1 + dy0*dy1;
\t\t\t\t\t\tif (b2Abs(cross) < b2_angularSlop && dot > 0) {
\t\t\t\t\t\t\tfloat32 dx2 = curr.x[lower] - curr.x[upper]; float32 dy2 = curr.y[lower] - curr.y[upper];
\t\t\t\t\t\t\tfloat32 norm2 = sqrtf(dx2*dx2+dy2*dy2);
\t\t\t\t\t\t\tif (norm2 == 0.0f) {
\t\t\t\t\t\t\t\tgoto Skip;
\t\t\t\t\t\t\t}
\t\t\t\t\t\t\tdx2 /= norm2; dy2 /= norm2;
\t\t\t\t\t\t\tfloat32 thisArea = curr.GetArea();
\t\t\t\t\t\t\tfloat32 thisHeight = 2.0f * thisArea / norm2;
\t\t\t\t\t\t\tfloat32 buffer2 = dx2;
\t\t\t\t\t\t\tdx2 = dy2; dy2 = -buffer2;
\t\t\t\t\t\t\tfloat32 newX1[3] = { curr.x[middle]+dx2*thisHeight, curr.x[lower], curr.x[middle] };
\t\t\t\t\t\t\tfloat32 newY1[3] = { curr.y[middle]+dy2*thisHeight, curr.y[lower], curr.y[middle] };
\t\t\t\t\t\t\tfloat32 newX2[3] = { newX1[0], curr.x[middle], curr.x[upper] };
\t\t\t\t\t\t\tfloat32 newY2[3] = { newY1[0], curr.y[middle], curr.y[upper] };
\t\t\t\t\t\t\tb2Polygon p1(newX1,newY1,3);
\t\t\t\t\t\t\tb2Polygon p2(newX2,newY2,3);
\t\t\t\t\t\t\tif (p1.IsUsable()){
\t\t\t\t\t\t\t\tp1.AddTo(*toAdd);
\t\t\t\t\t\t\t\tbd->CreateShape(toAdd);
\t\t\t\t\t\t\t\t++extra;
\t\t\t\t\t\t\t}
\t\t\t\t\t\t\tif (p2.IsUsable()){
\t\t\t\t\t\t\t\tb2PolygonDef* splitAdd = &pdarray[i+extra];
\t\t\t\t\t\t\t\t*splitAdd = *prototype;
\t\t\t\t\t\t\t\tp2.AddTo(*splitAdd);
\t\t\t\t\t\t\t\tbd->CreateShape(splitAdd);
\t\t\t\t\t\t\t}
\t\t\t\t\t\t\tgoto Skip;
\t\t\t\t\t\t}
\t\t\t\t\t}

\t\t\t}
\t\t\tif (decomposed[i].IsUsable()){
\t\t\t\tdecomposed[i].AddTo(*toAdd);
\t\t\t\tbd->CreateShape(toAdd);
\t\t\t}
Skip:
\t\t\t;
        }
        delete[] decomposed;
\t\treturn pdarray;
}

""",
        "b2Polygon.cpp",
    )

    (dst / "b2Polygon.cpp").write_text(poly_cpp)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
