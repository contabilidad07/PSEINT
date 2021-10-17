//Realizar un procedimiento que permita realizar la división entre dos números y muestre el cociente y el resto utilizando el método de restas sucesivas
//El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta obtener un resultado menor que el divisor, este resultado es el residuo, y
//el número de restas realizadas es el cociente. Por ejemplo: 50 / 13:
		//50 ? 13 = 37 una resta realizada
		//37 ? 13 = 24 dos restas realizadas
		//24 ? 13 = 11 tres restas realizadas
	//dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

Algoritmo Ejercicio3_pasado
	Definir dividendo, divisor Como Entero
	Escribir "ingrese un numero"
	leer dividendo
	Escribir "ingrese el divisor"
	leer divisor
	DivporResta(dividendo,divisor)
	
FinAlgoritmo
SubAlgoritmo DivporResta(dividendo,divisor)//50/13
	Definir residuo,cociente Como Entero
	residuo=dividendo //inicializa el resto igual al dividendo
	cociente = 0
	
	Hacer
		cociente=cociente+1 // cuenta el cociente
		residuo=residuo - divisor // 50-13=37                   37-13= 24              24-13=11
	Mientras Que residuo>divisor //37 mayor a 13 (cont 1)	24 mayor a 13 (cont 2)  11 no es mayor a trece (cont 3)
	Escribir "el cociente es ", cociente, " y el residuo es ", residuo
	
FinSubAlgoritmo