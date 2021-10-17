Algoritmo ej11_2da_guia
	// simular menu de opciones  para realizar las cuatro operaciones aritmeticas (suma, resta,multiplicacion,division) con dos valores numericos enteros.
	// el usuario debe especificar  la operacion con el primer caacter S O s, R o r, M o m, D o d

	definir val1,val2 como enteros
	escribir "ingrese el valor N°1 "
	leer val1
	escribir " ingrese el valor N°2 "
	leer val2
	definir letra Como Caracter
	escribir " ingrese el valor S o s para suma", "ingrese el valor R o r para resta ", "ingrese el valor M o m para multiplicación ", "ingrese el valor D o d para división"
	leer letra
	Segun letra Hacer
		"S","s":
			escribir "La suma de los dos valores es igual a " val1+val2
			
		"R","r":
			escribir "la resta de los valores es igual a " val1-val2
			
		"M", "m":
			escribir " la multiplicación de los valores es igual a " val1*val2
		"D", "d":
			escribir " la División de los valores es igual a " val1/val2
		De Otro Modo:
			escribir " es incorrecto "
	Fin Segun
	
	
FinAlgoritmo
