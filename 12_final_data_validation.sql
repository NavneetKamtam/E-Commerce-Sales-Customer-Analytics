
-- ============================================================
-- PROJECT: E-Commerce Sales & Customer Analytics
-- SCRIPT: 12_final_data_validation.sql
-- DATABASE: ecommerce_sales_db
-- TABLE: sales_cleaned
--
-- PURPOSE:
-- Perform final validation of the imported and cleaned data.
--
-- VALIDATION CHECKS:
-- 1. Total rows, unique orders, and unique customers
-- 2. Missing values in important columns
-- 3. Order-status distribution and percentages
-- 4. Overall sales, profit, and profit margin reconciliation
--
-- Expected dataset: 3,000 rows
-- ============================================================


-- ============================================================
-- PART 1: SELECT THE PROJECT DATABASE
-- Purpose: Ensure all queries use the correct database.
-- ============================================================

USE ecommerce_sales_db;


-- ============================================================
-- PART 2: ROW COUNT AND UNIQUENESS VALIDATION
-- Purpose:
-- Check the number of records, distinct order IDs,
-- and distinct customers.
--
-- Expected:
-- total_rows = 3000
-- unique_order_ids = 3000
-- unique_customers = 784
-- ============================================================

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT `Order ID`) AS unique_order_ids,
    COUNT(DISTINCT `Customer ID`) AS unique_customers
FROM sales_cleaned;


-- ============================================================
-- PART 3: MISSING-VALUE VALIDATION
-- Purpose:
-- Count NULL values in important business columns.
--
-- Expected:
-- All six missing-value counts = 0
-- Note: This checks NULL values, not empty strings.
-- ============================================================

SELECT
    SUM(CASE
        WHEN `Order ID` IS NULL THEN 1 ELSE 0
    END) AS missing_order_id,

    SUM(CASE
        WHEN `Customer ID` IS NULL THEN 1 ELSE 0
    END) AS missing_customer_id,

    SUM(CASE
        WHEN `Order Date` IS NULL THEN 1 ELSE 0
    END) AS missing_order_date,

    SUM(CASE
        WHEN Sales IS NULL THEN 1 ELSE 0
    END) AS missing_sales,

    SUM(CASE
        WHEN Profit IS NULL THEN 1 ELSE 0
    END) AS missing_profit,

    SUM(CASE
        WHEN `Order Status` IS NULL THEN 1 ELSE 0
    END) AS missing_order_status
FROM sales_cleaned;


-- ============================================================
-- PART 4: ORDER-STATUS VALIDATION
-- Purpose:
-- Count orders by status and calculate their percentage
-- of all records.
--
-- Expected:
-- Completed = 2643 (88.10%)
-- Cancelled = 205 (6.83%)
-- Returned  = 152 (5.07%)
-- Total     = 3000 (100.00%)
-- ============================================================

SELECT
    `Order Status`,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM sales_cleaned),
        2
    ) AS percentage
FROM sales_cleaned
GROUP BY `Order Status`
ORDER BY total_orders DESC;


-- ============================================================
-- PART 5: FINANCIAL TOTAL RECONCILIATION
-- Purpose:
-- Recalculate total sales, total profit, and profit margin.
-- Compare these values with the Excel analysis.
--
-- Expected:
-- Total Sales   = 58159801.49
-- Total Profit  = 8207879.29
-- Profit Margin = 14.11%
-- ============================================================

SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) * 100.0 /
        NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM sales_cleaned;


-- ============================================================
-- END OF FINAL DATA VALIDATION
--
-- Review each Result Grid against the expected values above.
-- The results validate the imported data against the project's
-- established checks; they do not independently prove that
-- every record is free from all possible data-quality issues.
-- ============================================================
