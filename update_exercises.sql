USE codeup_test_db;

# SELECT *
# FROM albums
# WHERE release_date < '1980';

SELECT *
FROM albums;

SELECT *
FROM albums
WHERE artist = 'Micheal Jackson';


UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

UPDATE albums
SET release_date = 1800;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson'

