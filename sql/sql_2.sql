--# primary key
-- cannot have null and no duplicate values are allowed

create table learn_1.employee(
firstname varchar (20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null default 'bangalore'
);

insert into learn_1.employee(firstname,middlename,lastname,age,salary) values
('suresh','raj','raina',34,300000);

select * from learn_1.employee;

create table learn_1.employee_1(
id int primary key,
firstname varchar (20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null default 'bangalore'
--primary key(id)
);


insert into learn_1.employee_1(id,firstname,middlename,lastname,age,salary) values
(1,'suresh','raj','raina',34,300000);

select * from learn_1.employee_1;


--create table learn_1.employee_2(
--id int AUTO_INCREMENT,
--firstname varchar (20) not null,
--middlename varchar(20),
--lastname varchar(20) not null,
--age int not null,
--salary int not null,
--location varchar(20) not null default 'bangalore',
--primary key(id)
--);


--unique key

--no duplicates and but can have null
--depends on databases the number of null values it can hold in a table
--mysql can have any number of null values
--example where column/atrribute shd be unique like email address to make sure it doesnt duplicate
--we can have multiple unique keys  in a table
--only one primary key

 create table learn_1.emp(
 firstname varchar(20) not null,
 lastname varchar(30) not null,
 age int,
 primary key(firstname,lastname)
-- unique key(firstname, lastname)
 );

insert into learn_1.emp values('kapil','singh',26),
('kapil','sardar',30);
--composite key combination of multiple columns

--describe learn_1.emp;