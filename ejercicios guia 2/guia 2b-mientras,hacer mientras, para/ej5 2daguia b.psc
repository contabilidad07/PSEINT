//Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de todos ellos.

Algoritmo ejercicio5
			Definir n,suma,cont,menor,mayor Como Real
		Escribir "ingrese un numero"
		Leer n
		suma=0
		cont=0
		menor=n
		mayor=n
		hacer
			suma=suma+n
			cont=cont+1
			Escribir "ingrese varios numeros"
			Leer n
			si (n<menor) y (n<>0) Entonces
				menor=n;
			FinSi
			si (n>mayor) Entonces
				mayor=n
			FinSi
		Mientras Que n<>0
		Escribir "el promedio es " , suma/(cont)
		Escribir "el mayor es " , mayor
		escribir " el menor es" menor

FinAlgoritmo
