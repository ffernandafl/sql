/* Count */
SELECT  COUNT(film_id) FROM film WHERE rental_duration = 3;
SELECT rental_duration, COUNT(film_id) as "Total" FROM film WHERE rental_duration = 3;

/*GROUP */
SELECT rental_duration, COUNT(film_id) as "Total" FROM film GROUP BY rental_duration;

/*GROUP ordenado de menor a mayor*/
SELECT rental_duration, COUNT(film_id) as "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;
SELECT rental_duration, COUNT(film_id) as "Total" FROM film GROUP BY rental_duration ORDER BY Total ASC;

/*GROUP ordenado de mayor a menor*/
SELECT rental_duration, COUNT(film_id) as "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration DESC;

/* Promedio */
/* AVG solo funciona con datos de tipo numérico*/
SELECT AVG(replacement_cost) AS "Costo Promedio" FROM film;

/*SUMA*/
SELECT SUM(replacement_cost) AS "Costo total de inventario" FROM film;

/* MAX Y MIN solo devuleve el elemento max o min de la comuna seleccionada, no todos los datos de esa fila*/
/*MÁXIMO*/
SELECT MAX(replacement_cost) AS "max_replacement" FROM film;

/*MÍNIMO*/
SELECT MIN(replacement_cost) AS "min_replacement" FROM film;

/*Para sacar los datos del mayor costo, solo que se ordena de forma descendente y se limita la alista a 1, para que solo salga el mayor*/
SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1;
/*Lo mismo pero con el menor*/
SELECT * FROM film ORDER BY replacement_cost ASC LIMIT 1;