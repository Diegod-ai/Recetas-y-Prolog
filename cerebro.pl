ingrediente_faltante(Receta, Ingrediente) :-
    ingrediente(Receta, Ingrediente),
    \+ disponible(Ingrediente).

receta_posible(Receta, Categoria) :-
    receta(Receta, Categoria),
    \+ ingrediente_faltante(Receta, _).

% RECETAS

receta(pancakes, desayuno).
receta(omelette, desayuno).
receta(pasta, almuerzo).
receta(ensalada, almuerzo).
receta(sopa, cena).
receta(pizza, cena).

ingrediente(pancakes, harina).
ingrediente(pancakes, leche).
ingrediente(pancakes, huevo).
          
ingrediente(omelette, huevo).
ingrediente(omelette, queso).

ingrediente(pasta, pasta).
ingrediente(pasta, salsa).
ingrediente(pasta, sal).

ingrediente(ensalada, lechuga).
ingrediente(ensalada, tomate).
ingrediente(ensalada, aceite).

ingrediente(pizza, masa).
ingrediente(pizza, queso).
ingrediente(pizza, salsa).

ingrediente(sopa, agua).
ingrediente(sopa, verduras).
ingrediente(sopa, sal).

% INGREDIENTES DISPONIBLES
disponible(harina).
disponible(leche).
disponible(huevo).
disponible(queso).
disponible(pasta).
disponible(salsa).
disponible(sal).
disponible(lechuga).
disponible(tomate).
disponible(aceite).
disponible(masa).
disponible(agua).
disponible(verduras).