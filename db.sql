DROP TABLE IF EXISTS User
DROP TABLE IF EXISTS Season
DROP TABLE IF EXISTS Team
DROP TABLE IF EXISTS League
DROP TABLE IF EXISTS Game
DROP TABLE IF EXISTS UserTeam

CREATE TABLE User (
	ID integer PRIMARY KEY,
	username varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone varchar(50)
);

CREATE TABLE Team (
	ID integer PRIMARY KEY,
	leagueID REFERENCES League(ID),
	name varchar(50),
	contactID REFERENCES User(ID)
);

CREATE TABLE Season (
	ID integer PRIMARY KEY,
	startDate date NOT NULL,
	endDate date NOT NULL,
	name varchar(50)
);

CREATE TABLE League (
	ID integer PRIMARY KEY,
	sport varchar(50) NOT NULL,
	gender varchar(50) NOT NULL,
	level varchar(50),
	seasonID REFERENCES Season(ID)
);

CREATE TABLE Game (
	ID integer PRIMARY KEY,
	teamOneID REFERENCES Team(ID),
	teamTwoID REFERENCES Team(ID),
	scheduledTime date,
	teamOneScore integer,
	teamTwoScore integer
);

CREATE TABLE UserTeam (
	userID REFERENCES User(ID),
	teamID REFERENCES Team(ID)
);