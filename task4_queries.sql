USE sakila;

SELECT * FROM superstore LIMIT 10;

SELECT `Order Date`, `Category`, Sales
FROM superstore
WHERE `Category` = 'Furniture'
ORDER BY Sales DESC;

SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT `Sub-Category`, AVG(Profit) AS Avg_Profit
FROM superstore
GROUP BY `Sub-Category`;

SELECT `Order Date`, Sales
FROM superstore
WHERE Sales > (SELECT AVG(Sales) FROM superstore);

SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 5;

CREATE INDEX idx_category ON superstore(Category(50));













