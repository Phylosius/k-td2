DROP type IF EXISTS dish_type;

CREATE type dish_type AS ENUM ('START', 'MAIN', 'DESSERT');