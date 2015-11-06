-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS UserTeam;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Season;
DROP TABLE IF EXISTS League;
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
    
CREATE TABLE League (
	ID integer PRIMARY KEY,
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
INSERT INTO User VALUES (1, 'Joel Anthony', 'password', 'ja@gmail.com');
INSERT INTO User VALUES (2, 'Aron Baynes', 'password', 'ab@gmail.com');
INSERT INTO User VALUES (3, 'Steve Blake', 'password', 'sb@gmail.com');
INSERT INTO User VALUES (4, 'Reggie Bullock', 'password', 'rb@gmail.com');
INSERT INTO User VALUES (5, 'Kentavious Caldwell-Pope', 'password', 'kcp@gmail.com');

INSERT INTO User VALUES (6, 'Cameron Bairstow', 'password', 'cb@gmail.com');
INSERT INTO User VALUES (7, 'Aaron Brooks', 'password', 'ab2@gmail.com');
INSERT INTO User VALUES (8, 'Jimmy Butler', 'password', 'jb@gmail.com');
INSERT INTO User VALUES (9, 'Mike Dunleavy', 'password', 'md@gmail.com');
INSERT INTO User VALUES (10, 'Cristiano Felicio', 'password', 'cf@gmail.com');

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
