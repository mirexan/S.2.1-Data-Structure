CREATE DATABASE IF NOT EXISTS PizzaTravessia;
USE PizzaTravessia;

DROP TABLE IF EXISTS Province;
CREATE TABLE IF NOT EXISTS Province (
id_province INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(60) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS Town;
CREATE TABLE IF NOT EXISTS Town (
id_town INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(60) NOT NULL UNIQUE,
province_id INT NOT NULL,
FOREIGN KEY (province_id) REFERENCES Province(province_id)
);

DROP TABLE IF EXISTS Clients;
CREATE TABLE IF NOT EXISTS Clients (
client_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(60) NOT NULL,
last_name VARCHAR(60) NOT NULL,
address VARCHAR(60) NULL,
postal_Code INT NULL,
town_id INT NOT NULL,
province_id INT NOT NULL,
FOREIGN KEY (town_id) REFERENCES Town(id_town),
FOREIGN KEY (province_id) REFERENCES Province(id_province)
);

DROP TABLE IF EXISTS Order_Product

DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
date_Time DATETIME NOT NULL,
order_type ENUM('Delivery','Pickup') NOT NULL,
quantity TINYINT NOT NULL,
total_price INT NOT NULL,
employee_id INT NULL,
delivery_time DATETIME NULL,
FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
FOREIGN KEY (delivery_time) REFERENCES Employee(delivery_time)
);

DROP TABLE IF EXISTS Category;
CREATE TABLE IF NOT EXISTS Category(
category_id INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(60) NOt NULL
);

DROP TABLE IF EXISTS Product;
CREATE TABLE IF NOT EXISTS Product(
product_id INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(60) NOT NULL,
`Description` TEXT NULL,
image VARCHAR(255) NULL,
order_Type ENUM('Pizza','Burger','Drink') NOT NULL,
price DECIMAL(4,2) NOT NULL,
category_id INT NULL,
FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- category
-- shop
-- employee
--
