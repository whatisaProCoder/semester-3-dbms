drop database db;
create database db;
use db;

set sql_safe_updates = 0;

create table CUSTOMERS (
CUST_ID varchar(10) primary key,
NAME varchar(100) not null,
AGE int,
ADDRESS varchar(100),
SALARY int
);

create table SHIPMENT (
SHIPMENT_NO varchar(10) primary key,
CUST_ID varchar(10),
WEIGHT int,
foreign key (CUST_ID) references CUSTOMERS(CUST_ID)
);

alter table SHIPMENT add START_CITY varchar(100);

insert into CUSTOMERS values ("C001", "Ramesh", 32, "Ahmedabad", 12000.00);

insert into CUSTOMERS values ("C002", "Khilan", 25, "Delhi", 14500.00);

insert into CUSTOMERS values ("C003", "Kaushik", 23, "Kota", 18000.00);

insert into CUSTOMERS values ("C004", "Muffy", 25, "Mumbai", 15000.00);

insert into SHIPMENT values ("S201", "C001", 120, "Indore");

insert into SHIPMENT values ("S202", "C002", 210, "Kolkata");

insert into SHIPMENT values ("S203", "C003", 320, "Mumbai");

describe CUSTOMERS;

describe SHIPMENT;

select * from CUSTOMERS;

select * from SHIPMENT;

select START_CITY from SHIPMENT;

update CUSTOMERS set AGE=35 where NAME="Kaushik";

update CUSTOMERS set SALARY=15500.00 where NAME="Ramesh";

delete from SHIPMENT where SHIPMENT_NO="S202";

select * from CUSTOMERS;

select * from SHIPMENT;



