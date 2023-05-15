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


CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255)
);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (NOW(), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesta Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti     Bolognese');

CREATE VIEW MEAL_ORDER_WITH_DETAILS AS
    SELECT MO.*, M.PRICE, M.CALORIES FROM MEAL_ORDER MO, MEAL M
    WHERE MO.MEAL_NAME = M.NAME;

CREATE VIEW MEAL_PRICE_DETAILS AS
    SELECT MO.*, M.NAME, M.CALORIES FROM MEAL_ORDER MO, MEAL M
    WHERE MO.MEAL_NAME = M.NAME;

-- ESECUZIONE

-- 1. Usa tutte le funzioni qui sotto, scopri cosa fanno, scrivi una descrizione per loro qui o nei commenti del codice. Aggiungi un alias di colonna significativo
SELECT
CONCAT(MEAL_NAME, " -- " , MEAL_NAME) AS CONCATENAZIONE_DI_STRINGHE,
 LOWER(MEAL_NAME)AS MINUSCOLO,
 UPPER(MEAL_NAME)AS MAIUSCOLO,
 TRIM(MEAL_NAME)AS RIMOZIONE_SPAZI_EXTRA,
 LENGTH(MEAL_NAME)AS LUNGHEZZA_STRINGA,
 SUBSTRING(MEAL_NAME, 1, 5)AS PRIMI_5_CHAR,
 DATE_ADD(Now(), INTERVAL 1 HOUR)AS 1_ORA_NEL_FUTURO,
 DATE_SUB(Now(), INTERVAL 1 HOUR)AS 1_ORA_NEL_PASSATO
FROM MEAL_ORDER_WITH_DETAILS;

SELECT
 ROUND(PRICE, 1) AS ARROTONDATORE,
 FORMAT(PRICE, 2) AS FORMATTATORE_FORSE
FROM MEAL;

-- 2. Seleziona il tuo compleanno passando il risultato nell'elemento successivo, Se ti senti davvero avventuroso, cerca di arrivare esattamente a mezzanotte!
SELECT
DATE_ADD(DATE_ADD(DATE_ADD(DATE_ADD(NOW(), INTERVAL 26 DAY), INTERVAL 6 MONTH), INTERVAL 5 HOUR), INTERVAL 50 MINUTE) AS MIO_COMPLEANNO;


