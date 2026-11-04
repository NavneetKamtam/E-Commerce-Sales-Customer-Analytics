-- Project: E-Commerce Sales & Customer Analytics
-- Script: Monthly Sales and Profit Trends

USE ecommerce_sales_db;

SELECT
    YEAR(`Order Date`) AS order_year,
    MONTH(`Order Date`) AS order_month,
    DATE_FORMAT(`Order Date`, '%b') AS month_name,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned
GROUP BY
    YEAR(`Order Date`),
    MONTH(`Order Date`),
    DATE_FORMAT(`Order Date`, '%b')
ORDER BY
    order_year,
    order_month;