SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `provider`;
TRUNCATE TABLE `glasses`;
TRUNCATE TABLE `clients`;
TRUNCATE TABLE `sale`;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `provider` (`provider_name`, `provider_address`, `provider_phone`, `Fax`, `nif`)
VALUES ('OptiPro', 'Calle Mayor 12, Barcelona', 933445566, 933445567, 'NIF123456A'),
('VisionPlus', 'Avenida del Sol 45, Madrid', 912334455, 912334456, 'NIF234567B'),
('EyeMasters', 'Carrer del Mar 7, Valencia', 961223344, 961223345, 'NIF345678C'),
('ClearView', 'Rua Nova 88, Sevilla', 954556677, 954556678, 'NIF456789D'),
('LensWorld', 'Paseo de la Reforma 21, Bilbao', 944112233, 944112234, 'NIF567890E');

INSERT INTO `glasses` (`brand`, `right_glass_graduation`, `left_glass_graduation`, `mount_type`, `mount_color`, `glass_color`, `price`, `provider_name`)
VALUES ('RayBan', 1.50, 1.25, 'pasta', 'black', 'transparent', 120.50, 'OptiPro'),
('Oakley', 2.00, 2.00, 'metálica', 'silver', 'gray', 150.00, 'VisionPlus'),
('Gucci', 0.75, 0.75, 'flotante', 'gold', 'brown', 200.00, 'EyeMasters'),
('Prada', 1.25, 1.50, 'pasta', 'blue', 'green', 180.00, 'ClearView'),
('Versace', 1.00, 1.00, 'metálica', 'black', 'transparent', 220.00, 'LensWorld');

INSERT INTO `clients` (`client_name`,`client_address`,`client_phone`,`mail`,`register_date`,`recomended_client`,`selling_agent`)
VALUES ('Pepita', 'Calle desengaño 17, Madrid', 654675746, 'bla@gmail.com','2007-10-28', NULL, 'Alberto Domingo'),
('Laura Martínez', 'Calle Luna 10, Madrid', 612345678, 'laura@mail.com', '2025-01-15', NULL,'Ana Gómez'),
('Carlos Pérez', 'Avenida Sol 23, Barcelona', 622334455, 'carlos@mail.com', '2025-02-20', 'Laura Martínez', 'Ana Gómez'),
('Marta Ruiz', 'Carrer Mar 5, Valencia', 633445566, 'marta@mail.com', '2025-03-10', NULL,'Luis Fernández'),
('Javier Soto', 'Rua Nova 77, Sevilla', 644556677, 'javier@mail.com', '2025-04-05', 'Carlos Pérez', 'Luis Fernández'),
('Elena Torres', 'Paseo Reforma 12, Bilbao', 655667788, 'elena@mail.com', '2025-05-18', 'Marta Ruiz', 'Ana Gómez');

INSERT INTO `sale` (`sale_date`, `client_name`, `selling_agent`, `glasses_id`, `quantity`, `total_price`) 
VALUES ('2025-06-01', 'Laura Martínez', 'Ana Gómez', 1, 1, 120.50),
('2025-06-05', 'Carlos Pérez', 'Ana Gómez', 2, 2, 300.00),
('2025-06-10', 'Marta Ruiz', 'Luis Fernández', 3, 1, 200.00),
('2025-06-11', 'Pepita','Alberto Domingo', 4, 1,180.00),
('2025-06-11', 'Pepita','Alberto Domingo', 5, 1,220.00),
('2025-06-15', 'Javier Soto', 'Luis Fernández', 4, 1, 180.00),
('2025-06-20', 'Elena Torres', 'Ana Gómez', 5, 2, 440.00);
