/****** Script for SelectTopNRows command from SSMS  ******/



  SELECT *
  FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
  
  SELECT *
  FROM [SQL Tutorial2].[dbo].[EmployeeSalary]

  
 SELECT *
 FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
 Right Outer Join [SQL Tutorial2].[dbo].[EmployeeSalary]
 ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

 SELECT EmployeeDemographics.EmployeeID,FirstName, LastName,Salary
 FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
 Inner Join [SQL Tutorial2].[dbo].[EmployeeSalary]
  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
 WHERE FirstName<> 'Michael'
 ORDER BY Salary DESC

 SELECT JobTitle, AVG(Salary)
 FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
 Inner Join [SQL Tutorial2].[dbo].[EmployeeSalary]
  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
 WHERE JobTitle = 'Salesman'
 GROUP BY JobTitle
