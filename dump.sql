CREATE DATABASE ecomm;

USE ecomm;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    wallet DECIMAL(10,2) DEFAULT 500.00,
    PRIMARY KEY (id)
);

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO products (name, price, description) VALUES
('Gaming Laptop', 950.00, 'High-performance gaming laptop with 16GB RAM and 512GB SSD.'),
('5G Smartphone', 450.00, 'Latest smartphone with 5G connectivity and advanced camera system.'),
('Wireless Earbuds', 60.00, 'Compact and lightweight wireless earbuds with a noise-canceling feature.'),
('Fitness Tracker', 90.00, 'Wearable fitness tracker with heart rate monitoring and GPS.'),
('E-Reader', 90.00, 'E-reader with a 7-inch display and adjustable brightness for comfortable reading.');
