Algoritmo ej2_guia2b
	//ingrese valor limite positivo hasta que la suma de los valores ingresados supere al inicial
	//Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
	//solicite números al usuario hasta que la suma de los números introducidos supere el límite inicial.
	definir num,lim,suma como entero
	escribir "ingrese un valor limite"
	leer lim
	suma=0
	
	mientras suma<lim hacer
		escribir "ingrese un numero"
		leer num
		suma= suma+num
		
	FinMientras
	escribir "supero el limite establecido"
	escribir "el valor de la suma es" suma
	
	
FinAlgoritmo

