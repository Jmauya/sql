//Find employees who earn the same salary as someone else.
 SELECT *
FROM Employees
WHERE salary IN (
    SELECT salary
    FROM Employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);
