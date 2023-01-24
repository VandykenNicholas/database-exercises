USE codeup_test_db;

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco' OR genre = 'Disco';

DELETE FROM albums WHERE artist = 'Madonna';
