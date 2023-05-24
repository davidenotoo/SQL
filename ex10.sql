Chiavi esterne, INNER JOIN

-- Tabelle e insert create da Greg -> https://drive.google.com/file/d/1XVbZPFB75cm4gYzc6R_GYOtEhBLJ9dIo/view
-- eseguo solo i comandi degli esercizi.

1. Usando le tabelle INGREDIENT e MEAL, scrivi una query per restituire il nome di
tutti i pasti che contengono aglio.

SELECT MEAL.NAME
FROM MEAL
INNER JOIN INGREDIENT ON MEAL_ID = INGREDIENT_ID
WHERE INGREDIENT.NAME = "Garlic";



2. Utilizzando le tabelle INGREDIENT e MEAL scrivi una query per restituire il numero
di pasti con ingredienti vegetariani.

SELECT COUNT(MEAL.NAME)
FROM MEAL
INNER JOIN INGREDIENT ON MEAL_ID = INGREDIENT_ID
WHERE INGREDIENT.VEGETARIAN;



3. Usando le tabelle INGREDIENT e MEAL, scrivi una query per restituire i nomi dei
pasti che hanno almeno 1 ingrediente senza glutine e almeno 1 ingrediente vegano.

SELECT MEAL.NAME
FROM MEAL
INNER JOIN INGREDIENT ON MEAL_ID = INGREDIENT_ID
WHERE INGREDIENT.GLUTEN_FREE = 1 AND INGREDIENT.VEGAN = 1;



4. Usando le tabelle INGREDIENT e MEAL, scrivi una query per restituire il numero
medio di ingredienti per pasto.

SELECT AVG(ingredient_counter) AS media_ingredienti
FROM (
    SELECT meal_id, COUNT(*) AS ingredient_counter
    FROM ingredient
    GROUP BY meal_id
) AS media_ingredienti;


5. Usando le tabelle INGREDIENT e MEAL, scrivi una query per restituire i nomi dei
pasti che hanno più di 3 ingredienti.
Non disponiamo di dati per le tabelle seguenti, per favore scrivi solo l SQL necessario per
creare i seguenti join!

SELECT M.NAME
FROM MEAL M
INNER JOIN (
    SELECT MEAL_ID, COUNT(*) AS INGREDIENT_COUNT
    FROM INGREDIENT
    GROUP BY MEAL_ID
) AS I ON i.MEAL_ID = m.MEAL_ID
WHERE I.INGREDIENT_COUNT > 3;



6.Utilizzando le seguenti definizioni di tabella, scrivi un inner join per le due tabelle
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDERS (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);

SELECT *
FROM CUSTOMER
INNER JOIN ORDERS ON CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;



7.Utilizzando le seguenti definizioni di tabella, scrivi un inner join per le due tabelle
CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);

SELECT PRODUCT.PRODUCT_ID, PRODUCT.NAME, PRODUCT.PRICE, INVENTORY.QUANTITY
FROM PRODUCT
INNER JOIN INVENTORY ON PRODUCT.PRODUCT_ID = INVENTORY.PRODUCT_ID;