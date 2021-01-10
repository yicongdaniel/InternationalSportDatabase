--Filename: SportDatabase_ddl.sql
--Name: Yicong Zhang
--Date:2020/07/26
--Summer 2020

DROP VIEW IF EXISTS AVG_CAN;
DROP VIEW IF EXISTS SWIM_V;

DROP TABLE IF EXISTS Coach_T;
DROP TABLE IF EXISTS Athlete_T;
DROP TABLE IF EXISTS Country_T;
DROP TABLE IF EXISTS Sport_T;
DROP TABLE IF EXISTS Stadium_T;

--Create Stadium_T table
CREATE TABLE Stadium_T(
	Building_id char(1) NOT NULL,
	Building_name varchar(20),
	Address varchar(30),
	Capacity bigint,
	Sport_id char(6),
	CONSTRAINT Stadium_pk PRIMARY KEY (Building_id)
);

--Create Sport_T table
CREATE TABLE Sport_T(
	Sport_id char(6) NOT NULL,
	Sport_name varchar(20),
	Building_id char(1),
	CONSTRAINT Sport_pk PRIMARY KEY (Sport_id),
	CONSTRAINT Sport_fk FOREIGN KEY (Building_id) REFERENCES Stadium_T (Building_id)
);

--Create Country_T table
CREATE TABLE Country_T(
	Country_code char(3) NOT NULL,
	Country_name varchar(20),
	National_anthem varchar(40),
	CONSTRAINT Country_pk PRIMARY KEY (Country_code)
);

--Create Athlete_T table
CREATE TABLE Athlete_T(
	Athlete_id smallint NOT NULL,
	First_name varchar(20),
	Last_name varchar(20),
	Gender char(1),
	Nationality char(3),
	Sport_id char(6),
	Age smallint,
	CHECK (Age >= 15),
	CONSTRAINT Athlete_pk PRIMARY KEY (Athlete_id),
	CONSTRAINT Athlete_fk1 FOREIGN KEY (Sport_id) REFERENCES Sport_T (Sport_id),
	CONSTRAINT Athlete_fk2 FOREIGN KEY (Nationality) REFERENCES Country_T (Country_code)
);

--Create Coach_T table
CREATE TABLE Coach_T(
	Coach_id smallint NOT NULL,
	Coach_name varchar(20),
	Nationality char(3),
	Sport_id char(6),
	CONSTRAINT Coach_pk PRIMARY KEY (Coach_id),
	CONSTRAINT Coach_fk1 FOREIGN KEY (Sport_id) REFERENCES Sport_T (Sport_id),
	CONSTRAINT Coach_fk2 FOREIGN KEY (Nationality) REFERENCES Country_T (Country_code)
);

--View 1: The Canadian athletes who are younger than the average age.
CREATE VIEW AVG_CAN AS
SELECT athlete_id, first_name, last_name, age
FROM Athlete_T
WHERE age < (SELECT AVG(age) FROM Athlete_T) AND nationality = 'CAN';

--View 2: The information of athletes who particiate in swimming game
CREATE VIEW SWIM_V AS
SELECT CONCAT_WS(', ',Last_name, First_name) AS Athlete_Name, Nationality, Age, Gender
FROM Athlete_T
WHERE Sport_id = 'S10004';

--eof: SportDatabase_ddl.sql