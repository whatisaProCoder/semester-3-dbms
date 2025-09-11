use db;

set sql_safe_updates = 0;

update CUST set AREA = "vs" where CUST_ID = "a05";

update INVOICE set RETURN_DATE = "1993-08-16" where INV_NO = "i08"; 

select FNAME, LNAME from CUST where FNAME like "_a%";

select LNAME from CUST where LNAME like "s%" or LNAME like "j%";

select * from CUST where AREA like "_a";

select * from CUST where AREA IN ("da", "mu", "gh");

select * from CUST where PHONE_NO > 5550000;

select distinct C.* from CUST C join INVOICE I 
on C.CUST_ID = I.CUST_ID 
where MONTH(I.ISSUE_DATE) = 9;

select I.* from CUST C join INVOICE I 
on C.CUST_ID = I.CUST_ID 
where C.CUST_ID = "a01" or C.CUST_ID = "a02"; 

select * from MOVIE where TYPE = "action" or TYPE = "comedy";

