-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city,
SUM(amount) as sum
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
INNER JOIN address
on address.address_id = customer.address_id
INNER JOIN city
ON address.city_id = city.city_id
GROUP BY city.city_id
ORDER BY sum DESC
LIMIT (10)