SHOW DATABASES;

USE project_movie_database;

SHOW TABLES;


-- IMDB MOVIES


-- a) Can you get all data about movies?
SELECT * FROM movies;


-- b) How do you get all data about directors?
SELECT * FROM directors;


-- c) Check how many movies are present in IMDB.
SELECT count(*) as Total_Movies 
FROM movies;


-- d) Find these 3 directors: James Cameron ; Luc Besson ; John Woo
SELECT *
FROM directors
WHERE name IN (
    'James Cameron',
    'Luc Besson',
    'John Woo' );


-- e) Find all directors with name starting with S.
SELECT * 
FROM directors
WHERE name LIKE "S%";


-- f) Count female directors.
SELECT count(*) AS Total_Female_Directors
FROM directors
WHERE gender=1;

-- g) Find the name of the 10th first women directors?
SELECT name 
FROM directors
WHERE gender=1
LIMIT 10;

-- h) What are the 3 most popular movies?
SELECT title AS Popular_Movies,
       popularity AS Popularity_No
FROM movies
ORDER BY popularity desc
LIMIT 3;


-- i) What are the 3 most bankable movies?
SELECT title AS Bankable_Movies,
       revenue AS Total_Revenue 
FROM movies
ORDER BY revenue DESC
LIMIT 3;


-- j) What is the most awarded average vote since the January 1st, 2000?
SELECT title AS Movie_Name,
       vote_average AS Awarded_Average_Vote,
       release_date AS Released_Date
FROM movies
WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 3;


-- k) Which movie(s) were directed by Brenda Chapman?
SELECT title AS Movie_Name, 
       d.name AS Director_Name
FROM movies as m
INNER JOIN directors as d
  ON m.director_id=d.id
WHERE name ="Brenda Chapman";


-- l) Which director made the most movies?
SELECT  d.name AS Director_Name,
		COUNT(m.id) AS Total_Movies
FROM directors AS d
INNER JOIN movies AS m
  ON d.id=m.director_id
GROUP BY d.id,d.name
ORDER BY Total_Movies DESC
LIMIT 3;


-- m) Which director is the most bankable?
SELECT d.name AS Director_Name,
	   SUM(m.revenue) AS Total_Revenue
FROM directors AS d
INNER JOIN movies AS m
ON d.id=m.director_id
GROUP BY d.id,d.name
ORDER BY Total_Revenue DESC 
LIMIT 1;


