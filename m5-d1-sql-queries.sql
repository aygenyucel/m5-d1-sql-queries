-- Find all columns from the film table.
SELECT * FROM film

-- Find district,phone,postal_code from “address” table.
SELECT district, phone, postal_code 
FROM address

-- Find address, district,postal_code and concat them and get as “full_address”.
SELECT address ||' '|| district ||' '|| postal_code 
AS full_address
FROM address

-- Find all “R” rated movies, return title, rating and length only
SELECT title, rating, length 
FROM film
WHERE rating = 'R'

-- Find all “G” rated movies with a length greater than 3 hours
SELECT title, rating, length 
FROM film
WHERE rating = 'G' AND length > 180

-- Find top 10 payments by amount spent
SELECT * FROM payment
ORDER BY amount DESC
LIMIT 10

-- Find first 5 films, sort them by title DESC
SELECT * FROM film
ORDER BY title DESC
LIMIT 5

-- Find all payments with amount between 1 and 2 and sort them by amount descending order
SELECT * FROM payment
WHERE amount BETWEEN 1 AND 2
ORDER BY amount DESC

-- Find payments that happened in March 2007
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-03-01' AND '2007-03-31'

-- Find all films which title contains the word “north”
SELECT * FROM film
WHERE title ILIKE '%north%'

-- Find all actors with surname startging with “W”
SELECT * FROM actor
WHERE last_name LIKE 'W%'

-- Find all actors with name containing three caracthers and last one is “y”
SELECT * FROM actor
WHERE first_name ILIKE '__y'


----------- Questions I created -----------

-- select all adresses, sort them by postal code Ascending order. return address, district, postal_code only
SELECT address, district, postal_code FROM address
ORDER BY postal_code ASC

--find all films with rental date greater than 2.5 and with the duration under two hours 
SELECT * FROM film
WHERE rental_rate > 2.5 AND length <120

--find all actors with name 9 character length, return only first_name and last_name as “full_name”
SELECT first_name ||' '|| last_name AS full_name FROM actor
WHERE first_name LIKE '_________'

--Find all adresses with empty postal_code and phone
SELECT * FROM address
WHERE postal_code = '' AND phone =''

--Find last 5 payments for April month
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-04-01' AND '2007-05-01'
ORDER BY payment_date DESC
LIMIT 5