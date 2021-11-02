use sakila;

-- HLT Q1
-- Which of the payment IDs would be returned by the following filter conditions? 
-- customer_id <> 5 AND (amount > 8 OR date(payment_date) = '2005-08-23’) 

select payment_id, customer_id, payment_date
from payment 
where customer_id <> 5 AND (amount > 8 OR date(payment_date) = '2005-08-23');

-- Q2
-- Which of the payment IDs would be returned by the following filter conditions? 
-- customer_id = 5 AND NOT (amount > 6 OR date(payment_date) = '2005-06-19’)

select payment_id, customer_id, payment_date
from payment 
where customer_id = 5 AND NOT (amount > 6 OR date(payment_date) = '2005-06-19');

-- Q3
-- Construct a query that retrieves all rows from the Payment table where the amount is 
-- either 1.98, 7.98, or 9.98.

select * 
from payment
where (amount = '1.98' OR amount = '7.98' OR amount = '9.98');

-- Q4 Construct a query that finds all customers whose last name contains an A in the second 
-- position and a W anywhere after the A

select c.first_name, c.last_name
from customer c
where c.last_name like '_A%W%';
