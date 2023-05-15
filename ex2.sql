
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
GLUTEN_FREE BOOLEAN
);

INSERT INTO INGREDIENT VALUES ('Eggs', false, true, false, true);
INSERT INTO INGREDIENT VALUES ('Bread', false, true, true, false);
INSERT INTO INGREDIENT VALUES ('Beef Patty', false, false, false, true);
INSERT INTO INGREDIENT VALUES ('Lettuce', false, true, true, true);
INSERT INTO INGREDIENT VALUES ('Yoghurt', true, true, false, true);

