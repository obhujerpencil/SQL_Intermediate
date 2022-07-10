# SQL_Intermediate
Join, union, having clause, update, delete, aliasing and partition
## Initial Tables
![Initial_Table_1](https://user-images.githubusercontent.com/63474307/178132848-3717377a-54d1-47a1-a7ee-e8021c000e88.jpg)
![Initial_Table_2](https://user-images.githubusercontent.com/63474307/178132850-44181882-4d73-4528-a76e-8febc098431e.jpg)
## Venn representation of join
![Sql_Join](https://user-images.githubusercontent.com/63474307/178132883-723f65d8-3d6c-44b8-a3a1-21fb43caa003.jpg)
## Inner join
```bash
select FirstName,Job,Salary from EmployeeDemographics as demo
inner join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID
```
![inner_join](https://user-images.githubusercontent.com/63474307/178132852-b145b1a4-9142-46d5-ab96-adbe2ebd9bbf.jpg)
## Full outer join
```bash
select FirstName,Job,Salary from EmployeeDemographics as demo
full outer join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID
```
![full_outer_join](https://user-images.githubusercontent.com/63474307/178132854-d06ea412-1d2b-44d8-9ecd-3ed9f0a0766f.jpg)
## Right outer join
```bash
select FirstName,Job,Salary from EmployeeDemographics as demo
right outer join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID
```
![right_outer_join](https://user-images.githubusercontent.com/63474307/178132856-87d063ba-b463-447c-a453-3669f83307bc.jpg)
## Left outer join
```bash
select FirstName,Job,Salary from EmployeeDemographics as demo
left outer join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID
```
![left_outer_join](https://user-images.githubusercontent.com/63474307/178132859-3b3779a3-7236-414f-84e7-92c8d592b11b.jpg)
## Join
```bash
select FirstName,Job,Salary from EmployeeDemographics as demo
join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID
```
![join](https://user-images.githubusercontent.com/63474307/178132860-3fa6f439-33d7-4f39-b534-6733a3c3fb1c.jpg)
## Union
### New Table 
```bash
-- Creating new Table to show Union.

create table EmployeeDemographics2(
EmployeeID int,
FirstName varchar(20),
LastName varchar(20),
Age int,
Gender varchar(10)
)
insert into EmployeeDemographics2 values
(1012,'Mukta','Chakraborty',21,'Female'),
(1013,'Poonam','Saha',20,'Female')
```
![new_table](https://user-images.githubusercontent.com/63474307/178133472-ef48b5b1-cd5d-4ee1-a530-ae4030c260ea.jpg)
### Opertion
```bash
select FirstName,Age from EmployeeDemographics
union
select FirstName,Age from EmployeeDemographics2
order by Age asc
```
![Union](https://user-images.githubusercontent.com/63474307/178132862-4b7f654e-6c76-4223-a3bd-abb383362da9.jpg)
## Case statement
```bash
select FirstName,Age,Salary,
case
when salary<50000 then salary+(salary*0.1)
else salary
end as Salary_Update
from EmployeeDemographics dem
join EmployeeSalary sal 
on dem.EmployeeID=sal.EmployeeID
```
![case](https://user-images.githubusercontent.com/63474307/178132866-75b2cac7-55fc-4c10-b2a5-e20ac89ecf32.jpg)
## Having clause
```bash
select Job,count(Job) as Vaccancies 
from EmployeeSalary
group by Job
having avg(salary)>50000
order by count(job) desc
```
![Having](https://user-images.githubusercontent.com/63474307/178132869-934cbc7e-2308-430e-97c4-0535777051fd.jpg)
## Update
```bash
update EmployeeDemographics
set age=22 
where EmployeeID=1001

select * from EmployeeDemographics
```
![Update](https://user-images.githubusercontent.com/63474307/178132872-829960a2-f779-42ed-99df-be5398ab2e45.jpg)
## Delete
```bash
Delete from EmployeeDemographics 
where EmployeeID=1001

select * from EmployeeDemographics
```
![delete](https://user-images.githubusercontent.com/63474307/178132873-bf2c7975-ec46-44f9-bbe3-6f3985c40c05.jpg)
## Partion
#### Group satements cuts down the number of rows by rolling them up but with the help of partition we can get all the rows and aggregate things corrosponding to them.
```bash
select FirstName,Gender,
count(EmployeeID) over (partition by Gender) as Total_Gender
from EmployeeDemographics
![partition](https://user-images.githubusercontent.com/63474307/178132874-e13ca4ae-a4fb-4a6f-8ff7-5a64cb3d0164.jpg)
```
## Aliasing
```bash
select FirstName+' '+LastName as Full_Name, Age 
from EmployeeDemographics
```





![aliasing](https://user-images.githubusercontent.com/63474307/178135705-cc87b1ee-ac43-4729-baae-81dbbc6914ae.jpg)
## Bye bye.,...
![lol](https://user-images.githubusercontent.com/63474307/178136454-d99ce168-654f-48de-9c06-78ae0266c8d9.gif)
