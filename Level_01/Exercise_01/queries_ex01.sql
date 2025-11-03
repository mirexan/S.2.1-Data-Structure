
SELECT s.client_id,
c.client_name,
count(*) AS num_facturation
FROM sale s
JOIN `client` c
ON s.client_id = c.client_id
WHERE s.client_id = 1
AND s.sale_date BETWEEN '2025-06-09' AND '2025-06-12'
GROUP BY s.client_id;

SELECT DISTINCT sale.agent_id,
sale.glass_id,
glass.brand AS brand
FROM sale
INNER JOIN glass
	ON sale.glass_id = glass.glass_id
WHERE sale.agent_id = 1
AND sale.sale_date BETWEEN '2025-01-01' AND '2026-01-01';

SELECT provider.provider_id,
provider.provider_name,
glass.brand AS brand,
SUM(sale.quantity) AS Total_Sold
FROM sale
INNER JOIN glass
	ON sale.glass_id = glass.glass_id
INNER JOIN provider
    ON glass.provider_id= provider.provider_id
GROUP BY provider.provider_name, glass.brand
;
    

