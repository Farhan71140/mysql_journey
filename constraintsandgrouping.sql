-- 1. Create a new database
CREATE DATABASE IF NOT EXISTS my_shop;
USE my_shop;

-- 2. Create a users table with basic constraints
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,         -- Unique ID for each user
    username VARCHAR(50) NOT NULL UNIQUE,      -- Must be filled and unique
    age INT CHECK (age >= 18),                 -- Only allow age 18 or above
    country VARCHAR(50) DEFAULT 'India'        -- Default country is India
);

-- 3. Create an orders table linked to users
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique ID for each order
    user_id INT,                               -- Refers to a user
    amount DECIMAL(10,2),                      -- Order amount
    FOREIGN KEY (user_id) REFERENCES users(id) -- Link to users table
);

-- 4. Insert some sample users
INSERT INTO users (username, age, country) VALUES
('farhan01', 22, 'India'),
('devguru', 30, 'USA'),
('coderx', 19, 'India');

-- 5. Insert some sample orders
INSERT INTO orders (user_id, amount) VALUES
(1, 500.00),
(1, 300.00),
(2, 1200.00),
(3, 700.00),
(3, 400.00);

-- 6. Group orders by user and show total spent
SELECT user_id, SUM(amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 500;