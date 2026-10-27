SELECT * FROM retail_sales.sales_insights;

# there is so many null values but we can't drop them because there are important data too in others columns 

select count(transaction_id) from sales_insights;

-- 1.  how many categories of item at here 

select count(distinct(category)) from sales_insights;
 
##  overall sales performence 

--  total revenue based on category 

select category , sum(total_spent) as revenue from sales_insights
group by category ;

--  average price of an products 

select category , avg(price_per_unit) as revenue from sales_insights
group by category ;


--  total spent based on discount

select discount_applied , sum(total_spent) as revenue from sales_insights
group by discount_applied ;

-- how much transaction recorded?

select count(total_spent) as total_transactions from sales_insights;

-- how many rows have missing sales amount; 

select count(*) from sales_insights
where price_per_unit is null ;

## Product and category performance

-- which category generates the most revenue ;
SELECT category, total_spent
FROM (
    SELECT category, SUM(total_spent) AS total_spent
    FROM sales_insights
    GROUP BY category
) AS category_sales
ORDER BY total_spent DESC
LIMIT 1;

-- which product have the highest sales quantity ;

select  item  , sum(quantity) as total_quantity
from sales_insights 
-- where item is not null
group by item 
having item is not null
order by total_quantity  desc
limit 1 -- offset 1;

-- Which product has the highest unit price?

SELECT item, price
FROM (
    SELECT
        item,
        MAX(price_per_unit) AS price
    FROM sales_insights
    WHERE item IS NOT NULL
    GROUP BY item
    ORDER BY price DESC
    LIMIT 1
) AS item_price;

-- which category have the most transcations 

select category , count(transaction_id) as total
from sales_insights 
group by category 
order by total desc 
limit 2 -- offset 1 ;

## Time based sales trend 

-- which month has the highest recorded revenue 


SELECT mnth, spent,yr
FROM (
    SELECT
        MONTH(transaction_date) AS mnth,
       round( SUM(total_spent),1) AS spent,
        year(transaction_date) as yr
    FROM sales_insights
    WHERE transaction_date IS NOT NULL
    GROUP BY YEAR(transaction_date), MONTH(transaction_date)
    ORDER BY spent DESC
    LIMIT 1
) AS data_date;

-- how do sales change over time 

   SELECT
        MONTH(transaction_date) AS mnth,
        round( SUM(total_spent),1) AS spent,
        year(transaction_date) as yr
    FROM sales_insights
    WHERE transaction_date IS NOT NULL
    GROUP BY YEAR(transaction_date), MONTH(transaction_date)
    ORDER BY yr  ;

-- what date have the highest sales 

 SELECT
		date(transaction_date) as dates,
      --   MONTH(transaction_date) AS mnth,
		round(SUM(total_spent),1) AS spent
        -- year(transaction_date) as yr
    FROM sales_insights
    WHERE transaction_date IS NOT NULL
    GROUP BY date(transaction_date) -- YEAR(transaction_date), MONTH(transaction_date)  
    ORDER BY spent desc
    limit 5;
    
    
    ## payment method and location analysis 
    
    -- which payment method has the highest recorded revenue
    
    select  payment_method,sum(total_spent) as spent from sales_insights
group by payment_method
order by spent desc 
limit 1 ;

-- which location has generates the highest revenue 

    select  location,sum(total_spent) as spent from sales_insights
group by location
order by spent desc 
limit 1 ; 

-- how does transaction volumne vary with location 

select location , count(distinct(transaction_id)) as volumne 
from sales_insights
group by location 
order  by volumne desc ; 

-- how does customer spending differ across payment method 

select  payment_method,
sum(total_spent) as total,
round(avg(total_spent),2)as average ,
COUNT(DISTINCT transaction_id) AS total_transactions    
from sales_insights
group by payment_method
order by total  ;


## discount analysis 

-- how many record you have discount applied 

select count(transaction_id) as trans, discount_applied
from sales_insights
where discount_applied= 1 
group by discount_applied;  

-- how do records spending and quantities comapre between discounted and non - discounted records ?

  select sum(total_spent)  as spent , sum(quantity) as quantity , discount_applied
  from sales_insights
  group by discount_applied
  order by spent desc ;
  
  