-- Sales Insights Data Analysis
-- 05: Time-Series Analysis

-- Calculate total sales for each month, broken down by year.
-- Ordering by year and month number preserves chronological order.
SELECT
    YEAR(d.date) AS year,
    MONTH(d.date) AS month_number,
    d.month_name AS month,
    SUM(t.sales_amount) AS total_sales
FROM sales.transactions AS t
JOIN sales.date AS d
    ON t.order_date = d.date
GROUP BY
    YEAR(d.date),
    MONTH(d.date),
    d.month_name
ORDER BY year, month_number;

-- Which month has the highest total sales across all years combined?
-- If month names repeat across years, this combines all Januarys, all Februarys, etc.
SELECT
    d.month_name AS month,
    SUM(t.sales_amount) AS total_sales
FROM sales.transactions AS t
JOIN sales.date AS d
    ON d.date = t.order_date
GROUP BY d.month_name
ORDER BY total_sales DESC
LIMIT 1;

-- What was the total sales amount (revenue measure in the source data) in 2018?
SELECT
    SUM(sales_amount) AS total_sales
FROM sales.transactions
WHERE YEAR(order_date) = 2018;

-- What was the total sales amount in October 2017?
SELECT
    SUM(sales_amount) AS total_sales
FROM sales.transactions
WHERE YEAR(order_date) = 2017
  AND MONTH(order_date) = 10;

-- What was the total quantity sold in June 2020?
SELECT
    SUM(sales_qty) AS total_quantity
FROM sales.transactions
WHERE YEAR(order_date) = 2020
  AND MONTH(order_date) = 6;
