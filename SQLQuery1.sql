create database School;
create table Student
(
   RollNumber varchar(10) primary key,
   Name varchar(25) not null,
   FatherName varchar(25) not null,
   Address varchar(max) not null,
   Gender bit,
   PhoneNumber varchar(11) not null
);
select * from Student;
insert into Student (RollNumber, Name, FatherName, Address, Gender, PhoneNumber) values ('01','Ramsha','Nadeem','North Karachi','1','03342954361')
insert into Student (RollNumber, Name, FatherName, Address, Gender, PhoneNumber) values ('02','Zain','Uddin','North ','0','03342954561')
insert into Student (RollNumber, Name, FatherName, Address, Gender, PhoneNumber) values ('03','Hassam','Uddin','nazimabad','0','03342954364')
insert into Student (RollNumber, Name, FatherName, Address, Gender, PhoneNumber) values ('04','Saba','sabir','Malir','1','03142954361')
insert into Student (RollNumber, Name, FatherName, Address, Gender, PhoneNumber) values ('05','jaweria','fatima','FB Area','1','03348854361')


create table Result20
(
  RollNumber varchar(10) primary key,
  PassingYear int not null,
  Grades varchar(10) not null,
  constraint FK_Result20_Student Foreign Key (RollNumber) References  Student(RollNumber)
);
 insert into Result20 (RollNumber,PassingYear,Grades) values ('01',2020,'A+')
insert into Result20 (RollNumber,PassingYear,Grades) values ('02',2020,'A+')
insert into Result20 (RollNumber,PassingYear,Grades) values ('03',2020,'A')
insert into Result20 (RollNumber,PassingYear,Grades) values ('04',2020,'C')
insert into Result20 (RollNumber,PassingYear,Grades) values ('05',2020,'B')
select * from Result20;


create table TeachersInfo
(

  TeacherId varchar(10) primary key,
  TeacherName varchar(25) not null,
  Gender varchar(20) not null,
  Subject varchar(20) not null,
  Status varchar(20) not null,
  ContactNumber int not null ,
  constraint  unique_TeacherInfo  unique (ContactNumber)

)
select * from TeachersInfo
insert into TeachersInfo (TeacherId,TeacherName,Gender,Subject,Status,ContactNumber) values ('001','Shamim','Female','Mathematics','Permanant Faculty',01358444556)
insert into TeachersInfo (TeacherId,TeacherName,Gender,Subject,Status,ContactNumber) values ('002','Abbas','Male','Physics','Permanant Faculty',0334490956)
insert into TeachersInfo (TeacherId,TeacherName,Gender,Subject,Status,ContactNumber) values ('003','Sadiq','Male','English','Visiting Faculty',0218387333)
insert into TeachersInfo (TeacherId,TeacherName,Gender,Subject,Status,ContactNumber) values ('004','Samreen','Female','Urdu','Visiting Faculty',0664296556)
insert into TeachersInfo (TeacherId,TeacherName,Gender,Subject,Status,ContactNumber) values ('005','Ramisha','Female','Automata','Permanant Faculty',0334296556)

create table SalaryDetails(
  TeacherId varchar(10) primary key,
  AccountNumber int not null,
  Salary int not null,
  constraint  unique_SalaryDetails  unique (AccountNumber),
  
  constraint  Fk_SalaryDetails_TeachersInfo Foreign Key (TeacherId) References  TeachersInfo (TeacherId)
)
Select * From SalaryDetails
 insert into  SalaryDetails (TeacherId,AccountNumber,Salary) values ('001','1222',15000)
  insert into  SalaryDetails (TeacherId,AccountNumber,Salary) values ('002','1223',14000)
   insert into  SalaryDetails (TeacherId,AccountNumber,Salary) values ('003','1224',1000)
    insert into  SalaryDetails (TeacherId,AccountNumber,Salary) values ('004','1225',8000)
	 insert into  SalaryDetails (TeacherId,AccountNumber,Salary) values ('005','1226',16000)

	 select * from Student s
	 left join Result20 r
	 on s.RollNumber = r.RollNumber

	  select * from TeachersInfo t
	 left join SalaryDetails sa
	 on t.TeacherId = sa.TeacherId