--Filename: SportDatabase_query.sql
--Name:Yicong Zhang
--Date:2020/07/26
--Summer 2020


--Test all five tables
SELECT * FROM Stadium_T;
SELECT * FROM Sport_T;
SELECT * FROM Country_T;
SELECT * FROM Athlete_T;
SELECT * FROM Coach_T;

--SQL statements for 3 entities
--Entite 1: Find buildings with capacity greater than 4000
SELECT building_name, capacity FROM Stadium_T
WHERE capacity > 4000;

--Entite 2: Find names of all female athletes who are older than 20 years old
SELECT first_name, last_name, age FROM Athlete_T
WHERE age > 20 AND gender = 'F';

--Entite 3: Find all badminton coachs
SELECT coach_id, coach_name FROM Coach_T
WHERE sport_id = 'B10005';

--Left Join: Find stadiums that do not hold any sport game
SELECT Stadium_T.building_id, Stadium_T.building_name
FROM Stadium_T LEFT JOIN Sport_T
ON Stadium_T.building_id = Sport_T.building_id
WHERE Stadium_T.sport_id IS NULL;

--Right Join: Find athlete name and sport name for game hold in building H
SELECT CONCAT_WS(', ', Last_name, First_name) AS Athlete_Name, Sport_Name, Building_ID
FROM Sport_T RIGHT JOIN Athlete_T
USING (Sport_ID)
WHERE Building_ID = 'H';

--Two Views
--View1: The Canadian athletes that smaller than the average age
SELECT * FROM AVG_CAN;

--View2: The information of athletes who particiate in swimming game
SELECT * FROM SWIM_V;

--Two subqueriers
--Subquery1: Find the youngest athlete
SELECT first_name, last_name, age FROM Athlete_T
WHERE age = (SELECT Min(age) FROM Athlete_T);

--Subquery2: Find information for all the athletes from China
SELECT * FROM Athlete_T
WHERE nationality = (SELECT country_code FROM Country_T WHERE country_name = 'China');

--Union two tables
--Union1: List information of all athletes and coaches
SELECT 'Athlete' AS Type, CONCAT_WS(' ', First_name, Last_name) AS Name, sport_id, nationality
FROM Athlete_T
UNION
SELECT 'Coach', coach_name, sport_id, nationality
FROM Coach_T
ORDER BY Type;

--Union2: List inforamtion of all athletes and coachs from Canada
SELECT athlete_id AS ID, CONCAT_WS(' ', First_name, Last_name) AS Name, 'Athlete' AS Type, sport_id, nationality
FROM Athlete_T WHERE nationality ='CAN'
UNION
SELECT coach_id, coach_name, 'Coach', sport_id, nationality FROM Coach_T
WHERE nationality = 'CAN'
ORDER BY ID;

--eof: SportDatabase_query.sql