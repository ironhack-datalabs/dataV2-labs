-- Who Have Published What At Where?-- 


select authors.au_id, title, pub_name, au_lname as author_last_name, au_lname as author_first_name
from publications.titles titles
join publications.publishers publishers
on titles.pub_id=publishers.pub_id

join publications.titleauthor titleauthor
on titleauthor.title_id = titles.title_id

join publications.authors authors
on titleauthor.au_id = authors.au_id;



-- Query how many titles each author has published at each publisher.

select authors.au_id as "Author ID", publishers.pub_name as "publisher", au_lname as "Last name", au_lname as "First Name", count(titles.title_id) as "TITLECOUNT" 

from publications.titles titles
join publications.publishers publishers
on titles.pub_id=publishers.pub_id

join publications.titleauthor titleauthor
on titleauthor.title_id = titles.title_id

join publications.authors authors
on titleauthor.au_id = authors.au_id
group by publishers.pub_id, authors.au_id DESC;

-- Who are the top 3 authors who have sold the highest number of titles?

select authors.au_id as "Author ID", au_lname as "Last name", au_lname as "First Name", sum(sales.qty) as total
from publications.authors

join publications.titleauthor
on publications.authors.au_id = publications.titleauthor.au_id

join publications.sales
on publications.sales.title_id = publications.titleauthor.title_id

group by authors.au_id
order by total desc limit 3;


-- display all 23 authors instead of the top 3.
-- Note that the authors who have sold 0 titles should also appear in your output
-- (ideally display 0 instead of NULL as the TOTAL).
-- Also order your results based on TOTAL from high to low.


select authors.au_id as "Author ID", au_lname as "Last name", au_lname as "First Name", coalesce(sum(sales.qty), 0) as total
from publications.sales

right join publications.titleauthor
on titleauthor.title_id = publications.sales.title_id

right join publications.authors
on publications.authors.au_id = publications.titleauthor.au_id

group by authors.au_id
order by total asc




