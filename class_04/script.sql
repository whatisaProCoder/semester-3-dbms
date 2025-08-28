use db;

set sql_safe_updates = 0;

select FNAME, LNAME from CUST;

select * from CUST;

select FNAME, AREA from CUST;

select distinct TYPE from MOVIE;

select * from MOVIE where MV_NO not in (
select MV_NO from INVOICE);

update CUST set PHONE_NO = 466389 where FNAME = "Pramada";

update INVOICE set ISSUE_DATE = "1993-07-24" where CUST_ID = "a01";

update MOVIE set PRICE = 250.00 where TITLE = "gone with the wind";

delete from INVOICE where INV_NO = "i08";

delete from INVOICE where RETURN_DATE < "1993-07-10";

