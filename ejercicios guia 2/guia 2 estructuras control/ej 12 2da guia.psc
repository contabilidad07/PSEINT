Algoritmo ej12_guia2
	//condicional anidado, dado un numero entero, visualice si es par o impar, si el valor es cero mostrar " no es par ni impar"
	definir num como entero
	escribir "ingrese un numero entero"
	leer num
	si num MOD 2=0 y num <>0 Entonces
		escribir "el numero es par " num
	sino 
		si num mod 2<>0 y num<>0 entonces
			escribir "el numero es impar "
		FinSi
		si num=0 Entonces
			escribir " ingresaste cero"
		FinSi
		
	FinSi
FinAlgoritmo