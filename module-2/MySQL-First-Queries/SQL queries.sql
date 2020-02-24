SELECT DISTINCT prime_genre
FROM app;

SELECT prime_genre, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 3;

SELECT prime_genre, COUNT(id)
FROM app
GROUP BY prime_genre
ORDER BY COUNT(id) DESC;

SELECT prime_genre, COUNT(id)
FROM app
GROUP BY prime_genre
ORDER BY COUNT(id) ASC
LIMIT 3;

SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating_ver, rating_count_tot
FROM app
WHERE user_rating_ver = 5
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, price
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT SUM(rating_count_tot)
FROM app;

SELECT track_name, user_rating_ver, rating_count_tot, price
FROM app
WHERE user_rating_ver = 5
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating_ver, rating_count_tot, price
FROM app
WHERE user_rating_ver = 5
ORDER BY rating_count_tot DESC
LIMIT 10;






