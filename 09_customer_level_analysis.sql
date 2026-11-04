
-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Customer-Level Performance Analysis
-- Purpose: Identify high-value customers
-- =========================================================

USE ecommerce_sales_db;

SELECT
    `Customer ID`,
    `Customer Name`,
    COUNT(*) AS total_orders,
    SUM(Quantity) AS total_quantity_purchased,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Sales), 2) AS average_order_value
FROM sales_cleaned
GROUP BY
    `Customer ID`,
    `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;