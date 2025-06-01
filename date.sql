-- Active: 1748184719496@@127.0.0.1@5432@ph
SELECT now();

CREATE Table timeZ(
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
);

 INSERT into timez values(
    '2023-10-24 12:00:00',
    '2023-10-24 12:00:00'
);
SELECT * from timez;

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

--format the timestamp
SELECT to_char(now(), 'Day');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '2000-08-08');

SELECT *, age(CURRENT_DATE, dob) from student;

SELECT extract(year from current_date);
SELECT 0::BOOLEAN;

SELECT country, count(*) from student GROUP BY country;

SELECT country, avg(age) from student
GROUP BY country HAVING avg(age) > 20;

SELECT extract(year from dob) as birth_year, count(*) from student
    GROUP BY birth_year;

SELECT count(*) from student;

