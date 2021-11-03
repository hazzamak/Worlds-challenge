use sakila;

SELECT * FROM actor;

SELECT * FROM actor WHERE first_name = 'John';

SELECT * FROM actor WHERE last_name = 'Neeson';

SELECT * FROM actor WHERE actor_id % 10 = 0;

SELECT description FROM film WHERE film_id = 100;

SELECT title FROM film WHERE rating = 'R';

SELECT title FROM film WHERE rating != 'R';

SELECT title FROM film ORDER BY length ASC LIMIT 10;

SELECT title FROM film ORDER BY length DESC;

SELECT title FROM film WHERE special_features = 'Deleted Scenes';

SELECT DISTINCT last_name FROM actor ORDER BY last_name;

SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(last_name) > 1;

SELECT film_actor.actor_id, actor.first_name, actor.last_name, COUNT(film_actor.actor_id)
FROM actor JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY film_actor.actor_id ORDER BY COUNT(film_actor.actor_id) DESC LIMIT 1;

SELECT release_year FROM film WHERE title = 'Academy Dinosaur';

SELECT AVG(length) FROM film;

SELECT *, AVG(length) AS average_length
FROM film 
INNER JOIN category 
  ON film.film_id = category.cate;
#skipped 16

SELECT * FROM film WHERE description LIKE '%robot%';

SELECT COUNT(title) FROM film WHERE release_year = 2010;

SELECT title FROM film 
JOIN category ON film.film_id = category.category_id 
WHERE category.name = 'Horror';

SELECT first_name, last_name FROM staff WHERE staff_id = 2;

SELECT * FROM film JOIN (film_actor JOIN actor ON film_actor.actor_id = actor.actor_id) 
ON film_actor.film_id = film.film_id 
WHERE actor.first_name = 'Fred' AND actor.last_name = 'Costner';

#22 not sure about question

SELECT name FROM language ORDER BY name DESC;

SELECT * FROM actor WHERE last_name LIKE '%son' ORDER BY first_name ASC;

