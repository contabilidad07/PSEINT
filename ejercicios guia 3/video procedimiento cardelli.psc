Algoritmo video_procedimiento_cardelli
		//area con subfuncion
		definir rad,per, diam,area como real
		escribir "ingrese el rádio de un círculo"  // ingreso valor 6
		leer rad 
		perimetroYdiametro(rad,per,diam) /// el procedimiento perimetroydiametro, recibe rad por parametro y retorna per y diam
		escribir " Perimetro " per, "Diametro ", diam " Area " area
		
FinAlgoritmo

//dado un radio, calcula el perimetro y diametro
subproceso perimetroYdiametro(rad por valor,perimetro por referencia, diametro por referencia)
	/// perimetroYdiametro es invocada desde el programa ppal, 
	/// transferimos el control desde el algoritmo ppal a nuestro subproceso
	definir area como real  /// defino area solo para el subprograma
	area= 3.14* radio*radio /// una vez calculada el area se le devuelve el resultado al programa ppal 
	
Finsubproceso
