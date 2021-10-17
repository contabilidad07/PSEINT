Algoritmo Extra4
		
		Definir d, m , a Como Entero
		
		Escribir "Ingrese el dia, mes y año (en ese orden)"
		Leer d , m , a
		
		DiaAnterior(d,m,a)
		
FinAlgoritmo

/////////////////////////////////////////////////////////////////////////


SubProceso DiaAnterior (d,m,a)
	
	Si (d=1) y (m=1) Entonces
		Escribir "31/12/" a-1
	FinSi
	Si (d=1) y (m=3) Entonces
		Escribir "28/2/" a  
	FinSi
	Si (d=1) y ((m=2)o(m=4)o(m=6)o(m=8)o(m=9)o(m=11) ) Entonces
		Escribir "31/" m-1 "/" a
	FinSi
	Si (d=1) y ((m=5)o(m=7)o(m=10)o(m=12)) Entonces
		
		Escribir "30/" m-1 "/" a
	FinSi
	Si (d<=28) y (d>1) y (m=2) Entonces
		Escribir "" d-1 "/" m "/" a
	Sino 
		Si (d<=30) y (d>1) y (m>0) y (m<=12) Entonces
			Escribir "" d-1 "/" m "/" a
		Sino
			Si (d<=31) y (d>1) y (m>0) y (m<=12) Entonces
				
				Escribir "" d-1 "/" m "/" a
			SiNo
				Escribir "Fecha invalida"
			FinSi
		FinSi
	FinSi
FinSubProceso
FinAlgoritmo
