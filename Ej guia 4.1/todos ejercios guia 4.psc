Ejercicios guia 4

Algoritmo sin_titulo
	
	//1.Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
	//muestre por pantalla
	
	definir i, vector Como Entero
	
	Dimension vector(5)
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingrese el valor que ira en el lugaar ",i + 1
		Leer vector(i)
	Fin Para
	
	Limpiar Pantalla
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar vector(i)," "
	Fin Para
FinAlgoritmo

Algoritmo sin_titulo
	
	//2.Realizar un programa que lea 10 n�meros reales por teclado, los almacene en un arreglo
	//y muestre por pantalla la suma, resta y multiplicaci�n de todos los n�meros ingresados
	//al arreglo.
	
	definir i, vector, suma, multi Como Entero
	Definir resta, division Como Real
	
	Dimension vector(10)
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingrese el valor que ira en el lugaar ",i + 1
		Leer vector(i)
	Fin Para
	
	Limpiar Pantalla
	
	suma = 0
	resta = 0
	multi = 1
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		suma = suma + vector(i)
		resta = resta - vector(i)
		multi = multi * vector (i)
	Fin Para
	
	Escribir "Suma: ",suma," Resta: ",resta," Multiplicaci�n: ",multi
FinAlgoritmo

Algoritmo sin_titulo
	
	//3.Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
	//usuario. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a
	//buscar tambi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n
	//donde se encuentra el valor. En caso que el n�mero se encuentre repetido dentro del
	//arreglo se deben imprimir todas las posiciones donde se encuentra ese valor.
	//Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar
	//un mensaje
	
	definir i, vector, num, num2, op Como Entero
	
	Escribir "Ingrese el tama�o del vector"
	Leer num
	
	Dimension vector(num)
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		vector(i) = Aleatorio(100, 199)
	Fin Para
	
	Escribir "Ingrese el numero a buscar entre el 100 al 200"
	Leer num2
	op = 0
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		Si (vector(i) == num2) Entonces
			Escribir "El numero ", num2," se encuentra en la posicion ",i
			op = op + 1
		Fin Si
	Fin Para
	
	Si op == 0 Entonces
		Escribir "El numero no se encuentra en el arreglo"
	SiNo
		Escribir "El numero se encuentra ", op ," vez(ces) en el arreglo"
	Fin Si
FinAlgoritmo

Algoritmo sin_titulo
	
	//4.Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
	//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el
	//valor m�s grande del vector.
	
	definir i, vector, num, num2, op Como Entero
	
	Escribir "Ingrese el tama�o del vector"
	Leer num
	
	Dimension vector(num)
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		Leer vector(i)
	Fin Para
	
	Limpiar Pantalla
	
	num2 = 0
	op = 0
	i=0
	
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		Si vector(i) > num2 Entonces
			num2 = vector(i)
			op = i
		Fin Si
	Fin Para
	
	Escribir "El mayor valor dentro del arreglo es:",num2, " en la posicion:",op + 1
FinAlgoritmo

Algoritmo sin_titulo
	
	//5.Realizar un programa con el siguiente men� y le pregunte al usuario que quiere hacer
	//hasta que ingrese la opci�n Salir:
	//a. Llenar Vector A. Este vector es de tama�o N y se debe llenar de manera
	//aleatoria usando la funci�n Aleatorio(valorMin, valorMax) de PseInt.
	//b. Llenar Vector B. Este vector tambi�n es de tama�o N y se llena de manera
	//aleatoria.
	//c. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar
	//elemento a elemento. Ejemplo: C = A + B
	//d. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar
	//elemento a elemento. Ejemplo: C = B - A
	//e. Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar:
	//Vector A, B, o C.
	//f. Salir.
	//NOTA: El rango de los n�meros aleatorios para los Vectores ser� de [-100 a 100]. La
	//longitud para todos los vectores debe ser la misma, por lo tanto, esa informaci�n s�lo se
	//solicitar� una vez.
	
	definir op, vectorA, vectorB, vectorC, num, i, op2 Como real
	
	Escribir "Ingresar la dimension de los arreglos"
	Leer num
	Dimension vectorA(num), vectorB(num),vectorC(num)
	Repetir
		
		Escribir "Ingrese que quiere hacer; 1 para Llenar Vector A"
		Escribir "2 para Llenar Vector B."
		Escribir "3 para Llenar Vector C con la suma de los vectores A y B."
		Escribir "4 para Llenar Vector C con la resta de los vectores B y A."
		Escribir "5 para Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar: Vector A, B, o C."
		Escribir "0 para salir"
		Leer op
		
		Segun op Hacer
			1:
				Para i = 0 Hasta num - 1 Con Paso 1 Hacer
					vectorA(i) = Aleatorio(-100, 100)
				Fin Para
			2:
				Para i = 0 Hasta num - 1 Con Paso 1 Hacer
					vectorB(i) = Aleatorio(-100, 100)
				Fin Para
			3:
				Para i = 0 Hasta num - 1 Con Paso 1 Hacer
					vectorC(i) = vectorA(i) + vectorB(i)
				Fin Para
			4:
				Para i = 0 Hasta num - 1 Con Paso 1 Hacer
					vectorC(i) = vectorB(i) - vectorA(i)
				Fin Para
			5:
				Escribir "Elegir vector a mostrar 1 vectorA; 2 vectorB; 3 vectorC"
				Leer op2
				
				Segun op2 Hacer
					1:
						Escribir "Vector A"
						Para i = 0 Hasta num - 1 Con Paso 1 Hacer
							Escribir Sin Saltar vectorA(i),", "
						Fin Para
					2:
						Escribir "Vector B"
						Para i = 0 Hasta num - 1 Con Paso 1 Hacer
							Escribir Sin Saltar vectorB(i),", "
						Fin Para
					3:
						Escribir "Vector C"
						Para i = 0 Hasta num - 1 Con Paso 1 Hacer
							Escribir Sin Saltar vectorC(i),", "
						Fin Para
					De Otro Modo:
						Escribir "iNGRESAR UN NUMERO DEL 1 AL 3"
				Fin Segun
			0:
				Escribir "Saliendo..."
			De Otro Modo:
				Escribir "Ingrese una opcion valida"
		Fin Segun
	Mientras Que op <> 0
FinAlgoritmo


Algoritmo sin_titulo
	
	//6.Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. Se pide
	//desarrollar un programa que:
	//a. Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por
	//letra. Ayuda: utilizar la funci�n Subcadena de PSeInt.
	//b. Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera y una
	//posici�n dentro del arreglo, y el programa debe intentar ingresar el car�cter
	//en la posici�n indicada, si es que hay lugar (es decir la posici�n est� vac�a o
	//es un espacio en blanco). De ser posible debe mostrar el vector con la frase y
	//el car�cter ingresado, de lo contrario debe darle un mensaje al usuario de que
	//esa posici�n estaba ocupada. 
	
	Definir vector, frase, letra Como Caracter
	Definir i, pos Como Entero
	Dimension vector(20)
	
	Escribir "Ingrese la frase"
	Leer frase
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		Si i < Longitud(frase) Entonces
			vector(i) = Subcadena(frase,i,i)
		SiNo
			vector(i) = ""
		Fin Si
	Fin Para
	
	Escribir "Ingrese un caracter cualquiera"
	Leer letra
	
	Escribir "Ingrese la posicion en lo que lo va a ingresar"
	Leer pos
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		Si (pos == i) y ((vector(i) == "") o (vector(i) == " ")) Entonces
			vector(i) = letra
		Fin Si
	Fin Para
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		Escribir Sin Saltar vector(i),"/"
	Fin Para
FinAlgoritmo


Algoritmo sin_titulo
	
	//7.Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios.
	//Despu�s, hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son
	//iguales o no. La funci�n debe devolver el resultado de est� validaci�n, para mostrar el
	//mensaje en el algoritmo. Nota: recordar el uso de las variables de tipo l�gico
	
	definir vector1, vector2 Como Real
	Dimension vector1(5), vector2(5)
	llenar(vector1, vector2)
	
	Si Validar(vector1, vector2) == Verdadero Entonces
		Escribir "Los numeros en los 2 vectores son iguales"
	SiNo
		Escribir "Los numeros en los 2 vectores no son iguales"
	Fin Si
	
FinAlgoritmo

SubProceso llenar(vector1, vector2 Por referencia)
	Definir i Como Entero
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		vector1(i) = aleatorio(1, 25)
		vector2(i) = aleatorio(1, 25)
	Fin Para
FinSubProceso

Funcion conf <- Validar ( vector1, vector2 )
	Definir conf Como Logico
	Definir i, igual, noIgual Como Entero
	igual = 0
	noIgual = 0
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Si vector1(i) == vector2(i) Entonces
			igual = igual +1
		SiNo
			noIgual = noIgual + 1
		Fin Si
	Fin Para
	
	Si igual == 5 Entonces
		conf = Verdadero
	SiNo
		conf = Falso
	Fin Si
Fin Funcion

EJERCICIOS EXTRA

Algoritmo gfh
    
	//1.Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
	//y los muestre por pantalla
	Definir i,vector1,vector2 Como Entero
	
	Dimension vector1(5),vector2(5)
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		vector1(i) = Aleatorio(1,25)
		vector2(i) = Aleatorio(1,25)
		
		Escribir vector1(i)," / ",vector2(i)
	Fin Para
FinAlgoritmo

Algoritmo gfh
    
	//2.Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
	//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	Definir i,vector1,num Como Entero
	Definir promedio, suma Como Real
	
	num = aleatorio(1, 10)
	Dimension vector1(num)
	
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		Leer vector1(i)
	Fin Para
	
	suma = 0
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		suma = suma + vector1(i)
	Fin Para
	
	promedio = suma / num
	Escribir "El promedio sera: ",promedio
	
FinAlgoritmo

Algoritmo gfh
    
	//3.Crear dos vectores que tengan el mismo tama�o (el tama�o se pedir� por teclado) y
	//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector
	//se debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la
	//funci�n Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su
	//longitud.
	
	Definir i,vector2,num Como Entero
	definir vector1 Como Caracter
	Definir promedio, suma Como Real
	
	Escribir "Ingresar la dimension del vector"
	Leer num
	Dimension vector1(num),vector2(num)
	
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre"
		Leer vector1(i)
		
		vector2(i) = Longitud(vector1(i))
	Fin Para
	
	Para i = 0 Hasta num -1 Con Paso 1 Hacer
		Escribir "El nombre ",vector1(i)," y tiene ",vector2(i)," letras."
	Fin Para
	
FinAlgoritmo

Algoritmo sin_titulo
	
	//4.Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 
	//0 y 20 generadas aleatoriamente mediante el uso de la funci�n azar() o aleatorio() de 
	//PseInt. Luego, de acuerdo a las notas contenidas, el programa debe indicar cu�ntos 
	//estudiantes son: 
	//a) Deficientes 0-5 
	//b) Regulares 6-10
	//c) Buenos 11-15 
	//d) Excelentes 16-20
	
	Definir notas, i, defi, reg, bueno, excel Como Entero
	
	Dimension notas(100)
	
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		notas(i) = aleatorio(0, 20)
	Fin Para
	
	defi = 0
	reg = 0
	bueno = 0
	excel = 0
	
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		Si ((notas(i) >= 0) y (notas(i) <= 5)) Entonces
			defi = defi + 1
		Fin Si
		Si ((notas(i) >= 6) y (notas(i) <= 10)) Entonces
			reg = reg + 1
		Fin Si
		Si ((notas(i) >= 11) y (notas(i) <= 15)) Entonces
			bueno = bueno + 1
		Fin Si
		Si ((notas(i) >= 16) y (notas(i) <= 20)) Entonces
			excel = excel + 1
		Fin Si
	Fin Para
	
	Escribir "Alumnos deficientes: ",defi
	Escribir "Alumnos regulares: ",reg
	Escribir "Alumnos buenos: ",bueno
	Escribir "Alumnos excelentes: ",excel
FinAlgoritmo


Algoritmo sin_titulo
	
	//5.Tomando en cuenta el  ejercicio 6, mejore el mecanismo de inserci�n del car�cter, 
	//facilitando un potencial reordenamiento del vector. Digamos que se pide ingresar el 
	//car�cter en la posici�n X y la misma est� ocupada, entonces de existir un espacio en 
	//cualquier posici�n X-n o X+n, desplazar los caracteres hacia la izq o hacia la derecha para 
	//poder ingresar el car�cter en cuesti�n en el lugar deseado. El procedimiento de 
	//reordenamiento debe ubicar el espacio m�s cercano. 
	
	Definir vector, letra, aux, aux2, frase Como Caracter
	Definir i,pos Como Entero
	Dimension vector(20)
	
	Escribir "Ingrese la frase"
	Leer frase
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		Si i < Longitud(frase) Entonces
			vector(i) = Subcadena(frase,i,i)
		SiNo
			vector(i) = ""
		Fin Si
	Fin Para
	
	Escribir "Ingrese un caracter cualquiera"
	Leer letra
	
	Escribir "Ingrese la posicion en lo que lo va a ingresar"
	Leer pos
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		si (i == pos) Entonces
			aux = vector(i)
			vector(i) = letra
		FinSi
		si (i > pos) Entonces
			aux2 = vector(i)
			vector(i) = aux
			aux = aux2
		FinSi
	Fin Para
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		Escribir Sin Saltar vector(i),"/"
	Fin Para
FinAlgoritmo


Algoritmo sin_titulo
	
	//6.Crear una funci�n que devuelva la diferencia que hay entre el valor m�s chico de un 
	//arreglo y su valor m�s grande
	
	Definir vector, i, num Como Entero
	
	Escribir "Ingrese la dimension del vector"
	leer num
	
	Dimension vector(num)
	
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		vector(i) = Aleatorio(1, 100)
	Fin Para
	
	Escribir "La diferencia es ",calculo(vector, num)
FinAlgoritmo

Funcion diferencia <- calculo ( vector, num )
	Definir menor, mayor, i Como Entero
	Definir diferencia Como Real
	
	mayor = 0
	menor = 99
	
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		Si (mayor < vector(i)) Entonces
			mayor = vector(i)
		Fin Si
		Si (vector(i) < menor) Entonces
			menor = vector(i)
		Fin Si
	Fin Para
	diferencia = mayor - menor
Fin Funcion

Algoritmo sin_titulo
	
	//7.Crear un programa que ordene un vector lleno de n�meros enteros aleatorios, de menor 
	//a mayor. Nota: investigar el ordenamiento burbuja en el siguiente link: Ordenamiento 
	//Burbuja
	
	Definir vector, i, num, aux, aux2 Como Entero
	
	Escribir "Ingrese la dimension del vector"
	leer num
	aux2 = num - 1
	
	Dimension vector(num)
	
	Para i = 0 Hasta num - 1 Con Paso 1 Hacer
		vector(i) = Aleatorio(1, 100)
	Fin Para
	
	Para i = 0 Hasta (num - 1) Con Paso 1 Hacer
		Escribir Sin Saltar vector(i),"/"
		
	Fin Para
	Escribir "--------"
	
	Repetir
		Para i = 0 Hasta aux2 Con Paso 1 Hacer
			Si i <> aux2 Entonces
				si (vector(i) > vector(i+1)) Entonces
					aux = vector(i)
					vector(i) = vector(i + 1)
					vector(i+1) = aux
				FinSi
			Fin Si
		Fin Para
		aux2 = aux2 - 1
	Mientras Que aux2 <> 1
	
	Para i = 0 Hasta (num - 1) Con Paso 1 Hacer
		Escribir Sin Saltar vector(i),"/"
	Fin Para
FinAlgoritmo

Algoritmo sin_titulo
	
	//8.Programe una funci�n recursiva que calcule la suma de un arreglo de n�meros enteros
	
	Definir vector, i, num, suma como Entero
	
	Escribir "Ingrese la dimension del vector"
	leer num
	Dimension vector(num)
	num = num -1
	suma = 0
	
	Para i = 0 Hasta num Con Paso 1 Hacer
		vector(i) = Aleatorio(1, 100)
		Escribir Sin Saltar "{",vector(i),"}"
	Fin Para
	Escribir ""
	Para i = 0 Hasta num Con Paso 1 Hacer
		suma = calculo(suma, vector(i))
	Fin Para
	
	Escribir "Total = ",suma
FinAlgoritmo

Funcion sum <- calculo ( num1, num2 )
	Definir sum Como Entero
	sum = num1 + num2
Fin Funcion

VARIANTE EJ8
Funcion suma<- sumatoria(arreglo1,n)
    Definir i Como Entero
    Definir suma Como Entero
    suma=0
    Para i=1 hasta n Hacer
        Si i=n entonces 
            mostrar ""Sin Saltar 
        SiNo
            suma=arreglo1(i)+sumatoria(arreglo1,n-1)
        FinSi
    FinPara
FinFuncion


