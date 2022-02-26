--Create database company

create database company
use company

--Create Employee Table

create table Employee(
Empid int not null primary key,
First_name varchar(25),
Last_name varchar(25),
Salary int,
Joining_date datetime,
Department_name varchar(25)
)

--Create Bonus Table

create table Bonus(
Emp_ref_id int,
Bonus_amt int,
Bonus_date datetime,
foreign key (Emp_ref_id) references Employee(Empid)
on delete cascade
)

--Create Employee Designation TAble

create table Designation(
Emp_ref_id int,
Designation varchar(25),
Designation_date datetime,
foreign key (Emp_ref_id) references Employee(Empid)
on delete cascade
)

insert into Employee values
(1, 'Sri Charan','M',25000,'06-12-2021 10:34:01 AM','Operation Anlayst'),
(2, 'Roshmetha','K',25000,'06-12-2021 10:34:01 AM','Operation Anlayst'),
(3, 'Shefali','A',25000,'06-12-2021 10:34:01 AM', 'Operation Anlayst'),
(4, 'Rohit','T',25000,'06-12-2021 10:34:01 AM', 'Operation Anlayst'),
(5, 'Sunil','K',40000,'02-01-2020 10:34:01 AM','Underwritter'),
(6, 'Pritesh','S',40000,'03-02-2020 10:34:01 AM','Underwritter'),
(7, 'Faran','K',40000,'06-05-2021 10:34:01 AM','Underwritter'),
(8, 'Pavitra','P',40000,'04-04-2021 10:34:01 AM','Underwritter'),
(9, 'Aaquib','J',40000,'07-07-2021 10:34:01 AM','Underwritter'),
(10,'Yuvraj','K',40000,'03-04-2021 10:34:01 AM', 'Underwritter')


select * from Bonus

-- Inserting Values into Bonus table
insert into Bonus values (1,1000,'06-02-2021')
(2,1000,'06-02-2021'),
(3,1000,'06-02-2021'),
(4,1000,'06-02-2021'),
(5,1000,'06-02-2021'),
(6,1000,'06-02-2021'),
(7,1000,'06-02-2021'),
(8,1000,'06-02-2021'),
(9,1000,'06-02-2021'),
(10,1000,'06-02-2021')

select * from Bonus

insert into Designation values
(1, 'contract Admin', '06-12-2021'),
(2, 'contract Admin', '06-12-2021'),
(3, 'contract Admin', '06-12-2021'),
(4, 'contract Admin', '06-12-2021'),
(5, 'Credit Analyst', '02-03-2020'),
(6, 'Credit Analyst', '06-12-2021'),
(7, 'Credit Analyst', '06-12-2021'),
(8, 'Credit Analyst', '06-12-2021'),
(9, 'Credit Analyst', '06-12-2021'),
(10, 'Credit Analyst', '06-12-2021')

select * from Employee
select * from Bonus
select * from [dbo].[Designation]