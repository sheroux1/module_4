-- Question 1 - How many actors are there with the last name Wahlberg? --

select COUNT(actor_id) from actor where last_name like 'Wahlberg'

-- Question 2 - How many payments were made between $3.99 and $5.99? 

select COUNT(payment_id) from payment where amount between 3.99 and 5.99;

-- Question 3 - What film does the store have the most of? (search in inventory)

select film_id, count(film_id) as most_films from inventory group by film_id order by most_films desc;

-- Question 4 - How many customers have the last name 'William'?

select count(customer_id) from customer where last_name like 'William';

-- Question 5 - What store employee (get the id) sold the most rentals?

select staff_id, count(rental_id) from rental group by staff_id order by staff_id;

-- Question 6 - How many different district names are there?

select count(distinct district) from address;

-- Question 7 - What film has the most actors in it (use film_actor table and get film_id)

select film_id, count(actor_id) as most_actor from film_actor group by film_id order by most_actor desc;

-- Question 8 - From store_id, how many customers have a last name ending with 'es'? (use customer table) Not complete?

select count(customer_id) from customer_brandon where last_name like '%es';

-- Question 9 - How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- 		with ids between 380 and 430 (use group by and having > 250) Not complete?
select * from payment;
select customer_id, count(distinct amount) as pmt_amounts from payment where customer_id between 380 and 430 
group by customer_id 
having count(payment_id) > 250
order by pmt_amounts;

-- Question 10 - Within the film table, how many rating categories are there? and what rating has the most movies total?

select * from film;
select count(distinct rating) from film; -- first part of the question
select rating, count(rating) as count_rating from film group by rating order by count_rating desc;