SELECT authors.au_id AS AUTHOR_ID, authors.au_lname AS LAST_NAME,  authors.au_fname AS FIRST_NAME, titles.title AS TITLE, publishers.pub_name AS PUBLISHER
FROM titleauthor
RIGHT JOIN authors
ON titleauthor.au_id = authors.au_id
RIGHT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers
ON titles.pub_id = publishers.pub_id;

SELECT authors.au_id AS AUTHOR_ID, COUNT(titles.title_id), authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, publishers.pub_name AS PUBLISHER
FROM titleauthor
RIGHT JOIN authors
ON titleauthor.au_id = authors.au_id
RIGHT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers
ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, titles.pub_id;

SELECT authors.au_id AS AUTHOR_ID, COUNT(titles.title_id) AS TOTAL, authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME,
FROM titleauthor
RIGHT JOIN authors
ON titleauthor.au_id = authors.au_id
RIGHT JOIN titles
ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id, titles.pub_id;
