--Filename: SportDatabase_metadata.sql
--Name: Yicong Zhang
--Date:2020/07/26
--Summer 2020

SELECT column_name, data_type, character_maximum_length 
FROM INFORMATION_SCHEMA.COLUMNS WHERE 
TABLE_NAME ='stadium_t' OR
TABLE_NAME ='sport_t' OR
TABLE_NAME ='country_t' OR
TABLE_NAME ='athlete_t' OR
TABLE_NAME ='coach_t';

--eof: SportDatabase_metadata.sql