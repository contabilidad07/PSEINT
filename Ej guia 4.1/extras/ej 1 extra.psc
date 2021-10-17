//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
//y los muestre por pantalla.
Algoritmo sin_titulo
	
	definir i, vecA,vecB Como Entero
	Dimension vecA[5]
	Dimension vecB[5]
	
	para i = 0 Hasta 4
		vecA[i]=Aleatorio(-100,100)
		vecB[i]=Aleatorio(-100,100)
	FinPara
	Escribir "Vector A"
	mostrarVector(vecA) //invoca al subproceso y pasa  el valor de vecA a (a) para mostrar
	escribir "Vector B"
	mostrarVector(vecB)//invoca al subproceso y pasa  el valor de vecB a  (a)
FinAlgoritmo

SubProceso mostrarVector(a) //  (a) 1° toma el valor vecA  y luego el de vecB
	definir i como entero
	
	para i = 0 hasta 4
		escribir a[i], " " Sin Saltar
		si i=4
			Escribir ""
		FinSi
	FinPara
FinSubProceso
