Algoritmo ej9_2b
	//programa que lea un numeor entero y a partir de el cree un cuadrado de asteriscos de ese tamaño, solo se veran en el borde del cuadrado o en el interior
	Definir a, b, lados Como Entero
	
    Escribir "Ingrese el ancho"
    Leer lados
	
    Para a = 1 Hasta lados Con Paso 1 Hacer
        Escribir Sin Saltar "* "
    FinPara
	
    Escribir ""
	
    Para b <- 1 Hasta lados-2 Con Paso 1 Hacer
        Escribir Sin Saltar "* "
        Para a <- 1 Hasta lados Con Paso 1 Hacer
            Escribir Sin Saltar " "
        FinPara
		
        Escribir "* "
    FinPara
	
    Para a <- 1 Hasta lados Con Paso 1 Hacer
        Escribir Sin Saltar "* "
    FinPara
	
    Escribir ""
	
FinAlgoritmo
