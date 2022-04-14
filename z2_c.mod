var fs1 binary;
var fs2 binary;
var fs3 binary;
var fs4 binary;
var fs5 binary;
var fs6 binary;

var f1A binary;
var f1C binary;
var f1D binary;
var f1F binary;

var f2B binary;
var f2C binary;
var f2E binary;

var f3A binary;
var f3B binary;
var f3D binary;

var f4B binary;
var f4C binary;
var f4E binary;

var f5A binary;
var f5C binary;
var f5D binary;
var f5F binary;

var f6A binary;
var f6E binary;
var f6F binary;

var fAt binary;
var fBt binary;
var fCt binary;
var fDt binary;
var fEt binary;
var fFt binary;

var y >=0;

minimize funkcja_celu:
y;

subject to y1A:
y >= 15 * f1A;
subject to y1C:
y >= 14 * f1C;
subject to y1D:
y >= 9 * f1D;
subject to y1F:
y >= 12 * f1F;
subject to y2B:
y >= 12 * f2B;
subject to y2C:
y >= 16 * f2C;
subject to y2E:
y >= 10 * f2E;
subject to y3A:
y >= 11 * f3A;
subject to y3B:
y >= 14 * f3B;
subject to y3D:
y >= 12 * f3D;
subject to y4B:
y >= 16 * f4B;
subject to y4C:
y >= 11 * f4C;
subject to y4E:
y >= 12 * f4E;
subject to y5A:
y >= 13 * f5A;
subject to y5C:
y >= 17 * f5C;
subject to y5D:
y >= 13 * f5D;
subject to y5F:
y >= 15 * f5F;
subject to y6A:
y >= 11 * f6A;
subject to y6E:
y >= 16 * f6E;
subject to y6F:
y >= 18 * f6F;


subject to wierzcholekS:
6 - fs1 - fs2 - fs3 - fs4 - fs5 - fs6 = 0;

subject to wierzcholek1:
fs1 - f1A - f1C - f1D - f1F = 0;
subject to wierzcholek2:
fs2 - f2B - f2C - f2E = 0;
subject to wierzcholek3:
fs3 - f3A - f3B - f3D = 0;
subject to wierzcholek4:
fs4 - f4B - f4C - f4E = 0;
subject to wierzcholek5:
fs5 - f5A - f5C - f5D - f5F = 0;
subject to wierzcholek6:
fs6 - f6A - f6E - f6F = 0;

subject to wierzcholekA:
f1A + f3A + f5A + f6A - fAt = 0;
subject to wierzcholekB:
f2B + f3B + f4B - fBt = 0;
subject to wierzcholekC:
f1C + f2C + f4C + f5C - fCt = 0;
subject to wierzcholekD:
f1D + f3D + f5D - fDt = 0;
subject to wierzcholekE:
f2E + f4E + f6E - fEt = 0;
subject to wierzcholekF:
f1F + f5F + f6F - fFt = 0;

subject to wierzcholekT:
fAt + fBt + fCt + fDt + fEt + fFt - 6 = 0;