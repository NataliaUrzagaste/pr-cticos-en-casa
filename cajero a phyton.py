def definir_variables():
    haytarjeta, pin, idioma, accion = 0, 0, 0, 0 
    retiro, saldo, extracto = 0, 0, 0 
    deposito, transferencia = 0.0, 0.0
    cuentadestino, montotransferencia = 0.0, 0.0

    print("---Mercantil Santa cruz---")
    print(" ")
    print(" ")
    print("Introduce tu tarjeta -->")
    print("1--Con tarjeta")
    print("2--Sin Tarjte")
    haytarjeta = int(input())
    saldo = randint(10, 10000)  
    pin = randint(1000, 9999)

    if haytarjeta == 1:
        print("Digita tu pin: ")
        print(pin)
        print("Selecciona un idioma")
        print("1--Español")
        print("2--English")
        # Menu
        idioma = int(input())
        
        if idioma == 1:
            print("--------INTERFAZ--------")
            print("1.Retirar dinero")
            print("2.Depositar dinero")
            print("3.Hacer una transferencia")
            print("4.Consultar Saldo")
            print("5.Salir")
            accion = int(input())
        if accion == 1:
            print("Digita la cantidad a retirar:")
    retiro = int(input())
    extracto = saldo - retiro  

    if extracto < 0:  
         print("Esta accion no se puede realizar ")
    else:
        if extracto > 0:
            print("Tu accion se esta ejecutando")
            print("|")
            print("|")
            print("v")
            print("Tu saldo actual es de: ", extracto, " Bs")

        elif accion == 2:
            print("Introduce la cantidad a depositar: ")
            deposito = float(input())
            saldo = saldo + deposito
            print("Depositaste: ", deposito, " Bs")
            print("Tu saldo actual es: ", saldo, " Bs")

        elif accion == 3:
            print("Introduce el numero de la cuenta de destino")
            cuentadestino = float(input())
            print("Digita el monto en Bs")
            montotransferencia = float(input())

        if montotransferencia > saldo:
              print("Fondos insuficientes")
        else:
           if montotransferencia < saldo:
              extracto = saldo - montotransferencia
              print("Ya se realizo la transferencia con exito")
              print("Tu saldo actual es de ", extracto, " Bs")

         elif accion == 4:
            print("Tu saldo actual es ", saldo, " Bs")
           elif accion == 5:
               print("Hasta luego")
             else:
                print("Accion no valida")
            
 if idioma == 2:
    print("--------INTERFACE--------")
    print("1.Withdraw money")
    print("2.Deposit money")
    print("3.Make a transfer")
    print("4.Check balance")
    print("5.Exit")
    accion = int(input())

    if accion == 1:
        retiro = float(input("Enter the amount to withdraw: "))
        estracto = saldo - retiro  

        if estracto < 0:  
            print("This action cannot be performed ")
        else:
            if estracto > 0:  
                print("Your action is being processed")
                print("|")
                print("|")
                print("v")
                print("Your current balance is: ", estracto, " Bs")
            print("")
        print("")

    
    elif accion == 2:
        deposito = float(input("Enter the amount to deposit: "))
        saldo = saldo + deposito
        print("You have deposited: ", deposito, " Bs")
        print("Your current balance is: ", saldo, " Bs")
    elif accion == 3:
       
        cuentadestino = int(input("Enter the destination account number"))
        montotransferencia = float(input("Enter the amount in Bs"))
        
        if montotransferencia > saldo:
            print("Insufficient funds")
        else:
            if montotransferencia < saldo:
                estracto = saldo - montotransferencia
                print("Transfer successful")
                print("Your current balance is: ", estracto, " Bs")
    elif accion == 4:
       
        print("Your current balance is ", saldo, " Bs")
    elif accion == 5:           
        print("goodbye")