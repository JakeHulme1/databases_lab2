/* Show all tables of data */  
-- SELECT * from Delivery;
SELECT * from Department;
-- SELECT * from Employee;
-- SELECT * from Item;
SELECT * from Sale;
-- SELECT * from Supplier;

-- 1. Find the items sold by the departments on the second floor
SELECT DISTINCT ItemName
FROM Sale, Department
WHERE Sale.DepartmentName = Department.DepartmentName 
AND Department.DepartmentFloor = 2;

-- This query performs an equijoin on Sale and Department 
-- NATURAL JOIN looks for columns that have the same name
SELECT DISTINCT ItemName
FROM (Sale NATURAL JOIN Department)
WHERE Department.DepartmentFloor = 2;

-- Replacing it with JOIN
SELECT DISTINCT ItemName
FROM (Sale JOIN Department)
WHERE Department.DepartmentFloor = 2;