-- CREATE DATABASE movie_shop;
USE movie_shop;
CREATE TABLE rental(
    rental_id INT NOT NULL AUTO_INCREMENT,
    payment_id INT,
    sin INT ,
    customer_id INT ,
    tape_id INT ,
    payment_info VARCHAR(100) NOT NULL,
    date_and_time_of_renting DATETIME NOT NULL,
    status_of_rental VARCHAR(50) NOT NULL,
    due_date_and_time DATETIME NOT NULL,
    over_due_charges DECIMAL NOT NULL DEFAULT 0,
    amount_to_be_payed DECIMAL NOT NULL,

    PRIMARY KEY (rental_id),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
    FOREIGN KEY (sin) REFERENCES employee(sin),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (tape_id) REFERENCES tape_(tape_id)


);
