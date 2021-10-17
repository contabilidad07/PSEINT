///Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales repetidas. Al final el procedimiento mostrará la frase final
/// pedir frase ///remover  vocales repetidas//encontrarlas y contarlas
/// reemplazarlas /// mostrar dentro del procedimiento la frase final

Algoritmo ej5_extra_guia3_2
	definir fraseentrada como cadena
	escribir " ingrese una frase "
	leer fraseentrada
	removervocalesrepetidas(fraseentrada)
	
	
subproceso  removervocalesrepetidas(fraseentrada)
	definir i,j,ca,ce,ci,co,cu Como Entero // contador para cada vocal
	definir caracteractual,nuevafrase como cadena
	caracteractual= ""
	nuevafrase= ""
	ca=0
	ce=0
	ci=0
	co=0
	cu=0
	
	para i=0 hasta longitud(fraseentrada)-1 hacer  /// contar cada una de las vocales recorriendo la frase
		
		caracteractual=mayusculas(subcadena (fraseentrada,i,i)) ///tomo el caracter de la frase en mayusculas
		segun caracteractual hacer /// encuentra la vocal y la suma a su contador
			"A": ca=ca+1
			"E": ce= ce+1
			"I": ci=ci+1				
			"O": co=co+1
			"U": cu=cu+1
		FinSegun
		
	FinPara
	// si las vocales se repiten removerlas
	//recorrer nuevamente la frase para armarla sin vocales repetidas// si el caracter es una vocal removerla, sino concatenar el caracter de la frase principal
	para j=1 hasta longitud(fraseentrada)-1 Hacer
		caracteractual=mayusculas(subcadena (fraseentrada,j,j))
		si (caracteractual="A" y ca>1) o (caracteractual="E" y ce>1) o (caracteractual="I" y ci>1) o (caracteractual="O" y co>1) o (caracteractual="U" y cu>1)
			nuevafrase=concatenar (nuevafrase,"")
		sino
			nuevafrase=concatenar (nuevafrase,subcadena(fraseentrada,j,j))
		FinSi
	FinPara
	escribir nuevafrase // muestra la frase sin vocales repetidas
	
FinSubProceso

	