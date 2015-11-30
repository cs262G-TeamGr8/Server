-- Creates the schema and populates some dummy data for now
-- 

DROP TABLE IF EXISTS UserTeam;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Sport;
DROP TABLE IF EXISTS Season;
DROP TABLE IF EXISTS SportSeason;
DROP TABLE IF EXISTS Game;

SET @@auto_increment_increment=1;

-- Create the schema.
CREATE TABLE User (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    usrname varchar(50),
    pw varchar(50),
    email varchar(50)
    );

CREATE TABLE Season (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    startDate date,
    endDate date,
    name varchar(50)
    );

Create TABLE Sport (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(50),
    gender varchar(50),
    level varchar(50)
    );
    
CREATE TABLE SportSeason (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sportID integer REFERENCES Sport(ID),
    seasonID integer REFERENCES Season(ID)
    );
    
CREATE TABLE Game (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team1ID integer REFERENCES Team(ID),
    team2ID integer REFERENCES Team(ID),
    date datetime,
    score1 integer,
    score2 integer
    );
    
    CREATE TABLE Team (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    startDate date,
    sportID integer REFERENCES Sport(ID),
    name varchar(50),
    contact varchar(50)
    );
    
CREATE TABLE UserTeam (
    UsrID integer REFERENCES User(ID),
    TeamID integer REFERENCES Team(ID)
    );
    
-- Add sample records.
INSERT INTO User (usrname, pw, email) VALUES ('Joel Anthony', 'password', 'janthony@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Aron Baynes', 'password', 'abaynes@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Steve Blake', 'password', 'sblake@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Reggie Bullock', 'password', 'rbullock@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Kentavious Caldwell-Pope', 'password', 'kpope@gmail.com');

INSERT INTO User (usrname, pw, email) VALUES ('Cameron Bairstow', 'password', 'cbairstow@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Aaron Brooks', 'password', 'abrooks@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Jimmy Butler', 'password', 'jbutler@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Mike Dunleavy', 'password', 'mdunleavy@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Cristiano Felicio', 'password', 'cfelicio@gmail.com');

INSERT INTO User (usrname, pw, email) VALUES ('Chris Anderson', 'password', 'canderson@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Chris Bosh', 'password', 'cbosg@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Luol Deng', 'password', 'ldeng@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Goran Dragic', 'password', 'gdragic@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Gerald Green', 'password', 'ggreen@gmail.com');

INSERT INTO User (usrname, pw, email) VALUES ('Christian Wood', 'password', 'cwood@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Hollis Thompson', 'password', 'hthompson@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Isaiah Canaan', 'password', 'icanaan@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('JaKarr Sampson', 'password', 'jsampson@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Jahlil Okafor', 'password', 'jokafor@gmail.com');

INSERT INTO Team (startDate, sportID, name, contact) VALUES ('1957-01-16', 1, 'Detroit Pistons', 'pistons@gmail.com');
INSERT INTO Team (startDate, sportID, name, contact) VALUES ('1966-01-16', 1, 'Chicago Bulls', 'bulls@gmail.com');
INSERT INTO Team (startDate, sportID, name, contact) VALUES ('2015-11-20', 1, 'Yellow Vitamin Water', 'yvwater@gmail.com');
INSERT INTO Team (startDate, sportID, name, contact) VALUES ('2015-11-03', 1, 'Goal Diggers', 'gdiggers@gmail.com');

INSERT INTO User (usrname, pw, email) VALUES ('Jack Wang', 'password', 'jwang@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Sharon Alguetti', 'password', 'salguetti@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Krishnateja Avvari', 'password', 'kavvari@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Victor Liu', 'password', 'vliu@gmail.com');

INSERT INTO User (usrname, pw, email) VALUES ('Lily Zhang', 'password', 'lzhang@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Judy Hugh', 'password', 'jhugh@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Prachi Jha', 'password', 'pjha@gmail.com');
INSERT INTO User (usrname, pw, email) VALUES ('Amy Wang', 'password', 'awang@gmail.com');


INSERT INTO Team (startDate, sportID, name, contact) VALUES ('2015-11-13', 2, 'Wind Chuckers', 'wchuckers@gmail.com');
INSERT INTO Team (startDate, sportID, name, contact) VALUES ('2015-11-07', 2, 'Pink Rebels', 'prebels@gmail.com');
INSERT INTO Team (startDate, sportID, name, contact) VALUES ('2015-11-02', 2, 'Dark Tornadoes', 'dtornadoes@gmail.com');
INSERT INTO Team (startDate, sportID, name, contact) VALUES ('2015-11-09', 2, 'Killer Sonics', 'ksonics@gmail.com');

INSERT INTO UserTeam VALUES (1, 1);
INSERT INTO UserTeam VALUES (2, 1);
INSERT INTO UserTeam VALUES (3, 1);
INSERT INTO UserTeam VALUES (4, 1);
INSERT INTO UserTeam VALUES (5, 1);

INSERT INTO UserTeam VALUES (6, 2);
INSERT INTO UserTeam VALUES (7, 2);
INSERT INTO UserTeam VALUES (8, 2);
INSERT INTO UserTeam VALUES (9, 2);
INSERT INTO UserTeam VALUES (10, 2);

INSERT INTO UserTeam VALUES (11, 3);
INSERT INTO UserTeam VALUES (12, 3);
INSERT INTO UserTeam VALUES (13, 3);
INSERT INTO UserTeam VALUES (14, 3);
INSERT INTO UserTeam VALUES (15, 3);

INSERT INTO UserTeam VALUES (16, 4);
INSERT INTO UserTeam VALUES (17, 4);
INSERT INTO UserTeam VALUES (18, 4);
INSERT INTO UserTeam VALUES (19, 4);
INSERT INTO UserTeam VALUES (20, 4);

INSERT INTO UserTeam VALUES (21, 5);
INSERT INTO UserTeam VALUES (22, 5);
INSERT INTO UserTeam VALUES (23, 5);
INSERT INTO UserTeam VALUES (24, 5);

INSERT INTO UserTeam VALUES (25, 6);
INSERT INTO UserTeam VALUES (26, 6);
INSERT INTO UserTeam VALUES (27, 6);
INSERT INTO UserTeam VALUES (28, 6);

INSERT INTO UserTeam VALUES (1, 7);
INSERT INTO UserTeam VALUES (2, 7);
INSERT INTO UserTeam VALUES (11, 7);
INSERT INTO UserTeam VALUES (12, 7);

INSERT INTO UserTeam VALUES (4, 8);
INSERT INTO UserTeam VALUES (9, 8);
INSERT INTO UserTeam VALUES (14, 8);
INSERT INTO UserTeam VALUES (19, 8);

INSERT INTO Season (startDate, endDate, name) VALUES ('2015-10-23', '2016-02-05', 'Late fall');

INSERT INTO Sport (name, gender, level) VALUES ('Basketball', 'male', 'advanced');
INSERT INTO Sport (name) VALUES ('Ping Pong');
INSERT INTO Sport (name) VALUES ('Soccer');
INSERT INTO Sport (name, gender) VALUES ('Flag Football', 'male');
INSERT INTO Sport (name) VALUES ('Volleyball');

INSERT INTO SportSeason (sportID, seasonID) VALUES (1, 1);
INSERT INTO SportSeason (sportID, seasonID) VALUES (2, 1);
INSERT INTO SportSeason (sportID, seasonID) VALUES (3, 1);
INSERT INTO SportSeason (sportID, seasonID) VALUES (4, 1);
INSERT INTO SportSeason (sportID, seasonID) VALUES (5, 1);

INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (1, 2, '2015-11-20 17:00:00', 57, 78);
INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (3, 4, '2015-11-20 17:00:00', 63, 69);
INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (1, 3, '2015-1-1 17:00:00', NULL, NULL);
INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (2, 4, '2015-1-1 17:00:00', NULL, NULL);

INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (5, 6, '2015-11-21 17:00:00', 3, 2);
INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (7, 8, '2015-11-21 17:00:00', 0, 3);
INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (5, 7, '2015-2-1 17:00:00', NULL, NULL);
INSERT INTO Game (team1ID, team2ID, date, score1, score2) VALUES (6, 8, '2015-2-1 17:00:00', NULL, NULL);


INSERT INTO User (usrname, pw, email) VALUES ('John Doe', 'password', 'johndoe@gmail.com');
