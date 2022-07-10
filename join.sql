select FirstName,Job,Salary from EmployeeDemographics as demo
inner join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID

select FirstName,Job,Salary from EmployeeDemographics as demo
full outer join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID

select FirstName,Job,Salary from EmployeeDemographics as demo
right outer join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID

select FirstName,Job,Salary from EmployeeDemographics as demo
left outer join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID

select FirstName,Job,Salary from EmployeeDemographics as demo
join EmployeeSalary as sal
on demo.EmployeeID=sal.EmployeeID
