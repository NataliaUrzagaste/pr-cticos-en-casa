Algoritmo porcentajedeventa
	Definir precio_coste Como Real
	Definir ganancia Como Real
	Definir PVP Como Real
	
	Escribir "Escriba el precio de coste del artículo: "
	Leer precio_coste
	
	Si precio_coste < 3 Entonces
		ganancia = precio_coste * 0.15
	Sino
		Si precio_coste <= 6 Entonces
			ganancia = 0.50
		Sino
			ganancia = precio_coste * 0.25
		Fin Si
	Fin Si
	
	PVP = precio_coste + ganancia
	
	Escribir "El precio de venta del artículo es: ", PVP
FinAlgoritmo
