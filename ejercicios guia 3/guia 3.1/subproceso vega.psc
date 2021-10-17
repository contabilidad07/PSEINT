Algoritmo subproces_video
	definir a,b,c,d como entero
	escribir "ingrese 4 numeros "
	leer a,b,c,d
	sumaprocedimiento(a,b,c,d) // INVOCA AL SUBPROCESO
	escribir " aca salimos del subproceso"
	/// probar el valor de a por referencia modifico funcion es subrograma
	
	
	
FinAlgoritmo

/// subprograma: procedimiento (es como un bucle)
subproceso sumaprocedimiento (a,b,c,d)
	
	a=a*a
	b= b*b
	c=c*c
	d=d*d
	escribir " el resultado de la suma a+b es " a+b
	escribir " el resultado de la suma c+d es " c+d
FinSubProceso


