#Challenge 1
#What titles each author has published at which publishers?
select authors.au_lname, authors.au_fname, authors.au_id, titles.title, publishers.pub_name
from titleauthor
inner join authors on titleauthor.au_id = authors.au_id
inner join titles on titleauthor.title_id = titles.title_id
inner join publishers on titles.pub_id = publishers.pub_id;
#Challenge 2
#How many titles each author has published at each publisher?
select authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, COUNT(titles.title_id) as titles
from titleauthor
inner join authors on titleauthor.au_id = authors.au_id
inner join titles on titleauthor.title_id = titles.title_id
inner join publishers on titles.pub_id = publishers.pub_id
group by authors.au_id, publishers.pub_name;
#Challenge 3
#Who are the top 3 authors who have sold the highest number of titles?
select authors.au_id, authors.au_lname, authors.au_fname, SUM(sales.qty) as total
from titleauthor
inner join authors on titleauthor.au_id = authors.au_id
inner join titles on titleauthor.title_id = titles.title_id
inner join sales on titles.title_id = sales.title_id
group by authors.au_id
order by total desc
limit 3;
#Challenge 4
#modify your solution in Challenge 3 so that the output will display all 23 authors instead of the top 3
(select authors.au_id, authors.au_lname, authors.au_fname, SUM(sales.qty) as total
from titleauthor
inner join authors on titleauthor.au_id = authors.au_id
inner join titles on titleauthor.title_id = titles.title_id
inner join sales on titles.title_id = sales.title_id
group by authors.au_id)
union
(select authors.au_id, authors.au_lname, authors.au_fname, 0 as total
from titleauthor
right join authors on titleauthor.au_id = authors.au_id
where titleauthor.au_id is null
group by authors.au_id)
order by total desc;