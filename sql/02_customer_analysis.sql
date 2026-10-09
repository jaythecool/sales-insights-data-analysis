-- Sales Insights Data Analysis
-- 02: Customer Analysis

-- Find the top 10 customers by total sales amount.
SELECT
    customer_code AS customer_id,
    SUM(sales_amount) AS total_sales
FROM sales.transactions
GROUP BY customer_code
ORDER BY total_sales DESC
LIMIT 10;

-- Which customer has purchased the highest total quantity of products?
-- LIMIT 1 returns one customer; remove LIMIT 1 to see the full ranking.
SELECT
    customer_code,
    SUM(sales_qty) AS total_quantity
FROM sales.transactions
GROUP BY customer_code
ORDER BY total_quantity DESC
LIMIT 1;

-- Compare E-Commerce vs Brick & Mortar customers by total sales amount.
SELECT
    c.customer_type,
    SUM(t.sales_amount) AS total_sales
FROM sales.transactions AS t
JOIN sales.customers AS c
    ON t.customer_code = c.customer_code
GROUP BY c.customer_type
ORDER BY total_sales DESC;

-- Which customer type has the highest average sales amount per transaction row?
-- Confirm whether each row represents a transaction or a transaction line before interpreting this as average order value.
SELECT
    c.customer_type,
    ROUND(AVG(t.sales_amount), 2) AS average_sales_amount_per_row
FROM sales.transactions AS t
JOIN sales.customers AS c
    ON t.customer_code = c.customer_code
GROUP BY c.customer_type
ORDER BY average_sales_amount_per_row DESC;
