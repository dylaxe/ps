Algoritmo GestionAlumnos
	Dimension alumnos[10]
	Dimension a�os[10]
	Definir cantidad Como Entero
	Definir opc, i, a�o, indice Como Entero
	Definir nombre Como Cadena
	
	cantidad = 10
	Escribir "Ingrese los datos de los alumnos"
	Escribir "-----------------------"
	Para i = 1 Hasta 10 Hacer
		Escribir "Ingrese el nombre del alumno ", i, ":"
		Leer nombre
		Escribir "Ingrese el a�o del alumno ", i, ":"
		Leer a�o
		alumnos[i] = nombre
		a�os[i] = a�o
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
		Escribir "5- Cu�ntos alumnos hay por a�o"
		Escribir "6- Modificar el nombre de un alumno"
		Escribir "7- Modificar el a�o de un alumno"
		Escribir "0- Salir"
		Escribir "Seleccione una opci�n:"
		Leer opc
		
		Segun opc Hacer
			 1:
				Si cantidad < 10 Entonces
					Escribir "Ingrese el nombre del alumno:"
					Leer nombre
					Escribir "Ingrese el a�o del alumno:"
					Leer a�o
					alumnos[cantidad] = nombre
					a�os[cantidad] = a�o
					cantidad = cantidad + 1
					Escribir "Alumno agregado con �xito."
				SiNo
					Escribir "No se pueden agregar m�s alumnos, el l�mite es 10."
				Fin Si
			 2:
				Escribir "Listado completo de alumnos:"
				Para i = 1 Hasta 10 Hacer
					Escribir i, ") Nombre: ", alumnos[i], ", A�o: ", a�os[i]
				Fin Para
			 3:
				Escribir "Ingrese el �ndice del alumno que desea eliminar (1 a ", cantidad, "):"
				Leer indice
				indice = indice - 1
				Si indice >= 0 Y indice < cantidad Entonces
					Para i = indice Hasta cantidad - 2 Hacer
						alumnos[i] = alumnos[i + 1]
						a�os[i] = a�os[i + 1]
					Fin Para
					cantidad = cantidad - 1
					Escribir "Alumno eliminado con �xito."
				SiNo
					Escribir "�ndice no v�lido."
				Fin Si
			 4:
				Escribir "Ingrese el nombre del alumno a buscar:"
				Leer nombre
				Para i = 1 Hasta 10 Hacer
					Si alumnos[i] = nombre Entonces
						Escribir "Alumno encontrado: Nombre: ", alumnos[i], ", A�o: ", a�os[i]
					Fin Si
				Fin Para
			5:
				Escribir "Ingrese el a�o para contar alumnos:"
				Leer a�o
				Definir contador Como Entero
				contador = 0
				Para i = 1 Hasta cantidad Hacer
					Si a�os[i] = a�o Entonces
						contador = contador + 1
					Fin Si
				Fin Para
				Escribir "Cantidad de alumnos en el a�o ", a�o, ": ", contador
				
			 6:
				Escribir "Ingrese el �ndice del alumno para modificar el nombre (1 a ", cantidad, "):"
				Leer indice
				indice = indice - 1
				Si indice >= 0 Y indice < 10 Entonces
					Escribir "Ingrese el nuevo nombre:"
					Leer nombre
					alumnos[indice] = nombre
					Escribir "Nombre modificado con �xito."
				SiNo
					Escribir "�ndice no v�lido."
				Fin Si
			 7:
				Escribir "Ingrese el �ndice del alumno para modificar el a�o (1 a ", cantidad, "):"
				Leer indice
				indice = indice - 1
				Si indice >= 0 Y indice < 10 Entonces
					Escribir "Ingrese el nuevo a�o:"
					Leer a�o
					a�os[indice] = a�o
					Escribir "A�o modificado con �xito."
				SiNo
					Escribir "�ndice no v�lido."
				Fin Si
			 0:
				Escribir "Saliendo del programa"
		Fin Segun
		Escribir "Presione cualquier tecla para continuar..."
		Esperar Tecla
	Fin Mientras
Fin Algoritmo
