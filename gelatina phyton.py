def galatina(temperature, time):
    if time == 1:
        if 4 < temperature < 9:
            return "la gelatina estara hecha en 2 horas"
    elif time == 2:
        if 9 < temperature < 15:
            return "la gelatina estara hecha en tres horas"
    elif time == 3:
        if temperature < 4:
            return "la gelatina se va a congelar"
    elif time == 4:
        if 15 < temperature < 20:
            return "la gelatina tardara mas de 3 horas en estar lista"
    elif time == 5:
        if temperature > 20:
            return "la gelatina no podra estars lista :("

def PrepararGelatina():
    print("paso 1: comprar la gelatina")
    print("paso 2: poner a hervir el agua")
    print("paso 3: elige un recipiente y pon el agua hervisa con el polvo de gelatina")
    print("paso 4: revuelve y coloca la mescla en diferentes recipientes")
    print("paso 5: meter los refrigeradores en el refrigerador")
    print("coloca  la temperatura de tu refrigerador para calcular en cuesto tiempo estara hecho")
    temperature = int(input())
    print("escriba 1 si la temperatura esta entre; 4 y 9")
    print("escriba 2 si la temperatura esta entre; 9 y 15")
    print("escriba 3 si la temperatura es menor de 4")
    print("escriba 4 si la temperatura esta entre; 15 y 20")
    print("escriba 5 si la temperatura es mayor de 20")
    time = int(input())
    print("entonces...", galatina(temperature, time))

PrepararGelatina()