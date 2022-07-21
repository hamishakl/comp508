/*1.1*/
SELECT * FROM employees;
DESCRIBE employees;

SELECT * FROM departments;
DESCRIBE deppartments;

SELECT * FROM locations;
DESCRIBE locations;

SELECT * FROM countries;
DESCRIBE countries;

SELECT * FROM jobs;
DESCRIBE jobs;

SELECT * FROM job_history;
DESCRIBE job_history;

SELECT * FROM regions;
DESCRIBE regions;

SELECT first_name, job_id, salary
FROM employees; 

/*1.2*/
SELECT job_title, max_salary, min_salary 
FROM   jobs; 
/*1.3 = true
1.4 = false
*/

/*1.5*/
SELECT last_name, salary, commission_pct, 12*salary*commission_pct AnnSal 
FROM   employees;  
/*annsal and commission_pct is null in some rows because it has not been entered*/

/*1.6 - 1*/
ALTER table employees RENAME COLUMN employee_id TO "Emp#";
ALTER table employees RENAME COLUMN job_id TO "Job Title";
ALTER table employees RENAME COLUMN department_id TO "Department ID";

/*1.6 - 2*/
SELECT DISTINCT "Job Title" FROM employees;

/*1.6 - 3*/
SELECT CONCAT(first_name, CONCAT(' ', last_name)) AS "Full Name", 
CONCAT('Phone: ', CONCAT(phone_number, CONCAT(' Email: ', email))) 
AS "Contact Details" from employees;

/*1.6 - 4*/
SELECT * from employees WHERE("Department ID" = 60)

/*1.6 - 5*/
SELECT last_name, "Job Title" from employees WHERE("Job Title" = 'IT_PROG');