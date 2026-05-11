create database emp_project;
use emp_project;
show tables;

#select
select * from emp_attrition_cleaned;


#where
select * from emp_attrition_cleaned where attrition = 0;
select * from emp_attrition_cleaned where attrition = 1;


#Group By
select count(*),age,gender from emp_attrition_cleaned group by age,gender;


#order BY 

select gender,avg(MonthlyIncome) as salary
 from emp_attrition_cleaned group by gender order by salary ;  
 
 #count 
 
 select count(JobRole),age  from emp_attrition_cleaned group by age; 
 
 select count(*),Jobrole from emp_attrition_cleaned group by jobrole;
 
 #sum
 
 select sum(MonthlyIncome) as salary ,Education from emp_attrition_cleaned group by Education;
 
 select sum(HourlyRate),jobrole as working_time from emp_attrition_cleaned group by jobRole; 
 
 #avg
 
 select avg(MonthlyRate) as rate ,yearsAtCompany from emp_attrition_cleaned group by yearsAtCompany order by rate desc;
 
 select count(BusinessTravel) as Travel,Department from emp_attrition_cleaned group by Department having travel;
 
 #Attrition rate by department
 select count(Attrition) as Att_rate,Department from emp_attrition_cleaned group by Department;
 
 #Average salary by job role
 
 select avg(MonthlyIncome) as salary,JobRole from emp_attrition_cleaned group by JobRole;
 
 #Employee distribution by gender
 
 select count(*) from emp_attrition_cleaned group by gender;
 
 #Years of experience vs attrition
 
 select count(TotalWorkingYears) as year_experiences,attrition from emp_attrition_cleaned group by attrition;
 
 #Overtime impact on attrition
 
 select count(overTime) ,attrition from emp_attrition_cleaned group by attrition; 
 

 
 
 
 
 