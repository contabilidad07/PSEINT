///Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada en punto, 
//y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal se reemplaza por el car�cter que se indica en la tabla y el resto de los caracteres 
//(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	a = @
//e = #
//i = $
//o = %
//u = *
//Realice un subprograma que reciba una secuencia de caracteres y retorne la codificaci�n correspondiente. 
//Utilice la estructura "seg�n" para la transformaci�n. Por ejemplo, si el usuario ingresa: 
//Ayer, lunes, salimos a las once y 10. La salida del programa deber�a ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.

Algoritmo Ejercicio4
	Definir palabra Como Caracter
	escribir "ingrese una palabra"
	leer palabra
	
	codificacion(palabra)
	
	FinAlgoritmo
SubProceso codificacion(palabra)
	Definir letra,palabraFinal Como Caracter
	Definir i Como Entero
	palabraFinal=""
	para i<- 0 hasta Longitud(palabra) Hacer
		letra=subcadena(palabra,i,i)
		Segun letra Hacer
			"a":
				letra="@"
			"e":
				letra="#"
			"i":
				letra="$"
			"o":
				letra="%"
			"u":
				letra="*"
				
		FinSegun
		palabraFinal=palabraFinal+letra
	FinPara
	Escribir palabraFinal
	
FinSubProceso
