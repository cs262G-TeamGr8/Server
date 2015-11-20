DROP TABLE IF EXISTS UserTeam;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Season;
DROP TABLE IF EXISTS League;
DROP TABLE IF EXISTS Game;

-- Create the schema.
CREATE TABLE User (
    ID integer AUTO_INCREMENT NOT NULL PRIMARY KEY, 
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
    
CREATE TABLE League (
	ID integer PRIMARY KEY,
    -- We have lots of varchars here - do we want to consider splitting them off into tables so we don't wind up with ceod bakestblal?
    sportName varchar(50),
    gender varchar(50),
    level varchar(50),
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
INSERT INTO User VALUES (NULL, 'Joel Anthony', 'password', 'janthony@gmail.com');
INSERT INTO User VALUES (NULL, 'Aron Baynes', 'password', 'abaynes@gmail.com');
INSERT INTO User VALUES (NULL, 'Steve Blake', 'password', 'sblake@gmail.com');
INSERT INTO User VALUES (NULL, 'Reggie Bullock', 'password', 'rbullock@gmail.com');
INSERT INTO User VALUES (NULL, 'Kentavious Caldwell-Pope', 'password', 'kpope@gmail.com');

INSERT INTO User VALUES (NULL, 'Cameron Bairstow', 'password', 'cbairstow@gmail.com');
INSERT INTO User VALUES (NULL, 'Aaron Brooks', 'password', 'abrooks@gmail.com');
INSERT INTO User VALUES (NULL, 'Jimmy Butler', 'password', 'jbutler@gmail.com');
INSERT INTO User VALUES (NULL, 'Mike Dunleavy', 'password', 'mdunleavy@gmail.com');
INSERT INTO User VALUES (NULL, 'Cristiano Felicio', 'password', 'cfelicio@gmail.com');

INSERT INTO Team VALUES (1, '1966-01-16', 1, 'Chicago Bulls', 'bulls@gmail.com');
INSERT INTO Team VALUES (2, '1957-01-16', 1, 'Detroit Pistons', 'pistons@gmail.com');

INSERT INTO UserTeam VALUES (1, 2);
INSERT INTO UserTeam VALUES (2, 2);
INSERT INTO UserTeam VALUES (3, 2);
INSERT INTO UserTeam VALUES (4, 2);
INSERT INTO UserTeam VALUES (5, 2);

INSERT INTO UserTeam VALUES (6, 1);
INSERT INTO UserTeam VALUES (7, 1);
INSERT INTO UserTeam VALUES (8, 1);
INSERT INTO UserTeam VALUES (9, 1);
INSERT INTO UserTeam VALUES (10, 1);

INSERT INTO Season VALUES (1, '2015-10-23', '2016-02-05', 'Late fall');

INSERT INTO League VALUES (1, 'Basketball', 'male', 'advanced', 1);

INSERT INTO Game VALUES (1, 1, 2, '2015-12-25', NULL, NULL);
