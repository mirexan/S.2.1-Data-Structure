SELECT DISTINCT product_type,
SUM(op.quantity) AS total_drinks_sold
FROM product p
INNER JOIN order_product op
	ON p.product_id = op.product_id
INNER JOIN `order` o
	ON op.order_id = o.order_id
INNER JOIN store s
	ON o.store_id = s.store_id
INNER JOIN town t
	ON s.town_id = t.town_id
WHERE product_type = 'Drink' 
AND t.name = 'Barcelona';

SELECT e.first_name, e.last_name,
COUNT(o.order_id) AS total_orders
FROM `order` o
INNER JOIN employee e
	ON o.employee_id = e.employee_id
WHERE e.first_name = 'Sara'
GROUP BY
	e.first_name, e.last_name;