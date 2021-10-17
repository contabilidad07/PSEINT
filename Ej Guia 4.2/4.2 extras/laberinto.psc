Algoritmo Ej1
	Definir laberinto Como Caracter
	Definir  n, i, j Como Entero
	Escribir "ingrese el tamaño del laberinto"
	Leer n
	Dimension laberinto(n,n)
	LlenarLaberinto(laberinto, n)
	MostrarLaberinto(laberinto, n)
	Escribir "-------------------------"
	RecorrerLaberinto(laberinto, n, 0, 0)
	MostrarLaberinto(laberinto, n)
FinAlgoritmo

SubProceso LlenarLaberinto(laberinto Por Referencia, n)
	Definir i,j, k Como Entero
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			laberinto(i,j) = " "
		FinPara
	FinPara
	Para i=0 Hasta n-2
		Para k=0 Hasta Trunc(n/3)-1
			j = Aleatorio(0,n-1)
			laberinto(i,j) = "#"
		FinPara
	FinPara
	laberinto(0,0) = " "
	laberinto(n-1, n-1) = " "
FinSubProceso

Funcion espacio <- HayEspacio(laberinto, n, i, j)
	Definir espacio Como Logico
	Si (i<=n-1) y (j<=n-1) y (i>=0) y (j>=0) Entonces
		Si laberinto(i,j) = " " o laberinto(i,j) = "o" Entonces
			espacio = Verdadero
		FinSi
	SiNo
		espacio = Falso
	FinSi
FinFuncion

SubProceso RecorrerLaberinto(laberinto Por Referencia, n, i, j)
	Definir l Como Caracter
	Definir r, s Como Entero
	Si HayEspacio(laberinto, n, i, j) Entonces
		laberinto(i,j) = "o"
	SiNo
		Escribir "no se puede mover en esa dirección"
	FinSi
	MostrarLaberinto(laberinto, n)
	Si i=n-1 y j=n-1 Entonces
		Escribir "--- FIN ---"
	SiNo
		Escribir "W: Arriba"
		Escribir "S: Abajo"
		Escribir "A: Izquierda"
		Escribir "D: Derecha"
		Leer l
		Segun l Hacer
			"w" o "W":
				Si laberinto(i,j) = "#" Entonces
					laberinto(i,j) = "#"
				SiNo
					laberinto(i,j) = " "
				FinSi
				i = i-1
				RecorrerLaberinto(laberinto, n, i, j)
			"s" o "S":
				Si laberinto(i,j) = "#" Entonces
					laberinto(i,j) = "#"
				SiNo
					laberinto(i,j) = " "
				FinSi
				i = i+1
				RecorrerLaberinto(laberinto, n, i, j)
			"d" o "D":
				Si laberinto(i,j) = "#" Entonces
					laberinto(i,j) = "#"
				SiNo
					laberinto(i,j) = " "
				FinSi
				j = j+1
				RecorrerLaberinto(laberinto, n, i, j)
			"a" o "A":
				Si laberinto(i,j) = "#" Entonces
					laberinto(i,j) = "#"
				SiNo
					laberinto(i,j) = " "
				FinSi
				j = j-1
				RecorrerLaberinto(laberinto, n, i, j)
		FinSegun
	FinSi
FinSubProceso

SubProceso MostrarLaberinto(laberinto, n)
	Definir i, j Como Entero
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Escribir Sin Saltar "[", laberinto(i,j), "]"
		FinPara
		Escribir ""
	FinPara	
FinSubProceso






