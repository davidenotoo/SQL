Alter table, Constraints
Aggiungi vincoli a ogni colonna della tabella INGREDIENTI, dovresti usare NOT NULL per
alcune colonne e univoco per altre

-- NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE

ALTER TABLE ingredient
add constraint unique(name),
modify CONTAINS_LACTOSE boolean not null,
modify VEGETARIAN boolean not null,
modify VEGAN boolean not null,
modify GLUTEN_FREE boolean not null,
modify PRICE double not null;