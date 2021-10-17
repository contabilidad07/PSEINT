Algoritmo video_hacer_mientras
	//  sumatoria de los N primeros numeros enteros mayores que cero
	//suma acumula, i contador
	//hacer que la conticion sea distinta de cero para salir del bucle
	// luego de salir del bucle.inicializo suma e i para que no de error
	//luego va la condicion
	definir num,suma,i como entero
	hacer 
		escribir "ingrese un numero entero positivo"
		leer num
		
	Mientras Que num<= 0
	suma=0
	i=1
	mientras i <= num hacer
		suma= suma+i
		// no va el aumento del contador o centinela en funcion para
		i= i+1
		
	FinMientras
	escribir " la suma de los ", num, "numeros naturales es: " suma
FinAlgoritmo
