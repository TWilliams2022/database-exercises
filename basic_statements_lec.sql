USE codeup_test_db;
    INSERT INTO users (username, first_name, last_name, middle_name)

    VALUES ('tyreik14','Tyreik','blake', NULL),
           ('tyreik2022','Tyreik','greg',NULL);

SELECT *
FROM users
WHERE last_name = 'blake';