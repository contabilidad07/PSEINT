Algoritmo ej9_nuevo
	
	/// verlo como numero de filas y columnas
	/// j son las filas (recorre filas)
	//i son las columnas para i (recorre columnas)
	
	definir lado, i,j Como Entero
	escribir "ingrese un numero"
	leer lado
	para i=1 hasta lado hacer
		para j=1 hasta lado Hacer
			si (i= 1) o (i= lado) Entonces
				
				escribir sin saltar "*"
			SiNo
				si (j= 1) o (j= lado) Entonces
					escribir sin saltar "*"
				sino 
					escribir sin saltar " " /// ojo con los espacios dentro de las comillas si pongo de mas o menos me cambia la columna
				fin si
			FinSi
			
		fin para
		escribir "" ///sin espacios, sino me corre una columna
	FinPara
	
FinAlgoritmo
