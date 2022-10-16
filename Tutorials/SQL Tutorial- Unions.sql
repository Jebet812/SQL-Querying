#UNION

SELECT *
FROM  [SQL Tutorial2].[dbo].[EmployeeDemographics]
UNION
SELECT *
FROM [SQL Tutorial2].[dbo].[WareHouseEmployeeDemographics]

#UNION ALL

SELECT *
FROM  [SQL Tutorial2].[dbo].[EmployeeDemographics]
UNION ALL
SELECT *
FROM [SQL Tutorial2].[dbo].[WareHouseEmployeeDemographics]
ORDER BY EmployeeID


SELECT EmployeeID, FirstName, Age
FROM  [SQL Tutorial2].[dbo].[EmployeeDemographics]
UNION
SELECT EmployeeID,JobTitle,Salary
FROM [SQL Tutorial2].[dbo].[EmployeeSalary]
ORDER BY EmployeeID

SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
Full Outer Join  [SQL Tutorial2].[dbo].[WareHouseEmployeeDemographics]
ON EmployeeDemographics.EmployeeID=WareHouseEmployeeDemographics.EmployeeID

