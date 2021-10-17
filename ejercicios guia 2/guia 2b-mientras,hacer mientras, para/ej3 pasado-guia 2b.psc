Algoritmo ejercicio3_mientras
	// dada una secuencia de numeros que finaliza con un -1 , por ejemplo 5,3,2,0,58,-1
	//calcule promedio  de los numeros ingresados, sumponemos que usuario no ingresara numeros negativos
	definir num Como Entero
	definir promedio Como real
	definir contador Como Real
	definir suma Como Entero
	num=0
	contador=0
	suma=0
	mientras num<>-1 Hacer
		escribir "ingrese valores para calcular el promedio"
		leer num
		si num<-1 Entonces
			escribir "error , solo numeros positivos"
		SiNo
			suma= suma + num //variables de acumulacion
			contador = contador + 1
		FinSi
	FinMientras
	promedio = ((suma+ 1 )/ (contador-1 ))
	escribir " promedio= " promedio
	
FinAlgoritmo