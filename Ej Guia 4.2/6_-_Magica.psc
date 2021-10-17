Algoritmo MatrizMagica
	Definir Matriz, Tamanio, SumaL, SumaV, SumaD Como Entero
	SumaD = 0
	Escribir "Bienvenido"
	Escribir "Vamos a ingresar el tamaño de la matriz cuadrada, el valor maximo puede ser de 10"
	Leer Tamanio
	Mientras Tamanio > 10 Hacer
		Escribir "Usted ingreso una matriz mayor a 10, vuelva a intentarlo"
		Leer Tamanio
	FinMientras
	Dimension Matriz(Tamanio,Tamanio)
	Dimension SumaL(Tamanio)
	Dimension SumaV(Tamanio)
	Llenar(Matriz,Tamanio)
	Suma(Matriz,Tamanio, SumaL, SumaV, SumaD)
	MostrarMatriz(Matriz, Tamanio, SumaL, SumaV, SumaD)
	Verificar(Matriz, Tamanio, SumaL, SumaV, SumaD)
FinAlgoritmo

SubProceso Llenar(Matriz,Tamanio)
	Definir i, j Como Entero
	Para i=0 Hasta Tamanio-1 Hacer
		Para j=0 Hasta Tamanio -1 Hacer
			Repetir
				Escribir "Ingrese el valor de la matriz en el rango " i " y " j
				Leer Matriz(i,j)
			Mientras Que Matriz(i,j) < 0 o Matriz(i,j) > 10
		FinPara
	FinPara
FinSubProceso

SubProceso Suma(Matriz,Tamanio, SumaL, SumaV, SumaD)
	Definir j, i, Sum Como Entero
	Sum = 0
	///SumaLateral
	Para i=0 Hasta Tamanio-1 Hacer
		Para j=0 Hasta Tamanio-1 Hacer
			Sum = Sum + Matriz(i,j)
		FinPara
		SumaL(i) = Sum
		Sum = 0
	FinPara
	///SumaVertical
	Para i=0 Hasta Tamanio-1 Hacer
		Para j=0 Hasta Tamanio-1 Hacer
			Sum = Sum + Matriz(j,i)
		FinPara
		SumaV(i) = Sum
		Sum = 0
	FinPara
	///SumaDiagonal
	Para i=0 Hasta Tamanio-1 Hacer
		Para j=0 Hasta Tamanio-1 Hacer
			Si i = j Entonces
				Sum = Sum + Matriz(i,j)
			FInSi
		FinPara
	FinPara
	SumaD = Sum
	Sum = 0
FinSubProceso

SubProceso MostrarMatriz(Matriz, Tamanio, SumaL, SumaV, SumaD)
	Definir i, j Como Entero
	///Filas
	Para i=0 Hasta Tamanio-1 Hacer
		Para j=0 Hasta Tamanio-1 Hacer
			Escribir Sin Saltar "[" Matriz(i,j) "] "
		FinPara
		Escribir Sin Saltar " = (" SumaL(i) ")"
		Escribir ""
	FinPara
	Para j = 0  Hasta Tamanio-1 Hacer
        Escribir Sin Saltar " || "
    FinPara
    
    Escribir Sin Saltar " \"
    Escribir ""
	///Columnas
	Para i=0 Hasta Tamanio-1 Hacer
		Escribir Sin Saltar " " SumaV(i) "  "
	FinPara
	Escribir Sin Saltar "  " SumaD
	Escribir ""
FinSubProceso

SubProceso Verificar(Matriz, Tamanio, SumaL, SumaV, SumaD)
	Definir i Como Entero
	Definir Magica Como Logico
	Magica = Verdadero
	Para i=0 Hasta Tamanio-1 Hacer
		Si SumaL(i) <> SumaV(i) o SumaL(i) <> SumaD Entonces
			Magica = Falso
		FinSi
	FinPara
	Si Magica = Falso Entonces
		Escribir "La Matriz ingresada no es Magica"
	SiNo
		Escribir "La Matriz ingresada es Magica"
	FinSi
FinSubProceso