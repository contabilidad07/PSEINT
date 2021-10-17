Algoritmo Ej10_2da_guia
	// ingresar una frase, la primera y la ultima letra deben ser igual, entonces es correcto, sino incorrecto
	///variable 

	definir  frase Como Caracter
	definir ultima como entero
		
	escribir "ingrese una frase"
	leer frase
	// ultimo caracter
	ultima= longitud (frase)-1
	si SubCadena(frase,0,0) = Subcadena(frase,ultima ,ultima) Entonces
		escribir " correcto "
	sino 
		escribir "incorrecto"
	FinSi
	
FinAlgoritmo
	