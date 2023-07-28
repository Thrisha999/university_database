create database uni
create table student1(
SID int primary key,
SNAME varchar(50) not null,
DID int not null foreign key references Dept1(DID),
MOBILE varchar(10),
Age int null,
Gender char(1) not null check(Gender='M' or Gender='F'),
Address varchar(30) not null
)
create table Dept1
( 
DID int primary key,
DName varchar(10) not null unique
)
select * from Dept1
select * from student1
insert into Dept1 values(15,'CSSE')
insert into Dept1 values(12,'IT')
insert into Dept1 values(5,'CSE')
insert into Dept1 values(1,'CIVIL')
insert into Dept1 values(03,'AI')
insert into Dept1 values(2,'MECH')
insert into Dept1 values(4,'ECE')
insert into Dept1 values(9,'EIE')
insert into Dept1 values(7,'EEE')

insert into student1 values(3814,'Hruthik',12,null,18,'M','TPT')
insert into student1 values(1502,'Trisha',15,9876543210,19,'F','TPT')
insert into student1 values(1550,'sailaja',15,null,19,'F','TPT')
insert into student1 values(1532,'Gowtham',15,null,20,'M','TPT')
insert into student1 values(1504,'avinash',15,null,20,'M','TPT')
insert into student1 values(562,'uday',15,null,19,'M','TPT')
insert into student1 values(1823,'Deva',15,98763456,17,'F','KDP')
insert into student1 values(9912,'suvarna',15,null,21,'F','NDL')
insert into student1 values(3213,'Bhavya',15,897348965,19,'F','TPT')
insert into student1 values(1678,'saina',15,null,20,'F','CHITOOR')
insert into student1 values(1599,'Rupa',15,null,20,'F','Banglore')
insert into student1 values(9123,'Madhu',1,null,19,'F','KDP')
insert into student1 values(3123,'Anusha',15,56774678,19,'F','TPT')
insert into student1 values(1367,'Amar',12,null,21,'M','HYD')
insert into student1 values(385,'Deepak',10,874567839,21,'M','Banglore')
insert into student1 values(1512,'Chandrahas',15,null,20,'M','MDP')
insert into student1 values(1522,'Lokesh',15,null,19,'M','ANP')
insert into student1 values(1549,'ruchitha',15,237651246,19,'F','Kurnool')
insert into student1 values(7812,'Kumar',5,null,20,'F','TPT')
insert into student1 values(5032,'Midun',5,null,20,'M','TPT')
insert into student1 values(578,'Pooja',3,null,19,'F','Mumbai')
insert into student1 values(981,'Jashu',5,null,19,'F','TPT')
insert into student1 values(745,'sreya',2,null,20,'F','KDP')
insert into student1 values(1516,'kiranmai',15,674892928,19,'F','Rayachoty')
insert into student1 values(234,'Bhavana',15,1234663277,19,'F','Banglore')
insert into student1 values(672,'Tarun',2,4534245698,21,'M','Chennai')
insert into student1 values(435,'Ajay',1,null,20,'M','Banglore')
insert into student1 values(123,'Grace',15,4456782901,19,'F','KDP')
insert into student1 values(789,'sakitha',3,null,21,'F','HYD')
insert into student1 values(155,'Triveni',10,null,20,'F','HYD')
insert into student1 values(989,'Mohith',5,null,21,'M','Guvahati')
insert into student1 values(2367,'suchethana',9,null,20,'F','KDP')

create table Employee1
( 
EID int primary key,
ENAME varchar(40) not null,
DID int not null foreign key references Dept1(DID),
SALARy money not null,
GENDEER char(1) not null check(GENDEER='M' or GENDEER='F'),
CITY varchar(30) null,
MOBILE varchar(10) null
)
select * from Employee1
insert into Employee1 values(151,'Yogendra prasad',15,100000,'M','CHITOOR',4094382)
insert into Employee1 values(161,'Ramu',12,50000,'M','TPT',89438493)
insert into Employee1 values(171,'Sandeep',5,80000,'M','ANP',4379384)
insert into Employee1 values(181,'Dhanalakshmi',1,40000,'F','CHITOOR',3487389)
insert into Employee1 values(354,'Ajith',3,65000,'M','KDP',5676866535)
insert into Employee1 values(912,'Shilpa',12,40000,'F','TPT',436787907)
insert into Employee1 values(893,'Prathima',12,50000,'F','CHITOOR',987655467)
insert into Employee1 values(671,'Raghavendra',9,40000,'M','TPT',6545327)
insert into Employee1 values(841,'Nagendra',3,50000,'M','KDP',897654345)
insert into Employee1 values(902,'Poojitha',15,45000,'F','TPT',54676874)

create table coursemaster
(
CID int primary key,
CNAME varchar(50) not null,
CATEGORY char(1) not null check(CATEGORY='B' or CATEGORY='I' or   CATEGORY='A'),
FEE money  null check( FEE >=0)
)
insert into coursemaster values(101,'C','B',2345)
insert into coursemaster values(201,'JAVA','I',00)
insert into coursemaster values(301,'DSA','A',500)
insert into coursemaster values(401,'DBMS','A',2000)
insert into coursemaster values(501,'SE','A',2000)
insert into coursemaster values(601,'C++','A',2000)
insert into coursemaster values(701,'C#','A',2000)
insert into coursemaster values(801,'SQl','A',2000)
insert into coursemaster values(901,'HTML','A',2000)
insert into coursemaster values(1001,'CSS','A',2000)
select * from coursemaster
create table enrollmentmaster
(
CID int not null foreign key references coursemaster(CID),
SID int not null foreign key references student1(SID),
DATE date not null,
GRADE char(1) not null check(GRADE='O' or GRADE='A' or GRADE='B' or GRADE='C' )
)
insert into enrollmentmaster values(101,1550,'2023-03-07','O')
insert into enrollmentmaster values(201,1502,'2023-03-06','A')
insert into enrollmentmaster values(301,3814,'2023-03-05','A')
insert into enrollmentmaster values(401,1504,'2023-03-04','C')
insert into enrollmentmaster values(501,1532,'2023-03-04','B')
select * from enrollmentmaster

/*Names of students who belong to Dept 15*/
select SNAME 
from student1
where DID=15

/*Names of students whose age is greater than 20*/
select SNAME 
from student1
where Age>20

/*SID and Names of students who belong to TPT and having mobile numbers*/
select SID,SNAME
from student1
where Address='TPT' and MOBILE is not null

/*Add column EMAIL into student table*/
alter table student1
add email  varchar(30) null

/*Total number of female students from student table*/
select count(*) as count_F from student1 where Gender='F'

/*Employee names and ID's whose salary is in between 40000 and 80000*/
select EID,ENAME from Employee1
where SALARy>40000 and SALARy<80000

/*Total Salary of CSSE Department employees*/
select sum(SALARy) as total_amount from Employee1 where DID=15

/*remove the student who belongs to DID=3 or Age=19*/
delete from student1 where DID=3 or Age=19

/*update the Email_id's of the students*/
update student1 
set email ='thrisaileswariakepati' where SID=1502

/*Name of the employees and DID  who does not belong to Hyderabad*/
select ENAME,DID from Employee1 where CITY not like 'HYD'

/*add DOB attribute*/
alter table student1
add DOB date null

/*update DOB of students*/
update student1
set DOB='2004-09-18' where SID=1502

/*delete DOB from student*/
delete DOB from student1

/*Age and SID of student who belongs to DID=12*/
select SID,SNAME from student1 where DID=12
 
/*Drop column DOB*/
alter table student1
drop column DOB

/*Age and SID of student who belongs to DID=12*/
select SID,Age from student1 where DID=12

/*Total number of employees who belongs to DID=15*/
select count(*) as Total from Employee1 where DID=15

/*Avg Age of Female Students*/
select avg(Age) as Total_count from student1 where Gender='F'

/*Employees whose salary is greater than 90000 and DID=15*/
select * from Employee1 where SALARy>90000 and DID=15

/*add DOJ attribute into Employee table*/
alter table Employee1
add DOJ date null

/*update Employee DOJ details*/
update Employee1
set DOJ='2018-09-07' where EID=151

update Employee1
set DOJ='2017-05-04' where EID=161

update Employee1
set DOJ='2022-01-12' where EID=171 

update Employee1 
set DOJ='2011-01-03' where EID=181

update Employee1
set DOJ='2001-05-06' where EID=912

/*total number of employees who are coming from Tirupati*/
select count(*) as total_mem from Employee1 where CITY='TPT'

/*drop column DOJ*/
alter table student1 drop column DOJ

/*Adding Blood group attribute into student and employee tables*/
alter table student1
add Bloodgroup varchar(30) null

alter table Employee1
add Bloodgroup varchar(30) null

/*updating Bloodgroup of employees*/
update Employee1
set Bloodgroup='A+' where EID=161
update Employee1
set Bloodgroup='o+' where EID=151
update Employee1
set Bloodgroup='AB+' where EID=171
update Employee1
set Bloodgroup='AB-' where EID=181
update Employee1
set Bloodgroup='O-' where EID=912

/*add designation attribute in employee table*/
alter table employee1  add  Desig varchar(30) null

/*updating Desination status of employees*/
update employee1 set Desig='Assist.p'  where eid=151
update employee1 set Desig='professor' where eid=161
update employee1 set Desig='A.p' where eid=171
update employee1 set Desig='hod' where eid=181
update employee1 set Desig='Assist.p' where eid=912

/*Avg salary of employees of each department*/
select DID,avg(SALARy) as avg_salary
from Employee1 
group by DID

/*update salary to 95000 whose designation is assistant professor and CSSE department*/
update Employee1 
set SALARy=95000
from Employee1 as e join Dept1 as d
on e.Desig='Assist.p' and d.DName='CSSE' and d.DID=e.DID

/*Employees who belong to TPT/CSSE*/
select distinct ENAME from Employee1 as e,Dept1 as d
where e.DID=d.DID or e.CITY='TPT' or d.DName='CSSE'

/*Employees whose salary is in between 60000 and 100000 and having bloodgroup=AB+ */
select ENAME from Employee1 
where SALARy>60000 AND SALARy<100000 AND Bloodgroup='AB+'

/*update DOJ column to Datetime and constraint as null*/
alter table Employee1
alter column DOJ datetime null

/*Total number of students who belongs to CSSE*/ 
select count(SID) as total_count
from student1
where DID=15 

/*add Age attribute into Employee table*/
alter table Employee1
add AGE int null 

/*updating Age of Each Employee*/
update Employee1 
set AGE=28 where EID=151 
update Employee1 
set AGE=30 where EID=161 
update Employee1 
set AGE=39 where EID=171 
update Employee1 
set AGE=37 where EID=181
update Employee1 
set AGE=27 where EID=354 
update Employee1 
set AGE=35 where EID=912
update Employee1 
set AGE=38 where EID=893
update Employee1 
set AGE=52 where EID=671
update Employee1 
set AGE=42 where EID=841
update Employee1 
set AGE=26 where EID=902

/*Employee name who belongs to CSSE and Age is in between 30 and 40*/
select ENAME from Employee1
where Age>30 and Age<40 and DID=15
      /*OR*/
select ENAME from Employee1
where Age>30 and Age<40 and DID=(select DID from Dept1 where DName='CSSE')

/*Creating Bookbank table*/
create table Bookbank
(
s_no int not null identity(1,1),
BID int primary key,
BName varchar(30) not null,
Qty int not null
)

/*creating temporary table for CSSE_department_students*/
select SID,SNAME into CSSE_students
from student1
where DID=15

select * from CSSE_students

/*creating view that contains list of employees whose designation is Assistant professor*/
create view 
assistant_professors as
select * from Employee1 where Desig='Assist.p'

select * from assistant_professors

/*Update salary to 120000 who belongs to CSSE and name starts with P*/
update Employee1 
set SALARy=120000 
where DID=15 and ENAME like 'p%'
      -- (OR)
update Employee1 
set SALARy=120000 
where DID=(select DID from Dept1 where DName='CSSE') and ENAME like 'p%'

select * from Employee1

/*Name of the employee eho is getting highest salary*/
select ENAME from Employee1 where SALARy=
(select Max(SALARy) as Highest_salary from Employee1)

/*Names of Employees and DOJ who does not belong to IT*/
select ENAME,DOJ from Employee1 where DID!=12

/*ID's of students who enrolled in JAVA/C*/
select distinct s.SID 
from student1 as s,coursemaster as c,enrollmentmaster as e
where s.SID=e.SID and e.CID=c.CID and c.CID=101 or c.CID=201

/*Total no. of courses enroled bu each and every student*/
select count(c.CID) as count 
from coursemaster as c,student1 as s,enrollmentmaster as e
where s.SID=e.SID and e.CID=c.CID and c.CID=s.SID

/*Names of students who enrolled foradvanced courses*/
select SNAME
from student1 as s,coursemaster as c,enrollmentmaster as e
where s.SID=e.SID and e.CID=c.CID and CATEGORY='A'

/*Total number of books available in the book bank*/
select count(BName) as Total_books 
from Bookbank
group by BName
order by BName asc;

/*view table for students who belong to CSSE and IT*/
create view 
CSSE_IT_students as
   (
     select s.SID,s.SNAME,s.MOBILE,s.Age,s.Gender,d.DName
	 from student1 as s,Dept1 as d
	 where s.DID=d.DID and d.DID=(select DID from Dept1 where DName='CSSE' or DName='IT')
   )

create view
two_sec_students as
 (
   SELECT distinct s.SID,s.SNAME,s.MOBILE,s.AGE,d.DNAME,s.GENDER 
   FROM student1 as s,Dept1 as d
   WHERE DNAME IN (SELECT DNAME FROM Dept1 WHERE DNAME IN ('CSSE','IT'))
 )

 drop view two_sec_students
create view 
Section_students as
   (
     select s.SID,s.SNAME,s.MOBILE,s.Age,s.Gender,d.DName
	 from student1 as s,Dept1 as d
	 where s.DID=d.DID and (d.DName='CSSE' or d.DName='IT')
   )

drop view Section_students

select * from two_sec_students
select * from Section_students
select * from CSSE_IT_students
 --SELECT SID,SNAME,MOBILE,AGE,DEPT_NAME,GENDER FROM STUDENT WHERE DEPT_NAME IN ('CSSE','IT')

select CID,count(CID) as Count_courses
from enrollmentmaster
group by CID

/*find out the employee whose salary is same as other employee*/
select EID,EName,SALARy from Employee1
where SALARy in (select SALARy from Employee1 group by SALARy having count(*)>1)

/*students who enrolled for a course*/
select distinct s.SID,SNAME 
from student1 as s,enrollmentmaster as e
where s.SID=e.SID
    --  (OR)
select SID,SNAME 
from student1
where SID in 
(select SID from enrollmentmaster)
   -- (OR)
select SID,SNAME 
from student1 as s
where exists 
(select * from enrollmentmaster as e
 where e.SID=s.SID)