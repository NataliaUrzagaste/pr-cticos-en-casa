import math

def Calcular(operacion, num1, num2):
    if operacion == 1:
        resu = num1 + num2
    elif operacion == 2:
        resu = num1 - num2
    elif operacion == 3:
        resu = num1 * num2
    elif operacion == 4:
        if num2 == 0:
            print("Error: Division por cero")
        else:
            resu = num1 / num2
    elif operacion == 5:
        resu = num1 ** num2
    elif operacion == 6:
        resu = math.sqrt(num1)
    return resu

print("¿Qué requiere?")
print("1-Calcular superficie")
print("2-Operaciones básicas")
print("3-Cálculos trigonométricos")
calc = int(input())

if calc == 1:
    print("Elija la figura")
    print("1-Cuadrado")
    print("2-Rectángulo")
    print("3-Triángulo")
    print("4-Círculo")
    fig = int(input())
    if fig == 1:
        print("Dame su lado")
        num1 = float(input())
        resu = num1 * num1
    elif fig == 2:
        print("Dame su base")
        num1 = float(input())
        print("Dame su altura")
        num2 = float(input())
        resu = num1 * num2
    elif fig == 3:
        print("Dame la base")
        num1 = float(input())
        print("Dame la altura")
        num2 = float(input())
        resu = num1 * num2 / 2
    elif fig == 4:
        print("Dame el radio")
        num1 = float(input())
        resu = 3.1415926535 * num1 * num1
    print("El área es", resu)
if calc == 2:
   print("CALCULADORA BASICA")
   print("-----------------")
   print("1. Suma")
   print("2. Resta")
   print("3. Multiplicación")
   print("4. División")
   print("5. Potenciación")
   print("6. Raíz cuadrada")
   print("Elige una opción: ")
   operacion = int(input())
   print("elige tu primer numero")
   num1 = int(input())
   print("elige tu segundo numero")
   num2 = int(input())
   print("el resultado es",Calcular(operacion, num1, num2))
if calc == 3:
    print("¿Qué tipo de operación necesita?")
print("1-Pitágoras")
print("2-Calcular un cateto")
print("3-Conversión")
oper = int(input())

if oper == 1:
    print("Dame tu primer cateto")
    num1 = float(input())
    print("Dame tu segundo cateto")
    num2 = float(input())
    resu = math.sqrt(num1 ** 2 + num2 ** 2)
    print("Tu hipotenusa es")
    print(resu)
elif oper == 2:
    print("Qué tipo de cateto es")
    print("1-Cateto opuesto")
    print("2-Cateto adyacente")
    cat = int(input())
    if cat == 1:
        print("Dame el valor de la hipotenusa")
        num1 = float(input())
        print("Dame el valor del ángulo")
        num2 = float(input())
        resu = math.sin(math.radians(num2)) * num1
        print("El valor del cateto es")
        print(resu)
    elif cat == 2:
        print("Dame el valor de la hipotenusa")
        num1 = float(input())
        print("Dame el valor del ángulo")
        num2 = float(input())
        resu = math.cos(math.radians(num2)) * num1
        print("El valor del cateto es")
        print(resu)
elif oper == 3:
    print("1-Grados a radianes")
    print("2-Radianes a grados")
    oper = int(input())
    if oper == 1:
        print("Dame tu ángulo")
        num1 = float(input())
        resu = (num1 * math.pi) / 180
        print("Tu resultado es")
        print(resu)
    elif oper == 2:
        print("Dame el valor en radianes")
        num1 = float(input())
        resu = (num1 * 180) /  math.pi
        print("Tu resultado es")
        print(resu)