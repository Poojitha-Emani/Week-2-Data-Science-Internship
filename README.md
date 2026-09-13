# Week-2-Data-Science-Internship
--
### Skill Nexis Internship — Week 2
Remote Internship at Skill Nexis — Data Analyst role. Week 2 submission covering SQL and Python for Data Analysis.
---
## Overview & Objective
This week's task was to analyze a 200-row sales dataset — finding top customers and average order values using SQL, and exploring the same data (cleaning, grouping, sorting, correlation) using Python.
---
## Dataset
- SQL_Sales_Dataset_200_Rows — 200 sales records with order_id, customer_name, order_date, category, sub_category, product_name, quantity, unit_price, total_price, and region.
---
## Part 1: SQL for Data Analysis
- Used GROUP BY, SUM, and ORDER BY to rank customers by total spend; AVG for average order value per customer; a JOIN with a customer-region reference table; a subquery to compare each customer against the overall average; and CASE statements to label customers as High Value/Regular and Above/Below Average.
---
## Part 2: Python for Data Analysis
- Loaded the CSV with Pandas, checked for missing values and duplicates (none found), grouped by category for total revenue, sorted by region and total price, and built a correlation matrix with a heatmap for the numerical columns.
---
## Files in this Repository
- week2_sql_queries.sql — SQL queries for top customers and average order value
- Week2_practice_set.py.ipynb — Python notebook for the 5 data analysis tasks
- SQL_Sales_Dataset_200_Rows.csv — dataset used
- corr_heatmap_practice set.png — correlation heatmap output
---
## Tools Used
SQL Server Management Studio (T-SQL), Python (Pandas, Matplotlib, Seaborn), Jupyter Notebook / VS Code, GitHub.
---
## Output
- Top customer: Lynn Garrison — ₹47,940, followed by Debbie Turner, Megan Charles, Michelle Beltran, and Rick -Sanford
- Revenue by category: Furniture (₹7,14,399) > Grocery (₹6,72,147) > Electronics (₹5,49,302) > Clothing (₹4,84,259)
- total_price correlates moderately with quantity (0.66) and unit_price (0.67); quantity and unit_price are nearly uncorrelated (0.05) — expected, since total_price = quantity × unit_price
----
## Conclusion
The same dataset was explored from two angles — SQL for direct querying and Python for deeper analysis — both pointing to Furniture and Grocery as the strongest revenue categories, with a small group of high-spending customers driving a large share of total sales.
---
* Submitted as part of the Skill Nexis Data Science Internship - week 2*
