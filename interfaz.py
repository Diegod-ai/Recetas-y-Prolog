from pyswip import Prolog
prolog = Prolog()
# Cargar archivo Prolog
prolog.consult("cerebro.pl")

def menu():

    print("Aqui están todas las posibles consultas que puedes realizar\n"
          "1. Solo categoria\n"
          "2. Ingresar ingredientes\n"
          "3. Salir del programa")

    entrada = input("digite el numero de la opcion que desea tomar: ")

    match entrada:
        case "1":
            print_categorias()
        case "2":
            print_ingredientes()
        case "3":
            print ("gracias por utilizar nuestro sistema") 

def print_categorias():

    categoria = input("recuerde que actualmente solo existen 3 categorias (desayuno, almuerzo, cena): ").lower()

    query1 = f"receta(R, {categoria})"

    resultados = list(prolog.query(query1))

    if resultados:
        print(f"los posibles recetas de {categoria} son")
        for r in resultados:
             print(r["R"])
    else:
        print("No hay recetas en esa categoría")

    receta = input("ahora diga el nombre de la receta de la cual le quiere conocer los ingredientes: ").lower()
    
    query2  = f"receta({receta}, {categoria}), ingrediente({receta}, I)"

    ingredientes = list(prolog.query(query2))

    if ingredientes:
        print(f"los ingredientes para {receta} son:")
        for r in ingredientes:
            print(r["I"])
    else:
        print("Esa receta no existe o no es de esta categoria")
    

menu()
