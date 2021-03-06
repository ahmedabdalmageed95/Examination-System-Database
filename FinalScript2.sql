USE [master]
GO
/****** Object:  Database [Examination ]    Script Date: 07/01/2019 03:39:12 م ******/
CREATE DATABASE [Examination ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Examination', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Examination .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Examination _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Examination _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Examination ] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Examination ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Examination ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Examination ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Examination ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Examination ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Examination ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Examination ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Examination ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Examination ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Examination ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Examination ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Examination ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Examination ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Examination ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Examination ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Examination ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Examination ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Examination ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Examination ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Examination ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Examination ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Examination ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Examination ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Examination ] SET RECOVERY FULL 
GO
ALTER DATABASE [Examination ] SET  MULTI_USER 
GO
ALTER DATABASE [Examination ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Examination ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Examination ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Examination ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Examination ] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Examination ', N'ON'
GO
ALTER DATABASE [Examination ] SET QUERY_STORE = OFF
GO
USE [Examination ]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Examination ]
GO
/****** Object:  Table [dbo].[Answer In]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer In](
	[Sid] [int] NOT NULL,
	[Eid] [int] NOT NULL,
	[Qid] [int] NOT NULL,
	[Answer] [varchar](200) NULL,
 CONSTRAINT [PK_Answer In] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC,
	[Eid] ASC,
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Answer I__B474AEC2E0768342] UNIQUE NONCLUSTERED 
(
	[Sid] ASC,
	[Qid] ASC,
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Choice]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choice](
	[Qid] [int] NOT NULL,
	[Choice] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED 
(
	[Qid] ASC,
	[Choice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Iid] [int] NOT NULL,
 CONSTRAINT [PK_Course_1] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Dno] [int] IDENTITY(1,1) NOT NULL,
	[Dname] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Dno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exam]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [int] NULL,
	[Duration] [int] NULL,
	[Cid] [int] NOT NULL,
 CONSTRAINT [PK_Exam_1] PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exam-Contain-Question]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam-Contain-Question](
	[Eid] [int] NOT NULL,
	[Qid] [int] NOT NULL,
 CONSTRAINT [PK_Exam-Contain-Question] PRIMARY KEY CLUSTERED 
(
	[Eid] ASC,
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Iid] [int] IDENTITY(1,1) NOT NULL,
	[Degree] [varchar](20) NULL,
	[Fname] [varchar](20) NULL,
	[Lname] [varchar](20) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Iid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Qid] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NULL,
	[Question] [varchar](255) NULL,
	[Answer] [varchar](200) NULL,
	[Grade] [int] NULL,
	[Tid] [int] NOT NULL,
 CONSTRAINT [PK_Question_1] PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](20) NULL,
	[Lname] [varchar](20) NULL,
	[Gender] [varchar](10) NULL,
	[Adress] [varchar](255) NULL,
	[Phone] [int] NULL,
	[Bdate] [date] NULL,
	[Dno] [int] NOT NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student_Take_Exam]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Take_Exam](
	[Sid] [int] NOT NULL,
	[Eid] [int] NOT NULL,
	[St_grade] [int] NULL,
 CONSTRAINT [PK_Student_Take_Exam] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC,
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student-Study-Course]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student-Study-Course](
	[Sid] [int] NOT NULL,
	[Cid] [int] NOT NULL,
	[grade] [int] NULL,
 CONSTRAINT [PK_Student-Study-Course] PRIMARY KEY CLUSTERED 
(
	[Sid] ASC,
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Topic]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Cid] [int] NOT NULL,
 CONSTRAINT [PK_Topic_1] PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Answer In]  WITH CHECK ADD  CONSTRAINT [FK_Answer In_Exam] FOREIGN KEY([Eid])
REFERENCES [dbo].[Exam] ([Eid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer In] CHECK CONSTRAINT [FK_Answer In_Exam]
GO
ALTER TABLE [dbo].[Answer In]  WITH CHECK ADD  CONSTRAINT [FK_Answer In_Question] FOREIGN KEY([Qid])
REFERENCES [dbo].[Question] ([Qid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer In] CHECK CONSTRAINT [FK_Answer In_Question]
GO
ALTER TABLE [dbo].[Answer In]  WITH CHECK ADD  CONSTRAINT [FK_Answer In_Student] FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer In] CHECK CONSTRAINT [FK_Answer In_Student]
GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD  CONSTRAINT [FK_Choice_Question] FOREIGN KEY([Qid])
REFERENCES [dbo].[Question] ([Qid])
GO
ALTER TABLE [dbo].[Choice] CHECK CONSTRAINT [FK_Choice_Question]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([Iid])
REFERENCES [dbo].[Instructor] ([Iid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Course] FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Course]
GO
ALTER TABLE [dbo].[Exam-Contain-Question]  WITH CHECK ADD  CONSTRAINT [FK_Exam-Contain-Question_Question] FOREIGN KEY([Qid])
REFERENCES [dbo].[Question] ([Qid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam-Contain-Question] CHECK CONSTRAINT [FK_Exam-Contain-Question_Question]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Topic] FOREIGN KEY([Tid])
REFERENCES [dbo].[Topic] ([Tid])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Topic]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([Dno])
REFERENCES [dbo].[Department] ([Dno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[Student_Take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Student_Take_Exam_Exam] FOREIGN KEY([Eid])
REFERENCES [dbo].[Exam] ([Eid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student_Take_Exam] CHECK CONSTRAINT [FK_Student_Take_Exam_Exam]
GO
ALTER TABLE [dbo].[Student_Take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Student_Take_Exam_Student] FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student_Take_Exam] CHECK CONSTRAINT [FK_Student_Take_Exam_Student]
GO
ALTER TABLE [dbo].[Student-Study-Course]  WITH CHECK ADD  CONSTRAINT [FK_Student-Study-Course_Course] FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student-Study-Course] CHECK CONSTRAINT [FK_Student-Study-Course_Course]
GO
ALTER TABLE [dbo].[Student-Study-Course]  WITH CHECK ADD  CONSTRAINT [FK_Student-Study-Course_Student] FOREIGN KEY([Sid])
REFERENCES [dbo].[Student] ([Sid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student-Study-Course] CHECK CONSTRAINT [FK_Student-Study-Course_Student]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Course] FOREIGN KEY([Cid])
REFERENCES [dbo].[Course] ([Cid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Course]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteDepartment] @Dno int
as
delete from Department
where Dno=@Dno

GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteStudent] @id int
as
delete from Student
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudentsCourses]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[DeleteStudentsCourses] @Sid int,@Cid int
as
delete from [Student-Study-Course]
where Sid=@Sid and Cid=@Cid
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertDepartment] @Dname varchar(255)
as
insert into Department (Dname)
values (@Dname)

GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertStudent] @Fname varchar(20),@Lname varchar(20),@Gender varchar(20),@Address varchar(255),@Phone int,@Bdate date,@Dno int
as
INSERT INTO Student (Fname, Lname, Gender, Adress, Phone, Bdate, Dno)
VALUES(@Fname,@Lname,@Gender,@Address,@Phone,@Bdate,@Dno)

GO
/****** Object:  StoredProcedure [dbo].[InsertStudentsCourses]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[InsertStudentsCourses] @Sid int,@Cid int,@grade int
as
insert into [Student-Study-Course](Sid,Cid,grade)
values(@Sid,@Cid,@grade)
GO
/****** Object:  StoredProcedure [dbo].[Proc_Exam_Correction]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_Exam_Correction] @sid int ,@eid int
as
declare @total_grade int;
declare @std_grade int;
select @total_grade=grade from Exam where eid=@eid

select @std_grade=sum(Q.Grade)from Question Q,[Answer In] A where q.Qid=A.Qid and
eid =@eid and sid=@sid and q.Answer=a.Answer;

declare @grade as float;
set @grade=(convert (decimal,(@std_grade))/convert(decimal ,@total_grade)*100);

insert into Student_Take_Exam values(@sid,@eid,@grade)

GO
/****** Object:  StoredProcedure [dbo].[Proc_Student_Answer_Question]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc_Student_Answer_Question] @sid int,@eid int,@sln1 varchar(200),@sln2 varchar(200),@sln3 varchar(200),@sln4 varchar(200),@sln5 varchar(200),@sln6 varchar(200),@sln7 varchar(200),@sln8 varchar(200),@sln9 varchar(200),@sln10 varchar(200)
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
GO
/****** Object:  StoredProcedure [dbo].[procAnswerinDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procAnswerinDelete]  @sid int,@eid int ,@qid int
as
delete from  [Answer In] where sid= @sid and qid=@qid and eid=@eid
GO
/****** Object:  StoredProcedure [dbo].[procAnswerinInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procAnswerinInsert] @sid int,@eid int,@qid int,@answer varchar(50)
as
insert into[answer in] values(@sid,@eid,@qid,@answer)
--exec insertanswerin 1,3,1,'f'
GO
/****** Object:  StoredProcedure [dbo].[procAnswerInSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[procAnswerInSelect]
as
Select*from [Answer In]
GO
/****** Object:  StoredProcedure [dbo].[procAnswerinUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procAnswerinUpdate] @sid int,@eid int,@qid int,@answer varchar(50)
as

update [answer in] set answer=@answer where sid=@sid and qid=@qid and eid=@eid

GO
/****** Object:  StoredProcedure [dbo].[procChoiceDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procChoiceDelete] @id int
as
delete from Choice
where Choice.Qid=@id
GO
/****** Object:  StoredProcedure [dbo].[procChoiceInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procChoiceInsert] @Qid int ,@Choice nvarchar(MAX)
as
insert into Choice values (@Qid,@Choice)
GO
/****** Object:  StoredProcedure [dbo].[procChoiceSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procChoiceSelect]
as
select * from Choice
GO
/****** Object:  StoredProcedure [dbo].[procChoiceUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procChoiceUpdate] @id int, @Choice varchar(MAX)
as
update Choice
set Choice.Choice=@Choice
where Choice.Qid=@id
GO
/****** Object:  StoredProcedure [dbo].[procCorrectExam]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procCorrectExam] @studId int,@examId int
as
declare @stdGrades int
select @stdGrades= sum(q.Grade)
from Question q,[Answer In] AI
where q.Qid=AI.Qid and AI.Eid=@examId and  AI.Sid=@studId and q.Answer like AI.Answer
insert into Student_Take_Exam values(@studId,@examId,@stdGrades)

GO
/****** Object:  StoredProcedure [dbo].[procCourseDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procCourseDelete] @cid int
as
delete from Course
where Course.Cid=@cid
GO
/****** Object:  StoredProcedure [dbo].[procCourseInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procCourseInsert] @cName nvarchar(20),@duration nvarchar(20),@InId int
as
insert into Course 
values  (@cName,@duration,@InId)
GO
/****** Object:  StoredProcedure [dbo].[procCourseSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procCourseSelect]
as
select * from Course
GO
/****** Object:  StoredProcedure [dbo].[procCourseUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procCourseUpdate] @cid int, @cName nvarchar(20),@duration nvarchar(20),@InId int
as
update Course 
set Cname=@cName,
Duration=@duration,
Iid=@InId
where Cid=@cid
GO
/****** Object:  StoredProcedure [dbo].[procDisplayExam]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procDisplayExam] @examId int
as
select E.Eid,E.Duration,E.Grade,q.Question,q.Answer,q.Qid,c.Choice, t.Name,q.Tid,cc.Cname
from Question q,[Exam-Contain-Question] ECQ,Exam E,Choice c,Topic t,Course cc
where q.Qid=c.Qid and ECQ.Eid=E.Eid and ECQ.Qid=q.Qid and t.Tid=q.Tid and cc.Cid=t.Cid and E.Eid=@examId

GO
/****** Object:  StoredProcedure [dbo].[procExamContainQuestionInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procExamContainQuestionInsert] @eid int,@qid int
as
insert into[exam-contain-question] values (@eid,@qid)
GO
/****** Object:  StoredProcedure [dbo].[procExamContainQuestionSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[procExamContainQuestionSelect]
as
Select*from [Exam-Contain-Question]
GO
/****** Object:  StoredProcedure [dbo].[procExamContainQuestionUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[procExamContainQuestionUpdate] @eid int ,@qid int
as
update [exam-contain-question] set eid = @eid where qid=@qid --to change the question in the exam you need to change eid 
--opposite leads to setting all question in the exam with the same question

GO
/****** Object:  StoredProcedure [dbo].[procExamContQuestionDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[procExamContQuestionDelete] @eid int,@qid int
as
Delete from [Exam-Contain-Question] where eid=@eid and qid=@qid
--exec DeleteFromExamContQuestion 2, 2
GO
/****** Object:  StoredProcedure [dbo].[procExamDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[procExamDelete] @id int
as
delete from exam where eid=@id
GO
/****** Object:  StoredProcedure [dbo].[procExamGeneration]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procExamGeneration] @numberTF int, @numberMCQ int, @topicName nvarchar(30),@duration int,@coursID int
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

GO
/****** Object:  StoredProcedure [dbo].[procExamInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procExamInsert]  @grade int ,@duration int ,@cid int
as 
insert into exam values  (@grade, @duration, @cid)
GO
/****** Object:  StoredProcedure [dbo].[procExamSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procExamSelect]
as
Select*from exam;
GO
/****** Object:  StoredProcedure [dbo].[procExamUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procExamUpdate] @eid int , @grade int ,@duration int ,@cid int
as
update exam set grade=@grade,duration=@duration,cid=@cid where eid=@eid

GO
/****** Object:  StoredProcedure [dbo].[procInstructorDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procInstructorDelete] @id int
as
delete from Instructor
where Instructor.Iid=@id
GO
/****** Object:  StoredProcedure [dbo].[procInstructorInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procInstructorInsert] @degree nvarchar(20),@fname nvarchar(20),@lname nvarchar(20)
as
insert into Instructor
values(@degree,@fname,@lname);
GO
/****** Object:  StoredProcedure [dbo].[procInstructorSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procInstructorSelect]
as
select * from Instructor
GO
/****** Object:  StoredProcedure [dbo].[procInstructorUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procInstructorUpdate] @id int, @degree varchar(20),@fname varchar(20),@lname varchar(20)
as
update Instructor set Instructor.Degree=@degree,Instructor.Fname=@fname,Instructor.Lname=@lname
where Instructor.Iid=@id
GO
/****** Object:  StoredProcedure [dbo].[procQuestionDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procQuestionDelete] @id int
as
delete from Question
where Question.Qid=@id
GO
/****** Object:  StoredProcedure [dbo].[procQuestionInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procQuestionInsert]  @Type nvarchar(20) ,@Questions varchar(255) ,@Answer varchar(MAX) ,@Grade int ,@Tid int
as
insert into Question values (@Type,@Questions,@Answer,@Grade,@Tid)

GO
/****** Object:  StoredProcedure [dbo].[procQuestionSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procQuestionSelect]
as
select * from Question
GO
/****** Object:  StoredProcedure [dbo].[procQuestionUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procQuestionUpdate] @id int, @Type varchar(20),@Question varchar(255),@Answer varchar(MAX),@Grade int,@Tid int
as
update Question
set Question.Type=@Type,Question.Question=@Question,Question.Answer=@Answer,Question.Grade=@Grade,Question.Tid=@Tid
where Question.Qid=@id
GO
/****** Object:  StoredProcedure [dbo].[ProcSelectCourseTopics]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ProcSelectCourseTopics] @cid int
as
Select Topic.* from topic where cid=@cid
GO
/****** Object:  StoredProcedure [dbo].[ProcSelectStudentAccordingtoDepartment]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[ProcSelectStudentAccordingtoDepartment] @dno int
as
select*from student where dno=@dno
GO
/****** Object:  StoredProcedure [dbo].[ProcSelectStudentGrades]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProcSelectStudentGrades] @sid int
as
Select [Fname]+' '+[Lname] as [Name],grade,Cname as [Course Name]
from student , [student-study-course] ,Course
where student.sid=[student-study-course].sid and [student-study-course].sid =@sid and Course.Cid = [Student-Study-Course].Cid

GO
/****** Object:  StoredProcedure [dbo].[procStudentTakeeExamUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procStudentTakeeExamUpdate] @sid int ,@eid int ,@st_grade int
as
update student_take_exam set  st_grade=@st_grade where eid=@eid and sid=@sid
--exec updatestudenttakeexam 1,1,5
GO
/****** Object:  StoredProcedure [dbo].[procStudentTakeExamDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[procStudentTakeExamDelete] @sid int,@eid int
as
delete from Student_take_exam where sid=@sid and eid=@eid
GO
/****** Object:  StoredProcedure [dbo].[procStudentTakeExamInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procStudentTakeExamInsert] @sid int,@eid int ,@st_grade int
as
insert into student_take_exam values(@sid,@eid,@st_grade)
GO
/****** Object:  StoredProcedure [dbo].[procStudentTakeExamSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc   [dbo].[procStudentTakeExamSelect]
as
Select*from Student_take_exam
GO
/****** Object:  StoredProcedure [dbo].[procTopicDelete]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procTopicDelete] @id int
as
delete from Topic
where Topic.Tid=@id
GO
/****** Object:  StoredProcedure [dbo].[procTopicInsert]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procTopicInsert] @name nvarchar(20),@cid int
as
insert into Topic values (@name,@cid)
GO
/****** Object:  StoredProcedure [dbo].[procTopicSelect]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[procTopicSelect]
as
select * from Topic
GO
/****** Object:  StoredProcedure [dbo].[procTopicUpdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[procTopicUpdate] @id int, @name nvarchar(20),@cid int
as
update Topic
set Topic.Name=@name,Topic.Cid=@cid
where Topic.Tid=@id
GO
/****** Object:  StoredProcedure [dbo].[SelectAllDepartments]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectAllDepartments]
as
select * from Department
GO
/****** Object:  StoredProcedure [dbo].[SelectAllStudents]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectAllStudents]
as
select * from Student
GO
/****** Object:  StoredProcedure [dbo].[SelectExamQuestions]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SelectExamQuestions] @eid int
as
select q.* from question q,[exam-contain-question] ecq where q.qid=ecq.qid and eid=@eid
GO
/****** Object:  StoredProcedure [dbo].[SelectInstructorCourse]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectInstructorCourse] @iid int
as
select cname,count(sc.sid ) from course c,[student-study-course] sc where iid=@iid and  sc.cid=c.cid
group by Cname
GO
/****** Object:  StoredProcedure [dbo].[SelectStudentAnswers]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SelectStudentAnswers] @eid int ,@sid int
as
select q.*,a.Answer from Question q,[answer in] a where q.qid=a.qid and eid=@eid and sid=@sid
GO
/****** Object:  StoredProcedure [dbo].[SelectStudentsCourses]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectStudentsCourses]
as
select * from [Student-Study-Course]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartmentName]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateDepartmentName] @newName varchar(255),@Dno int
as
update Department
set Dname = @newName
where Dno = @Dno
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentAddress]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[UpdateStudentAddress] @Address varchar(255),@id int
as
update Student
set Adress=@Address
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentBdate]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStudentBdate] @Bdate date,@id int
as
update Student
set Bdate=@Bdate
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentDno]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStudentDno] @Dno int,@id int
as
update Student
set Dno=@Dno
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentFname]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStudentFname] @Fname varchar(20),@id int
as
update Student
set Fname=@Fname
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentGender]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStudentGender] @Gender varchar(20),@id int
as
update Student
set Gender=@Gender
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentLname]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStudentLname] @Lname varchar(20),@id int
as
update Student
set Lname=@Lname
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentPhone]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateStudentPhone] @Phone int,@id int
as
update Student
set Phone=@Phone
where Sid=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentsCourses]    Script Date: 07/01/2019 03:39:12 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateStudentsCourses] @Sid int,@Cid int,@grade int
as
update [Student-Study-Course]
set Cid=@Cid,grade=@grade
where Sid = @Sid and Cid=@Cid
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'student answer exam ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Answer In'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'choices for each quesion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Choice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Course Information such as Course Name and Duration for each course and instructor id that teach  this course' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Department Information ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Exam Information such as Duration and Grade and Course id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'this table Descripe exam and all question that belong it' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Exam-Contain-Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instructor Information such as Name Degree' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Instructor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'question table that have question and type and answer for each question moreOver grade ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N's' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'this table for student  take exam and grade for each exam ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student_Take_Exam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'this table for student that take course and grade for each coures' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student-Study-Course'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Topic Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Topic', @level2type=N'CONSTRAINT',@level2name=N'PK_Topic_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table for topics for each courses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Topic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'course id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Topic', @level2type=N'CONSTRAINT',@level2name=N'FK_Topic_Course'
GO
USE [master]
GO
ALTER DATABASE [Examination ] SET  READ_WRITE 
GO
