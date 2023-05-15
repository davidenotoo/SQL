CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN,
  PRICE DOUBLE
);

/*
Inserisci e Seleziona
Scrivi istruzioni di inserimento per inserire i seguenti 5 ingredienti:
Uova
Pane
Polpetta di manzo
Lattuga
Yogurt
*/

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Eggs', false, true, false, true, 20.0),
('Bread', false, true, true, false, 30.0),
('Beef Patty', false, false, false, true, 15.0),
('Lettuce', false, true, true, true, 7.0),
('Yoghurt', true, true, false, true, 3.0);


--ESECUZIONE:

-- 1. Scrivi un'istruzione SELECT per selezionare il NOME di tutti gli ingredienti.
SELECT NAME FROM INGREDIENT;

-- 2. Scrivi un'istruzione SELECT per selezionare il NOME e il PREZZO degli ingredienti
SELECT NAME, PRICE FROM INGREDIENT;

-- 3. Scrivi un'istruzione SELECT per selezionare tutte le colonne di ingredienti, ordinate per NOME
SELECT NAME FROM INGREDIENT
ORDER BY NAME;

-- 4. Scrivi un'istruzione SELECT per selezionare tutte le colonne degli ingredienti, ordinate per "SENZA_GLUTEN" con gli elementi "veri" in cima
SELECT * FROM INGREDIENT
ORDER BY GLUTEN_FREE DESC;
