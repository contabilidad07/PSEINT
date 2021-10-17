Algoritmo Ej9_2daguia
	definir  frase, l Como Caracter
	escribir "ingrese una frase"
	leer frase
	l= Mayusculas(frase)
	si SubCadena(l,0,0)= "A" Entonces
		escribir " correcto "
	sino 
		escribir "incorrecto"
	FinSi
FinAlgoritmo
