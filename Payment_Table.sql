CREATE TABLE payment(
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_type VARCHAR(20),
    amount INT,
    payment_date_time DATE,
    payment_status VARCHAR(20),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);