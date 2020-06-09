SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, titles.title AS TITLE, publishers.pub_name as PUBLISHER
FROM (((authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id)
INNER JOIN titles ON titleauthor.title_id = titles.title_id)
INNER JOIN publishers ON titles.pub_id = publishers.pub_id);

SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, publishers.pub_name as PUBLISHER, count(titles.pub_id) AS TITLE_COUNT 
FROM (((authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id) 
INNER JOIN titles ON titleauthor.title_id = titles.title_id) 
INNER JOIN publishers ON titles.pub_id = publishers.pub_id) 
GROUP BY authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name;

SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, SUM(sales.qty) AS TOTAL
FROM (((authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id)
INNER JOIN titles ON titleauthor.title_id = titles.title_id)
INNER JOIN sales ON titles.title_id = sales.title_id)
GROUP BY authors.au_id, authors.au_lname, authors.au_fname 
ORDER BY SUM(sales.qty) DESC
LIMIT 3;

SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, IFNULL( SUM(sales.qty), 0) AS TOTAL
FROM (((authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id)
LEFT JOIN titles ON titleauthor.title_id = titles.title_id)
LEFT JOIN sales ON titles.title_id = sales.title_id)
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY SUM(sales.qty) DESC;