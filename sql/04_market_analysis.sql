-- Sales Insights Data Analysis
-- 04: Market and Geographic Analysis

-- Which market/city has the highest total sales amount?
SELECT
    m.markets_name AS city,
    SUM(t.sales_amount) AS total_sales
FROM sales.transactions AS t
JOIN sales.markets AS m
    ON t.market_code = m.markets_code
GROUP BY m.markets_name
ORDER BY total_sales DESC
LIMIT 1;

-- Which zone has the highest total sales amount?
SELECT
    m.zone,
    SUM(t.sales_amount) AS total_sales
FROM sales.transactions AS t
JOIN sales.markets AS m
    ON t.market_code = m.markets_code
GROUP BY m.zone
ORDER BY total_sales DESC
LIMIT 1;

-- Which market/city has the highest average sales amount per transaction row?
-- Confirm the transaction table's grain before interpreting this as average order value.
SELECT
    m.markets_name AS city,
    AVG(t.sales_amount) AS average_sales_amount_per_row
FROM sales.transactions AS t
JOIN sales.markets AS m
    ON t.market_code = m.markets_code
GROUP BY m.markets_name
ORDER BY average_sales_amount_per_row DESC
LIMIT 1;
