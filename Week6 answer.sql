CREATE DATABASE classicmodels;
USE classicmodels;
CREATE TABLE productlines (productlines VARCHAR (50) PRIMARY KEY,
textDescription VARCHAR (4000),
htmlDescription TEXT,image MEDIUMBLOB );
SHOW TABLES;
DESCRIBE employees;
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
