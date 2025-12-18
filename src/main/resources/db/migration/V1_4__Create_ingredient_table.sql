CREATE table IF NOT EXISTS ingredient(
    id int PRIMARY KEY,
    name varchar NOT NULL,
    price numeric,
    category ingredient_category
);