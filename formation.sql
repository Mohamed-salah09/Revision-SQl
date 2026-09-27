-- SQL includes 4 subsets:
-- 1. DDL
-- 2. DML
-- 3. DQL
-- 4. DCL

--1- DDL
-- create  database
Create DATABASE IF NOT EXISTS test_db

-- drop database
DROP DATABASE -- database--

-- alter table

ALTER TABLE -- table_name  

-- truncate table
TRUNCATE TABLE -- table_name



-- 2- DQL
 -- select statement
SELECT * FROM -- table_name




--3- DML
-- insert statement
INSERT INTO -- table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);       
-- update statement
UPDATE -- table_name
SET column1 = value1, column2 = value2, ...
WHERE condition; 
-- delete statement
DELETE FROM -- table_name
WHERE condition;    


--5- DCL

-- allow the user to perform certain actions on the database

-- grant statement
GRANT -- privilege ON -- table_name TO -- user; 
-- revoke statement
REVOKE -- privilege ON -- table_name FROM -- user;  


--4- TCL
-- control the changes made by DML statements

-- commit statement
COMMIT; 
-- rollback statement
ROLLBACK;









