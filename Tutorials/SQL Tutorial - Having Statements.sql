--/*
--HAVIN CLAUSE
--/*

SELECT JobTitle, COUNT (JobTitle)
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary]
   ON EmployeeDemographics.EmployeeID=	EmployeeSalary.EmployeeID
WHERE COUNT (JobTitle) > 1
GROUP BY JobTitle

--Error- An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.

SELECT JobTitle, COUNT (JobTitle)
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary]
   ON EmployeeDemographics.EmployeeID=	EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT (JobTitle) > 1

SELECT JobTitle, AVG (Salary)
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary]
   ON EmployeeDemographics.EmployeeID=	EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG (Salary) > 45000
ORDER BY AVG(Salary)