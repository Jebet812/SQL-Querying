--/*
--STORED PROCEDURES
--*/

CREATE PROCEDURE TEST
AS
Select *
From EmployeeDemographics


EXEC TEST

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_Employee2 (
JobTitle varchar (50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)


INSERT INTO #temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics] AS Emp
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary] AS Sal
     ON Emp.EmployeeID = Sal.EmployeeID
Group by JobTitle

SELECT *
FROM #temp_Employee2

EXEC Temp_Employee


--*** GOT CONFUSED
