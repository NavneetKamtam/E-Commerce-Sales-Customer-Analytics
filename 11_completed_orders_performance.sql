-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Completed Orders Performance
-- Purpose: Measure performance using completed orders only
-- =========================================================

USE ecommerce_sales_db;

SELECT
    COUNT(*) AS completed_orders,
    COUNT(DISTINCT `Customer ID`) AS unique_customers,
    SUM(Quantity) AS quantity_sold,
    ROUND(SUM(Sales), 2) AS completed_sales,
    ROUND(SUM(Profit), 2) AS completed_profit,
    ROUND(AVG(Sales), 2) AS average_order_value,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct,
    CASE
        WHEN SUM(Profit) > 0 THEN 'Profit'
        WHEN SUM(Profit) < 0 THEN 'Loss'
        ELSE 'Break-even'
    END AS recorded_profit_status
FROM sales_cleaned
WHERE `Order Status` = 'Completed';