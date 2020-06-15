Select *
From app
Limit 10;
Select prime_genre
From app;
Select prime_genre, rating_count_tot
From app
Order By rating_count_tot DESC
Limit 1;
Select track_name, rating_count_tot
from app
order by rating_count_tot DESC
Limit 10;
Select track_name, user_rating
from app
order by user_rating DESC
limit 10;
Select track_name, user_rating, rating_count_tot
From app
Order by user_rating DESC
Limit 3;
Select track_name, user_rating, rating_count_tot
From app
Order by rating_count_tot DESC
Limit 3;
#choosing slightly larger data set 20
#finding most expensive apps with ratings and num of users
 Select track_name, price, user_rating, rating_count_tot
 from app
 Order by price DESC
 limit 20;
 #finding best rated apps with price and num of users
Select track_name, price, user_rating, rating_count_tot
 from app
 Order by user_rating DESC
 limit 20;
 #finding most used apps with price and ratings
Select track_name, price, user_rating, rating_count_tot
 from app
 Order by rating_count_tot DESC
 limit 20;
 Select track_name, price, user_rating, rating_count_tot
 from app
 Order by rating_count_tot DESC
 limit 20;


