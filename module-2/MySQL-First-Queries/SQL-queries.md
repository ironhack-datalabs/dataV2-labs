{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue-Bold;\f1\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c100000\c100000\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww16420\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sa320\partightenfactor0

\f0\b\fs32 \cf2 \cb3 \expnd0\expndtw0\kerning0
1. What are the different genres?\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 Games\
Productivity\
Weather\
Shopping\
Reference\
Finance\
Music\
Utilities\
Travel\
"Social Networking"\
Sports\
Business\
"Health & Fitness"\
Entertainment\
"Photo & Video"\
Navigation\
Education\
Lifestyle\
"Food & Drink"\
News\
Book\
Medical\
Catalogs\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 2. Which is the genre with the most apps rated?\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 Social Networking  with 2974676 ratings\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 3. Which is the genre with most apps?\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 Games 3862\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 4. Which is the one with least?\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 Catalogs 10\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 5. Find the top 10 apps most rated.\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 track_name;rating_count_tot\
Facebook;2974676\
Instagram;2161558\
"Clash of Clans";2130805\
"Temple Run";1724546\
"Pandora - Music & Radio";1126879\
Pinterest;1061624\
Bible;985920\
"Candy Crush Saga";961794\
"Spotify Music";878563\
"Angry Birds";824451\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 6. Find the top 10 apps best rated by users.\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 track_name;user_rating\
":) Sudoku +";5\
"King of Dragon Pass";5\
"TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF";5\
"Plants vs. Zombies";5
\f0\b \

\f1\b0 "Learn to Speak Spanish Fast With MosaLingua";5\
"Plants vs. Zombies HD";5\
"The Photographer's Ephemeris";5\
"Sudoku +";5\
"Flashlight ";5\
"Infinity Blade";5\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 7. Take a look at the data you retrieved in question 5. Give some insights.\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 People tend to mostly rate social media, game, music apps. Bible app was somewhat a surprise for me. \
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 8. Take a look at the data you retrieved in question 6. Give some insights.\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 People like sudoku, as well as playing games in general. Apps with simple and straightforward functions are also well rated, e.g. Flashlight and TurboScan. The app for learning Spanish is apparently well made and popular.\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 9. Now compare the data from questions 5 and 6. What do you see?\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 The apps that are most often evaluated are not necessarily the apps that are considered well made and give the most satisfaction to users.\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 10. How could you take the top 3 regarding both user ratings and number of votes?\
\pard\pardeftab720\sa320\partightenfactor0

\f1\b0 \cf2 (For SQL code please refer to SQL file)\
track_name;user_rating;rating_count_tot\
"Head Soccer";5;481564\
"Plants vs. Zombies";5;426463\
"Sniper 3D Assassin: Shoot to Kill Gun Game";5;386521\
\pard\pardeftab720\sa320\partightenfactor0

\f0\b \cf2 11. Do people care about the price of an app?
\f1\b0 \'a0Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?\
People tend to rate most actively the apps that are either free or cost no more than Eur 2. (query 1) It would be interesting to explore the reasons, however, the dataset does not provide such opportunity. \
To have a better price overview, I performed query 2. We can note that the absolute majority of the apps cost less than Eur10.\
Moreover, the price of the best rated apps range from 0 to Eur 9.99. Only 5 out for the first 20 in this list can be downloaded for free. (query 3) It seems that the price is not the main factor for user satisfaction. Moreover, if the app is well made (according to final user), the user will be willing to pay.\
# Query 1 \
SELECT track_name, user_rating, rating_count_tot, price, prime_genre\
FROM app\
ORDER BY user_rating DESC, rating_count_tot DESC\
LIMIT 20;\
# Query 2\
SELECT track_name, user_rating, price, prime_genre\
FROM app\
ORDER BY price DESC\
LIMIT 10;\
# Query 3\
SELECT track_name, user_rating, price, prime_genre\
FROM app\
ORDER BY user_rating DESC\
LIMIT 20;\
\
}