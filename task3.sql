show databases;
use first;
create table student(id int primary key, name varchar(10), branch char(5), location varchar(15), marks int );
insert into student values(1,"Koyal","CSE","Hyderabad",89);
insert into student values(2,"Abhi","ECE","Lucknow",70);
insert into student values(3,"Jimmy","CSE","Hyderabad",35);
insert into student values(4,"Lina","IT","Kolkata",60);
insert into student values(5,"Amar","CSE","Sikkim",52);
select *From student where id=4;
select *from student order by location;
select location, count(name) from student group by location;
create table student_course(id int primary key, course varchar(10));
insert into student_course values(1,"AI/ML");
insert into student_course values(2,"VSLI");
insert into student_course values(4,"Guitar");
insert into student_course values(7,"AI/ML");
insert into student_course values(8,"Cooking");
select *From student inner join student_course on student.id=student_course.id;
select *From student left join student_course on student.id=student_course.id;
select *From student right join student_course on student.id=student_course.id;
select name, marks from student where marks > (select avg(marks) from student);
select id, name from student where id in (select id from student where (id%2=0));
select max(marks) from student;
select sum(marks) from student;
select avg(marks) from student;
create view v1 as select id, name, branch from student;
select *From v1;
create view v2 as select name, marks from student where marks>50;
select *From v2;
create index i1 on student(id, name, marks);
select *from student use index(i1);




