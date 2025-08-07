drop database db;
create database db;

use db;

create table student (
  id int primary key,
  name varchar(100),
  city varchar(100)
);

insert into student (id, name, city) values (
  101, 'Deepak', 'Mumbai'
);

insert into student (id, name, city) values (
  102, 'Aman', 'Bangalore'
);

insert into student (id, name, city) values (
  103, 'Rajkumar', 'Kolkata'
);

insert into student (id, name, city) values (
  104, 'Aman', 'Delhi'
);

insert into student (id, name, city) values (
  105, 'Kunal', 'Mumbai'
);

describe student;

select * from student;

select name from student;
