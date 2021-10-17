Algoritmo matriz_numerica
	definir matriz como entero
	dimension matriz(3,3)
	llenarmatriz(matriz) // llama a subproceso para leer
	mostrarmatriz(matriz) // llama a subproceso para mostrar
	suma= sumaelementos(matriz)// invoca a funcion sumaelementos para sumar
	escribir "la suma de los elementos es: " suma
fin algoritmo
subproceso llenarmatriz(matriz)
	definir i,j como entero
	// rellenamos la matriz
	para i=0 hasta 2 Hacer
		escribir "ingrese numero para fila" i+1
		para j=0 hasta 2 Hacer
			leer matriz(i,j) // pedi ingresar datos al usuario
			//matriz [i,j] = aleatorio (110)
		FinPara
	FinPara
	fin subproceso
subproceso mostrarmatriz(matriz)
	// leer 
	definir i, j como entero
	para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			escribir" [ " matriz(i,j) " ]" sin saltar
		FinPara
		escribir ""
	FinPara
	// suma de elementos
	
fin subproceso
funcion suma=sumaelementos(matriz)  // sumamos
	definir i, j,suma como entero
	suma=0
	
	para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			suma=suma+ matriz(i,j)
			
		FinPara
	fin para
		escribir "la suma de los elementos es: " suma
fin funcion
