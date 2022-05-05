USE employees;

ALTER TABLE users
    ADD UNIQUE (username);

DESCRIBE users;

INSERT INTO users (username, email, first_name, last_name, middle_name)
VALUES ('TWILL','@GMAIL','T','W','M');

CREATE TABLE IF NOT EXISTS posts
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(255),
title TEXT NOT NULL,
user_id INT UNSIGNED NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);

DESCRIBE posts;

INSERT INTO posts(content, title, user_id)
VALUES ('all of my content','my title', 1);


