Algoritmo estadodelagua
	Definir temp Como Entero
	
	Escribir "Escriba la temperatura del agua: "
	Leer temp
	
	Si temp < 0 Entonces
		Escribir "El agua está en estado SÓLIDO"
	Sino
		Si temp < 100 Entonces
			Escribir "El agua está en estado LÍQUIDO"
		Sino
			Escribir "El agua está en estado GASEOSO"
		Fin Si
	Fin Si
FinAlgoritmo
