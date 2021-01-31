DROP DATABASE IF EXISTS Poneyfringants; 
CREATE DATABASE Poneyfringants; 
USE Poneyfringants; 

CREATE USER IF NOT EXISTS enzo@live.fr IDENTIFIED BY 'EnzoAdmin';

GRANT ALL ON Poneyfringants.* TO enzo@live.fr; 

DROP TABLE IF EXISTS utilisateurs;
CREATE TABLE utilisateurs (
    id INT PRIMARY KEY AUTO_INCREMENT, -- id est la colonne qui permettre d'indentifier de manière unique un utilisateur
    -- Pour cela on indique que cette colonne est la clé primaire. Une clé primaire est unique, et ne peut pas être NULL (vide)
    pseudo VARCHAR(255) UNIQUE, 
    email VARCHAR(255) UNIQUE, 
    password VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO utilisateurs(pseudo, email, password) VALUES('jami','lecamion@live.fr','$2y$10$iM/e6wE2Z2bbrWCDEn0J2uLzX3F0oHy7GMbl1cN.E9UR7jK9szf4W');