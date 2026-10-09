-- Sales Insights Data Analysis
-- 01: Exploratory Analysis and Overall Metrics
-- Database/table context: sales.transactions

-- Inspect all transaction records.
SELECT *
FROM sales.transactions;

-- What is the total sales amount generated across all transactions?
SELECT SUM(sales_amount) AS total_sales_amount
FROM sales.transactions;

-- What is the total quantity of products sold?
SELECT SUM(sales_qty) AS total_quantity_sold
FROM sales.transactions;

-- How many unique customers have made at least one purchase?
-- Note: sales_qty > 0 is used as the purchase criterion.
SELECT COUNT(DISTINCT customer_code) AS unique_purchasing_customers
FROM sales.transactions
WHERE sales_qty > 0;

-- How many unique products appear in the transactions table?
-- This counts products present in the table, not necessarily only positive-quantity sales.
SELECT COUNT(DISTINCT product_code) AS unique_products
FROM sales.transactions;

-- How many transactions/rows were recorded in each year?
-- If one transaction can contain multiple rows, this is a row count rather than a distinct order count.
SELECT
    YEAR(order_date) AS year,
    COUNT(*) AS transaction_rows
FROM sales.transactions
GROUP BY YEAR(order_date)
ORDER BY year;

-- Calculate total sales amount and quantity sold for each year.
SELECT
    YEAR(order_date) AS year,
    SUM(sales_amount) AS total_sales,
    SUM(sales_qty) AS total_quantity
FROM sales.transactions
GROUP BY YEAR(order_date)
ORDER BY year;
