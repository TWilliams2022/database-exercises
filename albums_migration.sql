USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums
(
        id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key ,
        artist VARCHAR(200) NOT NULL,
        album_name VARCHAR(200) NOT NULL,
        release_date INT UNSIGNED NOT NULL,
        sales FLOAT ,
        genre VARCHAR(220) NOT NULL
);
SHOW TABLES;
DESCRIBE albums;
