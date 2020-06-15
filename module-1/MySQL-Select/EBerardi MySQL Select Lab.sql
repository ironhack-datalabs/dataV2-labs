#Challenge 1
Select a.au_id AS 'AUTHOR ID',a.au_lname AS 'LAST NAME',a.au_fname AS 'FIRST NAME',t.title AS TITLE,p.pub_name AS PUBLISHER
From authors a
inner join titleauthor ta
On a.au_id = ta.au_id
inner join titles t
on t.title_id = ta.title_id
inner join publishers p
On t.pub_id = p.pub_id;

#Challenge 2
Select a.au_id AS 'AUTHOR ID',a.au_lname AS 'LAST NAME',a.au_fname AS 'FIRST NAME',p.pub_name AS PUBLISHER, COUNT(ta.title_id) AS 'TITLE COUNT'
From authors a
inner join titleauthor ta
On a.au_id = ta.au_id
inner join titles t
on t.title_id = ta.title_id
inner join publishers p
On t.pub_id = p.pub_id
group by p.pub_id, a.au_id, a.au_lname, a.au_fname, p.pub_name; 

#Challenge 3
Select a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", Sum(s.qty) as "TOTAL" 
From authors a
inner join titleauthor ta
On a.au_id = ta.au_id
inner join titles t
on t.title_id = ta.title_id
inner join sales s
on s.title_id = ta.title_id
Group by a.au_id , a.au_lname , a.au_fname
Order by Sum(s.qty) DESC
Limit 3;

#Challenge 4
Select a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", ifnull(sum(s.qty),0) as "TOTAL" 
From authors a
left join titleauthor ta
On a.au_id = ta.au_id
left join titles t
on t.title_id = ta.title_id
left join sales s
on s.title_id = ta.title_id
Group by a.au_id , a.au_lname , a.au_fname
Order by Total DESC;




