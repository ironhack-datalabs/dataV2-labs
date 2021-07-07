# Challenge 1
# Step 1
SELECT titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id;

# Challenge 1
# Step 2
SELECT royalty.au_id, royalty.title_id, royalty.advance, SUM(royalty.sales_royalty) AS royalty_total
FROM (
	SELECT titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * 	titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
	FROM titles
	INNER JOIN titleauthor
	ON titles.title_id = titleauthor.title_id
	INNER JOIN sales
	ON titles.title_id = sales.title_id
) royalty
GROUP BY royalty.au_id, royalty.title_id;

# Challenge 1
# Step 3
SELECT royalty2.au_id, royalty2.title_id, (royalty2.advance + royalty2.royalty_total) AS total_profits
FROM (
	SELECT royalty.au_id, royalty.title_id, royalty.advance, SUM(royalty.sales_royalty) AS royalty_total
	FROM (
		SELECT titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * 	titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
		FROM titles
		INNER JOIN titleauthor
		ON titles.title_id = titleauthor.title_id
		INNER JOIN sales
		ON titles.title_id = sales.title_id
	) royalty
	GROUP BY royalty.au_id, royalty.title_id
) royalty2
ORDER BY total_profits DESC
LIMIT 3;

# Challenge 2
CREATE TEMPORARY TABLE royalty3
SELECT titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 AS advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM titles
INNER JOIN titleauthor
ON titles.title_id = titleauthor.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id;

select *
FROM royalty3;

CREATE TEMPORARY TABLE royalty4
SELECT royalty3.au_id, royalty3.title_id, royalty3.advance, SUM(royalty3.sales_royalty) AS royalty_total
FROM royalty3;

SELECT *
FROM royalty4;

CREATE TEMPORARY TABLE royalty5
SELECT royalty4.au_id, royalty4.title_id, (royalty4.advance + royalty4.royalty_total) AS total_profits
FROM royalty4;

SELECT *
FROM royalty5
ORDER BY total_profits DESC;

# Challenge 3
CREATE TABLE vincent_most_profiting_authors
SELECT royalty5.au_id, SUM(royalty5.total_profits) AS total_profit_author
FROM royalty5
GROUP BY royalty5.au_id;

SELECT *
FROM vincent_most_profiting_authors;
