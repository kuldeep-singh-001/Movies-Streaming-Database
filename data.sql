-- Insert Users
INSERT INTO Users (name, email, city) VALUES
('Alice Johnson', 'alice@example.com', 'New York'),
('Bob Smith', 'bob@example.com', 'Chicago'),
('Charlie Brown', 'charlie@example.com', 'Boston');

-- Insert Subscriptions
INSERT INTO Subscriptions (user_id, plan, start_date, end_date) VALUES
(1, 'Premium', '2023-01-01', '2023-12-31'),
(2, 'Standard', '2023-02-01', '2023-11-30'),
(3, 'Basic', '2023-03-01', NULL);

-- Insert Movies
INSERT INTO Movies (title, genre, release_year) VALUES
('Inception', 'Sci-Fi', 2010),
('The Dark Knight', 'Action', 2008),
('Interstellar', 'Sci-Fi', 2014),
('Titanic', 'Romance', 1997);

-- Insert Watch History
INSERT INTO WatchHistory (user_id, movie_id, watch_date) VALUES
(1, 1, '2023-05-10'),
(1, 3, '2023-06-01'),
(2, 2, '2023-05-15'),
(3, 4, '2023-07-20');
