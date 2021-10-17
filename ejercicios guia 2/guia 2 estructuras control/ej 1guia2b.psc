Algoritmo ej1_gua2b
	//escriba un programa que valide si una nota esta entre 0 y 10, sino esta entre 0 y 10 la nota se pedirá de nuevo hasta que sea correcta
	
	definir num como entero
	escribir "ingrese una nota entre 0 y 10"
	leer num
	mientras num <0 o num >10 hacer
		escribir " su nota es incorrecta, Ingrese una nota entre 0 y 10"
		leer num
		
	FinMientras
	escribir "su nota es correcta " num
FinAlgoritmo
