--*/
--UPDATING/DELETING DATA
--*/
SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]

UPDATE [SQL Tutorial2].[dbo].[EmployeeDemographics]
SET Age=31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName= 'Flax'


SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]

DELETE FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
WHERE EmployeeID = 1005


--#trick not to delete unknowingly

SELECT *
FROM [SQL Tutorial2].[dbo].[EmployeeDemographics]
WHERE EmployeeID = 1004
