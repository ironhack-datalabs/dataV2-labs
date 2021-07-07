# Answers Lab | My first queries

**1. What are the different genres?**

Book
Business
Catalogs
Education
Entertainment
Finance
Food & Drink
Games
Health & Fitness
Lifestyle
Medical
Music
Navigation
News
Photo & Video
Productivity
Reference
Shopping
Social Networking
Sports
Travel
Utilities
Weather

SELECT prime_genre
FROM app
GROUP BY prime_genre;

**2. Which is the genre with the most apps rated?**

Games	52878491

SELECT prime_genre, SUM(rating_count_tot) AS TotalRatings
FROM app
GROUP BY prime_genre
ORDER BY TotalRatings DESC
LIMIT 1;

**3. Which is the genre with most apps?**

Games	3862

SELECT prime_genre, COUNT(id) AS TotalApps
FROM app
GROUP BY prime_genre
ORDER BY TotalApps DESC
LIMIT 1;

**4. Which is the one with least?**

Catalogs	10

SELECT prime_genre, COUNT(id) AS TotalApps
FROM app
GROUP BY prime_genre
ORDER BY TotalApps ASC
LIMIT 1;

**5. Find the top 10 apps most rated.**

Facebook	2974676
Instagram	2161558
Clash of Clans	2130805
Temple Run	1724546
Pandora - Music & Radio	1126879
Pinterest	1061624
Bible	985920
Candy Crush Saga	961794
Spotify Music	878563
Angry Birds	824451

SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10;

**6. Find the top 10 apps best rated by users.**

:) Sudoku +	5
King of Dragon Pass	5
TurboScan��� Pro - document & receipt scanner: scan multiple pages and photos to PDF	5
Plants vs. Zombies	5
Learn to Speak Spanish Fast With MosaLingua	5
Plants vs. Zombies HD	5
The Photographer's Ephemeris	5
���Sudoku +	5
Flashlight ���	5
Infinity Blade	5

SELECT track_name, user_rating
FROM app
ORDER BY user_rating DESC
LIMIT 10;

Question: Why does it take THESE 10 apps? There are a lot more apps with 5 rating...


**7. Take a look at the data you retrieved in question 5. Give some insights.**

- some very well known games
- some apps relating to social media
- and the bible app ;-)

**8. Take a look at the data you retrieved in question 6. Give some insights.**
looks random

- Looks like a randomly taken list of top rated apps. See question.

**9. Now compare the data from questions 5 and 6. What do you see?**

- No relation between the data of question 5 and 6.

**10. How could you take the top 3 regarding both user ratings and number of votes?**

Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521

SELECT track_name, user_rating, rating_count_tot
FROM app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

- To see which apps are highly rated:
SELECT track_name, currency, price, user_rating, user_rating_ver
FROM app
ORDER BY user_rating_ver DESC, user_rating DESC
LIMIT 10;

- To get a feel on pricing:
SELECT track_name, currency, price, user_rating, user_rating_ver
FROM app
ORDER BY price DESC;
This showed by the way that the sorting on price is not done as I would expect it to. e.g. 8.99 is higher then 74.99....

- To get a feel on total ratings:
SELECT track_name, currency, price, rating_count_tot, rating_count_ver
FROM app
ORDER BY rating_count_tot DESC;
Most total ratings are done on free apps

- To get a feel on latest version of apps:
SELECT track_name, currency, price, rating_count_tot, rating_count_ver
FROM app
ORDER BY rating_count_ver DESC;
Also here mostly done on free apps.

Conclusion: people do care about price as free or low priced apps are rated far more then high priced apps.
