ingrediente_faltante(Receta, Ingrediente) :-
    ingrediente(Receta, Ingrediente),
    \+ disponible(Ingrediente).

receta_posible(Receta, Categoria) :-
    receta(Receta, Categoria),
    \+ ingrediente_faltante(Receta, _).

% ============================================================
%  RECETAS
% ============================================================
 
% --- Desayuno --- 
receta(pancakes,         desayuno).
receta(omelette,         desayuno).
receta(arepas,           desayuno).
receta(avena,            desayuno).
receta(huevos_revueltos, desayuno).
receta(tostadas,         desayuno).
 
% --- Almuerzo --- 
receta(pasta,            almuerzo).
receta(ensalada,         almuerzo).
receta(arroz_con_pollo,  almuerzo).
receta(sancocho,         almuerzo).
receta(lentejas,         almuerzo).
 
% --- Cena ---     
receta(sopa,             cena).
receta(pizza,            cena).
receta(caldo_de_res,     cena).
receta(arroz_con_verduras, cena).
receta(quesadillas,      cena).
 
% ============================================================
%  INGREDIENTES POR RECETA
% ============================================================
 
% --- Pancakes ---
ingrediente(pancakes, harina).
ingrediente(pancakes, leche).
ingrediente(pancakes, huevo).
ingrediente(pancakes, azucar).
 
% --- Omelette ---
ingrediente(omelette, huevo).
ingrediente(omelette, queso).
ingrediente(omelette, sal).
 
% --- Arepas ---
ingrediente(arepas, harina_de_maiz).
ingrediente(arepas, agua).
ingrediente(arepas, sal).
 
% --- Avena ---
ingrediente(avena, avena).
ingrediente(avena, leche).
ingrediente(avena, azucar).
 
% --- Huevos revueltos ---
ingrediente(huevos_revueltos, huevo).
ingrediente(huevos_revueltos, mantequilla).
ingrediente(huevos_revueltos, sal).
 
% --- Tostadas ---
ingrediente(tostadas, pan).
ingrediente(tostadas, mantequilla).
 
% --- Pasta ---
ingrediente(pasta, pasta).
ingrediente(pasta, salsa).
ingrediente(pasta, sal).
 
% --- Ensalada ---
ingrediente(ensalada, lechuga).
ingrediente(ensalada, tomate).
ingrediente(ensalada, aceite).
 
% --- Arroz con pollo ---
ingrediente(arroz_con_pollo, arroz).
ingrediente(arroz_con_pollo, pollo).
ingrediente(arroz_con_pollo, sal).
ingrediente(arroz_con_pollo, aceite).
 
% --- Sancocho ---
ingrediente(sancocho, pollo).
ingrediente(sancocho, papa).
ingrediente(sancocho, yuca).
ingrediente(sancocho, sal).
ingrediente(sancocho, agua).
 
% --- Lentejas ---
ingrediente(lentejas, lentejas).
ingrediente(lentejas, tomate).
ingrediente(lentejas, cebolla).
ingrediente(lentejas, sal).
ingrediente(lentejas, aceite).
 
% --- Pizza ---
ingrediente(pizza, masa).
ingrediente(pizza, queso).
ingrediente(pizza, salsa).
 
% --- Sopa ---
ingrediente(sopa, agua).
ingrediente(sopa, verduras).
ingrediente(sopa, sal).
 
% --- Caldo de res ---
ingrediente(caldo_de_res, carne).
ingrediente(caldo_de_res, papa).
ingrediente(caldo_de_res, agua).
ingrediente(caldo_de_res, sal).
 
% --- Arroz con verduras ---
ingrediente(arroz_con_verduras, arroz).
ingrediente(arroz_con_verduras, verduras).
ingrediente(arroz_con_verduras, aceite).
ingrediente(arroz_con_verduras, sal).
 
% --- Quesadillas ---
ingrediente(quesadillas, tortilla).
ingrediente(quesadillas, queso).
ingrediente(quesadillas, salsa).
 
% ============================================================
%  INGREDIENTES DISPONIBLES  (estado inicial por defecto)
% ============================================================
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
disponible(azucar).
disponible(mantequilla).
disponible(pan).