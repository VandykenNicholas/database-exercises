USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        album_name VARCHAR(50),
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(10) DEFAULT 'MUSIC',
                        PRIMARY KEY (id)
);
