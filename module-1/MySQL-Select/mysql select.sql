SELECT*
FROM publishers;
SELECT*
FROM authors;
SELECT*
FROM titles;

select * from publications.titles limit 3;
select * from publications.publishers limit 3;

/*question1*/
SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name
FROM authors 
INNER JOIN titleauthor 
ON titleauthor.au_id = authors.au_id 
INNER JOIN titles 
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id;

/*question2*/
SELECT authors.au_id, authors.au_lname, authors.au_fname, publishers.pub_name, COUNT(titles.title) AS Titles
FROM authors 
INNER JOIN titleauthor 
ON titleauthor.au_id = authors.au_id 
INNER JOIN titles 
ON titles.title_id = titleauthor.title_id
INNER JOIN publishers
ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, publishers.pub_name
ORDER BY Titles DESC;

/*question3*/
SELECT authors.au_id, authors.au_lname, authors.au_fname, sum(titles.ytd_sales)
FROM authors 
INNER JOIN titleauthor 
ON titleauthor.au_id = authors.au_id 
INNER JOIN titles 
ON titles.title_id = titleauthor.title_id
GROUP BY authors.au_id
ORDER BY sum(titles.ytd_sales) DESC
LIMIT 3;

/*question4*/
SELECT authors.au_id, authors.au_lname, authors.au_fname, COALESCE(sum(titles.ytd_sales), 0) AS "Total Sales"
FROM authors 
LEFT JOIN titleauthor 
ON titleauthor.au_id = authors.au_id 
LEFT JOIN titles 
ON titles.title_id = titleauthor.title_id
GROUP BY authors.au_id
ORDER BY "Total Sales" DESC;