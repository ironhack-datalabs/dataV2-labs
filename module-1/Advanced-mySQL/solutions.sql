SELECT titles.title, titles.title_id, titleauthor.au_id, (titles.advance*titleauthor.royaltyper/100) AS advance, (titles.price*sales.qty*titles.royalty/100*titleauthor.royaltyper/100) AS sales_royalty
FROM titles
INNER JOIN titleauthor on titles.title_id = titleauthor.title_id
INNER JOIN authors on titleauthor.au_id = authors.au_id
INNER JOIN sales on sales.title_id = titles.title_id
GROUP BY title, title_id, au_id, sales.qty
ORDER BY au_id;

SELECT titles.title_id, titleauthor.au_id
FROM (SELECT titles.title, titles.title_id, titleauthor.au_id, (titles.advance*titleauthor.royaltyper/100) AS advance, (titles.price*sales.qty*titles.royalty/100*titleauthor.royaltyper/100) AS sales_royalty
FROM titles
INNER JOIN titleauthor on titles.title_id = titleauthor.title_id
INNER JOIN authors on titleauthor.au_id = authors.au_id
INNER JOIN sales on sales.title_id = titles.title_id
GROUP BY title, title_id, au_id, sales.qty) sum;

