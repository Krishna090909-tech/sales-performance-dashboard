# sales-performance-dashboard
Sales analysis project using SQL and Power BI
CREATE DATABASE sales_project;
USE sales_project;
SELECT * FROM salestable LIMIT 10;
SHOW COLUMNS FROM salestable;

SELECT SUM(Sales) AS total_sales
FROM salestable;

SELECT 
    Region,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY Region
ORDER BY total_sales DESC;

SELECT 
    `Product Name`,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

SELECT 
    Category,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY Category
ORDER BY total_sales DESC;

SELECT 
    `Order Month`,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY `Order Month`
ORDER BY `Order Month`;
