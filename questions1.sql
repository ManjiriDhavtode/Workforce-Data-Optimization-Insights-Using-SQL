-- How do you retrieve all records from the Employees table?
SELECT * FROM Employees;

-- How do you retrieve the names of all departments?
SELECT * FROM DEPARTMENTS;
SELECT DepartmentName FROM DEPARTMENTS;

-- How do you retrieve the project names and their start dates?
SELECT * FROM PROJECTS;
SELECT ProjectName ,StartDate FROM PROJECTS;

-- How do you find the salary of the employee, with EmployeeID 3?
SELECT SALARY FROM EMPLOYEES WHERE EmployeeID=3;

-- How do you find the start date of 'Project Alpha"?
SELECT STARTDATE FROM PROJECTS WHERE PROJECTNAME = 'PROJECT ALPHA';

-- How do you get the highest salary in the Employees table?
SELECT * FROM EMPLOYEES;
SELECT MAX(SALARY) FROM EMPLOYEES;

-- How do you find the employee with the earliest hire date?
 SELECT FIRSTNAME,MIN(HIREDATE) AS earliest_hire_date FROM EMPLOYEES  GROUP BY FIRSTNAME LIMIT 1;

-- How do you retrieve the names and salaries of employees,   sorted by salary in descending order?
SELECT FIRSTNAME,SALARY FROM EMPLOYEES ORDER BY SALARY DESC;

-- How do you add a new department called 'Finance'?
SELECT * FROM DEPARTMENTS;
INSERT INTO DEPARTMENTS VALUES(5,'Finance');

-- How do you add a new project called 'Project Delta' with a start date of '2024-01-01' and an end date of "2024-12- 31'?
SELECT * FROM PROJECTS;
INSERT INTO PROJECTS VALUES(4,'Project Delta','2024-01-01','2024-12-31');
