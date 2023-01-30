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
WHERE payment_date BETWEEN '2007-03-01 00:00:00' AND '2007-04-01 00:00:00'

-- Find all films which title contains the word “north”
SELECT * FROM film
WHERE title ILIKE '%north%'

-- Find all actors with surname startging with “W”
SELECT * FROM actor
WHERE last_name LIKE 'W%'

-- Find all actors with name containing three caracthers and last one is “y”
SELECT * FROM actor
WHERE first_name ILIKE '__y'













