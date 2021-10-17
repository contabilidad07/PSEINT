Algoritmo ej4_guia2_extra
	definir horas,minutos, litros,pagar como real
	escribir " ingrese cantidad de horas utilizadas"
	leer horas
	escribir "ingrese cantidad de litros consumidos"
	leer litros
     minutos = horas * 60
	si horas < 2 Entonces
		escribir " el importe a pagar por el cliente es $ 400 "
	SiNo
		pagar =(litros*40) + (minutos*5.2)
		escribir " el importe a pagar es $" pagar
		
		
	FinSi
	
FinAlgoritmo
