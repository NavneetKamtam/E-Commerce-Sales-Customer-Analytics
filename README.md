# E-Commerce Sales & Customer Analytics

## Project Overview

This project analyzes e-commerce sales data to understand business performance, product sales, customer behavior, regional performance, payment methods, and order statuses.

The project follows an end-to-end Data Analyst workflow using Excel, Power Query, MySQL, SQL, and Power BI.

## Business Objectives

- Measure overall sales, profit, and profit margin.
- Analyze monthly sales and profit trends.
- Identify top-performing products and categories.
- Compare customer segments and customer types.
- Evaluate sales and profitability by state.
- Understand payment method usage.
- Analyze completed, cancelled, and returned orders.
- Identify high-value customers.
- Validate SQL results against Excel analysis.
- Present business insights through an interactive Power BI dashboard.

## Tools and Technologies

- Microsoft Excel 2019
- Excel Power Query
- MySQL
- MySQL Workbench
- SQL
- Power BI

## Dataset Overview

- Total records: 3,000
- Unique order IDs: 3,000
- Unique customers: 784
- Unique products: 15
- Number of columns: 18
- Analysis period: January – September 2026

The dataset includes order details, customer information, products, categories, locations, quantities, prices, discounts, sales, profit, payment methods, and order statuses.

## Data Cleaning

The data preparation process included:

- Removing blank rows.
- Removing verified duplicate records.
- Merging customer master data.
- Filling missing customer names and cities using the customer master.
- Standardizing inconsistent state, category, and payment mode values.
- Setting appropriate data types.
- Validating key fields and financial values.
- Creating a cleaned dataset for analysis.

## Excel Analysis

Excel and Power Query were used for:

- Data cleaning and transformation.
- KPI calculations.
- Monthly sales and profit analysis.
- Product and category analysis.
- Customer and customer segment analysis.
- Regional analysis.
- Payment method analysis.
- Order status analysis.
- Data quality validation.

## SQL Analysis

SQL scripts cover:

1. Data validation and order-status analysis
2. Monthly sales and profit trends
3. Product performance
4. Customer segment performance
5. Regional performance by state
6. Payment method analysis
7. Customer type analysis
8. Product category performance
9. Customer-level performance
10. Overall business KPI summary
11. Completed-orders performance
12. Final data validation

All 12 SQL analysis and validation scripts are saved in the `04_SQL` folder.

## Power BI Dashboard

The Power BI dashboard contains six completed report pages:

1. **Executive Overview** – Overall sales, profit, profit margin, monthly trends, and category performance.
2. **Customer Analysis** – Customer segment and customer type sales and profit analysis.
3. **Regional Analysis** – Sales and profit performance across states.
4. **Payment Analysis** – Sales and profit by payment method, with a payment mode slicer.
5. **Order Status Analysis** – Completed, cancelled, and returned orders, including sales and profit.
6. **Product Analysis** – Product sales and profit performance, with a category slicer.

The dashboard uses a consistent design with KPI cards, charts, a common header, and interactive filtering where appropriate.

## Key Findings

- Total recorded sales: ₹58,159,801.49
- Total recorded profit: ₹8,207,879.29
- Overall recorded profit margin: 14.11%
- Total order records: 3,000
- Unique customers: 784
- Unique products: 15
- Completed orders: 2,643 (88.10%)
- Cancelled orders: 205 (6.83%)
- Returned orders: 152 (5.07%)
- Completed-order sales: ₹51,814,875.52
- Completed-order recorded profit: ₹7,338,479.23
- Completed-order profit margin: 14.16%

## Business Insights

- Electronics generated the highest recorded sales and profit among product categories.
- Laptop was the best-selling product and the highest-profit product.
- Gujarat generated the highest sales among the analyzed states.
- UPI was the most-used payment method, accounting for approximately 40.20% of order records.
- Consumer customers generated the largest total sales.
- Small Business customers had the highest average order value among customer segments.
- Completed orders had positive recorded profit in the dataset.

## Validation

SQL validation confirmed:

- 3,000 total records.
- 3,000 unique order IDs.
- 784 unique customers.
- No NULL values in the six validated key fields.
- Order-status counts add up to 3,000.
- Sales, profit, and profit margin match the Excel analysis.

## Important Limitation

The recorded profit values are based on the supplied dataset. They should not be interpreted as final company net profit unless all relevant operating expenses, taxes, and accounting adjustments are included.

The dataset contains synthetic or practice-project data and should not be presented as actual company financial information.

## Project Structure

- `01_Raw_Data` — Original dataset
- `02_Cleaned_Data` — Cleaned dataset for analysis and SQL import
- `03_Excel_Analysis` — Excel analysis and KPI summaries
- `04_SQL` — SQL analysis and validation scripts
- `05_PowerBI` — Power BI dashboard files
- `06_Screenshots` — Project screenshots
- `07_Documentation` — Project documentation and data-quality records
- `README.md` — Project overview and documentation

## Project Status

- Excel data cleaning and analysis: Completed
- SQL analysis and validation: Completed
- Power BI dashboard: Completed (6 pages)
- Project folder organization: Completed
- Project documentation: Completed
- Dashboard screenshots: Completed (6 screenshots)
- GitHub publication: In Progress
- Portfolio and LinkedIn presentation: Pending

## Next Steps

- Upload the project folders and files to GitHub.
- Verify the uploaded files and folder structure.
- Review the published project README and screenshots.
- Add the project to my Data Analyst portfolio and resume.
- Prepare project explanations and business insights for interviews.
