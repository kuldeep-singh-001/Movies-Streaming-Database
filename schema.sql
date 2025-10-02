PRAGMA foreign_keys = ON;

-- Users
CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    city TEXT
);

-- Subscriptions
CREATE TABLE Subscriptions (
    sub_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    plan TEXT NOT NULL, -- e.g. Basic, Standard, Premium
    start_date TEXT NOT NULL,
    end_date TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- Movies
CREATE TABLE Movies (
    movie_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    genre TEXT,
    release_year INTEGER
);

-- Watch History
CREATE TABLE WatchHistory (
    history_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    movie_id INTEGER,
    watch_date TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id) ON DELETE CASCADE
);
