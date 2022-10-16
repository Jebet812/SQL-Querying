--*/
--Case  Statements
--/*

SELECT FirstName, LastName, Age,
CASE
    WHEN Age > 30 THEN 'Old'
    ELSE 'Young'
END
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
WHERE Age is NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
    WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
    ELSE 'Baby'
END
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
WHERE Age is NOT NULL
ORDER BY Age

--RETURNS FIRST CONDITION

SELECT FirstName, LastName, Age,
CASE
    WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley'
    ELSE 'Baby'
END
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
WHERE Age is NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
    WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
WHERE Age is NOT NULL
ORDER BY Age

--USE CASE

SELECT FirstName,LastName,JobTitle, Salary
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary]
   ON EmployeeDemographics.EmployeeID=	EmployeeSalary.EmployeeID

--LET'S CREATE CASE TO INCREASE SALARY SALES MEN

SELECT FirstName,LastName,JobTitle, Salary,
CASE
    WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .00001)
	ELSE Salary + (Salary* .03)
END AS SalaryAfterRaise
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
JOIN [SQL Tutorial2].[dbo].[EmployeeSalary]
   ON EmployeeDemographics.EmployeeID=	EmployeeSalary.EmployeeID

