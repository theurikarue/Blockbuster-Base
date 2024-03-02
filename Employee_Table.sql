CREATE TABLE employee(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    Social_Insurance_Num INT,
    employee_name VARCHAR(30),
    employee_address VARCHAR(30),
    employee_phone INT,
    employee_hire_date DATE,
    supervisor_id INT,
    store_id INT
);

ALTER TABLE employee
ADD FOREIGN KEY(supervisor_id)
REFERENCES employee(employee_id)
ON DELETE SET NULL;
