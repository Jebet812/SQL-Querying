--*/
--String Functions-TRIM, LTRIM,RTRIM,REPLACE,Substring,Upper,Lower
--*/

CREATE TABLE EmployeeErrors0 (
EmployeeID varchar (50),
FirstName varchar (50),
LastName varchar (50)
)

INSERT INTO EmployeeErrors0 Values
('1001 ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005 ', 'TOby', 'Flenderson-Fired')


Select *
From EmployeeErrors0

--Using Trim, LTrim, RTrim

Select EmployeeID,	TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors0

Select EmployeeID,	LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors0

Select EmployeeID,	RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors0


--Using Replace

Select LastName, REPLACE(LastName, '-Fired', ' ') AS LastNameFixed
FROM EmployeeErrors0


--Using Substring

Select SUBSTRING(FirstName,3,3)
FROM EmployeeErrors0


Select SUBSTRING (Err.FirstName,1,3) , SUBSTRING(Dem.FirstName,1,3)
FROM EmployeeErrors0 AS err
JOIN EmployeeDemographics AS Dem
  ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(Dem.FirstName,1,3)

Select err.FirstName, SUBSTRING (Err.FirstName,1,3) , Dem.FirstName, SUBSTRING(Dem.FirstName,1,3)
FROM EmployeeErrors0 AS err
JOIN EmployeeDemographics AS Dem
  ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(Dem.FirstName,1,3)

  --Gender
  --LastName
  --Age
  --DOB

  --Using UPPER and LOWER

Select *
FROM EmployeeErrors0

Select FirstName, LOWER(FirstName)
FROM EmployeeErrors0

Select FirstName, UPPER(FirstName)
FROM EmployeeErrors0