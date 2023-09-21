/*Create a DB*/

CREATE DATABASE plantasia;


/*connect to the Database*/

\c plantasia


/*create tables*/

CREATE TABLE Users (
  user_ID bigint PRIMARY KEY,
  email varchar(80),
  password varchar(200),
  firstName varchar(80),
  lastName varchar(80)
);

/*  FOREIGN KEY (user_ID) REFERENCES User_Plants(user_ID)*/


CREATE TABLE User_Plants (
  user_ID bigint,
  plant_ID bigint,
  ID varchar(10),
  plant_name varchar(200), 
  full_name varchar(200),
  scientific_name varchar(200), 
  plant_description varchar(1000),
  plant_size varchar(80), 
  age int, 
  watering varchar(20),
  sunlight varchar(200),
  icon_ID int,
  PRIMARY KEY (user_ID, plant_ID),
 

  
);

/*   FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
  FOREIGN KEY (user_ID, plant_ID) REFERENCES Uploaded_Images(user_ID, plant_ID),
  FOREIGN KEY (ID) REFERENCES Plants(ID)
  */


CREATE TABLE Plants (
  ID varchar(10) PRIMARY KEY,
  full_name varchar(200),
  scientific_name varchar(200), 
  other_name varchar(200),
  image_url varchar(500),
  sunlight varchar(200),
  watering varchar(20)
);

/*   FOREIGN KEY (ID) REFERENCES User_Plants(ID)
  */


CREATE TABLE Uploaded_Images (
  user_ID bigint,
  plant_ID bigint,
  image_ID bigint,
  image_url varchar(500),
  PRIMARY KEY (user_ID, plant_ID, image_ID),
  

  
);

/*
FOREIGN KEY (user_ID, plant_ID) REFERENCES User_Plants(user_ID, plant_ID)
 */ 


 


/*create tables*/

