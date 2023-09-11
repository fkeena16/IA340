select * from student

--q2.1
insert into student(s_email,s_name,major)
values('s1@jmu.edu','s1','IA');
values('s2@jmu.edu','s2','IA');
values('s3@jmu.edu','s3','ISAT');
values('s4@jmu.edu','s4','ISAT')

--q2.2
insert into professor(p_email,p_name,office)
values('p1@jmu.edu','p1','o1');
values('p2@jmu.edu','p2','o2')

--q2.3
insert into course(c_number,c_name,room,p_email)
values('c1','postgresql','r1','p1@jmu.edu');
values('c2','mongodb','r2','p2@jmu.edu');
values('c3','twitter','r1','p1@jmu.edu')

--q2.4
insert into enroll(s_email,c_number)
values('s1@jmu.edu','c1'),
values('s2@jmu.edu','c1'),
values('s3@jmu.edu','c1'),
values('s4@jmu.edu','c2'),
values('s2@jmu.edu','c3'),
values('s3@jmu.edu','c3')
