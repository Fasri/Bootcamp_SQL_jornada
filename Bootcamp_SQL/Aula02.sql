SELECT * FROM customers

SELECT * FROM categories

SELECT contact_name, city FROM customers

SELECT company_name, address FROM customers

SELECT country FROM customers

SELECT DISTINCT country FROM customers

SELECT DISTINCT contact_name FROM customers

SELECT COUNT(DISTINCT country) FROM customers

SELECT COUNT(DISTINCT contact_name) FROM customers

SELECT * FROM  customers WHERE country = 'Mexico'

SELECT * FROM employees WHERE title = 'Sales Representative'

SELECT * FROM customers WHERE customer_id = 'ANATR'

SELECT * FROM customers WHERE country='Germany' AND city='Berlin'

SELECT * FROM customers WHERE city='Berlin' OR city='Aachen';

SELECT * FROM customers WHERE country<>'Germany'; --todos, menos os registros que tenham Germany

SELECT * FROM customers WHERE country='Germany' AND (city='Berlin' OR city='Aachen');

SELECT * FROM customers WHERE country<>'Germany' AND country<>'USA';

SELECT * FROM products WHERE unit_price < 20

SELECT * FROM products WHERE unit_price > 100

SELECT * FROM products WHERE unit_price <= 50

SELECT * FROM products WHERE unit_price >= 25

SELECT * FROM products 	WHERE unit_price <> 48

SELECT * FROM products
WHERE unit_price >= 50 AND unit_price < 100;

v

