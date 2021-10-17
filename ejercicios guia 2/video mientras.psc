Algoritmo video_mientras
	//  sumatoria de los N primeros numeros enteros mayores que cero
	//suma acumula, i contador
	//inicializo suma e i para que no de error
	//luego va la condicion
	definir num,suma,i como entero
	escribir " ingrese un numero entero"
	leer num
	suma=0
	i=1
	mientras i <= num hacer
		suma= suma+i
		i= i+1
		
	FinMientras
	escribir " la suma de los ", num, "numeros naturales es: " suma
FinAlgoritmo
