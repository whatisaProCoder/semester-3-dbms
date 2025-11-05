use db;

set sql_safe_updates = 0;

select TITLE, PRICE from MOVIE where PRICE > 150 and PRICE <= 200;

select TITLE, PRICE, PRICE * 15 as new_cost from MOVIE where PRICE >= 150;

select TITLE, PRICE, PRICE * 15 as 'new-price' from MOVIE where PRICE >= 150;

select MV_NO, TITLE from MOVIE order by TITLE asc;

select TITLE, TYPE from MOVIE where TYPE != 'horror';

select TITLE, PRICE / (PRICE-100) from MOVIE as result where TITLE = 'home alone';

select CUST_ID, FNAME, LNAME, AREA from CUST where PHONE_NO is null;

select FNAME, LNAME, AREA from CUST where LNAME is null;

select MV_NO, TITLE, TYPE from MOVIE where STAR like 'm%';

select M.MV_NO, I.INV_NO from MOVIE M join INVOICE I on M.MV_NO = I.MV_NO where I.INV_NO < 'i05';