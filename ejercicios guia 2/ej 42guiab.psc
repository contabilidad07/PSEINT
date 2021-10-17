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
	Mientras Que (contador < 3) y (clave <> "eureka")// contador menor a tres porque a la segunda clave incorrecta, ejecuta la tercera y el contador
													// aumenta a tres (permite ingresar x tercera vez la clave) si da erronea salta del bucle
	si contador >3 Entonces
		escribir "hemos agotado el intento"
	FinSi


FinAlgoritmo
