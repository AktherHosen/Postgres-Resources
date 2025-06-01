INSERT INTO publishers (name) VALUES
('Penguin Random House'),   -- id: 1
('HarperCollins'),          -- id: 2
('Simon & Schuster'),       -- id: 3
('Hachette Book Group'),    -- id: 4
('Macmillan Publishers'),   -- id: 5
('Oxford University Press'),-- id: 6
('Cambridge University Press'); -- id: 7


INSERT INTO books (title, author_name, published_year, price, in_stock, publisher_id) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 10.99, TRUE, 1),
('1984', 'George Orwell', 1949, 9.99, TRUE, 2),
('To Kill a Mockingbird', 'Harper Lee', 1960, 12.50, TRUE, 2),
('Pride and Prejudice', 'Jane Austen', 1813, 8.99, FALSE, 3),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 11.49, TRUE, 1),
('The Hobbit', 'J.R.R. Tolkien', 1937, 13.99, FALSE, 4),
('Fahrenheit 451', 'Ray Bradbury', 1953, 10.00, TRUE, 5),
('Moby Dick', 'Herman Melville', 1851, 9.49, FALSE, 5),
-- For Date/Grouping/Foreign key deletion practice
('War and Peace', 'Leo Tolstoy', 1869, 14.99, TRUE, 3),
('Crime and Punishment', 'Fyodor Dostoevsky', 1866, 11.25, TRUE, 4),
-- For UPDATE, LIKE, ILIKE
('The Da Vinci Code', 'Dan Brown', 2003, 15.99, TRUE, 2),
('Digital Fortress', 'Dan Brown', 1998, 7.99, FALSE, 2),
('Angels & Demons', 'Dan Brown', 2000, 8.99, TRUE, 2),
-- For Pagination & newer books
('The Midnight Library', 'Matt Haig', 2020, 16.99, TRUE, 1),
('Atomic Habits', 'James Clear', 2018, 19.99, TRUE, 1),
('Sapiens', 'Yuval Noah Harari', 2011, 18.99, TRUE, 6),
('Homo Deus', 'Yuval Noah Harari', 2016, 17.99, TRUE, 6),
('Educated', 'Tara Westover', 2018, 14.99, TRUE, 7),
('Thinking, Fast and Slow', 'Daniel Kahneman', 2011, 13.49, FALSE, 7);

INSERT INTO books (title, author_name, published_year, price, in_stock, publisher_id) VALUES
('The Luka', 'A. Sutherland', 1965, 30.11, FALSE, NULL)