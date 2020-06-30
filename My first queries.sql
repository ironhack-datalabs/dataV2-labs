-- 1)
SELECT prime_genre
from app;

-- 2)
SELECT prime_genre, rating_count_tot
from app ORDER BY rating_count_tot DESC;

-- 3)
select prime_genre, count(*) from app
group by prime_genre
order by count(*) desc
limit 1;

-- 4)
select prime_genre, count(*)
from app
group by prime_genre
order by count(*) asc
limit 1;

-- 5)
select track_name, rating_count_tot from app
order by rating_count_tot desc limit 10;

-- 6)
select track_name, user_rating from app
order by user_rating desc limit 10;

-- 7)
-- The majority of the ratings are on the social apps.

-- 8)
select track_name, user_rating, rating_count_tot from app
where rating_count_tot>10000
order by user_rating desc limit 10;
-- -- Games are very high rated

-- 9)
-- -- -- Games are very high rated but more people are using social media than games

-- 10)
select track_name, user_rating, rating_count_tot from app
order by rating_count_tot desc, user_rating desc;


-- 11)
select track_name, rating_count_tot, price from app
order by rating_count_tot desc;
--  Most peopole give reviews on free/cheap apps. Highest prices are coming with the least reviews.


