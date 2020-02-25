# Step 1: Calculate the royalty of each sale for each author 
# and the advance for each author and publication

#Calculate the royalty of each sale for each author and the 
#advance for each author and publication.

SELECT authors.au_id AS AUTHOR_ID, titles.title AS TITLE, 
(titles.advance * titleauthor.royaltyper / 100) AS ADVANCE, 
(titles.price * sales.qty * titles.royalty / 100 * 
titleauthor.royaltyper / 100) AS ROYALTY
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN sales
ON titleauthor.title_id = sales.title_id
GROUP BY authors.au_id, titles.title;

# Step 2: Aggregate the total royalties for each title and author

SELECT AUTHOR_ID, TITLE, (ROYALTY+ADVANCE) AS AGGREGATED
FROM (SELECT authors.au_id AS AUTHOR_ID, titles.title AS TITLE, 
		(titles.advance * titleauthor.royaltyper / 100) AS ADVANCE, 
		(titles.price * sales.qty * titles.royalty / 100 * 
		titleauthor.royaltyper / 100) AS ROYALTY
		FROM authors
		LEFT JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
		LEFT JOIN titles
		ON titleauthor.title_id = titles.title_id
		LEFT JOIN sales
		ON titleauthor.title_id = sales.title_id
		GROUP BY authors.au_id, titles.title) summary
GROUP BY AUTHOR_ID, TITLE;

# Step 3: Calculate the total profits of each author

SELECT AUTHOR_ID, SUM(AGGREGATED) AS PROFITS
FROM (SELECT AUTHOR_ID, TITLE, (ROYALTY+ADVANCE) AS AGGREGATED
		FROM (SELECT authors.au_id AS AUTHOR_ID, titles.title AS TITLE, 
			(titles.advance * titleauthor.royaltyper / 100) AS ADVANCE, 
			(titles.price * sales.qty * titles.royalty / 100 * 
			titleauthor.royaltyper / 100) AS ROYALTY
			FROM authors
			LEFT JOIN titleauthor
			ON authors.au_id = titleauthor.au_id
			LEFT JOIN titles
			ON titleauthor.title_id = titles.title_id
			LEFT JOIN sales
			ON titleauthor.title_id = sales.title_id
			GROUP BY authors.au_id, titles.title) summary
	GROUP BY AUTHOR_ID, TITLE) summary
GROUP BY AUTHOR_ID
ORDER BY PROFITS DESC
LIMIT 3;

# Challenge 2 - Alternative Solution - reating MySQL temporary tables and 
# query the temporary tables in the subsequent steps.

CREATE TEMPORARY TABLE publications.author_title_royalty_advance_summary
SELECT authors.au_id AS AUTHOR_ID, titles.title AS TITLE, 
(titles.advance * titleauthor.royaltyper / 100) AS ADVANCE, 
(titles.price * sales.qty * titles.royalty / 100 * 
titleauthor.royaltyper / 100) AS ROYALTY
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN sales
ON titleauthor.title_id = sales.title_id
GROUP BY authors.au_id, titles.title;

CREATE TEMPORARY TABLE publications.author_total_summary
SELECT AUTHOR_ID, TITLE, (ROYALTY+ADVANCE) AS AGGREGATED
FROM (publications.author_title_royalty_advance_summary)
GROUP BY AUTHOR_ID, TITLE;

SELECT AUTHOR_ID, SUM(AGGREGATED) AS PROFITS
FROM publications.author_total_summary
GROUP BY AUTHOR_ID
ORDER BY PROFITS DESC
LIMIT 3;

# Challenge 3 - Elevating from your solution in Challenge 1 & 2,
# create a permanent table named most_profiting_authors to hold the 
# data about the most profiting authors

CREATE TEMPORARY TABLE publications.most_profiting_authors
SELECT AUTHOR_ID, SUM(AGGREGATED) AS PROFITS
FROM publications.author_total_summary
GROUP BY AUTHOR_ID
ORDER BY PROFITS DESC;

SELECT * FROM publications.most_profiting_authors;
