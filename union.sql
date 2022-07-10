-- Creating new Table to show Union.

--create table EmployeeDemographics2(
--EmployeeID int,
--FirstName varchar(20),
--LastName varchar(20),
--Age int,
--Gender varchar(10)
--)

--insert into EmployeeDemographics2 values
--(1012,'Mukta','Chakraborty',21,'Female'),
--(1013,'Poonam','Saha',20,'Female')

select FirstName,Age from EmployeeDemographics
union
select FirstName,Age from EmployeeDemographics2
order by Age asc
