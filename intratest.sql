-- Creates the schema and populates some dummy data for now
-- 

DROP TABLE IF EXISTS UserTeam;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Sport;
DROP TABLE IF EXISTS Season;
DROP TABLE IF EXISTS SportSeason;
DROP TABLE IF EXISTS Game;

-- Create the schema.
CREATE TABLE User (
    ID integer PRIMARY KEY, 
    usrname varchar(50),
    pw varchar(50),
    email varchar(50)
    );

CREATE TABLE Season (
	ID integer PRIMARY KEY,
    startDate date,
    endDate date,
    name varchar(50)
    );

Create TABLE Sport (
    ID integer PRIMARY KEY,
    name varchar(50),
    gender varchar(50),
    level varchar(50)
    );
    
CREATE TABLE SportSeason (
	ID integer PRIMARY KEY,
    sportID integer REFERENCES Sport(ID),
    seasonID integer REFERENCES Season(ID)
    );
    
CREATE TABLE Game (
	ID integer PRIMARY KEY,
    team1ID integer REFERENCES Team(ID),
    team2ID integer REFERENCES Team(ID),
    date date,
    score1 integer,
    score2 integer
    );
    
    CREATE TABLE Team (
	ID integer PRIMARY KEY,
    startDate date,
    leagueID integer REFERENCES League(ID),
    name varchar(50),
    contact varchar(50)
    );
    
CREATE TABLE UserTeam (
	UsrID integer REFERENCES User(ID),
    TeamID integer REFERENCES Team(ID)
    );
    
-- Add sample records.
INSERT INTO User VALUES (1, 'Joel Anthony', 'password', 'janthony@gmail.com');
INSERT INTO User VALUES (2, 'Aron Baynes', 'password', 'abaynes@gmail.com');
INSERT INTO User VALUES (3, 'Steve Blake', 'password', 'sblake@gmail.com');
INSERT INTO User VALUES (4, 'Reggie Bullock', 'password', 'rbullock@gmail.com');
INSERT INTO User VALUES (5, 'Kentavious Caldwell-Pope', 'password', 'kpope@gmail.com');

INSERT INTO User VALUES (6, 'Cameron Bairstow', 'password', 'cbairstow@gmail.com');
INSERT INTO User VALUES (7, 'Aaron Brooks', 'password', 'abrooks@gmail.com');
INSERT INTO User VALUES (8, 'Jimmy Butler', 'password', 'jbutler@gmail.com');
INSERT INTO User VALUES (9, 'Mike Dunleavy', 'password', 'mdunleavy@gmail.com');
INSERT INTO User VALUES (10, 'Cristiano Felicio', 'password', 'cfelicio@gmail.com');

INSERT INTO User VALUES (11, 'Chris Anderson', 'password', 'canderson@gmail.com');
INSERT INTO User VALUES (12, 'Chris Bosh', 'password', 'cbosg@gmail.com');
INSERT INTO User VALUES (13, 'Luol Deng', 'password', 'ldeng@gmail.com');
INSERT INTO User VALUES (14, 'Goran Dragic', 'password', 'gdragic@gmail.com');
INSERT INTO User VALUES (15, 'Gerald Green', 'password', 'ggreen@gmail.com');

INSERT INTO User VALUES (16, 'Christian Wood', 'password', 'cwood@gmail.com');
INSERT INTO User VALUES (17, 'Hollis Thompson', 'password', 'hthompson@gmail.com');
INSERT INTO User VALUES (18, 'Isaiah Canaan', 'password', 'icanaan@gmail.com');
INSERT INTO User VALUES (19, 'JaKarr Sampson', 'password', 'jsampson@gmail.com');
INSERT INTO User VALUES (20, 'Jahlil Okafor', 'password', 'jokafor@gmail.com');

INSERT INTO Team VALUES (1, '1957-01-16', 1, 'Detroit Pistons', 'pistons@gmail.com');
INSERT INTO Team VALUES (2, '1966-01-16', 1, 'Chicago Bulls', 'bulls@gmail.com');
INSERT INTO Team VALUES (3, '2015-11-20', 1, 'Yellow Vitamin Water', 'yvwater@gmail.com');
INSERT INTO Team VALUES (4, '2015-11-03', 1, 'Goal Diggers', 'gdiggers@gmail.com');

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

INSERT INTO Season VALUES (1, '2015-10-23', '2016-02-05', 'Late fall');

INSERT INTO Sport VALUES (1, 'Basketball', 'male', 'advanced');

INSERT INTO SportSeason VALUES (1, 1, 1);

INSERT INTO Game VALUES (1, 1, 2, '2015-12-25', NULL, NULL);
