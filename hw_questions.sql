-- 1. List all customers who live in Texas (use
-- JOINs)

SELECT* from customer;

select * from address;

SELECT * FROM customer
INNER JOIN address
on address.address_id = customer.address_id;


SELECT first_name, last_name 
FROM customer
INNER JOIN address
on address.address_id = customer.address_id
where district LIKE 'Texas';

SELECT first_name, last_name, district
FROM customer
INNER JOIN address
on address.address_id = customer.address_id
where district LIKE 'Texas';


-- 2. Get all payments above $6.99 with the Customer's Full
-- Name

sELECT * FROM customer
INNER JOIN payment
on payment.customer_id = customer.customer_id;

SELECT first_name, last_name, amount
from customer
INNER JOIN payment
on payment.customer_id = customer.customer_id
where amount > 6.99;


-- 3. Show all customers names who have made payments over $175(use
-- subqueries)

SELECT *
FROM payment;


select customer_id, sum(amount)
from payment
GROUP BY customer_id
HAVING sum(amount) > 175
ORDER BY sum(amount);

select first_name, last_name
from customer
where customer_id IN (
select customer_id
from payment
GROUP BY customer_id
HAVING sum(amount) > 175
ORDER BY sum(amount));



-- 4. List all customers that live in Nepal (use the city
-- table)

SELECT * FROM city;

SELECT * from customer;

select country_id
FROM country
where country
like 'Nepal';



-- need to connect customer to adress tehn adress to city
-- so i will need a subquirey within another subquirey or
-- perhaps a quiery of a merged table





select first_name, last_name
from customer

SELECT city_id
FROM city
INNER JOIN country
on country.country_id = city.country_id
where country like 'Nepal';

SELECT address_id
FROM address
WHERE city_id = 81;
-- INNER JOIN city
-- on .city_id = customer.city_id
-- where city_id = 81;


SELECT first_name, last_name
FROM customer
WHERE address_id = 326;


-- Kevin Schuler

-- INNER JOIN address
-- on address.city_id = customer.city_id
-- where city_id = 81;






-- 5. Which staff member had the most
-- transactions?

SELECT count(staff_id)
from payment;

select count(staff_id)
from payment
where staff_id = 1;

select count(staff_id)
from payment
where staff_id = 2;

SELECT first_name, last_name
FROM staff
where staff_id = 2;

-- Jon Stephens



-- 6. How many movies of each rating are
-- there?




-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)






-- 8. How many free rentals did our stores give away?