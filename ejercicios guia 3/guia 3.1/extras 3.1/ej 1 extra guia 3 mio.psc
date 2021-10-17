//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use dicho procedimiento.

Algoritmo ej1_extra
	definir palabra como texto
	escribir "ingrese una palabra"
	leer palabra
	espaciado(palabra)
	
FinAlgoritmo

subproceso espaciado(palabra)
	definir i Como Entero
	
	para i=0 hasta longitud(palabra) hacer
		escribir sin saltar subcadena(palabra,i,i)
		escribir sin saltar " "
		
	FinPara
	FinSubProceso
	