
-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Script: Overall Business KPI Summary
-- Purpose: Calculate the main business performance metrics
-- =========================================================

USE ecommerce_sales_db;

SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT `Customer ID`) AS total_customers,
    SUM(Quantity) AS total_quantity_sold,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Sales), 2) AS average_order_value,
    ROUND(
        SUM(Profit) * 100.0 / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct,
    SUM(CASE
        WHEN `Order Status` = 'Completed' THEN 1
        ELSE 0
    END) AS completed_orders,
    SUM(CASE
        WHEN `Order Status` = 'Cancelled' THEN 1
        ELSE 0
    END) AS cancelled_orders,
    SUM(CASE
        WHEN `Order Status` = 'Returned' THEN 1
        ELSE 0
    END) AS returned_orders,
    ROUND(
        SUM(CASE WHEN `Order Status` = 'Cancelled' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate_pct,
    ROUND(
        SUM(CASE WHEN `Order Status` = 'Returned' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS return_rate_pct
FROM sales_cleaned;
