#======================================================================
param Model symbolic := "Sieciowe_produkcja_dystrybucja";
param FileCSV symbolic := "Wyniki_symulacji.csv";
#======================================================================
param N := 14;
set Nodes := 1..N;

param M {Nodes, Nodes} >= 0;
table T_M IN "CSV" "M_2a.csv":
	[i, j], M~M;

#======================================================================
var f {Nodes, Nodes} binary;
var F >= 0;

maximize funkcja_celu:
	F;

#======================================================================
subject to

	Ustawienie_f_min{i in Nodes, j in Nodes}:
		f[i, j] <= M[i, j];
	
	Ustawienie_F:
		F = sum {i in Nodes} f[i, N];
		
	Ustawienie_s:
		F - sum {j in Nodes} f[1, j] = 0;
		
	Ustawienie_t:
		sum {i in Nodes} f[i, N] - F = 0;
		
		
	Ustawienie_nodes{i in Nodes: i != 1 && i != N}:
		sum {j in Nodes} f[j, i] - sum {j in Nodes} f[i, j] = 0;