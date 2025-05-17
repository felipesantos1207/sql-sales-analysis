-- Number of orders per client

SELECT
  c.customer_id AS client_id,
  c.name AS client_name,
  COUNT(o.order_id) AS client_orders
FROM `polynomial-coda-457620-c7.ordersanalysis.orders` o
JOIN `polynomial-coda-457620-c7.ordersanalysis.customers` c 
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY client_orders ASC;