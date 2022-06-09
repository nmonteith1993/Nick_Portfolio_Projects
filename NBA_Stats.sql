-- Created a database in SQL to analyze NBA tea, data based on wins and 3-pt %
-- Used joins and created new table with combined team records data and team shooting data


SELECT team_records.TeamCity, team_records.TeamName, team_records.Conference, team_records.WINS, team_records.LOSSES, team_records.OppPointsPG, team_shooting.FG2_PCT, team_shooting.FG3_PCT
INTO stats_combined
FROM NBAStats..team_records
INNER JOIN NBAStats..team_shooting
	ON team_records.TeamID = team_shooting.TEAM_ID


SELECT *
FROM NBAStats..stats_combined