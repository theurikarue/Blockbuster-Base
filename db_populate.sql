USE movie_shop;
-- Populate distributor table
INSERT INTO distributor (distributor_name, distributor_phone_number, distributor_address) 
VALUES 
('FilmHouse Distributors', 0712345679, '123 Movie Avenue'),
('CinemaGoods', 0723456789, '456 Film Street'),
('ReelSupply Co.', 0734567901, '789 Blockbuster Boulevard');

-- Populate store table
INSERT INTO store (distributor_id, store_name, store_phone_number, store_address)
VALUES 
(1, 'FilmHouse Outlet A', 0712345670, '123 MovieMart Street'),
(1, 'FilmHouse Outlet B', 0723456789, '456 FilmCity Plaza'),
(2, 'CinemaGoods Store 1', 0734567892, '789 Cineplex Road'),
(3, 'ReelSupply Store', 0745678902, '101 Blockbuster Lane');

-- Populate employee table
INSERT INTO employee (supervisor_id, social_insurance_num, employee_name, employee_address, employee_phone, employee_hire_date, store_id)
VALUES 
(NULL, 12345679, 'Alice Thompson', '123 Employee Street', 0756789023, '2023-01-15', 1),
(1, 98765431, 'Bob Johnson', '456 Employee Avenue', 0767890124, '2023-02-20', 2),
(1, 45678912, 'Charlie Brown', '789 Employee Road', 0778901235, '2023-03-25', 3),
(NULL, 12378946, 'David Smith', '101 Employee Lane', 0789023456, '2023-04-30', 1),
(4, 45612379, 'Emma Davis', '202 Employee Lane', 0790123457, '2023-05-15', 2),
(4, 78945623, 'Frank Wilson', '303 Employee Lane', 0791234568, '2023-06-01', 3);

-- Populate customer table
INSERT INTO customer (customer_name, customer_phone_number, customer_address)
VALUES 
('John Smith', 0712312312, '123 Customer Street'),
('Emily Davis', 0745645645, '456 Customer Avenue'),
('Michael Johnson', 0789789780, '789 Customer Road'),
('Sarah Wilson', 0798765431, '321 Movie Lane'),
('Thomas Anderson', 0755555555, '456 Neo Street');
-- Populate movie table
INSERT INTO movie (title, director, movie_description, major_star, rating)
VALUES 
('The Dark Knight', 'Christopher Nolan', 'A crime thriller film that follows Batman as he confronts the Joker.', 'Christian Bale', 9),
('Forrest Gump', 'Robert Zemeckis', 'The story depicts several decades in the life of Forrest Gump.', 'Tom Hanks', 8),
('Titanic', 'James Cameron', 'A fictionalized account of the sinking of the RMS Titanic.', 'Leonardo DiCaprio', 8),
('The Shawshank Redemption', 'Frank Darabont', 'Two imprisoned men bond over a number of years.', 'Tim Robbins', 9),
('Inception', 'Christopher Nolan', 'A thief who enters the dreams of others to steal secrets from their subconscious.', 'Leonardo DiCaprio', 9);

-- Populate tape table
INSERT INTO tape (movie_id, tape_condition)
VALUES 
(1, 'Good'),
(1, 'Fair'),
(1, 'Excellent'),
(4, 'Good'),
(2, 'Fair'),
(3, 'Excellent'),
(4, 'Good'),
(5, 'Fair'),
(5, 'Fair');

-- Populate payment table
INSERT INTO payment (employee_id, payment_type, amount, payment_date_time, payment_status)
VALUES 
(1, 'Cash', 50, '2024-03-01', 'Completed'),
(2, 'Card', 30, '2024-03-02', 'Completed'),
(3, 'Cash', 40, '2024-03-03', 'Completed'),
(4, 'Card', 60, '2024-03-04', 'Completed'),
(5, 'Debit', 25, '2024-03-05', 'Approved'),
(6, 'Cash', 35, '2024-03-06', 'Completed');

-- Populate rental table
INSERT INTO rental (payment_id, employee_id, customer_id, tape_id, payment_info, date_and_time_of_renting, status_of_rental, due_date_and_time, over_due_charges, amount_to_be_payed)
VALUES 
(1, 1, 1, 1, 'Payment Info 1', '2024-03-05 10:00:00', 'Returned in time', '2024-03-12 10:00:00', 0, 10),
(2, 2, 2, 3, 'Payment Info 2', '2024-03-06 11:00:00', 'Rented', '2024-03-13 11:00:00', 0, 15),
(3, 3, 3, 4, 'Payment Info 3', '2024-03-07 12:00:00', 'Rented', '2024-03-14 12:00:00', 0, 20),
(4, 4, 4, 4, 'Payment Info 4', '2024-03-08 13:00:00', 'Returned late', '2024-03-15 13:00:00', 20, 25),
(5, 5, 5, 5, 'Payment Info 5', '2024-03-09 14:00:00', 'Returned late', '2024-03-16 14:00:00', 10, 30),
(6, 6, 1, 8, 'Payment Info 6', '2024-03-10 15:00:00', 'Rented', '2024-03-17 15:00:00', 0, 35);


