Funcion horas <- galatina ( temperatura,tiempo )
	Segun tiempo Hacer
		1:	
			si temperatura > 4 y temperatura < 9 Entonces
				escribir " la gelatina estara hecha en 2 horas"
			FinSi
		2:
			si temperatura > 9 y temperatura < 15 Entonces
				Escribir "la gelatina estara hecha en tres horas"
			FinSi
		3:
			si temperatura < 4 Entonces
				Escribir "la gelatina se va a congelar"
			FinSi
		4:
			si temperatura > 15 y temperatura < 20 Entonces
				Escribir "la gelatina tardara mas de 3 horas en estar lista"
			FinSi
		5:
			si temperatura > 20 Entonces
				Escribir "la gelatina no podra estars lista :("
			FinSi
	FinSegun
Fin Funcion

Algoritmo PrepararGelatina
	Definir horas, tiempo, temperatura Como Entero
	Escribir "paso 1: comprar la gelatina"
	Escribir "paso 2: poner a hervir el agua"
	Escribir "paso 3: elige un recipiente y pon el agua hervisa con el polvo de gelatina"
	Escribir "paso 4: revuelve y coloca la mescla en diferentes recipientes"
	Escribir "paso 5: meter los refrigeradores en el refrigerador"
	Escribir "coloca  la temperatura de tu refrigerador para calcular en cuesto tiempo estara hecho"
	Leer temperatura
	Escribir "escriba 1 si la temperatura esta entre; 4 y 9"
	Escribir "escriba 2 si la temperatura esta entre; 9 y 15"
	Escribir "escriba 3 si la temperatura es menor de 4"
	Escribir "escriba 4 si la temperatura esta entre; 15 y 20"
	Escribir "escriba 5 si la temperatura es mayor de 20"
	Leer tiempo
	Escribir "entonces...", galatina( temperatura,tiempo )
FinAlgoritmo