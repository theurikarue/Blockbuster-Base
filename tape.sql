USE movie_shop;


CREATE TABLE Tape (
    tapeID INT NOT NULL AUTO_INCREMENT,
    tape_condition VARCHAR(255) NOT NULL, 
    movieID INT NOT NULL,
    PRIMARY KEY(tapeID)
);
