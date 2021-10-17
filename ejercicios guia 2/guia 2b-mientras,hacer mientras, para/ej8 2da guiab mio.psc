Algoritmo ejercicio_8_mio
	
	// Un docente de Programación tiene un listado de 3 notas registradas por cada uno de
	// sus N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
	// Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de sus estudiantes:
	
	//Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante reprueba el curso si tiene una nota final inferior a 6.5
	// 	-Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
	// 	-La mayor nota obtenida en las exposiciones.
	//	-Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
	///1 preguntar cantidad de alumnos, en cada alumnos pedir tres notas y elaborar informes claves
	///2 para cada alumno preguntar 3 notas
	///2.1 sacar el promedio de ese alumno
	///2.2 contabilizar el alumno si saca nota mayor a 7.5
	///2.3 contabilizar alumno con nota media de nota entre 4 y 7.5
	///2.4 comprobar si el alumno tuvo la nota mas alta en las exposiciones
	///2.5 contabilizar al alumno como reprobado si la nota es menor a 6.5
	///    2.5.1 acumular nota de los alumnos reprobados para sacar el promedio de reprobados
	
	/// 3 calcular promedios alumnos reprobados y mostrarlo por pantalla
	///4 calcular el porcentaje de alumnos que obtuvieron nota de integrador superior a 7.5 y mostrar por pantalla
	
	
	Definir 	 integrador, exposicion, parcial, notapromedio, notafinal, exposmayor, sumarepro Como Real
	
	Definir estudiantes, i, contarepro,contintegra,contaparcial, contador  Como Entero
	
	Integrador = 0
	exposicion = 0
	parcial = 0
	notapromedio =0
	contarepro = 0
	contintegra=0
	contaparcial=0
	contador=0
	exposmayor=0
	sumarepro=0
	Escribir "Ingrese la cantidad de estudiantes: "
	Leer estudiantes
	
	Para i = 1 Hasta estudiantes Con Paso 1 Hacer
		escribir "alumno: " estudiante
		Escribir "Ingrese la nota del trabajo practico integrador: "
		Leer integrador
		
		Escribir "Ingrese la nota de la exposicion: "
		Leer exposicion
		
		Escribir "Ingrese la nota del parcial: "
		Leer parcial
		contador=contador +1
		
		notafinal=integrador*0.35 + exposicion * 0.25+ parcial*0.4
				si notafinal<=6.5 entonces
					contarepro=contarepro+1
					sumarepro=sumarepro+notafinal
					
				FinSi
				si integrador > 7.5 Entonces
					contintegra=contintegra+1
					
				FinSi
				si exposicion > exposmayor entonces
					exposmayor=exposicion
				FinSi
				si parcial > 4 y parcial< 7.5
					contaparcial=contaparcial+1
				FinSi
				
	Fin Para
	escribir "el promedio final de los alumnos que reprobaron es: " sumarepro/contarepro
	escribir "el porcentaje de alumnos mayor a 7.5 es: " (contintegra/contador)*100
	escribir " la mayor nota obtenida en las exposiciones es: " exposmayor, "%"
	escribir " el total de estudiantes que obtuvieron una nota entre 4 y 7.5 es: " contaparcial
FinAlgoritmo
