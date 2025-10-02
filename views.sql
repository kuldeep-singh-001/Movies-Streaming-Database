-- View 1: Show all users with their subscription plan
CREATE VIEW UserSubscriptions AS
SELECT u.user_id, u.name, u.email, s.plan
FROM Users u
JOIN Subscriptions s ON u.user_id = s.user_id;


SELECT * FROM UserSubscriptions;


-- View 2: List movies with their release year and genre
CREATE VIEW MovieCatalog AS
SELECT title, genre, release_year
FROM Movies;


SELECT * FROM MovieCatalog;


-- View 3: Show which user watched which movie
CREATE VIEW WatchDetails AS
SELECT u.name AS user_name, m.title AS movie_title, w.watch_date
FROM WatchHistory w
JOIN Users u ON w.user_id = u.user_id
JOIN Movies m ON w.movie_id = m.movie_id;


SELECT * FROM WatchDetails;


-- View 4: Count how many movies each user has watched
CREATE VIEW UserWatchCount AS
SELECT u.name, COUNT(w.movie_id) AS total_watched
FROM Users u
LEFT JOIN WatchHistory w ON u.user_id = w.user_id
GROUP BY u.user_id;


SELECT * FROM UserWatchCount;

