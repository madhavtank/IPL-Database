-- /* Creates the TEAM entity */ 
-- CREATE TABLE Team(
-- Team_Name varchar(255) PRIMARY KEY,
-- Owner varchar(255) UNIQUE,
-- Coach varchar(255) NOT NULL,
-- Points int(10) DEFAULT 0,
-- Net_Run_Rate decimal(5,2) DEFAULT 0,
-- Matches_Played int(10) DEFAULT 0);

-- /* BLOCK TO CREATE PLAYER ENTITY */

-- /* CREATES PLAYER ENTITY */
-- CREATE TABLE Player(First_Name varchar(255) NOT NULL,Last_Name varchar(255),Total_Wickets int(20) DEFAULT 0,Total_Balls_Faced int(20) DEFAULT 0,Average_Strike_Rate decimal(5,2) DEFAULT 0,Age int(20) NOT NULL,Economy decimal(5,2) DEFAULT 0); 
-- /* OOPS FORGOT TO ADD REFERENCE AS TEAM_NAME , NEED TO ADD NOW */
-- alter table Player add column Team_Name varchar(255) NOT NULL;
-- /* OOPS FORGOT TO ADD JERSEY_NO */
-- alter table Player add column Jersey_No int(10) NOT NULL;
-- /* ADD THEM AS PRIMARY KEY */
-- alter table Player add constraint PRIMARY KEY(Jersey_No,Team_Name);
-- /* OOPS FORGOT TO REFERENCE THE FOREIGN KEY */
-- alter table Player add constraint FOREIGN KEY(Team_Name) REFERENCES Team(Team_Name);

-- /* ends block here */

-- /* CREATES STADIUM */
-- CREATE TABLE Stadium(Capacity int(20) NOT NULL DEFAULT 0,Name varchar(255) PRIMARY KEY,RoadorLandmark varchar(255),City varchar(255) NOT NULL,State varchar(255) NOT NULL,Pincode int(6),CHECK(Pincode >= 100000 AND Pincode<=999999));

-- /* Makes the tickets table for the ticket price */
-- CREATE TABLE Ticket_Price(
-- Name_Stadium varchar(255) NOT NULL,
-- Price_Ticket int(10) NOT NULL,
-- PRIMARY KEY(Name_Stadium,Price_Ticket),
-- FOREIGN KEY(Name_Stadium) REFERENCES Stadium(Name));

-- /* CREATE STADIUM ENDS HERE */
