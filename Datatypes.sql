-- here is the SQL  datatypes used in the database

-- Integer: Used for whole numbers (e.g., 1, 2, 3).
-- Varchar: Used for variable-length character strings (e.g., names, addresses).
-- Date: Used for date values (e.g., '2024-01-01'). 
-- Boolean: Used for true/false values (e.g., TRUE, FALSE).
-- Decimal: Used for fixed-point numbers (e.g., 10.5, 20.75).
-- Text: Used for long text or large strings (e.g., descriptions, comments).
-- Float: Used for floating-point numbers (e.g., 3.14, 2.718).
-- Timestamp: Used for date and time values (e.g., '2024-01-01 12:00:00').
-- Char: Used for fixed-length character strings (e.g., 'A', 'B', 'C').
-- Blob: Used for binary large objects (e.g., images, files).


-- and here is an example of how to create a table using these datatypes:

CREATE TABLE ExampleTable (
    ID INT PRIMARY KEY, -- Integer
    Name VARCHAR(100), -- Varchar
    BirthDate DATE, -- Date     
    IsActive BOOLEAN, -- Boolean
    Salary DECIMAL(10, 2), -- Decimal
    Description TEXT, -- Text
    Rating FLOAT, -- Float
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp
    Initial CHAR(1), -- Char
    ProfilePicture BLOB -- Blob
);
