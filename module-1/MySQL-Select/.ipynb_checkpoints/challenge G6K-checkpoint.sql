use publications;

Select authors.au_id, au_lname, au_fname, titles.title, publishers.pub_name
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id = publishers.pub_id;

Select authors.au_id, au_lname, au_fname, publishers.pub_name, count(titles.title) as "Title Count"
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id = publishers.pub_id
group by au_id
order by count(titles.title) desc;

Select authors.au_id, au_lname, au_fname, publishers.pub_name, sum(titles.title) as "Title Count"
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id = publishers.pub_id;

select count(*) 
from titleauthor;

Select authors.au_id, au_lname, au_fname, coalesce(sum(sales.qty),0) as "Total"
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join sales on sales.title_id = titleauthor.title_id
group by authors.au_id
order by sum(sales.qty) desc;

