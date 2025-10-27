CREATE DATABASE BottleBottomOptic;
USE BottleBottomOptic;

DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
`name` VARCHAR(60) NOT NULL,
`addres` VARCHAR(60) NULL,
`phone_number` INT(11) NULL,
`Fax` INT(11) NULL,
`nif` VARCHAR(60) NOT NULL
);

DROP TABLE IF EXISTS `glasses`;
CREATE TABLE `glasses` (
`brand` VARCHAR(60) NOT NULL,
`glass_graduation` VARCHAR(60) NOT NULL,
`mount_type` VARCHAR(60) NULL,
`mount_color` VARCHAR(60) DEFAULT 'black',
`glass_color` VARCHAR(60) NULL,
`price` FLOAT NOT NULL
);

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
`name` VARCHAR(60) NOT NULL,
`addres` VARCHAR(60) NULL,
`phone_number` INT(11) NULL,
`mail` VARCHAR(60) NOT NULL,
`register_date` DATE DEFAULT NULL,
`recomended_client`   ,
`price` FLOAT NOT NULL
);
