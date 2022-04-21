var fsA>=0;
var fsB>=0;
var fsC>=0;

var fAD>=0;
var fAE>=0;

var fBD>=0;
var fBE>=0;

var fCD>=0;
var fCE>=0;

var fDE>=0;
var fDF>=0;
var fDG>=0;
var fDH>=0;

var fED>=0;
var fEF>=0;
var fEG>=0;
var fEH>=0;

var fFt>=0;
var fGt>=0;
var fHt>=0;

var F >= 0;

maximize funkcja_celu:
F;

subject to krawedz_sA:
fsA <= 10;
subject to krawedz_sB:
fsB <= 13;
subject to krawedz_sC:
fsC <= 17;

subject to krawedz_AD:
fAD <= 8;
subject to krawedz_AE:
fAE <= 10;

subject to krawedz_BD:
fBD <= 10;
subject to krawedz_BE:
fBE <= 13;

subject to krawedz_CD:
fCD <= 10;
subject to krawedz_CE:
fCE <= 6;

subject to krawedz_DE:
fDE <= 20;
subject to krawedz_DF:
fDF <= 16;
subject to krawedz_DG:
fDG <= 5;
subject to krawedz_DH:
fDH <= 10;

subject to krawedz_ED:
fED <= 20;
subject to krawedz_EF:
fEF <= 7;
subject to krawedz_EG:
fEG <= 11;
subject to krawedz_EH:
fEH <= 10;

subject to wierzcholekS:
F - fsA - fsB - fsC = 0;
subject to wierzcholekA:
fsA - fAD - fAE = 0;
subject to wierzcholekB:
fsB - fBD - fBE = 0;
subject to wierzcholekC:
fsC - fCD - fCE = 0;
subject to wierzcholekD:
fAD + fBD + fCD + fED - fDE - fDF - fDG - fDH = 0;
subject to wierzcholekE:
fAE + fBE + fCE + fDE - fED - fEF - fEG - fEH = 0;
subject to wierzcholekF:
fDF + fEF - fFt = 0;
subject to wierzcholekG:
fDG + fEG - fGt = 0;
subject to wierzcholekH:
fDH + fEH - fHt = 0;