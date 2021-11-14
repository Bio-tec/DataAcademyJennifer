use sakila;

-- HLT 1. 

create view film_ctgry_actor
as
select f.title, c.name category_name, a.last_name, a.first_name
from film as f
inner join film_category as fc
on f.film_id = fc.film_id
inner join category as c
on fc.category_id = c.category_id
inner join film_actor as fa
on fa.film_id = fc.film_id
inner join actor a
on a.actor_id = fa.actor_id;

select category_name, title, first_name, last_name
from film_ctgry_actor
where last_name = 'FAWCETT';

-- The film rental company manager would like to have a report that includes the name of every country, 
-- along with the total payments for all customers who live in each country. 
-- Generate a view definition that queries the country table and uses a scalar subquery to calculate a value for 
-- a column named tot_payments 

create view sales_by_country
as
select
  cy.country as country,
  sum(p.amount) as total_customer_payments
from payment as p
inner join customer as cs 
on cs.customer_id = p.customer_id
inner join payment as p2 
on p.payment_id = p2.payment_id
inner join address as a 
on cs.address_id = a.address_id
inner join city as c 
on a.city_id = c.city_id
inner join country as cy 
on c.country_id = cy.country_id
group by cy.country
order by cy.country;

select country, total_customer_payments
from sales_by_country; 

