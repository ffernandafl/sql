/* Subconsultas */
/* Filtrar películas que sean de una categoría */
SELECT * FROM film WHERE film_id IN (1, 2, 3);
SELECT * FROM film WHERE film_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
SELECT * FROM film WHERE film_id IN (44);

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5);

/*Filtrar películas por actores*/
SELECT * FROM film_actor WHERE actor_id IN (22);
SELECT * FROM film_actor WHERE actor_id IN (SELECT actor_id FROM film_actor WHERE actor_id = 22);
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 22);

/* Between */
/* Solo es para un rango de dos datos, en caso de ser más, se usa el IN*/
SELECT * FROM film WHERE film_id BETWEEN 1 AND 10;
SELECT * FROM film WHERE film_id BETWEEN 100 AND 128;