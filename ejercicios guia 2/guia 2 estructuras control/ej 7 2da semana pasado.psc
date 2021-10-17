Algoritmo guia2_7
		
		Definir cadena1 Como Caracter;
		
		Escribir "Ingrese una palabra";
		Leer cadena1;
		
		Si Longitud(cadena1) == 4 Entonces
			cadena1 <- Concatenar (cadena1, "!")
		SiNo
			cadena1 <- Concatenar (cadena1, "?")
		FinSi
		
		Escribir cadena1
		

FinAlgoritmo
