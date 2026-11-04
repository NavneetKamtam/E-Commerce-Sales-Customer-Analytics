-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Product Performance Analysis
-- Purpose: Identify top-selling and most profitable products
-- =========================================================

USE ecommerce_sales_db;

SELECT
    Product,
    SUM(Quantity) AS total_quantity_sold,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned
GROUP BY Product
ORDER BY total_sales DESC;