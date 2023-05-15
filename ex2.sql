/*
Inserisci e Seleziona
Scrivi istruzioni di inserimento per inserire i seguenti 5 ingredienti:
Uova
Pane
Polpetta di manzo
Lattuga
Yogurt
Scrivi un'istruzione SELECT per selezionare il NOME di tutti gli ingredienti.
Scrivi un'istruzione SELECT per selezionare il NOME e il PREZZO degli ingredienti
Scrivi un'istruzione SELECT per selezionare tutte le colonne di ingredienti, ordinate per NOME
Scrivi un'istruzione SELECT per selezionare tutte le colonne degli ingredienti, ordinate per "SENZA_GLUTEN" con gli elementi "veri" in cima
*/

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

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Eggs', false, true, false, true, 20.0);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Bread', false, true, true, false, 30.0);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Beef Patty', false, false, false, true, 15.0);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Lettuce', false, true, true, true, 7.0);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES ('Yoghurt', true, true, false, true, 3.0);


--ESECUZIONE:

-- Scrivi un'istruzione SELECT per selezionare il NOME di tutti gli ingredienti.
SELECT NAME FROM INGREDIENT;

-- Scrivi un'istruzione SELECT per selezionare il NOME e il PREZZO degli ingredienti
SELECT NAME, PRICE FROM INGREDIENT;

-- Scrivi un'istruzione SELECT per selezionare tutte le colonne di ingredienti, ordinate per NOME
SELECT NAME FROM INGREDIENT
ORDER BY NAME;

-- Scrivi un'istruzione SELECT per selezionare tutte le colonne degli ingredienti, ordinate per "SENZA_GLUTEN" con gli elementi "veri" in cima
SELECT * FROM INGREDIENT
ORDER BY GLUTEN_FREE DESC;
