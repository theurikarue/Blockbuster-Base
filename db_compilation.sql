CREATE DATABASE movie_shop;
USE movie_shop;

CREATE TABLE distributor(
    distributor_id INT AUTO_INCREMENT,
    distributor_name VARCHAR(65),
    distributor_phone_number INT,
    distributor_address VARCHAR(65),

    PRIMARY KEY(distributor_id)
);

CREATE TABLE store(
    store_id INT AUTO_INCREMENT,
    store_name VARCHAR(65),
    store_phone_number INT,
    store_address INT,

    PRIMARY KEY(store_id)
);

CREATE TABLE employee(
    employee_id INT  AUTO_INCREMENT,
    supervisor_id INT,
    social_insurance_num INT,
    employee_name VARCHAR(65),
    employee_address VARCHAR(65),
    employee_phone INT,
    employee_hire_date DATE,
    store_id INT,

    PRIMARY KEY (employee_id),
    FOREIGN KEY (store_id) REFERENCES store(store_id)
);

ALTER TABLE employee
ADD FOREIGN KEY(supervisor_id)
REFERENCES employee(employee_id)
ON DELETE SET NULL;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(65) NOT NULL, 
    customer_phone_number INT NOT NULL,
    customer_address VARCHAR(65),

    PRIMARY KEY(customer_id)
);

CREATE TABLE payment(
    payment_id INT AUTO_INCREMENT,
    employee_id INT,
    payment_type VARCHAR(65),
    amount INT,
    payment_date_time DATE,
    payment_status VARCHAR(65),

    PRIMARY KEY (payment_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE movie(
    movie_id INT AUTO_INCREMENT,
    title VARCHAR(65) NOT NULL,
    director VARCHAR(65) NOT NULL,
    movie_description TEXT,
    major_star VARCHAR(65),
    rating INT DEFAULT NULL CHECK (rating >= 1 AND rating <= 10),

    PRIMARY KEY (movie_id)
);

CREATE TABLE tape(
    tape_id INT AUTO_INCREMENT,
    movie_id INT NOT NULL,
    tape_condition VARCHAR(65) NOT NULL, 

    PRIMARY KEY(tape_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE rental(
    rental_id INT AUTO_INCREMENT,
    payment_id INT,
    employee_id INT ,
    customer_id INT ,
    tape_id INT,
    payment_info VARCHAR(65) NOT NULL,
    date_and_time_of_renting DATETIME NOT NULL,
    status_of_rental VARCHAR(65) NOT NULL,
    due_date_and_time DATETIME NOT NULL,
    over_due_charges DECIMAL NOT NULL DEFAULT 0,
    amount_to_be_payed DECIMAL NOT NULL,

    PRIMARY KEY (rental_id),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (tape_id) REFERENCES tape(tape_id)
);