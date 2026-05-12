show databases;

CREATE DATABASE dbone;
use dbone;        //switches to the respective DATABASE

CREATE TABLE employees(
eid int UNIQUE,
ename VARCHAR(32) NOT NULL,
esal FLOAT CHECK(esal>18000.00),
gender VARCHAR(32) NOT NULL,
loc VARCHAR(32) DEFAULT "Bangalore"
);

DESC employees;

INSERT into employees
VALUES
(101, "Rahul", 45000.45, "Male", "Wayanad");

drop DATABASE dbone;

INSERT into employees
VALUES
(101, "Rahul", 45000.45, "Male", "Wayanad");

INSERT into employees(eid, ename, gender)
VALUES
(102, "Sonia", "Female");

select * from employees;

INSERT into employees(eid, ename, esal,gender)
VALUES
(103, "Priya", 75000.75, "Female"),
(104, "Priya", 85000.85, "Female");

INSERT into employees(eid, esal, gender)
VALUES
(103, 75000.75, "Female");

INSERT into employees(eid, esal, gender, loc)
VALUES
(105, "Modi", 18000.90, "Male");