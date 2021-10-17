//Gen Z : Matriz MxM se busca diagonales sean iguales
Algoritmo GenZ
	
	Definir Matriz, vecAx2 , vecAx1 como cadena
	Definir m como entero
	Hacer
		Escribir "Ingrese el tamaño de la Matriz (sera un matriz cuadrada) : "
		Leer m
	Mientras Que m <>3 y m<> 4 y m <> 37
	
	Dimension Matriz[m,m] , vecAx1[m] , vecAx2[m]
	
	Salto()
	RellenarMatriz(Matriz,m)
	Evaluar(Matriz,m,vecAx1,vecAx2)
	Resolucion(Matriz,m,vecAx1,vecAx2)
FinAlgoritmo

/////////////////////////////////////////////////////////////////////////////
Subproceso Salto()
	Escribir ""
FinSubProceso
/////////////////////////////////////////////////////////////////////////////////
Subproceso RellenarMatriz(Matriz,m)
	
	Definir i , j Como Entero
	Definir c Como Caracter
	
	Para i = 0 hasta m-1 Hacer
		Para j = 0 Hasta m-1 Hacer
			Escribir "Ingrese la secuencia a Evaluar(A,B,C o D)"
			hacer 
				Escribir "Posicion de matriz ¨fila : " i " ¨ y ¨columna : " j " ¨ "
				Leer c
				c = Mayusculas(c)
			Mientras Que c <> "A" y c <> "B" y c <> "D" y c <> "C" 
			Matriz[i,j] = c
		FinPara
	FinPara
	Escribir "Matriz completa :  "
	Para i = 0 Hasta m-1 Hacer
		para j = 0 hasta m-1 Hacer
			Escribir " " Matriz[i,j] "  " Sin Saltar
		FinPara
		Salto()
	FinPara
	
FinSubProceso
//////////////////////////////////////////////////////////////////////////////////////
Subproceso Evaluar(Matriz,m,vecAx1,vecAx2)
	
	Definir i , j Como Entero
	
	Para i = 0 Hasta m-1 Hacer  /// diagonal principal
		Para j = 0 Hasta m-1 Hacer
			Si i = j Entonces
				vecAx1[j] = Matriz[i,j]
			FinSi
		FinPara
	FinPara
	Para i = 0 Hasta m-1 Hacer /// diagonal secundaria
		Para j = 0 Hasta m-1 Hacer
			Si i + j = m-1 Entonces
				vecAx2[j] = Matriz[i,j]
			FinSi
		FinPara
	FinPara
FinSubProceso
///////////////////////////////////////////////////////////////////////////////////////
SubProceso Resolucion(Matriz,m,vecAx1,vecAx2)
	
	Definir i , j como entero 
	Definir a , b Como Caracter
	a = ""
	b = ""
	j = 0
	a = vecAx1[0]
	b = vecAx2[0]
	Escribir "a = " a "   b = " b
	Para i = 0 Hasta m-1 Hacer
		Si a == vecAx1[i]  y b == vecAx2[i] Entonces
			j = j + 1
		SiNo
			j = j
		FinSi
	FinPara
	si j == m Entonces
		Escribir "¨Tiene el Gen z¨ "
	SiNo
		Escribir "No tiene el Gen z"
	FinSi
	
FinSubProceso