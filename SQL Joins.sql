-- use the below given link to download dataset and save it in your Microsoft SQL Server management Studio
-- Navigation C:\Program Files\Microsoft SQL Server\MSSQL\Backup
https://drive.google.com/file/d/1IeLToHDEfcrcTj9yA1lsE1OvgX9da5kt/view?usp=sharing

use Human_Resources (-- used to select the database) 
-- JOINS
-- Join should have atleast one similar column with the both tables which we going to merge
-- TYPES OF JOINS (Basic)
-- * Inner Join
-- * Left Join
-- * Right Join
-- * Full Join

-- INNER JOIN
-- The inner join connects the both the table which have the common column.
select * from Employees
select * from Gender

select 
emp_no,
birth_date,
first_name,
gender_name,
emp.gender
from 
Employees emp inner join 
Gender gen on gen.gender = emp.gender

-- LEFT JOIN
-- All the data from the left table excluding the right table will be extracted (The datas which do not
-- match with the matching critiria will be marked as null)

select 
emp_no,
first_name,
last_name,
position,
from_date
from 
Employees emp left join
Managers mgr on emp.sid_Employee = mgr.sid_Employee
order by 
4 desc; (-- 4 is the location of column position)

-- RIGHT JOIN
-- All the data from the Right table excluding the left table will be extracted (The datas which do not
-- match with the matching critiria will be marked as null)

select
gen.gender,
gender_name,
emp_no,
birth_date,
first_name,
last_name
from 
Employees emp right join
Gender gen on emp.gender = gen.gender

-- FULL JOIN
-- All the datas from both the tables will be extracted by matching critiria

select * from Current_Personnel
select * from Geography

select
emp_no,
City,
CountryRegionName
from 
Current_Personnel cp full join
Geography geo on cp.sid_Location = geo.sid_Location
order by 
1;

-- MULTIPLE JOINS

select
emp.emp_no,
first_name,
last_name,
position,
from_date,
slh.current_salary,
slh.sal_from_date
from Employees emp inner join
Managers mgr on emp.sid_Employee = mgr.sid_Employee inner join
Salary_History slh on emp.sid_Employee = slh.sid_Employee

-- MULTIPLE COMBINATION OF JOINS
select * from Employee_Location
select 
emp.emp_no,
first_name,
last_name,
current_salary,
Pay_Amount,
Pay_Date
from
Employees emp inner join
Current_Personnel cp on emp.sid_Employee = cp.sid_Employee right join
Payroll.Employee_Payroll pep on cp.sid_Employee = pep.sid_Employee

select 
emp.emp_no,
first_name,
last_name,
empl.PostalCode loacalcode,
geo.PostalCode 
from
Employees emp inner join
Employee_Location empl on emp.sid_Employee = empl.sid_Employee left join
Geography geo on empl.PostalCode = geo.PostalCode

-- SELF JOIN
-- Self join is used to perform join operation within the same table.

select * from Management.EmployeeManagerTree
select 
emp1.FullName,
emp1.sid_Employee,
emp1.sid_Manager,
emp2.FullName
from 
Management.EmployeeManagerTree emp1 left join
Management.EmployeeManagerTree emp2 on emp1.sid_Manager = emp2.sid_Employee
order by
3;
