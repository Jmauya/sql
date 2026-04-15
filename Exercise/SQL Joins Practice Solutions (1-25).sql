
1. Employee names along with their department names

SQL
SELECT e.name, d.dept_name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;

2. Employee names with the names of their projects

SQL
SELECT e.name, p.proj_name 
FROM employees e 
JOIN works_on w ON e.emp_id = w.emp_id 
JOIN projects p ON w.proj_id = p.proj_id;


3. Names of employees and their managers (Self-Join)

SQL
SELECT e.name AS Employee, m.name AS Manager 
FROM employees e 
LEFT JOIN employees m ON e.manager_id = m.emp_id;


4. Employees and department cities

SQL
SELECT e.name, d.city 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;


5. Employee names and job titles
  
SQL
SELECT e.name, j.job_title 
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id;


6. Employees in 'San Francisco' departments

SQL
SELECT e.name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id 
WHERE d.city = 'San Francisco';


7. Employees on projects started in 2023

SQL
SELECT DISTINCT e.name 
FROM employees e 
JOIN works_on w ON e.emp_id = w.emp_id 
JOIN projects p ON w.proj_id = p.proj_id 
WHERE YEAR(p.start_date) = 2023;


8. Employees and total number of projects assigned

SQL
SELECT e.name, COUNT(w.proj_id) AS total_projects 
FROM employees e 
LEFT JOIN works_on w ON e.emp_id = w.emp_id 
GROUP BY e.name;


9. Employees in departments with > 10 people

SQL
SELECT e.name 
FROM employees e 
WHERE e.dept_id IN (
    SELECT dept_id FROM employees 
    GROUP BY dept_id HAVING COUNT(*) > 10
);


10. Employees and department names, ordered by department

SQL
SELECT e.name, d.dept_name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id 
ORDER BY d.dept_name;


11. Employees in the same department as 'John Doe'

SQL
SELECT name FROM employees 
WHERE dept_id = (SELECT dept_id FROM employees WHERE name = 'John Doe') 
AND name != 'John Doe';


12. Each project and the names of employees on it

SQL
SELECT p.proj_name, e.name 
FROM projects p 
JOIN works_on w ON p.proj_id = w.proj_id 
JOIN employees e ON w.emp_id = e.emp_id;


13. Employees with no assigned project (LEFT JOIN)

SQL
SELECT e.name 
FROM employees e 
LEFT JOIN works_on w ON e.emp_id = w.emp_id 
WHERE w.proj_id IS NULL;


14. Departments with no employees

SQL
SELECT d.dept_name 
FROM departments d 
LEFT JOIN employees e ON d.dept_id = e.dept_id 
WHERE e.emp_id IS NULL;

15. Each department's average employee salary

SQL
SELECT d.dept_name, AVG(e.salary) 
FROM departments d 
JOIN employees e ON d.dept_id = e.dept_id 
GROUP BY d.dept_name;
  
16. Employees and total coworkers (coworkers = total in dept - 1)

SQL
SELECT e1.name, (SELECT COUNT(*) FROM employees e2 WHERE e2.dept_id = e1.dept_id) - 1 AS coworkers 
FROM employees e1;

  
17. Employee names and project durations

SQL
SELECT e.name, DATEDIFF(p.end_date, p.start_date) AS duration 
FROM employees e 
JOIN works_on w ON e.emp_id = w.emp_id 
JOIN projects p ON w.proj_id = p.proj_id;

  
18. Employees with salary > dept average

SQL
SELECT e.name 
FROM employees e 
WHERE salary > (SELECT AVG(salary) FROM employees WHERE dept_id = e.dept_id);

  
19. Employees who are the only one in their department

SQL
SELECT name FROM employees 
GROUP BY dept_id HAVING COUNT(*) = 1;
  
20. Each department and the number of projects it manages

SQL
SELECT d.dept_name, COUNT(p.proj_id) 
FROM departments d 
JOIN projects p ON d.dept_id = p.managing_dept_id 
GROUP BY d.dept_name;
  
21. Employees whose department average salary is > 75,000

SQL
SELECT e.name 
FROM employees e 
JOIN (SELECT dept_id, AVG(salary) as avg_sal FROM employees GROUP BY dept_id) d_avg 
ON e.dept_id = d_avg.dept_id 
WHERE d_avg.avg_sal > 75000;
  
22. Department name of the highest-paid employee

SQL
SELECT d.dept_name 
FROM departments d 
JOIN employees e ON d.dept_id = e.dept_id 
ORDER BY e.salary DESC LIMIT 1;

23. Employees hired after their manager

SQL
SELECT e.name 
FROM employees e 
JOIN employees m ON e.manager_id = m.emp_id 
WHERE e.hire_date > m.hire_date;

24. Departments with more employees than department 1

SQL
SELECT dept_id FROM employees 
GROUP BY dept_id 
HAVING COUNT(*) > (SELECT COUNT(*) FROM employees WHERE dept_id = 1);
  
25. Department with the highest number of active projects

SQL
SELECT managing_dept_id 
FROM projects 
WHERE status = 'Active' 
GROUP BY managing_dept_id 
ORDER BY COUNT(*) DESC LIMIT 1;
