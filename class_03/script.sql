drop database db;
create database db;
use db;

set sql_safe_updates = 0;

create table CUST (
CUST_ID varchar(3) primary key,
LNAME varchar(15),
FNAME varchar(15),
AREA varchar(2),
PHONE_NO int
);

create table MOVIE (
MV_NO varchar(2) primary key,
TITLE varchar(25),
TYPE varchar(10),
STAR varchar(25)
);

create table INVOICE (
INV_NO varchar(3) primary key,
MV_NO varchar(2),
CUST_ID varchar(3),
ISSUE_DATE date,
RETURN_DATE date
);

alter table INVOICE
add constraint f_invoice_cust
foreign key (CUST_ID) references CUST(CUST_ID);

alter table INVOICE
add constraint f_invoice_movie
foreign key (MV_NO) references MOVIE(MV_NO);

alter table CUST modify FNAME varchar(25) not null;

alter table MOVIE modify TITLE varchar(25) not null;

alter table MOVIE modify TYPE varchar(10) not null;

alter table MOVIE add PRICE decimal(8, 2);

insert into CUST values ("a01", "Bayross", "Ivan", "sa", 6125467);
insert into CUST values ("a02", "Saitwal", "Vandana", "mu", 5560379);
insert into CUST values ("a03", "Jaguste", "Pramada", "da", 4563891);
insert into CUST values ("a04", "Navindgi", "Basu", "ba", 6125401);
insert into CUST (CUST_ID, LNAME, FNAME, AREA) values ("a05", "Sreedharan", "Ravi", "va");
insert into CUST (CUST_ID, FNAME, AREA, PHONE_NO) values ("a06", "Rukmini", "gh", 5560379);

insert into MOVIE (MV_NO, TITLE, TYPE, STAR, PRICE) values
("1",  'bloody vengeance', 'action',   'jackie chan',       180.95),
("2",  'the firm',         'thriller', 'tom cruise',        200.00),
("3",  'pretty woman',     'romance',  'richard gere',      150.55),
("4",  'home alone',       'comedy',   'macaulay culkin',   150.00),
("5",  'the fugitive',     'thriller', 'harisson ford',     200.00),
("6",  'coma',             'suspense', 'michael douglas',   100.00),
("7",  'dracula',          'horror',   'gary oldman',       150.25),
("8",  'quick change',     'comedy',   'bill muray',        100.00),
("9",  'gone with the wind','drama',   'clarke gable',      200.00),
("10", 'carry on doctor',  'comedy',   'leslie phillips',   100.00);

insert into INVOICE (INV_NO, MV_NO, CUST_ID, ISSUE_DATE, RETURN_DATE) values
('i01', '4',  'a01', '1993-07-23', '1993-07-25'),
('i02', '3',  'a02', '1993-08-12', '1993-08-15'),
('i03', '1',  'a02', '1993-08-15', '1993-08-18'),
('i04', '6',  'a03', '1993-09-10', '1993-09-12'),
('i05', '7',  'a04', '1993-08-05', '1993-08-08'),
('i06', '2',  'a06', '1993-09-18', '1993-09-21'),
('i07', '9',  'a05', '1993-07-07', '1993-07-10'),
('i08', '9',  'a01', '1993-08-11', '1993-08-14'),
('i09', '5',  'a03', '1993-07-06', '1993-07-07'),
('i10', '8',  'a06', '1993-09-03', '1993-09-06');

select * from CUST;

select * from MOVIE where TYPE = "comedy";

select * from MOVIE where PRICE > 150.00;

select INV_NO, RETURN_DATE from INVOICE where RETURN_DATE < "1993-08-10";

