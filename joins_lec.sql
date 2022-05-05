USE fortran_db;
CREATE DATABASE IF NOT EXISTS fortran_db;
#CREATING TABLES
# column definitions must match

CREATE DATABASE IF NOT EXISTS teams
( id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR (250) NOT NULL,
    team_name VARCHAR (250) NOT NULL);

# what data do we want from what table

CREATE DATABASE IF NOT EXISTS players
( id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (250) NOT NULL,
    last_name VARCHAR (250) NOT NULL,
    jersey_number INT UNSIGNED NOT NULL,
    isActive TINYINT UNSIGNED NOT NULL,
#         TINYINT means true or false for boolean
    team_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams(id));

# a table that creates the table between the 2

CREATE DATABASE IF NOT EXISTS positions
( id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position CHAR (4) NOT NULL,);

#join/associative table
#will not have a primary key
#referencing both the position and players id

CREATE DATABASE IF NOT EXISTS player_position
( player_id INT UNSIGNED NOT NULL ,
    position_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (position_id) REFERENCES positions(id)
    FOREIGN KEY (player_id) REFERENCES positions(id);
);


# PUTTING THE VALUES IN teams
INSERT INTO teams(city, name)
VALUES ('Arlington', 'Texas Rangers'),
       ('Houston', ' Astros'),
       ('Los Angeles', 'Dodgers'),
       ('Washington', 'Nationals');


# PUTTING THE VALUES IN players
INSERT INTO players.(first_name, last_name, jersey_number, is_active, team_id)
VALUES ('Corey', 'Saeger', 5, 1, 1),
       ('Luis', 'Garcia', 77, 1, 2),
       ('Kenny', 'Powers', 99, 0, NULL);

INSERT INTO positions (postion)
VALUES ('SS'),
       ('2B'),
       ('RF'),
       ('CF'),
       ('P'),
       ('C');

INSERT INTO player_position
VALUES (1, 2,
        (3, 4),
        (5, 6);

