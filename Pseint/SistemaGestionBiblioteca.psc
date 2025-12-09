Algoritmo SistemaGestionBiblioteca
	opc=1
	cantLibros=0
	cantPrestamos=0
	Dimension titulos[100]
	Dimension autores[100]
	Dimension disponibles[100]
	Dimension estudiantes[100]
	Dimension diasPrestamo[100]
	
	Mostrar "Cantidad de libros a registrar:"
	Leer cantLibros
	Para x=1 Hasta cantLibros Hacer
		Mostrar "Libro ", x
		Mostrar "Título:"
		Leer titulos[x]
		Mostrar "Autor:"
		Leer autores[x]
		disponibles[x]=1
	FinPara
	limpiarp
	
	Mientras opc<>0 Hacer
		Mostrar "=== BIBLIOTECA ==="
		Mostrar "1. Buscar libro por autor"
		Mostrar "2. Prestar libro"
		Mostrar "3. Devolver libro"
		Mostrar "4. Aplicar sanción"
		Mostrar "5. Ver inventario"
		Mostrar "6. Estadísticas"
		Mostrar "0. Salir"
		Leer opc
		limpiarp
		
		Segun opc Hacer
			1: 
				Mostrar "Autor:"
				Leer buscar
				Para x=1 Hasta cantLibros Hacer
					Si autores[x]=buscar Entonces
						Mostrar x, "- ", titulos[x], " - ", autores[x]
						Si disponibles[x]=1 Entonces
							Mostrar "DISPONIBLE"
						SiNo
							Mostrar "PRESTADO"
						FinSi
					FinSi
				FinPara
				limpiarp
				
			2: 
				Para x=1 Hasta cantLibros Hacer
					Si disponibles[x]=1 Entonces
						Mostrar x, "- ", titulos[x]
					FinSi
				FinPara
				Mostrar "Número de libro:"
				Leer elegir
				Si disponibles[elegir]=1 Entonces
					Mostrar "Estudiante:"
					Leer nombreEst
					Mostrar "Días de préstamo:"
					Leer dias
					cantPrestamos=cantPrestamos+1
					estudiantes[cantPrestamos]=nombreEst
					diasPrestamo[cantPrestamos]=dias
					disponibles[elegir]=0
					Mostrar "Préstamo registrado"
				SiNo
					Mostrar "No disponible"
				FinSi
				limpiarp
				
			3: 
				Mostrar "Número de libro:"
				Leer elegir
				disponibles[elegir]=1
				Mostrar "Devolución registrada"
				limpiarp
				
			4: 
				Mostrar "Días de retraso:"
				Leer retraso
				sancion=retraso*10
				Mostrar "Sanción: $", sancion
				limpiarp
				
			5:
				Para x=1 Hasta cantLibros Hacer
					Mostrar x, "- ", titulos[x], " (", autores[x], ")"
					Si disponibles[x]=1 Entonces
						Mostrar "DISPONIBLE"
					SiNo
						Mostrar "PRESTADO"
					FinSi
				FinPara
				limpiarp
				
			6: 
				totalDisp=0
				Para x=1 Hasta cantLibros Hacer
					Si disponibles[x]=1 Entonces
						totalDisp=totalDisp+1
					FinSi
				FinPara
				Mostrar "Total libros: ", cantLibros
				Mostrar "Disponibles: ", totalDisp
				Mostrar "Prestados: ", cantLibros-totalDisp
				Mostrar "Total préstamos: ", cantPrestamos
				limpiarp
		FinSegun
	FinMientras
	
FinAlgoritmo

SubProceso limpiarp
	Mostrar "Presione tecla..."
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso