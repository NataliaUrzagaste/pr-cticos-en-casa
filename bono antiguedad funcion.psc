Funcion bonoantiguedad <- bonitodeantiguedad ( añoantiguedad,salariminimonacional )
	salarioMinimo=2362
	si añoantiguedad>0 y añoantiguedad <= 2 Entonces
		bonoantiguedad <- 0
	sino
		si añoantiguedad > 2 y añoantiguedad <=5  Entonces
			bonoantiguedad <- 0.05*0.03*salariminimonacional
		sino
			si añoantiguedad > 5 y añoantiguedad <= 8 Entonces
				bonoantiguedad <- 0.11*0.03*salariminimonacional
			SiNo
				si añoantiguedad > 8 y añoantiguedad <= 11 Entonces
					bonoantiguedad <- 0.18*0.03*salariminimonacional
				SiNo
					si añoantiguedad > 11 y añoantiguedad <= 15 Entonces
						bonoantiguedad <- 0.26*0.03*salariminimonacional
					SiNo
						si añoantiguedad > 15 y añoantiguedad <= 20 Entonces
							bonoantiguedad <- 0.34*0.03*salariminimonacional
						SiNo
							si añoantiguedad > 20 y añoantiguedad <= 25 Entonces
								bonoantiguedad <- 0.42*0.03*salariminimonacional
							SiNo
								si añoantiguedad > 25 Entonces
									bonoantiguedad <- 0.50*0.03*salariminimonacional
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			finsi
		FinSi
	FinSi 
Fin Funcion

Proceso sin_titulo
	Definir nombre, cargo, mesactual, tipoempresa Como Caracter
	Definir CI, haberbasico, añosdeantiguedad, añoingreso, añoactual, añoantiguedad Como Entero
    Definir domingostrabajados,salariminimonacional, salariodominical, bonoalimentacion, bonotransporte, valeconsumo, bonodeantiguedad Como Real
    Definir totalingresos, AFP, totalegresos, liquidopagable Como Real
    Escribir "ingrese el nombre:"
    Leer nombre
    Escribir "ingrese su CI:"
    Leer CI
    Escribir "ingrese su cargo:"
    Leer cargo
    Escribir "ingrese su haber basico:"
    Leer haberbasico
    Escribir "ingrese el mes actual:"
    Leer mesactual
    Escribir "ingrese los años de antiguedad:"
    Leer añosdeantiguedad
    Escribir "ingrese el tipo de empresa"
    Leer tipoempresa
    Escribir "ingrese la cantidad de domingos que trabajo:"
    Leer domingosdetrabajados
	Escribir "cual fue su año de ingreso"
	Leer añoingreso
	Escribir "ingrese el año actual"
	Leer añoactual
	salariminimonacional<- 2362
    bonoalimentacion <- 60
    bonotransporte <- 157.5
    valeconsumo <- 88
	
    salariodominical <- (haberbasico/30)*2
    Si domingostrabajados > 0 Entonces
        salariodominical <- salariodominical*domingostrabajados
    Sino
        salariodominical <- 0
    Fin Si
    totalingresos <- haberbasico + bonoalimentacion + bonotransporte + valeconsumo + salariodominical + bonitodeantiguedad( añoantiguedad,salariminimonacional )
    afp <- totalingresos*0.1271
    totalegresos <- AFP
    liquidopagable <- totalingresos - totalegresos
    Escribir "reporte de la boleta de pago:"
    Escribir "nombre:", nombre
    Escribir "CI:", CI
    Escribir "cargo:", cargo
    Escribir "haber Basico:", haberbasico
    Escribir "mes Actual:", mesactual
    Escribir "antiguedad:", antiguedad, "años"
    Escribir "tipo de Empresa:", tipoempresa
    Escribir "domingos Trabajados:", domingostrabajados
    Escribir "salario Dominical:", salariodominical
    Escribir "bono de Alimentacion:", bonoalimentacion
    Escribir "bono de Transporte:", bonotransporte
    Escribir "vale de Consumo:", valeconsumo
	Escribir "bono de antiguedad:", bonitodeantiguedad( añoantiguedad,salariminimonacional )
    Escribir "total de Ingresos:", totalingresos
    Escribir "AFP:", AFP
    Escribir "total de Egresos:", totalegresos
    Escribir "liquido Pagable:", liquidopagable
FinProceso