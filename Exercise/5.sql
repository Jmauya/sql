For each major find the minimum and maximum CGPA/Project_marks, but only if there were at least 2 students in the major:

SELECT Major, MIN(CGPA) AS Min_CGPA, MAX(CGPA) AS Max_CGPA

FROM Lab_Grades
GROUP BY Major
HAVING COUNT(*)>=2;
