-- Ensure you've run BowlingLeagueStructure.sql
-- and BowlingLeagueData.sql in the Sample Databases folder
-- in order to run this example. 

ALTER SESSION SET CURRENT_SCHEMA = BowlingLeagueSample;

SELECT Teams1.TeamID AS Team1ID, Teams1.TeamName AS Team1Name, Teams2.TeamID AS Team2ID, Teams2.TeamName AS Team2Name
FROM Teams Teams1 CROSS JOIN Teams Teams2
WHERE Teams2.TeamID > Teams1.TeamID
ORDER BY Teams1.TeamID, Teams2.TeamID;
