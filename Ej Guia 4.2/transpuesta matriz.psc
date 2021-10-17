Algoritmo nu
	
	//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario),
	//llenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta. NOTA: si no
	//conoces lo que es una traspuesta, mirar el siguiente link: Matriz Traspuesta
	
	definir matriz,i,j,n,m,transpuesta como entero
	escribir " ingrese las dimensiones de su matriz"
	escribir Sin Saltar "filas: "
	leer n
	Escribir Sin Saltar"columnas: "
	leer m
	
	dimension matriz(n,m),transpuesta(m,n)
	
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta m-1 Hacer
			matriz(i,j) = Aleatorio(0,100)
			escribir " valor para fila y columna [" i, j "] = " matriz(i,j)
		FinPara
	FinPara
	
	para i = 0 hasta n-1
		para j = 0 hasta m-1 Hacer
		
			escribir " [", matriz(i,j), " ]" sin saltar
		FinPara
		escribir ""
	finpara
	escribir " la matriz transpuesta es"
	para i = 0 hasta n-1
		para j = 0 hasta m-1 Hacer
			escribir " [", matriz(j,i), " ]" sin saltar
		FinPara
		escribir ""
	finpara
	fin algoritmo
