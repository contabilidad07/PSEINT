Algoritmo ej_vector_curso
	definir vector, i, suma Como Entero
	suma=0
	dimension vector(5)
	// rellenamos el arreglo,o vector
	escribir " ingresa los elementos del arreglo"
	para i=0 hasta 4 // n-1 porque inicia en cero, se asignan valores al subindice (0,1,... hasta n-1)
		vector(i)=azar (10)// lee los valores ingresados.. si reemplazo leer vector(i) y pongo vector(i)= azar(10) toma valores al azar de cero a 10, saco escribir ingresar valores
							//aleatorio toma valores ingresados entre parentesis vector(i)=aleatorio (10,20) toma valores entre 10 y 20
	FinPara
	
	// vamos a sumar
	
	para i=0 hasta 4
		suma= suma+vector(i)
		
	fin para
	escribir " la suma de los elementos ingresados es : " suma
	//mostramos el resultado
	para i= 0 hasta 4
		escribir vector(i) " " sin saltar  // las comillas dejan espacio, sin saltar escribe uno a continuacion del otro en la misma linea
	FinPara
	
FinAlgoritmo

