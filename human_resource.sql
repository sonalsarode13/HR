Create Database HR;
USE HR;

# 1 attrition employee by department
select department,sum(attrition_employee_yes) from hr_data
group by department;

# 2 Sum of overtime by Job Role
select sum(OverTime_Emp),job_role
from hr_data
group by job_role;

# 3 sum of employee count by cf band & department
select sum(Employee_Count),department,CF_age_band
from hr_data
group by department,CF_age_band;

#4 Job Satisfaction by Education
select sum(Job_Satisfaction),education
from hr_data
group by education;


#5 monthly income by education field
select sum(Monthly_Income),Education_Field
from hr_data
group by Education_field;


# 6 Active employees by education
select sum(Active_Emp),education
from hr_data
group by education;


# 7 employee count by business travel & gender
select sum(employee_count),Business_Travel,gender
from hr_data
group by Business_Travel,gender;

# 8 attrition employee by job role

select sum(attrition_employee_yes),job_role
from hr_data
group by job_role;

# 9 Active employees by job role
select sum(Active_Emp),Job_role
from hr_data
group by job_role;

#10 job satisfaction & job role by performance rating
select sum(Performance_Rating),Job_Satisfaction,Job_role
from hr_data
group by job_role,Job_Satisfaction;

# 11 Attrition Rate
select sum(attrition_employee_yes)/sum(employee_count) *100 as attrition_rate
from hr_data;

# 12 Average Age 
select round(avg(age),0) from hr_data;

# 13 active employees
select sum(Active_Emp) from hr_data;

# 14 attrition employee
select sum(Attrition_Employee_Yes) from hr_data;

# 15 Overall Employees
select sum(Employee_Count) from hr_data;