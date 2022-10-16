--*/
--Subqueries (in Select, From and Where Statement)
--/*

Select *
From EmployeeSalary

--Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary)  From EmployeeSalary) AS AllAvgSalary
From EmployeeSalary

--Subquery with Partition By

Select EmployeeID, Salary, AVG (Salary) over ()  AS AllAvgSalary
From EmployeeSalary

--Why Group By does not work

Select EmployeeID, Salary, AVG (Salary) AS AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
Order By 1,2

--Subquery in From

Select Sal.EmployeeID, AllAvgSalary
From (Select EmployeeID, Salary, AVG (Salary) over ()  AS AllAvgSalary
     From EmployeeSalary) AS Sal

--Subquery in Where Statement

Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
      Select EmployeeID
	  From EmployeeDemographics
	  Where Age > 30)


