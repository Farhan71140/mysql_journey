-- Create a table with constraints
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    age INT CHECK (age >= 18),
    country VARCHAR(50) DEFAULT 'India'
);

-- Create a related table with a foreign key
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert sample data
INSERT INTO users (username, age, country) VALUES
('farhan01', 22, 'India'),
('devguru', 30, 'USA'),
('coderx', 19, 'India');

INSERT INTO orders (user_id, amount) VALUES
(1, 500.00),
(1, 300.00),
(2, 1200.00),
(3, 700.00),
(3, 400.00);

-- Grouping: Total amount spent by each user
SELECT user_id, SUM(amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 500;