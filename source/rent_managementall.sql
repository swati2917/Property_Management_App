DROP DATABASE IF EXISTS rental_management;  
CREATE DATABASE rental_management;

USE rental_management;


CREATE TABLE properties(
id int(11) PRIMARY KEY AUTO_INCREMENT,
title varchar(255) ,
available enum('Y','N') DEFAULT 'Y',
capacity int(11) ,
detail text,
amount decimal(10,2),
location_id int(11),
image varchar(100)
);

INSERT INTO properties (id,title,available,capacity,detail,amount,location_id,image) VALUES
(1, 'Apartment Heaven' , 'Y' , 4, 'Spacious TownHouse',470.00,3,'001_img_02.jpg'),
(2, 'Apartment \'City\ ' , 'Y' , 6, 'Great Apartment located in managed society',600.00,2,'001_img_02.jpg'),
(3, 'Apartment \'Sun & Ocean \ ' , 'Y' , 4, 'just few miles away from misquamicut beach',300.00,2,'001_img_03.jpg'),
(4, 'Loft Type' , 'Y' , 5, 'Open-plan kitchen, Parking not included',250.00,3,'001_img_05.jpg');



CREATE TABLE rental_properties (
id int (11) PRIMARY KEY AUTO_INCREMENT,
property_id int(11),
week_number int(11),
date_from date,
date_to date,
amount decimal (10,2),
state varchar(20)
);

INSERT INTO rental_properties(id,property_id,week_number,date_from,date_to,amount,state)VALUES
(1, 2, 0, '2018-08-01','2018-08-07', 650.00, 'Available'),
(2, 2, 0, '2018-08-08','2018-08-15', 650.00, 'Reserved'),
(3, 2, 0, '2018-08-22','2018-08-28', 650.00, 'Reserved'),
(4, 4, 0, '2018-10-03','2018-10-09', 450.00, 'Available'),
(5, 4, 0, '2018-10-10','2018-10-15', 480.00, 'Reserved'),
(6, 4, 0, '2018-10-24','2018-10-29', 430.00, 'Available'),
(7, 1, 0, '2018-09-05','2018-09-11', 500.00, 'Available'),
(8, 2, 0, '2018-11-21','2018-11-27', 600.00, 'Reserved'),
(9, 1, 0, '2018-09-12','2018-09-18', 500.00, 'Available'),
(10, 3, 0, '2018-10-03','2018-10-09', 350.00, 'Available'),
(11, 3, 0, '2018-10-10','2018-10-16', 350.00, 'Available'),
(12, 3, 0, '2018-10-17','2018-10-23', 360.00, 'Rented'),
(13, 4, 0, '2018-11-07','2018-11-13', 250.00, 'Rented'),
(14, 4, 0, '2018-11-14','2018-11-20', 200.00, 'Rented'),
(15, 4, 0, '2018-10-24','2018-10-30', 360.00, 'Available'),
(16, 1, 0, '2018-11-21','2018-11-27', 450.00, 'Available'),
(17, 5, 0, '2018-10-03','2018-10-09', 450.00, 'Reserved'),
(18, 5, 0, '2018-10-10','2018-10-16', 400.00, 'Reserved'),
(19, 3, 0, '2018-11-21','2018-11-27', 450.00, 'Available');


CREATE TABLE picture_properties (
id int (11) PRIMARY KEY AUTO_INCREMENT,
property_id int(11),
file varchar(255)
);

INSERT INTO picture_properties(id,property_id,file)VALUES
(1,1,'001_img_03.jpg'),
(2,1,'001_img_02.jpg'),
(3,1,'001_img_04.jpg'),
(4,2,'001_img_02 (1).jpg'),
(5,2,'001_img_05.jpg'),
(6,2,'001_img_03 (1).jpg'),
(7,2,'001_img_04 (1).jpg');


CREATE TABLE reservations(
id int (11) PRIMARY KEY AUTO_INCREMENT,
date date ,
email varchar(100) ,
name varchar (100) ,
telephone varchar (255) ,
rental_id int (11) ,
confirmed int (11) ,
paid int (11) ,
amount decimal (10,2) ,
test varchar (10)
);

INSERT INTO reservations(id,date,email,name,telephone,rental_id,confirmed,paid,amount,test)VALUES
(8,'2018-11-01','singhswati.ri@gmail.com','Swati', '9135960910',14,1,0,650.00,NULL),
(11,'2018-09-29','raju@gmail.com','raju', '8135960910',15,0,0,600.00,NULL),
(12,'2018-10-11','nandini@gmail.com','nandini', '4135960910',16,0,0,650.00,NULL),
(13,'2018-11-24','sumansingh@gmail.com','sumansingh', '6135960910',0, 0,450,00,''),
(14, NULL ,'utkarshsingh@gmail.com','utkarshsingh', '7135960910',0,0,0,450.00,''),
(15,'2018-11-24','narendra@gmail.com','narendra', '3135960910',0,0,0,400.00,''),
(16,'2018-11-24','betty@gmail.com','betty', '2135960910',13,1,0,250.00,'');


CREATE TABLE locations (
id int (11) PRIMARY KEY AUTO_INCREMENT,
name varchar (255)
);

INSERT INTO locations (id, name) VALUES
(1, 'South Cost'),
(2, 'Downtown'),
(3, 'North Cost'),
(4, 'City');



