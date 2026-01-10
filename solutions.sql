-- 1) Select all rows
SELECT * FROM customers;

-- 2) Select specific columns
SELECT customer_id, name, city FROM customers;

-- 3) WHERE with AND
SELECT * FROM orders
WHERE amount > 100 AND status = 'Delivered';

-- 4) WHERE with OR
SELECT * FROM customers
WHERE city = 'Pune' OR city = 'Mumbai';

-- 5) ORDER BY + LIMIT
SELECT * FROM orders
ORDER BY order_date DESC
LIMIT 10;

-- 6) COUNT
SELECT COUNT(*) AS total_orders FROM orders;

-- 7) GROUP BY + COUNT
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

-- 8) GROUP BY + SUM
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- 9) HAVING
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 500;

-- 10) CASE WHEN
SELECT order_id,
       amount,
       CASE
         WHEN amount >= 500 THEN 'High'
         WHEN amount >= 200 THEN 'Medium'
         ELSE 'Low'
       END AS order_value_band
FROM orders;
