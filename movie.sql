USE movie_shop:

CREATE TABLE movie(
    movieID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    movie_description TEXT,
    major_star VARCHAR(50),
    rating INT DEFAULT NULL CHECK (rating >= 1 AND rating <= 10),
    UNIQUE(title)
)