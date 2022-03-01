![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres? There are 23 different genres, see list below
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

**2. Which is the genre with the most apps rated?**
Social Networking 2974676

**3. Which is the genre with most apps?**
Games 3862

**4. Which is the one with least?**
Catalogs 10

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

**7. Take a look at the data you retrieved in question 5. Give some insights.**
As Social Networking is the genre with the most number of votes, it is not surprising that the top 2 most number of votes apps are social networking apps: 1) Facebook and 2) Instagram. A rather simple insight could be that the more these apps are used the higher the rating count is done on those apps. 

The same can be said for the next 2 most number of votes apps 3) Clash of Clans and 4) Temple Run. Since 'Game' genre has the most apps on the market we could say the more 'Games' apps there are, the highter the usage, which links to the higher rating count for these two game apps.

**8. Take a look at the data you retrieved in question 6. Give some insights.**
This data takes a look at individual user rating across several genre of apps (games, business, education, photo&video & utilities). The same high rating of '5' indicates that these apps were extremely well designed for the users. It is important to note that these ratings represent various genre and does not account for the 

**9. Now compare the data from questions 5 and 6. What do you see?**
I see that when combining apps in questions 5 and 6 on average 50% of the top ratings are in the 'Game' genre.
Both questions have interesting outliers. In questions 5, an outlier app 'Bible' which falls under a 'Reference' genre and in question 6 an outlier app 'Flashlight' which falls under a 'Utilities' genre. 'Flashlight' has received a high (130450) rating count which is 4th best rated by users and 'Bible' has received 4.5 user rating.

**10. How could you take the top 3 regarding both user ratings and number of votes?**


**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? I ran a query on app name, price and most number of votes. I noticed that most of the free apps including the first 11 apps with the most number of votes do not cost anything. The price is a big determinate for the popularity of an app, most used apps are free.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
