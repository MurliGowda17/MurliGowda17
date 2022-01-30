--foreign key constraint

drop table learn_1.learners;
create table learn_1.learners(
student_id int,
student_fname varchar not null,
student_mname varchar null,
student_lname varchar not null,
student_email varchar not null,
student_phone varchar not null,
student_altername_phone varchar null,
enrollment_date timestamp not null,
selected_course int not null default 1,
years_of_exp int not null,
student_company varchar  null,
batch_date varchar  not null,
source_of_joining varchar not null,
location varchar not null,
primary key(student_id),
foreign key(selected_course) references learn_1.course(course_id)
);


insert into learn_1.learners(student_id,student_fname,student_lname,student_email,student_phone, enrollment_date, years_of_exp,
student_company,batch_date,source_of_joining,location) values(2,'sohit','sharma','sohit@gmail.com','9192929292',now(),6,'flipkart',
'5-02-2021','linkedin','bangalore'),
(3,'vishwa','sharma','vishwa@gmail.com','9192933292',now(),3,'nike',
'5-02-2021','linkedin','bangalore'),
(4,'suresh','reddy','suresh@gmail.com','9192977292',now(),7,'lilly',
'5-02-2021','linkedin','bangalore'),
(5,'ramesh','sinchan','ramesh@gmail.com','9192900292',now(),9,'wesco',
'5-02-2021','linkedin','bangalore'),
(1,'virat','kohli','virat@gmail.com','9192900292',now(),9,'wesco',
'5-02-2021','linkedin','bangalore');

insert into learn_1.learners(student_id,student_fname,student_lname,student_email,student_phone, enrollment_date, years_of_exp,
student_company,batch_date,selected_course, source_of_joining,location) values(10,'shohit','sharma','shohit@gmail.com','9192929292',now(),6,'flipkart',
'5-02-2021',2,'linkedin','bangalore');


select * from learn_1.learners;


create table learn_1.course(
course_id int primary key,
course_name varchar not null,
course_duration_months int not null,
course_fee int not null
);

insert into learn_1.course values(1, 'big data', 6, 50000);
insert into learn_1.course values(2, 'web dev', 3, 20000);
insert into learn_1.course values(3, 'data science', 6, 40000);
insert into learn_1.course values(4, 'devops', 1, 10000);


--
--not null
--primary key
--unique key
--foreign key
--check constraint
--
--constraints are used to limit the type of data that can go into a table
--
--this ensures the accuracy and reliability of the data is maintained
--
--if there is any violation then the action is aborted