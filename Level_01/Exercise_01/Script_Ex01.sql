CREATE DATABASE IF NOT EXISTS BottleBottomOptic;
USE BottleBottomOptic;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


DROP TABLE IF EXISTS `provider`;
CREATE TABLE IF NOT EXISTS`provider` (
`provider_id` INT AUTO_INCREMENT PRIMARY KEY,
`provider_name` VARCHAR(60) NOT NULL,
`provider_address` VARCHAR(60) NULL,
`provider_phone` INT(11) NULL,
`Fax` INT NULL,
`nif` VARCHAR(60) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `glass`;
CREATE TABLE IF NOT EXISTS `glass` (
`glass_id` INT AUTO_INCREMENT PRIMARY KEY,
`brand` VARCHAR(60) NOT NULL,
`right_glass_graduation` DECIMAl(4,2) DEFAULT (0.00),
`left_glass_graduation` DECIMAl(4,2) DEFAULT (0.00),
`mount_type` VARCHAR(60) NULL,
`mount_color` VARCHAR(60) DEFAULT 'black',
`glass_color` VARCHAR(60) NULL,
`price` FLOAT NOT NULL,
`provider_id` INT NOT NULL,
FOREIGN KEY (`provider_id`) REFERENCES `provider`(`provider_id`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `selling_agent`;
CREATE TABLE IF NOT EXISTS `selling_agent` (
`agent_id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
`client_id` INT AUTO_INCREMENT PRIMARY KEY,
`client_name` VARCHAR(60) NOT NULL,
`client_address` VARCHAR(60) NULL,
`client_phone` INT NULL,
`mail` VARCHAR(60) NOT NULL,
`register_date` DATE NULL,
`recomended_client` INT DEFAULT NULL,
FOREIGN KEY (`recomended_client`) REFERENCES `client`(`client_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
`sale_id` INT AUTO_INCREMENT PRIMARY KEY,
`sale_date` DATE NOT NULL,
`client_id` INT NOT NULL,
`agent_id` INT NOT NULL,
`glass_id` INT NOT NULL,
`quantity` INT DEFAULT 1,
`total_price` FLOAT NOT NULL,
FOREIGN KEY (`client_id`) REFERENCES `client`(`client_id`),
FOREIGN KEY (`glass_id`) REFERENCES `glass`(`glass_id`),
FOREIGN KEY (`agent_id`) REFERENCES `selling_agent`(`agent_id`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;