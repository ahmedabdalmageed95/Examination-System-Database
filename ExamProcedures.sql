USE [Examination ]
GO
/****** Object:  StoredProcedure [dbo].[procExamGeneration]    Script Date: 07/01/2019 03:08:23 ã ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[procExamGeneration] @numberTF int, @numberMCQ int, @topicName nvarchar(30),@duration int,@coursID int
as
--1)select random 3 question of type boolean
select top(@numberTF) Question.* into #booleanTable
from Question,Topic
where topic.Tid = Question.Tid AND topic.Name=@topicName AND Question.Type='TF'
order by newid()
--2)select random 7 question of type choose
select top(@numberMCQ) Question.* into #chooseTable
from Question,Topic
where topic.Tid = Question.Tid AND topic.Name=@topicName AND Question.Type='MCQ'
--3)collect all questions in one table
 select * into #tempTable
 from #booleanTable 

 insert into #tempTable
 select * from #chooseTable 
 
 --4)summation of all grades for this exam
 declare  @sumGradeselect int
 select  @sumGradeselect= sum(#tempTable.Grade)
 from #tempTable
 --5)insert new exam
insert into Exam values(@sumGradeselect,@duration,@coursID)
--------------------------------------------------------------
--6)get cuurent exam id
declare @CurrentIdExam int
select @CurrentIdExam=max(Exam.Eid) from Exam
--7)cursor to get question id and insert into [Exam-Contain-Question] qid,@CurrentIdExam
declare  questionCursor cursor
for select #tempTable.Qid from #tempTable
declare @qid int
open questionCursor
fetch questionCursor into @qid
begin
		while @@FETCH_STATUS=0
			begin
			insert into [Exam-Contain-Question] values(@CurrentIdExam,@qid)
		    fetch questionCursor into @qid
			end
end
close questionCursor
--end of procedure
--___________________________________________________________________
--________________________________________________________________________________________________________________________
USE [Examination ]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Student_Answer_Question]    Script Date: 07/01/2019 01:58:54 ã ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_Student_Answer_Question] @sid int,@eid int,@sln1 varchar(200),@sln2 varchar(200),@sln3 varchar(200),@sln4 varchar(200),@sln5 varchar(200),@sln6 varchar(200),@sln7 varchar(200),@sln8 varchar(200),@sln9 varchar(200),@sln10 varchar(200)
as
declare @qids table(qid int)
insert into @qids 
select [Exam-Contain-Question].qid from [Exam-Contain-Question],Question where eid=@eid and question.qid=[Exam-Contain-Question].qid order by Type,[Exam-Contain-Question].Qid

declare s_cur cursor
	for select *from @qids
	for read only  --update

declare @ctr int =1;
declare @qid int
open s_cur 
fetch s_cur into @qid
begin
	While @@fetch_status=0  --returns 0 success -- 1 failed  --2 no more rows to fetch
	begin
		if @ctr=1
		insert into[Answer In] values (@sid,@eid,@qid,@sln1)
		else if @ctr=2
		insert into[Answer In] values (@sid,@eid,@qid,@sln2)
		else if @ctr=3
		insert into[Answer In] values (@sid,@eid,@qid,@sln3)
		else if @ctr=4
		insert into[Answer In] values (@sid,@eid,@qid,@sln4)
		else if @ctr=5
		insert into[Answer In] values (@sid,@eid,@qid,@sln5)
		else if @ctr=6
		insert into[Answer In] values (@sid,@eid,@qid,@sln6)
			else if @ctr=7
		insert into[Answer In] values (@sid,@eid,@qid,@sln7)
		else if @ctr=8
		insert into[Answer In] values (@sid,@eid,@qid,@sln8)
		else if @ctr=9
		insert into[Answer In] values (@sid,@eid,@qid,@sln9)
		else if @ctr=10
		insert into[Answer In] values (@sid,@eid,@qid,@sln10)
		fetch s_cur into @qid
		set @ctr=@ctr+1
	end
end
close s_cur
deallocate s_cur
--________________________________________________________________________________________________________________
USE [Examination ]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Exam_Correction]    Script Date: 07/01/2019 01:59:31 ã ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_Exam_Correction] @sid int ,@eid int
as
declare @total_grade int;
declare @std_grade int;
select @total_grade=grade from Exam where eid=@eid

select @std_grade=sum(Q.Grade)from Question Q,[Answer In] A where q.Qid=A.Qid and
eid =@eid and sid=@sid and q.Answer=a.Answer;

declare @grade as float;
set @grade=(convert (decimal,(@std_grade))/convert(decimal ,@total_grade)*100);

insert into Student_Take_Exam values(@sid,@eid,@grade)
