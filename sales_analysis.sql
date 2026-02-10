create database sales_project;
use sales_project;
show databases;
show tables;
select * from train limit 5;
rename table train to sales_data;
select * from sales_data limit 5;
select region, sum(sales) as total_sales from sales_data group by region;
select category, sum(sales) as total_sales from sales_data group by category;
select segment, sum(sales) as total_sales from sales_data group by segment; 
SELECT 
    YEAR(`Order Date`) AS order_year,
    MONTH(`Order Date`) AS order_month,
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

select
    year(str_to_date(`order date`, '%d-%m-%Y')) AS order_year,
    month(str_to_date(`order date`, '%d-%m-%Y')) AS order_month,
    sum(sales) as total_sales
from sales_data
group by order_year, order_month
order by order_year, order_month;

describe sales_data;