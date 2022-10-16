--*/
--ALISASING
--*/

--#Aliasing Column Names

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]


SELECT Avg (Age) AS AVGAge
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]

--#Aliasing Table Names


SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics] AS Demo
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary] AS Sal
     ON Demo.EmployeeID = Sal.EmployeeID


SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, 
Sal.JobTitle, Ware.Age
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics] AS Demo
LEFT JOIN [SQL Tutorial2].[dbo].[EmployeeSalary] AS Sal
     ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial2].[dbo].[WareHouseEmployeeDemographics] AS Ware
     ON Demo.EmployeeID=Ware.EmployeeID



