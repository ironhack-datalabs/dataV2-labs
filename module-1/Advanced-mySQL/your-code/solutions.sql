# Challenge 1
# Who are the top 3 most profiting authors?

# 1. Calculate the royalty of each sale for each author and the advance for each author and publication.

SELECT titles.title_id, authors.au_id, (titles.advance * titleauthor.royaltyper / 100) AS advance , (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM publications.authors
INNER JOIN publications.titleauthor ON titleauthor.au_id = authors.au_id
INNER JOIN publications.titles ON titleauthor.title_id = titles.title_id
INNER JOIN publications.sales ON titles.title_id = sales.title_id;

# 2. Using the output from Step 1 as a subquery, aggregate the total royalties for each title and author.

SELECT tem_table.title_id, tem_table.au_id, SUM(tem_table.advance) AS advances, SUM(tem_table.sales_royalty) AS royalties
FROM (
	SELECT titles.title_id, authors.au_id, (titles.advance * titleauthor.royaltyper / 100) AS advance , (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
	FROM publications.authors
	INNER JOIN publications.titleauthor ON titleauthor.au_id = authors.au_id
	INNER JOIN publications.titles ON titleauthor.title_id = titles.title_id
	INNER JOIN publications.sales ON titles.title_id = sales.title_id
) AS tem_table
GROUP BY tem_table.au_id, tem_table.title_id;

# 3. Using the output from Step 2 as a subquery, calculate the total profits of each author by aggregating the advances and total royalties of each title.

SELECT final_table.au_id, (final_table.advances + final_table.royalties) AS profits
FROM (
	SELECT tem_table.title_id, tem_table.au_id, SUM(tem_table.advance) AS advances, SUM(tem_table.sales_royalty) AS royalties
	FROM (
		SELECT titles.title_id, authors.au_id, (titles.advance * titleauthor.royaltyper / 100) AS advance , (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
		FROM publications.authors
		INNER JOIN publications.titleauthor ON titleauthor.au_id = authors.au_id
		INNER JOIN publications.titles ON titleauthor.title_id = titles.title_id
		INNER JOIN publications.sales ON titles.title_id = sales.title_id
	) AS tem_table
	GROUP BY tem_table.au_id, tem_table.title_id
) AS final_table
GROUP BY final_table.au_id, profits
ORDER BY profits DESC
LIMIT 3;

# Challenge 2
# Alternative solution with temporary tables

CREATE TEMPORARY TABLE publications.tem_table
SELECT titles.title_id, authors.au_id, (titles.advance * titleauthor.royaltyper / 100) AS advance , (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM publications.authors
INNER JOIN publications.titleauthor ON titleauthor.au_id = authors.au_id
INNER JOIN publications.titles ON titleauthor.title_id = titles.title_id
INNER JOIN publications.sales ON titles.title_id = sales.title_id;

CREATE TEMPORARY TABLE publications.final_table
SELECT tem_table.title_id, tem_table.au_id, SUM(tem_table.advance) AS advances, SUM(tem_table.sales_royalty) AS royalties
FROM tem_table
GROUP BY tem_table.au_id, tem_table.title_id;

SELECT final_table.au_id, (final_table.advances + final_table.royalties) AS profits
FROM publications.final_table
GROUP BY final_table.au_id, profits
ORDER BY profits DESC
LIMIT 3;

# Challenge 3
# Create a permanent table named most_profiting_authors to hold the data about the most profiting authors. 

CREATE TABLE most_profiting_authors
SELECT final_table.au_id, (final_table.advances + final_table.royalties) AS profits
FROM publications.final_table
GROUP BY final_table.au_id, profits
ORDER BY profits DESC
LIMIT 3;

SELECT * 
FROM most_profiting_authors;