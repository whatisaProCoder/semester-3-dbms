drop database db;
create database db;

use db;

create table student (
  id varchar(10) primary key,
  name varchar(100),
  city varchar(100)
);

insert into student (id, name, city) values (
  'CJ101', 'Deepak', 'Mumbai'
);

insert into student (id, name, city) values (
  'CJ102', 'Aman', 'Bangalore'
);

insert into student (id, name, city) values (
  'CJ103', 'Rajkumar', 'Kolkata'
);

insert into student (id, name, city) values (
  'CJ104', 'Aman', 'Delhi'
);

insert into student (id, name, city) values (
  'CJ105', 'Kunal', 'Mumbai'
);

describe student;

select * from student;

select name from student;
