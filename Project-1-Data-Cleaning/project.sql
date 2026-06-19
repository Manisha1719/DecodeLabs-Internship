-- DATABASE CREATION
create database decodelabs_project1;
use decodelabs_project1;
-- VIEW DATASET
select * 
from ecommerce_data;

-- TOTAL RECORDS COUNT
select COUNT(*) AS Total_Records
from ecommerce_data;

-- MISSING VALUE VALIDATION
SELECT COUNT(*) AS missingCouponCode
From ecommerce_data
WHERE couponcode IS NULL
or couponcode= '';

-- REPLACE MISSING COUPON VALUES
UPDATE ecommerce_data
SET CouponCode =null
OR CouponCode='';

select count(*)
from ecommerce_data
where couponcode is null
or CouponCode='';

-- REPLACING MISSING VALUES
UPDATE ecommerce_data
SET couponcode='No Coupon Applied'
WHERE couponcode IS NULL
OR couponcode='';

-- DUPLICATE VALIDATIO
SELECT ORDERID,
COUNT(*) AS DUPLICATECOUNT
FROM ecommerce_data
group by OrderID
having count(*) > 1;

-- VERIFY DATE FORMAT
select date
from ecommerce_data
limit 10;

-- DATE FORMAT VALIDATION
select *
from ecommerce_data
where str_to_date(date,'%Y-%M-%D') is NULL;

-- CHECK DATA TYPES
describe ecommerce_data;

-- VERIFY TOTAL PRICE CALCULATION
select * 
from ecommerce_data
where TotalPrice <> quantity* UnitPrice;

-- FINAL CONCLUSION
select count(*)
from ecommerce_data
where CouponCode is null
or CouponCode='';

select count(*)
from
(
select orderid
from ecommerce_data
group by OrderID
having count(*) > 1
)x;

select date,length(date)
from ecommerce_data
where str_to_date(date,'%Y-%M-,%D') is null;


select count(*) from ecommerce_data;

select count(*)
from ecommerce_data
where CouponCode is null or CouponCode='';

select count(*)
from ecommerce_data
where TotalPrice <> Quantity * UnitPrice;

select orderid,count(*) as duplicate_count
from ecommerce_data
group by OrderID
having count(*) > 1;

select 
orderid,
quantity,
unitprice,
totalprice,
(quantity*unitprice) as expectedprice
from ecommerce_data
where TotalPrice <> (quantity * unitprice)
limit 20;

-- PRICE VALIDATION
select *
from ecommerce_data
where abs(TotalPrice - (quantity*unitprice)) > 0.01;

