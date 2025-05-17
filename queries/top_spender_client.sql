-- Top client by total spending

SELECT
  c.customer_id AS client_id,
  c.name AS client_name,
  CONCAT('€', FORMAT('%0.2f', SUM(o.amount))) AS spent_client
FROM `polynomial-coda-457620-c7.ordersanalysis.orders` o
JOIN `polynomial-coda-457620-c7.ordersanalysis.customers` c 
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY SUM(o.amount) DESC
LIMIT 1;