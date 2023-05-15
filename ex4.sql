 --TABELLA
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

 -- ESECUZIONE

 -- 1. Usando un'istruzione CREATE TABLE AS, crea una nuova tabella chiamata 'CHEAP_MEALS' che contenga tutti i pasti con un prezzo inferiore a €15.
 CREATE TABLE CHEAP_MEALS AS
 SELECT * FROM MEAL WHERE PRICE < 15;

 -- 2. Utilizzando un'istruzione INSERT con un'istruzione SELECT, inserisci tutti gli ingredienti vegani in una nuova tabella chiamata "VEGAN_INGREDIENT",
 --  puoi creare un clone vuoto di una tabella con il seguente codice:CREATE TABLE VEGAN_INGREDIENT AS SELECT * FROM INGREDIENT WHERE FALSE
 CREATE TABLE VEGAN_INGREDIENT AS
 SELECT * FROM INGREDIENT WHERE FALSE;

 INSERT INTO VEGAN_INGREDIENT
 SELECT * FROM INGREDIENT WHERE VEGAN;

 -- 3. Usando un'istruzione CREATE VIEW, crea una vista chiamata 'EXPENSIVE_MEAL' che mostri tutti i pasti con un prezzo superiore a €15.
 CREATE VIEW EXPENSIVE_MEAL AS
 SELECT * FROM MEAL WHERE PRICE > 15;

 -- 4. Utilizzando un'istruzione CREATE VIEW, crea una vista denominata "LACTOSE_FREE_INGREDIENT" che mostra tutti gli ingredienti senza lattosio.
 CREATE VIEW LACTOSE_FREE_INGREDIENT AS
 SELECT * FROM INGREDIENT WHERE !CONTAINS_LACTOSE;

 -- 5. Utilizzando un'istruzione CREATE TABLE AS, crea una nuova tabella chiamata "HIGH_CALORIE_MEAL" che contenga tutti i pasti con più di 650 calorie.
 CREATE TABLE HIGH_CALORIE_MEAL AS
 SELECT * FROM MEAL WHERE CALORIES > 650;


