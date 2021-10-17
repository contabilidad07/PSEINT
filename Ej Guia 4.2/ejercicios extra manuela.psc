
	Algoritmo extra1
		Definir matriz,n Como Entero
		Escribir "ingrese el tamaño de la matriz"
		leer n
		Dimension matriz(n,n)
		
		llenamatriz(matriz,n)
		muestra(matriz,n)
		
FinAlgoritmo
SubProceso llenamatriz(matriz,n)
	Definir  i,j Como Entero
	
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta n-1 Hacer
			matriz(i,j) = Aleatorio(1,10)
		FinPara
	FinPara
FinSubProceso
SubProceso muestra(matriz,n)
	Definir i,j Como Entero
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta n-1 Hacer
			Escribir "(" matriz(i,j) , ")" Sin Saltar
		FinPara
		Escribir " " 
	FinPara
FinSubProceso
Algoritmo extra2
	Definir A,traspuesta,i,j,n,m Como Entero
	Escribir "ingrese numero para las filas"
	leer n
	Escribir "ingrese numero para las columnas"
	leer m
	
	Dimension A(n,m)
	Dimension traspuesta(m,n)
	
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta m-1 Hacer
			A(i,j) = Aleatorio(1,100)
		FinPara
	FinPara
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta m-1 Hacer
			Escribir "(" A(i,j) , ")" Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir "su matriz traspuesta quedaria asi: "
	para i = 0 hasta n-1 hacer
		para j = 0 hasta m-1 Hacer
			traspuesta(j,i) = A(i,j)
		FinPara
	FinPara
	
	para i = 0 hasta m-1 Hacer
		para j = 0 hasta n-1 Hacer
			Escribir Sin Saltar "(" ,traspuesta(i,j) ")"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
Algoritmo ExtraEjercicio3
	Definir matriz,i,j Como Entero
	Dimension matriz(5,15)
	i=0;
	j=0;
	rellenarmatriz(matriz,i,j)
	ver(matriz,i,j)
	
FinAlgoritmo
Funcion rellenarmatriz(matriz,i,j)
	Para i=0 Hasta 4 Hacer
		Para j=0 Hasta 14 Hacer
			Si i=0 o i= 4 Entonces
				matriz(i,j)=1
			FinSi
			Si j=0  o j=14 Entonces
				matriz(i,j)=1
			FinSi
			Si i>0 y i<4 y j>0 y j<14 Entonces 
				matriz(i,j)=0
			FinSi
			
		FinPara
	FinPara
FinFuncion
Funcion ver(matriz,i,j)
	Escribir"La matriz queda: "
	Para i=0 Hasta 4 Hacer
		Para j=0 Hasta 14
			Escribir"[",matriz(i,j),"]" Sin Saltar
		FinPara
		Escribir""
	FinPara
FinFuncion
Algoritmo extra4
	Definir matriz Como Entero
	
	Dimension matriz(3,3)
	llena(matriz)
	muestra(matriz)
	multi(matriz)
	
FinAlgoritmo
SubProceso llena(matriz)
	Definir i,j Como Entero
	para i = 0 hasta 2 Hacer
		para j = 0 hasta 2 hacer
			matriz(i,j)=Aleatorio(1,10)
			
		FinPara
	FinPara
FinSubProceso
SubProceso muestra(matriz)
	Definir i,j Como Entero
	para i = 0 hasta 2 Hacer
		para j = 0 hasta 2 Hacer
			Escribir Sin Saltar " [" , matriz[i,j] , "]" 
			
		FinPara
		escribir""
	FinPara
FinSubProceso
SubAlgoritmo multi(matriz)
	Definir i,j,multip Como Entero
	multip=1
	para i = 0 hasta 2 Hacer
		para j = 0 hasta 2 Hacer
			multip=multip * matriz(i,j)
			Escribir "la multiplicacion de los elementos es:" , multip
		FinPara
	FinPara
	
FinSubAlgoritmo
Algoritmo extra5
	Definir matriz,n Como Entero
	
	Escribir "ingrese la cantidad de filas que desee "
	leer n
	Dimension matriz(n,3)
	llena(matriz,n)
	muestra(matriz,n)
	
	
FinAlgoritmo
SubProceso llena(matriz,n)
	Definir i,j,s Como Entero
	Escribir "ingrese numeros para sumar"
	para i = 0 hasta n-1 Hacer
		s=0
		para j = 0 hasta 1 Hacer
			Escribir Sin Saltar "(" ,i, ") (",j,")"
			leer matriz(i,j)
			s=s+matriz(i,j)
		FinPara
		matriz(i,2)=s
		Escribir ""
	FinPara
FinSubProceso
SubProceso muestra(matriz,n)
	Definir i,j,s Como Entero
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta 2 Hacer
			Escribir Sin Saltar " [" , matriz[i,j] , "]" 
			si j= 1 Entonces
				escribir Sin Saltar " ="
			SiNo
				si j < 2 Entonces
					Escribir sin saltar " +"
				FinSi
			FinSi
		FinPara
		escribir""
	FinPara
FinSubProceso
Algoritmo extra7
	Definir A Como Caracter
	Escribir "                   ---planilla---                 "
	Dimension A(8,7)
	planilla(A)
	
FinAlgoritmo
SubProceso planilla(A)
	Definir i,j,n Como Entero
	para i = 0 hasta 7 Hacer
		para j = 0 hasta 6 Hacer
			A(i,j) = "   "
			Si (i=0 o j=0) y (i<>j) Entonces
				Si i=0 y j>0 Entonces
					Segun j Hacer
						1:
							A[i,j]="Lunes"
							Para n=1 Hasta 7 Hacer
								A[n,j]="     "
							FinPara
						2:
							A[i,j]="Martes"
							Para n=1 Hasta 7 Hacer
								A[n,j]="      "
							FinPara
						3:
							A[i,j]="Miercoles"
							Para n=1 Hasta 7 Hacer
								A[n,j]="         "
							FinPara
						4:
							A[i,j]="Jueves"
							Para n=1 Hasta 7 Hacer
								A[n,j]="      "
							FinPara
						5:
							A[i,j]="Viernes"
							Para n=1 Hasta 7 Hacer
								A[n,j]="       "
							FinPara
						6:
							A[i,j]="Total producto"
							Para n=1 Hasta 7 Hacer
								A[n,j]="              "
							FinPara
					FinSegun
				FinSi
				Si j=0 y i<>0 Entonces
					Segun i Hacer
						1:
							A[i,j]="     Producto 1     "
						2:
							A[i,j]="     Producto 2     "
						3:
							A[i,j]="     Producto 3     "
						4:
							A[i,j]="     Producto 4     "
						5:
							A[i,j]="     Producto 5     "
						6:
							A[i,j]="    Total semana    "
						7:
							A[i,j]="Producto más vendido"
					FinSegun
				FinSi
			SiNo
				si i=0 y j=0 Entonces
					A[i,j]="                    "
				FinSi
			FinSi
		Fin Para
	Fin Para
	fin subproceso
	
	Para i<-0 Hasta 7  Hacer
		Para j<-0 Hasta 6  Hacer
			Escribir Sin Saltar" [ ",A[i,j]," ] "
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso
FinAlgoritmo
