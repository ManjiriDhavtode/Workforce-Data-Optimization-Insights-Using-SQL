*SQL Project: Employee and Project Management Database Overview*
------------------------------------------------------------------
This SQL project, designed for a Data Analyst role, simulates a comprehensive database for managing employees, departments, and projects in an organization. 
The GEMS database consists of interconnected tables (Departments, Employees, Projects, and EmployeeProjects) and demonstrates proficiency in database design, 
data manipulation, and analysis using SQL.

*Features*
------------
Database Creation: Setting up a new database named GEMS with structured tables and relationships.

Data Insertion: Populating tables with meaningful data for employees, departments, projects, and their assignments.

Data Retrieval: Writing queries to extract valuable insights, such as top-performing employees or project timelines.

CRUD Operations: Demonstrating Create, Read, Update, and Delete operations for real-world data management.

Data Analysis: Performing aggregation and sorting to derive statistics like average salaries, total expenses, and departmental insights.

Data Integrity: Enforcing referential integrity using foreign keys between related tables.

*Database Structure*
----------------------
Tables:-
Departments: Holds department IDs and names.
Employees: Contains employee details such as name, salary, department, and hire date.
Projects: Tracks project information, including start and end dates.
EmployeeProjects: Represents many-to-many relationships between employees and projects.
Key Queries and Use Cases


Basic Data Retrieval
---------------------
Retrieve all employee records:
SELECT * FROM Employees;

Retrieve all department names:
SELECT DepartmentName FROM Departments;

Data Analysis
Find the highest salary in the company:
SELECT MAX(Salary) AS HighestSalary FROM Employees;


Determine the average salary by department:
SELECT DepartmentID, AVG(Salary) AS AverageSalary 
FROM Employees 
GROUP BY DepartmentID;


Updates and Modifications
Add a new department:
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES (5, 'Finance');


Rename a department:
UPDATE Departments 
SET DepartmentName = 'Digital Marketing' 
WHERE DepartmentName = 'Marketing';


Advanced Queries
Identify employees not assigned to any project:
SELECT * 
FROM Employees E
WHERE NOT EXISTS (
    SELECT 1 
    FROM EmployeeProjects EP 
    WHERE E.EmployeeID = EP.EmployeeID
);


Find the second-highest salary in the company:
SELECT MAX(Salary) AS SecondHighestSalary 
FROM Employees 
WHERE Salary < (SELECT MAX(Salary) FROM Employees);


*Skills Demonstrated*
---------------------
Database Design: Normalized structure with primary and foreign keys to ensure data integrity.
SQL Proficiency: Writing optimized queries for data retrieval, manipulation, and analysis.
Data Analysis: Aggregation, filtering, and sorting to derive meaningful insights.
Real-World Scenarios: Simulating operations like assigning employees to projects, managing departments, and handling payroll statistics.

*Future Enhancements*
---------------------
Visualization: Integrate with Python or Tableau for visual analytics.
Data Expansion: Add more tables like Salaries or Promotions for deeper insights.
Automated Reporting: Use SQL scripts for periodic business intelligence reporting.
