
CREATE DATABASE IF NOT EXISTS ecc;

use ecc;

CREATE TABLE `eccphone` (
  `eccphone_lid` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `eccphone_snumber` VARCHAR(20) NOT NULL  COMMENT '',
  `eccphone_bactive` BIT(1) NULL COMMENT '',
  `eccphone_sname` VARCHAR(120) NOT NULL  COMMENT '',
  `eccphone_scaption` VARCHAR(30) NOT NULL  COMMENT '',
  `eccphone_bisblocked` BIT(1) NULL COMMENT '',
  `eccphone_snotes` VARCHAR(200) NULL  COMMENT '',
  `eccphone_scustom1` VARCHAR(50) NULL  COMMENT '',
  `eccphone_scustom2` VARCHAR(50) NULL  COMMENT '',
  `eccphone_lkey1` INT NULL  COMMENT '',
  `eccphone_lkey2` INT NULL  COMMENT '',
  `eccphone_screatedby` VARCHAR(50) NULL  COMMENT '',
  `eccphone_tcreatedon` DATETIME NULL COMMENT '', 
  `eccphone_smodifiedby` VARCHAR(50) NULL  COMMENT '',
  `eccphone_tmodifiedon` DATETIME NULL COMMENT '',
  PRIMARY KEY (`eccphone_lid`)  COMMENT '',
  UNIQUE INDEX `id_UNIQUE` (`eccphone_lid` ASC)  COMMENT '');


CREATE TABLE `users` ( 
	`lid` INT NOT NULL AUTO_INCREMENT COMMENT '',
	`sname` VARCHAR(50) NOT NULL  COMMENT '',
	`slogin` VARCHAR(50) NOT NULL  COMMENT '',
	`spassword` VARCHAR(250) NOT NULL  COMMENT '',
	`bisadministrator` BIT(1) NULL COMMENT '',
	`semail` VARCHAR(100) NULL  COMMENT '',
	`lroleid` INT NULL  COMMENT '',
	`tlastlogin` DATETIME NULL COMMENT '', 
  `scustom1` VARCHAR(50) NULL  COMMENT '',
  `scustom2` VARCHAR(50) NULL  COMMENT '',
  `lkey1` INT NULL  COMMENT '',
  `lkey2` INT NULL  COMMENT '',
  PRIMARY KEY (`lid`)  COMMENT '',
  UNIQUE INDEX `lid_UNIQUE` (`lid` ASC)  COMMENT '');

-- Add Admin User
INSERT INTO users (sname,slogin,spassword,bisadministrator)
	VALUES ('Administrator','admin','AQAAAAEAACcQAAAAEAUZ1FV+L31TYw3LW4qD5kqrrDPgY8HGJQgyCrt69BK0QfGDHnJjj/aikkwU1gReTg==',1);


 
 
