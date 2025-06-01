CREATE Table employees2(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
)

INSERT INTO employees2 (employee_name, department_name, salary, hire_date) VALUES
('Alice Smith', 'HR', 55000.00, '2020-03-15'),
('Bob Johnson', 'IT', 72000.00, '2019-06-01'),
('Carol Williams', 'Finance', 67000.00, '2021-01-20'),
('David Brown', 'IT', 85000.00, '2018-09-10'),
('Eve Davis', 'HR', 50000.00, '2022-02-05'),
('Frank Miller', 'Finance', 62000.00, '2020-11-12'),
('Grace Wilson', 'Sales', 48000.00, '2023-07-25'),
('Henry Moore', 'Sales', 51000.00, '2022-10-10'),
('Ivy Taylor', 'Marketing', 60000.00, '2021-05-03'),
('Jack Anderson', 'Marketing', 61000.00, '2019-08-19'),
('Karen Thomas', 'Finance', 75000.00, '2020-06-22'),
('Leo Jackson', 'IT', 91000.00, '2017-12-01'),
('Mona White', 'HR', 53000.00, '2023-01-17'),
('Nick Harris', 'Sales', 49500.00, '2021-04-10'),
('Olivia Martin', 'IT', 80000.00, '2023-03-09'),
('Paul Lewis', 'Marketing', 62000.00, '2022-09-15'),
('Quinn Walker', 'Sales', 47000.00, '2019-07-07'),
('Rachel Hall', 'Finance', 79000.00, '2018-03-28'),
('Steve Young', 'HR', 56000.00, '2020-05-18'),
('Tina King', 'IT', 88000.00, '2021-11-05');

INSERT INTO employees2 (employee_name, department_name, salary, hire_date) VALUES
('Uma Patel', 'IT', 94000.00, '2023-08-01'),
('Victor Reed', 'Sales', 46000.00, '2020-02-19'),
('Wendy Scott', 'Finance', 73000.00, '2021-12-15'),
('Xavier Price', 'Marketing', 59000.00, '2022-03-22'),
('Yara Bennett', 'HR', 52000.00, '2023-06-30'),
('Zack Lee', 'Finance', 70500.00, '2019-11-04'),
('Abby Gray', 'IT', 87500.00, '2021-08-09'),
('Brian Cox', 'Marketing', 63500.00, '2020-07-11'),
('Cindy Lopez', 'Sales', 48000.00, '2021-01-01'),
('Derek Diaz', 'Finance', 79000.00, '2022-04-25'),
('Erin Fox', 'HR', 57000.00, '2020-10-05'),
('George Bell', 'Sales', 50500.00, '2023-01-28'),
('Hannah Cruz', 'Marketing', 66000.00, '2019-06-10'),
('Ian Russell', 'IT', 92000.00, '2018-12-21'),
('Jenny Perry', 'Finance', 74000.00, '2021-09-14'),
('Kyle Adams', 'HR', 59000.00, '2022-06-18'),
('Lily Sanders', 'Marketing', 61500.00, '2020-01-13'),
('Matt Turner', 'IT', 89900.00, '2023-04-12'),
('Nina Baker', 'Sales', 49500.00, '2022-11-07'),
('Omar Grant', 'Finance', 71000.00, '2020-08-23');


SELECT * from employees2;

-- retrieve all employees where salary is greater than the highest salary of the HR department

SELECT * from employees2 WHERE salary > (select max(salary) from employees2 WHERE department_name = 'HR');

-- can return a single value
-- can return multiple rows
-- can return a single column

SELECT *, (SELECT sum(salary) from employees2) from employees2

SELECT * from --outer query
( SELECT department_name, sum(salary) from employees2 GROUP BY department_name) as sum_dept_salary; -- sub query


