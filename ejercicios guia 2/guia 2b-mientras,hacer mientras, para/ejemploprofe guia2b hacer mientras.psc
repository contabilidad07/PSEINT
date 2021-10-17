Algoritmo ejemplo2guiab_mientrasque
	//solicitar al usuario su codigo (1234) y su contraseña(4567)
	// si ingresa bien ambos, dar un mensaje de bienvenida, 
	//sino pedir que ingrese los datos nueamente
	//bucle "hacer mientras que"
	definir codigo,contrasena como entero
	// queremos que ingrese el valores por lo menos una vez, si es correcto sale del bucle, si es falso sigue repitiendo
	//sigue pidiendo contraseña mientras que la clave o usuario sea incorrecto
	hacer 
		escribir "ingrese el codigo de usuario"
		leer codigo
		escribir " ingrese la contraseña "
		leer contrasena
		si codigo =1234 y contrasena =4567 Entonces
			escribir "Bienvenido"
		sino 
			escribir " intente nuevamente "
			
			
		FinSi
	Mientras Que codigo <> 1234 o contrasena <> 4567
	
	
FinAlgoritmo
