use Sakila;

-- Fill in the blanks (denoted by <#>) for the following query to obtain the results that follow:

select c.first_name, c.last_name, a.address, ct.city
from customer c
	inner join address a
	on c.address_id = a.address_id
	inner join city ct
	on a.city_id = ct.city_id
where a.district = 'California';

--  Write a query that returns the title of every film in which an actor with the 
-- first name JOHN appeared

select a.first_name, a.last_name, fa.actor_id, f.title
from actor a
	inner join film_actor fa
    on a.actor_id = fa.actor_id
    inner join film f
    on f.film_id = fa.film_id
where a.first_name = 'John';

-- Construct a query that finds returns all addresses which are in the same city. 
-- You will need to join the address table to itself, and each row should include 2 
-- different addresses. 

select ad.address, ct.city
from address ad
	inner join city ct
	on ad.city_id = ct.city_id
   order by ct.city;


