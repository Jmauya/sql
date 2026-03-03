
Setting environment for using XAMPP for Windows.

PC@ONI c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| studentdatabase    |
| studentdb          |
| studentdb1         |
| studentdb2         |
| test               |
+--------------------+
9 rows in set (0.027 sec)

MariaDB [(none)]> CREATE DATABASE stu_db;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> USE stu_db;
Database changed
MariaDB [stu_db]> CREATE TABLE Lab_grades (
    -> student_id CHAR(4),
    -> name VARCHAR(30),
    -> major CHAR(3),
    -> section CHAR(1),
    -> days_present INT,
    -> project_marks DOUBLE,
    -> cgpa DECIMAL(3,2),
    -> submission_date DATE
    -> );
Query OK, 0 rows affected (0.005 sec)

MariaDB [stu_db]> SHOW TABLES;
+------------------+
| Tables_in_stu_db |
+------------------+
| lab_grades       |
+------------------+
1 row in set (0.000 sec)

MariaDB [stu_db]> DESCRIBE Lab_grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(30)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
8 rows in set (0.013 sec)

MariaDB [stu_db]> INSERT INTO Lab_grades VALUES
    -> ('s001', 'Abir', 'CS', '1', 10, 18.5, 3.91, '2018-09-15'),
    -> ('s019', 'Naima', 'CSE', '2', 12, 20, 3.70, '2018-08-14'),
    -> ('s002', 'Nafis', 'CSE', '1', 12, 20, 3.86, '2018-08-15'),
    -> ('s003', 'Tasneem', 'CS', '1', 8, 18, 3.57, '2018-09-18'),
    -> ('s004', 'Nahid', 'ECE', '2', 7, 16.5, 3.25, '2018-08-20'),
    -> ('s005', 'Arafat', 'CS', '2', 11, 20, 4.00, '2018-09-13'),
    -> ('s006', 'Tasneem', 'CSE', '1', 12, 17.5, 3.70, '2018-08-15'),
    -> ('s007', 'Muhtadi', 'ECE', '1', 10, 19, 3.67, '2018-09-16'),
    -> ('s008', 'Farhana', 'CSE', '2', 6, 15, 2.67, '2018-08-16');
Query OK, 9 rows affected (0.025 sec)
Records: 9  Duplicates: 0  Warnings: 0

MariaDB [stu_db]> SELECT * FROM Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
| student_id | name    | major | section | days_present | project_marks | cgpa | submission_date |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
| s001       | Abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15      |
| s019       | Naima   | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14      |
| s002       | Nafis   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15      |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18      |
| s004       | Nahid   | ECE   | 2       |            7 |          16.5 | 3.25 | 2018-08-20      |
| s005       | Arafat  | CS    | 2       |           11 |            20 | 4.00 | 2018-09-13      |
| s006       | Tasneem | CSE   | 1       |           12 |          17.5 | 3.70 | 2018-08-15      |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16      |
| s008       | Farhana | CSE   | 2       |            6 |            15 | 2.67 | 2018-08-16      |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
9 rows in set (0.000 sec)

MariaDB [stu_db]> ALTER TABLE Lab_Grades ADD Project_title CHAR(10);
Query OK, 0 rows affected (0.005 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [stu_db]> DESC Lab_Grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(30)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
| Project_title   | char(10)     | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
9 rows in set (0.011 sec)

MariaDB [stu_db]> ALTER TABLE Lab_Grades MODIFY COLUMN Project_title VARCHAR(50);
Query OK, 9 rows affected (0.016 sec)
Records: 9  Duplicates: 0  Warnings: 0

MariaDB [stu_db]> DESC Lab_Grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(30)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
| Project_title   | varchar(50)  | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
9 rows in set (0.011 sec)

MariaDB [stu_db]> ALTER TABLE Lab_Grades DROP COLUMN Project_title;
Query OK, 0 rows affected (0.004 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [stu_db]> DESC Lab_Grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| name            | varchar(30)  | YES  |     | NULL    |       |
| major           | char(3)      | YES  |     | NULL    |       |
| section         | char(1)      | YES  |     | NULL    |       |
| days_present    | int(11)      | YES  |     | NULL    |       |
| project_marks   | double       | YES  |     | NULL    |       |
| cgpa            | decimal(3,2) | YES  |     | NULL    |       |
| submission_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
8 rows in set (0.010 sec)

MariaDB [stu_db]> ALTER TABLE Lab_Grades CHANGE submission_date sub_date DATE;
Query OK, 0 rows affected (0.005 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [stu_db]> DESC Lab_Grades;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| student_id    | char(4)      | YES  |     | NULL    |       |
| name          | varchar(30)  | YES  |     | NULL    |       |
| major         | char(3)      | YES  |     | NULL    |       |
| section       | char(1)      | YES  |     | NULL    |       |
| days_present  | int(11)      | YES  |     | NULL    |       |
| project_marks | double       | YES  |     | NULL    |       |
| cgpa          | decimal(3,2) | YES  |     | NULL    |       |
| sub_date      | date         | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.013 sec)

MariaDB [stu_db]> UPDATE Lab_Grades SET Major = 'CSE' WHERE Name = 'Arafat';
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [stu_db]> UPDATE Lab_Grades SET Name = 'Naheed',Project_marks = 16 WHERE student_id = 's004';
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [stu_db]> DESC Lab_Grades;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| student_id    | char(4)      | YES  |     | NULL    |       |
| name          | varchar(30)  | YES  |     | NULL    |       |
| major         | char(3)      | YES  |     | NULL    |       |
| section       | char(1)      | YES  |     | NULL    |       |
| days_present  | int(11)      | YES  |     | NULL    |       |
| project_marks | double       | YES  |     | NULL    |       |
| cgpa          | decimal(3,2) | YES  |     | NULL    |       |
| sub_date      | date         | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.010 sec)

MariaDB [stu_db]> DELETE FROM Lab_Grades WHERE Name = 'Naima';
Query OK, 1 row affected (0.002 sec)

MariaDB [stu_db]> DELETE FROM Lab_Grades WHERE days_present < 8;
Query OK, 2 rows affected (0.002 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | name    | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s001       | Abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s002       | Nafis   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s005       | Arafat  | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | Tasneem | CSE   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
6 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT student_id, Name, Project_marks FROM Lab_Grades;
+------------+---------+---------------+
| student_id | Name    | Project_marks |
+------------+---------+---------------+
| s001       | Abir    |          18.5 |
| s002       | Nafis   |            20 |
| s003       | Tasneem |            18 |
| s005       | Arafat  |            20 |
| s006       | Tasneem |          17.5 |
| s007       | Muhtadi |            19 |
+------------+---------+---------------+
6 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT Name,Project_marks + days_present * 5 /12 AS Total_marks FROM Lab_Grades;
+---------+--------------+
| Name    | Total_marks  |
+---------+--------------+
| Abir    | 22.666666666 |
| Nafis   |           25 |
| Tasneem | 21.333333333 |
| Arafat  | 24.583333333 |
| Tasneem |         22.5 |
| Muhtadi | 23.166666666 |
+---------+--------------+
6 rows in set (0.001 sec)

MariaDB [stu_db]> SELECT UPPER(Name), LOWER(Name) FROM Lab_Grades;
+-------------+-------------+
| UPPER(Name) | LOWER(Name) |
+-------------+-------------+
| ABIR        | abir        |
| NAFIS       | nafis       |
| TASNEEM     | tasneem     |
| ARAFAT      | arafat      |
| TASNEEM     | tasneem     |
| MUHTADI     | muhtadi     |
+-------------+-------------+
6 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT Major FROM Lab_Grades;
+-------+
| Major |
+-------+
| CS    |
| CSE   |
| CS    |
| CSE   |
| CSE   |
| ECE   |
+-------+
6 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT DISTINCT Major FROM Lab_Grades;
+-------+
| Major |
+-------+
| CS    |
| CSE   |
| ECE   |
+-------+
3 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades ORDER BY Name;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | name    | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s001       | Abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s005       | Arafat  | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s002       | Nafis   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s006       | Tasneem | CSE   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
6 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades ORDER BY Name DESC, Submission_date ASC;
ERROR 1054 (42S22): Unknown column 'Submission_date' in 'order clause'
MariaDB [stu_db]> SELECT * FROM Lab_Grades ORDER BY Name DESC,sub_date ASC;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | name    | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s006       | Tasneem | CSE   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s002       | Nafis   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s005       | Arafat  | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s001       | Abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
6 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT Name, Days_present, Project_marks FROM Lab_Grades WHERE Project_marks > 17;
+---------+--------------+---------------+
| Name    | Days_present | Project_marks |
+---------+--------------+---------------+
| Abir    |           10 |          18.5 |
| Nafis   |           12 |            20 |
| Tasneem |            8 |            18 |
| Arafat  |           11 |            20 |
| Tasneem |           12 |          17.5 |
| Muhtadi |           10 |            19 |
+---------+--------------+---------------+
6 rows in set (0.001 sec)

MariaDB [stu_db]> SELECT Name, Project_marks FROM Lab_Grades WHERE Major = 'CSE';
+---------+---------------+
| Name    | Project_marks |
+---------+---------------+
| Nafis   |            20 |
| Arafat  |            20 |
| Tasneem |          17.5 |
+---------+---------------+
3 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT Name, Project_marks FROM Lab_Grades WHERE Project_marks BETWEEN 17 AND 19;
+---------+---------------+
| Name    | Project_marks |
+---------+---------------+
| Abir    |          18.5 |
| Tasneem |            18 |
| Tasneem |          17.5 |
| Muhtadi |            19 |
+---------+---------------+
4 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades WHERE Major IN ('CS', 'CSE');
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | name    | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s001       | Abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s002       | Nafis   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s005       | Arafat  | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | Tasneem | CSE   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
5 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades WHERE Project_marks > 18 AND sub_date BETWEEN '2018-08-01' AND '2018-08-31';
+------------+-------+-------+---------+--------------+---------------+------+------------+
| student_id | name  | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+-------+-------+---------+--------------+---------------+------+------------+
| s002       | Nafis | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
+------------+-------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades WHERE Name LIKE 'a%';
+------------+--------+-------+---------+--------------+---------------+------+------------+
| student_id | name   | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+--------+-------+---------+--------------+---------------+------+------------+
| s001       | Abir   | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s005       | Arafat | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
+------------+--------+-------+---------+--------------+---------------+------+------------+
2 rows in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades WHERE Name LIKE '%a%a%';
+------------+--------+-------+---------+--------------+---------------+------+------------+
| student_id | name   | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+--------+-------+---------+--------------+---------------+------+------------+
| s005       | Arafat | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
+------------+--------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [stu_db]> SELECT * FROM Lab_Grades WHERE Name LIKE 'a___';
+------------+------+-------+---------+--------------+---------------+------+------------+
| student_id | name | major | section | days_present | project_marks | cgpa | sub_date   |
+------------+------+-------+---------+--------------+---------------+------+------------+
| s001       | Abir | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
+------------+------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [stu_db]>
