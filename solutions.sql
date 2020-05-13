use publications;

-- Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication
-- Select titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 as advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty 
-- from titleauthor
-- join roysched
-- on titleauthor.title_id = roysched.title_id
-- join titles
-- on titles.title_id = titleauthor.title_id
-- join sales
-- on sales.title_id = titleauthor.title_id


-- Step 2: Aggregate the total royalties for each title and author
-- select sum(sales_royalty) as aggregated_royalty, sum(advance) as aggregated_advance, au_id, title_id
-- from(
-- Select titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 as advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty 
-- from titleauthor
-- join roysched
-- on titleauthor.title_id = roysched.title_id
-- join titles
-- on titles.title_id = titleauthor.title_id
-- join sales
-- on sales.title_id = titleauthor.title_id
-- group by au_id, title_id, sales_royalty
-- ) result
-- group by au_id, title_id;



-- Step 3: Calculate the total profits of each author
-- select au_id, sum(aggregated_advance)+sum(aggregated_royalty) as Profits
-- from(
-- select sum(sales_royalty) as aggregated_royalty, sum(advance) as aggregated_advance, au_id, title_id
-- from(
-- Select titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 as advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty 
-- from titleauthor
-- join roysched
-- on titleauthor.title_id = roysched.title_id
-- join titles
-- on titles.title_id = titleauthor.title_id
-- join sales
-- on sales.title_id = titleauthor.title_id
-- group by au_id, title_id, sales_royalty
-- ) result
-- group by au_id, title_id) res2
-- group by au_id
-- order by Profits DESC;



-- Challenge 2 - Alternative Solution
-- CREATE TEMPORARY TABLE temp_tab2
-- SELECT titleauthor.au_id, (titles.price*sales.qty*titles.royalty/100*titleauthor.royaltyper/100) as sales_royalty, titles.advance * titleauthor.royaltyper / 100 as advance
-- from titleauthor
-- join roysched
-- on titleauthor.title_id = roysched.title_id
-- join titles
-- on titles.title_id = titleauthor.title_id
-- join sales
-- on sales.title_id = titleauthor.title_id;


-- select sales_royalty, advance, au_id
-- from temp_tab2


-- Challenge 3
-- CREATE TABLE most_profiting_authors
-- select au_id, sum(aggregated_advance)+sum(aggregated_royalty) as Profits
-- from(
-- select sum(sales_royalty) as aggregated_royalty, sum(advance) as aggregated_advance, au_id, title_id
-- from(
-- Select titles.title_id, titleauthor.au_id, titles.advance * titleauthor.royaltyper / 100 as advance, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty 
-- from titleauthor
-- join roysched
-- on titleauthor.title_id = roysched.title_id
-- join titles
-- on titles.title_id = titleauthor.title_id
-- join sales
-- on sales.title_id = titleauthor.title_id
-- group by au_id, title_id, sales_royalty
-- ) result
-- group by au_id, title_id) res2
-- group by au_id
-- order by Profits DESC;



select * from most_profiting_authors