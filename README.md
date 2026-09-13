# Week-2-Data-Science-Internship
# Week 2 - SQL & Python for Data Science with Python Assignment
### Skill Nexis Data Science Internship (Remote)

## Overview
This repository contains the completed Week 2 assignment for the Skill 
Nexis Data Science Internship, covering SQL querying and Python-based 
data analysis. The tasks were performed on a 200-row sales dataset 
(SQL_Sales_Dataset_200_Rows) covering orders, customers, categories, 
and regions.

## Objective
To query, clean, and analyze sales data using SQL Server and Python by 
applying core data analytics techniques - including aggregations, 
joins, subqueries, CASE statements, missing value handling, grouping, 
sorting, and correlation analysis - and to identify top customers, 
average order values, and category-wise revenue trends.

## Dataset
SQL_Sales_Dataset_200_Rows - 200 sales records with the following columns:
order_id, customer_name, order_date, category, sub_category, 
product_name, quantity, unit_price, total_price, and region.

## Tools Used
- Microsoft SQL Server Management Studio (T-SQL)
- Python (Pandas, Matplotlib, Seaborn)
- Jupyter Notebook / VS Code
- GitHub (Version Control & Submission)

## Files
1. week2_sql_queries.sql - SQL queries for top customers and average order value
2. Week2_practice_set.py.ipynb - Python notebook for the 5 data analysis tasks
3. corr_heatmap_practice set.png - Correlation heatmap output
4. SQL_Sales_Dataset_200_Rows.csv - Dataset used


---

## Part 1: SQL for Data Analysis
**Task:** Query a sample database to find top customers and average order values.

- Created a `customer_info` reference table and used a JOIN with the 
  main sales table to bring in region information.
- Used GROUP BY, SUM, and ORDER BY to rank customers by total spend, 
  identifying the top customers.
- Used AVG to calculate the average order value per customer.
- Used a subquery to compare each customer's total spend / average 
  order value against the overall dataset average.
- Used CASE statements to label customers as "High Value Customer" / 
  "Regular Customer" and "Above Average" / "Below Average".
- Used WHERE clauses to filter out invalid rows (e.g. quantity > 0, 
  region not null) before aggregating.

## Part 2: Python for Data Analysis

### Task 1: Load CSV & Display Basic Info
- Loaded the dataset using `pd.read_csv()`.
- Reviewed shape, column data types, and summary statistics using 
  `df.info()` and `df.describe()`.

### Task 2: Handle Missing Values & Duplicates
- Checked for missing values using `df.isnull().sum()`.
- Checked for duplicate rows using `df.duplicated().sum()`.
- Result: 0 missing values and 0 duplicate rows - the dataset was 
  already clean, but `dropna()` and `drop_duplicates()` were applied 
  as a standard cleaning step.

### Task 3: Group by Category, Find Total Revenue
- Used `df.groupby('category')['total_price'].sum()` to calculate 
  total revenue for each product category, sorted from highest to 
  lowest.

### Task 4: Sort by Multiple Columns
- Used `df.sort_values(by=['region', 'total_price'], ascending=[True, False])` 
  to sort records first by region (A-Z), then by total price within 
  each region (highest first).

### Task 5: Correlation Matrix for Numerical Columns
- Selected the numerical columns (quantity, unit_price, total_price) 
  and calculated a correlation matrix using `df.corr()`.
- Visualized the matrix as a heatmap using Seaborn and saved it as 
  `corr_heatmap.png`.

---

## Output
- **Top customer:** Lynn Garrison - ₹47,940 total spend, followed by 
  Debbie Turner (₹44,990), Megan Charles (₹44,620), Michelle Beltran 
  (₹42,471), and Rick Sanford (₹41,211).
- A cleaned dataset confirmed with 0 duplicate rows and no missing values.
- **Revenue by category:** Furniture (₹7,14,399) > Grocery (₹6,72,147) 
  > Electronics (₹5,49,302) > Clothing (₹4,84,259).
- **Correlation matrix:** total_price is moderately correlated with 
  quantity (0.66) and unit_price (0.67), while quantity and unit_price 
  are nearly uncorrelated with each other (0.05) - expected, since 
  total_price = quantity × unit_price.
- A correlation heatmap visualizing these relationships between the 
  numerical columns.

---

## Conclusion
This assignment strengthened my SQL and Python skills in querying, 
data cleaning, grouping, sorting, and correlation analysis. Exploring 
the same sales dataset through both SQL and Python helped me understand 
how different tools can be used to answer the same business questions 
- such as identifying top customers and revenue-driving categories - 
and reinforced the typical data analyst workflow: query or load the 
data, clean it, analyze it statistically, and summarize the findings 
clearly.

---
*Submitted as part of the Skill Nexis Data Science Internship - Week 2 - Remote Internship*
