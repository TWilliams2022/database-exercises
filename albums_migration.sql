USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums
(
        id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key ,
        artist VARCHAR(100) NOT NULL,
        album_name VARCHAR(100) NOT NULL,
        release_date DATE NOT NULL,
        sales FLOAT,
        genre VARCHAR(220) NOT NULL
);

DESCRIBE albums;
