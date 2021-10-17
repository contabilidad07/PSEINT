Algoritmo video_bucle_para
	// suma de los N primeros numeros enteros mayores que cero
	definir num,suma,i como entero
	hacer 
		escribir "ingrese un numero entero positivo"
		leer num
		
	Mientras Que num<= 0
	suma=0
//variable numerica contador, con valor inicial y final, hasta donde quiero que llegue y paso (como va a ir saltando desde valor inicial al final)
	para i= 1 hasta num Hacer
		suma= suma+i
		//variable contador aumenta de forma automatica
		
	FinPara
	escribir " la suma de los ", num, "numeros naturales es: " suma
FinAlgoritmo


