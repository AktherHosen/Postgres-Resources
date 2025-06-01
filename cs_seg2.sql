
SELECT * from publishers;
SELECT * from books;

SELECT b.title, b.author_name, p.name AS publisher from books b CROSS JOIN publishers p;

ALTER TABLE publishers ADD COLUMN publisher_id SERIAL;

SELECT * from books NATURAL JOIN publishers;

SELECT title, price, author_name from books
WHERE price > (
    SELECT avg(price) from books
);

SELECT title, author_name, price FROM books
WHERE id = (
    SELECT id FROM books ORDER BY price DESC LIMIT 1
);


SELECT name FROM  publishers WHERE id IN (
    SELECT publisher_id from books GROUP BY publisher_id HAVING count(*) > 1
);

SELECT * FROM publishers p 
 WHERE EXISTS (
    SELECT * FROM books b
    WHERE b.publisher_id = p.id AND b.in_stock = TRUE
 );

 SELECT * from books WHERE publisher_id IN (
    SELECT id from publishers WHERE name ILIKE '%penguin%'
 );

 SELECT * from books b JOIN publishers p ON b.publisher_id = p.id WHERE name ILIKE '%penguin%';

-- view
 CREATE View available_books
 AS
 SELECT * from books WHERE in_stock = TRUE;

SELECT * from available_books;
DROP VIEW available_books;

CREATE or replace function apply_discount(price NUMERIC, discount_percent NUMERIC)
RETURNS NUMERIC AS 
$$
BEGIN
RETURN price-(price*discount_percent/100);
END
$$  LANGUAGE PLPGSQL;

SELECT title, price, apply_discount(price, 10 ) AS discounted_price from books;