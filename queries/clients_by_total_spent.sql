-- Clients who spent the most in the store

SELECT
  c.customer_id AS client_id,
  c.name AS client_name,
  CONCAT('€', FORMAT('%0.2f', SUM(o.amount))) AS total_spent
FROM `polynomial-coda-457620-c7.ordersanalysis.orders` o
JOIN `polynomial-coda-457620-c7.ordersanalysis.customers` c 
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY SUM(o.amount) DESC;
