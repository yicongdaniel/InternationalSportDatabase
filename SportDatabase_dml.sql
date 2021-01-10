--Filename: SportDatabase_dml.sql
--Name: Yicong Zhang
--Date:2020/07/26
--Summer 2020

DELETE FROM Coach_T;
DELETE FROM Athlete_T;
DELETE FROM Country_T;
DELETE FROM Sport_T;
DELETE FROM Stadium_T;

--The Stadium data
INSERT INTO Stadium_T(Building_id, Building_name, Address, Capacity, Sport_id) VALUES
  ( 'A', 'A123', '123 Robinson Rd', 5000, 'g10003' ),
  ( 'B', 'B321', '321 Kanata Ave', 4000, 'a10001' ),
  ( 'C', 'C105', '105 Greenbank Rd', 4000, 's10004' ),
  ( 'T', 'T654', '654 Woodroff Rd', 5000, 'f10002' ),
  ( 'H', 'H806', '806 Keyrock Dr', 5000, 'b10005' );
INSERT INTO Stadium_T(Building_id, Building_name, Address, Capacity) VALUES
  ( 'D', 'D230', '230 San Remo Rd', 3000 ),
  ( 'I', 'I883', '853 Laurent Blvd St', 2000 ),
  ( 'J', 'J244', '224 Hunt Club Rd', 1000 ),
  ( 'K', 'K125', '125 Riocan Av', 1000 );

--The Sports data for the competition
INSERT INTO Sport_T(Sport_id, Sport_name, Building_id) VALUES
  ( 'A10001', 'Archery', 'B' ),
  ( 'F10002', 'Fencing', 'T' ),
  ( 'G10003', 'Gymnastics', 'A' ),
  ( 'S10004', 'Swimming', 'C' ),
  ( 'B10005', 'Badminton', 'H' );

--The Country data
INSERT INTO Country_T(Country_code, Country_name, National_anthem) VALUES
  ( 'CAN', 'Canada', 'O Canada' ),
  ( 'USA', 'United States', 'The Star Spangled Banner' ),
  ( 'GER', 'Germany', 'Song of Germany' ),
  ( 'CHN', 'China', 'March of the Volunteers' ),
  ( 'BRA', 'Brazil', 'Brazilian National Anthem' ),
  ( 'JAP', 'Japan', 'Kimigayo' );
  
--The Athletes data (FROM WIKIPEDIA)
INSERT INTO Athlete_T(Athlete_id, First_name, Last_name, Gender, Nationality, Sport_id, Age) VALUES
  ( 1001, 'Ana', 'Padurariu', 'F', 'CAN', 'G10003', 19 ),
  ( 1002, 'Michelle', 'Li', 'F', 'CAN', 'B10005', 29 ),
  ( 1003, 'Crispin', 'Duenas', 'M', 'CAN', 'A10001', 34 ),
  ( 1004, 'Markus', 'Thormeyer', 'M', 'CAN', 'S10004', 22 ),
  ( 1005, 'Michael', 'Phelps', 'M', 'USA', 'S10004', 25 ),
  ( 1006, 'Simone', 'Biles', 'F', 'USA', 'G10003', 23 ),
  ( 1007, 'Leilani', 'Akiyama', 'F', 'USA', 'A10001', 33 ),
  ( 1008, 'Gal', 'Alguetti', 'M', 'USA', 'F10002', 20 ),
  ( 1009, 'Xuesong', 'Gu', 'M', 'CHN', 'A10001', 27 ),
  ( 1010, 'Yihan', 'Wang', 'F', 'CHN', 'B10005', 32 ),
  ( 1011, 'Yiwen', 'Sun', 'F', 'CHN', 'F10002', 28 ),
  ( 1012, 'Wei', 'Deng', 'F', 'CHN', 'S10004', 27 ),
  ( 1013, 'Florian', 'Floto', 'M', 'GER', 'A10001', 32 ),
  ( 1014, 'Karin', 'Schnaase', 'F', 'GER', 'B10005', 35 ),
  ( 1015, 'Carolin', 'Golubytskyi', 'F', 'GER', 'F10002', 35 ),
  ( 1016, 'Sophie', 'Scheder', 'F', 'GER', 'G10003', 23 ),
  ( 1017, 'Ami', 'Kondo', 'F', 'JAP', 'B10005', 25 ),  
  ( 1018, 'Kosuke', 'Hagino', 'M', 'JAP', 'S10004', 25 ),
  ( 1019, 'Bruno', 'Fratus', 'M', 'BRA', 'S10004', 31 ), 
  ( 1020, 'Sarah', 'Menezes', 'F', 'BRA', 'A10001', 30 );

--The Coach data
INSERT INTO Coach_T(Coach_id, Coach_name, Nationality, Sport_id) VALUES
  ( 0101, 'Peter Jonson', 'CAN', 'S10004' ),
  ( 0102, 'Kate White', 'CAN', 'G10003' ),
  ( 0103, 'Gabriella Song', 'CAN', 'B10005' ),
  ( 0104, 'David Banic', 'CAN', 'A10001' ),
  ( 0105, 'Khalil White', 'USA', 'S10004' ),
  ( 0106, 'Dean Lee', 'USA', 'G10003' ),
  ( 0107, 'Steven Jonson', 'USA', 'A10001' ),
  ( 0108, 'Michael Song', 'USA', 'F10002' ),
  ( 0109, 'Meng Li', 'CHN', 'A10001' ),
  ( 0110, 'Xin Liu', 'CHN', 'S10004' ),
  ( 0111, 'Yu Zhang', 'CHN', 'F10002' ),
  ( 0112, 'Dan Lin', 'CHN', 'B10005' ),
  ( 0113, 'Nic Otto', 'GER', 'B10005' ),
  ( 0114, 'Nina Anna', 'GER', 'F10002' ),
  ( 0115, 'Jone Otto', 'GER', 'A10001' ),
  ( 0116, 'Svetlana Boginskaya', 'GER', 'G10003' ),  
  ( 0117, 'Takuro Fujii', 'JAP', 'S10004' ),
  ( 0118, 'Mami Umeki', 'JAP', 'B10005' ),
  ( 0119, 'Mariana Silva', 'BRA', 'A10001' ),
  ( 0120, 'Tales Cerdeira', 'BRA', 'S10004' );

--eof: SportDatabase_dml.sql