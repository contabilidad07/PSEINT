Algoritmo ej5_guia2b_mio
	// programa que lea numeros enteros hasta teclear el cero, mostrar maximo numero ingresado, el minimo y el promedio
	definir num,cont, max, min, sum Como Entero
	definir prom Como Real
	num=0
	cont=0
	sum= 0
	min=num
	max = num
	Hacer 
		escribir " ingrese un numero entero"
		leer num
		
		si num> max y num <> 0 Entonces
			max = num
			
		fin si
		si num < min entonces
			min=num
			
		fin si	

		cont = cont +1
		sum= num+sum
		Mientras Que num<> 0
	si num = 0
		escribir "fin de programa"
	FinSi
		
	
escribir " el promedio de los numeros ingresados es: " , sum/(cont-1) // resta uno porque cuando ingreso cero lo suma el contador y saca mal el promedio
escribir " el numero máximo ingresado es: " max
escribir " el número minimo ingresado es: " min
FinAlgoritmo
