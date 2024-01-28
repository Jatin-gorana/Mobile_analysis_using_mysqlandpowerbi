create schema mobile_db;
USE mobile_db;
SELECT * FROM mobile;

-- Check mobile features and price list
SELECT Phone_name, Price FROM mobile;

-- Find out the price of 5 most expensive phones 
SELECT * FROM mobile
ORDER BY Price DESC
LIMIT 5;

-- Find out the price of 5 most cheapest phones
SELECT * FROM mobile
ORDER BY Price ASC
LIMIT 5;

-- List of top 5 samsung phones with price and all features
SELECT Phone_name, Price, Operating_System_Type, 5G_Availability, Selfie_Camera, RAM_Storage, Battery_Capacity_Range FROM mobile
WHERE Brands = "Samsung"
ORDER BY Price DESC
LIMIT 5;

-- Must have andriod phone list then top 5 high price andriod phones
SELECT * FROM mobile
WHERE Operating_System_Type = "Android"
ORDER BY Price DESC
LIMIT 5;

-- Must have andriod phone list then top 5 lower price android phones
SELECT * FROM mobile
WHERE Operating_System_Type = "Android"
ORDER BY Price ASC
LIMIT 5;

-- Must have IOS phones list then top 5 high price IOS phones
SELECT * FROM mobile
WHERE Operating_System_Type = "iOS"
ORDER BY Price DESC
LIMIT 5;

-- Must have IOS phones list then top 5 lower price IOS phones
SELECT * FROM mobile
WHERE Operating_System_Type = "iOS"
ORDER BY Price ASC
LIMIT 5;

-- Write a query which phone support 5g and also top 5 phone with 5g support
SELECT * FROM mobile
WHERE 5G_Availability = "Yes"
ORDER BY Price DESC
LIMIT 5;

-- Total price of all mobile is to be find with brand name
SELECT Brands, SUM(Price) FROM mobile GROUP BY Brands;