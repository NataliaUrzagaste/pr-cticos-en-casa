Funcion bonoantiguedad <- bonitodeantiguedad ( a�oantiguedad,salariminimonacional )
	salarioMinimo=2362
	si a�oantiguedad>0 y a�oantiguedad <= 2 Entonces
		bonoantiguedad <- 0
	sino
		si a�oantiguedad > 2 y a�oantiguedad <=5  Entonces
			bonoantiguedad <- 0.05*0.03*salariminimonacional
		sino
			si a�oantiguedad > 5 y a�oantiguedad <= 8 Entonces
				bonoantiguedad <- 0.11*0.03*salariminimonacional
			SiNo
				si a�oantiguedad > 8 y a�oantiguedad <= 11 Entonces
					bonoantiguedad <- 0.18*0.03*salariminimonacional
				SiNo
					si a�oantiguedad > 11 y a�oantiguedad <= 15 Entonces
						bonoantiguedad <- 0.26*0.03*salariminimonacional
					SiNo
						si a�oantiguedad > 15 y a�oantiguedad <= 20 Entonces
							bonoantiguedad <- 0.34*0.03*salariminimonacional
						SiNo
							si a�oantiguedad > 20 y a�oantiguedad <= 25 Entonces
								bonoantiguedad <- 0.42*0.03*salariminimonacional
							SiNo
								si a�oantiguedad > 25 Entonces
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
	Definir CI, haberbasico, a�osdeantiguedad, a�oingreso, a�oactual, a�oantiguedad Como Entero
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
    Escribir "ingrese los a�os de antiguedad:"
    Leer a�osdeantiguedad
    Escribir "ingrese el tipo de empresa"
    Leer tipoempresa
    Escribir "ingrese la cantidad de domingos que trabajo:"
    Leer domingosdetrabajados
	Escribir "cual fue su a�o de ingreso"
	Leer a�oingreso
	Escribir "ingrese el a�o actual"
	Leer a�oactual
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
    totalingresos <- haberbasico + bonoalimentacion + bonotransporte + valeconsumo + salariodominical + bonitodeantiguedad( a�oantiguedad,salariminimonacional )
    afp <- totalingresos*0.1271
    totalegresos <- AFP
    liquidopagable <- totalingresos - totalegresos
    Escribir "reporte de la boleta de pago:"
    Escribir "nombre:", nombre
    Escribir "CI:", CI
    Escribir "cargo:", cargo
    Escribir "haber Basico:", haberbasico
    Escribir "mes Actual:", mesactual
    Escribir "antiguedad:", antiguedad, "a�os"
    Escribir "tipo de Empresa:", tipoempresa
    Escribir "domingos Trabajados:", domingostrabajados
    Escribir "salario Dominical:", salariodominical
    Escribir "bono de Alimentacion:", bonoalimentacion
    Escribir "bono de Transporte:", bonotransporte
    Escribir "vale de Consumo:", valeconsumo
	Escribir "bono de antiguedad:", bonitodeantiguedad( a�oantiguedad,salariminimonacional )
    Escribir "total de Ingresos:", totalingresos
    Escribir "AFP:", AFP
    Escribir "total de Egresos:", totalegresos
    Escribir "liquido Pagable:", liquidopagable
FinProceso