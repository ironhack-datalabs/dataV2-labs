#Challenge 1. Quels titres chez quels éditeurs et de quels auteurs ?

SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
FROM authors, titles, publishers



#Challenge 2 : Qui en a publié combien et où ?

Select authors.au_id, au_lname, au_fname, publishers.pub_name, count(titles.title) as "Title Count"
from authors
left join titleauthor on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id = publishers.pub_id
group by au_id, publishers.pub_id
order by count(titles.title) desc;

# il faut bien rajouter publishers.pub_id dans le GROUP BY, étant donné que ce sont des strings (noms des éditeurs), il retourne le premier nom d'éditeur et compter tout dans ce dernier.

#Challenge 3: Les 3 auteurs les plus vendus :

SELECT authors.au_id, au_lname, au_fname, SUM(sales.qty) AS Total
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN sales
ON sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY Total Desc

SELECT authors.au_id, authors.au_fname, authors.au_lname, coalesce(SUM(sales.qty), 0) AS Total
FROM titles
RIGHT JOIN titleauthor
ON titleauthor.title_id = titles.title_id
RIGHT JOIN authors
ON authors.au_id = titleauthor.au_id
LEFT JOIN sales
ON sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY Total DESC;
#coalesce = pour remplacer null par zéro


SELECT authors.au_id, authors.au_fname, authors.au_lname, SUM(sales.qty) AS Total
FROM titles
INNER JOIN titleauthor
ON titleauthor.title_id = titles.title_id
INNER JOIN authors
ON authors.au_id = titleauthor.au_id
LEFT JOIN sales
ON sales.title_id = titles.title_id
GROUP BY authors.au_id