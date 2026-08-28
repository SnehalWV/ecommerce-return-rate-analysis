CREATE DATABASE ecommerce_returns_db;
USE ecommerce_returns_db;

SHOW DATABASES;

SHOW TABLES;

RENAME TABLE ecommerce_returns_cleaned TO ecommerce_return;


SELECT COUNT(*) AS Total_rows
FROM ecommerce_return;

SELECT *
FROM ecommerce_return
LIMIT 10;

DESCRIBE ecommerce_return;

SELECT COUNT(*) AS Returned_Orders
FROM ecommerce_return
WHERE Return_Status =1;


-- Overall Return Rate
SELECT 
ROUND(
SUM(Return_Status)*100/COUNT(*)
,2) AS Retrun_Rate
FROM ecommerce_return;


SELECT Order_Date
FROM ecommerce_return
LIMIT 10;


ALTER TABLE ecommerce_return
MODIFY Order_Date datetime;


UPDATE ecommerce_return
SET Return_Date=null
WHERE TRIM(Return_Date)= "";


ALTER TABLE ecommerce_return
MODIFY Return_Date datetime;


SELECT Return_Status ,
COUNT(*) AS Total,
COUNT(Return_Date) AS Dates_Present
FROM ecommerce_return
GROUP BY Return_Status;



SELECT Product_Category,
COUNT(*) AS Total_Products
FROM ecommerce_return
GROUP BY Product_Category;


-- Category-wise Return Rate

SELECT Product_Category,
COUNT(*) AS Total_Orders,
SUM(Return_Status) AS Returned_Orders,
ROUND(
SUM(Return_Status) *100/COUNT(*),
2) AS Return_Rate
FROM ecommerce_return
GROUP BY Product_Category
ORDER BY Return_Rate DESC;


-- Shipping-wise Return Rate

SELECT Shipping_Method,
COUNT(*) AS Total_Orders,
SUM(Return_Status) AS Returned_Orders,
ROUND(
SUM(Return_Status) *100/COUNT(*),
2) AS Return_Rate
FROM ecommerce_return
GROUP BY Shipping_Method
ORDER BY Return_Rate DESC;


-- Payment Method Return Rate

SELECT
    Payment_Method,
    COUNT(*) AS Total_Orders,
    SUM(Return_Status) AS Returned_Orders,
    ROUND(
        SUM(Return_Status) * 100.0 / COUNT(*),
        2
    ) AS Return_Rate
FROM ecommerce_return
GROUP BY Payment_Method
ORDER BY Return_Rate DESC;




SELECT
    Discount_band,
    COUNT(*) AS Total_Orders,
    SUM(Return_Status) AS Returned_Orders,
    ROUND(
        SUM(Return_Status) * 100.0 / COUNT(*),
        2
    ) AS Return_Rate
FROM ecommerce_return
GROUP BY Discount_band
ORDER BY Return_Rate DESC;





SELECT
    User_Location,
    COUNT(*) AS Total_Orders,
    SUM(Return_Status) AS Returned_Orders,
    ROUND(
        SUM(Return_Status) * 100.0 / COUNT(*),
        2
    ) AS Return_Rate
FROM ecommerce_return
GROUP BY User_Location
ORDER BY Return_Rate DESC;


-- Product Price Band

SELECT 
CASE
   WHEN Product_Price <100 THEN '0-100'
   WHEN Product_Price <200 THEN '100-200'
   WHEN Product_Price <300 THEN '200-300'
   WHEN Product_Price <400 THEN '300-400'
   ELSE '400+'
   END AS Price_Band,
   COUNT(*) AS Orders,
   SUM(Return_Status) AS Return_Order,
   ROUND(
   SUM(Return_Status)*100/COUNT(*),2
   ) AS Return_Rate
FROM ecommerce_return
GROUP BY Price_Band
ORDER BY Price_Band DESC; 



SELECT
    Order_Quantity,
    COUNT(*) AS Orders,
    SUM(Return_Status) AS Returns,
    ROUND(SUM(Return_Status) * 100.0 / COUNT(*), 2) AS Return_Rate
FROM ecommerce_return
GROUP BY Order_Quantity
ORDER BY Order_Quantity;
   
   
   
SELECT
    CASE
        WHEN User_Age < 25 THEN '18-24'
        WHEN User_Age < 35 THEN '25-34'
        WHEN User_Age < 45 THEN '35-44'
        WHEN User_Age < 55 THEN '45-54'
        ELSE '55+'
    END AS Age_Band,
    COUNT(*) AS Orders,
    SUM(Return_Status) AS Returns,
    ROUND(SUM(Return_Status) * 100.0 / COUNT(*), 2) AS Return_Rate
FROM ecommerce_return
GROUP BY Age_Band
ORDER BY Return_Rate  DESC;


SELECT
    COUNT(*) AS Total_Orders,
    SUM(Return_Status) AS Total_Returns,
    ROUND(SUM(Return_Status) * 100.0 / COUNT(*), 2) AS Overall_Return_Rate
FROM ecommerce_return;
