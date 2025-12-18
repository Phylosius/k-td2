-- DISH DATA
INSERT INTO dish(id, name, dish_type)
VALUES
    (1, 'Salade fraîche', 'START'),
    (2, 'Poulet grillé', 'MAIN'),
    (3, 'Riz aux legumes', 'MAIN'),
    (4, 'Gateaux aux chocolat', 'DESSERT'),
    (5, 'Salade de fruits', 'DESSERT');

-- INGREDIENT DATA
INSERT INTO ingredient(id, name, price, category)
VALUES
    (1, 'Laitue', 800.0, 'VEGETABLE'),
    (2, 'Tomate', 600.0, 'VEGETABLE'),
    (3, 'Poulet', 4500.0, 'ANIMAL'),
    (4, 'Chocolat', 3000.0, 'OTHER'),
    (5, 'Beurre', 2500.0, 'DAIRY');

-- DISH INGREDIENT
INSERT INTO dish_ingredient (id_dish, id_ingredient)
VALUES
    (1, 1), -- Laitue for Salade frâiche
    (1, 2), -- Tomate for Salade frâiche
    (2, 3), -- Poulet for Poulet grillé
    (4, 4), -- Chocolat for Gâteaux au chocolat
    (4, 5); -- Beurre for Gâteaux au chocolat