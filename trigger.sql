-- A triggeris a database object in PostgreSQL (and other database management systems) that automatically excecutes a specified set of actions in response to certain database events or conditions

-- Table-Level Events:
   -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events:
   -- Database startup, Database shutdown, connection start or end etc..
--SYNTAX
-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- {FOR EACH ROW}
-- EXECUTE FUNCTION function_name();

CREATE Table my_users(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(100)
);
insert into my_users (user_name, email) values
('mezba', 'mezba@gmail.com'),
('mir', 'mir@mail.com');

CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);


SELECT * from my_users;
SELECT * from deleted_users_audit;

CREATE or REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        INSERT into deleted_users_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'Deleted user audit log created!';
        RETURN OLD;
    END
$$

CREATE or REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE id = 1;

SELECT * from deleted_users_audit;

