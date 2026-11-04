
-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Payment Method Analysis
-- Purpose: Compare payment methods by orders, sales and profit
-- =========================================================

USE ecommerce_sales_db;

SELECT
    `Payment Mode`,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales_cleaned),
        2
    ) AS order_percentage,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned
GROUP BY `Payment Mode`
ORDER BY total_orders DESC;