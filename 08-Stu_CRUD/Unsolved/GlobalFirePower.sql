-- Drop table if exists
--DROP TABLE IF EXISTS firepower;

-- Create new table to import data
CREATE TABLE firepower (
	country VARCHAR,
	ISO3 VARCHAR,
	rank INT,
	TotalPopulation INT,
	ManpowerAvailable INT,
	TotalMilitaryPersonnel INT,
	ActivePersonnel INT,
	ReservePersonnel INT,
	TotalAircraftStrength INT,
	FighterAircraft INT,
	AttackAircraft INT,
	TotalHelicopterStrength INT,
	AttackHelicopters INT
);

----TRUNCATE TABLE firepower

-- Import data from firepower.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM firepower;

SELECT * FROM firepower WHERE FighterAircraft = 0

BEGIN TRANSACTION
--DELETE FROM firepower WHERE ReservePersonnel = 0
UPDATE firepower SET FighterAircraft = 1, 
	TotalAircraftStrength = TotalAircraftStrength + 1 
WHERE FighterAircraft = 0
--ROLLBACK TRANSACTION
--COMMIT TRANSACTION


SELECT AVG(TotalMilitaryPersonnel) AS AvgMilitaryPersonnel, 
	AVG(TotalAircraftStrength) AS AvgAircraftStrength, 
	AVG(TotalHelicopterStrength) AS AvgHelicopterStrength, 
	AVG(TotalPopulation) AS AvgPopulation
FROM firepower

