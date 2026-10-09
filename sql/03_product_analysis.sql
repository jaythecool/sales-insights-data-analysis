-- Sales Insights Data Analysis
-- 03: Product Analysis

-- Find the top 10 products by total sales amount.
SELECT
    product_code,
    SUM(sales_amount) AS total_sales
FROM sales.transactions
GROUP BY product_code
ORDER BY total_sales DESC
LIMIT 10;

-- Find the top 10 products by total quantity sold.
SELECT
    product_code,
    SUM(sales_qty) AS total_quantity
FROM sales.transactions
GROUP BY product_code
ORDER BY total_quantity DESC
LIMIT 10;

-- Compare Own Brand vs Distribution products by total sales amount.
SELECT
    p.product_type,
    SUM(t.sales_amount) AS total_sales
FROM sales.transactions AS t
JOIN sales.products AS p
    ON t.product_code = p.product_code
GROUP BY p.product_type
ORDER BY total_sales DESC;
