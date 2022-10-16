--*/
--PARTITION BY
--*/

SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]


SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeSalary]

SELECT FirstName, LastName, Gender, Salary
,  COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics] AS Dem
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary] AS Sal
    ON Dem.EmployeeID = Sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) 
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics] AS Dem
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary] AS Sal
    ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

SELECT Gender, COUNT(Gender) 
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics] AS Dem
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary] AS Sal
    ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY Gender