#======================================================================
param Model symbolic := "Sieciowe_produkcja_dystrybucja";
param FileCSV symbolic := "Wyniki_symulacji.csv";
#======================================================================
param N := 8;

set Dostawy := 1..N;

param Plany {Dostawy} >= 0;

table T_Plan IN "CSV" "plan.csv":
	[Nr], Plany~Plany;

param w1 := 0.5;
param w2 := 0.5;
#======================================================================
var X {Dostawy} integer >= 0;
var X_plus {Dostawy} integer >= 0;
var X_minus {Dostawy} integer >= 0;

var y >= 0;
var s >= 0;

minimize funkcja_celu:
	w1 * y + w2 * s;

#======================================================================
subject to

	Ustawienie_y{i in Dostawy}:
		y >= (X_plus[i] + X_minus[i]);
		
	Ustawienie_s:
		s = sum {i in Dostawy} (X_plus[i] + X_minus[i]); 
		
		
	Ustawienie_x{i in Dostawy}:
		X[i] - Plany[i] = X_plus[i] - X_minus[i];
		
	Eksperckie1:
		X[1] + X[3] + X[8] >= 1.12 * (Plany[1] + Plany[3] + Plany[8]);
		
	Eksperckie2:
		X[3] + X[5] <= 0.93 * (Plany[3] + Plany[5]);
		
	Eksperckie3:
		X[3] >= 0.8 * X[8];