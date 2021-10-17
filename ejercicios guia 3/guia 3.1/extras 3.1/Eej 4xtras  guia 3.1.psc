Algoritmo Fechas
	Definir dia,mes,anio Como Entero
	Escribir "Ingrese una fecha dia mes año"
	Leer dia
	Leer  mes
	Leer anio
	
	diaAnterior(dia, mes, anio)
	
FinAlgoritmo
SubProceso  diaAnterior(dia Por Referencia, mes Por Referencia, anio Por Referencia)
	
	Segun mes Hacer
		1:
			Si dia=1 Entonces
				dia=31
				mes=12
				anio= anio-1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			Sino 
				dia= dia-1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			FinSi
			
		3:
			Si ((anio mod 4=0 y anio MOD 100 <> 0) o (anio mod 100 =0 y anio mod 400=0)) y dia = 1 Entonces
				dia= 29
				mes= mes - 1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			SiNo
				Si dia =1 Entonces
					dia= 28
					mes= mes - 1
					Escribir "La fecha anterior es ", dia "/" mes "/" anio
				SiNo
					dia = dia-1
					Escribir "La fecha anterior es ", dia "/" mes "/" anio
				FinSi
				
			Fin Si
		5 o 7 o 8 o 12:
			Si dia= 1 Entonces
				dia=30
				mes= mes -1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			SiNo
				dia= dia - 1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			FinSi
			
		2 o 4 o 6 o 9 o 11:
			Si dia = 1 Entonces
				dia=31
				mes = mes -1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			SiNo
				dia= dia -1
				Escribir "La fecha anterior es ", dia "/" mes "/" anio
			FinSi
			
	Fin Segun
FinSubProceso
