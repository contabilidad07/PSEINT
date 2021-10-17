Algoritmo ej_1_2daguiaextra
	// ingrese 3 notas, calcule promedio, si es mayor a 70% aprueba, sino reprueba
	definir nota1,nota2,nota3,promedio como real
	escribir " ingrese primer nota " 
	leer nota1
	escribir " ingrese segunda nota "
	leer nota2
	escribir " ingrese tercer nota "
	leer nota3
	promedio= ((nota1+nota2+nota3)/3) * 100
	si promedio >= 70 entonces
		escribir "aprobado"
	sino 
		escribir " reprobado"
	FinSi
	
FinAlgoritmo
