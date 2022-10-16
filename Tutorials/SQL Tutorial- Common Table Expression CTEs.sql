--/*
--Common Table Expression
--/*

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary
, COUNT (gender) OVER (PARTITION BY Gender) as TotalGender
, AVG (Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM  [SQL Tutorial2].[dbo].[EmployeeDemographics] as Emp
JOIN  [SQL Tutorial2].[dbo].[EmployeeSalary] as Sal
     ON

 Emp.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)
Select *
From CTE_Employee


WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary
, COUNT (gender) OVER (PARTITION BY Gender) as TotalGender
, AVG (Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM  [SQL Tutorial2].[dbo].[EmployeeDemographics] as Emp
JOIN  [SQL Tutorial2].[dbo].[EmployeeSalary] as Sal
     ON

 Emp.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)
Select FirstName, Salary
From CTE_Employee


