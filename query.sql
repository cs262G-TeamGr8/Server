SELECT User.usrname FROM User, UserTeam, Team
WHERE User.ID = UserTeam.UsrID
AND Team.ID = UserTeam.TeamID
AND Team.name = 'Detroit Pistons';


SELECT Team.name FROM Team, UserTeam, User
WHERE User.ID = UserTeam.UsrID
AND Team.ID = UserTeam.TeamID
AND User.usrname = 'Mike Dunleavy';
