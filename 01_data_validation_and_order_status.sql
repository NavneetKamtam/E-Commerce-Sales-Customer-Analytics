
-- =========================================================
-- Project: E-Commerce Sales & Customer Analytics
-- Purpose: SQL analysis and data validation
-- Database: ecommerce_sales_db
-- Table: sales_cleaned
-- =========================================================

USE ecommerce_sales_db;

-- Task 1: Verify total records
SELECT COUNT(*) AS total_rows
FROM sales_cleaned;

-- Task 2: Verify total sales and profit
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales_cleaned;

-- Task 3: Order status summary
SELECT
    `Order Status`,
    COUNT(*) AS total_orders
FROM sales_cleaned
GROUP BY `Order Status`
ORDER BY total_orders DESC;

-- Task 4: Order status percentages
SELECT
    `Order Status`,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales_cleaned),
        2
    ) AS percentage
FROM sales_cleaned
GROUP BY `Order Status`
ORDER BY total_orders DESC;

-- Task 5: Sales and profit by order status
SELECT
    `Order Status`,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales_cleaned
GROUP BY `Order Status`
ORDER BY total_sales DESC;
