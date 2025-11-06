use db;

set sql_safe_updates = 0;

-- Calculate the average price of all movies where type is 'comedy' or 'thriller' and price is 
-- greater than or equal to 150.00.
select avg(PRICE) as AVG_PRICE from MOVIE where TYPE in ('comedy', 'thriller') and PRICE >= 150.00;

-- Display the invoice number and day on which customers were issued movies.
select I.INV_NO, C.FNAME, C.LNAME, I.ISSUE_DATE from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID;

-- Display the month (in alphabets) in which customers are supposed to return the movies.
select I.INV_NO, I.MV_NO, C.FNAME, C.LNAME, date_format(I.RETURN_DATE, '%M') as RETURN_MONTH 
from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID;

-- Display the issue-date in the format 'dd-month-yy'. 
-- For eg. 12-february-93.
select INV_NO, MV_NO, date_format(ISSUE_DATE, '%d-%M-%y') as ISSUE_DATE from INVOICE;

-- Find current date. 
select curdate();

-- Find current date and time.
select now();

-- Find the date, 15 days after the current date.
select date_add(curdate(), interval 15 day) as date_after_15_days;

-- Find the number of days elapsed between the current date and the return date of the 
-- movie for all customers.
select CUST_ID, INV_NO, MV_NO, datediff(curdate(), RETURN_DATE) as DATE_DIFF from INVOICE;



