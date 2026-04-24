ingrediente_faltante(Receta, Ingrediente) :-
    ingrediente(Receta, Ingrediente),
    \+ disponible(Ingrediente).

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
receta(smoothie,         desayuno).
receta(cereal,           desayuno).
receta(sandwich_desayuno, desayuno).
receta(fruta_con_yogur,  desayuno).
receta(cafe_con_leche,   desayuno).

 
% --- Almuerzo --- 
receta(pasta,            almuerzo).
receta(ensalada,         almuerzo).
receta(arroz_con_pollo,  almuerzo).
receta(sancocho,         almuerzo).
receta(lentejas,         almuerzo).
receta(hamburguesa,      almuerzo).
receta(perro_caliente,   almuerzo).
receta(tacos,            almuerzo).
receta(pollo_frito,      almuerzo).
receta(pure_de_papa,     almuerzo).

 
% --- Cena ---     
receta(sopa,             cena).
receta(pizza,            cena).
receta(caldo_de_res,     cena).
receta(arroz_con_verduras, cena).
receta(quesadillas,      cena).
receta(burrito,          cena).
receta(sandwich,         cena).
receta(crema_de_verduras, cena).
receta(hotcakes,         cena).
receta(ensalada_de_pollo, cena).
 
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

% --- Smoothie ---

ingrediente(smoothie, fruta).
ingrediente(smoothie, leche).
ingrediente(smoothie, azucar).

% --- Cereal ---
ingrediente(cereal, cereal).
ingrediente(cereal, leche).

% --- Sandwich de desayuno ---
ingrediente(sandwich_desayuno, pan).
ingrediente(sandwich_desayuno, huevo).
ingrediente(sandwich_desayuno, queso).

% --- Fruta con yogur ---

ingrediente(fruta_con_yogur, fruta).
ingrediente(fruta_con_yogur, yogur).

% --- Café con leche ---
ingrediente(cafe_con_leche, cafe).
ingrediente(cafe_con_leche, leche).
ingrediente(cafe_con_leche, azucar).
 
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

% --- Hamburguesa ---
ingrediente(hamburguesa, pan).
ingrediente(hamburguesa, carne).
ingrediente(hamburguesa, lechuga).
ingrediente(hamburguesa, tomate).

% --- Perro caliente ---
ingrediente(perro_caliente, pan).
ingrediente(perro_caliente, salchicha).
ingrediente(perro_caliente, salsa).

% --- Tacos ---
ingrediente(tacos, tortilla).
ingrediente(tacos, carne).
ingrediente(tacos, tomate).
ingrediente(tacos, lechuga).

% --- Pollo frito ---
ingrediente(pollo_frito, pollo).
ingrediente(pollo_frito, aceite).
ingrediente(pollo_frito, sal).

% --- Puré de papa ---
ingrediente(pure_de_papa, papa).
ingrediente(pure_de_papa, mantequilla).
ingrediente(pure_de_papa, sal).
 
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

% --- Burrito ---
ingrediente(burrito, tortilla).
ingrediente(burrito, arroz).
ingrediente(burrito, carne).
ingrediente(burrito, frijoles).

% --- Sandwich ---
ingrediente(sandwich, pan).
ingrediente(sandwich, jamon).
ingrediente(sandwich, queso).

% --- Crema de verduras ---
ingrediente(crema_de_verduras, verduras).
ingrediente(crema_de_verduras, leche).
ingrediente(crema_de_verduras, sal).

% --- Hotcakes ---
ingrediente(hotcakes, harina).
ingrediente(hotcakes, leche).
ingrediente(hotcakes, huevo).

% --- Ensalada de pollo ---
ingrediente(ensalada_de_pollo, pollo).
ingrediente(ensalada_de_pollo, lechuga).
ingrediente(ensalada_de_pollo, tomate).
 
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
disponible(fruta).
disponible(yogur).
disponible(cereal).
disponible(cafe).
disponible(carne).
disponible(salchicha).
disponible(tortilla).
disponible(papa).
disponible(frijoles).
disponible(jamon).