/*CHALLENGE 1.2*/
SELECT AuthorID, SUM(SumSalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalty
GROUP BY TitleID, AuthorID);
/*CHALLENGE 1.2*/
SELECT AuthorID, SUM(SumSalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalty
GROUP BY TitleID, AuthorID) AggregSalesRoyalty;
/*CHALLENGE 1.2*/
SELECT AuthorID, SUM(SalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalty
GROUP BY TitleID, AuthorID) AggregSalesRoyalty;
/*CHALLENGE 1.3*/

SELECT AuthorID, SUM(SalesRoyalty) + SUM(SumAdvance) AS Profit 
FROM (
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty, SUM(Advance) AS SumAdvance
FROM (
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;
/* Challenge 2 - Step 2 */
CREATE TEMPORARY TABLE advance_royalty_aggregated
SELECT AuthorID, SUM(SumSalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty;
/* Challenge 2 - Step 3 */
CREATE TEMPORARY TABLE author_profit
SELECT AuthorID, SUM(SalesRoyalty) + SUM(SumAdvance) AS Profit 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty, SUM(Advance) AS SumAdvance
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;
/*CHALLENGE 1.2*/
SELECT AuthorID, SUM(SumSalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID);
/*CHALLENGE 1.2*/
SELECT AuthorID, SUM(SumSalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty;
/* CHALLENGE 1.1 */
SELECT TitleID, AuthorID, SUM(SalesRoyalty)
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) TotalRoyalties
GROUP BY TitleID, AuthorID;
/*Merger les deux formules */
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoylaty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id;
/*Faire un inner join avec 3 tables */
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS SalesRoylaty
FROM titleauthor, titles, sales
WHERE titleauthor.title_id = titles.title_id 
AND titles.title_id = sales.title_id;
/*Mettre la formule dans select : */
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, titles.advance * titleauthor.royaltyper / 100 AS Advance
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id;
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, titles.advance AS Advance, titleauthor.royaltyper
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id;
/*Step 1 : */
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, titles.advance AS Advance
FROM titleauthor 
INNER JOIN titles
ON titleauthor.title_id = titles.title_id;
SELECT AuthorID, SUM(SalesRoyalty) + SUM(SumAdvance) AS Profit 
FROM (
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty, SUM(Advance) AS SumAdvance
FROM (
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;
SELECT AuthorID, SUM(SalesRoyalty) + SUM(SumAdvance) AS Profit 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty, SUM(Advance) AS SumAdvance
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;
CREATE TEMPORARY TABLE author_profit
SELECT AuthorID, SUM(SalesRoyalty) + SUM(SumAdvance) AS Profit 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty, SUM(Advance) AS SumAdvance
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3;
/* Challenge 2 - Step 1 */
CREATE TEMPORARY TABLE Advance_royalty_list
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoylaty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id;
/* Challenge 2 - Step 1 */
CREATE TEMPORARY TABLE Advance_royalty_aggregated
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoylaty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id;
/*CHALLENGE 2.2*/
SELECT AuthorID, SUM(SumSalesRoyalty) 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty


/*CHALLENGE 2.3*/

SELECT AuthorID, SumSalesRoyalty + SumAdvance AS Profit 
FROM(
SELECT TitleID, AuthorID, SUM(SalesRoyalty) AS SumSalesRoyalty, SUM(Advance) AS SumAdvance
FROM(
SELECT titleauthor.title_id AS TitleID, titleauthor.au_id AS AuthorID, 
titles.advance * titleauthor.royaltyper / 100 AS Advance,
titles.price * sales.qty * titles.royalty / 100 AS SalesRoyalty
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id 
INNER JOIN sales
ON titles.title_id = sales.title_id
) SalesRoyalties
GROUP BY TitleID, AuthorID) AggregSalesRoyalty
GROUP BY AuthorID
ORDER BY Profit DESC
LIMIT 3