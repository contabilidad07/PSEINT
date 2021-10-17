
//"Batalla naval espacial": Este juego se juega en un tablero de 4 x 4, donde las filas se 	identifican de la A hasta la D y las columnas del 1 al 4. 
//En el juego participan 2 contendientes: el defensor y el atacante. Dicho juego consiste en:
	//El defensor, ubica solo una nave nodriza triple con ciertas reglas:
		//2.1) La nave debe ubicarse de tal forma que sus partes queden contiguas, y saea horizontal o vertical, pero no es válido en forma oblicua.
		//2.2) Cada una de las tres partes que compone la nave contiene un escudo de electrones medido con un valor del 1 al 9, el cual debe pedirse al usuario junto con su posición.
	 //A continuación, se ilustra un ejemplo de una ubicación posible:
//1 2 3 4
//A
//B
//C 4 7 1
//D
Algoritmo integrador2
	Definir mD,mA,escudo,carga,turno Como entero	//"carga" es la disponible solamente que luego se va actualizando según el uso 
	Definir inicio como logico
	Dimension mD(4,4),mA(4,4)						//mD tablero defensor, mA tablero atacante
	inicio=Verdadero								//Inicio verdadero para rellenar tablero con 0 y luego falso para actualizar con escudos o cargas
	escudo=0										//Escudo inicial sin asignar
	carga=40										//Carga máxima disponible inicialmente
	turno=1										//Turno 1 defensor
	
	tablero(mD,inicio)							//Generación del tablero defensor
	Escribir "Primer TURNO DEFENSOR"
	ubicacion(mD,mA,inicio,escudo,carga,turno)		//Ubicacion de escudo, comprobaciones
	
	Limpiar Pantalla
	Escribir "Segundo TURNO ATACANTE"
	tablero(mA,inicio)							//Generación del tablero atacante
	ubicacion(mD,mA,inicio,escudo,carga,turno)		//Ubicacion de ataques, comprobaciones y efectividad
	Escribir ""
	
	Limpiar Pantalla
	inicio=Falso									//Inicio falso, para que no vuelva a generar 0 en el tablero, sino que use los ya grabados
	Si escudo=0 y carga>0
		Escribir "Nave neutralizada. ATACANTE GANADOR. Carga restante [" carga "]"
		tablero(mA,inicio)
	SiNo
		Escribir "Atacante sin carga. DEFENSOR GANADOR. Escudo restante [" escudo "]"
		tablero(mD,inicio)
	FinSi
FinAlgoritmo

SubProceso ubicacion(mD,mA,inicio,escudo Por Referencia,carga Por Referencia,turno Por Referencia)
	Definir i,n,m,hv Como Entero
	inicio=Falso									//Inicio falso, para no volver a regenerar el tablero en 0, sino que vaya SOLO mostrando las modificaciones
	i=0

	si turno=1									//Segun el turno
		Para i=0 Hasta 2							//i=0 hasta 2 (3 turnos para ubicar las 3 partes de la nave)
			coordenada(mD,i,n,m,carga,turno,hv)
			escudo=escudo+mD(n,m)					//Actualización escudo total
			tablero(mD,inicio)					//Actualización(GRAFICA) del tablero
		FinPara
		turno=2									//Fin del turno 1.Turno = 2 para cuando se vuelva a invocar al subproceso "ubicacion"
	SiNo
		Hacer
			coordenada(mA,i,n,m,carga,turno,hv)
			carga=carga-mA(n,m)					//Actualización de carga restante disponible
			ataque(mD,mA,n,m,escudo)				//Verificación de ataque efectivo o no
			tablero(mA,inicio)					//Actualización(GRAFICA) del tablero
		Mientras Que carga>0 y escudo<>0
	FinSi
FinSubProceso

SubProceso ataque(mD,mA,n,m,escudo Por Referencia)
	Si mD(n,m)=0						//Si el valor de esa posición es 0, es por que no hay escudo(nave) ahí
		mA(n,m) = -1					//VALOR solo usado para la representación gráfica final
		Escribir "ESPACIO"
	SiNo							//Las operaciones se realizan en la matriz del defensor(mD), que es el que tiene guardado el escudo.La matriz atacante (mA) solo es usada para graficar los intentos.
		si mA(n,m)<=mD(n,m)			//Solo Si el ataque es menor igual al escudo
			escudo=escudo-mA(n,m)
			mD(n,m)=mD(n,m)-mA(n,m)
			si mD(n,m)=0				//Si el escudo en esa posicion es menor luego del ataque es 0, entonces se neutralizo
				Escribir "EFECTIVO.Se neutralizo(N) el escudo de ese casillero. Restan " escudo " electrones para hundir la nave"
				mA(n,m)=-2			//VALOR solo usado para la representación gráfica final
			SiNo
				Escribir "EFECTIVO (X). Restan " escudo " electrones para hundir la nave"
				mA(n,m)=-3			//VALOR solo usado para la representación gráfica final
			FinSi
		SiNo
			Escribir "SIN EFECTO (-)"
			mA(n,m)=-4				//VALOR solo usado para la representación gráfica final
		FinSi
	FinSi
FinSubProceso

SubProceso coordenada(v,i,n Por Referencia,m Por Referencia,carga,turno,hv Por Referencia)
	Definir posicion,letra como caracter
	Definir POSvalido Como Logico
	
	Hacer
		si i=0 y turno=1			//Solo se va a ejecutar si el turno es del defensor(turno=1) y si es la primera elección (i=0)
			Hacer
				Escribir "Ingresar la orientación de la nave. 1-Horizontal o 2-Vertical"
				Leer hv
			Mientras Que hv<>1 y hv<>2		//Mientras ponga cualquier número distinto a 1 o 2, se va a seguir pidiendo la orientación
		FinSi
		Segun turno						//Texto según turno
			1:Escribir "Ingresar la COORDENADA(ej a1,c1,d4,etc) del escudo N° " i+1 " de la nave nodriza"
			2:Escribir "Ingresar la COORDENADA(ej a1,c1,d4,etc) para realizar el ataque"
		FinSegun
		Leer posicion
		
		letra=Minusculas(Subcadena(posicion,0,0))		//Para cortar solo la primera parte
		m=ConvertirANumero(Subcadena(posicion,1,1))-1	//Para cortar la segunda parte
		POSvalido = (letra="a" o letra="b" o letra="c" o letra="d") y (m>=0 y m<=3) y Longitud(posicion)<3	//Prueba que este en rango de valores, y longitud<3 o <=2 ya que son solo 2 caracteres como máximo(a2)
		
		Si no(POSvalido)								//Si no es válido la posición ingresada entonces TEXTO
			Escribir "[ERROR] Ingresar una posición VÁLIDA compuesta por A,B,C,D y 1,2,3,4 (ej a1,c1,d4,etc)"
		SiNo										//Si es válida la posición ingresada, entonces:
			Segun letra								//Asignación de valor a n según letra
				"a":n=0
				"b":n=1
				"c":n=2
				"d":n=3
			FinSegun
			
			si turno=1 y i>=1							//Prueba adicional de posición seleccionada, para el turno defensor y para la colocación de los 2 escudos restantes (i>=2)
				orientacion(v,i,n,m,hv,POSvalido)		//Actualización de POSvalido para el turno defensor
			FinSi
			
			Si v(n,m)>0 y turno=1						//Si se elije la misma casilla que ya tenía escudo y el turno es del defensor  entonces:
				Escribir "[ERROR] Esta posición YA TIENE ESCUDO ASIGNADO. Elija otra coordenada"
				POSvalido = Falso					//Se pone en falso POSvalido para reingresar otra posición que no tenga escudo y cumpla las condiciones previas
			FinSi
		FinSi
	Mientras Que no(POSvalido)						//Mientras que la posición ingresada no sea válida, se volvera a pedir reingresar una válida

	
	Hacer
		Segun turno									//Texto según turno
			1:Escribir "Ingresar el valor del ESCUDO (1-9) para la parte " i+1 " de la nave"
			2:Escribir "Ingresar el valor de carga de la carga a utilizar(1-9). Carga restante " carga	//"carga" es la disponible, no la leída
		FinSegun
		Leer v(n,m)		//Escudo o carga leídos
		
		Si v(n,m)>carga y turno=2		 				//Si la carga a ultilizar es mayor a la disponible
			Escribir "[ERROR] Esta intentado usar una carga mayor a la disponible [" carga "]"
		FinSi
	Mientras Que (v(n,m)>9 o v(n,m)<1) o v(n,m)>carga	//Mientras que la carga o escudo a asignar sea menor a 1 o mayor a 9, y la carga a utilizar sea mayor a la disponible. Se repite
FinSubProceso

SubProceso orientacion(v,i,n,m,hv,POSvalido Por Referencia)
	Segun hv											//Según la orientación hacer
		2:	Segun n									//VERTICAL, variación de filas (n)
				0:POSvalido = v(n+1,m)<>0				//Para posición borde n=0, verificar que el contiguo (n+1,m) sea diferente a 0
				3:POSvalido = v(n-1,m)<>0				//Para posición borde n=3, verificar que el contiguo (n-1,m) sea diferente a 0
				De Otro Modo: POSvalido = (v(n-1,m)<>0 o v(n+1,m)<>0)		//Si no se esta en posición borde, entonces n-1 o n+1
			FinSegun
		1:	Segun m									//HORIZONTAL, variación de columnas (m)
				0:POSvalido = v(n,m+1)<>0
				3:POSvalido = v(n,m-1)<>0
				De Otro Modo: POSvalido = (v(n,m-1)<>0 o v(n,m+1)<>0)
			FinSegun
	FinSegun										//Actualización de POSvalido según condiciones previas

	Si no(POSvalido)									//Si la posición no es valida, entonces TEXTO
		Escribir "[ERROR] La posición seleccionada debe ser contigua a la seleccionada anteriormente"
	FinSi
FinSubProceso

SubProceso tablero(v,inicio)
	Definir i,j Como Entero
	Escribir Sin Saltar "       1  2  3  4  "
	Escribir ""
	
	Para i=0 Hasta 3
		Segun i
			0: Escribir Sin Saltar "    A "
			1: Escribir Sin Saltar "    B "
			2: Escribir Sin Saltar "    C "
			3: Escribir Sin Saltar "    D "
		FinSegun
		Para j=0 Hasta 3
			si inicio								//Si inicio es Verdadero, entonces se rellena el tablero con 0 y se muestra el mismo
				v(i,j)=0								//Si inicio es falso se evita rellenar con 0 y solo se muestra los tableros guardados mD y mA
			FinSi
			Segun v(i,j)
				-1:Escribir Sin Saltar "   "	
				-2:Escribir Sin Saltar " N "
				-3:Escribir Sin Saltar "[X]"	
				-4:Escribir Sin Saltar "[-]"	
				De Otro Modo:
					Escribir Sin Saltar "[" v(i,j) "]"	
			FinSegun
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso
