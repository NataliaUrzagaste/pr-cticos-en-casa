Funcion resultado <- Calcular (operacion, num1, num2)
	Segun operacion Hacer
		1:
			resultado =num1 + num2
		2:
			resultado =num1 - num2
		3:
			resultado =num1 * num2
		4:
			Si num2 == 0 Entonces
				escribir "Error: División por cero"
			Sino
				resultado= num1 / num2
			FinSi
		5:
			resultado=num1^num2
		6:
			resultado=rc(num1)
	FinSegun
FinFuncion
Algoritmo CalculadorV3
		Definir num1, num2, resu Como Real
		Definir oper, calc, fig, cat Como Entero
		Escribir "¿Que requiere?"
		Escribir "1-Calcular superficie"
		Escribir "2-Operaciones basica"
		Escribir "3-Calculos trigronometricos"
		Leer calc
		
		Si calc=1
			Escribir "Elije la la figura"
			Escribir "1-Cuadrado"
			Escribir "2-Rectangulo"
			Escribir "3-Triangulo"
			Escribir "4-Circulo"
			Leer fig
			Si fig=1
				Escribir "Dame su lado"
				Leer num1
				resu=num1*num1
			SiNo
				Si fig=2
					Escribir "Dame su base"
					Leer num1
					Escribir "Dame su altura"
					Leer num2
					resu=num1*num2
					
				Sino
					Si fig=3
						Escribir "Dame la base"
						Leer num1
						Escribir "Dame la altura"
						Leer num2
						resu=num1*num2/2
					Sino
						Si fig=4
							Escribir "Dame el radio"
							Leer num1
							resu=3.1415926535*num1*num1
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "El area es"
			Escribir resu
		FinSi
		
		si calc=2
				Escribir "CALCULADORA BASICA"
				Escribir "-----------------"
				Escribir "1. Suma"
				Escribir "2. Resta"
				Escribir "3. Multiplicacion"
				Escribir "4. Division"
				Escribir "5. potenciacion"
				Escribir "6. raiz cuadrada"
				Escribir "Elige una opción: "
				Leer operacion
				Escribir "Ingresa el primer número: "
				Leer num1
				Escribir "Ingresa el segundo número: "
				Leer num2
				Escribir "El resultado es: ", Calcular(operacion, num1, num2)
		FinSi
			
		Si calc=3
			Escribir "¿Que tipo de operacion necesita?"
			Escribir "1-Pitagoras"
			Escribir "2-Calcula un cateto"
			Escribir "3-Conversion"
			Leer oper
			Si oper=1
				Escribir "Dame tu primer cateto"
				Leer num1
				Escribir "Dame tu segundo cateto"
				Leer num2
				resu=rc((num1^2)+(num2^2))
				Escribir "Tu hipotenusa es"
				Escribir resu
			Sino 
				Si oper=2
					Escribir "Que tipo de cateto es"
					Escribir "1-Cateto opuesto"
					Escribir "2-Cateto adyasente"
					Leer cat
					Si cat= 1
						Escribir "Dame el valor de la hipotenusa"
						Leer num1
						Escribir "Dame el valor del angulo"
						Leer num2
						resu=SEN(num2)*num1
						Escribir "El valor del cateto es"
						Escribir resu
					SiNo
						Si cat=2
							Escribir "Dame el valor de la hipotenusa"
							Leer num1
							Escribir "Dame el valor del angulo"
							Leer num2
							resu=COS(num2)*num1
							Escribir "El valor del cateto es"
							Escribir resu
						FinSi
					FinSi
				SiNo
					Si oper=3
						Escribir "1-Grados a radianes"
						Escribir "2-Radianes a grados"
						Leer oper
						Si oper=1
							Escribir "Dame tu angulo"
							Leer num1
							resu=(num1*3.1425926535)/180
							Escribir "Tu resultado es"
							Escribir resu
						SiNo
							Si oper=2
								Escribir "Dame el valor de radianes"
								Leer num1
								resu=(num1*180)/3.1415926535
								Escribir "Tu resultado es"
								Escribir resu
							FinSi
						FinSi
						
					FinSi
				FinSi
				
			FinSi
			
		FinSi
		
FinAlgoritmo
