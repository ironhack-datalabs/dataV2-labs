#Challenge 1




#Challenge 2 : Qui en a publié combien et où ?




#Challenge 3: Les 3 auteurs les plus vendus :

SELECT authors.au_id, au_lname, au_fname,SUM(sales.qty) AS Total
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