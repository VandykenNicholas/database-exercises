DROP DATABASE IF EXISTS quiz_take_db;

CREATE DATABASE quiz_take_db;

USE quiz_take_db;

CREATE TABLE admin (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        user_name VARCHAR(15) NOT NULL UNIQUE ,
        password varchar(20) NOT NULL,
        PRIMARY KEY (id)
);

CREATE TABLE students (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_name VARCHAR(15) NOT NULL UNIQUE ,
                       password varchar(20) NOT NULL,
                       PRIMARY KEY (id)
);
CREATE TABLE quizzes (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE ,
                       name VARCHAR(30) NOT NULL UNIQUE ,
                       creator INT UNSIGNED NOT NULL ,
                       PRIMARY KEY (id),
                       FOREIGN KEY (creator) REFERENCES admin (id)
);
CREATE TABLE questions (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE ,
                         question TEXT NOT NULL,
                         answer TEXT NOT NULL,
                         PRIMARY KEY (id)
);
CREATE TABLE Score (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE ,
                         student INT UNSIGNED,
                         score FLOAT NOT NULL,
                         quiz INT UNSIGNED,
                         PRIMARY KEY (id),
                         FOREIGN KEY (student) REFERENCES students (id),
                         FOREIGN KEY (quiz) REFERENCES quizzes (id)
);
CREATE TABLE quiz_quest (
                           quiz_id INT UNSIGNED NOT NULL,
                           question INT UNSIGNED NOT NULL,
                           FOREIGN KEY (quiz_id) REFERENCES quizzes(id),
                           FOREIGN KEY (question) REFERENCES questions(id)
)
