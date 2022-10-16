--*/
--Temp Tables
--*/

CREATE TABLE #temp_Employee(
EmployeeID INT,
JobTitle varchar(100),
Salary int
)


Select *
FROM #temp_Employee

INSERT INTO #temp_Employee
VALUES ('1001', 'HR', '45000'
)


INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeSalary]

DROP TABLE IF EXISTS #temp_Employee2
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
