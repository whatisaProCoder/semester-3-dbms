use db;

set sql_safe_updates = 0;

-- Create a view comedy movies with title of movie table for only comedy movies 
-- from movie table.
create view COMEDY_MOVIES as select MV_NO, TITLE, STAR, PRICE from MOVIE where TYPE = 'comedy';


-- Find out the names of comedy movies using the above view.
select TITLE from COMEDY_MOVIES;

-- Create a view comedy movie price with title, price of movie table for only 
-- comedy movies. 
create view COMEDY_MOVIE_PRICE as select TITLE, PRICE from MOVIE where TYPE = 'comedy';

-- Find out the price of comedy movie home alone from the above view.
select PRICE from COMEDY_MOVIE_PRICE where TITLE = 'home alone';

-- Create a view movie type wise total price with two attributes named as movie type 
-- and total price from movie table for each movie. 
create view MOVIE_TYPE_WITH_TOTAL_PRICE as select TYPE, sum(PRICE) as TOTAL_PRICE from MOVIE group by TYPE;