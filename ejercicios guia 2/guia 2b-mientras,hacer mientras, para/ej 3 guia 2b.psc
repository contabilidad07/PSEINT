Algoritmo ej3_guia_2b
	//dada una secuencia de numeros que finaliza con un -1 , por ejemplo 5,3,2,0,58,-1
	//calcule promedio  de los numeros ingresados, suponemos que usuario no ingresara numeros negativos
	definir num Como Entero
	definir cont, suma,prom como real
	num=0
	suma=0
	cont = 0
	mientras num<> -1 Hacer
		escribir "ingrese un numero"
		leer num
		si num <= 0 Entonces
			escribir "error debe ingresar un numero positivo"
		sino 
			suma = suma +num
			cont= cont+1
			
		FinSi
	FinMientras
	prom = suma/cont
	escribir "el promedio de los numeros ingresados es : " prom
FinAlgoritmo
