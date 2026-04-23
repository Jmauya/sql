-- Problem statement:
-- Insert below student details in students table and print all data of table.
-- +----+--------+--------+
-- | ID | Name   | Gender |
-- +----+--------+--------+
-- |  3 | Kim    | F      |
-- |  4 | Molina | F      |
-- |  5 | Dev    | M      |
-- +----+--------+--------+

CREATE TABLE students (
    ID INT,
    Name VARCHAR(50),
    Gender CHAR(1)
);

INSERT INTO students (ID, Name, Gender) VALUES
(3, 'Kim', 'F'),
(4, 'Molina', 'F'),
(5, 'Dev', 'M');

SELECT * FROM students;
