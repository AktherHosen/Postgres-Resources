ALTER Table books ADD COLUMN genre TEXT;
ALTER TABLE books DROP COLUMN genre;
ALTER TABLE books  ALTER COLUMN in_stock type TEXT;
ALTER TABLE books DROP COLUMN in_stock;
ALTER TABLE books ADD COLUMN in_stock BOOLEAN DEFAULT true;
ALTER Table books RENAME COLUMN author_name to author;

SELECT * from books;

SELECT title , price from books;
SELECT * from books where in_stock = true;

SELECT * from books WHERE author = 'George Orwell';

SELECT title, length(title) FROM books;
SELECT count(*) from books;
SELECT avg(price) from books;
SELECT MAX(price), MIN(price) from books;
SELECT * from books where price BETWEEN 10 AND 200;

-- searchterm
SELECT * FROM books WHERE title LIKE 'The%';
SELECT * FROM books WHERE title ILIKE 'the%';
SELECT * from books where author LIKE '%Orwell%';

SELECT * FROM books WHERE author IN ('George Orwell', 'Harper Lee');

SELECT * from books LIMIT 3;
SELECT * from books LIMIT 3 OFFSET 3;
SELECT * from books;


UPDATE books SET price = price*1.10;

SELECT author, count(*) from books GROUP BY author;
SELECT author, count(*) FROM books GROUP BY author HAVING count(*) > 1;

ALTER TABLE books DROP Constraint books_publisher_id_fkey;
ALTER TABLE books ADD constraint books_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES publishers(id) on delete CASCADE;
DELETE FROM publishers WHERE id = 3;
SELECT * from publishers;
SELECT * from books;
DROP Table books;
DROP TABLE publishers;

SELECT b.title, p.name as publisher 
FROM books b 
INNER JOIN publishers p 
ON b.publisher_id = p.id;

SELECT b.title, b.author_name, p.name as publisher FROM books b LEFT JOIN publishers p on b.publisher_id = p.id;

SELECT b.title, b.author_name, p.name as publisher FROM books b RIGHT JOIN publishers p on b.publisher_id = p.id;

SELECT b.title, b.author_name, p.name as publisher FROM books b FULL JOIN publishers p on b.publisher_id = p.id;


SELECT CURRENT_DATE;

SELECT extract(year from CURRENT_DATE) as current_year;
SELECT extract(year from CURRENT_DATE) as current_year, 
       extract(month from CURRENT_DATE) as current_month, 
       extract(day from CURRENT_DATE) as current_day;

       