CREATE TABLE customers(
cust_ID int,
Name varchar(32) NOT NULL,
age int check(age>=12),
loc varchar(32) DEFAULT 'Bang',
PRIMARY KEY(cust_ID)
);

Desc customers;

CREATE TABLE orders(
ord_ID int,
Details varchar(32),
amount float CHECK(amount>100),
cust_ID int,
Status varchar(32) DEFAULT 'OPEN',
PRIMARY KEY(ord_ID),
FOREIGN KEY(cust_ID) REFERENCES customers(cust_ID)
);

Desc orders;

INSERT INTO customers
VALUES
(101,'Rahul',52,'Wayanad'),
(102,'Sonia',78,'New Delhi'),
(103,'Priyanka',42,'Noida'),
(104,'Modi',75,'Varanasi');

INSERT INTO orders
VALUES
(10001,'Mp-2',150.00,101,'Delivered'),
(10002,'MI TV',24000.00,101,'OPEN'),
(10003,'Think Pad',150000.00,101,'Success'),
(10004,'Lenovo Mouse',450.00,102,'Delivered'),
(10005,'Dustomer2',150.00,103,'OPEN'),
(10006, 'Iphone 5s',8000.00,103,'InProgress'),
(10007,'Samsung Galaxy2',34850.00,103,'Delivered'),
(10008,'Water Bolldle set',400.00,103,'OPEN'),
(10009,'Mp-3',150.00,101,'Delivered'),
(10010,'Pencils Set',150.00,101,'OPEN');

SELECT * from orders;
SELECT * from customers;
SELECT * from orders, customers;

SELECT * from
orders ord,
customers cust
where ord.cust_ID = cust.cust_ID;

SELECT o.Details as OrderDetails,
o.amount as Amount,
o.Name as CustomerName,
o.loc as Location
from
orders o,
customers c
where o.cust_ID = c.cust_ID;
