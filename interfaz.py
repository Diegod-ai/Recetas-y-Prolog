from pyswip import Prolog
prolog = Prolog()
# Cargar archivo Prolog
prolog.consult("cerebro.pl")

# Utilidades

def consultar(query):
    return list(prolog.query(query))
    

def validar_categoria(categoria):
    query_validacion = f"receta(_, {categoria})"
    return bool(consultar(query_validacion))
   

def pedir_indice(maximo):
    while True:
        indice = input("> ")
        if indice.isdigit():
            num = int(indice)
            if 1 <= num <= maximo:
                return num - 1
        print("Número no válido, por favor intente de nuevo")

def pausar():
    input("\nPresione Enter para continuar...")


def print_categorias():

    categoria = input("Recuerde que actualmente solo existen 3 categorias (desayuno, almuerzo, cena): ").lower().strip()

    # Validar categoría
    if not validar_categoria(categoria):
        print("Categoría inválida")
        return

    query1 = f"receta(R, {categoria})"
    resultados = consultar(query1)

    if resultados:
        print(f"\nRecetas disponibles en {categoria}:")
        for i, r in enumerate(resultados, start=1):
            print(f"{i}. {r['R']}")
    else:
        print("No hay recetas en esa categoría")
        return

    print("\nSeleccione una receta escribiendo su número:")

    indice = pedir_indice(len(resultados))
    receta = resultados[indice]['R']

    query2  = f"receta({receta}, {categoria}), ingrediente({receta}, I)"
    ingredientes = consultar(query2)

    if ingredientes:
        print(f"\nIngredientes de {receta}:")
        for r in ingredientes:
            print(f"- {r['I']}")
    else:
        print("No se encontraron ingredientes para esa receta")

    pausar()
    
def print_ingredientes():

    categoria = input(
        "Ingrese una categoria (desayuno, almuerzo, cena): "
    ).lower().strip()

    # Validar categoría
    if not validar_categoria(categoria):
        print("Categoría inválida")
        return

    ingredientes_usuario = []

    print("\nEmpiece a ingresar ingredientes uno por uno.")
    print("Escriba 'salir' para terminar.\n")

    while True:

        ingrediente = input("> ").lower().strip()

        if ingrediente == "salir":
            break

        ingredientes_usuario.append(ingrediente)

        # Construir parte dinámica de la query
        filtros = ", ".join(
            [f"ingrediente(R, {ing})" for ing in ingredientes_usuario]
        )

        query = f"receta(R, {categoria}), {filtros}"

        resultados = consultar(query)

        print("\nRecetas posibles con los ingredientes actuales:")

        if resultados:
            # evitar duplicados
            recetas_unicas = list({r["R"] for r in resultados})
            for r in recetas_unicas:
                print(f"- {r}")
        else:
            print("No hay recetas con esos ingredientes")

    pausar()

# Menu de opciones para el usuario

def menu():

    activo = True   

    while activo:

        print("\nAqui están todas las posibles consultas que puedes realizar\n"
            "1. Solo categoria\n"
            "2. Ingresar ingredientes\n"
            "3. Salir del programa")

        entrada = input("Digite el numero de la opcion que desea tomar: ")

        while entrada not in ["1", "2", "3"]:
            print("Opcion no valida, por favor intente de nuevo")
            entrada = input("Digite el numero de la opcion que desea tomar: ")

        match entrada:
            case "1":
                 print_categorias()
            case "2":
                print_ingredientes()
            case "3":
                print("gracias por utilizar nuestro sistema") 
                activo = False
menu()