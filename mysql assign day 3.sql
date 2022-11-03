SELECT * FROM learn_sql.products;
SELECT * FROM products;
-- 2 list all product name that contains momo
SELECT * FROM products WHERE category = 'momo';

-- 3 list all products whose category is international liquors or domestic liquor using in operator.
SELECT * FROM products WHERE category IN ( 'INTERNATIONAL LIQUORS','DOMESTIC LIQUORS');

-- 4 Update all not defined category to null.
UPDATE product SET category = 'null' WHERE category = 'Not Defined';

-- 5 Delete all products whose price is less than 10.
DELETE FROM products WHERE list_price <10;

-- SELECT *FROM products;

-- 6 list all products whose price is greater than 500 and whose category is Domestic liquors.
SELECT * FROM products WHERE list_price > 500 AND category = 'Domestic Liquors';

-- 7 list ID name and price of the product whose price is between 200 and 500 or whose category is wine.
SELECT id,name,listprice FROM products WHERE list_price BETWEEN 200 AND 500 OR CATEGORY = 'WINE'; 




