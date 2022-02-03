-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT
film.title,
COUNT(*)
FROM
rental
INNER JOIN inventory
on inventory.inventory_id = rental.inventory_id
INNER JOIN film
ON inventory.film_id = film.film_id
GROUP BY film.film_id
ORDER BY COUNT desc
LIMIT (10)