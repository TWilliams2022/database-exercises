USE employees;

ALTER TABLE albums
    ADD UNIQUE (artist, album_name);

DESCRIBE departments;
DESCRIBE employees;
DESCRIBE dept_emp;
DESCRIBE dept_manager;

INSERT INTO albums (artist, album_name, release_date, sales, genre)
VALUES ('TWILL','@GMAIL','2021','50','M');



CREATE TABLE IF NOT EXISTS posts
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255),
    title TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);