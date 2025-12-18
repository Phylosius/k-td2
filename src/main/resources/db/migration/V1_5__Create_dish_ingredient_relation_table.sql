CREATE table IF NOT EXISTS dish_ingredient (
    id_dish int NOT NULL,
    id_ingredient int NOT NULL,

    CONSTRAINT pk_dish_ingredient
        PRIMARY KEY (id_dish, id_ingredient),

    CONSTRAINT fk_dish_ingredient_id_dish
        FOREIGN KEY (id_dish) REFERENCES dish(id),

    CONSTRAINT fk_dish_ingredient_id_ingredient
        FOREIGN KEY (id_ingredient) REFERENCES ingredient(id)
);