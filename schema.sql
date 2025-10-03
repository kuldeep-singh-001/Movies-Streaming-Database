CREATE DATABASE Movies_stream;
use Movies_stream;

-- Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);

-- Subscriptions table
CREATE TABLE Subscriptions (
    sub_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    plan VARCHAR(20) NOT NULL, -- e.g. Basic, Standard, Premium
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- Movies table
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    genre VARCHAR(50),
    release_year INT
);

-- Watch History table
CREATE TABLE WatchHistory (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    movie_id INT,
    watch_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ON DELETE CASCADE
);
