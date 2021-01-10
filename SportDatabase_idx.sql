--Filename: SportDatabase_idx.sql
--Name: Yicong Zhang
--Date:2020/07/26
--Summer 2020


--Indexs for two tables:

DROP INDEX IF EXISTS Athlete_name_idx;
DROP INDEX IF EXISTS Coach_name_idx;

CREATE INDEX Athlete_name_idx
ON Athlete_T (first_name, last_name);

CREATE INDEX Coach_name_idx
ON Coach_T (Coach_name);

--eof: SportDatabase_idx.sql