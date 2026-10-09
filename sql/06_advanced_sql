-- Sales Insights Data Analysis
-- 06: Advanced SQL (CTEs and Window Functions)

-- For each year, find the top 5 customers by total sales.
-- ROW_NUMBER assigns a unique rank within each year.
-- If ties should share a rank, consider RANK() or DENSE_RANK() instead.
WITH customer_sales AS (
    SELECT
        YEAR(order_date) AS year,
        customer_code,
        SUM(sales_amount) AS total_sales
    FROM sales.transactions
    GROUP BY YEAR(order_date), customer_code
),
customer_ranks AS (
    SELECT
        year,
        customer_code,
        total_sales,
        ROW_NUMBER() OVER (
            PARTITION BY year
            ORDER BY total_sales DESC
        ) AS customer_rank
    FROM customer_sales
)
SELECT
    year,
    customer_code,
    total_sales,
    customer_rank
FROM customer_ranks
WHERE customer_rank <= 5
ORDER BY year, customer_rank;

-- Calculate year-over-year (YoY) sales growth for each year.
-- NULLIF avoids division by zero; the first year has no previous-year comparison.
WITH yearly_sales AS (
    SELECT
        YEAR(order_date) AS year,
        SUM(sales_amount) AS total_sales
    FROM sales.transactions
    GROUP BY YEAR(order_date)
),
yoy_growth AS (
    SELECT
        year,
        total_sales,
        LAG(total_sales) OVER (ORDER BY year) AS previous_year_sales
    FROM yearly_sales
)
SELECT
    year,
    total_sales,
    previous_year_sales,
    ROUND(
        (total_sales - previous_year_sales)
        / NULLIF(previous_year_sales, 0) * 100,
        2
    ) AS yoy_growth_pct
FROM yoy_growth
ORDER BY year;
