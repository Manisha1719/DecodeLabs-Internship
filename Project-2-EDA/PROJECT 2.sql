use decodelabs_project1;

-- VIEW DATASET
SELECT *
FROM ecommerce_data;

-- TOTAL RECORDS
SELECT COUNT(*) AS TOTAL_RECORDS
FROM ecommerce_data;

-- AVERAGE ORDER VALUE
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM ecommerce_data;

-- MAXIMUM ORDER values
SELECT MAX(TotalPrice) AS Highest_Order_Value
FROM ecommerce_data; 

 -- MINIMUM ORDER values
SELECT MIN(TotalPrice) AS LOWEST_Order_Value
FROM ecommerce_data;

-- TOP SELLING PRODUCTS
SELECT PRODUCT,
SUM(QUANTITY) AS Total_Sold
FROM ecommerce_data
GROUP BY Product 
ORDER BY Total_Sold DESC;

-- REVENUE BY PRODUCT
SELECT PRODUCT,
SUM(TotalPrice) AS Revenue
FROM ecommerce_data
GROUP BY Product
ORDER BY Revenue DESC;

-- ORDERS BY PAYMENT METHOD
SELECT PaymentMethod,
COUNT(*) AS Total_Orders
FROM ecommerce_data
GROUP BY PaymentMethod;

-- ORDER STATUS ANALYSIS
SELECT OrderStatus,
COUNT(*) AS Total_Orders
FROM ecommerce_data
GROUP BY OrderStatus;

-- REFERRAL SOURCE ANALYSIS
SELECT ReferralSource,
COUNT(*) AS Total_Customers
FROM ecommerce_data
GROUP BY ReferralSource
ORDER BY Total_Customers DESC;

-- OUTLIER DETECTION (HIGH VALUE ORDERS)
SELECT *
FROM ecommerce_data
ORDER BY TotalPrice DESC
LIMIT 10;

-- MONTHLY SALES TREND
SELECT 
MONTH(Date) AS Month_No,
SUM(TotalPrice) AS Revenue
FROM ecommerce_data
GROUP BY MONTH(DATE)
ORDER BY Month_No;
















