Algoritmo estadodelagua
	Definir temp Como Entero
	
	Escribir "Escriba la temperatura del agua: "
	Leer temp
	
	Si temp < 0 Entonces
		Escribir "El agua est� en estado S�LIDO"
	Sino
		Si temp < 100 Entonces
			Escribir "El agua est� en estado L�QUIDO"
		Sino
			Escribir "El agua est� en estado GASEOSO"
		Fin Si
	Fin Si
FinAlgoritmo
