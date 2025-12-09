Algoritmo menuventas
	opc=1
	cant=0
	Definir nombre Como Caracter
	Definir num Como Real
	Dimension cliente[100]
	Dimension factura[100]
	Dimension superapromedio[100]
	modificar=0
	elegir=0
	promedio=0
	resultado=0
	contador=0
	recaudacion=0
	recaudacion2=0
	
	Mostrar "Ingrese el numero de clientes:"
	Leer cant
	
	Para x=1 Hasta cant Hacer
		Mostrar "Cliente ", x
		Mostrar "Nombre:"
		Leer cliente[x]
		Mostrar "Factura:"
		Leer factura[x]
	FinPara
	
	limpiarp
	
	Mientras opc<>0 Hacer
		Mostrar "===== MENU DE OPCIONES ====="
		Mostrar "1. Agregar nueva venta"
		Mostrar "2. Recaudacion total de facturas"
		Mostrar "3. Modificar importe de las facturas"
		Mostrar "4. Mostrar listado completo"
		Mostrar "5. Facturas de un cliente"
		Mostrar "6. Facturas superiores al promedio"
		Mostrar "7. Eliminar venta"
		Mostrar "0. Salir"
		Mostrar "============================"
		Mostrar "Seleccione una opcion:"
		Leer opc
		limpiarp
		
		Segun opc Hacer
			1:  
				cant=cant+1
				Mostrar "=== AGREGAR NUEVA VENTA ==="
				Mostrar "Nombre del cliente:"
				Leer cliente[cant]
				Mostrar "Monto de factura:"
				Leer factura[cant]
				Mostrar "Venta agregada exitosamente!"
				limpiarp
				
			2: 
				recaudacion=0
				Para x=1 Hasta cant Hacer
					recaudacion=recaudacion+factura[x]
				FinPara
				Mostrar "=== RECAUDACION TOTAL ==="
				Mostrar "La recaudacion total es de: $", recaudacion
				limpiarp
				
			3:  
				Mostrar "=== MODIFICAR FACTURA ==="
				Para x=1 Hasta cant Hacer
					Mostrar x, "- ", cliente[x], " - Factura: $", factura[x]
				FinPara
				Mostrar ""
				Mostrar "Ingrese numero de cliente para modificar factura:"
				Leer modificar
				
				Si modificar>=1 Y modificar<=cant Entonces
					Mostrar "Cliente: ", cliente[modificar]
					Mostrar "Factura actual: $", factura[modificar]
					Mostrar "Ingrese nuevo monto:"
					Leer factura[modificar]
					Mostrar "Factura modificada exitosamente!"
				SiNo
					Mostrar "Numero de cliente invalido!"
				FinSi
				limpiarp
				
			4: 
				Mostrar "=== LISTADO COMPLETO ==="
				Si cant=0 Entonces
					Mostrar "No hay clientes registrados"
				SiNo
					Para x=1 Hasta cant Hacer
						Mostrar x, "- ", cliente[x], " - Factura: $", factura[x]
					FinPara
				FinSi
				limpiarp
				
			5:  
				Mostrar "=== CONSULTAR CLIENTE ==="
				Para x=1 Hasta cant Hacer
					Mostrar x, "- ", cliente[x]
				FinPara
				Mostrar ""
				Mostrar "Ingrese numero de cliente:"
				Leer elegir
				
				Si elegir>=1 Y elegir<=cant Entonces
					Mostrar "Nombre: ", cliente[elegir]
					Mostrar "Factura: $", factura[elegir]
				SiNo
					Mostrar "Numero de cliente invalido!"
				FinSi
				limpiarp
				
			6: 
				Mostrar "=== FACTURAS SOBRE PROMEDIO ==="
				
				Si cant=0 Entonces
					Mostrar "No hay clientes registrados"
				SiNo
					recaudacion2=0
					Para x=1 Hasta cant Hacer
						recaudacion2=recaudacion2+factura[x]
					FinPara
					promedio=recaudacion2/cant
					
					contador=0
					Para x=1 Hasta cant Hacer
						Si factura[x] > promedio Entonces
							contador=contador+1
							superapromedio[contador]=x  
						FinSi
					FinPara
					Mostrar "Promedio de facturas: $", promedio
					Mostrar ""
					Si contador=0 Entonces
						Mostrar "No hay facturas superiores al promedio"
					SiNo
						Mostrar "Clientes con facturas superiores al promedio:"
						Para x=1 Hasta contador Hacer
							Mostrar x, "- ", cliente[superapromedio[x]], " - Factura: $", factura[superapromedio[x]]
						FinPara
					FinSi
				FinSi
				limpiarp
				
			7:  
				Mostrar "=== ELIMINAR VENTA ==="
				Si cant=0 Entonces
					Mostrar "No hay clientes registrados"
				SiNo
					Para x=1 Hasta cant Hacer
						Mostrar x, "- ", cliente[x], " - Factura: $", factura[x]
					FinPara
					Mostrar ""
					Mostrar "Ingrese numero de cliente a eliminar:"
					Leer elegir
					
					Si elegir>=1 Y elegir<=cant Entonces
						Para x=elegir Hasta cant-1 Hacer
							cliente[x]=cliente[x+1]
							factura[x]=factura[x+1]
						FinPara
						cant=cant-1
						Mostrar "Cliente eliminado "
					SiNo
						Mostrar "Numero de cliente no invalido"
					FinSi
				FinSi
				limpiarp
				
			0:  
				Mostrar "Saliendo..."
				limpiarp
		FinSegun
	FinMientras
	
FinAlgoritmo

SubProceso limpiarp
	Mostrar ""
	Mostrar "Presione una tecla para continuar..."
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso


	



