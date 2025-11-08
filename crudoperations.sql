-- Create a new database
CREATE DATABASE backend_practice;

-- Switch to that database
USE backend_practice;

-- Create a new table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(50),
    salary INT
);

-- 🔹 CREATE: Insert sample data
INSERT INTO employees (id, name, role, salary) VALUES
(1, 'Farhan', 'Backend Developer', 60000),
(2, 'Ayesha', 'Frontend Developer', 55000),
(3, 'Zaid', 'Full Stack Developer', 65000);

-- 🔹 READ: View all data
SELECT * FROM employees;

-- 🔹 UPDATE: Modify salary of one employee
UPDATE employees SET salary = 62000 WHERE id = 1;

-- 🔹 DELETE: Remove one employee
DELETE FROM employees WHERE id = 2;

-- 🔹 READ AGAIN: View updated data
SELECT * FROM employees;