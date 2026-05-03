// Print the title and ratings of the movies released in 2012 
-- whose Metacritic rating is more than 60 
-- and Domestic collections exceed 10 Crores.

SELECT title, rating
FROM movies
WHERE year = 2012
  AND metacritic > 60
  AND domestic_collection > 100000000;
