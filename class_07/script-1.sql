use db;

set sql_safe_updates = 0;

select TITLE, PRICE, round(sqrt(PRICE), 2) as SQRT_PRICE from MOVIE;

select count(*) as TOTAL_NO_CUST from CUST;

select sum(price) as TOTAL_PRICE from MOVIE;

select avg(PRICE) as AVG_PRICE from MOVIE;

select max(PRICE) as max_price, min(PRICE) as min_price from MOVIE;

select count(*) as result from MOVIE where PRICE >= 150;

select TYPE, avg(PRICE) as AVG_PRICE from MOVIE group by TYPE;

select TYPE, count(*) as MV_COUNT from MOVIE group by TYPE;

select TYPE, count(*) as MV_COUNT from MOVIE where TYPE in ('thriller', 'comedy') group by TYPE;

select avg(PRICE) as AVG_PRICE from MOVIE group by TYPE having MAX(PRICE) = 150;