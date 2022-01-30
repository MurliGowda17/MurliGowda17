

create table if not exists learn_1.test(
name varchar,
city varchar);

insert into learn_1.test(name,city) values('murali','bangalore'),('suriya','chennai');

select * from learn_1.test;

--student ids whose marks is greater than  50 in all the subjects
create table if not exists learn_1.student(
student_id int,
subject_id varchar,
marks int
);


insert into learn_1.student(student_id, subject_id, marks) values
(1,'s1',60),(2,'s2',90),(3,'s3',70),
(1,'s1',80),(2,'s2',40),(3,'s3',94),
(1,'s1',73),(2,'s2',84),(3,'s3',52);

--select student_id  from learn_1.student
--where marks>50
--group by student_id
--having count(subject_id)=
--(select count(distinct(subject_id)) from learn_1.student)
--order by student_id asc;

--select student_id from learn_1.student group by student_id having min(marks)>50;




