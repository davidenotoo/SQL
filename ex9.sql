Primary keys, UPDATE, DELETE
FROM, TRUNCATE, DROP TABLE

1. Crea la tua tabella clienti, assicurati di crearla con una chiave primaria
auto increment.

    CREATE TABLE clienti(
    id int AUTO_INCREMENT NOT NULL UNIQUE,
    name varchar(255) not null,
    cognome varchar(255) not null,
    telefono varchar(255) unique,
    PRIMARY KEY (id)
    );


2. Inserisci alcuni clienti con un insert.

    INSERT INTO clienti(name, cognome, telefono)
    VALUES ('Davideeno', 'Noto', '5551985'),
    ('Greg', 'Flinstones', '666'),
    ('Homer', 'Simpson', '3333333');

3. Modifica questi clienti utilizzando l istruzione UPDATE con una clausola WHERE che
fa riferimento all id.

    UPDATE clienti
    set nome = 'Ned', cognome = 'Flanders'
    WHERE id = 3;


4. Elimina alcuni clienti con delete from statement con una clausola WHERE che fa
riferimento all id.

    delete from clienti
    where id = 2; --via greg dal gregge

5. Elimina tutti i clienti con una dichiarazione truncate.

    truncate clienti


Osserva le tabelle sottostanti e scrivi quali colonne ritieni siano una buona chiave
primaria.

6. Domanda
CREATE TABLE customers (
customer id INT NOT NULL AUTO INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
PRIMARY KEY (customer_id)
);
7. Domanda
CREATE TABLE Products (
product_name VARCHAR(255) NOT NULL,
product_description VARCHAR(255) NOT NULL,
product_price DECIMAL(IO, 2) NOT NULL,
product_quantity INT NOT NULL
PRIMARY KEY (product_name)
);
8. Domanda
CREATE TABLE orders (
order_id INT NOT NULL AUTO INCREMENT,
customer id INT NOT NULL,
expected_arrival_time DATE
PRIMARY KEY (order_id)
);
9 - Domanda
CREATE TABLE Product_orders (
order_id INT NOT NULL AUTO INCREMENT,
product_name VARCHAR(255) NOT NULL,
total revenue DOUBLE
PRIMARY KEY (order_id)
);