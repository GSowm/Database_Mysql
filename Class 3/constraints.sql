show databases;

use dbone;

show tables;

CREATE TABLE Orders(
orderId int UNIQUE,
name VARCHAR(32) NOT NULL,
price FLOAT CHECK(price>=100),
status VARCHAR(32) DEFAULT "Open"
);

DESC orders;

INSERT INTO orders
VALUES
(1001, "Marker Pen", 150.55, "Delivered");

INSERT INTO Orders(name,price)
VALUES
('MI TV', 25000.25),
('Lenovo', 25000.25);

INSERT INTO orders
VALUES
(1002, "Lenovo", 50.55, "IN-Progress");

SHOW tables;

DROP TABLE employees;

CREATE TABLE employees(
eid int,
ename VARCHAR(32) NOT NULL,
esal FLOAT,
age int CHECK(age>18),
loc VARCHAR(32),
gender VARCHAR(32),
PRIMARY KEY(eid)
);

INSERT INTO employees
VALUES
(101,'Rahul', 45000.45, 52, 'Wayanad', 'Male');

INSERT INTO employees
VALUES
(102,'Priyanka', 45000.45, 42, 'Wayanad', 'Female');

INSERT INTO employees(esal,age,loc,)
VALUES
(75000.45, 42, 'Delhi');