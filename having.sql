select Job,count(Job) as Vaccancies 
from EmployeeSalary
group by Job
having avg(salary)>50000
order by count(job) desc
