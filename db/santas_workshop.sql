DROP TABLE toys;
DROP TABLE departments;

CREATE TABLE departments
(
  id SERIAL primary key,
  name VARCHAR(255) not null,
  number_of_elves INT
);

CREATE TABLE toys
(
  id SERIAL primary key,
  name VARCHAR(255) not null,
  description VARCHAR(255),
  stock_quantity INT,
  buying_cost INT,
  selling_price INT
);
