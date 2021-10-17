Algoritmo ZombieIntegrador
	Definir tam Como Entero
	Definir matriz Como Caracter
	Escribir "Ingrese el tamaño de la matriz (3, 4 ó 37)"
	Leer tam
	Dimension matriz[tam,tam]
	cargarmartriz(matriz,tam)
	mostramatriz(matriz,tam)
	buscar1(matriz,tam)
	buscar2(matriz,tam)
FinAlgoritmo

SubProceso cargarmartriz(m,tam)
	Definir i,j Como Entero
	Escribir "Ingrese los caracteres (A,B,C,D)"
	Para i<-0 Hasta tam-1 Con Paso 1 Hacer
		Para j<-0 Hasta tam-1 Con Paso 1 Hacer
			Escribir Sin Saltar "[",i,"]","[",j,"]"
			Leer m[i,j]
		Fin Para
	Fin Para
FinSubProceso

SubProceso mostramatriz(m,tam)
	Escribir "matriz cargada"
	Definir i,j Como Entero
	Para i<-0 Hasta tam-1 Con Paso 1 Hacer
		Para j<-0 Hasta tam-1 Con Paso 1 Hacer
			Escribir Sin Saltar m[i,j]," "
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso

SubProceso buscar1(m,tam)
	Definir i,j,c Como Entero
	c=0
	Para i<-0 Hasta tam-1 Con Paso 1 Hacer
		Para j<-0 Hasta tam-1 Con Paso 1 Hacer
			Si i=j Entonces
				Si m[i,j]="A" Entonces
					c=c+1
				FinSi
			FinSi
		Fin Para
	FinPara
	Escribir "El valor del contador: ",c
	Si c=tam Entonces
		Escribir "Diagonal solo de A"
	SiNo
		Escribir "No cumple el Gen Z"
	FinSi
FinSubProceso

SubProceso buscar2(m,tam)
	Definir i,j,c Como Entero
	c=0
	Para i<-0 Hasta tam-1 Con Paso 1 Hacer
		Para j<-0 Hasta tam-1 Con Paso 1 Hacer
			Si i+j=tam-1 Entonces
				Si m[i,j]="D" Entonces
					c=c+1
				FinSi
			FinSi
		Fin Para
	FinPara
	Escribir "El valor del contador: ",c
	Si c=tam Entonces
		Escribir "Contradiagonal solo de D"
	SiNo
		Escribir "No cumple el Gen Z"
	FinSi
FinSubProceso
