CREATE DATABASE `superhero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `team` (
  `TeamID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Objective` varchar(200) NOT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `hero` (
  `hero_id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Alias` varchar(50) NOT NULL,
  `Ability` varchar(70) DEFAULT NULL,
  `TeamID` int NOT NULL,
  PRIMARY KEY (`hero_id`),
  KEY `TeamID_idx` (`TeamID`),
  CONSTRAINT `TeamID` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO team (TeamID, Name, Objective)
VALUES
    (1, 'JLA', 'Protect the world'),
    (2, 'JSA', 'Defeat the Nazis'),
    (3, 'Birds of Prey', 'Fight crime (without men)'),
    (4, 'Task Force X', 'Follow Wallers orders or die'),
    (5, 'Teen Titans', 'Teach young superheroes to be their best');

INSERT into hero (Firstname, Lastname, Alias, Ability, TeamID)
values ('Bruce', 'Wayne', 'Batman', 'Martial Arts', 1),
    ('Clark', 'Kent', 'Superman', 'Flight', 1),
    ('Jay', 'Garrick', 'The Flash', 'Super-Speed', 2),
    ('Alan', 'Scott', 'Green Lantern', 'Ring Creation', 2),
    ('Helena', 'Bertenelli', 'The Huntress', 'Crossbow Archery', 3),
    ('Harleen', 'Quinzel', 'Harley Quinn', 'Hammer-Fighting', 3),
    ('Floyd', 'Lawton', 'Deadshot', 'Marksmanship', 4),
    ('Cecil', 'Adams', 'Count Vertigo', 'Induce dizziness', 4),
    ('Damian', 'Wayne', 'Robin', 'Swordsmanship', 5),
    ('Dick', 'Grayson', 'Nightwing', 'Acrobatics', 5);



