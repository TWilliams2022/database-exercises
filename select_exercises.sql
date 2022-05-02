USE codeup_test_db;

# SELECT album_name, artist FROM albums WHERE id = 2;
#
# SELECT artist FROM albums WHERE id = 1;
#
# SELECT artist, release_date FROM albums WHERE id = 3;
#
# SELECT artist, genre FROM albums WHERE id = 4;

SELECT *
FROM albums
WHERE release_date > 1960;



