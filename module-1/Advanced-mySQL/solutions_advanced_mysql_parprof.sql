# Database
USE publications;

# Challenge 1 - Most Profiting Authors
## Step 1
CREATE TEMPORARY TABLE publications.royalties_per_sale
SELECT ta.au_id AS AuthorID, s.title_id AS TitleID,
      (t.price * s.qty) * (t.royalty / 100) * (ta.royaltyper / 100) AS RoyaltyPerSale,
      t.advance * (ta.royaltyper / 100) AS AdvancePerTitleAndAuthor
FROM publications.sales s
INNER JOIN publications.titles t ON s.title_id = t.title_id
INNER JOIN publications.titleauthor ta ON t.title_id = ta.title_id;

## Step 2
CREATE TEMPORARY TABLE publications.royalties_and_advance_per_title_and_author
SELECT AuthorID, TitleID, SUM(RoyaltyPerSale) AS RoyaltyPerTitleAndAuthor, AdvancePerTitleAndAuthor
FROM publications.royalties_per_sale
GROUP BY TitleID, AuthorID, AdvancePerTitleAndAuthor;

## Step 3
CREATE TEMPORARY TABLE publications.profit_per_author
SELECT AuthorID, ROUND(SUM(RoyaltyPerTitleAndAuthor + AdvancePerTitleAndAuthor),2) AS Profits
FROM publications.royalties_and_advance_per_title_and_author
GROUP BY AuthorID;

SELECT *
FROM publications.profit_per_author
ORDER BY Profits desc
LIMIT 3;

# Challenge 2 - Alternative Solution
## Step 3
SELECT AuthorID, ROUND(SUM(RoyaltyPerTitleAndAuthor + AdvancePerTitleAndAuthor),2) AS Profits
FROM (
    ## Step 2
    SELECT AuthorID, TitleID, SUM(RoyaltyPerSale) AS RoyaltyPerTitleAndAuthor, AdvancePerTitleAndAuthor
    FROM (
      ## Step 1
      SELECT ta.au_id AS AuthorID, s.title_id AS TitleID,
      (t.price * s.qty) * (t.royalty / 100) * (ta.royaltyper / 100) AS RoyaltyPerSale,
      t.advance * (ta.royaltyper / 100) AS AdvancePerTitleAndAuthor
      FROM publications.sales s
      INNER JOIN publications.titles t ON s.title_id = t.title_id
      INNER JOIN publications.titleauthor ta ON t.title_id = ta.title_id
    ) royalties_per_sale
    GROUP BY TitleID, AuthorID
    ) royalties_and_advance_per_title_and_author
GROUP BY AuthorID
ORDER BY Profits desc
LIMIT 3;

# Challenge 3 - Create A Permanent Table Of The Most Profiting Authors
CREATE TABLE publications.most_profiting_authors
SELECT *
FROM publications.profit_per_author
ORDER BY Profits desc
LIMIT 3;