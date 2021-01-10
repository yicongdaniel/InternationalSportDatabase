# InternationalSportDatabase (more details could be found on SportDatabase_Demo.dox)

Summary

In this project, I designed a database for an International sport competition association who wants to manage the inventory of their registered athletes. Under this association, there are different sports, athletes and coaches from different countries, and stadiums for different sport matches. It is quite complicated to organize this information efficiently without a well-designed database. 
The database focuses on maintaining all registered athletes from different countries well organized. In order to create this database, identifying the problems stated above and came up with a hand drawn solution of an ER diagram is necessaried. The main table is the sport table which contains all sport competitions the association can host. The other tables are associated with the sport table. Later on, we will implement DDL, DML, and metadata with PostgreSQL.
The sample data represents record of registered athletes from different countries who have the right to participate in the competitions hosted by the association. There are eight types sport match included in the sport table and each sport match allows eight athletes to participate in. As I mentioned before, the main table in this database is the sport table which is unique. The sport is the basic factor for a competition association. Lastly, a stadium table related to the sport table, holds all the stadium options the association has.

Business Rules for designning the database

Athlete and coach:
1. An athlete and a coach are identified by an athlete ID and coach ID respectively, and they are both primary keys.
2. An athlete can participate only one sport and representing only one country.
3. A coach can serve only one sport team/athlete and representing only one country.
4. When adding an athlete or coach, it is mandatory to fill in all the information in the tables (e.g. Name, Gender, Nationality, Sport etc.)
Sports:
5. A sport must hold in only one stadium due to traffic convenient purpose.
6. Sport ID begins with the first letter of the sport following by five-digit number. 
7. A sport can have zero or many athletes to participate in.
8. It is possible that the athletes/teams in the same sport are all from the same country.
Country:
9. A country has at zero or many athletes.
10. A country has at zero or many coaches.
Stadium:
11. A stadium can hold zero or many sports.
12. Stadium capacity data is maintained.
