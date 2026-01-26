CREATE DATABASE task7;
USE task7;

--Create departments Table 
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

--Create employees Table 
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
        ON DELETE CASCADE
);


--Insert Valid Records

-- Insert departments
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Insert employees 
INSERT INTO employees VALUES
(101, 'Ravi', 1),
(102, 'Anu', 2),
(103, 'Karthik', 2),
(104, 'Meena', 3);

-- Display Initial Data
SELECT * FROM departments;

--Attempt Invalid Foreign Key Insert (ERROR CASE)
INSERT INTO employees VALUES
(105, 'Suresh', 5);


--Error:

--Cannot add or update a child row:
--a foreign key constraint fails


--Because department_id = 5 does NOT exist in departments

--Demonstrate ON DELETE CASCADE
DELETE FROM departments WHERE department_id = 2;


--Automatically deletes employees:

--Anu

--Karthik
--No manual deletion needed in employees
--Verify Data
SELECT * FROM departments;
SELECT * FROM employees;