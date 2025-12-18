-- USER CREATION
DROP USER IF EXISTS "mini_dish_db_manager";
CREATE USER "mini_dish_db_manager" WITH PASSWORD '<PASSWORD>';

-- DATABASE CREATION
DROP database IF EXISTS "mini_dish_db";
CREATE DATABASE "mini_dish_db";
ALTER DATABASE "mini_dish_db" OWNER TO "mini_dish_db_manager";