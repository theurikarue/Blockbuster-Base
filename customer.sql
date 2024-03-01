USE movie_shop;

CREATE TABLE Customer (
    customerID INT NOT NULL AUTO_INCREMENT,
    customerName VARCHAR(255) NOT NULL, 
    phoneNumber INT NOT NULL,
    customerAddress VARCHAR(255),
    PRIMARY KEY(customerID)
);
