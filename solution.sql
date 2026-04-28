USE sakila;

-- 1. Mostrar todas las tablas disponibles
SHOW TABLES;

-- 2. Recuperar todos los datos de actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Títulos de todas las películas
SELECT title FROM film;

-- 3.2 Lista de idiomas con alias "language"
SELECT name AS language FROM language;

-- 3.3 Nombres de todos los empleados
SELECT first_name FROM staff;

-- 4. Años de lanzamiento únicos
SELECT DISTINCT release_year FROM film;

-- 5.1 Número de tiendas
SELECT COUNT(*) AS numero_de_tiendas FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS numero_de_empleados FROM staff;

-- 5.3 Películas disponibles para alquilar y alquiladas
SELECT COUNT(*) AS peliculas_disponibles FROM film;
SELECT COUNT(*) AS peliculas_alquiladas FROM rental;

-- 5.4 Apellidos distintos de actores
SELECT COUNT(DISTINCT last_name) AS apellidos_distintos FROM actor;

-- 6. Las 10 películas más largas
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actores con nombre SCARLETT
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Películas con ARMAGEDDON en el título y duración mayor a 100 minutos
SELECT title, length 
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- 7.3 Número de películas con contenido Behind the Scenes
SELECT COUNT(*) AS peliculas_behind_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';