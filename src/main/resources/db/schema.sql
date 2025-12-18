-- DISH TYPE
DROP type IF EXISTS dish_type;

CREATE type dish_type AS ENUM ('START', 'MAIN', 'DESSERT');

-- INGREDIENT CATEGORY
DROP type IF EXISTS ingredient_category;

CREATE type ingredient_category AS ENUM (
    'VEGETABLE',
    'ANIMAL',
    'MARINE',
    'DAIRY',
    'OTHER'
    );

-- DISH
CREATE table IF NOT EXISTS dish (
    id int PRIMARY KEY,
    name varchar NOT NULL,
    dish_type dish_type
);

-- INGREDIENT
CREATE table IF NOT EXISTS ingredient(
     id int PRIMARY KEY,
     name varchar NOT NULL,
     price numeric,
     category ingredient_category
);

-- DISH INGREDIENT
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