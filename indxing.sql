SELECT * from employees2;

EXPLAIN ANALYSE
SELECT * from employees2 where department_name = 'HR';

CREATE INDEX idx_employees2_dept_name
ON employees2 (department_name);

SHOW data_directory;
 