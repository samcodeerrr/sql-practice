/*
Goal: Demonstrate multi-column GROUP BY (two-dimensional aggregation).
Assumptions:
  - Table: orders(order_id, region, amount, order_date)
Output:
  - region, order_month, total_orders, total_amount
Notes:
  - DATE_TRUNC works in Postgres; for MySQL use DATE_FORMAT; for SQL Server use DATETRUNC/FORMAT.
*/

SELECT
  region,
  DATE_TRUNC('month', order_date) AS order_month,
  COUNT(*) AS total_orders,
  SUM(amount) AS total_amount
FROM orders
GROUP BY region, DATE_TRUNC('month', order_date)
ORDER BY order_month, total_amount DESC;
