Algoritmo EjercicioExtra5
	Definir frase,vectorFrase,letra Como Caracter
	Definir i,posicion,espacioMasCercano,diferencia,tamanio Como Entero
	espacioMasCercano=99
	Escribir "ingrese una frase" 
	leer frase
	tamanio=Longitud(frase)+3
	Dimension vectorFrase(tamanio)
	para i<-0 Hasta  tamanio-2
		vectorFrase(i) =Subcadena(frase,i,i)
		
	FinPara
	Escribir "ingrese el caracter a meter en la frase"
	leer letra
	Escribir "en que posicion quiere ingresarlo? , posicion minima: 0, maxima:" , Longitud(frase)
	leer posicion
	si vectorFrase(posicion)= " "
		vectorFrase(posicion)=letra
		Escribir "Letra ingresada: asi quedaria la frase"
		para i<-0 hasta tamanio -2
			Escribir Sin Saltar vectorFrase(i)
		FinPara
		Escribir ""
	SiNo
		para i<-0 hasta tamanio-2
			si vectorFrase(i) = " "
				diferencia = posicion -1
				si diferencia < 0
					diferencia = (-1) * diferencia
				FinSi
				si diferencia < espacioMasCercano
					espacioMasCercano=i
				FinSi
			FinSi
		FinPara
		Escribir espacioMasCercano
		si espacioMasCercano >posicion //es decir, si esta a la derecha
			para i<-tamanio-2 hasta posicion Con Paso -1 Hacer
				vectorFrase(i+1) = vectorFrase(i)
			FinPara
		FinSi
		vectorFrase(posicion) = letra
		Escribir "Letra ingresada moviendo el vector: así quedaria la frase"
		para i<-0 Hasta tamanio-2
			Escribir Sin Saltar vectorFrase(i) 
		FinPara
		Escribir " "
	FinSi
	
	
	
FinAlgoritmo