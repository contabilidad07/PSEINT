Algoritmo ej7_2aguiab
	// Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
	// espacio entre cada letra. La frase se mostrara as�: H o l a. Nota: recordar el funcionamiento de la funci�n Subcadena().
	Definir frase,sub_frase Como Caracter
	Definir i Como Entero
	Escribir 'ingrese una frase'
	Leer frase
	
		Para i<-0 Hasta longitud(frase) Hacer
		sub_frase <- subcadena(frase,i,i) // subcadena toma el primer valor de la frase
		Escribir '  ',sub_frase Sin Saltar
	FinPara
FinAlgoritmo
