-- Task 3: SQL for Data Analysis

-- 1. View all customers
SELECT * FROM customers;

-- 2. View all orders
SELECT * FROM orders;

-- 3. Filter data (Region = West)
SELECT * FROM orders
WHERE Region = 'West';

-- 4. Sort data by Sales (Descending)
SELECT * FROM orders
ORDER BY Sales DESC;

-- 5. Total Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category;

-- 6. INNER JOIN (customers + orders)
SELECT o.Order_ID, c.Customer_Name, o.Category, o.Sales
FROM orders o
INNER JOIN customers c
ON o.Customer_ID = c.Customer_ID;

-- 7. Subquery (Sales greater than average)
SELECT * FROM orders
WHERE Sales > (SELECT AVG(Sales) FROM orders);

-- 8. Create View (Top Sales)
CREATE VIEW top_sales AS
SELECT * FROM orders
WHERE Sales > 500;

-- 9. View the created view
SELECT * FROM top_sales;