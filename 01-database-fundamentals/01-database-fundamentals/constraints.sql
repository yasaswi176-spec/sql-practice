-- SQL Practice: Constraints
-- Learning Source: KodNest
CREATE DATABASE IF NOT EXISTS university;
USE university;
-- 1. Create a table using PRIMARY KEY, NOT NULL and UNIQUE
CREATE TABLE students (
    sid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT
);
-- 2. Insert records into students
INSERT INTO students
VALUES
(101, 'Yasaswi', 'yasaswi@example.com', 19),
(102, 'Anu', 'anu@example.com', 20),
(103, 'Ravi', 'ravi@example.com', 19);
-- 3. Display student records
SELECT *
FROM students;
-- 4. Create the parent table
CREATE TABLE parent (
    sid INT PRIMARY KEY,
    name VARCHAR(20),
    age INT
);
-- 5. Insert records into the parent table
INSERT INTO parent
VALUES
(67, 'Yash', 19),
(80, 'Uday', 18),
(98, 'Charan', 20);
-- 6. Display the parent table
SELECT *
FROM parent;
-- 7. Create the child table with a FOREIGN KEY
CREATE TABLE child (
    sid INT,
    marks INT,
    FOREIGN KEY (sid) REFERENCES parent(sid)
);
-- 8. Insert records into the child table
INSERT INTO child
VALUES
(67, 89),
(80, 92);
-- 9. Display child records
SELECT *
FROM child;
-- 10. Display parent details along with marks
SELECT
    parent.sid,
    parent.name,
    child.marks
FROM parent
INNER JOIN child
ON parent.sid = child.sid;

-- Invalid examples for understanding constraints
-- Execute these one at a time after commenting the previous query.

-- Duplicate PRIMARY KEY
-- INSERT INTO parent
-- VALUES (67, 'Ravi', 21);

-- NULL value in PRIMARY KEY
-- INSERT INTO parent
-- VALUES (NULL, 'Anu', 20);

-- Invalid FOREIGN KEY value
-- INSERT INTO child
-- VALUES (999, 75);
