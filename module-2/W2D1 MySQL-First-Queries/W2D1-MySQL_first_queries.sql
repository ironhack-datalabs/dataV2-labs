SELECT prime_genre
FROM app
GROUP BY prime_genre;

SELECT prime_genre, SUM(rating_count_tot) AS TotalRatings
FROM app
GROUP BY prime_genre
ORDER BY TotalRatings DESC
LIMIT 1;

SELECT prime_genre, COUNT(id) AS TotalApps
FROM app
GROUP BY prime_genre
ORDER BY TotalApps DESC
LIMIT 1;

SELECT prime_genre, COUNT(id) AS TotalApps
FROM app
GROUP BY prime_genre
ORDER BY TotalApps ASC
LIMIT 1;

SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM app
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name, currency, price, user_rating, user_rating_ver
FROM app
ORDER BY user_rating_ver DESC, user_rating DESC
LIMIT 10;

SELECT track_name, currency, price, user_rating, user_rating_ver
FROM app
ORDER BY price DESC;

SELECT track_name, currency, price, rating_count_tot, rating_count_ver
FROM app
ORDER BY rating_count_tot DESC;

SELECT track_name, currency, price, rating_count_tot, rating_count_ver
FROM app
ORDER BY rating_count_ver DESC;