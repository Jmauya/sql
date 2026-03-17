Setting environment for using XAMPP for Windows.
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution
Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
MariaDB [(none)]> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| book_store         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.022 sec)
MariaDB [(none)]> CREATE DATABASE STUDENT_INFO;
Query OK, 1 row affected (0.002 sec)
MariaDB [(none)]> USE STUDENT_INFO;
Database changed
MariaDB [STUDENT_INFO]> CREATE TABLE Lab_grades ( student_id CHAR(4),
    -> NAME VARCHAR(30),
    -> MAJOR CHAR(3),
    -> SECTION CHAR(1),
    -> DAYS_PRESENT INT,
    -> PROJECT_MARKS DOUBLE,
    -> CGPA DECIMAL(3,2),
    -> SUBMISSION_DATE DATE);
Query OK, 0 rows affected (0.007 sec)

MariaDB [STUDENT_INFO]> SHOW TABLES;
+------------------------+
| Tables_in_student_info |
+------------------------+
| lab_grades             |
+------------------------+
1 row in set (0.000 sec)

MariaDB [STUDENT_INFO]> DESCRIBE Lab_grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| NAME            | varchar(30)  | YES  |     | NULL    |       |
| MAJOR           | char(3)      | YES  |     | NULL    |       |
| SECTION         | char(1)      | YES  |     | NULL    |       |
| DAYS_PRESENT    | int(11)      | YES  |     | NULL    |       |
| PROJECT_MARKS   | double       | YES  |     | NULL    |       |
| CGPA            | decimal(3,2) | YES  |     | NULL    |       |
| SUBMISSION_DATE | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
8 rows in set (0.012 sec)

MariaDB [STUDENT_INFO]> insert into Lab_grades values ('s01','abir','CS','1',10,18.5,3.91,'2018-09-15');
Query OK, 1 row affected (0.038 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades;
+------------+------+-------+---------+--------------+---------------+------+-----------------+
| student_id | NAME | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUBMISSION_DATE |
+------------+------+-------+---------+--------------+---------------+------+-----------------+
| s01        | abir | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15      |
+------------+------+-------+---------+--------------+---------------+------+-----------------+
1 row in set (0.001 sec)

MariaDB [STUDENT_INFO]> insert into Lab_grades values ('s019','Naima','CSE','2',12,20,3.7,'2018-08-14'),
    -> ('s002','NAFIS','CSE','1',12,20,3.86,'2018-08-15');
Query OK, 2 rows affected (0.001 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> SELECT * FROM Lab_grades;
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| student_id | NAME  | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUBMISSION_DATE |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
| s01        | abir  | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15      |
| s019       | Naima | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14      |
| s002       | NAFIS | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15      |
+------------+-------+-------+---------+--------------+---------------+------+-----------------+
3 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> insert into Lab_grades values ('s003','Tasneem','CS','1',8,18,3.57,'2018-09-18'),
    -> ('s004','Nahid','ECE','2',7,16.5,3.25,'2018-08-20'),
    -> ('s005','Sadat','CS','2',11,20,4.00,'2018-09-13'),
    -> ('s006','SimSim','ENG','1',12,17.5,3.7,'2018-08-15');
Query OK, 4 rows affected (0.002 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> select * from Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUBMISSION_DATE |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15      |
| s019       | Naima   | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14      |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15      |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18      |
| s004       | Nahid   | ECE   | 2       |            7 |          16.5 | 3.25 | 2018-08-20      |
| s005       | Sadat   | CS    | 2       |           11 |            20 | 4.00 | 2018-09-13      |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15      |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> insert into Lab_grades values ('s007','Muhtadi','ECE','1',10,19,3.67,'2018-09-16'),
    -> ('s008','Farhana','CSE','2',6,15,2.67,'2018-08-16');
Query OK, 2 rows affected (0.003 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> select * from Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUBMISSION_DATE |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15      |
| s019       | Naima   | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14      |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15      |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18      |
| s004       | Nahid   | ECE   | 2       |            7 |          16.5 | 3.25 | 2018-08-20      |
| s005       | Sadat   | CS    | 2       |           11 |            20 | 4.00 | 2018-09-13      |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15      |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16      |
| s008       | Farhana | CSE   | 2       |            6 |            15 | 2.67 | 2018-08-16      |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+
9 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> ALTER TABLE Lab_grades add Project_title CHAR(10);
Query OK, 0 rows affected (0.007 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> select * from Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+-----------------+---------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUBMISSION_DATE | Project_title |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+---------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15      | NULL          |
| s019       | Naima   | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14      | NULL          |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15      | NULL          |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18      | NULL          |
| s004       | Nahid   | ECE   | 2       |            7 |          16.5 | 3.25 | 2018-08-20      | NULL          |
| s005       | Sadat   | CS    | 2       |           11 |            20 | 4.00 | 2018-09-13      | NULL          |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15      | NULL          |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16      | NULL          |
| s008       | Farhana | CSE   | 2       |            6 |            15 | 2.67 | 2018-08-16      | NULL          |
+------------+---------+-------+---------+--------------+---------------+------+-----------------+---------------+
9 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> ALTER TABLE Lab_grades modify column Project_title VARCHAR(50);
Query OK, 9 rows affected (0.028 sec)
Records: 9  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> Describe Lab_grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| NAME            | varchar(30)  | YES  |     | NULL    |       |
| MAJOR           | char(3)      | YES  |     | NULL    |       |
| SECTION         | char(1)      | YES  |     | NULL    |       |
| DAYS_PRESENT    | int(11)      | YES  |     | NULL    |       |
| PROJECT_MARKS   | double       | YES  |     | NULL    |       |
| CGPA            | decimal(3,2) | YES  |     | NULL    |       |
| SUBMISSION_DATE | date         | YES  |     | NULL    |       |
| Project_title   | varchar(50)  | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
9 rows in set (0.014 sec)

MariaDB [STUDENT_INFO]> ALTER TABLE Lab_grades DROP COLUMN Project_title;
Query OK, 0 rows affected (0.006 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> describe Lab_grades;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_id      | char(4)      | YES  |     | NULL    |       |
| NAME            | varchar(30)  | YES  |     | NULL    |       |
| MAJOR           | char(3)      | YES  |     | NULL    |       |
| SECTION         | char(1)      | YES  |     | NULL    |       |
| DAYS_PRESENT    | int(11)      | YES  |     | NULL    |       |
| PROJECT_MARKS   | double       | YES  |     | NULL    |       |
| CGPA            | decimal(3,2) | YES  |     | NULL    |       |
| SUBMISSION_DATE | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
8 rows in set (0.012 sec)

MariaDB [STUDENT_INFO]> alter table Lab_grades rename column SUBMISSION_DATE to sub_date;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column SUBMISSION_DATE to sub_date' at line 1
MariaDB [STUDENT_INFO]> ALTER TABLE Lab_grades RENAME COLUMN SUBMISSION_DATE TO SUB_DATE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN SUBMISSION_DATE TO SUB_DATE' at line 1
MariaDB [STUDENT_INFO]> ALTER TABLE Lab_grades change SUBMISSION_DATE SUB_DATE DATE;
Query OK, 0 rows affected (0.004 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [STUDENT_INFO]> describe lab_grades;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| student_id    | char(4)      | YES  |     | NULL    |       |
| NAME          | varchar(30)  | YES  |     | NULL    |       |
| MAJOR         | char(3)      | YES  |     | NULL    |       |
| SECTION       | char(1)      | YES  |     | NULL    |       |
| DAYS_PRESENT  | int(11)      | YES  |     | NULL    |       |
| PROJECT_MARKS | double       | YES  |     | NULL    |       |
| CGPA          | decimal(3,2) | YES  |     | NULL    |       |
| SUB_DATE      | date         | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.012 sec)

MariaDB [STUDENT_INFO]> update Lab_grades SET MAJOR = 'CSE' where NAME = 'SADAT';
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [STUDENT_INFO]> SELECT * FROM Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s019       | Naima   | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s004       | Nahid   | ECE   | 2       |            7 |          16.5 | 3.25 | 2018-08-20 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s008       | Farhana | CSE   | 2       |            6 |            15 | 2.67 | 2018-08-16 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
9 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> update Lab_grades set NAME = 'GECKO',PROJECT_MARKS = 16 WHERE student_id = 's004';
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [STUDENT_INFO]> select * from Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s019       | Naima   | CSE   | 2       |           12 |            20 | 3.70 | 2018-08-14 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s004       | GECKO   | ECE   | 2       |            7 |            16 | 3.25 | 2018-08-20 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s008       | Farhana | CSE   | 2       |            6 |            15 | 2.67 | 2018-08-16 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
9 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> delete from Lab_grades where name = 'Naima';
Query OK, 1 row affected (0.002 sec)

MariaDB [STUDENT_INFO]> select * from Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s004       | GECKO   | ECE   | 2       |            7 |            16 | 3.25 | 2018-08-20 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s008       | Farhana | CSE   | 2       |            6 |            15 | 2.67 | 2018-08-16 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
8 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> delete from Lab_grades where DAYS_PRESENT < 8;
Query OK, 2 rows affected (0.002 sec)

MariaDB [STUDENT_INFO]> SELECT * FROM Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
6 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> insert into Lab_grades values ('s004','gecko','ECE','2',7,6,3.35,'2018-08020');
Query OK, 1 row affected, 1 warning (0.002 sec)

MariaDB [STUDENT_INFO]> select * from Lab_grades;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s004       | gecko   | ECE   | 2       |            7 |             6 | 3.35 | 0000-00-00 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select student_id,name,project_marks from lab_grades;
+------------+---------+---------------+
| student_id | name    | project_marks |
+------------+---------+---------------+
| s01        | abir    |          18.5 |
| s002       | NAFIS   |            20 |
| s003       | Tasneem |            18 |
| s005       | Sadat   |            20 |
| s006       | SimSim  |          17.5 |
| s007       | Muhtadi |            19 |
| s004       | gecko   |             6 |
+------------+---------+---------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select name,project_marks + days_present*5/12 as Total_marks from Lab_grades;
+---------+--------------+
| name    | Total_marks  |
+---------+--------------+
| abir    | 22.666666666 |
| NAFIS   |           25 |
| Tasneem | 21.333333333 |
| Sadat   | 24.583333333 |
| SimSim  |         22.5 |
| Muhtadi | 23.166666666 |
| gecko   |  8.916666666 |
+---------+--------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select upper(name),lower(name) from Lab_grades;
+-------------+-------------+
| upper(name) | lower(name) |
+-------------+-------------+
| ABIR        | abir        |
| NAFIS       | nafis       |
| TASNEEM     | tasneem     |
| SADAT       | sadat       |
| SIMSIM      | simsim      |
| MUHTADI     | muhtadi     |
| GECKO       | gecko       |
+-------------+-------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select major from Lab_grades & select distinct major form lab_grades;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '& select distinct major form lab_grades' at line 1
MariaDB [STUDENT_INFO]> select distinct major from Lab_grades;
+-------+
| major |
+-------+
| CS    |
| CSE   |
| ENG   |
| ECE   |
+-------+
4 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select major from lab_grades;
+-------+
| major |
+-------+
| CS    |
| CSE   |
| CS    |
| CSE   |
| ENG   |
| ECE   |
| ECE   |
+-------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades order by name ;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s004       | gecko   | ECE   | 2       |            7 |             6 | 3.35 | 0000-00-00 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades order by name desc,sub_date asc;
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s006       | SimSim  | ENG   | 1       |           12 |          17.5 | 3.70 | 2018-08-15 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s007       | Muhtadi | ECE   | 1       |           10 |            19 | 3.67 | 2018-09-16 |
| s004       | gecko   | ECE   | 2       |            7 |             6 | 3.35 | 0000-00-00 |
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select name,days_present,project_marks FROM Lab_grades WHERE project_marks>17;
+---------+--------------+---------------+
| name    | days_present | project_marks |
+---------+--------------+---------------+
| abir    |           10 |          18.5 |
| NAFIS   |           12 |            20 |
| Tasneem |            8 |            18 |
| Sadat   |           11 |            20 |
| SimSim  |           12 |          17.5 |
| Muhtadi |           10 |            19 |
+---------+--------------+---------------+
6 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select name ,project_marks from lab_grades where major = 'cse';
+-------+---------------+
| name  | project_marks |
+-------+---------------+
| NAFIS |            20 |
| Sadat |            20 |
+-------+---------------+
2 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select name,project_marks from lab_grades where project_marks between 17 and 19;
+---------+---------------+
| name    | project_marks |
+---------+---------------+
| abir    |          18.5 |
| Tasneem |            18 |
| SimSim  |          17.5 |
| Muhtadi |            19 |
+---------+---------------+
4 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades where major in('cse','cs');
+------------+---------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME    | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+---------+-------+---------+--------------+---------------+------+------------+
| s01        | abir    | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
| s002       | NAFIS   | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
| s003       | Tasneem | CS    | 1       |            8 |            18 | 3.57 | 2018-09-18 |
| s005       | Sadat   | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
+------------+---------+-------+---------+--------------+---------------+------+------------+
4 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> update lab_grades set sub_date = '2018-08-20' where student_id = 's004';
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [STUDENT_INFO]> select name,sub_date from lab_grades;
+---------+------------+
| name    | sub_date   |
+---------+------------+
| abir    | 2018-09-15 |
| NAFIS   | 2018-08-15 |
| Tasneem | 2018-09-18 |
| Sadat   | 2018-09-13 |
| SimSim  | 2018-08-15 |
| Muhtadi | 2018-09-16 |
| gecko   | 2018-08-20 |
+---------+------------+
7 rows in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades where project_marks > 18 AND sub_date BETWEEN  '2018-08-01' AND '2018-08-31';
+------------+-------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME  | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+-------+-------+---------+--------------+---------------+------+------------+
| s002       | NAFIS | CSE   | 1       |           12 |            20 | 3.86 | 2018-08-15 |
+------------+-------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades WHERE name LIKE '%a';
Empty set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades WHERE name LIKE 'a%';
+------------+------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+------+-------+---------+--------------+---------------+------+------------+
| s01        | abir | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
+------------+------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades WHERE name LIKE '%a%a%';
+------------+-------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME  | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+-------+-------+---------+--------------+---------------+------+------------+
| s005       | Sadat | CSE   | 2       |           11 |            20 | 4.00 | 2018-09-13 |
+------------+-------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [STUDENT_INFO]> select * from lab_grades WHERE name like 'a___';
+------------+------+-------+---------+--------------+---------------+------+------------+
| student_id | NAME | MAJOR | SECTION | DAYS_PRESENT | PROJECT_MARKS | CGPA | SUB_DATE   |
+------------+------+-------+---------+--------------+---------------+------+------------+
| s01        | abir | CS    | 1       |           10 |          18.5 | 3.91 | 2018-09-15 |
+------------+------+-------+---------+--------------+---------------+------+------------+
1 row in set (0.000 sec)

MariaDB [STUDENT_INFO]>
