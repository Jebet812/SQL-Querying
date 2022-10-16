--SELECT *
--FROM EmployeeDemographics
--WHERE AGE >= 30

--SELECT *
--FROM EmployeeDemographics
--WHERE AGE >= 30 OR Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%o%'

--SELECT *
--FROM EmployeeDemographics
--where FirstName is NOT NULL


SELECT *
FROM EmployeeDemographics
where FirstName IN ('Jim', 'Michael')