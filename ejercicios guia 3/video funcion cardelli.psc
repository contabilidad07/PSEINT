
Algoritmo video_funcion_cardelli
	//area con subfuncion
	definir rad, resultado como real
	escribir "ingrese un rádio"  // ingreso valor 6
	leer rad 
	resultado = area_circulo(rad)/// area circulo invoca a la misma funcion en el subrogramma, pasando como parametro la variable rad, (pasa el valor 6)
	escribir " El área de un círculo con radio ",rad,  " es ", resultado
		
FinAlgoritmo
//funcion [variable de retorno [nombre de la funcion](parametro1, ... parametro n)
//variable de retorno devuelve un resultado

//calcular el area de un círculo
funcion area = area_circulo (radio) /// area circulo es invocada desde el programa ppal, radio tiene el valor invocado el ppio en la funcion ppal(toma el valor 6)
								/// transferimos el control desde el algoritmo ppal a nuestra funcion
	definir area como real  /// defino area solo para el subprograma
	area= 3.14* radio*radio /// una vez calculada el area se le devuelve el resultado al programa ppal 
	
FinFuncion
