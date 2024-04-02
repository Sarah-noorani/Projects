create database project;
use project; 

CREATE TABLE Driver (
    driverid INT PRIMARY KEY,
    dob DATE,
    nationality VARCHAR(255),
    team  VARCHAR(255),
    name VARCHAR(255)
);


CREATE TABLE Constructor (
    constructorid  INT PRIMARY KEY,
    name VARCHAR(255),
    nationality VARCHAR(255),
    constructorref  VARCHAR(255)
);

CREATE TABLE Circuit (
    circuitid INT PRIMARY KEY,
    location VARCHAR(255),
	place VARCHAR(255),
    country VARCHAR(255),
    circuitRef VARCHAR(255)
);

CREATE TABLE Races (
    raceid INT PRIMARY KEY, 
    round INT,
    circuitid INT REFERENCES Circuit(circuitid),
    year INT,
    racename VARCHAR(255),
    racedate DATE
);

CREATE TABLE Championship (
    seasonid INT PRIMARY KEY,
    year INT,
    constructor VARCHAR(255),
    driver VARCHAR(255)
);


INSERT INTO Circuit (circuitid, circuitRef, place, location, country)
VALUES
(1, 'albert_park', 'Albert Park Grand Prix Circuit', 'Melbourne', 'Australia'),
(3, 'bahrain', 'Bahrain International Circuit', 'Sakhir', 'Bahrain'),
(4, 'catalunya', 'Circuit de Barcelona-Catalunya', 'Montmeló', 'Spain'),
(6, 'monaco', 'Circuit de Monaco', 'Monte-Carlo', 'Monaco'),
(7, 'villeneuve', 'Circuit Gilles Villeneuve', 'Montreal', 'Canada'),
(9, 'silverstone', 'Silverstone Circuit', 'Silverstone', 'UK'),
(11, 'hungaroring', 'Hungaroring', 'Budapest', 'Hungary'),
(13, 'spa', 'Circuit de Spa-Francorchamps', 'Spa', 'Belgium'),
(14, 'monza', 'Autodromo Nazionale di Monza', 'Monza', 'Italy'),
(15, 'marina_bay', 'Marina Bay Street Circuit', 'Marina Bay', 'Singapore'),
(18, 'interlagos', 'Autódromo José Carlos Pace', 'São Paulo', 'Brazil'),
(22, 'suzuka', 'Suzuka Circuit', 'Suzuka', 'Japan'),
(80, 'vegas', 'Las Vegas Strip Street Circuit', 'Las Vegas', 'United States'),
(24, 'yas_marina', 'Yas Marina Circuit', 'Abu Dhabi', 'UAE'),
(32, 'rodriguez', 'Autódromo Hermanos Rodríguez', 'Mexico City', 'Mexico'),
(39, 'zandvoort', 'Circuit Park Zandvoort', 'Zandvoort', 'Netherlands'),
(70, 'red_bull_ring', 'Red Bull Ring', 'Spielberg', 'Austria'),
(73, 'baku', 'Baku City Circuit', 'Baku', 'Azerbaijan'),
(78, 'losail', 'Losail International Circuit', 'Al Daayen', 'Qatar'),
(79, 'miami', 'Miami International Autodrome', 'Miami', 'United States');

INSERT INTO Constructor (constructorId, constructorRef, name, nationality)
VALUES
(1, 'mclaren', 'McLaren', 'British'),
(131, 'mercedes', 'Mercedes', 'German'),
(6, 'ferrari', 'Ferrari', 'Italian'),
(9, 'red_bull', 'Red Bull', 'Austrian'),
(210, 'haas', 'Haas F1 Team', 'American');

INSERT INTO Races (raceid, year, round, circuitid, racename, racedate)
VALUES
(1075, 2022, 2, 77, 'Saudi Arabian Grand Prix', '2022-03-27'),
(1076, 2022, 3, 1, 'Australian Grand Prix', '2022-04-10'),
(1077, 2022, 4, 21, 'Emilia Romagna Grand Prix', '2022-04-24'),
(1078, 2022, 5, 79, 'Miami Grand Prix', '2022-05-08'),
(1079, 2022, 6, 4, 'Spanish Grand Prix', '2022-05-22'),
(1080, 2022, 7, 6, 'Monaco Grand Prix', '2022-05-29'),
(1081, 2022, 8, 73, 'Azerbaijan Grand Prix', '2022-06-12'),
(1082, 2022, 9, 7, 'Canadian Grand Prix', '2022-06-19'),
(1083, 2022, 10, 9, 'British Grand Prix', '2022-07-03'),
(1084, 2022, 11, 70, 'Austrian Grand Prix', '2022-07-10'),
(1085, 2022, 12, 34, 'French Grand Prix', '2022-07-24'),
(1086, 2022, 13, 11, 'Hungarian Grand Prix', '2022-07-31'),
(1087, 2022, 14, 13, 'Belgian Grand Prix', '2022-08-28'),
(1088, 2022, 15, 39, 'Dutch Grand Prix', '2022-09-04'),
(1089, 2022, 16, 14, 'Italian Grand Prix', '2022-09-11'),
(1091, 2022, 17, 15, 'Singapore Grand Prix', '2022-10-02'),
(1092, 2022, 18, 22, 'Japanese Grand Prix', '2022-10-09'),
(1093, 2022, 19, 69, 'United States Grand Prix', '2022-10-23'),
(1094, 2022, 20, 32, 'Mexico City Grand Prix', '2022-10-30'),
(1095, 2022, 21, 18, 'Brazilian Grand Prix', '2022-11-13'),
(1096, 2022, 22, 24, 'Abu Dhabi Grand Prix', '2022-11-20'),
(1098, 2023, 1, 3, 'Bahrain Grand Prix', '2023-03-05'),
(1099, 2023, 2, 77, 'Saudi Arabian Grand Prix', '2023-03-19'),
(1100, 2023, 3, 1, 'Australian Grand Prix', '2023-04-02'),
(1101, 2023, 4, 73, 'Azerbaijan Grand Prix', '2023-04-30'),
(1102, 2023, 5, 79, 'Miami Grand Prix', '2023-05-07'),
(1104, 2023, 6, 6, 'Monaco Grand Prix', '2023-05-28'),
(1105, 2023, 7, 4, 'Spanish Grand Prix', '2023-06-04'),
(1106, 2023, 8, 7, 'Canadian Grand Prix', '2023-06-18'),
(1107, 2023, 9, 70, 'Austrian Grand Prix', '2023-07-02'),
(1108, 2023, 10, 9, 'British Grand Prix', '2023-07-09'),
(1109, 2023, 11, 11, 'Hungarian Grand Prix', '2023-07-23'),
(1110, 2023, 12, 13, 'Belgian Grand Prix', '2023-07-30'),
(1111, 2023, 13, 39, 'Dutch Grand Prix', '2023-08-27'),
(1112, 2023, 14, 14, 'Italian Grand Prix', '2023-09-03'),
(1113, 2023, 15, 15, 'Singapore Grand Prix', '2023-09-17'),
(1114, 2023, 16, 22, 'Japanese Grand Prix', '2023-09-24'),
(1115, 2023, 17, 78, 'Qatar Grand Prix', '2023-10-08'),
(1116, 2023, 18, 69, 'United States Grand Prix', '2023-10-22'),
(1117, 2023, 19, 32, 'Mexico City Grand Prix', '2023-10-29'),
(1118, 2023, 20, 18, 'São Paulo Grand Prix', '2023-11-05'),
(1119, 2023, 21, 80, 'Las Vegas Grand Prix', '2023-11-19'),
(1120, 2023, 22, 24, 'Abu Dhabi Grand Prix', '2023-11-26');

INSERT INTO Championship (seasonid, Year, constructor, driver)
VALUES
(1, 2020, 'Mercedes', 'Lewis Hamilton'),
(2, 2021, 'Red Bull', 'Max Verstappen'),
(3, 2022, 'Red Bull', 'Max Verstappen'),
(4, 2023, 'Red Bull', 'Max Verstappen');

INSERT INTO Driver (driverid, name, dob, nationality, team)
VALUES
(844, 'Charles Leclerc', '1997-10-16', 'Monegasque', 'Ferrari'),
(832, 'Carlos Sainz', '1994-09-01', 'Spanish', 'Ferrari'),
(846, 'Lando Norris', '1999-11-13', 'British', 'McLaren'),
(857, 'Oscar Piastri', '2001-04-06', 'Australian', 'McLaren'),
(1, 'Lewis Hamilton', '1985-01-07', 'British', 'Mercedes'),
(847, 'George Russell', '1998-02-15', 'British', 'Mercedes'),
(830, 'Max Verstappen', '1997-09-30', 'Dutch', 'Red Bull'),
(815, 'Sergio Pérez', '1990-01-26', 'Mexican', 'Red Bull'),
(825, 'Kevin Magnussen', '1992-10-05', 'Danish', 'Haas F1 Team'),
(807, 'Nico Hülkenberg', '1987-08-19', 'German', 'Haas F1 Team');

-- Get the circuit names and locations for all the circuits in the database:
SELECT place, location FROM Circuit; 

-- Get the number of races in the 2022 season:
SELECT COUNT(*) FROM Races WHERE year = 2022;

-- Get the name and location of the circuit for the 2022 British Grand Prix:
SELECT place, location FROM Circuit
JOIN Races ON Circuit.circuitid = Races.circuitId
WHERE year = 2022 AND name = 'British Grand Prix';

-- Get the number of championships won by Mercedes:
SELECT COUNT(*) FROM Championship
WHERE constructor = 'Mercedes';
 
--  Get the names of all the drivers who have driven for Ferrari:
SELECT name FROM Driver
WHERE team = 'Ferrari';

-- Get the year and name of all the races in the 2023 season:
SELECT year, racename FROM Races
WHERE year = 2023;

-- Get all the drivers and constructors that won in the last 4 years:
SELECT DISTINCT constructor, driver FROM Championship;

-- Get the name of the constructor with the most championships:
SELECT constructor, COUNT(*) as championships_won
FROM Championship
GROUP BY constructor
ORDER BY championships_won DESC
LIMIT 1;

-- Get the name and year of all the races that have taken place in the United States:
SELECT racename, year FROM Races
JOIN Circuit ON Races.circuitid = Circuit.circuitid
WHERE country = 'United States';

-- Get the name and year of all the races that have taken place in Europe:
SELECT racename, year FROM Races
JOIN Circuit ON Races.circuitid = Circuit.circuitid
WHERE country IN (
    'Austria', 'Azerbaijan', 'Belgium', 'France', 'Germany', 'Hungary',
    'Italy', 'Monaco', 'Netherlands', 'Portugal', 'Spain', 'United Kingdom'
);

-- Add a check constraint to the Driver table that ensures that the driver is above 18 years of age:
ALTER TABLE Driver
ADD CONSTRAINT chk_Driver_dob
CHECK (dob < 2006-01-01);

-- Get the details of drivers who are from Germany or Austria and are driving for a team other than Mercedes:
SELECT * FROM Driver
WHERE (nationality = 'German' OR nationality = 'Austrian')
AND team NOT LIKE 'Mercedes';

-- Select all columns from the Driver table where the name starts with a ‘c’:
SELECT * FROM Driver WHERE name LIKE 'C%'; 

-- Select all columns from the Constructor table where the name column contains the letter 'e':
SELECT * FROM Driver WHERE name LIKE '%e%';

-- Get the year, name, and location of all races that have taken place in Spain:
SELECT Races.year, Races.racename, Circuit.location
FROM Races
JOIN Circuit ON Races.circuitid = Circuit.circuitid
WHERE Circuit.country = 'Spain';

-- Get the constructor name and the number of championships won for each constructor:
SELECT Constructor.name, COUNT(Championship.seasonid) as championships_won
FROM Constructor
LEFT JOIN Championship ON Constructor.name = Championship.constructor
GROUP BY Constructor.name
ORDER BY championships_won DESC;

-- Get the name and year of all races that have taken place in the Southern Hemisphere:
SELECT Races.racename, Races.year
FROM Races
JOIN Circuit ON Races.circuitid = Circuit.circuitid
WHERE Circuit.country IN ('Argentina', 'Australia', 'Brazil', 'Chile', 'Saudi Arabia'); 

-- Get the name and nationality of all drivers who have won a championship:
SELECT distinct Driver.name, Driver.nationality
FROM Driver
JOIN Championship ON Driver.name = Championship.driver
WHERE Championship.seasonid IS NOT NULL;

-- Get the driver who has won the most championships:
SELECT driver, COUNT(*) as championship_count
FROM Championship
WHERE driver IS NOT NULL
GROUP BY driver
ORDER BY championship_count DESC
LIMIT 1;

-- Find the constructor with the most race wins:
SELECT constructor, COUNT(*) as race_wins
FROM Championship
GROUP BY constructor
ORDER BY race_wins DESC
LIMIT 1; 