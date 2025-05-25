CREATE Table student(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(3),
    country VARCHAR(50)
)

INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-03-15', 'O+', 'USA'),
('Jane', 'Smith', 21, 'B', 'Mathematics', 'jane.smith@example.com', '2003-07-22', 'A-', 'Canada'),
('Michael', 'Johnson', 22, 'A', 'Physics', 'michael.j@example.com', '2002-01-10', 'B+', 'UK'),
('Emily', 'Davis', 19, 'B+', 'Chemistry', 'emily.davis@example.com', '2005-06-18', 'AB-', 'Australia'),
('William', 'Brown', 23, 'C', 'Biology', 'will.brown@example.com', '2001-09-09', 'O-', 'India'),
('Olivia', 'Wilson', 20, 'A', 'Computer Science', 'olivia.w@example.com', '2004-02-25', 'A+', 'Germany'),
('James', 'Miller', 18, 'B-', 'History', 'james.miller@example.com', '2006-12-12', 'B-', 'France'),
('Sophia', 'Moore', 21, 'A+', 'Philosophy', 'sophia.moore@example.com', '2003-11-03', 'O+', 'Italy'),
('Benjamin', 'Taylor', 22, 'B', 'Engineering', 'ben.taylor@example.com', '2002-05-14', 'A-', 'Brazil'),
('Isabella', 'Anderson', 19, 'C+', 'Economics', 'isa.anderson@example.com', '2005-08-30', 'AB+', 'Spain'),
('Daniel', 'Thomas', 20, 'A-', 'Statistics', 'daniel.t@example.com', '2004-04-19', 'B+', 'Netherlands'),
('Mia', 'Jackson', 21, 'B+', 'English', 'mia.jackson@example.com', '2003-10-07', 'O-', 'Sweden'),
('Logan', 'White', 22, 'A', 'Political Science', 'logan.white@example.com', '2002-03-29', 'A+', 'Norway'),
('Charlotte', 'Harris', 20, 'B-', 'Art', 'charlotte.h@example.com', '2004-06-11', 'AB-', 'Mexico'),
('Lucas', 'Martin', 23, 'C', 'Law', 'lucas.martin@example.com', '2001-01-01', 'O+', 'Japan');


SELECT * from student;
select email, age, first_name from student

SELECT email as student_email from student;

SELECT first_name, last_name, dob from student ORDER BY dob DESC

SELECT DISTINCT blood_group from student;

-- data filtering 
-- select student from usa;
-- select student with 'A' grade in computer science
-- select student with specific blood group ('A+)
-- select student from the usa or from australia
-- select student from the usa or from australia and the age is 20
-- select student with a grade of 'A' or 'B' in Math or Physics
-- select student older than 20 years old and course is 'Physics'

SELECT * from student age
WHERE country = 'USA';

SELECT * from student
WHERE grade = 'A+' AND course = 'Computer Science';

SELECT * from student
WHERE blood_group = 'A+';

SELECT * FROM student
WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM student
WHERE country = 'USA' OR country = 'Australia' AND age = 20;

SELECT * FROM student
WHERE grade = 'A' or grade = 'B' AND course = 'Mathematics' OR course = 'Physics';

SELECT * from student WHERE age >= 20 AND course = 'Physics'

SELECT * from student
where country <> 'USA'

SELECT upper(first_name) as "First Name",  * from student;

SELECT concat(first_name, ' ', last_name) as "Full Name" from student;
-- @Scalar()
-- UPPER() Converts an string to uppercase
-- Lower() converts an string to lowercase
-- CONCAT() Concatenates two or more strings.
-- LENGTH() Return the numbers of characters


-- @AGGREGATE FUNCTION
-- AVG() Calculates the average value of a numeric column.
-- MAX() Returns the maximum value in a set.
-- MIN() Returns the minimum value in a set.
-- SUM() Returns the sum of a numeric column.
-- COUNT() Returns the number of rows that match a specified criterion.


SELECT COUNT(*) FROM student;

SELECT avg(age) FROM student;

SELECT max(length(first_name)) FROM student;