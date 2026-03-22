-- Total Sales
SELECT SUM(Sales) AS total_sales
FROM salestable;

-- Sales by Region
SELECT 
    Region,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY Region
ORDER BY total_sales DESC;

-- Top 10 Products
SELECT 
    `Product Name`,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

-- Sales by Category
SELECT 
    Category,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY Category
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT 
    `Order Month`,
    SUM(Sales) AS total_sales
FROM salestable
GROUP BY `Order Month`
ORDER BY `Order Month`;
