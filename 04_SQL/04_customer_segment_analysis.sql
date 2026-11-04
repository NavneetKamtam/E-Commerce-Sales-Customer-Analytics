-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Customer Segment Performance Analysis
-- Purpose: Compare sales, profit and order value by segment
-- =========================================================

USE ecommerce_sales_db;

SELECT
    `Customer Segment`,
    COUNT(*) AS total_orders,
    COUNT(DISTINCT `Customer ID`) AS unique_customers,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Sales), 2) AS average_order_value,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned
GROUP BY `Customer Segment`
ORDER BY total_sales DESC;
