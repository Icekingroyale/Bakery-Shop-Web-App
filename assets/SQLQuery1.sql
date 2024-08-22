-- creating database       10-08-2024
create database BakeryShopDB;

use BakeryShopDB;

-- creating database objects

CREATE TABLE users
(
    id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15),
    created_at DATETIME DEFAULT GETDATE() NOT NULL
);


CREATE TABLE products
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    image_url VARCHAR(255),
    stock_quantity INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE() NOT NULL
);

CREATE TABLE orders
(
    id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT GETDATE() NOT NULL,
    CONSTRAINT FK_UserOrder FOREIGN KEY (user_id)
        REFERENCES Users(id)
);


CREATE TABLE orderItems
(
    id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_at_purchase DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_OrderItemOrder FOREIGN KEY (order_id)
        REFERENCES Orders(id),
    CONSTRAINT FK_OrderItemProduct FOREIGN KEY (product_id)
        REFERENCES Products(id)
);


-- inserting test values in the database objects

INSERT INTO users
    (username, email, password, first_name, last_name, address, phone_number)
VALUES
    ('john_doe', 'john@example.com', 'password123', 'John', 'Doe', '123 Main St', '123-456-7890');


INSERT INTO products (name, description, price, image_url, stock_quantity)
VALUES ('Whole Wheat Bread', 'Freshly baked whole wheat bread', 4.99, '/images/whole_wheat.jpg', 50);


-- testing efficiency and relationship among the dbos

select username, name, description from users u join products p
on u.id = p.id 






select * from users

select * from products
