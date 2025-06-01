SELECT * FROM employees2;

CREATE View dept_avg_salary
AS 
SELECT department_name, avg(salary) from employees2 GROUP BY department_name;

SELECT * from dept_avg_salary;

CREATE view test_view
as SELECT * from
( SELECT department_name, sum(salary) from employees2 GROUP BY department_name) as sum_dept_salary;

SELECT * from test_view; 