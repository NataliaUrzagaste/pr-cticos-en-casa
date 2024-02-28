Algoritmo descuentocompra
	Definir compra Como Real
	Definir descuento Como Real
	Definir total Como Real
	
	Escribir "Escriba el valor de la compra: "
	Leer compra
	
	Si compra > 1000 Entonces
		descuento = compra * 0.20
		total = compra - descuento
	Sino
		total = compra
	Fin Si
	
	Escribir "El total a pagar es: ", total
FinAlgoritmo
