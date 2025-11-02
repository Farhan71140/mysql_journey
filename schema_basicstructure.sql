CREATE DATABASE my_database;
USE my_database;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO users (name, email)
VALUES ('Farhan', 'farhan@example.com'),
       ('Aisha', 'aisha@example.com');

SELECT * FROM users;