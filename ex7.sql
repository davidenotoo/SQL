
Max, Min, Average, Having

1. Scrivi una query per trovare il prezzo massimo di un pasto con più di 500 calorie.

    SELECT M.MEAL_NAME, MAX(M.PRICE) AS MAX_PRICE
    FROM MEAL M
    WHERE M.CALORIES > 500
    GROUP BY MEAL_NAME
    ORDER BY MAX_PRICE, M.CALORIES DESC -- doppio ordinamento in caso di prezzo uguale


2. Scrivi una query per trovare le calorie medie dei pasti che costano più di 15 EUR

    SELECT M.MEAL_NAME, AVG(M.CALORIES) AS MEDIA_CALORIE
    FROM MEAL M
    WHERE M.PRICE > 15
    GROUP BY M.MEAL_NAME
    ORDER BY M.PRICE ASC


3. Scrivi una query per selezionare tutti i pasti che hanno il prezzo MAX, usando
HAVING e MAX()

    SELECT M.MEAL_NAME, MAX(M.PRICE) AS MAX_PRICE
    FROM MEAL M
    GROUP BY MEAL_NAME
    HAVING MAX_PRICE


4. Scrivi una query per selezionare tutti i pasti che hanno un prezzo inferiore al prezzo
medio, utilizzando HAVING e AVG

    SELECT M.MEAL_NAME, (SELECT AVG(M.PRICE) FROM MEAL M) AS MEDIA
    FROM MEAL M
    GROUP BY M.MEAL_NAME
    HAVING M.PRICE < MEDIA ASC;

5. Scrivi una query per selezionare tutti i pasti che hanno un prezzo inferiore al prezzo
medio e hanno più di 600 calorie

    SELECT M.MEAL_NAME, (SELECT AVG(M.PRICE) FROM MEAL M) AS MEDIA
    FROM MEAL M
    WHERE CALORIES > 600
    GROUP BY M.MEAL_NAME
    HAVING M.PRICE < MEDIA ASC;











