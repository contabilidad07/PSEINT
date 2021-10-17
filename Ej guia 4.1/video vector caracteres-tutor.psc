
algoritmo ej_vector_curso_caracter
	definir tutores, nombre  Como caracter
	definir i,cantidad Como Entero
	escribir "ingrese cantidad tutores"
	leer cantidad
	dimension tutores(cantidad) 
	
	// rellenamos el arreglo,o vector
	escribir " ingresa nombre tutores"
	para i=0 hasta cantidad-1 hacer // no hacemos subcadena porque en cada posicion del vector guardammos un nombre de tutor
		leer tutores(i)
	fin para
	//mostramos el resultado
	para i= 0 hasta cantidad-1
		escribir "[ " tutores(i) "] "  sin saltar// escribir sin saltar escribe uno a continuacion del otro en la misma linea
	FinPara
	
	escribir ""// deja espacio para mostrar el mensaje ejecucion finalizada
	
FinAlgoritmo
