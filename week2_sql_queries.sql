use SalesDB

--SELECT * FROM [SQL_Sales_Dataset_200_Rows.xlsx - Sheet1];

---EXEC sp_rename '[SQL_Sales_Dataset_200_Rows.xlsx - Sheet1]','Sales_data';

SELECT*FROM Sales_data;

---- Query a sample database to find top customers, average order values.

---top customers

SELECT customer_name, SUM(total_price) AS total_spent,
 COUNT(order_id) AS total_orders
FROM Sales_data
GROUP BY customer_name
ORDER BY total_spent DESC;


-- Average order values.--
SELECT AVG(total_price) AS average_order_value
FROM Sales_data;
 
SELECT customer_name, 
       AVG(total_price) AS avg_order_value,
       COUNT(order_id) AS total_orders
FROM Sales_data
GROUP BY customer_name
ORDER BY avg_order_value DESC;