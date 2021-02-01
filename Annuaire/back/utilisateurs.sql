DROP DATABASE IF EXISTS Poneyfringants; 
CREATE DATABASE Poneyfringants; 
USE Poneyfringants; 

CREATE USER IF NOT EXISTS 'enzo'@'localhost' IDENTIFIED BY 'EnzoAdmin';

GRANT ALL ON Poneyfringants.* TO 'enzo'@'localhost'; 

DROP TABLE IF EXISTS utilisateurs;
CREATE TABLE utilisateurs (
    id INT PRIMARY KEY AUTO_INCREMENT,
   
    pseudo VARCHAR(255) UNIQUE, 
    email VARCHAR(255) UNIQUE, 
    password VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO utilisateurs(pseudo, email, password) VALUES('jami','lecamion@live.fr','$2y$10$iM/e6wE2Z2bbrWCDEn0J2uLzX3F0oHy7GMbl1cN.E9UR7jK9szf4W');