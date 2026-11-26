--window function--
select * from products;

--assign a uique row number to each products within the same category--
select 
product_name,
category,
price,
ROW_NUMBER() over(
partition by category
order by price desc)
as Ranking 
from products;

--rank--
select 
product_name,
category,
price,
Rank() over(
partition by category
order by price desc)
as Ranking 
from products;

--dense rank--
select 
product_name,
category,
price,
Dense_Rank() over(
partition by category
order by price desc)
as Ranking 
from products;

--update the table for same value--
update products
set quantity = 10
where product_id = 2;

select * from products;

--dense rank--
select 
product_name,
category,
quantity,
Dense_Rank() over(
partition by category
order by quantity desc)
as Ranking 
from products;

--rank--
select 
product_name,
category,
quantity,
Rank() over(
partition by category
order by quantity desc)
as Ranking 
from products;

--sum--
select 
product_name,
category,
quantity,
sum(quantity) over(
partition by category
order by quantity desc)
as Total 
from products;

--count--
select 
product_name,
category,
quantity,
price,
count(product_name) over(
partition by category
order by quantity desc)
as Total 
from products;