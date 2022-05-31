CREATE DATABASE practica1;
USE practica1; 
CREATE TABLE City
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(20)
);
CREATE TABLE Users
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	`Name` VARCHAR(20),
	'Email' VARCHAR(30),
	'Phone' VARCHAR(20),
	City_id INT,
	FOREIGN KEY (City_id) REFERENCES City (Id)
 );
INSERT City (Name)
VALUES ('Armavir'), ('Magadan'), ('Chikago'), ('Tbilisi'), ('Batumi');
INSERT Users(`Name`, 'Email', 'Phone', City_id)
VALUES
('Goga', 'sample@gmail.com', '+89182281337', 2),
('Boga', 'sample@gmail.com', '+89182281337', 1),
('Roga', 'sample@gmail.com', '+89182281337', 2),
('Toga', 'sample@gmail.com','+89182281337', 3),
('Poga', 'sample@gmail.com', '+89182281337', 3),
('Soga', 'sample@gmail.com', '+89182281337', 5),
('Doga', 'sample@gmail.com', '+89182281337',1),
('Foga', 'sample@gmail.com', '+89182281337',4),
('Hoga', 'sample@gmail.com', '+89182281337',4),
('Nikita', 'sample@gmail.com', '+89182281337',5);