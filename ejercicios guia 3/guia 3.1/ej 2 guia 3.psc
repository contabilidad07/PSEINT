Algoritmo ej2_3guia
	//Crear una procedimiento que calcule la temperatura media de un día a partir de la
    //temperatura máxima y mínima. Crear un programa principal, que utilizando un
    //procedimiento, vaya pidiendo la temperatura máxima y mínima de n días y vaya
    //mostrando la media de cada día. El programa pedirá el número de días que se van a
    //introducir.
	Definir Dias Como Entero
	Escribir "Ingrese la cantidad de dias que quiere calcular la temperatura media"
	leer Dias
	Cantidad(Dias)
	
FinAlgoritmo
SubAlgoritmo  Cantidad(Dias)
	Definir TempMax,TempMin,TempMedia,i Como Real
	Para i <- 1 Hasta Dias Hacer
		Escribir "ingrese la TempMax del Dia"
		leer TempMax
		Escribir "ingrese la TempMin del Dia"
		Leer TempMin
		si TempMax < TempMin Entonces
			Escribir "usted ingreso un maximo menor al minimo"
		SiNo
			TempMedia=(TempMax+TempMin)/2
			Escribir "La temperatura media del dia" i "es de" TempMedia
		FinSi
	FinPara
FinSubAlgoritmo

