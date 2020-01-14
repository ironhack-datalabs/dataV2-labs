select a.au_id as 'AUTHOR ID', a.au_fname as 'FIRST NAME', a.au_lname 'LAST NAME', t.title as 'TITLE', p.pub_name as 'PUBLISHER'
from authors a inner join titleauthor ta
on  a.au_id = ta.au_id
inner join titles t
on ta.title_id = t.title_id
inner join publishers p
on t.pub_id = p.pub_id
;

select a.au_id as 'AUTHOR ID', a.au_fname as 'FIRST NAME', a.au_lname 'LAST NAME', p.pub_name as 'PUBLISHER', count(t.title) as 'TITLE COUNT' 
from authors a inner join titleauthor ta
on  a.au_id = ta.au_id
inner join titles t
on ta.title_id = t.title_id
inner join publishers p
on t.pub_id = p.pub_id
group by a.au_id, a.au_fname, a.au_lname, p.pub_name
;


select a.au_id as 'AUTHOR_ID', a.au_fname as 'FIRST_NAME', a.au_lname 'LAST_NAME', sum(qty) as 'TOTAL'
from authors a inner join titleauthor ta
on  a.au_id = ta.au_id
inner join sales s
on ta.title_id = s.title_id
group by a.au_id, a.au_fname, a.au_lname 
order by sum(qty) desc
limit 3 ;

select a.au_id as 'AUTHOR_ID', a.au_fname as 'FIRST_NAME', a.au_lname 'LAST_NAME', sum(qty) as 'TOTAL'
from authors a inner join titleauthor ta
on  a.au_id = ta.au_id
inner join sales s
on ta.title_id = s.title_id
group by a.au_id, a.au_fname, a.au_lname 
order by sum(qty) desc
;

