-- 1.Find the record of all customer whose order is cancelled.
SELECT * FROM classicmodels.customer WHERE customerNumber IN (
SELECT customerNumber FROM classicmodels.orders WHERE status ='Cancelled');

-- 2. Find the first customer details who paid for order.
SELECT * FROM classicmodels.customers WHERE customerNumber = 
(SELECT customerNumber FROM classicmodels.payments order by paymentDate limit 1);

-- 3. Find the last customer detail who paid for order.
SELECT * FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.payments ORDER BY paymentDate DESC LIMIT 1);

-- 4. List all the product which has been sold more tha 1000 pieces.



-- 5.Find all Employee who works in UK.
SELECT * FROM classicmodels.employees WHERE officeCode in  
(SELECT officeCode FROM classicmodels.offices WHERE country ='UK');

-- 6. In which country does George Vanauf works in.
SELECT country FROM classicmodels.offices WHERE officecode IN
(SELECT officeCode FROM classicmodels.employees WHERE firstName = 'George ');

-- 7. Find Email address of all employee who works in USA.
SELECT email FROM classicmodels.employees WHERE officeCode IN 
(SELECT officeCode FROM classicmodels.offices WHERE country = 'USA');


-- 8.Find customer name,phone and address of all the customer who never ordered.
SELECT customerName,phone,addressLine1 FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.orders WHERE status = 'In Proc');

-- 9. Find total no.of orders which is product of Ducati.
SELECT count(*) FROM classicmodels.orderdetails WHERE productCode IN
(SELECT productCode FROM classicmodels.products WHERE productName like "%Ducati%");

-- 10.List all order of ford parts.
SELECT * FROM classicmodels.orderdetails WHERE productCode IN 
(SELECT productCode FROM classicmodels.products WHERE productName like "%ford%");

-- 11. Find first customer who placed order.
SELECT * FROM classicmodels.customers WHERE customerNumber = 
(SELECT customerNumber FROM classicmodels.orders ORDER BY orderDate ASC LIMIT 1);

-- 12. Find last customer who placed order.
SELECT * FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.orders ORDER BY orderDate DESC LIMIT 1);

-- 13. Find top three sold product.


-- 14. Find top three customers who spend most.
SELECT * FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.payments order by amount DESC LIMIT 1);

-- 15. Find least sold products.



-- 16. Find least spending customers.
SELECT * FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.payments order by amount ASC LIMIT 1);