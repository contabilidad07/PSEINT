///Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada en punto, 
//y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres 
//(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	a = @
//e = #
//i = $
//o = %
//u = *
//Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación correspondiente. 
//Utilice la estructura "según" para la transformación. Por ejemplo, si el usuario ingresa: 
//Ayer, lunes, salimos a las once y 10. La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.

Algoritmo ejercicio_4_subprogramas_procedimientos
	definir frase,frase2 Como Caracter
	definir i Como Entero
	escribir " ingrese la frase"
	leer frase
	
	ejercicio(frase)
FinAlgoritmo

subproceso ejercicio(frase)
	definir i Como Entero
	Para i=0 hasta Longitud(frase) Hacer
		segun Subcadena(frase,i,i) hacer
			
			"a": si subcadena(frase,i,i)="a" Entonces
					escribir sin saltar "@"
				FinSi
			"e": si subcadena(frase,i,i)="e" Entonces
					escribir sin saltar "#"
				FinSi
			"i": si subcadena(frase,i,i)="i" Entonces
					escribir sin saltar "$"
				FinSi
			"o": si subcadena(frase,i,i)="o" Entonces
					escribir sin saltar "%"
				FinSi
			"u": si subcadena(frase,i,i)="u" Entonces
					escribir sin saltar "*"
				FinSi
			".": si subcadena(frase,i,i)="." Entonces
					escribir sin saltar "."
				FinSi
			De Otro Modo:
				escribir Sin Saltar subcadena(frase,i,i) 
		FinSegun
		
	FinPara
	
FinSubProceso