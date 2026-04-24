from pyswip import Prolog

prolog = Prolog()

# Utilidades generales para evitar romper el sistema con entradas no válidas

def consultar(query):
    try:
        return list(prolog.query(query))
    except Exception as e:
        print("Error en la consulta:", e)
        return []

def normalizar(texto):
    return texto.lower().strip().replace(" ", "_")

def validar_categoria(categoria):
    query = f"receta(_, {categoria})"
    return bool(consultar(query))

def ingrediente_existe(ingrediente):
    query = f"ingrediente(_, {ingrediente})"
    return bool(consultar(query))

def pausar():
    input("\nPresione Enter para continuar...")

# Utilidades para cada consulta 

def obtener_recetas_por_categoria(categoria):
    query = f"receta(R, {categoria})"
    return consultar(query)

def obtener_ingredientes_de_receta(receta, categoria):
    query = f"receta({receta}, {categoria}), ingrediente({receta}, I)"
    return consultar(query)

def filtrar_recetas_por_ingredientes(categoria, ingredientes):
    if not ingredientes:
        return []

    filtros = ", ".join([f"ingrediente(R, {ing})" for ing in ingredientes])
    query = f"receta(R, {categoria}), {filtros}"
    return consultar(query)

# Utilidad para facilitar el uso de índices en la interfaz

def pedir_indice(maximo):
    while True:
        indice = input("> ").strip()

        if indice.lower() == "salir":
            return None

        if indice.isdigit():
            num = int(indice)
            if 1 <= num <= maximo:
                return num - 1

        print("Número no válido, escriba un número o 'salir'")

# consulta por categoria

def print_categorias():

    categoria = normalizar(input(
        "Recuerde que existen: desayuno, almuerzo, cena: "
    ))

    if not validar_categoria(categoria):
        print("Categoría inválida")
        return

    resultados = obtener_recetas_por_categoria(categoria)

    if not resultados:
        print("No hay recetas en esa categoría")
        return

    print(f"\nRecetas disponibles en {categoria}:")
    for i, r in enumerate(resultados, start=1):
        print(f"{i}. {r['R']}")

    print("\nSeleccione una receta (o escriba 'salir'):")

    indice = pedir_indice(len(resultados))

    if indice is None:
        return

    receta = resultados[indice]['R']

    ingredientes = obtener_ingredientes_de_receta(receta, categoria)

    if ingredientes:
        print(f"\nIngredientes de {receta}:")
        for r in ingredientes:
            print(f"- {r['I']}")
    else:
        print("No se encontraron ingredientes")

    pausar()

# Consulta por ingredientes

def print_ingredientes():

    categoria = normalizar(input(
        "Ingrese una categoria (desayuno, almuerzo, cena): "
    ))

    if not validar_categoria(categoria):
        print("Categoría inválida")
        return

    ingredientes_usuario = []

    print("\nIngrese ingredientes uno por uno.")
    print("Comandos:")
    print("- salir  -> terminar")
    print("- reset  -> borrar todo")
    print("- undo   -> eliminar último\n")

    while True:

        entrada = normalizar(input("> "))

        if not entrada:
            print("Entrada vacía\n")
            continue

        if entrada == "salir":
            break

        elif entrada == "reset":
            ingredientes_usuario.clear()
            print("Lista reiniciada\n")
            continue

        elif entrada == "undo":
            if ingredientes_usuario:
                eliminado = ingredientes_usuario.pop()
                print(f"Se eliminó: {eliminado}\n")
            else:
                print("No hay ingredientes\n")
            continue

        # Validar existencia en Prolog
        if not ingrediente_existe(entrada):
            print("Ingrediente no reconocido\n")
            continue

        # Evitar duplicados
        if entrada in ingredientes_usuario:
            print("Ingrediente duplicado\n")
            continue

        ingredientes_usuario.append(entrada)

        resultados = filtrar_recetas_por_ingredientes(
            categoria, ingredientes_usuario
        )

        print("\nRecetas posibles:")

        if resultados:
            recetas_unicas = []
            for r in resultados:
                if r["R"] not in recetas_unicas:
                    recetas_unicas.append(r["R"])

            for r in recetas_unicas:
                print(f"- {r}")
        else:
            print("No hay coincidencias")

        print("\nIngredientes actuales:")
        for ing in ingredientes_usuario:
            print(f"- {ing}")
        print()

    pausar()

# Menu

def menu():

    activo = True

    while activo:

        print("\nOpciones:")
        print("1. Ver recetas por categoria")
        print("2. Buscar por ingredientes")
        print("3. Salir")

        entrada = input("> ").strip()

        if entrada == "1":
            print_categorias()

        elif entrada == "2":
            print_ingredientes()

        elif entrada == "3":
            print("Gracias por usar el sistema")
            activo = False

        else:
            print("Opción inválida")

# ============================

menu()