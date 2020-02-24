SELECT * FROM app;
/*1. What are the different genres?*/
SELECT DISTINCT prime_genre 
FROM app;
/*2. Which is the genre with the most apps rated?*/
SELECT prime_genre, MAX(rating_count_tot) FROM app GROUP BY prime_genre;
/*3. Which is the genre with most apps?*/
SELECT       prime_genre, COUNT(prime_genre) AS "value_occurrence"
    FROM     app
    GROUP BY prime_genre 
    ORDER BY value_occurrence DESC;
/*4. Which is the one with least?*/
SELECT       prime_genre, COUNT(prime_genre) AS "value_occurrence"
    FROM     app
    GROUP BY prime_genre 
    ORDER BY value_occurrence ASC;
/*5. Find the top 10 apps most rated.*/
SELECT track_name, rating_count_tot 
FROM app 
ORDER BY rating_count_tot DESC 
LIMIT 10;
/*6. Find the top 10 apps best rated by users.*/
SELECT track_name, user_rating
FROM app 
ORDER BY user_rating DESC 
LIMIT 10
/*7. Take a look at the data you retrieved in question 5. Give some insights.
> what we can see is that the social media channels facebook and instagram are the most often dowloaded apps. Afterthat we see a high number of games and also the bible*/
/*8. Take a look at the data you retrieved in question 6. Give some insights.
> the best-rated apps are smaller free-time applications  as well as tools*/
 /*9. Now compare the data from questions 5 and 6. What do you see?
 > the most often downloaded apps are not necessarily the best-rated apps and vice versa*/
 /*10. How could you take the top 3 regarding both user ratings and number of votes?
 We could multiply or if there is a different importance to rating and dowloads we can add weightings: downloads*weighting_d+rating*weighting_r*/
/*11. Do people care about the price of an app?*/
/*looking at the ratigns of the apps with high prices (prices above 9 €) and comparing them to the average rating*/
SELECT track_name, price
FROM app 
ORDER BY price DESC; 

SELECT DISTINCT track_name, user_rating, price 
FROM app
where price>9.00
ORDER BY user_rating DESC;

SELECT AVG(user_rating)
FROM app;
/*the average user rating is 3.526955675976101*/

SELECT AVG(user_rating)
FROM app
where price>9.00;
/*the average user rating for apps above 10€ is 3.5280898876404496
people don't necessarily evaluate apps that cost over 9 euros differently 
than other apps. There is no correlation between the price and the user rating. 
It seems as if thee two are independent*/