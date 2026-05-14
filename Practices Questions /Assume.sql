//Get the latest hired employee (assuming hire_date exists)
SELECT *
FROM Employees
ORDER BY hire_date DESC
LIMIT 1;
