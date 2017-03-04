CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT(15) AUTO_INCREMENT PRIMARY KEY,
  text VARCHAR(255),
  room VARCHAR(20),
  user_id INT(15)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  id INT(15) AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(20)
  CONSTRAINT FOREGIN KEY ()
  REFERENCES ()
);



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/



 -- ---
 -- Globals
 -- ---

 -- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
 -- SET FOREIGN_KEY_CHECKS=0;

 -- ---
 -- Table 'messages'
 --
 -- ---
 --
 -- DROP TABLE IF EXISTS `messages`;
 --
 -- CREATE TABLE `messages` (
 --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
 --   `text` VARCHAR(255) NULL DEFAULT NULL,
 --   `room` VARCHAR(255) NULL DEFAULT NULL,
 --   `user_id` INTEGER(20) NULL DEFAULT NULL,
 --   PRIMARY KEY (`id`)
 -- );
 --
 -- -- ---
 -- -- Table 'users'
 -- --
 -- -- ---
 --
 -- DROP TABLE IF EXISTS `users`;
 --
 -- CREATE TABLE `users` (
 --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
 --   `username` VARCHAR(255) NULL DEFAULT NULL,
 --   PRIMARY KEY (`id`)
 -- );
 --
 -- -- ---
 -- -- Foreign Keys
 -- -- ---
 -- 
 -- ALTER TABLE `messages` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
 --
 -- -- ---
 -- -- Table Properties
 -- -- ---
 --
 -- -- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
 -- -- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
 --
 -- -- ---
 -- -- Test Data
 -- -- ---
 --
 -- -- INSERT INTO `messages` (`id`,`text`,`room`,`user_id`) VALUES
 -- -- ('','','','');
 -- -- INSERT INTO `users` (`id`,`username`) VALUES
 -- -- ('','');
