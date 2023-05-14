
CREATE DATABASE FLEX_;
USE FLEX_;

create table student
(
	rollNUM		varchar(7)	PRIMARY KEY		NOT NULL,
	username		VARCHAR(50),
	_password	VARCHAR(8),
	Sname		VARCHAR(50),
	Fname		VARCHAR(50),
	CNIC		VARCHAR(15),
	Permanent_address VARCHAR(50),
	Present_address	VARCHAR(50),
	Email		VARCHAR(50),
	phone	VARCHAR(20)

);



CREATE TABLE ADMIN_
(
	adminID		varchar(7)			PRIMARY KEY		NOT NULL	,
	username	VARCHAR(50),
	_password	VARCHAR(20),
	Aname		VARCHAR(50)
)

CREATE TABLE SECTION
(
	NAME_ VARCHAR(1) PRIMARY KEY NOT NULL,
	
);




create Table Faculty
(
	Inst_id VARCHAR(10) PRIMARY KEY NOT NULL,
	Inst_Name Varchar(20) not null,
	Inst_username		VARCHAR(50),
	Inst_pass varchar(10),
	Email	VARCHAR(50),
);


CREATE TABLE COURSE
(
	courseID    VARCHAR(8),
	Cname		VARCHAR(50),
	Credit numeric(1),
	Instructor varchar(10) foreign key references faculty(Inst_id),
	Cource_Coordinator varchar(10) foreign key references faculty(Inst_id), 
	Pre_Req varchar(100),
	primary key(courseID, Instructor),
	YEAR_ DATE

);




CREATE TABLE STUDENT_COURSE
(
	rollNUM		varchar(7)	FOREIGN KEY REFERENCES STUDENT(rollNUM),
	courseID    VARCHAR(8)	,
	inst_id varchar(10),
	foreign key(courseID,inst_id) references course(courseID, Instructor),
	sec varchar(1)  foreign key references Section(NAME_),
	grade		VARCHAR(3),
	PRIMARY KEY(rollNUM,courseID,inst_id)
	
);

create table assessments
(
	stu_id varchar(7) foreign key references student(rollNUM),
	course varchar(8),
	inst_id varchar(10),
	foreign key(course,inst_id) references course(courseID, Instructor),
	quiz int check (quiz <=10),
	assignment int check (assignment <=10),
	mids int check (mids <=30),
	final int check (final <=50), 
	total int check(total <=100)

)




select * from student;
select *from COURSE_



SELECT * 
FROM student  
INNER JOIN STUDENT_COURSE A ON student.rollNUM = A.rollNUM
WHERE A.inst_id = 'FAC1';



select distinct a.rollNUM,a.Fname
from student a
inner join STUDENT_COURSE s on a.rollNUM = s.rollNUM
where s.sec ='A'

select a.courseID,a.Cname,a.Credit, s.sec,F.Inst_Name,a.Cource_Coordinator
from COURSE a
inner join STUDENT_COURSE s on a.courseID = s.courseID
INNER JOIN Faculty F ON F.Inst_id = A.Instructor
where s.courseID = 'C5'


-----------------------------------------------------------------------------
--1
create procedure GetCources
as
begin 
	select * from
	COURSE
END

--2
create procedure GetInstructor
as
begin 
	select * from
	Faculty
END


--3
CREATE PROCEDURE AddStudent
    @rollNUM varchar(7),
    @username varchar(50),
    @_password varchar(8),
    @Sname varchar(50),
    @Fname varchar(50),
    @CNIC varchar(15),
    @Permanent_address varchar(50),
    @Present_address varchar(50),
    @Email varchar(50),
    @phone varchar(20)
AS
BEGIN
    INSERT INTO STUDENT (rollNUM, username, _password, Sname, Fname, CNIC, Permanent_address, Present_address, Email, phone)
    VALUES (@rollNUM, @username, @_password, @Sname, @Fname, @CNIC, @Permanent_address, @Present_address, @Email, @phone)
END


CREATE PROCEDURE AddAdmin
	@adminID		varchar(7)	,
	@username	VARCHAR(50),
	@_password	VARCHAR(20),
	@Aname		VARCHAR(50)
as 
begin
	insert into ADMIN_(adminID,username,_password,Aname)
	values(@adminID,@username,@_password,@Aname)
end

--4
CREATE PROCEDURE AddFaculty_Instructor
    @Inst_id varchar(10),
    @Inst_Name varchar(20),
    @Inst_username varchar(50),
    @Inst_pass varchar(10),
    @Email varchar(50)
AS
BEGIN
    INSERT INTO FACULTY (Inst_id, Inst_Name, Inst_username, Inst_pass, Email)
    VALUES (@Inst_id, @Inst_Name, @Inst_username, @Inst_pass, @Email)
END


--5
Create procedure AddCourse
	@courseID varchar(8),
    @Cname varchar(50),
    @Credit numeric(1),
    @Instructor varchar(10),
    @Cource_Coordinator varchar(10),
    @YEAR_ date
AS
BEGIN
    INSERT INTO COURSE_ (courseID, Cname, Credit, Instructor, Cource_Coordinator, YEAR_)
    VALUES (@courseID, @Cname, @Credit, @Instructor, @Cource_Coordinator, @YEAR_)
END

--6
CREATE PROCEDURE addAssessment
    @rollNUM varchar(7),
    @courseID varchar(8),
    @inst_id varchar(10),
    @quiz varchar(3),
    @assignment varchar(3),
    @midterm varchar(3),
    @final varchar(3)
AS
begin
    insert into ASSESSMENT (rollNUM, courseID, inst_id, quiz, assignment, midterm, final)
    VALUES (@rollNUM, @courseID, @inst_id, @quiz, @assignment, @midterm, @final)
END


--7
CREATE PROCEDURE GetAssessmentofCourse
    @courseID varchar(8)
AS
BEGIN
    SELECT *
    FROM ASSESSMENT
    WHERE courseID = @courseID
END



--8
drop procedure AddSection
CREATE PROCEDURE AddSection
	@CourseID VARCHAR(8),
	@Inst_id VARCHAR(10),
	@SectionName VARCHAR(1)
AS
BEGIN

	INSERT INTO student_course (courseID, inst_id, sec) VALUES (@CourseID, @Inst_id, @SectionName)

end



--9
create procedure allocateCourse 
	@CourseID VARCHAR (8), 
	@Instructor VARCHAR (10),
	@Year_ Date
AS
BEGIN 
		UPDATE Course SET Instructor = @Instructor, YEAR_ = @YEAR_ WHERE courseID = @courseID;
		PRINT 'Course ' + @courseID + ' has been assigned to instructor ' + @Instructor;
end

-----------------------------------------------------------------------------------------------------

CREATE TABLE LogfileStudent (
    ID INT PRIMARY KEY IDENTITY,
    TableName VARCHAR(50),
    RecordID INT,
    Operation VARCHAR(50),
    UserID VARCHAR(50),
    Timestamp DATETIME
);
use master
--TRIGGER FOR AUDIT TRAIL FACULTY

CREATE TABLE LogfileFaculty (
    ID INT PRIMARY KEY IDENTITY,
    TableName VARCHAR(50),
    RecordID INT,
    Operation VARCHAR(50),
    UserID VARCHAR(50),
    Timestamp DATETIME
);

drop trigger STUDENT_AUDIT_TRIGGER
CREATE TRIGGER STUDENT_AUDIT_TRIGGER
ON STUDENT
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operation VARCHAR(10)
    IF EXISTS(SELECT * FROM inserted) 
		BEGIN
			IF EXISTS(SELECT * FROM deleted)
			    SET @Operation = 'UPDATE'
			ELSE
				SET @Operation = 'INSERT'
		END
    ELSE
        SET @Operation = 'DELETE'

    INSERT INTO LogfileStudent (TableName, RecordID, Operation, UserID, Timestamp)
    SELECT 'STUDENT', ISNULL(i.rollNUM, d.rollNUM), @Operation, SYSTEM_USER, GETDATE()
    FROM inserted i FULL OUTER JOIN deleted d ON i.rollNUM = d.rollNUM
END



CREATE TRIGGER FACULTY_AUDIT_TRIGGER
ON FACULTY
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operation VARCHAR(10)
    IF EXISTS(SELECT * FROM inserted) 
		BEGIN
			IF EXISTS(SELECT * FROM deleted)
			    SET @Operation = 'UPDATE'
			ELSE
				SET @Operation = 'INSERT'
		END
    ELSE
        SET @Operation = 'DELETE'

    INSERT INTO LogfileFaculty (TableName, RecordID, Operation, UserID, Timestamp)
    SELECT 'FACULTY', ISNULL(i.Inst_id, d.Inst_id), @Operation, SYSTEM_USER, GETDATE()
    FROM inserted i FULL OUTER JOIN deleted d ON i.Inst_id = d.Inst_id
END


update student set Fname = 'Maichel' where rollNUM ='102'
update student set Fname = 'Maichel' where rollNUM ='103'

insert into faculty values
('21', 'Michael Kimyl', 'F_fac21', 'pass21', 'mkimio@example.com');

select * from logfileStudent

CREATE TABLE LogfileAdmin (
    ID INT PRIMARY KEY IDENTITY,
    TableName VARCHAR(50),
    RecordID INT,
    Operation VARCHAR(50),
    UserID VARCHAR(50),
    Timestamp DATETIME
);

CREATE TRIGGER Admin_AUDIT_TRIGGER
ON Admin_
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operation VARCHAR(10)
    IF EXISTS(SELECT * FROM inserted) 
		BEGIN
			IF EXISTS(SELECT * FROM deleted)
			    SET @Operation = 'UPDATE'
			ELSE
				SET @Operation = 'INSERT'
		END
    ELSE
        SET @Operation = 'DELETE'

    INSERT INTO LogfileAdmin (TableName, RecordID, Operation, UserID, Timestamp)
    SELECT 'ADMIN_', ISNULL(i.adminID, d.adminID), @Operation, SYSTEM_USER, GETDATE()
    FROM inserted i FULL OUTER JOIN deleted d ON i.adminID= d.adminID
END


INSERT INTO ADMIN_ VALUES
('25', 'A_admin25', 'pass25', 'SMITH.John Smith');



select *from logfileStudent
select *from logfileadmin
select *from logfilefaculty
