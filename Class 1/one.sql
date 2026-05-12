mysql -uroot -proot
show databases;

CREATE DATABASE dbone;
USE dbone;

show tables;
CREATE TABLE employees();

CREATE TABLE employees(
	empId int,
	empName VARCHAR(32),
	esal  float
);

DESC employees;

INSERT into employees
VALUES
(101, "Rahul", 45000.45);

INSERT into employees
VALUES
(102, "Sonia", 55000.55),
(103, "Priya", 65000.65),
(104, "Trisha", 75000.75);

INSERT INTO employees(empId,empName)
VALUES
(104,'Modi');

select * from employees;

UPDATE employees
SET empName = "RahulGandhi"
WHERE empId = 101;

INSERT INTO employees(empId)
VALUES
(106),
(107),
(108),
(109);

UPDATE employees
SET empId = 105,
WHERE empName = "Modi";

DELETE from employees
WHERE empId = 101;