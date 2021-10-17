// procedimiento que permita intercambiar el valor de las variables a y b de tipo entero, a debe terminar con el valor de la variable b
Algoritmo ej1_guia3
	definir a, b como entero
	escribir "ingrese el valor de a "
	leer a 
	escribir " ingrese el valor de b "
	leer b
	cambioayb(a,b)
	escribir " el valor de a es: " a, " el valor de b es : " b
	
	FinAlgoritmo
	subproceso cambioayb(a por referencia,b por referencia) // por referencia cambia la variable para todo el programa, por valor solo modifica la variable a b en el subproceso
		
		definir c como entero /// c definida solo en el subproceso, no puede verse en programa original
		c=a // c es una variable auxiliar que toma el valor de a
		a=b  // a toma el valor de b
		b=c  b // b toma el valor de variable auxiliar que tiene valor de a
		
		
	FinSubProceso
		