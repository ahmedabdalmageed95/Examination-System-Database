--___________________________________________________________
create proc  ProcSelectStudentAccordingtoDepartment @dno int
as
select*from student where dno=@dno

exec ProcSelectStudentAccordingtoDepartment 1
-------------------------------------------------------------
create proc ProcSelectStudentGrades @sid int
as
Select [Fname]+' '+[Lname] as [Name],grade,Cname as [Course Name]
from student , [student-study-course] ,Course
where student.sid=[student-study-course].sid and [student-study-course].sid =@sid and Course.Cid = [Student-Study-Course].Cid

exec ProcSelectStudentGrades 1

-------------------------------------------------------------
create proc SelectInstructorCourse @iid int
as
select cname,count(sc.sid ) from course c,[student-study-course] sc where iid=@iid and  sc.cid=c.cid
group by Cname

exec SelectInstructorCourse 2
select * from course
select * from Student
select * from [Student-Study-Course]
insert into [Student-Study-Course] values(2,3,4)
---------------------------------------------------------------
create proc ProcSelectCourseTopics @cid int
as
Select Topic.* from topic where cid=@cid

exec ProcSelectCourseTopics 1
----------------------------------------------------------------------
Create proc SelectExamQuestions @eid int
as
select q.* from question q,[exam-contain-question] ecq where q.qid=ecq.qid and eid=@eid

exec SelectExamQuestions 13
-----------------------------------------------------------------------
Create proc SelectStudentAnswers @eid int ,@sid int
as
select q.*,a.Answer from Question q,[answer in] a where q.qid=a.qid and eid=@eid and sid=@sid

exec SelectStudentAnswers 5,1
---------------------------------------------------------------------------------------