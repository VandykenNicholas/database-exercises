USE codeup_test_db;

SELECT album_name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date  FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club Band';
-- SELECT genre FROM albums WHERE album_name = 'Nevermind';
SELECT album_name  FROM albums WHERE release_date BETWEEN  1990 and 1999;
SELECT album_name FROM albums WHERE sales < 20.0;
SELECT album_name FROM albums WHERE genre = 'rock';
