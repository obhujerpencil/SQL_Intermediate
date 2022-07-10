select FirstName,Age,Salary,
case
when salary<50000 then salary+(salary*0.1)
else salary
end as Salary_Update
from EmployeeDemographics dem
join EmployeeSalary sal 
on dem.EmployeeID=sal.EmployeeID
