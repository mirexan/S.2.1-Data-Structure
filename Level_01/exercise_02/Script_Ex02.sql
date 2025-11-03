CREATE DATABASE IF NOT EXISTS PizzaTravessia;
USE PizzaTravessia;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

DROP TABLE IF EXISTS province;
CREATE TABLE IF NOT EXISTS Province (
province_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(60) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS town;
CREATE TABLE IF NOT EXISTS town (
town_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(60) NOT NULL UNIQUE,
province_id INT NOT NULL,
FOREIGN KEY (province_id) REFERENCES province(province_id)
);

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
client_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(60) NOT NULL,
last_name VARCHAR(60) NOT NULL,
phone_number VARCHAR(15) NOT NULL,
address VARCHAR(60) NULL,
postal_Code VARCHAR(10) NULL,
town_id INT NOT NULL,
FOREIGN KEY (town_id) REFERENCES town(town_id)
);

DROP TABLE IF EXISTS category;
CREATE TABLE IF NOT EXISTS category(
category_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS product;
CREATE TABLE IF NOT EXISTS product(
product_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(60) NOT NULL,
description TEXT NULL,
image VARCHAR(255) NULL,
product_type ENUM('Pizza','Burger','Drink') NOT NULL,
price DECIMAL(10,2) NOT NULL,
category_id INT NULL,
FOREIGN KEY (category_id) REFERENCES category(category_id)
);

DROP TABLE IF EXISTS store;
CREATE TABLE IF NOT EXISTS store(
store_id INT auto_increment PRIMARY KEY,
address VARCHAR(60) NOT NULL,
postal_code VARCHAR(10) NOT NULL,
town_id INT NOT NULL,
FOREIGN KEY (town_id) references town(town_id)
);

DROP TABLE IF EXISTS employee;
CREATE TABLE IF NOT EXISTS employee(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(60) NOT NULL,
last_name VARCHAR(60) NOT NULL,
nif VARCHAR(60) NOT NULL,
phone_number VARCHAR(15) NOT NULL,
working_role ENUM('cook','delivery person') NOT NULL
);

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order`(
order_id INT AUTO_INCREMENT PRIMARY KEY,
date_Time DATETIME NOT NULL,
order_type ENUM('Delivery','Pickup') NOT NULL,
total_price DECIMAL(10,2) NOT NULL,
employee_id INT NULL,
delivery_time DATETIME NULL,
store_id INT NOT NULL,
client_id INT NOT NULL,
FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
FOREIGN KEY (store_id) REFERENCES store(store_id),
FOREIGN KEY (client_id) REFERENCES `client`(client_id)
);

DROP TABLE IF EXISTS order_product;
CREATE TABLE IF NOT EXISTS order_product(
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity tinyint NOT NULL,
FOREIGN KEY (order_id) REFERENCES `order`(order_id),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;