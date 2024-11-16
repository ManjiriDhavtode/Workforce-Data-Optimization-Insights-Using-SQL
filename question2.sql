-- How do you retrieve the names of all employees       who have a salary greater than $70,000?
SELECT * FROM EMPLOYEES;
SELECT FIRSTNAME, SALARY FROM EMPLOYEES WHERE SALARY>70000.00;

-- How do you update the last name  of the employee ,,, with EmployeeID 2 to 'Doe'?
UPDATE EMPLOYEES SET LASTNAME='DOE' WHERE EMPLOYEEID=2;

-- How do you delete an employee with the EmployeeID of 5?---------------------------------------------
DELETE FROM EMPLOYEEPROJECTS WHERE EMPLOYEEID=5;

-- How can you find the average salary of employees in each department?
SELECT * FROM EMPLOYEES;
SELECT  DEPARTMENTID ,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENTID;

-- How do you retrieve all employees who joined the company after January 1, 2018?
SELECT * FROM EMPLOYEES WHERE HIREDATE >'2018-01-01';

-- How do you find the department WITH MOST EMPLOYEES?
SELECT DISTINCT DEPARTMENTID ,COUNT(DEPARTMENTID) AS TOTAL_COUNT 
FROM EMPLOYEES GROUP BY DEPARTMENTID 
ORDER BY TOTAL_COUNT DESC LIMIT 1;

-- How can you find employees who are not assigned to any project?
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEEPROJECTS;

SELECT FIRSTNAME
FROM EMPLOYEES 
LEFT JOIN EMPLOYEEPROJECTS
ON EMPLOYEES.EMPLOYEEID=EMPLOYEEPROJECTS.EMPLOYEEID WHERE PROJECTID IS NULL;


-- How do you rename the 'Marketing' department to 'Digital Marketing'?
SELECT * FROM DEPARTMENTS;
UPDATE DEPARTMENTS SET  DEPARTMENTNAME= 'Digital Marketing ' WHERE DEPARTMENTNAME='Marketing';

-- How can you find the second highest salary in the Employees table?
SELECT * FROM EMPLOYEES;
SELECT MAX(SALARY) FROM EMPLOYEES;
SELECT MAX(SALARY) FROM EMPLOYEES WHERE SALARY<(SELECT MAX(SALARY) FROM EMPLOYEES);
SELECT SALARY FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 1 OFFSET 1;

-- How do you find the total salary expense for each department?
SELECT * FROM EMPLOYEES;
SELECT DEPARTMENTID,SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENTID;

-- How do you add a new column Email to the Employees table?
ALTER TABLE EMPLOYEES ADD COLUMN EMAIL VARCHAR(20);

-- How can you find the average salary of employees in the Engineering department?
SELECT AVG(SALARY),FIRSTNAME FROM EMPLOYEES WHERE DEPARTMENTNAME='Engineering';
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT DEPARTMENTNAME,AVG(SALARY) FROM EMPLOYEES
LEFT JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENTID = DEPARTMENTS.DEPARTMENTID WHERE DEPARTMENTNAME='Engineering';

-- How do you delete all data from the Projects table?-------------------------------------------------FOREIGN
TRUNCATE TABLE PROJECTS;