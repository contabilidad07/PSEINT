Algoritmo ejercicio_4_guia2b_pasado
	
	// Teniendo en cuenta que la clave es ?eureka?, escribir un programa que nos pida ingresar
	// una clave. S�lo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deber�
	// mostrar un mensaje indic�ndonos que hemos agotado esos 3 intentos. Si acertamos la
	// clave se deber� mostrar un mensaje que indique que se ha ingresado al sistema correctamente.
	
	Definir clave, clave_ingre Como Caracter
	definir intentos Como Entero
	
	clave = "eureka"
	intentos = 3
	clave_ingre = ""
	
	Hacer
		Escribir "Ingrese la clave para ingresar... [ #intentos = " , intentos, " ]"
		leer clave_ingre
		
		Si clave_ingre = clave Entonces
			Escribir "Se ha ingresado de forma correcta al sistema"
			intentos = 0
		SiNo
			intentos = intentos -1
			Escribir " [ ERROR ] Clave incorrecta"
		FinSi
	Mientras Que intentos <> 0
	
	Si (intentos = 0) Y (clave_ingre  <> clave) Entonces
		Escribir "NO SE PUDO INGRESAR AL SISTEMA"
	FinSi
	
FinAlgoritmo
