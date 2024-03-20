def bonitodeantiguedad(añoantiguedad, salariminimonacional):
    if añoantiguedad <= 0 or añoantiguedad > 30:
        return 0

    if añoantiguedad <= 2:
        return 0
    elif añoantiguedad <= 5:
        return 0.05 * 0.03 * salariminimonacional
    elif añoantiguedad <= 8:
        return 0.11 * 0.03 * salariminimonacional
    elif añoantiguedad <= 11:
        return 0.18 * 0.03 * salariminimonacional
    elif añoantiguedad <= 15:
        return 0.26 * 0.03 * salariminimonacional
    elif añoantiguedad <= 20:
        return 0.34 * 0.03 * salariminimonacional
    elif añoantiguedad <= 25:
        return 0.42 * 0.03 * salariminimonacional
    else:
        return 0.50 * 0.03 * salariminimonacional

nombre = ""
CI = 0
cargo = ""
haberbasico = 0
mesactual = ""
añosdeantiguedad = 0
tipoempresa = ""
domingostrabajados = 0
añoingreso = 0
añoactual = 0

salariminimonacional = 2362
bonoalimentacion = 60
bonotransporte = 157.5
valeconsumo = 88

while len(nombre) == 0:
    nombre = input("ingrese el nombre:")

while CI <= 0:
    CI = int(input("ingrese su CI:"))

while len(cargo) == 0:
    cargo = input("ingrese su cargo:")
    
while haberbasico <= 0:
    haberbasico = int(input("ingrese su haber basico:"))

while len(mesactual) == 0:
    mesactual = input("ingrese el mes actual:")
    
while añosdeantiguedad <= 0:
    añosdeantiguedad = int(input("ingrese los años de antiguedad:"))

while len(tipoempresa) == 0:
    tipoempresa = input("ingrese el tipo de empresa:")
    
while domingostrabajados <= 0:
    domingostrabajados = int(input("ingrese los domingos trabajados:"))

while añoingreso <= 0:
    añoingreso = int(input("ingrese su año de ingreso:"))

while añoactual <= 0:
    añoactual = int(input("ingrese el año actual:"))

salariodominical = (haberbasico / 30) * 2
if domingostrabajados > 0:
    salariodominical = salariodominical * domingostrabajados
else:
    salariodominical = 0
    
añoantiguedad = añoactual - añoingreso

totalingresos = haberbasico + bonoalimentacion + bonotransporte + valeconsumo + salariodominical + bonitodeantiguedad(añoantiguedad, salariminimonacional)
afp = totalingresos * 0.1271
totalegresos = afp
liquidopagable = totalingresos - totalegresos

print("reporte de la boleta de pago:")
print("nombre:", nombre)
print("CI:", CI)
print("cargo:", cargo)
print("haber Basico:", haberbasico)
print("mes Actual:", mesactual)
print("antiguedad:", añosdeantiguedad, "años")
print("tipo de Empresa:", tipoempresa)
print("domingos Trabajados:", domingostrabajados)
print("salario Dominical:", salariodominical)
print("bono de Alimentacion:", bonoalimentacion)
print("bono de Transporte:", bonotransporte)
print("vale de Consumo:", valeconsumo)
print("bono de antiguedad:", bonitodeantiguedad(añosdeantiguedad, salariminimonacional))
print("total de Ingresos:", totalingresos)
print("AFP:", afp)
print("total de Egresos:", totalegresos)
print("liquido Pagable:", liquidopagable)