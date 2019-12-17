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
  stock_target INT,
  value INT,
  department_id INT REFERENCES departments(id)
);
