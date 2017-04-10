/*******************************************************************************
   Create Tables
********************************************************************************/

-- Table structure for table "User" --
CREATE TABLE "User" (
	"u_id" int NOT NULL default 0,
	"u_fname" varchar(100) default NULL,
	"u_lname" varchar(100) default NULL,
	PRIMARY KEY ("u_id")
);

-- Table structure for table "Profile" --
CREATE TABLE "Profile" (
	"profile_id" varchar(100) default NULL, 
	"profile_name" varchar(100) default NULL, 
	"authorization" varchar(1) default NULL,
	"supervisor_id" varchar(100) default NULL,
	"u_id" int default NULL,
	PRIMARY KEY ("profile_id"),
	FOREIGN KEY(supervisor_id) REFERENCES [Profile](profile_id),
	FOREIGN KEY(u_id) REFERENCES [User](u_id)
	);

-- Table structure for "Program" -- 
CREATE TABLE "Program" (
	"P_id" int default NULL,
	"type" varchar(100) default NULL,
	"name" varchar(100) default NULL,
	"year" char(4) default NULL,
	"prim_cr_name" varchar(100) default NULL,
	"prim_dir_name" varchar(100) default NULL,
	"genre" varchar(100) default NULL, 
	"age_group" varchar(100) default NULL,
	"rating" float default NULL,
	PRIMARY KEY (P_id)
);

-- Table structure for "Viewing_History" --
CREATE TABLE "Viewing_History" (
	"V_id" varchar(100) default NULL,
	"profile_id" varchar(100) default NULL,
	"P_id" int default NULL,
	"date" date default NULL,
	PRIMARY KEY ("V_id"),
	FOREIGN KEY (profile_id) REFERENCES profile(profile_id),
	FOREIGN KEY (P_id) REFERENCES program(P_id)
);

-- Table structure for 'Actor' --
CREATE TABLE "Actor" (
	"A_id" int default NULL,
	"A_fname" varchar(100) default NULL, 
	"A_lname" varchar(100) default NULL, 
	PRIMARY KEY ("A_id")
);

-- Table structure for 'Cast' --
CREATE TABLE "Cast" (
	"A_id" int default NULL,
	"P_id" int default NULL,
	"role" varchar(100) default NULL,  
	PRIMARY KEY ("A_id","P_id","role"),
	FOREIGN KEY (A_id) REFERENCES Actor(A_id),
	FOREIGN KEY (P_id) REFERENCES program(P_id)
);

/*******************************************************************************
   Populate Tables
********************************************************************************/
-- Dumping data for table "User" --
INSERT INTO "User" VALUES (1,'Allison','Mui');
INSERT INTO "User" VALUES (2,'Karishma','Desai');
INSERT INTO "User" VALUES (3,'Monffy','Hu');

-- Dumping data for table "Profile" -- 
INSERT INTO "Profile" VALUES ('1-1','Allison','Y',NULL,1);
INSERT INTO "Profile" VALUES ('2-2', 'Karishma','Y',NULL,2);
INSERT INTO "Profile" VALUES ('3-1', 'Monffy','Y',NULL,3);
INSERT INTO "Profile" VALUES ('1-2', 'Andi', 'N', '1-1',1);

-- Dumping data for table "Program" --
INSERT INTO "Program" VALUES (1, 'TV Show', 'Friends', '2003', 'David Crane', NULL, 'Comedy', 'TV-14', 9);
INSERT INTO "Program" VALUES (2, 'TV Show', '13 Reasons Why', '2017', 'Brian Yorkey', NULL, 'Crime', 'TV-MA', 9.1);
INSERT INTO "Program" VALUES (3, 'TV Show', 'How to Get Away with Murder', '2016', 'Peter Nowalk', NULL, 'Crime', 'TV-14', 8.3);
INSERT INTO "Program" VALUES (4, 'TV Show', 'Africa', '2013', 'David Attenborough', NULL, 'Science & Nature', 'TV-PG', 9.2);
INSERT INTO "Program" VALUES (5, 'TV Show', 'Greys Anatomy', '2016', 'Shonda Rhimes', NULL, 'Drama', 'TV-14', 7.7);
INSERT INTO "Program" VALUES (6, 'TV Show', 'One Tree Hill', '2011', 'Mark Schwahn', NULL, 'Romantic Drama', 'TV-14', 7.7);
INSERT INTO "Program" VALUES (7, 'TV Show', 'The Office (U.S.)', '2012', 'Greg Daniels', NULL, 'Comedy', 'TV-14', 8.8);
INSERT INTO "Program" VALUES (8, 'Movie', 'The Angry Birds Movie', '2016', 'Clay Kaytis', NULL,'Children & Family Movies', 'PG', 6.3);
INSERT INTO "Program" VALUES (9, 'Movie', 'White Chicks', '2004', NULL, 'Keenan Ivory Wayans', 'Comedy', 'PG-13', 5.5);
INSERT INTO "Program" VALUES (10, 'Movie', 'Mulan II', '2004', NULL, 'Lynne Southerland', 'Children & Family Movies', 'G', 5.7);
INSERT INTO "Program" VALUES (11, 'Movie', 'Finding Dory', '2016', NULL, 'Andrew Stanton', 'Children & Family Movies', 'PG', 7.4);
INSERT INTO "Program" VALUES (12, 'Movie', 'Zootopia', '2016', NULL, 'Byron Howard', 'Children & Family Movies', 'PG', 8.1);
INSERT INTO "Program" VALUES (13, 'TV Show', 'Parks and Recreation', '2015', 'Greg Daniels', NULL, 'Comedy', 'TV-14', 8.6);
INSERT INTO "Program" VALUES (14, 'TV Show', 'White Collar', '2014', 'Jeff Eastin', NULL, 'Crime', 'TV-PG', 8.3);
INSERT INTO "Program" VALUES (15, 'TV Show', '90210', '2013', 'Gabe Sachs', NULL, 'Drama', 'TV-14', 6.1);
INSERT INTO "Program" VALUES (16, 'TV Show', 'Charmed', '2005', 'Constance M. Burge', NULL, 'Romantic Drama', 'TV-PG', 7.1);
INSERT INTO "Program" VALUES (17, 'TV Show', 'The Crown', '2016', 'Peter Morgan', NULL, 'Drama', 'TV-MA', 8.8);
INSERT INTO "Program" VALUES (18, 'Movie', 'The Reluctant Fundamentalist', '2012', NULL, 'Mira Nair', 'Drama', 'R', 6.9);
INSERT INTO "Program" VALUES (19, 'Movie', 'The Lizzie McGuire Movie', '2003', NULL, 'Jim Fall', 'Children & Family Movies', 'PG', 5);
INSERT INTO "Program" VALUES (20, 'Movie', 'High School Musical', '2006', NULL, 'Kenny Ortega', 'Children & Family Movies', 'G', 5);
INSERT INTO "Program" VALUES (21, 'Movie', 'Begin Again', '2014', NULL, 'John Carney', 'Romantic Comedy', 'R', 7.4);
INSERT INTO "Program" VALUES (22, 'Movie', 'Hands of Stone', '2016', NULL, 'Jonathan Jakubowicz', 'Drama', 'R', 6.6);
INSERT INTO "Program" VALUES (23, 'Movie', 'The Human Centipede 2', '2011', NULL, 'Tom Six', 'Horror', 'R', 3.9);
INSERT INTO "Program" VALUES (24, 'TV Show', 'Jailbait', '2014', 'Jared Cohn', NULL, 'Crime', 'TV-MA', 4.3);
INSERT INTO "Program" VALUES (25, 'Movie', 'Sharknado', '2013', NULL, 'Anthony C. Ferrante', 'Horror', 'TV-14', 3.3);
INSERT INTO "Program" VALUES (26, 'Movie', 'Shark Lake', '2015', NULL, 'Jerry Dugan', 'Thriller', 'NR', 3.4);
INSERT INTO "Program" VALUES (27, 'Movie', 'Behaving Badly', '2014', NULL, 'Tim Garrick', 'Comedy', 'R', 4.4);
INSERT INTO "Program" VALUES (28, 'TV Show', 'Richie Rich', '2015', 'Jeff Hodsden', NULL, 'Comedy', 'PG', 4.0);
INSERT INTO "Program" VALUES (29, 'Movie', 'The Diabolical', '2015', NULL, 'Alistair Legrand', 'Horror', 'R', 4.7);
INSERT INTO "Program" VALUES (30, 'Movie', 'The Unborn', '2009', NULL, 'David S. Goyer', 'Horror', 'PG-13', 4.8);
INSERT INTO "Program" VALUES (31, 'Movie', 'The Wedding Pact', '2014', NULL, 'Matt Berman', 'Romantic Comedy', 'TV-PG', 3.8);
INSERT INTO "Program" VALUES (32, 'Movie', 'I Hate Valentines Day', '2009', NULL, 'Nia Vardalos', 'Romantic Comedy', 'PG-13', 4.7);
INSERT INTO "Program" VALUES (33, 'Movie', 'Horrible Bosses', '2011', NULL, 'Seth Gordon', 'Crime Comedy', 'R', 6.9);
INSERT INTO "Program" VALUES (34, 'Movie', 'We''re The Millers', '2013', NULL, 'Rawson Marshall Thurber', 'Crime Comedy', 'R', 7);
INSERT INTO "Program" VALUES (35, 'Movie', 'Just Go With It', '2011', NULL, 'Dennis Dugan', 'Romantic Comedy', 'PG-13', 6.4);
INSERT INTO "Program" VALUES (36, 'Movie', 'Mike and Dave Need Wedding Dates', '2016', NULL, 'Jake Szymanski', 'Comedy', 'R', 6.0);
INSERT INTO "Program" VALUES (37, 'Movie', 'Neighbors', '2014', NULL, 'Nicholas Stoller', 'Comedy', 'R', 6.4);
INSERT INTO "Program" VALUES (38, 'Movie', '17 Again', '2009', NULL, 'Burr Steers', 'Comedy', 'PG-13', 6.4);
INSERT INTO "Program" VALUES (39, 'Movie', 'Paddington', '2014', NULL, 'Paul King', 'Children & Family Movies', 'PG', 7.2);

-- Dumping data for table "Viewing_History" -- 
INSERT INTO "Viewing_History" VALUES ('040517-1', '1-1', 1,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-2', '1-1', 2,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-3', '1-1', 3,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-4', '1-1', 4,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-5', '1-1', 5,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-6', '1-1', 6,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-7', '1-1', 7,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-8', '1-1', 8,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-9', '1-1', 9,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-10', '1-1', 10,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-11', '1-1', 11,'20170405');
INSERT INTO "Viewing_History" VALUES ('040517-12', '1-1', 12,'20170405');
INSERT INTO "Viewing_History" VALUES ('040617-1', '2-2', 13,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-2', '2-2', 14,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-3', '2-2', 15,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-4', '2-2', 16,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-5', '2-2', 17,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-6', '2-2', 18,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-7', '2-2', 19,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-8', '2-2', 20,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-9', '2-2', 21,'20170406');
INSERT INTO "Viewing_History" VALUES ('040617-10', '2-2', 22,'20170406');
INSERT INTO "Viewing_History" VALUES ('070916-1', '3-1', 1,'20160709');
INSERT INTO "Viewing_History" VALUES ('112211-1', '3-1', 5,'20111122');
INSERT INTO "Viewing_History" VALUES ('081816-1', '3-1', 11,'20160818');
INSERT INTO "Viewing_History" VALUES ('112816-1', '3-1', 12,'20161128');
INSERT INTO "Viewing_History" VALUES ('091806-1', '3-1', 20,'20060918');
INSERT INTO "Viewing_History" VALUES ('121614-1', '3-1', 21,'20141216');
INSERT INTO "Viewing_History" VALUES ('032117-1', '1-2', 19, '20170321');
INSERT INTO "Viewing_History" VALUES ('032217-2', '1-2', 1, '20170322');
INSERT INTO "Viewing_History" VALUES ('032217-3', '1-2', 19, '20170322');
INSERT INTO "Viewing_History" VALUES ('032317-4', '1-2', 19, '20170323');
INSERT INTO "Viewing_History" VALUES ('032317-5', '1-2', 19, '20170323');
INSERT INTO "Viewing_History" VALUES ('032317-6', '1-2', 10, '20170323');
INSERT INTO "Viewing_History" VALUES ('032317-7', '1-2', 8, '20170323');
INSERT INTO "Viewing_History" VALUES ('032817-1', '1-2', 19, '20170328');
INSERT INTO "Viewing_History" VALUES ('041117-1', '3-1', 33, '20170411');
INSERT INTO "Viewing_History" VALUES ('041117-2', '3-1', 34, '20170411');
INSERT INTO "Viewing_History" VALUES ('041117-3', '1-1', 35, '20170411');
INSERT INTO "Viewing_History" VALUES ('041117-4', '2-2', 36, '20170411');
INSERT INTO "Viewing_History" VALUES ('041117-5', '2-2', 37, '20170411');
INSERT INTO "Viewing_History" VALUES ('041117-6', '3-1', 38, '20170411');

-- Dumping data for table 'Actor' --
INSERT INTO "Actor" VALUES (1, 'Jennifer', 'Aniston');
INSERT INTO "Actor" VALUES (2, 'Courteney', 'Cox');
INSERT INTO "Actor" VALUES (3, 'Lisa', 'Kudrow');
INSERT INTO "Actor" VALUES (4, 'Matt', 'LeBlanc');
INSERT INTO "Actor" VALUES (5, 'Matthew', 'Perry');
INSERT INTO "Actor" VALUES (6, 'David', 'Schwimmer');
INSERT INTO "Actor" VALUES (7, 'Dylan', 'Minnette');
INSERT INTO "Actor" VALUES (8, 'Katherine', 'Langford');
INSERT INTO "Actor" VALUES (9, 'Kate', 'Walsh');
INSERT INTO "Actor" VALUES (10, 'Derek', 'Luke');
INSERT INTO "Actor" VALUES (11, 'Brain d Arcy', 'James');
INSERT INTO "Actor" VALUES (12, 'Alisha', 'Boe');
INSERT INTO "Actor" VALUES (13, 'Christian', 'Navarro');
INSERT INTO "Actor" VALUES (14, 'Miles', 'Heizer');
INSERT INTO "Actor" VALUES (15, 'Viola', 'Davis');
INSERT INTO "Actor" VALUES (16, 'Billy', 'Brown');
INSERT INTO "Actor" VALUES (17, 'Alfred', 'Enoch');
INSERT INTO "Actor" VALUES (18, 'Jack', 'Falahee');
INSERT INTO "Actor" VALUES (19, 'Katie', 'Findlay');
INSERT INTO "Actor" VALUES (20, 'Aja Naomi', 'King');
INSERT INTO "Actor" VALUES (21, 'Matt', 'McGorry');
INSERT INTO "Actor" VALUES (22, 'Karla', 'Souza');
INSERT INTO "Actor" VALUES (23, 'Charlie', 'Weber');
INSERT INTO "Actor" VALUES (24, 'Liza', 'Weil');
INSERT INTO "Actor" VALUES (25, 'David', 'Attenborough');
INSERT INTO "Actor" VALUES (26, 'Ellen', 'Pompeo');
INSERT INTO "Actor" VALUES (27, 'Sandra', 'Oh');
INSERT INTO "Actor" VALUES (28, 'Katherine', 'Heigl');
INSERT INTO "Actor" VALUES (29, 'Justin', 'Chambers');
INSERT INTO "Actor" VALUES (30, 'Patrick', 'Dempsey');
INSERT INTO "Actor" VALUES (31, 'Chandra', 'Wilson');
INSERT INTO "Actor" VALUES (32, 'T.R.', 'Knight');
INSERT INTO "Actor" VALUES (33, 'James', 'Pickens Jr.');
INSERT INTO "Actor" VALUES (34, 'Isiah', 'Washington');
INSERT INTO "Actor" VALUES (35, 'Sara', 'Ramirez');
INSERT INTO "Actor" VALUES (36, 'Eric', 'Dane');
INSERT INTO "Actor" VALUES (37, 'Chyler', 'Leigh');
INSERT INTO "Actor" VALUES (38, 'Kevin', 'McKidd');
INSERT INTO "Actor" VALUES (39, 'Jessica', 'Capshaw');
INSERT INTO "Actor" VALUES (40, 'Chad Michael', 'Murray');
INSERT INTO "Actor" VALUES (41, 'Hilarie', 'Burton');
INSERT INTO "Actor" VALUES (42, 'Bethany Joy', 'Lenz');
INSERT INTO "Actor" VALUES (43, 'Paul', 'Johansson');
INSERT INTO "Actor" VALUES (44, 'Sophia', 'Bush');
INSERT INTO "Actor" VALUES (45, 'Lee', 'Norris');
INSERT INTO "Actor" VALUES (46, 'Barbara Alyn', 'Woods');
INSERT INTO "Actor" VALUES (47, 'Antwon', 'Tanner');
INSERT INTO "Actor" VALUES (48, 'Barry', 'Corbin');
INSERT INTO "Actor" VALUES (49, 'Moira', 'Kelly');
INSERT INTO "Actor" VALUES (50, 'Jackson', 'Brundage');
INSERT INTO "Actor" VALUES (51, 'Lisa', 'Goldstein');
INSERT INTO "Actor" VALUES (52, 'Steve', 'Carell');
INSERT INTO "Actor" VALUES (53, 'John', 'Krasinski');
INSERT INTO "Actor" VALUES (54, 'Rainn', 'Wilson');
INSERT INTO "Actor" VALUES (55, 'B.J.', 'Novak');
INSERT INTO "Actor" VALUES (56, 'Ed', 'Helms');
INSERT INTO "Actor" VALUES (57, 'Brian', 'Baumgartner');
INSERT INTO "Actor" VALUES (58, 'David', 'Denman');
INSERT INTO "Actor" VALUES (59, 'Creed', 'Bratton');
INSERT INTO "Actor" VALUES (60, 'Mindy', 'Kaling');
INSERT INTO "Actor" VALUES (61, 'Angela', 'Kinsey');
INSERT INTO "Actor" VALUES (62, 'Oscar', 'Nunez');
INSERT INTO "Actor" VALUES (63, 'Phyllis', 'Smith');
INSERT INTO "Actor" VALUES (64, 'Jason', 'Sudeikis');
INSERT INTO "Actor" VALUES (65, 'Jason', 'Gad');
INSERT INTO "Actor" VALUES (66, 'Danny', 'McBride');
INSERT INTO "Actor" VALUES (67, 'Peter', 'Dinklage');
INSERT INTO "Actor" VALUES (68, 'Bill', 'Hader');
INSERT INTO "Actor" VALUES (69, 'Maya', 'Rudolph');
INSERT INTO "Actor" VALUES (70, 'Keegan-Michael', 'Key');
INSERT INTO "Actor" VALUES (71, 'Sean', 'Penn');
INSERT INTO "Actor" VALUES (72, 'Tituss', 'Burgess');
INSERT INTO "Actor" VALUES (73, 'Ike', 'Barinholtz');
INSERT INTO "Actor" VALUES (74, 'Hannibal', 'Buress');
INSERT INTO "Actor" VALUES (75, 'Tony', 'Hale');
INSERT INTO "Actor" VALUES (76, 'Jillian', 'Bell');
INSERT INTO "Actor" VALUES (77, 'Danielle', 'Brooks');
INSERT INTO "Actor" VALUES (78, 'Shawn', 'Wayans');
INSERT INTO "Actor" VALUES (79, 'Marlon', 'Wayans');
INSERT INTO "Actor" VALUES (80, 'Jamie', 'King');
INSERT INTO "Actor" VALUES (81, 'Frankie', 'Faison');
INSERT INTO "Actor" VALUES (82, 'Lochlyn', 'Munro');
INSERT INTO "Actor" VALUES (83, 'John', 'Heard');
INSERT INTO "Actor" VALUES (84, 'Busy', 'Philipps');
INSERT INTO "Actor" VALUES (85, 'Terry', 'Crews');
INSERT INTO "Actor" VALUES (86, 'Brittany', 'Daniel');
INSERT INTO "Actor" VALUES (87, 'Eddie', 'Velez');
INSERT INTO "Actor" VALUES (88, 'Ming-Na', 'Wen');
INSERT INTO "Actor" VALUES (89, 'BD', 'Wong');
INSERT INTO "Actor" VALUES (90, 'Lucy', 'Liu');
INSERT INTO "Actor" VALUES (91, 'Harvey', 'Fierstein');
INSERT INTO "Actor" VALUES (92, 'Gedde', 'Watanabe');
INSERT INTO "Actor" VALUES (93, 'Lauren', 'Tom');
INSERT INTO "Actor" VALUES (94, 'Jerry', 'Tondo');
INSERT INTO "Actor" VALUES (95, 'George', 'Takei');
INSERT INTO "Actor" VALUES (96, 'Ellen', 'DeGeneres');
INSERT INTO "Actor" VALUES (97, 'Albert', 'Brooks');
INSERT INTO "Actor" VALUES (98, 'Ed', 'O Neill');
INSERT INTO "Actor" VALUES (99, 'Kaitlin', 'Olson');
INSERT INTO "Actor" VALUES (100, 'Hayden', 'Rolence');
INSERT INTO "Actor" VALUES (101, 'Ty', 'Burrell');
INSERT INTO "Actor" VALUES (102, 'Diane', 'Keaton');
INSERT INTO "Actor" VALUES (103, 'Eugene', 'Levy');
INSERT INTO "Actor" VALUES (104, 'Sloane', 'Murray');
INSERT INTO "Actor" VALUES (105, 'Kate', 'McKinnon');
INSERT INTO "Actor" VALUES (106, 'Bill', 'Hader');
INSERT INTO "Actor" VALUES (107, 'Sigourney', 'Weaver');
INSERT INTO "Actor" VALUES (108, 'Ginnifer', 'Goodwin');
INSERT INTO "Actor" VALUES (109, 'Jason', 'Bateman');
INSERT INTO "Actor" VALUES (110, 'Idris', 'Elba');
INSERT INTO "Actor" VALUES (111, 'Jenny', 'Slate');
INSERT INTO "Actor" VALUES (112, 'Nate', 'Torrence');
INSERT INTO "Actor" VALUES (113, 'Bonnie', 'Hunt');
INSERT INTO "Actor" VALUES (114, 'Don', 'Lake');
INSERT INTO "Actor" VALUES (115, 'Tommy', 'Chong');
INSERT INTO "Actor" VALUES (116, 'J.K.', 'Simmons');
INSERT INTO "Actor" VALUES (117, 'Octavia', 'Spencer');
INSERT INTO "Actor" VALUES (118, 'Alan', 'Tudyk');
INSERT INTO "Actor" VALUES (119, 'Shakira', NULL);
INSERT INTO "Actor" VALUES (120, 'Amy', 'Poehler');
INSERT INTO "Actor" VALUES (121, 'Rashida', 'Jones');
INSERT INTO "Actor" VALUES (122, 'Aziz', 'Ansari');
INSERT INTO "Actor" VALUES (123, 'Nick', 'Offerman');
INSERT INTO "Actor" VALUES (124, 'Aubrey', 'Plaza');
INSERT INTO "Actor" VALUES (125, 'Chris', 'Pratt');
INSERT INTO "Actor" VALUES (126, 'Adam', 'Scott');
INSERT INTO "Actor" VALUES (127, 'Rob', 'Lowe');
INSERT INTO "Actor" VALUES (128, 'Jim', 'OHeir');
INSERT INTO "Actor" VALUES (129, 'Matt', 'Bomer');
INSERT INTO "Actor" VALUES (130, 'Tim', 'DeKay');
INSERT INTO "Actor" VALUES (131, 'Willie', 'Garson');
INSERT INTO "Actor" VALUES (132, 'Tiffani', 'Thiessen');
INSERT INTO "Actor" VALUES (133, 'Sharif', 'Atkins');
INSERT INTO "Actor" VALUES (134, 'Marsha', 'Thomason');
INSERT INTO "Actor" VALUES (135, 'Diahann', 'Carroll');
INSERT INTO "Actor" VALUES (136, 'Shenae', 'Grimes-Beech');
INSERT INTO "Actor" VALUES (137, 'Tristan', 'Wilds');
INSERT INTO "Actor" VALUES (138, 'AnnaLynne', 'McCord');
INSERT INTO "Actor" VALUES (139, 'Jessica', 'Stroup');
INSERT INTO "Actor" VALUES (140, 'Michael', 'Steger');
INSERT INTO "Actor" VALUES (141, 'Jessica', 'Lowndes');
INSERT INTO "Actor" VALUES (142, 'Matt', 'Lanter');
INSERT INTO "Actor" VALUES (143, 'Lori', 'Loughlin');
INSERT INTO "Actor" VALUES (144, 'Ryan', 'Eggold');
INSERT INTO "Actor" VALUES (145, 'Holly Marie', 'Combs');
INSERT INTO "Actor" VALUES (146, 'Alyssa', 'Milano');
INSERT INTO "Actor" VALUES (147, 'Bryan', 'Krause');
INSERT INTO "Actor" VALUES (148, 'Rose', 'McGowan');
INSERT INTO "Actor" VALUES (149, 'Shannen', 'Doherty');
INSERT INTO "Actor" VALUES (150, 'Dorian', 'Gregory');
INSERT INTO "Actor" VALUES (151, 'Claire', 'Foy');
INSERT INTO "Actor" VALUES (152, 'John', 'Lithgow');
INSERT INTO "Actor" VALUES (153, 'Matt', 'Smith');
INSERT INTO "Actor" VALUES (154, 'Vanessa', 'Kirby');
INSERT INTO "Actor" VALUES (155, 'Jared', 'Harris');
INSERT INTO "Actor" VALUES (156, 'Victoria', 'Hamilton');
INSERT INTO "Actor" VALUES (157, 'Eileen', 'Atkins');
INSERT INTO "Actor" VALUES (158, 'Jeremy', 'Northam');
INSERT INTO "Actor" VALUES (159, 'Alex', 'Jennings');
INSERT INTO "Actor" VALUES (160, 'Riz', 'Ahmed');
INSERT INTO "Actor" VALUES (161, 'Kate', 'Hudson');
INSERT INTO "Actor" VALUES (162, 'Liev', 'Schreiber');
INSERT INTO "Actor" VALUES (163, 'Kiefer', 'Sutherland');
INSERT INTO "Actor" VALUES (164, 'Om', 'Puri');
INSERT INTO "Actor" VALUES (165, 'Shabana', 'Ahmed');
INSERT INTO "Actor" VALUES (166, 'Martin', 'Donovan');
INSERT INTO "Actor" VALUES (167, 'Hilary', 'Duff');
INSERT INTO "Actor" VALUES (168, 'Adam', 'Lamberg');
INSERT INTO "Actor" VALUES (169, 'Hallie', 'Todd');
INSERT INTO "Actor" VALUES (170, 'Robert', 'Carradine');
INSERT INTO "Actor" VALUES (171, 'Jake', 'Thomas');
INSERT INTO "Actor" VALUES (172, 'Ashlie', 'Brillault');
INSERT INTO "Actor" VALUES (173, 'Clayton', 'Snyder');
INSERT INTO "Actor" VALUES (174, 'Alex', 'Borstein');
INSERT INTO "Actor" VALUES (175, 'Yani', 'Gellman');
INSERT INTO "Actor" VALUES (176, 'Brendan', 'Kelly');
INSERT INTO "Actor" VALUES (177, 'Zac', 'Efron');
INSERT INTO "Actor" VALUES (178, 'Vanessa', 'Hudgens');
INSERT INTO "Actor" VALUES (179, 'Ashley', 'Tisdale');
INSERT INTO "Actor" VALUES (180, 'Lucas', 'Grabeel');
INSERT INTO "Actor" VALUES (181, 'Corbin', 'Bleu');
INSERT INTO "Actor" VALUES (182, 'Monique', 'Coleman');
INSERT INTO "Actor" VALUES (183, 'Bart', 'Johnson');
INSERT INTO "Actor" VALUES (184, 'Alyson', 'Reed');
INSERT INTO "Actor" VALUES (185, 'Chris', 'Warren Jr.');
INSERT INTO "Actor" VALUES (186, 'Oleysa', 'Rulin');
INSERT INTO "Actor" VALUES (187, 'Keira', 'Knightley');
INSERT INTO "Actor" VALUES (188, 'Mark', 'Ruffalo');
INSERT INTO "Actor" VALUES (189, 'Adam', 'Levine');
INSERT INTO "Actor" VALUES (190, 'James', 'Corden');
INSERT INTO "Actor" VALUES (191, 'Hailee', 'Steinfeld');
INSERT INTO "Actor" VALUES (192, 'Mos', 'Def');
INSERT INTO "Actor" VALUES (193, 'CeeLo', 'Green');
INSERT INTO "Actor" VALUES (194, 'Catherine', 'Keener');
INSERT INTO "Actor" VALUES (195, 'Robert', 'De Niro');
INSERT INTO "Actor" VALUES (196, 'Edgar', 'Ramirez');
INSERT INTO "Actor" VALUES (197, 'Ellen', 'Barkin');
INSERT INTO "Actor" VALUES (198, 'John', 'Turturro');
INSERT INTO "Actor" VALUES (199, 'Ana', 'de Armas');
INSERT INTO "Actor" VALUES (200, 'Ruben', 'Blades');
INSERT INTO "Actor" VALUES (201, 'Usher', 'Raymond IV');
INSERT INTO "Actor" VALUES (202, 'Oscar', 'Jaenada');
INSERT INTO "Actor" VALUES (203, 'Hugh', 'Bonneville');
INSERT INTO "Actor" VALUES (204, 'Sally', 'Hawkins');
INSERT INTO "Actor" VALUES (205, 'Julie', 'Walters');

-- Dumping data for table 'Cast'--
INSERT INTO "Cast" VALUES (1, 1, 'Rachel Green');
INSERT INTO "Cast" VALUES (2, 1, 'Monica Geller');
INSERT INTO "Cast" VALUES (3, 1, 'Phoebe Buffay');
INSERT INTO "Cast" VALUES (4, 1, 'Joey Tribbiani');
INSERT INTO "Cast" VALUES (5, 1, 'Chandler Bing');
INSERT INTO "Cast" VALUES (6, 1, 'Ross Geller');
INSERT INTO "Cast" VALUES (7, 2, 'Clay Jensen');
INSERT INTO "Cast" VALUES (8, 2, 'Hannah');
INSERT INTO "Cast" VALUES (9, 2, 'Mrs. Baker');
INSERT INTO "Cast" VALUES (10, 2, 'Mr. Porter');
INSERT INTO "Cast" VALUES (11, 2, 'Mr. Baker');
INSERT INTO "Cast" VALUES (12, 2, 'Jessica');
INSERT INTO "Cast" VALUES (13, 2, 'Tony');
INSERT INTO "Cast" VALUES (14, 2, 'Alex');
INSERT INTO "Cast" VALUES (15, 3, 'Annalise Keating');
INSERT INTO "Cast" VALUES (16, 3, 'Nate Lahey');
INSERT INTO "Cast" VALUES (17, 3, 'Wes Gibbins');
INSERT INTO "Cast" VALUES (18, 3, 'Connor Walsh');
INSERT INTO "Cast" VALUES (19, 3, 'Rebecca Sutter');
INSERT INTO "Cast" VALUES (20, 3, 'Michaela Pratt');
INSERT INTO "Cast" VALUES (21, 3, 'Asher Millstone');
INSERT INTO "Cast" VALUES (22, 3, 'Laurel Castillo');
INSERT INTO "Cast" VALUES (23, 3, 'Frank Delfino');
INSERT INTO "Cast" VALUES (24, 3, 'Bonnie Winterbottom');
INSERT INTO "Cast" VALUES (25, 4, 'Narrator');
INSERT INTO "Cast" VALUES (09, 5, 'Addison Montgomery');
INSERT INTO "Cast" VALUES (26, 5, 'Meredith Grey');
INSERT INTO "Cast" VALUES (27, 5, 'Cristina Yang');
INSERT INTO "Cast" VALUES (28, 5, 'Izzie Stevens');
INSERT INTO "Cast" VALUES (29, 5, 'Alex Karev');
INSERT INTO "Cast" VALUES (30, 5, 'Derek Shepherd');
INSERT INTO "Cast" VALUES (31, 5, 'Miranda Bailey');
INSERT INTO "Cast" VALUES (32, 5, 'George OMalley');
INSERT INTO "Cast" VALUES (33, 5, 'Richard Webber');
INSERT INTO "Cast" VALUES (34, 5, 'Preston Burke');
INSERT INTO "Cast" VALUES (35, 5, 'Callie Torres');
INSERT INTO "Cast" VALUES (36, 5, 'Mark Sloan');
INSERT INTO "Cast" VALUES (37, 5, 'Lexie Grey');
INSERT INTO "Cast" VALUES (38, 5, 'Owen Hunt');
INSERT INTO "Cast" VALUES (39, 5, 'Arizona Robbins');
INSERT INTO "Cast" VALUES (40, 6, 'Lucas Scott');
INSERT INTO "Cast" VALUES (41, 6, 'Peyton Sawyer');
INSERT INTO "Cast" VALUES (42, 6, 'Haley James Scott');
INSERT INTO "Cast" VALUES (43, 6, 'Dan Scott');
INSERT INTO "Cast" VALUES (44, 6, 'Brooke Davis');
INSERT INTO "Cast" VALUES (45, 6, 'Marvin McFadden');
INSERT INTO "Cast" VALUES (46, 6, 'Deb Scott');
INSERT INTO "Cast" VALUES (47, 6, 'Antwon Taylor');
INSERT INTO "Cast" VALUES (48, 6, 'Whitey');
INSERT INTO "Cast" VALUES (49, 6, 'Karen Roe');
INSERT INTO "Cast" VALUES (50, 6, 'Jamie Scott');
INSERT INTO "Cast" VALUES (51, 6, 'Millicent Huxtable');
INSERT INTO "Cast" VALUES (52, 7, 'Michael Scott');
INSERT INTO "Cast" VALUES (53, 7, 'Jim Halpert');
INSERT INTO "Cast" VALUES (54, 7, 'Dwight Schrute');
INSERT INTO "Cast" VALUES (55, 7, 'Ryan Howard');
INSERT INTO "Cast" VALUES (56, 7, 'Andy Bernard');
INSERT INTO "Cast" VALUES (57, 7, 'Kevin Malone');
INSERT INTO "Cast" VALUES (58, 7, 'Roy Anderson');
INSERT INTO "Cast" VALUES (59, 7, 'Creed Bratton');
INSERT INTO "Cast" VALUES (60, 7, 'Kelly Kapoor');
INSERT INTO "Cast" VALUES (61, 7, 'Angela Martin');
INSERT INTO "Cast" VALUES (62, 7, 'Oscar Martinez');
INSERT INTO "Cast" VALUES (63, 7, 'Phyllis Vance');
INSERT INTO "Cast" VALUES (64, 8, 'Red (voice)');
INSERT INTO "Cast" VALUES (65, 8, 'Chuck (voice)');
INSERT INTO "Cast" VALUES (66, 8, 'Bomb (voice)');
INSERT INTO "Cast" VALUES (67, 8, 'Mighty Eagle (voice)');
INSERT INTO "Cast" VALUES (68, 8, 'Leonard (voice)');
INSERT INTO "Cast" VALUES (69, 8, 'Matilda (voice)');
INSERT INTO "Cast" VALUES (70, 8, 'Judge Peckinpah (voice)');
INSERT INTO "Cast" VALUES (71, 8, 'Terence (voice)');
INSERT INTO "Cast" VALUES (72, 8, 'Photog (voice)');
INSERT INTO "Cast" VALUES (73, 8, 'Tiny (voice)');
INSERT INTO "Cast" VALUES (74, 8, 'Edward the Birthday Dad (voice)');
INSERT INTO "Cast" VALUES (75, 8, 'Ross (voice)');
INSERT INTO "Cast" VALUES (75, 8, 'Cyrus (voice)');
INSERT INTO "Cast" VALUES (75, 8, 'Mime (voice)');
INSERT INTO "Cast" VALUES (76, 8, 'Helene the Lunch Mom (voice)');
INSERT INTO "Cast" VALUES (76, 8, 'Yoga Instructor (voice)');
INSERT INTO "Cast" VALUES (77, 8, 'Olivia Blue (voice)');
INSERT INTO "Cast" VALUES (77, 8, 'Monica the Crossing Guard (voice)');
INSERT INTO "Cast" VALUES (78, 9, 'Kevin Copeland');
INSERT INTO "Cast" VALUES (79, 9, 'Marcus Copeland');
INSERT INTO "Cast" VALUES (80, 9, 'Heather Vandergeld');
INSERT INTO "Cast" VALUES (81, 9, 'Chief Elliott Gordon');
INSERT INTO "Cast" VALUES (82, 9, 'Agent Jake Harper');
INSERT INTO "Cast" VALUES (83, 9, 'Warren Vandergeld');
INSERT INTO "Cast" VALUES (84, 9, 'Karen');
INSERT INTO "Cast" VALUES (85, 9, 'Latrell Spencer');
INSERT INTO "Cast" VALUES (86, 9, 'Megan Vandergald');
INSERT INTO "Cast" VALUES (87, 9, 'Agent Vincent Gomez');
INSERT INTO "Cast" VALUES (27, 10, 'Ting Ting (voice)');
INSERT INTO "Cast" VALUES (88, 10, 'Mulan (voice)');
INSERT INTO "Cast" VALUES (89, 10, 'Shang (voice)');
INSERT INTO "Cast" VALUES (90, 10, 'Mei (voice)');
INSERT INTO "Cast" VALUES (91, 10, 'Yao (voice)');
INSERT INTO "Cast" VALUES (92, 10, 'Ling (voice)');
INSERT INTO "Cast" VALUES (93, 10, 'Su (voice)');
INSERT INTO "Cast" VALUES (94, 10, 'Chien-Po (voice)');
INSERT INTO "Cast" VALUES (95, 10, 'First Ancestor (voice)');
INSERT INTO "Cast" VALUES (96, 11, 'Dory (voice)');
INSERT INTO "Cast" VALUES (97, 11, 'Marlin (voice)');
INSERT INTO "Cast" VALUES (98, 11, 'Hank (voice)');
INSERT INTO "Cast" VALUES (99, 11, 'Destiny (voice)');
INSERT INTO "Cast" VALUES (100, 11, 'Nemo (voice)');
INSERT INTO "Cast" VALUES (101, 11, 'Bailey (voice)');
INSERT INTO "Cast" VALUES (102, 11, 'Jenny (voice)');
INSERT INTO "Cast" VALUES (103, 11, 'Charlie (voice)');
INSERT INTO "Cast" VALUES (104, 11, 'Young Dory (voice)');
INSERT INTO "Cast" VALUES (105, 11, 'Wife Fish (voice)');
INSERT INTO "Cast" VALUES (106, 11, 'Husband Fish Stan (voice)');
INSERT INTO "Cast" VALUES (107, 11, 'Sigourney Weaver (voice)');
INSERT INTO "Cast" VALUES (108, 12, 'Judy Hopps (voice)');
INSERT INTO "Cast" VALUES (109, 12, 'Nick Wilde (voice)');
INSERT INTO "Cast" VALUES (110, 12, 'Chief Bogo (voice)');
INSERT INTO "Cast" VALUES (111, 12, 'Bellwether (voice)');
INSERT INTO "Cast" VALUES (112, 12, 'Clawhauser (voice)');
INSERT INTO "Cast" VALUES (113, 12, 'Bonnie Hopps (voice)');
INSERT INTO "Cast" VALUES (114, 12, 'Stu Hopps (voice)');
INSERT INTO "Cast" VALUES (115, 12, 'Yax (voice)');
INSERT INTO "Cast" VALUES (116, 12, 'Mayor Lionheart (voice)');
INSERT INTO "Cast" VALUES (117, 12, 'Mrs. Otterton (voice)');
INSERT INTO "Cast" VALUES (118, 12, 'Duke Weaselton (voice)');
INSERT INTO "Cast" VALUES (119, 12, 'Gazelle (voice)');
INSERT INTO "Cast" VALUES (120, 13, 'Leslie Knope')
INSERT INTO "Cast" VALUES (121, 13, 'Ann Perkins')
INSERT INTO "Cast" VALUES (122, 13, 'Tom Haverford')
INSERT INTO "Cast" VALUES (123, 13, 'Ron Swanson')
INSERT INTO "Cast" VALUES (124, 13, 'April Ludgate')
INSERT INTO "Cast" VALUES (125, 13, 'Andy Dwyer')
INSERT INTO "Cast" VALUES (126, 13, 'Ben Wyatt')
INSERT INTO "Cast" VALUES (127, 13, 'Chris Traeger')
INSERT INTO "Cast" VALUES (128, 13, 'Jerry Gergich')
INSERT INTO "Cast" VALUES (129, 14, 'Neal Caffrey')
INSERT INTO "Cast" VALUES (130, 14, 'Peter Burke');
INSERT INTO "Cast" VALUES (131, 14, 'Mozzie');
INSERT INTO "Cast" VALUES (132, 14, 'Elizabeth Burke');
INSERT INTO "Cast" VALUES (133, 14, 'Clinton Jones');
INSERT INTO "Cast" VALUES (134, 14, 'Diana Berrigan');
INSERT INTO "Cast" VALUES (41, 14, 'Sara Ellis');
INSERT INTO "Cast" VALUES (135, 14, 'June Ellington');
INSERT INTO "Cast" VALUES (136, 15, 'Annie Wilson');
INSERT INTO "Cast" VALUES (137, 15, 'Dixon Wilson');
INSERT INTO "Cast" VALUES (138, 15, 'Naomi Clark');
INSERT INTO "Cast" VALUES (139, 15, 'Erin Silver');
INSERT INTO "Cast" VALUES (140, 15, 'Navid Shirazi');
INSERT INTO "Cast" VALUES (141, 15, 'Adrianna Tate-Duncan');
INSERT INTO "Cast" VALUES (142, 15, 'Liam Court');
INSERT INTO "Cast" VALUES (143, 15, 'Debbie Wilson');
INSERT INTO "Cast" VALUES (144, 15, 'Ryan Matthews');
INSERT INTO "Cast" VALUES (145, 16, 'Piper Halliwell');
INSERT INTO "Cast" VALUES (146, 16, 'Phoebe Halliwell');
INSERT INTO "Cast" VALUES (147, 16, 'Leo Wyatt');
INSERT INTO "Cast" VALUES (148, 16, 'Paige Matthews');
INSERT INTO "Cast" VALUES (149, 16, 'Prue Halliwell');
INSERT INTO "Cast" VALUES (150, 16, 'Darryl Morris');
INSERT INTO "Cast" VALUES (151, 17, 'Queen Elizabeth II');
INSERT INTO "Cast" VALUES (152, 17, 'Winston Churchill');
INSERT INTO "Cast" VALUES (153, 17, 'Prince Philip');
INSERT INTO "Cast" VALUES (154, 17, 'Princess Margaret');
INSERT INTO "Cast" VALUES (155, 17, 'King George VI');
INSERT INTO "Cast" VALUES (156, 17, 'Queen Elizabeth The Queen Mother');
INSERT INTO "Cast" VALUES (157, 17, 'Queen Mary');
INSERT INTO "Cast" VALUES (158, 17, 'Anthony Eden');
INSERT INTO "Cast" VALUES (159, 17, 'Edward, Duke of Windsor');
INSERT INTO "Cast" VALUES (160, 18, 'Changez Khan');
INSERT INTO "Cast" VALUES (161, 18, 'Erica');
INSERT INTO "Cast" VALUES (162, 18, 'Bobby Lincoln');
INSERT INTO "Cast" VALUES (163, 18, 'Jim Cross');
--single quotes are escaped by doubling them up in SQL
INSERT INTO "Cast" VALUES (164, 18, 'Abu Changez''s Father');
INSERT INTO "Cast" VALUES (165, 18, 'Ammi Changez''s Mother');
INSERT INTO "Cast" VALUES (166, 18, 'Ludlow Cooper');
INSERT INTO "Cast" VALUES (167, 19, 'Lizzie McGuire/Isabella Parigi');
INSERT INTO "Cast" VALUES (168, 19, 'Gordo');
INSERT INTO "Cast" VALUES (169, 19, 'Jo McGuire');
INSERT INTO "Cast" VALUES (170, 19, 'Sam McGuire');
INSERT INTO "Cast" VALUES (171, 19, 'Matt McGuire');
INSERT INTO "Cast" VALUES (172, 19, 'Kate Sanders');
INSERT INTO "Cast" VALUES (173, 19, 'Ethan Craft');
INSERT INTO "Cast" VALUES (174, 19, 'Angel Ungermeyer');
INSERT INTO "Cast" VALUES (175, 19, 'Paolo Valisari');
INSERT INTO "Cast" VALUES (176, 19, 'Sergei');
INSERT INTO "Cast" VALUES (177, 20, 'Troy Bolton');
INSERT INTO "Cast" VALUES (178, 20, 'Gabriella Montez');
INSERT INTO "Cast" VALUES (179, 20, 'Sharpay Evans');
INSERT INTO "Cast" VALUES (180, 20, 'Ryan Evans');
INSERT INTO "Cast" VALUES (181, 20, 'Chad Danforth');
INSERT INTO "Cast" VALUES (182, 20, 'Taylor McKessie');
INSERT INTO "Cast" VALUES (183, 20, 'Jack Bolton');
INSERT INTO "Cast" VALUES (184, 20, 'Ms. Darbus');
INSERT INTO "Cast" VALUES (185, 20, 'Zeke Baylor');
INSERT INTO "Cast" VALUES (186, 20, 'Kelsi Nielsen');
INSERT INTO "Cast" VALUES (187, 21, 'Gretta James');
INSERT INTO "Cast" VALUES (188, 21, 'Dan Mulligan');
INSERT INTO "Cast" VALUES (189, 21, 'Dave Kohl');
INSERT INTO "Cast" VALUES (190, 21, 'Steve');
INSERT INTO "Cast" VALUES (191, 21, 'Violet Mulligan');
INSERT INTO "Cast" VALUES (192, 21, 'Saul');
INSERT INTO "Cast" VALUES (193, 21, 'Troublegum');
INSERT INTO "Cast" VALUES (194, 21, 'Miriam Hart');
INSERT INTO "Cast" VALUES (195, 22, 'Ray Arcel');
INSERT INTO "Cast" VALUES (196, 22, 'Roberto Duran');
INSERT INTO "Cast" VALUES (197, 22, 'Stephanie Arcel');
INSERT INTO "Cast" VALUES (198, 22, 'Frankie Carbo');
INSERT INTO "Cast" VALUES (199, 22, 'Felicidad Iglesias');
INSERT INTO "Cast" VALUES (200, 22, 'Carlos Eleta');
INSERT INTO "Cast" VALUES (201, 22, 'Sugar Ray Leonard');
INSERT INTO "Cast" VALUES (202, 22, 'Chaflan');
INSERT INTO "Cast" VALUES (1, 33, 'Dr. Julia Harris D.D.S');
INSERT INTO "Cast" VALUES (1, 34, 'Rose O Reily');
INSERT INTO "Cast" VALUES (1, 35, 'Katherine');
INSERT INTO "Cast" VALUES (177, 36, 'Dave Stangle');
INSERT INTO "Cast" VALUES (177, 37, 'Teddy Sanders');
INSERT INTO "Cast" VALUES (177, 38, 'Mike O Donnell');
INSERT INTO "Cast" VALUES (203, 39, 'Henry Brown');
INSERT INTO "Cast" VALUES (204, 39, 'Mary Brown');
INSERT INTO "Cast" VALUES (205, 39, 'Mrs Bird');



