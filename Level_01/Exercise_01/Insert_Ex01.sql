SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `sale`;
TRUNCATE TABLE `client`;
TRUNCATE TABLE `selling_agent`;
TRUNCATE TABLE `glass`;
TRUNCATE TABLE `provider`;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `provider` (`provider_name`, `provider_address`, `provider_phone`, `Fax`, `nif`)
VALUES ('OptiPro', 'Calle Mayor 12, Barcelona', 933445566, 933445567, 'NIF123456A'),
('VisionPlus', 'Avenida del Sol 45, Madrid', 912334455, 912334456, 'NIF234567B'),
('EyeMasters', 'Carrer del Mar 7, Valencia', 961223344, 961223345, 'NIF345678C'),
('ClearView', 'Rua Nova 88, Sevilla', 954556677, 954556678, 'NIF456789D'),
('LensWorld', 'Paseo de la Reforma 21, Bilbao', 944112233, 944112234, 'NIF567890E');

INSERT INTO `selling_agent` (`name`)
VALUES ('Alberto Domingo'),
('Ana Gómez'),
('Luis Fernández');

INSERT INTO `client` (`client_name`,`client_address`,`client_phone`,`mail`,`register_date`,`recomended_client`)
VALUES ('Pepita', 'Calle desengaño 17, Madrid', 654675746, 'bla@gmail.com','2007-10-28', NULL),
('Laura Martínez', 'Calle Luna 10, Madrid', 612345678, 'laura@mail.com', '2025-01-15', NULL),
('Carlos Pérez', 'Avenida Sol 23, Barcelona', 622334455, 'carlos@mail.com', '2025-02-20', 2),
('Marta Ruiz', 'Carrer Mar 5, Valencia', 633445566, 'marta@mail.com', '2025-03-10', NULL),
('Javier Soto', 'Rua Nova 77, Sevilla', 644556677, 'javier@mail.com', '2025-04-05', 3),
('Elena Torres', 'Paseo Reforma 12, Bilbao', 655667788, 'elena@mail.com', '2025-05-18', 4);

INSERT INTO `glass` (`brand`, `right_glass_graduation`, `left_glass_graduation`, `mount_type`, `mount_color`, `glass_color`, `price`, `provider_id`)
VALUES ('RayBan', 1.50, 1.25, 'pasta', 'black', 'transparent', 120.50, 1),
('Oakley', 2.00, 2.00, 'metálica', 'silver', 'gray', 150.00, 2),
('Gucci', 0.75, 0.75, 'flotante', 'gold', 'brown', 200.00, 3),
('Prada', 1.25, 1.50, 'pasta', 'blue', 'green', 180.00, 4),
('Versace', 1.00, 1.00, 'metálica', 'black', 'transparent', 220.00, 5);

INSERT INTO `sale` (`sale_date`, `client_id`, `agent_id`, `glass_id`, `quantity`, `total_price`) 
VALUES ('2025-06-01', 2, 2, 1, 1, 120.50),
('2025-06-05', 3, 2, 2, 2, 300.00),
('2025-06-10', 4, 3, 3, 1, 200.00),
('2025-06-11', 1, 1, 4, 1, 180.00),
('2025-06-11', 1, 1, 5, 1, 220.00), 
('2025-06-15', 5, 3, 4, 1, 180.00), 
('2025-06-20', 6, 2, 5, 2, 440.00);