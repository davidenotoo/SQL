/*
Crea tabella
Usando la tabella "Ingredienti" del video Che cos'è un database, scrivi ed esegui la tua istruzione SQL CREATE TABLE, assicurati che tutte le colonne siano di tipo appropriato

Se crei una tabella in modo errato e desideri eliminarla, digita DROP TABLE INGREDIENT.

Assicurati anche che ci siano i punti e virgola dopo le tue istruzioni Create table, altrimenti potrebbero esserci errori!

Buona fortuna!
*/


CREATE TABLE INGREDIENT (
    NAME VARCHAR(255),
    CONTAINS_LACTOSE BOOLEAN,
    VEGETARIAN BOOLEAN,
    VEGAN BOOLEAN,
    GLUTEN_FREE BOOLEAN
);