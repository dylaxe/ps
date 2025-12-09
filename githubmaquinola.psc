Algoritmo GestionAlumnos
	Dimension alumnos[10]
	Dimension años[10]
	Definir cantidad Como Entero
	Definir opc, i, año, indice Como Entero
	Definir nombre Como Cadena
	
	cantidad = 10
	Escribir "Ingrese los datos de los alumnos"
	Escribir "-----------------------"
	Para i = 1 Hasta 10 Hacer
		Escribir "Ingrese el nombre del alumno ", i, ":"
		Leer nombre
		Escribir "Ingrese el año del alumno ", i, ":"
		Leer año
		alumnos[i] = nombre
		años[i] = año
	Fin Para
	Escribir "Carga de datos completada. Presione cualquier tecla para continuar"
	
	Esperar Tecla
	
	opc = -1
	Mientras opc <> 0 Hacer
		Limpiar Pantalla
		Escribir "MENU DE OPCIONES"
		Escribir "-------------------"
		Escribir "1- Agregar un nuevo alumno"
		Escribir "2- Mostrar el listado completo"
		Escribir "3- Eliminar un alumno"
		Escribir "4- Buscar un alumno por nombre"
		Escribir "5- Cuántos alumnos hay por año"
		Escribir "6- Modificar el nombre de un alumno"
		Escribir "7- Modificar el año de un alumno"
		Escribir "0- Salir"
		Escribir "Seleccione una opción:"
		Leer opc
		
		Segun opc Hacer
			 1:
				Si cantidad < 10 Entonces
					Escribir "Ingrese el nombre del alumno:"
					Leer nombre
					Escribir "Ingrese el año del alumno:"
					Leer año
					alumnos[cantidad] = nombre
					años[cantidad] = año
					cantidad = cantidad + 1
					Escribir "Alumno agregado con éxito."
				SiNo
					Escribir "No se pueden agregar más alumnos, el límite es 10."
				Fin Si
			 2:
				Escribir "Listado completo de alumnos:"
				Para i = 1 Hasta 10 Hacer
					Escribir i, ") Nombre: ", alumnos[i], ", Año: ", años[i]
				Fin Para
			 3:
				Escribir "Ingrese el índice del alumno que desea eliminar (1 a ", cantidad, "):"
				Leer indice
				indice = indice - 1
				Si indice >= 0 Y indice < cantidad Entonces
					Para i = indice Hasta cantidad - 2 Hacer
						alumnos[i] = alumnos[i + 1]
						años[i] = años[i + 1]
					Fin Para
					cantidad = cantidad - 1
					Escribir "Alumno eliminado con éxito."
				SiNo
					Escribir "Índice no válido."
				Fin Si
			 4:
				Escribir "Ingrese el nombre del alumno a buscar:"
				Leer nombre
				Para i = 1 Hasta 10 Hacer
					Si alumnos[i] = nombre Entonces
						Escribir "Alumno encontrado: Nombre: ", alumnos[i], ", Año: ", años[i]
					Fin Si
				Fin Para
			5:
				Escribir "Ingrese el año para contar alumnos:"
				Leer año
				Definir contador Como Entero
				contador = 0
				Para i = 1 Hasta cantidad Hacer
					Si años[i] = año Entonces
						contador = contador + 1
					Fin Si
				Fin Para
				Escribir "Cantidad de alumnos en el año ", año, ": ", contador
				
			 6:
				Escribir "Ingrese el índice del alumno para modificar el nombre (1 a ", cantidad, "):"
				Leer indice
				indice = indice - 1
				Si indice >= 0 Y indice < 10 Entonces
					Escribir "Ingrese el nuevo nombre:"
					Leer nombre
					alumnos[indice] = nombre
					Escribir "Nombre modificado con éxito."
				SiNo
					Escribir "Índice no válido."
				Fin Si
			 7:
				Escribir "Ingrese el índice del alumno para modificar el año (1 a ", cantidad, "):"
				Leer indice
				indice = indice - 1
				Si indice >= 0 Y indice < 10 Entonces
					Escribir "Ingrese el nuevo año:"
					Leer año
					años[indice] = año
					Escribir "Año modificado con éxito."
				SiNo
					Escribir "Índice no válido."
				Fin Si
			 0:
				Escribir "Saliendo del programa"
		Fin Segun
		Escribir "Presione cualquier tecla para continuar..."
		Esperar Tecla
	Fin Mientras
Fin Algoritmo
