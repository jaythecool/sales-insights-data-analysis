-- Sales Insights Data Analysis
-- 07: Data Quality Checks

-- Inspect distinct currency values to identify inconsistent strings.
-- CONCAT with brackets makes leading/trailing whitespace easier to notice.
SELECT DISTINCT
    CONCAT('[', currency, ']') AS currency_value
FROM sales.transactions
ORDER BY currency_value;

-- Count records where currency is INR followed by a carriage return.
SELECT COUNT(*) AS inr_carriage_return_rows
FROM sales.transactions
WHERE currency = CONCAT('INR', CHAR(13));

-- Count records where currency is USD.
SELECT COUNT(*) AS usd_rows
FROM sales.transactions
WHERE currency = 'USD';

-- Count records where currency is USD followed by a carriage return.
SELECT COUNT(*) AS usd_carriage_return_rows
FROM sales.transactions
WHERE currency = CONCAT('USD', CHAR(13));

-- Inspect USD values with and without the carriage return.
SELECT *
FROM sales.transactions
WHERE currency IN ('USD', CONCAT('USD', CHAR(13)));

-- Important follow-up:
-- Validate the meaning and units of INR and USD amounts before aggregating
-- them into a single financial total. Do not simply strip the currency labels
-- or combine the amounts unless the source data's currency conversion rules are known.
