Algoritmo ejercicio_extra_7
	
	//Hacer un algoritmo que lea un n�mero por el teclado y determine si tiene tres d�gitos.
	Definir var_num Como Cadena
	Definir var_longitud Como Entero
	
	Escribir "Ingrese un n�mero"
	Leer var_num
	
	var_longitud = Longitud(var_num)
	
	Si var_longitud = 3 Entonces
		Escribir "Se ingreso un n�mero de 3 digitos"
	SiNo
		Escribir "Se ingreso un n�mero mayor o menor a 3 digitos"
	Fin Si
	
FinAlgoritmo