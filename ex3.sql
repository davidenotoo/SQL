
-- TABELLE
CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN,
  PRICE DOUBLE
);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Eggs', false, true, false, true, 20.0),
('Bread', false, true, true, false, 30.0),
('Beef Patty', false, false, false, true, 15.0),
('Lettuce', false, true, true, true, 7.0),
('Yoghurt', true, true, false, true, 3.0);


--ESECUZIONE

-- 1. Usando un'istruzione SELECT con una clausola WHERE. recupera tutti i pasti che
--  hanno un prezzo inferiore a €15

SELECT * FROM MEAL
WHERE PRICE < 15;


-- 2. Utilizzando un'istruzione SELECT con una clausola WHERE, recupera tutti gli
--   ingredienti vegetariani.

SELECT * FROM INGREDIENT
WHERE VEGETARIAN;


-- 3. Utilizzando un'istruzione SELECT con una clausola WHERE, recupera tutti i pasti
--   con più di 500 calorie.

SELECT * FROM MEAL
WHERE CALORIES > 500;


-- 4. Utilizzando un'istruzione SELECT con una clausola WHERE, recupera tutti i pasti
--   che hanno un prezzo compreso tra € 15 e € 16.

SELECT * FROM MEAL
WHERE PRICE >= 15 AND PRICE <= 16;


-- 5. Usando un'istruzione SELECT con una clausola WHERE. recupera tutti gli
--  ingredienti che sono sia senza lattosio (nota SENZA lattosio) che senza glutine.

SELECT * FROM INGREDIENT
WHERE !CONTAINS_LACTOSE AND GLUTEN_FREE;


-- 6. Usando un'istruzione SELECT con una clausola WHERE e uno o più operatori logici,
--   recupera tutti i pasti che hanno un prezzo inferiore a € 15 o più di 600 calorie.

SELECT * FROM MEAL
WHERE PRICE < 15 OR CALORIES > 600;


-- 7. Utilizzando un'istruzione SELECT con una clausola WHERE, recupera tutti gli
--   ingredienti vegani o senza glutine

SELECT * FROM INGREDIENT
WHERE VEGAN OR GLUTEN_FREE;


-- 8. Utilizzando un'istruzione SELECT con una clausola WHERE, recupera tutti i pasti
--   con il nome "Pasta al pesto"

SELECT * FROM MEAL
WHERE NAME = 'Pesto Pasta';


-- 9. Utilizzando un'istruzione SELECT con una clausola WHERE, recupera tutti gli
--   ingredienti che non sono privi di lattosio

SELECT * FROM INGREDIENT
WHERE CONTAINS_LACTOSE;


-- 10. Utilizzando un'istruzione SELECT con una clausola WHERE e un operatore logico,
--   recupera tutti i pasti che hanno un prezzo superiore a € 20 e meno di 800 calorie.

SELECT * FROM MEAL
WHERE PRICE > 20 AND CALORIES < 800;