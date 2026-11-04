
-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Product Category Performance Analysis
-- Purpose: Compare performance across product categories
-- =========================================================

USE ecommerce_sales_db;

SELECT
    Category,
    COUNT(*) AS total_orders,
    SUM(Quantity) AS total_quantity_sold,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned
GROUP BY Category
ORDER BY total_sales DESC;
