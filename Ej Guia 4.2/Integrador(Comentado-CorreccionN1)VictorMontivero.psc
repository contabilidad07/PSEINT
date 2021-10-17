///Zombie 

Algoritmo Zombiiee
	
	//Defino las variables a utilizar, secuencia es la "muestra" que se ingresa
	//matriz es la matriz donde almacenare la muestra en el caso de que la misma sea correcta
	//m es el orden de la matriz, lo inicializo como cero, pero su valor lo voy a saber después de validar secuencia
	
	Definir matriz Como Caracter
	Definir secuencia Como Caracter
	Definir m Como Entero; m = 0
	
	Escribir "Ingrese la secuencia de ADN"; Leer secuencia; 
	
	Mientras validarSecuencia(secuencia,m) = falso Hacer
		//Si la validación de la secuencia no es correcta, la vuelvo a pedir hasta que la misma sea correcta.
		Escribir "La secuencia cargada es incorrecta, por favor ingresela de nuevo"
		Leer secuencia; 
	FinMientras
	
	//Ahora que ya tengo el valor correcto de m, dimensiono la matriz que contendra la secuencia.
	Dimension matriz(m,m)
	
	LlenarMatriz(matriz,secuencia,m)
	//Lleno la matriz y a continuación hago que el usuario espere la evaluación de la misma.
	
	Escribir "Espere un instante mientras el Dr. Galard evalua su GEN"
	Escribir ""
	Escribir "Presione una tecla para conocer el resultado del analisis"
	Esperar Tecla
	Limpiar Pantalla


	
	si evaluarGen(matriz,m) = verdadero Entonces
		//Evaluo la matriz y si se encuentra la secuencia muestro un mensaje de felicitacion, 
		//muestro la matriz y devuelvo un vector con la secuencia del Gen.
		Escribir "Felicitaciones el Dr. Galard ha logrado descifrar el GEN"
		Escribir ""
		Escribir "Su Muestra fue: "
		EscribirMatriz(matriz, m)
		Escribir "Y su genZ es: "
		Escribir ""
		imprimirVector(matriz,m)
	SiNo
		//En el caso de no poder secuenciar el Gen le informo al usuario y no le muestro la matriz
		Escribir "Lamentablemente el Dr. Galard no pudo descifrar el GEN"
	FinSi
	
	
FinAlgoritmo
Funcion  resultado = validarSecuencia(secuencia,m Por Referencia)
	
	/// Ingreso a la verificación con la variable secuencia que le pedi al usuario
//    Condiciones:
//	-La frase solo puede contener valores "A","B","C","D"
//	-El largo de la frase debe ser tal que el orden sea 3,4 o 37 y en función del mismo debo definirlo
//  - El valor m es el orden de la matriz.
//	-Si la frase es incorrecta vuelvo a cargarla hasta que lo sea.
		
	
	Definir i Como Entero
	Definir letra Como Caracter
	Definir resultado como logico
	
	resultado = falso
	
	Para i = 0 hasta Longitud(secuencia) - 1 Hacer
		//verifico que el orden de la matriz sea de 3,4 o 37
		//Asigno el valor de m para más adelante poder llenar la matriz
		si Longitud(secuencia) = i*i  y (i = 3 o i = 4 o i = 37 )Entonces
			resultado = Verdadero
			m = i
		FinSi
	FinPara
	
	para i = 0 hasta Longitud(secuencia)-1 Hacer
		//Verifico que solo valide la secuencia si las letras ingresadas son "A","B","C","D"
		letra = Subcadena(secuencia, i, i)
		si letra <> "A" y letra <> "B" y letra <> "C" y letra <> "D" Entonces
			resultado = falso
		FinSi
	FinPara
		
FinFuncion

SubProceso LlenarMatriz(matriz,secuencia,m)
	//Una vez verificada la secuencia como correcta la cargo dentro de una matriz	
	
	Definir i, j, contador Como Entero
		
	contador = 0
	Para i = 0 hasta m - 1 Hacer
		Para j = 0 hasta m-1 Hacer
			matriz(i,j) = Subcadena(secuencia, contador, contador)
			contador = contador + 1
		FinPara
	FinPara
FinSubProceso

SubProceso EscribirMatriz(matriz,m)
	//Este subproceso solo sirve para Escribir la Matriz
	Definir i, j Como Entero
	
	Para i = 0 hasta m - 1 Hacer
		Para j = 0 hasta m-1 Hacer
			Escribir Sin Saltar "[", matriz(i,j),"] "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion gen = evaluarGen(matriz,m)
	//Esta función se encarga de comparar las diagonales para ver que el gen sea el correcto
	//creo la variable gen como valor logico para devolver y poder ser manejada en la parte del Algoritmo 
	//Si al menos en una de las comparaciones no se cumple la igualdad, entonces devuelvo falso.
	Definir i,j Como Entero
	Definir gen Como Logico
	Definir genPrin, genSec Como Caracter
	
	gen = Verdadero
	Para i = 0 hasta m-1 Hacer
		para j = 0 hasta m-1 Hacer
			si matriz(i,i) <> matriz(0,0) y matriz(i,m-1-i) <> matriz(0,m-1) Entonces
				gen = falso
			FinSi
			
			// matriz(i,i) <> matriz(0,0) y matriz(i,m-1-i) <> matriz(0,m-1)
		FinPara
	FinPara
FinFuncion

Subproceso imprimirVector(matriz,m)
	//Este Subproceso imprime en un vector con el GEN secuenciado.
	//Este vector solo se genera en el caso de que las diagonales sean iguales.
	Definir i,j Como Entero
	Definir vectorP, vectorS Como Caracter
	Dimension vectorP(m),vectorS(m)
	
	Para i = 0 hasta m-1 Hacer
		para j = 0 hasta m-1 Hacer
			si i = j Entonces
				vectorP(i) = matriz(i,j)
				vectorS(i) = matriz(i,m-1-i)
			FinSi
		FinPara
	FinPara
	
	Para i = 0 hasta m-1 Hacer
		Escribir Sin Saltar "[", vectorP(i),"] "
	FinPara
	Escribir ""
	Para i = 0 hasta m-1 Hacer
		Escribir Sin Saltar "[", vectorS(i),"] "
	FinPara
		
FinSubProceso
	