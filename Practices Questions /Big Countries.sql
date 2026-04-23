-- Problem statement:
-- There is a table World with columns: name, continent, area, population, gdp
-- A country is big if:
--   area > 3000000 OR population > 25000000
-- Write a SQL query to output big countries' name, population and area.

SELECT name, population, area
FROM World
WHERE area > 3000000 OR population > 25000000;
