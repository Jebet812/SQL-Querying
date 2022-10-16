
SELECT DISTINCT *
FROM EmployeeDemographics



SELECT DISTINCT(Gender), Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT DISTINCT(Gender), COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender 


SELECT DISTINCT(Gender), COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender 
ORDER BY CountGender DESC


SELECT DISTINCT(Gender), COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender 
ORDER BY Gender 

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age ASC, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER  BY 4 ASC, 5 DESC


--# 4 AND 5 is the column number for Age and Gender