--ddl vs dml

--ddl--table structure
--create
--alter
--drop

--dml-data dealing
--insert ,delete,update

--truncate also removes all records -- ddl

--drops table and recreates it internally

--CRUD operations

create table learn_1.emp_details(
id int,
firstname varchar (20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null default 'bangalore',
primary key(id)
);

insert into learn_1.emp_details (id,firstname,middlename,lastname,age,salary) values(1,'suresh','raj','raina',34,300000),(2,'ramesh','raj','raina',36,300000),(3,'satish','raj','raina',34,300000);

--it is case insensitive operation
select * from learn_1.emp_details;

select * from learn_1.emp_details where firstname='suresh';

--case sensitive
select * from learn_1.emp_details where binary firstname='suresh';

select firstname as name, lastname  as surname from learn_1.emp_details;

update learn_1.emp_details set age=35 where id=1;

--updates all the records
update learn_1.emp_details set location='chennai';

--delete

delete from learn_1.emp_details where id=3;

--alter structure of a table
alter table learn_1.emp_details alter column firstname varchar;
alter table learn_1.emp_details drop column firstname;
alter table learn_1.emp_details add column colname varchar(20);