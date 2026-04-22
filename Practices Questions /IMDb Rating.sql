-- Retrieve the title and rating of movies from the IMDb dataset 
-- that were released in 2014, belong to a genre starting with 'C', 
-- and had a budget exceeding 4 Crore.

SELECT title, rating
FROM movies
WHERE year = 2014
  AND genre LIKE 'C%'
  AND budget > 40000000;
