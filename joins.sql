-- Step 1: Create the database
CREATE DATABASE company;

-- Step 2: Use the database
USE company;

-- Step 3: Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Step 4: Create employees table with dept_id as foreign key
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Step 5: Insert sample departments
INSERT INTO departments VALUES
(1, 'Engineering'),
(2, 'Design');

-- Step 6: Insert sample employees
INSERT INTO employees VALUES
(101, 'Farhan', 'Backend Developer', 1),
(102, 'Ayesha', 'UI Designer', 2),
(103, 'Zaid', 'Full Stack Developer', 1);

-- Step 7: Join employees with departments
SELECT e.name, e.role, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;