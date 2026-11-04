-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Regional Performance Analysis
-- Purpose: Compare sales and profit across states
-- =========================================================

USE ecommerce_sales_db;

SELECT
    State,
    COUNT(*) AS total_orders,
    COUNT(DISTINCT `Customer ID`) AS unique_customers,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned
GROUP BY State
ORDER BY total_sales DESC;
