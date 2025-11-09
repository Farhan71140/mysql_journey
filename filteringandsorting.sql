-- Step 1: Create the database
CREATE DATABASE company_db;
USE company_db;

-- Step 2: Create the employees table
CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  department VARCHAR(50),
  salary DECIMAL(10,2)
);

-- Step 3: Insert sample data
INSERT INTO employees (name, department, salary) VALUES
('Alice', 'HR', 60000),
('Bob', 'Engineering', 75000),
('Charlie', 'Marketing', 45000),
('David', 'Engineering', 90000),
('Eva', 'HR', 52000),
('Frank', 'Marketing', 30000),
('Grace', 'Engineering', 120000);

-- Step 4: Filtering and Sorting Queries

-- Get employees with salary > 50000, sorted by name
SELECT * FROM employees
WHERE salary > 50000
ORDER BY name ASC;

-- Get top 5 highest-paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 5;