create table employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
)

CREATE Table departments(
    dept_id int,
    dept_name VARCHAR(50)
);

insert into employees values(1, 'jhon doe', 101);
insert into employees VALUES(2, 'jane smith', 102);

insert into departments values(101, 'Human Resource');
insert into departments values(102, 'Marketting');

SELECT * from employees;
SELECT * from departments;

-- CROSS JOIN
SELECT * FROM employees CROSS JOIN departments;

-- NATURAL JOIN (we need common column to perform natural join. but postgres wouldn't trow error if there is no common column in both tables)
SELECT * FROM employees NATURAL JOIN departments;