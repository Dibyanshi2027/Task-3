 🔷 Objective

The objective of this task is to use SQL queries to extract, manipulate, and analyze structured data from a database.

🔷 Tools Used
 DB Browser for SQLite
 SQL (Structured Query Language)

 🔷 Dataset
Two datasets were used
`customers.csv`
 `orders.csv`
These datasets contain information about customers, orders, sales, and categories.

 🔷 Steps Performed
 1. Created a new SQLite database (`ecommerce.db`)
2. Imported CSV files into database as tables:
 customers
    orders
3. Verified data using SELECT queries
4. Performed various SQL operations:

    Filtering using WHERE
    Sorting using ORDER BY
    Aggregation using GROUP BY
    Joining tables using INNER JOIN
    Subqueries
    Created Views

 🔷 SQL Queries Used
 1. View all customers
SELECT * FROM customers;

2. View all orders
SELECT * FROM orders;

 3. Filter data (Region = West)
SELECT * FROM orders
WHERE Region = 'West';

 4. Sort data by Sales
  SELECT * FROM orders
ORDER BY Sales DESC;
 
  5. Total Sales by Category
SELECT Category, SUM(Sales)
FROM orders
GROUP BY Category;

 6. Join Customers and Orders
SELECT o.Order_ID, c.Customer_Name, o.Category, o.Sales
FROM orders o
INNER JOIN customers c
ON o.Customer_ID = c.Customer_ID;

7. Subquery (Above average sales)
SELECT * FROM orders
WHERE Sales > (SELECT AVG(Sales) FROM orders);

 8. Create View
CREATE VIEW top_sales AS
SELECT * FROM orders
WHERE Sales > 500;

🔷 Key Learnings
Learned how to import CSV data into SQLite
 Understood basic SQL operations (SELECT, WHERE, GROUP BY)
 Learned how to use JOIN to combine tables
 Gained knowledge of subqueries and views
Improved data analysis skills using SQL

 🔷 Outcome
Successfully performed data analysis using SQL queries and gained hands-on experience with database operations.

