create database company;
use company;
create table managers ( 
Manager_ID varchar(50) unique primary key, 
First_name varchar(100),
Last_name varchar(100),
DOB date,
Age int check(Age>=0 and Age<=60),
Last_update varchar(100),
Gender char(1),
Department varchar(100),
Salary int not null);

#INSERTING VALUES
insert into managers (Manager_ID,First_name,
Last_name,DOB,Age,Last_update,Gender,Department,
salary)
values (101,'Biju','kumar','1992-02-22',33,'nil',
'M','HR',35000),
(102,'Raju','Mohan','1993-04-12',32,'nil','M',
'finance',40000),
(103,'Aaliya','raj','1998-03-03',27,'nil','F',
'Credits',32000),
(104,'uday','varma','1997-09-23',28,'nil','M',
'IT',27000),
(105,'Gabrial','Francis','1996-08-11',29,'nil','M',
'IT',37000),
(106,'Praveen','Kumar','1994-11-29',31,'nil','M',
'IT',20000),
(107,'Aneesha','wyatt','2001-12-10',23,'nil','F',
'HR',30000),
(108,'Alexia','john','2000-03-03',24,'nil','F',
'IT',28000),
(109,'Manpreet','singh','1998-09-21',27,'nil','M',
'Finance',29000),
(110,'kiran','menon','2000-04-12',24,'nil','M',
'Credits',30000);

#2 RETRIEVING NAME,DOB AND ID
select Manager_ID, First_name, Last_name, DOB 
from managers;

#3 DISPLAY ANUAL INCOME
select first_name,Last_name, (salary*12) as Anual_income
from managers;

#4 USING WHERE CLAUSE
 select*from managers where first_name !='Aaliya';

#5 DISPLAY MANAGERS EARNING MORETHAN 25000 PM
select First_name, Last_name from managers where
salary>25000;

#6 SALARY BETWEEN 10000 AND 35000
select*from managers where salary between 10000 and 35000;