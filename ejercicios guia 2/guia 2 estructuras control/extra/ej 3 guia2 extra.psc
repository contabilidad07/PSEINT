Algoritmo ej3_guia2_extra
	// usuario ingresa dos numeros enteros, determinar si ambos son pares o impares.
	//mostrar por pantalla "ambos numeros son pares", sino mostrar "los numeros no son pares o uno de ellos no es par"
	definir num1,num2 como enteros
	escribir "ingrese un numero entero"
	leer num1
	escribir "ingrese otro numero entero"
	leer num2
	si  num1 mod 2 = 0 y num2 mod 2= 0 y num1<> 0 y num2 <> 0 entonces
		escribir " los numeros son pares"
	sino 		
		escribir "los numeros o son pares o uno de ellos es impar"
	
	finsi
FinAlgoritmo
