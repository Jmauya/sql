Setting environment for using XAMPP for Windows.
PC@DESKTOP-6ESTTI4 c:\xampp
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
| studentdb          |
| studentdb1         |
| studentdb2         |
| test               |
+--------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> CREATE DATABASE StudentDataBase;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> USE StudentDataBase;
Database changed
MariaDB [StudentDataBase]> CREATE TABLE Lab_grades (
    ->   student_id CHAR(4),
    ->   name VARCHAR(30),
    ->   major CHAR(3),
    ->   section CHAR(1),
    ->   days_present INT,
    ->   project_marks DOUBLE,
    ->   cgpa DECIMAL(3,2),
    ->   submission_date DATE
    -> );
Query OK, 0 rows affected (0.003 sec)

MariaDB [StudentDataBase]> SHOW TABLES;
+---------------------------+
| Tables_in_studentdatabase |
+---------------------------+
| lab_grades                |
+---------------------------+
1 row in set (0.001 sec)

MariaDB [StudentDataBase]> DESCRIBE Lab_grades;
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

MariaDB [StudentDataBase]> INSERT INTO Lab_grades VALUES
    -> ('s001', 'Abir', 'CS', '1', 10, 18.5, 3.91, '2018-09-15'),
    -> ('s019', 'Naima', 'CSE', '2', 12, 20, 3.70, '2018-08-14'),
    -> ('s002', 'Nafis', 'CSE', '1', 12, 20, 3.86, '2018-08-15'),
    -> ('s003', 'Tasneem', 'CS', '1', 8, 18, 3.57, '2018-09-18'),
    -> ('s004', 'Nahid', 'ECE', '2', 7, 16.5, 3.25, '2018-08-20'),
    -> ('s005', 'Arafat', 'CS', '2', 11, 20, 4.00, '2018-09-13'),
    -> ('s006', 'Tasneem', 'CSE', '1', 12, 17.5, 3.70, '2018-08-15'),
    -> ('s007', 'Muhtadi', 'ECE', '1', 10, 19, 3.67, '2018-09-16'),
    -> ('s008', 'Farhana', 'CSE', '2', 6, 15, 2.67, '2018-08-16');
Query OK, 9 rows affected (0.005 sec)
Records: 9  Duplicates: 0  Warnings: 0

MariaDB [StudentDataBase]> SELECT * FROM Lab_grades;
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

MariaDB [StudentDataBase]>
