/*Instructor*/
/*1 select*/
create proc procInstructorSelect
as
select * from Instructor

exec procInstructorSelect;
/*________________________________________________*/
/*2 delete*/
create proc procInstructorDelete @id int
as
delete from Instructor
where Instructor.Iid=@id
 
exec procInstructorDelete 3
/*________________________________________________*/
/*3 insert*/
create proc procInstructorInsert @degree nvarchar(20),@fname nvarchar(20),@lname nvarchar(20)
as
insert into Instructor
values(@degree,@fname,@lname);


exec procInstructorInsert 'prof','zika','rifa'
/*________________________________________________*/
/*4 Update*/
create proc procInstructorUpdate @id int, @degree varchar(20),@fname varchar(20),@lname varchar(20)
as
update Instructor set Instructor.Degree=@degree,Instructor.Fname=@fname,Instructor.Lname=@lname
where Instructor.Iid=@id

exec procInstructorUpdate 3,'assis','koko','husien'
/*________________________________________________*/
/*Topic*/
/*1 select*/
create proc procTopicSelect
as
select * from Topic
/*________________________________________________*/
/*2 delete*/
create proc procTopicDelete @id int
as
delete from Topic
where Topic.Tid=@id

exec procTopicDelete 4
/*________________________________________________*/
/*3 Insert*/
create proc procTopicInsert @name nvarchar(20),@cid int
as
insert into Topic values (@name,@cid)

exec procTopicInsert '.net',2
exec procTopicSelect
/*________________________________________________*/
/*4 Update*/
create proc procTopicUpdate @id int, @name nvarchar(20),@cid int
as
update Topic
set Topic.Name=@name,Topic.Cid=@cid
where Topic.Tid=@id

exec procTopicUpdate 3,'fullStack',1
exec procTopicSelect
/*________________________________________________*/
/*Course*/
/*1 select*/
create proc procCourseSelect
as
select * from Course
exec procCourseSelect
/*______________________________________________________*/
/*2 delete*/
create proc procCourseDelete @cid int
as
delete from Course
where Course.Cid=@cid

exec procCourseDelete 3
exec procCourseSelect
/*______________________________________________________*/
/*3 Insert*/
create proc procCourseInsert @cName nvarchar(20),@duration nvarchar(20),@InId int
as
insert into Course 
values  (@cName,@duration,@InId)

exec procCourseInsert 'wab','6 month',1
exec procCourseSelect
/*______________________________________________________*/
/*4 Update*/
create proc procCourseUpdate @cid int, @cName nvarchar(20),@duration nvarchar(20),@InId int
as
update Course 
set Cname=@cName,
Duration=@duration,
Iid=@InId
where Cid=@cid

exec procCourseUpdate 3,'wabbb','909 month',2
exec procCourseSelect
/*___________________________________________________________________________________________________________*/

--********************************************************--
--*****************---Department---***********************--
--********************************************************--

create proc SelectAllDepartments
as
select * from Department

--SelectAllDepartments

create proc InsertDepartment @Dname varchar(255)
as
insert into Department (Dname)
values (@Dname)

--InsertDepartment 'it'

create proc UpdateDepartmentName @newName varchar(255),@Dno int
as
update Department
set Dname = @newName
where Dno = @Dno

--UpdateDepartmentName 'ITI',1

create proc DeleteDepartment @Dno int
as
delete from Department
where Dno=@Dno

--DeleteDepartment 1
--------------------------------------------------------

--********************************************************--
--******************---Student---*************************--
--********************************************************--

create proc SelectAllStudents
as
select * from Student

--SelectAllStudents

create proc InsertStudent @Fname varchar(20),@Lname varchar(20),@Gender varchar(20),@Address varchar(255),@Phone int,@Bdate date,@Dno int
as
INSERT INTO Student (Fname, Lname, Gender, Adress, Phone, Bdate, Dno)
VALUES(@Fname,@Lname,@Gender,@Address,@Phone,@Bdate,@Dno)

--InsertStudent Islam,Mohamed,Male,Faisal,01006213292,'11-11-1995',2

create proc UpdateStudentFname @Fname varchar(20),@id int
as
update Student
set Fname=@Fname
where Sid=@id

create proc UpdateStudentLname @Lname varchar(20),@id int
as
update Student
set Lname=@Lname
where Sid=@id

create proc UpdateStudentGender @Gender varchar(20),@id int
as
update Student
set Gender=@Gender
where Sid=@id

create proc UpdateStudentAddress @Address varchar(255),@id int
as
update Student
set Adress=@Address
where Sid=@id

create proc UpdateStudentPhone @Phone int,@id int
as
update Student
set Phone=@Phone
where Sid=@id

create proc UpdateStudentBdate @Bdate date,@id int
as
update Student
set Bdate=@Bdate
where Sid=@id

create proc UpdateStudentDno @Dno int,@id int
as
update Student
set Dno=@Dno
where Sid=@id

--------

create proc DeleteStudent @id int
as
delete from Student
where Sid=@id

--DeleteStudent 1
--------------------------------------------------------

--********************************************************--
--**************---Student_study_course ---***************--
--********************************************************--

create proc SelectStudentsCourses
as
select * from [Student-Study-Course]

--SelectStudentsCourses

create proc InsertStudentsCourses @Sid int,@Cid int,@grade int
as
insert into [Student-Study-Course](Sid,Cid,@grade)
values(@Sid,@Cid)

--InsertStudentsCourses 2,1

create proc UpdateStudentsCourses @Sid int,@Cid int,@grade int
as
update [Student-Study-Course]
set Cid=@Cid,grade=@grade
where Sid = @Sid

--UpdateStudentsCourses 1,2

create proc DeleteStudentsCourses @Sid int,@Cid int
as
delete from [Student-Study-Course]
where Sid=@Sid and Cid=@Cid

--DeleteStudentsCourses 2,2
------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------Select
create proc procExamSelect
as
Select*from exam;

create Proc procExamContainQuestionSelect
as
Select*from [Exam-Contain-Question]

create Proc procAnswerInSelect
as
Select*from [Answer In]


Create proc   procStudentTakeExamSelect
as
Select*from Student_take_exam


--------------------------------------------------------------------------------------------------------- Delete
Create proc procExamDelete @id int
as
delete from exam where eid=@id

--exec procExamDelete 1

Create Proc procExamContQuestionDelete @eid int,@qid int
as
Delete from [Exam-Contain-Question] where eid=@eid and qid=@qid
--exec DeleteFromExamContQuestion 2, 2

create proc procAnswerinDelete  @sid int,@eid int ,@qid int
as
delete from  [Answer In] where sid= @sid and qid=@qid and eid=@eid

--exec DeleteFromAnswerin 1,3,1

Create proc procStudentTakeExamDelete @sid int,@eid int
as
delete from Student_take_exam where sid=@sid and eid=@eid

--exec DeletefromStudent_take_exam 1,3
-------------------------------------------------------------------------------------------------------------------Insert
create proc procExamInsert  @grade int ,@duration int ,@cid int
as 
insert into exam values  (@grade, @duration, @cid)

--exec insertexam 3,10,3,1

create proc procAnswerinInsert @sid int,@eid int,@qid int,@answer varchar(50)
as
insert into[answer in] values(@sid,@eid,@qid,@answer)
--exec insertanswerin 1,3,1,'f'
create proc procStudentTakeExamInsert @sid int,@eid int ,@st_grade int
as
insert into student_take_exam values(@sid,@eid,@st_grade)

--exec insertstudenttakeexam 1,3,10

create proc procExamContainQuestionInsert @eid int,@qid int
as
insert into[exam-contain-question] values (@eid,@qid)

--exec insertexamcontainquestion 3,1
------------------------------------------------------------------------------------------------------------------Update
create proc procExamUpdate @eid int , @grade int ,@duration int ,@cid int
as
update exam set grade=@grade,duration=@duration,cid=@cid where eid=@eid

--exec updateexam 1,15,3,2
create proc procAnswerinUpdate @sid int,@eid int,@qid int,@answer varchar(50)
as

update [answer in] set answer=@answer where sid=@sid and qid=@qid and eid=@eid

--exec updateanswerin 1,1,1,'yes'
create proc  procExamContainQuestionUpdate @eid int ,@qid int
as
update [exam-contain-question] set eid = @eid where qid=@qid --to change the question in the exam you need to change eid 
--opposite leads to setting all question in the exam with the same question

--exec updateexamcontainqustion 2,1
create proc procStudentTakeeExamUpdate @sid int ,@eid int ,@st_grade int
as
update student_take_exam set  st_grade=@st_grade where eid=@eid and sid=@sid
--exec updatestudenttakeexam 1,1,5
----------------------------------------------------------------------------------------------------------------------------
/*question*/
/*1 select*/
alter proc procQuestionSelect
as
select * from Question
/*________________________________________________*/
/*2 delete*/
alter proc procQuestionDelete @id int
as
delete from Question
where Question.Qid=@id

--exec procQuestionDelete 4
/*________________________________________________*/
/*3 Insert*/
alter proc procQuestionInsert @Type nvarchar(20) ,@Question varchar(255) ,@Answer varchar(MAX) ,@Grade int ,@Tid int
as
insert into Question values (@Type,@Question,@Answer,@Grade,@Tid)

--exec procQuestionInsert 'choose','The condition in a WHERE clause can refer to only one value.','B)False',1,1
--exec procQuestionSelect
/*________________________________________________*/
/*4 Update*/
alter proc procQuestionUpdate @id int, @Type varchar(20),@Question varchar(255),@Answer varchar(MAX),@Grade int,@Tid int
as
update Question
set Question.Type=@Type,Question.Question=@Question,Question.Answer=@Answer,Question.Grade=@Grade,Question.Tid=@Tid
where Question.Qid=@id

--exec procQuestionUpdate 6,'choose','The condition in a WHERE clause can refer to only one value.','B)False',2,2
--exec procQuestionSelect
/*________________________________________________*/
/*Choice*/
/*1 select*/
create proc procChoiceSelect
as
select * from Choice
/*________________________________________________*/
/*2 delete*/
create proc procChoiceDelete @id int
as
delete from Choice
where Choice.Qid=@id

exec procChoiceDelete 4
/*________________________________________________*/
/*3 Insert*/
create proc procChoiceInsert @Qid int ,@Choice nvarchar(MAX)
as
insert into Topic values (@Qid,@Choice)

---exec procChoiceInsert 5,'true'
--exec procChoiceSelect
/*________________________________________________*/
/*4 Update*/
create proc procChoiceUpdate @id int, @Choice varchar(MAX)
as
update Choice
set Choice.Choice=@Choice
where Choice.Qid=@id

--exec procChoiceUpdate 5,'A.True B.False'
--exec procChoiceSelect
/*