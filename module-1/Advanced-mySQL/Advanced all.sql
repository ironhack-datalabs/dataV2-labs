SELECT authors.au_id, titles.title_id, titles.advance, titleauthor.royaltyper, titles.price, sales.qty, titles.royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
INNER JOIN authors
ON titleauthor.au_id = authors.au_id;
SELECT step1.title, step1.au_fname, step1.au_lname, step1.advance * step1.royaltyper / 100 AS advance, step1.price * step1.qty * step1.royalty / 100 * step1.royaltyper / 100 AS sales_royalty
FROM (
SELECT authors.au_fname, authors.au_lname, titles.title, titles.advance, titleauthor.royaltyper, titles.price, sales.qty, titles.royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
INNER JOIN authors
ON titleauthor.au_id = authors.au_id
) step1;
SELECT SUM(step2.sales_royalty) AS sum_sales_royalty, step2.title, step2.au_fname, step2.au_lname
FROM (
	SELECT step1.title, step1.au_fname, step1.au_lname, step1.advance * step1.royaltyper / 100 AS advance, step1.price * step1.qty * step1.royalty / 100 * step1.royaltyper / 100 AS sales_royalty
	FROM (
		SELECT authors.au_fname, authors.au_lname, titles.title, titles.advance, titleauthor.royaltyper, titles.price, sales.qty, titles.royalty
		FROM titles
		INNER JOIN titleauthor
		ON titles.title_id = titleauthor.title_id
		INNER JOIN sales
		ON titles.title_id = sales.title_id
		INNER JOIN authors
		ON titleauthor.au_id = authors.au_id
	) step1
) step2
GROUP BY step2.title, step2.au_fname, step2.au_lname
ORDER BY sum_sales_royalty DESC;
SELECT SUM(step2.sales_royalty) AS sum_sales_royalty, step2.title, step2.au_fname, step2.au_lname, step2.advance
FROM (
	SELECT step1.title, step1.au_fname, step1.au_lname, step1.advance * step1.royaltyper / 100 AS advance, step1.price * step1.qty * step1.royalty / 100 * step1.royaltyper / 100 AS sales_royalty
	FROM (
		SELECT authors.au_fname, authors.au_lname, titles.title, titles.advance, titleauthor.royaltyper, titles.price, sales.qty, titles.royalty
		FROM titles
		INNER JOIN titleauthor
		ON titles.title_id = titleauthor.title_id
		INNER JOIN sales
		ON titles.title_id = sales.title_id
		INNER JOIN authors
		ON titleauthor.au_id = authors.au_id
	) step1
) step2
GROUP BY step2.title, step2.au_fname, step2.au_lname, step2.advance
ORDER BY sum_sales_royalty DESC;
	SELECT step2.advance + SUM(step2.sales_royalty) AS sum_profit, step2.title, step2.au_fname, step2.au_lname
	FROM (
		SELECT step1.title, step1.au_fname, step1.au_lname, step1.advance * step1.royaltyper / 100 AS advance, step1.price * step1.qty * step1.royalty / 100 * step1.royaltyper / 100 AS sales_royalty
		FROM (
			SELECT authors.au_fname, authors.au_lname, titles.title, titles.advance, titleauthor.royaltyper, titles.price, sales.qty, titles.royalty
			FROM titles
			INNER JOIN titleauthor
			ON titles.title_id = titleauthor.title_id
			INNER JOIN sales
			ON titles.title_id = sales.title_id
			INNER JOIN authors
			ON titleauthor.au_id = authors.au_id
		) step1
	) step2
GROUP BY step2.title, step2.au_fname, step2.au_lname, step2.advance
ORDER BY sum_profit DESC
Limit 3;
CREATE TEMPORARY TABLE publications.step1
SELECT authors.au_id, titles.title_id, titles.advance, titleauthor.royaltyper, titles.price, sales.qty, titles.royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
INNER JOIN authors
ON titleauthor.au_id = authors.au_id;
CREATE TEMPORARY TABLE publications.step22
SELECT step1.title_id, step1.au_id, step1.advance * step1.royaltyper / 100 AS advance, step1.price * step1.qty * step1.royalty / 100 * step1.royaltyper / 100 AS sales_royalty
FROM step1;
CREATE TEMPORARY TABLE publication.step3
SELECT step22.advance + SUM(step22.sales_royalty) AS sum_profit, step22.title_id, step22.au_id
FROM step22
GROUP BY step22.title_id, step22.au_fname, step22.au_lname, step22.advance
ORDER BY sum_profit DESC
LIMIT 3;
CREATE TABLE most_profiting_authors (
author_id INT PRIMARY KEY,
profit INT);