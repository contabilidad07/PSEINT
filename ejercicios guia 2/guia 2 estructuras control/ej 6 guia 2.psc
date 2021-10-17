Algoritmo ej6_2guia
	//condicional doble
	//pide introducir palabras de 6 caracteres e imprima "correcto" o "incorrecto"
	definir palabra Como caracter
		escribir "ingrese palabras de 6 letras"
	leer palabra
		Si Longitud(palabra) = 6  Entonces
		escribir "correcto"
		SiNo
			Escribir "falso"
		Fin Si
FinAlgoritmo
