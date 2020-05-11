select prime_genre
from app
group by prime_genre;

select prime_genre, rating_count_tot
from app
group by prime_genre, rating_count_tot
order by rating_count_tot DESC limit 1;

select prime_genre, count(*)
from app
group by prime_genre
order by count(*) desc limit 1;

select prime_genre, count(*)
from app
group by prime_genre
order by count(*) asc limit 1;

select track_name, rating_count_tot
from app
group by track_name, rating_count_tot
order by rating_count_tot DESC limit 10;

select track_name, user_rating
from app
order by user_rating DESC limit 10;

select track_name, price, rating_count_tot
from app
order by rating_count_tot DESC;


