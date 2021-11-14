use sakila;

-- Construct a query that counts the number of rows in the payment table.
select *
from payment;

-- Modify your query from question 1 to count the number of payments made by each customer. 
-- Show the customer ID and the total amount paid for each customer.
select customer_id, sum(amount), count(*)
from payment
group by customer_id
order by 3 desc;

-- Modify your query from Exercise 2 to include only those customers having made at least five payments. 
select customer_id, sum(amount), count(*)
from payment
group by customer_id
having count(*) >= 5
order by 3;

-- Write a query that retrieves every row from Sales_Fact, and add a column to generate a ranking based on the 
-- tot_salescolumn values. The highest value should receive a ranking of 1, and the lowest a ranking of 24.

create table Sales_Fact (
	year_no date,
	month_no smallint (10),
	tot_sales smallint (10)
);

alter table Sales_Fact
modify year_no year;

 insert into Sales_Fact (year_no, month_no, tot_sales)
 values 
 ('2019', '1', '19228'),
 ('2019', '2','18554'),
 ('2019', '3', '17325'),
 ('2019', '4', '13221'),
 ('2019', '5', '9964'),
 ('2019', '6', '12658'),
 ('2019', '7','14233' ),
 ('2019', '8', '17342'),
 ('2019', '9', '16853'),
 ('2019', '10','17121'),
 ('2019', '11', '19095'),
 ('2019', '12','21436' ),
 ('2020', '1','20347'),
 ('2020', '2', '17434'),
 ('2020', '3', '16225'),
 ('2020', '4', '13853'),
 ('2020', '5','14589'),
 ('2020', '6','13248'),
 ('2020', '7','8728'),
 ('2020', '8','9378'),
 ('2020', '9','11467'),
 ('2020', '10','13842'),
 ('2020', '11','15742'),
 ('2020', '12','18636');
 
select *
from Sales_Fact;

select  *,
rank() over (order by tot_sales desc) rank_rnk
from Sales_Fact;

-- Modify the query from exercise 4 to generate two sets of rankings from 1 to 12, one for 2019 data and one for 2020.

select*,
rank () over (partition by (year_no) 
	order by tot_sales desc) as sales_rank
from Sales_Fact
group by year_no, month_no;

-- Write a query that retrieves all 2020 data, and include a column which will contain the tot_salesvalue 
-- from the previous month.

select year_no, month_no, tot_sales as monthly_sales, 
lag(sum(tot_sales), 1)
over (order by month_no) prev_month_tot
from Sales_Fact
where year_no = '2020'
group by tot_sales
order by month_no;

