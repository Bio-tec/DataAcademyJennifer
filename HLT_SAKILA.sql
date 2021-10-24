--  Retrieve the actor ID, first name, and last name for all actors. 
-- Sort by last name and then by first name.
select actor_id, first_name, last_name
from actor
order by first_name;
select actor_id, first_name, last_name
from actor;
order by last_name;

-- Retrieve the actor ID, first name, and last name for all actors 
-- whose last name equals 'WILLIAMS' or 'DAVIS’

select actor_id, first_name, last_name 
from actor
where last_name = 'Williams' or 'Davis';

-- Write a query against the rental table that returns the IDs of the customers who rented a 
-- film on July 5th 2005 (use the rental.rental_date column, and you can use the date()
-- function to ignore the time component). Include a single row for each distinct customer ID.

select customer_id, 
	date(rental.rental_date) rental_date
from rental
where date(rental.rental_date) = '2005-07-05'
order by customer_id;

-- Fill in the blanks 

select c.email, r.return_date
from customer c
	inner join rental r
    on c.customer_id = r.customer_id
where date(r.rental_date) = '2005-06-14'
order by date(r.return_date) 
desc;