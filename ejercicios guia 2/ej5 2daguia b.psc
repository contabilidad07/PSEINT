Algoritmo ejercicio5
	Definir n,suma,cont,menor,mayor Como Real
	Escribir "ingrese un numero entero"
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
			menor=n
		FinSi
		si (n>mayor) Entonces
			mayor=n
		FinSi
	Mientras Que n<>0
	Escribir "el promedio es " , suma/(cont)
	Escribir "el mayor es " , mayor
	escribir " el menor es" menor
	
FinAlgoritmo
