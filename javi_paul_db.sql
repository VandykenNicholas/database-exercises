

DROP DATABASE IF EXISTS adlister_G_j_p_s_n;

CREATE DATABASE adlister_G_j_p_s_n;

USE adlister_G_j_p_s_n;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    users_id INT UNSIGNED NOT NULL ,
    description TEXT(5000) NOT NULL ,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);

CREATE TABLE categories(
                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    category VARCHAR(20) NOT NULL,
                    PRIMARY KEY (id)
);

CREATE TABLE ads_cat(
                           cat_id INT UNSIGNED NOT NULL ,
                           ad_id INT UNSIGNED NOT NULL ,
                           FOREIGN KEY (cat_id) REFERENCES categories (id),
                           FOREIGN KEY (ad_id) REFERENCES ads (id)
);

INSERT INTO users(email,password) VALUES
                             ('Tripp@example.com','password'),
                             ('Javi@example.com','password'),
                             ('Paul@example.com','password'),
                             ('Matt@example.com','password');

INSERT INTO ads(title, description, users_id ) VALUES
               ('70s Chevy, GOOD CONDITION, only 30K', '625 Big Block, restored interior, Power steering, new tires, OEM parts, tuned up (new belts, radiator)', 1),
               ('NVIDIA RTX 4090 TI, USED', 'Mined/ unlocked, custom water block cooling, Overclock switch, 3 Display ports, 2 HDMI, 800w', 3),
               ('Professional Skate Board: BirdHouse', 'New, Wood, Grip tape, ABEC 7 Bearing, 99 A Durometer wheels', 2),
               ('Custom Urn, Black Label, USED Once', 'Fits plus sized humans, or 3 full sized dogs, 10 cats. Optional haunting from previous owner', 4);

INSERT INTO categories(category) VALUES
                                     ('Vehicles'),
                                     ('Car'),
                                     ('Motorcycle'),
                                     ('boat'),
                                     ('Scooter'),
                                     ('Electronics'),
                                     ('Computer'),
                                     ('Hardware'),
                                     ('Software'),
                                     ('Furniture'),
                                     ('Home-Decor'),
                                     ('Priceless'),
                                     ('Heirloom'),
                                     ('Collectable');

INSERT INTO ads_cat(ad_id, cat_id) VALUES
                                       (1,1),
                                       (1,2),
                                       (1,14),
                                       (2,7),
                                       (2,6),
                                       (3,1),
                                       (3,5),
                                       (3,14),
                                       (4,10),
                                       (4,11),
                                       (4,12),
                                       (4,13),
                                       (4,14);

SELECT users.email as Email FROM users
    JOIN ads a on users.id = a.users_id
    WHERE a.users_id = 3;

SELECT categories.category as Categories FROM categories
    JOIN ads_cat ac on categories.id = ac.cat_id
    JOIN ads a on a.id = ac.ad_id
    WHERE ac.ad_id = 4;

SELECT ads.title as Title From ads
    JOIN ads_cat ac on ads.id = ac.ad_id
    JOIN categories c on ac.cat_id = c.id
    WHERE c.id = 1;

SELECT ads.title Posts FROM ads
    JOIN users u on ads.users_id = u.id
    WHERE u.id = 4;
