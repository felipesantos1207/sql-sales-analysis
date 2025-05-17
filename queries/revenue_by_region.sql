-- Total revenue by region

SELECT
  c.region AS region,
  CONCAT('€', FORMAT('%0.2f', SUM(o.amount))) AS revenue
FROM `polynomial-coda-457620-c7.ordersanalysis.customers` c
JOIN `polynomial-coda-457620-c7.ordersanalysis.orders` o 
  ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY SUM(o.amount) ASC;