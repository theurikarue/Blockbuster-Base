CREATE DATABASE movie_shop;

CREATE TABLE distributor(
distributor_id INT AUTO_INCREMENT PRIMARY KEY,
distributor_name VARCHAR(255),
distributor_phone_number INT,
distributor_address INT
);
USE movie_shop;

CREATE TABLE store(
store_id INT AUTO_INCREMENT PRIMARY KEY,
store_name VARCHAR(255),
store_phone_number INT,
store_address INT
);


