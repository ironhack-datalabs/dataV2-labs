# 1. What are the different genres?
SELECT DISTINCT prime_genre
FROM app;

# 2.  Which is the genre with the most apps rated?
SELECT prime_genre, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC;

# 3. Which is the genre with most apps?
SELECT prime_genre, count(*)
FROM app
GROUP BY prime_genre
ORDER BY count(*) DESC;

# 4. Which is the one with least?
SELECT prime_genre, count(*)
FROM app
GROUP BY prime_genre
ORDER BY count(*) ASC;

# 5. Find the top 10 apps most rated.
SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

# 6. Find the top 10 apps best rated by users.
SELECT track_name, user_rating
FROM app
ORDER BY user_rating DESC
LIMIT 10;

# 10. How could you take the top 3 regarding both user ratings and number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

# 11. Do people care about the price of an app?
SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 20;

SELECT track_name, user_rating, price, prime_genre
FROM app
ORDER BY price DESC
LIMIT 10;

SELECT track_name, user_rating, price, prime_genre
FROM app
ORDER BY user_rating DESC
LIMIT 20;