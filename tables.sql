CREATE DATABASE GEMS;
USE GEMS;

-- Departments Table:
CREATE TABLE Departments (
DepartmentID int PRIMARY KEY,
DepartmentName varchar(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1,'Human Resources'),(2,'Sales'),(3,'Engineering'),(4,'Marketing');


-- Employees Table:
CREATE TABLE Employees (
EmployeeID int PRIMARY KEY,
FirstName varchar(50) ,
LastName varchar(50),
DepartmentID int,
Salary decimal(10, 2),
HireDate date,
FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID) 
);
-- Insert into Employees:
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, HireDate)
VALUES
(1, 'Alice', 'Smith', 3, 90000, '2015-03-01'),
(2, 'Bob', 'Johnson', 2, 60000, '2018-07-23'),
(3, 'Charlie', 'Williams', 4, 70000, '2016-09-15'),
(4, 'Diana', 'Brown', 1, 80000, '2017-11-30'),
(5, 'Evan', 'Davis', 3, 95000, '2019-01-20');


-- EmployeeProjects Table:
CREATE TABLE Projects (
ProjectID int PRIMARY KEY,
ProjectName varchar(100),
StartDate date, 
EndDate date
);
-- Insert data into Projects:
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate) VALUES
(1, 'Project Alpha', '2020-01-01', '2020-12-31'),
(2, 'Project Beta', '2019-03-01', '2019-11-30'),
(3, 'Project Gamma', '2021-06-01', '2022-05-31');

CREATE TABLE EmployeeProjects (
EmployeeID int,
ProjectID int,
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
FOREIGN KEY (ProjectID) REFERENCES Projects (ProjectID)
);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
(1,1),
(1,2),
(2,2),
(3,3),
(4,1),
(5,3);

SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Projects;
SELECT * FROM Employeeprojects;

