//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
//mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
//clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema correctamente.

Algoritmo ej4_guia2b
	//clave eureka . ingresar una clave . solo se cuenta con 3 intentos sino frase "hemos agotado el intento" si es correcto"ingreso correctamente"
	definir clave como caracter
	definir contador Como Entero
	contador =0
	
	hacer 
		escribir "ingrese clave"
		leer clave
		contador=contador+1
		si clave = "eureka" entonces
			escribir "clave correcta"
		sino 
			escribir "clave incorrecta"
			
		FinSi
	Mientras Que (contador <3) y (clave <> "eureka")
	
	si contador =3 y clave <> "eureka" Entonces
		escribir "hemos agotado el intento"
	FinSi
	
	
FinAlgoritmo
