-- 1. Write an SQL query to fetch "firstName" from employees table using the alias name as <WORKER_NAME>.
SELECT firstName  as worker_name  from classicmodels.employees;

-- 2. Find total Number of Employees.
SELECT count(FirstName) from classicmodels.employees;

-- 3. Write an SQL query to fetch the "FIRST_NAME" from employees table in upper case.Use UPPER() function.
SELECT UPPER("FIRST_NAME")from classicmodels.employees;

-- 4. Write an SQL query to fetch the employeeNumber and FullNmae on all the employees working under the Manger with id - '1102'.
-- SELECT employeeNumber CONCAT(firsName,,LastName) As FullName from classicmodels.employees WHERE office code = 4 and reports to = 1102;

-- 5.Write an SQL query to fetch unique values of product Vendor from product table.
SELECT DISTINCT product Vendor from classicmodels.products;

-- 6. Write an SQL query to print all payments details from the payments table order by customerNumber Ascending and amount Descending.
 SELECT * FROM classicmodels.payments ORDER BY customerNumber ASC, amount Desc;
 
-- 7. Write an SQL query to print details for employees with the last name as "HERNANDEZ" and "king" from employees table.
SELECT * FROM classicmodels.employees WHERE (lastName = 'Hernandez' OR lastName = 'King');

-- 8. Write an SQL query to print details for employees excluding lastname as "HERNANDEZ" and "king" from employees table.
SELECT * FROM classicmodels.employees WHERE NOT (lastName = 'Hernandez' OR lastName = 'King');

-- 9. Write an SQL query to print details of the employees whose FIRST NAME ends with 'e'.
SELECT * FROM classicmodels.employees WHERE firstName LIKE '%e';

-- 10. Write an SQL query to print details of the employees whose FIRST NAME ends with 'h'hand contains five alphabets.
SELECT * FROM classicmodels.employees WHERE (firstName LIKE '%h' AND LENGTH(firstName) = 5);

-- 11.Write an SQL query to print details of the employees who doesn't report to anyone.
SELECT * FROM classicmodels.employees WHERE reportsTo is NULL;

-- 12. Write an SQL query to add column dob to employees table where default date is '1900-01-01'.


-- 13. Write an SQL query to update dob of employee to 1990-01-13 whose id is 1056.


-- 14. Write an SQL query to calculate age of employee with id 1056. use current_date() and year() function
SELECT TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS AGE FROM classicmodels.employees WHERE employeeNumber = 1056;

-- 15. Write an SQL query to fetch all the Name of people which are present in either of the tables – ‘Employee’ and ‘customers’.
SELECT firstName, lastName From classicmodels.employees UNION (
 SELECT contactFirstName, contactLastName FROM classicmodels.customers);

-- 16.Write an SQL query to fetch all the cheque no with amount greater than 1000 and smaller than 2000.
SELECT checkNumber FROM classicmodels.payments WHERE amount > 1000 AND amount < 2000;

-- 17. Write an SQL query to print productCode, productName, textDescription from productlines and products table.
SELECT DISTINCT productCode, productName, textDescription FROM classicmodels.productlines INNER JOIN classicmodels.products USING (productLine);
