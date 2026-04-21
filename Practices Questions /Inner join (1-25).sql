1. List all employee names along with their department names


SELECT e.name, d.dept_name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;

2. Show employee names with the names of the projects assigned

SELECT e.name, p.proj_name 
FROM employees e 
JOIN works_on w ON e.emp_id = w.emp_id 
JOIN projects p ON w.proj_id = p.proj_id;

3. Get the names of employees and their managers (Self-Join)


SELECT e.name AS Employee, m.name AS Manager 
FROM employees e 
LEFT JOIN employees m ON e.manager_id = m.emp_id;

4. List employees and the cities of their departments

SELECT e.name, d.city 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;

5. Show employee names and job titles

SELECT e.name, j.job_title 
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id;

6. Find employees in departments located in 'San Francisco'


SELECT e.name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id 
WHERE d.city = 'San Francisco';

7. List all employees on projects started in 2023

SELECT DISTINCT e.name 
FROM employees e 
JOIN works_on w ON e.emp_id = w.emp_id 
JOIN projects p ON w.proj_id = p.proj_id 
WHERE p.start_date BETWEEN '2023-01-01' AND '2023-12-31';

8. Show employees and the total count of projects assigned


SELECT e.name, COUNT(w.proj_id) AS project_count 
FROM employees e 
LEFT JOIN works_on w ON e.emp_id = w.emp_id 
GROUP BY e.name;

9. Find employees whose department has more than 10 employees


SELECT name 
FROM employees 
WHERE dept_id IN (
    SELECT dept_id FROM employees 
    GROUP BY dept_id HAVING COUNT(*) > 10
);

10. List employees and department names, alphabetical by department


SELECT e.name, d.dept_name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id 
ORDER BY d.dept_name ASC;

11. Show employees working in the same department as 'John Doe'


SELECT name FROM employees 
WHERE dept_id = (SELECT dept_id FROM employees WHERE name = 'John Doe') 
AND name != 'John Doe';

12. Show each project and the names of employees on it


SELECT p.proj_name, e.name 
FROM projects p 
JOIN works_on w ON p.proj_id = w.proj_id 
JOIN employees e ON w.emp_id = e.emp_id;

13. Find employees who have no assigned project


SELECT e.name 
FROM employees e 
LEFT JOIN works_on w ON e.emp_id = w.emp_id 
WHERE w.proj_id IS NULL;

14. List departments that currently have no employees


SELECT d.dept_name 
FROM departments d 
LEFT JOIN employees e ON d.dept_id = e.dept_id 
WHERE e.emp_id IS NULL;

15. Find each department's average employee salary


SELECT d.dept_name, AVG(e.salary) AS avg_salary 
FROM departments d 
JOIN employees e ON d.dept_id = e.dept_id 
GROUP BY d.dept_name;
  
16. List each employee with the count of coworkers


SELECT e1.name, 
       (SELECT COUNT(*) FROM employees e2 WHERE e2.dept_id = e1.dept_id) - 1 AS coworkers 
FROM employees e1;
  
17. Get employee names and their project durations


SELECT e.name, DATEDIFF(p.end_date, p.start_date) AS days_duration 
FROM employees e 
JOIN works_on w ON e.emp_id = w.emp_id 
JOIN projects p ON w.proj_id = p.proj_id;
  
18. List employees whose salary is above their department average

SQL
SELECT e1.name 
FROM employees e1 
WHERE e1.salary > (
    SELECT AVG(salary) 
    FROM employees e2 
    WHERE e2.dept_id = e1.dept_id
);
  
19. Show employees who are the only one in their department


SELECT name FROM employees 
GROUP BY dept_id HAVING COUNT(*) = 1;
  
20. List each department and the number of projects it manages


SELECT d.dept_name, COUNT(p.proj_id) 
FROM departments d 
JOIN projects p ON d.dept_id = p.managing_dept_id 
GROUP BY d.dept_name;
  
21. Employees whose department average salary is above 75,000


SELECT e.name 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id 
GROUP BY e.name, e.dept_id 
HAVING AVG(e.salary) OVER(PARTITION BY e.dept_id) > 75000;
  
22. Name of the department where the highest-paid employee works


SELECT d.dept_name 
FROM departments d 
JOIN employees e ON d.dept_id = e.dept_id 
WHERE e.salary = (SELECT MAX(salary) FROM employees);
  
23. Find employees who were hired after their manager


SELECT e.name 
FROM employees e 
JOIN employees m ON e.manager_id = m.emp_id 
WHERE e.hire_date > m.hire_date;
  
24. Departments that have more employees than department 1


SELECT dept_id 
FROM employees 
GROUP BY dept_id 
HAVING COUNT(*) > (SELECT COUNT(*) FROM employees WHERE dept_id = 1);
  
25. Find the department with the highest number of active projects


SELECT managing_dept_id 
FROM projects 
WHERE status = 'Active' 
GROUP BY managing_dept_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;
