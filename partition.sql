select FirstName,Gender,
count(EmployeeID) over (partition by Gender) as Total_Gender
from EmployeeDemographics
