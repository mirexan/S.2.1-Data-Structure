SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Province;
TRUNCATE TABLE Category;
TRUNCATE TABLE Town;
TRUNCATE TABLE Product;
TRUNCATE TABLE Store;
TRUNCATE TABLE Product;
TRUNCATE TABLE Clients;
TRUNCATE TABLE Employee;
TRUNCATE TABLE Orders;
TRUNCATE TABLE Category;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Province (name) VALUES
('Barcelona'),
('Girona'),
('Tarragona'),
('Lleida'),
('Madrid');

INSERT INTO Category (name) VALUES
('Classics'),
('Gourmet'),
('Seasonal');


INSERT INTO Town (name, province_id) VALUES
('Barcelona', 1),
('L\'Hospitalet de Llobregat', 1),
('Badalona', 1),
('Girona', 2),
('Tarragona', 3),
('Madrid', 5),
('Puigcerda',4);

INSERT INTO Product (name, description, image, product_type, price, category_id) VALUES
('Margherita', 'Mozzarella , basil and tomato', '/img/margherita.jpg', 'Pizza', 12.50, 1),
('Autum Pizza', 'Duck magret, fig jam and burrata', '/img/duck.jpg', 'Pizza', 17.50, 3),
('HyperEgg Pizza', 'Quail eggs, bottarga, salicornia and black sesame seeds', NULL, 'Pizza', 19.00, 2),
('Kimchi Burger', '200g of veal meat, arzua uloa cheese, Kimchi and lettuce ', '/img/kimchi-burger.jpg', 'Burger', 11.50, NULL),
('Coca-Cola', '33cl can', '/img/cocacola.jpg', 'Drink', 2.30, NULL),
('Mineral watter', '50cl bottle', '/img/watter.jpg', 'Drink', 2.00, NULL);

INSERT INTO Store (address, postal_code, town_id) VALUES
('Carrer de Sants, 1', '08028', 1),
('Avinguda Gran Via, 50', '08902', 2),
('Carrer del Mar, 10', '08911', 3),
('Rambla de la Llibertat, 20', '17001', 4),
('Calle Madrid, 100', '28901', 6);

INSERT INTO Clients (first_name, last_name, address, postal_Code, town_id, phone_number) VALUES
('Ana', 'García', 'Carrer Fals 123', '08028', 1, '600111222'),
('Juan', 'Martínez', 'Plaça Nova 5', '08902', 2, '600222333'),
('Maria', 'López', 'Avinguda Diagonal 400', '08001', 1, '600333444'),
('Carlos', 'Sánchez', 'Ronda de Dalt 10', '08911', 3, '600444555'),
('Laura', 'Pérez', 'Carrer de Fora 30', '17001', 4, '600555666');

INSERT INTO Employee (first_name, last_name, nif, phone_number, working_role) VALUES
('David', 'Ruiz', '47890123A', '610111222', 'cook'),
('Sara', 'Gómez', '47890124B', '610222333', 'delivery person'),
('Miguel', 'Hernández', '47890125C', '610333444', 'cook'),
('Lucía', 'Jiménez', '47890126D', '610444555', 'delivery person'),
('Pedro', 'Alonso', '47890127E', '610555666', 'cook');

INSERT INTO Orders (date_Time, order_type, total_price, employee_id, delivery_time, store_id, client_id) VALUES
('2025-10-29 20:00:00', 'Delivery', 12.50, 2, '2025-10-29 20:30:00', 1, 1),
('2025-10-29 20:10:00', 'Pickup', 11.00, NULL, NULL, 1, 3),
('2025-10-29 20:15:00', 'Delivery', 22.50, 4, NULL, 2, 2),
('2025-10-29 20:20:00', 'Delivery', 19.00, 2, '2025-10-29 20:55:00', 4, 5),
('2025-10-29 20:25:00', 'Pickup', 10.00, NULL, NULL, 5, 1);

INSERT INTO Order_Product (order_id, product_id, quantity) VALUES
(1, 2, 1), 
(1, 5, 1),
(2, 1, 1), 
(2, 6, 1), 
(3, 3, 1),
(3, 4, 1),
(4, 1, 2),
(5, 5, 5);