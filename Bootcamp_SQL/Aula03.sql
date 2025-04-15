-- inner join ou join (intersecção)
SELECT *
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM o.order_date) = 1996
-- WHERE DATE_PART('YEAR', o.order_date) = 1996

-- left join
-- posso fazer o join qom colunas que tenha o mesmo tipo de dado

-- Cria um relatório que mostra o número de funcionários e clientes de cada cidade que tem funcionários (5 linhas)
SELECT e.city AS cidade, 
       COUNT(DISTINCT e.employee_id) AS numero_de_funcionarios, 
       COUNT(DISTINCT c.customer_id) AS numero_de_clientes
FROM employees e 
LEFT JOIN customers c ON e.city = c.city
GROUP BY e.city
ORDER BY cidade;

-- Cria um relatório que mostra o número de funcionários e clientes de cada cidade que tem clientes (69 linhas)
SELECT c.city AS cidade, 
       COUNT(DISTINCT c.customer_id) AS numero_de_clientes, 
       COUNT(DISTINCT e.employee_id) AS numero_de_funcionarios
FROM employees e 
RIGHT JOIN customers c ON e.city = c.city
GROUP BY c.city
ORDER BY cidade;

-- Cria um relatório que mostra o número de funcionários e clientes de cada cidade (71 linhas)
SELECT
	COALESCE(e.city, c.city) AS cidade,
	COUNT(DISTINCT e.employee_id) AS numero_de_funcionarios,
	COUNT(DISTINCT c.customer_id) AS numero_de_clientes
FROM employees e 
FULL JOIN customers c ON e.city = c.city
GROUP BY e.city, c.city
ORDER BY cidade;

--HAVING
