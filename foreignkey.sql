create Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) NOT NULL
)

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES "user"(id) on delete CASCADE
);

alter TABLE post alter COlumn user_id set not NULL;
drop Table post;
drop Table "user";

INSERT INTO "user" (username) VALUES
('alice'),
('bob'),
('charlie'),
('david'),
('eve'),
('frank'),
('grace'),
('heidi');

INSERT INTO post (title, user_id) VALUES
('How to learn SQL fast', 1),
('Best SQL books in 2025', 1),
('PostgreSQL vs MySQL', 2),
('Advanced SQL tricks', 2),
('Getting started with Python', 3),
('Django and PostgreSQL setup', 3),
('React and Node integration', 4),
('Data analysis with Pandas', 4),
('Cybersecurity basics', 5),
('SQL injection explained', 5),
('Blockchain technology', 6),
('Web3 essentials', 6),
('Cloud computing overview', 7),
('AWS vs Azure', 7),
('Database indexing strategies', 8),
('Common SQL errors', 1),
('Beginner frontend roadmap', 2),
('OAuth and JWT explained', 3);

SELECT * from post;
SELECT * from "user";

insert into post (title,user_id) VALUES ('test', NULL);


-- deletion constraint on delete user
-- cascading deletion  -> on delete cascade
-- setting null -> on delete set null
-- restrict deletion -> on delete restrict / on delete no action (default)
-- set default value -> on delete set default

DELETE from "user" where id=4;

SELECT * from "user";
select * from post;


select p.title, u.username from post p LEFT join "user" u ON p.user_id = u.id;
select p.title, u.username from post p RIGHT join "user" u ON p.user_id = u.id;
select p.title, u.username from post p INNER join "user" u ON p.user_id = u.id;

insert into post(title, user_id) VALUES
('test',NULL)

select * from post p FULL join "user" u ON p.user_id = u.id;