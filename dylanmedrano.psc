Algoritmo Dylanmedrano
	opc=1
	cant=0
	definir nombre Como Caracter
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
	Mostrar "ingrese el numero de clientes:"
	leer cant
	para x=1 hasta cant
		Mostrar "nombre:"
		Leer cliente[x]
		Mostrar "factura:"
		Leer factura[x]
	FinPara
	limpiarp
	Mientras opc<>0 Hacer
		Mostrar "menu de opciones"
		Mostrar "=================="
		Mostrar "1 Agregare nueva venta"
		Mostrar "2 Recaudacin total de facturas"
		mostrar "3 modificar importe de las facturas"
		Mostrar "4 mostrar listado completo"
		Mostrar "5 facturas de un cliente"
		Mostrar "6 facturas superiores al promedio"
		Mostrar "7 eliminar venta"
		Leer opc
		limpiarp
		Segun opc Hacer
			1:
				cant=cant+1
				Mostrar "nombre:"
				Leer cliente[x]
				Mostrar "factura:"
				Leer factura[x]
				limpiarp
			2: 
				para x=1 Hasta cant
					recaudacion=factura[x]+recaudacion
				FinPara
				Mostrar "La recaudacion total es de: ", recaudacion
			3: 
				Para x=1 Hasta cant
					Mostrar x,"- " , cliente[x]
					Mostrar "factura ", factura[x]
				FinPara
				Mostrar "ingrese numero de cliente para modificar factura"
				Leer modificar
				Mostrar "Modifique: "
				Leer factura[modificar]
				limpiarp
			4:
				Para x=1 Hasta cant
					Mostrar x,"- " , cliente[x]
					Mostrar "factura ", factura[x]
				FinPara
				limpiarp
			5:
				Mostrar "ingrese numero de cliente:"
				Leer elegir
				Mostrar "Nombre: ", cliente[elegir]
				Mostrar "Factura: ", factura[elegir]
				limpiarp
			6:
				para x=1 Hasta cant
					recaudacion2=factura[X]+recaudacion2
				FinPara
				promedio=recaudacion2/cant
				Para x=1 Hasta cant Hacer
					si factura[x] > promedio Entonces
						contador=contador+1
						superapromedio[contador]=cliente[x]
					FinSi
				FinPara
				Mostrar "superapromedio: "
				Para x=1 Hasta contador Hacer
					Mostrar x, "- " , cliente[x]
					Mostrar "factura ", factura[x]
				FinPara
				limpiarp
			7:
				Para x=1 Hasta cant
					Mostrar x,"- " , cliente[x]
					Mostrar "factura ", factura[x]
				FinPara
				Mostrar "ingrese numero de cliente a eliminar"
				leer elegir
				Para x=elegir Hasta cant Hacer
					cliente[x]=cliente[x+1]
					factura[x]=factura[x+1]
					superapromedio[x]=superapromedio[x+1]
				FinPara
				cant=cant-1
				limpiarp
		FinSegun
	FinMientras
	
FinAlgoritmo

SubProceso limpiarp
	Mostrar "presione una tecla"
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso




	
