
ALTER Table person2 RENAME to person_details;
SELECT * from person_details;

ALTER Table person_details 
ADD COLUMN email VARCHAR(25) DEFAULT 'default@mail.com' NOT NULL;

INSERT INTO person_details (id, username, age)
VALUES (3, 'John Doe', 30)

ALTER Table person_details
DROP COLUMN email;

ALTER TABLE person_details
ALTER COLUMN username TYPE VARCHAR(50);

ALTER TABLE person_details
ALTER COLUMN age SET NOT NULL

ALTER TABLE person_details
ALTER COLUMN age drop NOT NULL

ALTER TABLE person_details
ADD Constraint unique_person_details_age UNIQUE(age)

ALTER TABLE person_details
DROP Constraint unique_person_details_age;

ALTER TABLE person_details
ADD Constraint pk2_person_details_age UNIQUE(age)

TRUNCATE table person;