-- comment
select * from course;

--q2.1
-- insert into student(s_email,s_name,major)
-- values('s1@jmu.edu','s1','IA'),
-- ('s2@jmu.edu','s2','IA'),
-- ('s3@jmu.edu','s3','ISAT'),
-- ('s4@jmu.edu','s4','ISAT');

--q2.2
 --insert into professor(p_email,p_name,office)
-- values('p1@jmu.edu','p1','o1'),
--('p2@jmu.edu','p2','o2'),
--('p3@jmu.edu', 'p3', o3)

--q2.3
-- insert into course(c_number,c_name,room,p_email)
 --values('c1','postgresql','r1','p1@jmu.edu'),
-- ('c2','mongodb','r2','p2@jmu.edu'),
-- ('c3','twitter','r1','p1@jmu.edu'),
--('c4','facebook','r1','p3@jmu.edu')

--q2.4
--insert into enroll(s_email,c_number)
--values('s1@jmu.edu','c1'),
--('s2@jmu.edu','c1'),
--('s3@jmu.edu','c1'),
--('s4@jmu.edu','c2'),
--('s2@jmu.edu','c3'),
--('s3@jmu.edu','c3');

--q2.5 changes added above ^, we have to modify the professor table first, because the course table utilizes data from the professor table, such as professor email and professor name
--q2.6 we need to update the course table first because if we do professor table first, it will still show p1 in course table
--update course
--set p_email = 'p3@jmu.edu'
--where p_email = 'p1@jmu.edu';

--delete from professor
--where p_email = 'p1@jmu.edu'

--2.7
--select * from enroll
--2.8
select c_number,count(*) as num_student
from enroll
group by c_number
order by num_student desc
limit 1

--2.9
select professor.p_name, course.c_name
from professor
inner join course
on professor.p_email = course.p_email

--2.10
select professor.p_name, COUNT(course.c_number) AS num_courses_taught
from professor
inner join course on professor.p_email = course.p_email
group by professor.p_name
order by num_courses_taught desc
limit 1;
