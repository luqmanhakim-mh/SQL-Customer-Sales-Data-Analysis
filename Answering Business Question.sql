select * from sales;

select * from customer;

select * from product;

-- Number of sales by state
select
a.state,
count(order_id) as sales
from sales as b right join customer as a
on a.customer_id = b.customer_id
group by a.state
order by sales desc;

-- Total profit by state
select
a.state,
sum(b.profit) as total_profit
from customer as a left join sales as b
on a.customer_id = b.customer_id
group by a.state
order by total_profit desc;

-- Top 5 best selling product
select
a.product_name,
count(b.product_id) as number_sold,
sum(b.profit) as total_profit
from product as a left join sales as b
on a.product_id = b.product_id
group by a.product_name
having sum(b.profit) is not null
order by total_profit desc
limit 5;







