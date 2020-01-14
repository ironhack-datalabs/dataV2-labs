

### CHALLENGE 1

Select ta.title_id as Title_ID, ta.au_id as Author_ID, t.advance* ta.royaltyper/100 as Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Sales_Royalty
from titleauthor ta 
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id
;


Select Title_ID, Author_ID, sum(Sales_Royalty) as Aggregate_Royalty, Advance
From (
Select ta.title_id as Title_ID, ta.au_id as Author_ID, t.advance* ta.royaltyper/100 as Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Sales_Royalty
from titleauthor ta 
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id
) as subquery
group by Author_ID, Title_ID

;


Select Title_ID, Author_ID, Aggregate_Royalty+Advance as Total_Profits
From 
(
Select Title_ID, Author_ID, sum(Sales_Royalty) as Aggregate_Royalty, Advance
From (
Select ta.title_id as Title_ID, ta.au_id as Author_ID, t.advance* ta.royaltyper/100 as Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Sales_Royalty
from titleauthor ta 
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id
) as subquery
group by Author_ID, Title_ID) as s_subquery
order by Total_Profits desc
limit 3;

### CHALLENGE 2

Create temporary table if not exists step1
Select ta.title_id as Title_ID, ta.au_id as Author_ID, t.advance* ta.royaltyper/100 as Advance, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as Sales_Royalty
from titleauthor ta 
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id
;

Create temporary table if not exists step2
Select Title_ID, Author_ID, sum(Sales_Royalty) as Aggregate_Royalty, Advance
From step1
group by Author_ID, Title_ID, Advance;


Select Author_ID, Aggregate_Royalty+Advance as Total_Profits
From step2
order by Total_Profits desc;


### CHALLENGE 3

Create table if not exists most_profiting_authors
Select ta.au_id as Author_ID, ta.title_id as Title_ID, sum(t.advance* ta.royaltyper/100+t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) as Total_Profits
from titleauthor ta 
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id
group by Author_ID, Title_ID, Advance
order by Total_Profits desc;


