CREATE DATABASE IF NOT EXISTS BottleBottomOptic;
USE BottleBottomOptic;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


DROP TABLE IF EXISTS `provider`;
CREATE TABLE IF NOT EXISTS`provider` (
`provider_name` VARCHAR(60) NOT NULL,
`provider_address` VARCHAR(60) NULL,
`provider_phone` INT(11) NULL,
`Fax` INT NULL,
`nif` VARCHAR(60) NOT NULL,
PRIMARY KEY (`provider_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `glasses`;
CREATE TABLE IF NOT EXISTS `glasses` (
`glasses_id` INT AUTO_INCREMENT,
`brand` VARCHAR(60) NOT NULL,
`right_glass_graduation` DECIMAl(4,2) DEFAULT (0.00),
`left_glass_graduation` DECIMAl(4,2) DEFAULT (0.00),
`mount_type` VARCHAR(60) NULL,
`mount_color` VARCHAR(60) DEFAULT 'black',
`glass_color` VARCHAR(60) NULL,
`price` FLOAT NOT NULL,
`provider_name` VARCHAR(60) NOT NULL,
PRIMARY KEY (`glasses_id`),
FOREIGN KEY (`provider_name`) REFERENCES `provider`(`provider_name`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
`client_name` VARCHAR(60) NOT NULL,
`client_address` VARCHAR(60) NULL,
`client_phone` INT NULL,
`mail` VARCHAR(60) NOT NULL,
`register_date` DATE NULL,
`recomended_client` VARCHAR(60) DEFAULT NULL,
`selling_agent` VARCHAR(60) NULL,
PRIMARY KEY (`client_name`),
FOREIGN KEY (`recomended_client`) REFERENCES `clients`(`client_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
`sale_id` INT AUTO_INCREMENT,
`sale_date` DATE NOT NULL,
`client_name` VARCHAR(60) NOT NULL,
`selling_agent` VARCHAR(60) NOT NULL,
`glasses_id` INT NOT NULL,
`quantity` INT DEFAULT 1,
`total_price` FLOAT NOT NULL,
PRIMARY KEY (`sale_id`),
FOREIGN KEY (`client_name`) REFERENCES `clients`(`client_name`),
FOREIGN KEY (`glasses_id`) REFERENCES `glasses`(`glasses_id`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;