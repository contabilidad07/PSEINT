Algoritmo ej13_2daguia
	//obtener grado de eficiencia  de acuerdo a dos condiciones
	//menos de 200 tornillos defectuosos
	//mas de 1000 sin defecto
	definir td,tsd Como Entero
	escribir "ingrese cantidad tornillos defectuosos"
	leer td
	escribir " ingrese cantidad total tornillos sin defectos"
	leer tsd
	si td > 200 y tsd < 10000 Entonces
		escribir " grado 5"
	sino 		
		si td < 200 y tsd < 10000 entonces
			escribir "grado6"
		SiNo
			si td  > 200 y tsd > 10000 Entonces
				escribir "grado 7"
			sino 
				escribir "grado 8"
			FinSi
		finsi
	fin si
FinAlgoritmo
