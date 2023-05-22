
GROUPING BY, COUNT, SUM:

1- Utilizzando un'istruzione SELECT con una clausola GROUP BY e una funzione
    COUNT, recupera il numero di ordini per ogni pasto:

    SELECT MEAL_NAME, COUNT(*) AS OrderCount
    FROM MEAL_ORDER
    GROUP BY MEAL_NAME;


2 Utilizzando un'istruzione SELECT con una clausola WHERE e una funzione SUM,
    recupera il ricavo totale per tutti i pasti che hanno un prezzo superiore a € 15:

    SELECT SUM(M.PRICE) AS TotalRevenue
    FROM MEAL M
    WHERE M.PRICE > 15;
    GROUP BY M.NAME


3- Utilizzando un'istruzione SELECT con una clausola GROUP BY e una funzione
    COUNT, recuperare il numero di pasti con più di 500 calorie:

    SELECT M.NAME, COUNT(*) AS MealCount
    FROM MEAL M
    WHERE M.CALORIES > 500
    GROUP BY M.NAME;

4 Utilizzando un'istruzione SELECT con una clausola WHERE e una funzione SUM,
    recuperare il prezzo totale per tutti i pasti il cui nome contiene la lettera "S",
    Puoi trovare elementi che iniziano con la lettera s con la seguente clausola where
    WHERE LOWER(NOME) LIKE '%s%';

    SELECT SUM(M.PRICE) AS TotalPrice
    FROM MEAL M
    WHERE LOWER(NOME) LIKE '%s%' --CONTIENE s
    WHERE LOWER(NOME) LIKE 's%' --INIZIA con s
    GROUP BY MEAL_NAME
    ORDER BY TotalPrice ASC;



5. Utilizzando un istruzione SELECT con una clausola WHERE, una clausola GROUP
    BY e una funzione COUNT, recupera il numero di ordini per ogni pasto che sono
    stati ordinati prima di '202X-XX-XX 18:00:00' (sostituisci le X con la data corrente):

    SELECT MO.MEAL_NAME, COUNT(*) AS OrderCount
    FROM MEAL_ORDER MO
    WHERE MO.TIME_MEAL_ORDERED < '2023-05-22 18:00:00'
    GROUP BY MO.MEAL_NAME;

