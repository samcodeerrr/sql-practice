/*
Goal: Demonstrate GROUP BY + HAVING (filtering aggregated results).
Assumptions:
  - Table: orders(order_id, customer_id, amount, order_date)
Output:
  - customer_id, total_orders, total_amount
Notes:
  - HAVING filters groups after aggregation (WHERE filters rows before aggregation).
*/

SELECT
  customer_id,
  COUNT(*) AS total_orders,
  SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id
HAVING COUNT(*) >= 5
ORDER BY total_amount DESC;
