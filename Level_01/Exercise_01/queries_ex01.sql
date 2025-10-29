
SELECT client_name, count(*) AS num_facturation
FROM sale
WHERE client_name = 'Pepita'
AND sale_date BETWEEN '2025-06-09' AND '2025-06-12'
GROUP BY client_name;

SELECT DISTINCT sale.selling_agent,
sale.glasses_id,
glasses.brand AS brand
FROM sale
INNER JOIN glasses
	ON sale.glasses_id = glasses.glasses_id
WHERE sale.selling_agent = 'Alberto Domingo'
AND sale.sale_date BETWEEN '2025-01-01' AND '2026-01-01';

SELECT provider.provider_name,
glasses.brand AS brand,
SUM(sale.quantity) AS Total_Sold
FROM sale
INNER JOIN glasses
	ON sale.glasses_id = glasses.glasses_id
INNER JOIN provider
    ON glasses.provider_name = provider.provider_name
GROUP BY provider.provider_name, glasses.brand
;
    

