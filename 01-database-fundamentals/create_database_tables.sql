-- SQL Practice
-- Topic: Creating Databases and Tables
-- Learning Source: KodNest

-- Create a database
CREATE DATABASE university;

-- Select the database
USE university;

-- Create the parent table
CREATE TABLE parent (
    sid INT PRIMARY KEY,
    name VARCHAR(20),
    age INT
);

-- Insert records into the parent table
INSERT INTO parent
VALUES
(67, 'Yash', 19),
(80, 'Uday', 18),
(98, 'Charan', 20);

-- Display the parent table
SELECT * FROM parent;
