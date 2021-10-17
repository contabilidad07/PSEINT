Algoritmo ejemplo_Profe_mientra_guia2b
	//crear un  algoritmo que pida numeros  y los sume, hasta que se ingrese el numero 10
	//luego muestre por pantalla la suma total y la cantidad de numeros ingresados
	// el numero 10 no debe sumarse ni restarse
	//bucle mientras
	// variable contador: dice la cantidad de numeros ingresados (aumenta de 1 en 1 a medida que ingresan numeros
	//suma variable de acumulacion, comienza en cero y va sumando y vuelve a tomar el la ultima suma como inicio hasta que se cumpla la condicion
	//en cada vuelta le sumamos el numero a la acumulacion anterior
	
	definir num, suma, contador como entero
	//inicializo las variables para que no me den error (les doy valor cero) porque si preguntan en el bucle y la variable no esta inicializada va a dar error
	num=0
	suma=0
	contador=0
	mientras num<> 10 hacer
		// todo lo que se escriba dentro del mientras y hacer mientras (bucle) se repetirá hasta que se cumpla la condicion
		escribir " ingrese un numero"
		leer num
		si num <> 10 Entonces
			suma= suma+num
			contador= contador+1
			
		FinSi
	FinMientras
	
	escribir " la suma total es: " suma
	escribir " la cantidad de numeros ingresados es: " contador
FinAlgoritmo
