	Algoritmo ejercicio_1
		
		// 1. Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la
		// nota se pedir� de nuevo hasta que la nota sea correcta.
		
		Definir nota Como Real
		
		nota = -1
		
		Mientras nota < 0 o nota > 10 Hacer
			Escribir "Ingrese la nota"
			Leer nota
		Fin Mientras
		
		Escribir "Nota ingresada: [" ,nota, "] Es correcto"
		
FinAlgoritmo

