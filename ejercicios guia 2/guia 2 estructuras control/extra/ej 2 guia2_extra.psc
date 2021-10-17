Algoritmo ej2_guia2_extra
	//en los meses de setiembre, octubre y noviembre descuento del 10% sobre el total de la compra
	//usuario ingresa mes e importe de compra
	//programa calcula monto total a cobrar
	definir mes como caracter
	definir importe,monto Como Real
	escribir " ingrese mes "
	leer mes
	escribir "ingrese importe "
	leer importe
	si (mes = "setiembre") o (mes = "octubre") o (mes = "noviembre")
		entonces monto = importe*0.9
		escribir " su monto es $ " monto
	sino 
		monto=importe
		escribir " su monto es $" monto
	FinSi
	
FinAlgoritmo
