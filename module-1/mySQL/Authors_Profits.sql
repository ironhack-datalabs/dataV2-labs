#Step 1 of Challenge 1
SELECT t.title_id,a.au_id, t.advance * ta.royaltyper / 100 AS Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS ROYALTY
FROM titleauthor ta
INNER JOIN authors a 
ON a.au_id = ta.au_id
INNER JOIN titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON ta.title_id = s.title_id;

#Step 2 Write a query containing a subquery
SELECT subquery.title_id, subquery.au_id, SUM(subquery.Advance) AS Advance, SUM(subquery.ROYALTY) AS Royalty
FROM (SELECT t.title_id,a.au_id, t.advance * ta.royaltyper / 100 AS Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS ROYALTY
FROM titleauthor ta
INNER JOIN authors a 
ON a.au_id = ta.au_id
INNER JOIN titles t
ON ta.title_id = t.title_id
INNER JOIN sales s
ON ta.title_id = s.title_id
) subquery
GROUP BY subquery.au_id, subquery.title_id;

# Step 3 Aggregate Author Profits
Select step_2.au_id AS 'Author ID', (SUM(step_2.Advance) + SUM(step_2.Royalty)) AS 'All the MONEY'
FROM (SELECT step_1.title_id, step_1.au_id, SUM(step_1.Advance) AS Advance, SUM(step_1.ROYALTY) AS Royalty
	FROM (SELECT t.title_id,a.au_id, t.advance * ta.royaltyper / 100 AS Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS ROYALTY
		FROM titleauthor ta
		INNER JOIN authors a 
		ON a.au_id = ta.au_id
		INNER JOIN titles t
		ON ta.title_id = t.title_id
		INNER JOIN sales s
		ON ta.title_id = s.title_id
) step_1
GROUP BY step_1.au_id, step_1.title_id)
step_2
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;








