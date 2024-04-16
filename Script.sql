
--3.- Obtener el ID de la película “Titanic”

SELECT id FROM peliculas WHERE "Pelicula" = 'Titanic';

--4.- Listar a todos los actores que aparecen en la película "Titanic".

SELECT actor FROM reparto WHERE id_pelicula = (SELECT id FROM peliculas WHERE "Pelicula"  = 'Titanic');

--5.- Consultar en cuántas películas del top 100 participa Harrison Ford.
SELECT p.id, p."Pelicula" FROM peliculas p JOIN reparto r ON p.id = r.id_pelicula WHERE r.actor = 'Harrison Ford' ORDER BY p."Pelicula" ASC;


--6.- Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT "Pelicula", "Año estreno" FROM peliculas WHERE "Año estreno" BETWEEN 1990 AND 1999 ORDER BY "Pelicula" ASC;

--7. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.

SELECT "Pelicula", LENGTH("Pelicula") AS longitud_titulo FROM peliculas;

--8. Consultar cual es la longitud más grande entre todos los títulos de las películas.

SELECT "Pelicula", LENGTH("Pelicula") AS max_length FROM peliculas WHERE LENGTH("Pelicula") = ( SELECT MAX(LENGTH("Pelicula")) FROM peliculas );


