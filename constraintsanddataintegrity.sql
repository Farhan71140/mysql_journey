-- Step 1: Create a fresh database
DROP DATABASE IF EXISTS constraints_demo;
CREATE DATABASE constraints_demo;
USE constraints_demo;

-- Step 2: Create departments table with constraints
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);

-- Step 3: Create employees table with multiple constraints
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,           -- Unique ID auto-generated
    emp_name VARCHAR(50) NOT NULL,                   -- Name must be provided
    email VARCHAR(100) UNIQUE,                       -- No duplicate emails
    age INT CHECK (age >= 18),                       -- Must be 18 or older
    salary DECIMAL(10,2) DEFAULT 30000.00,           -- Default salary if not given
    dept_id INT,                                     -- Foreign key to departments
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Step 4: Insert sample departments
INSERT INTO departments (dept_name) VALUES
('Engineering'),
('Design'),
('HR');

-- Step 5: Insert sample employees
INSERT INTO employees (emp_name, email, age, salary, dept_id) VALUES
('Farhan', 'farhan@example.com', 25, 50000.00, 1),
('abhishek', 'abhishek@example.com', 22, NULL, 2),       -- Uses default salary
('prasad', 'zaid@example.com', 30, 60000.00, 1);

-- Step 6: Try inserting invalid data (for practice)
-- Uncomment these lines one by one to test constraint errors

-- INSERT INTO employees (emp_name, email, age, salary, dept_id) VALUES
-- ('InvalidUser', 'farhan@example.com', 20, 40000.00, 1);  -- Duplicate email

-- INSERT INTO employees (emp_name, email, age, salary, dept_id) VALUES
-- ('TooYoung', 'young@example.com', 15, 25000.00, 2);      -- Age < 18 violates CHECK

-- INSERT INTO employees (emp_name, email, age, salary, dept_id) VALUES
-- (NULL, 'nullname@example.com', 25, 30000.00, 3);         -- NULL name violates NOT NULL

-- Step 7: View valid data
SELECT * FROM employees;