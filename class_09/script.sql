use db;

set sql_safe_updates = 0;

-- Find out the movie number which has been issued to 'ivan'. 
select I.MV_NO as MV_NO_Ivan from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID where C.FNAME = 'Ivan';

-- Find the names and movie numbers of all the customers who have been issued a movie.
select C.FNAME, C.LNAME, I.MV_NO from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID;

-- Select the title, cust - id, mv - no for all the movies that are issued.
select M.TITLE, I.CUST_ID, I.MV_NO from MOVIE M join INVOICE I on M.MV_NO = I.MV_NO;

-- Find out the title and types of the movies that have been issued to 'Vandana'. 
select M.TITLE, M.TYPE from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO where C.FNAME = 'Vandana';

-- Find the names of customers who have been issued movie of type 'drama'.
select C.FNAME, C.LNAME from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO where M.TYPE = 'drama';

-- Display the title, lname, fname for customers having movie number greater than or 
-- equal to three, in the following format: 
-- The movie taken by (fname} {lname} is {title}. 
select CONCAT('The movie taken by ', C.FNAME,' ', C.LNAME, ' is ', M.TITLE) as FORMATTED_OUTPUT 
from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO 
where I.MV_NO >= 3;

-- Find out which customers have been issued movie number 9.
select C.FNAME, C.LNAME from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO 
where I.MV_NO = 9;

-- Find the customer name and area with invoice number 'i10'.
select C.FNAME, C.LNAME, C.AREA from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO 
where I.INV_NO = 'i10';

-- Find the customer names and phone numbers who have been issued movies before the month of August.
select C.FNAME, C.LNAME, C.PHONE_NO from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID where month(I.ISSUE_DATE) < 8; 

-- Find the name of the movie issued to 'vandana' and 'ivan'.
select C.FNAME, M.TITLE from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO 
where C.FNAME in ('vandana', 'ivan');

-- List the movie number, movie names issued to all customers.
select M.MV_NO, M.TITLE from CUST C join INVOICE I on C.CUST_ID = I.CUST_ID join MOVIE M on M.MV_NO = I.MV_NO order by M.MV_NO;

-- Find the type and movie number of movie issued to cust – id 'a01' and 'a02'.
select M.TYPE, M.MV_NO from INVOICE I join MOVIE M on I.MV_NO = M.MV_NO where I.CUST_ID in ('a01', 'a02');

-- Find out if the movie starring 'tom cruise' is issued to any customer and print the custid 
-- to whom it is issued.
select CUST_ID from INVOICE where MV_NO in (select MV_NO from MOVIE where STAR = 'tom cruise');

-- Find the lname, fname who have been issued movies.
select FNAME, LNAME from CUST where CUST_ID in (select CUST_ID from INVOICE);

-- Find the name of customer whose has not issued any movie.
select FNAME, LNAME from CUST where CUST_ID not in (select CUST_ID from INVOICE);

-- Using aggregate function find out the fname of the customer who have issued only one 
-- movie.
select C.FNAME from INVOICE I join CUST C on I.CUST_ID = C.CUST_ID group by C.CUST_ID having count(*) = 1;

-- Find out the name (fname,lname) of the customer who have issued only one movie. 
select C.FNAME, C.LNAME from INVOICE I join CUST C on I.CUST_ID = C.CUST_ID group by C.CUST_ID having count(*) = 1;

-- Find out the total price paid by the individual customer.
select I.CUST_ID, sum(M.PRICE) as TOTAL_PRICE from INVOICE I join MOVIE M on I.MV_NO = M.MV_NO group by CUST_ID;

-- Find out the name (fname,lname) of the customer who have issued more than one movie. 
select C.FNAME, C.LNAME from INVOICE I join CUST C on I.CUST_ID = C.CUST_ID group by C.CUST_ID having count(*) > 1;

-- Using aggregate function find out the fname of the customer who have issued more than one movie.
select C.FNAME from INVOICE I join CUST C on I.CUST_ID = C.CUST_ID group by C.CUST_ID having count(*) > 1;





