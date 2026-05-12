show databases;

Drop DATABASE dbone;

use onedb;

Show tables;

create table employee (
	eid INT ,
	fname VARCHAR(32),
	lname VARCHAR(32),
	city VARCHAR(32),
	esal INT,
	age INT,
	PRIMARY KEY(eid)
);

Insert into employee values
(101,'Rahul','Gandhi','Wayanad',45000,52),
(102,'Sonia','Gandhi','New Delhi',55000,75),
(103,'Priyanka','Gandhi','Nodia',65000,45),
(104,'Modi','Narendra','New Delhi',75000,69),
(105,'Rajni','Kanth','Chennai',85000,65),
(106,'Vijay','Setupathi','Chennai',95000,47),
(107,'Nayana','Tara','Chennai',25000,40),
(108,'Alia','Bhut','Mumbai',45000,31),
(109,'Mahesh','Bhut','Mumbai',15000,68),
(110,'Sonam','Kapoor','Mumbai',30000,27),
(111,'Anil','Kapoor','Mumbai',38000,40),
(112,'Raj','Kapoor','Mumbai',18000,78),
(113,'Vishnu','Manchu','Hyderabad',10000,40),
(114,'Manoj','Manchu','Hyderabad',12000,35);

INSERT INTO employee (eid,fname,lname,city,age)
values
(115,'Mohan','Manchu','Hyderabad',70);

SELECT lname, COUNT(*) AS lname_count
FROM employee
GROUP BY lname
HAVING COUNT(*) > 1;

SELECT * from employee
where age>=70;

SELECT count(*) as "No of Emp"
from employee
where age>=70;