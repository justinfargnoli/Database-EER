DROP DATABASE IF EXISTS Students;
CREATE DATABASE IF NOT EXISTS Students;
USE Students;

CREATE TABLE Address (
    id INT AUTO_INCREMENT  NOT NULL,
	StreetNumber int(5),
	Street char(30),
    City char(30),
    State char(2), 
    ZIPCode int(5),
    primary key (id)
);

CREATE TABLE ReportCard (
	id INT AUTO_INCREMENT NOT NULL,
	Science int(3), 
    Math int(3), 
    English int(3), 
    SocialStudies int(3),
    primary key (id)
    
);

CREATE TABLE Students (
    id INT AUTO_INCREMENT NOT NULL,
	FirstName char(30),
	LastName char(30),
	MiddleInitial char(1),
	Grade int(2),
    ReportCard int, 
	Address int,
    primary key(id),
    foreign key (Address) references Address(id),
    foreign key (ReportCard) references ReportCard(id)
);

 INSERT INTO Address (StreetNumber, Street, City, State, ZIPCode)
 VALUES (911,  'Help Me Rd', 'Rochester', 'NY', 14559),
(420, 'Palmer St', 'Rochester', 'CA', 14626),
(5224, 'N. Ridge St', 'College Park', 'PA', 14480), 
(75, 'Leno Dr,', 'Boston',  'MA', 13829), 
(666, 'Freeba Circle', 'Seattle', 'WA', 32014), 
(8484, 'Nonski Ave', 'Princeton', 'NJ', 14303),  
(211, 'Mieda Rd', 'Clasrckson', 'GA', 37183), 
(3223, 'Agencys Dr.', 'Atlanta', 'GA', 37183), 
(1211, 'Pensua Ave.', 'Clarckson', 'GA', 37183), 
(420, 'Palm St', 'Atlanta', 'GA', 37183), 
(5224, 'N. Rider St', 'Atlanta', 'GA', 37183),
(75, 'Lenos Dr', 'Atlanta', 'GA', 37183),
(666, 'Freebas Circle', 'Clarckson', 'GA', 37183),
(8484, 'Nonskis Ave', 'Atlanta', 'GA', 37183),
(4225, 'Studios Lane', 'Atlanta', 'GA', 37183),
(911, 'Help Me Rd', 'Atlanta', 'GA', 37183),
(211, 'Spencericious Rd', 'Spencerport', 'GA', 37183),
(1211, 'Pensu Ave', 'Savannah', 'GA', 82343),
(5224, 'N. Ridge St', 'Ridgeway', 'GA', 94884),
(75, 'Leno Dr', 'Jay', 'GA', 63829),
(666, 'Freeba Circle', 'Freezies', 'GA', 18438),
(4225, 'Studios Lane', 'Clarckson', 'GA', 18484),
(211, 'Seemisoa Lane', 'India', 'GA', 93282),
(1211, 'Pensu Ave', 'Peru', 'GA', 27829),
(5224, 'N. Ridge St', 'Emergency', 'GA', 95727),
(666, 'Freeba Circle', 'Almsot Done', 'GA', 85739),
(8484, 'Nonski Ave', 'Athens', 'GA', 37183),
(94225, 'Studios Lane', 'Rochester', 'GA', 73223);

INSERT INTO ReportCard (Science, Math, English, SocialStudies)
VALUES (100, 100, 100, 100),
(89, 40, 80, 93),
(79, 87, 88, 89),
(90, 81, 76, 67),
(89, 99, 90, 99),
(95, 99, 90, 99),
(99, 90, 100, 99),
(99, 83, 99, 91),
(79, 65, 99, 99),
(55, 99, 99, 99),
(99, 99, 88, 97),
(66, 79, 99, 99),
(98, 88, 99, 88),
(66, 65, 99, 88),
(98, 65, 99, 99),
(99, 99, 100, 99),
(77, 99, 99, 98),
(99, 79, 98, 100),
(98, 99, 79, 99);

INSERT INTO Students (FirstName, LastName, MiddleInitial, Grade, Address, ReportCard)
VALUES ('Charlie', 'Brown', 'B', 13, 1, 1),
('Ryan', 'Birkbeck', 'A', 9, 2, 2),
('Elliot', 'Chung', 'K', 11, 3, 3),
('Mike', 'Janson', 'A', 12, 4, 4),
('Cody', 'Toland', 'A', 8, 5, 5),
('Jake', 'B.', 'A', 5, 6, 6),
('Jaden', 'Gillett', 'A', 12, 7, 7),
('Charlie', 'Brown', 'B', 13, 8, 8),
('Anthony', 'Dunn', 'A', 9, 9, 9),
('James', 'Fargnoli', 'A', 7, 10, 10),
('Justin', 'Birkbeck', 'A', 10, 11, 11),
('Ryan', 'Chung', 'A', 9, 12, 12),
('Elliot', 'Janson', 'K', 11, 13, 13),
('Mike', 'Toland', 'A', 12, 14, 14),
('Cody', 'B', 'A', 8, 15, 15),
('Jake', 'Gillett', 'A', 5, 16, 16),
('Jaden', 'Striker', 'A', 12, 17, 17),
('Elmer', 'Brown', 'B', 13, 18, 18),
('Jessica', 'Capuano', 'A', 9, 19, 19),
('Lauren', 'Dunn', 'A', 7, 20, 1),
('Mary', 'Fargnoli', 'A', 10, 21, 2),
('Kylee', 'Birkbeck', 'A', 9, 22, 3),
('Rebecca', 'Chung', 'K', 11, 23, 4),
('Colleen', 'Janson', 'A', 12, 24, 5),
('Kim', 'Toland', 'A', 8, 25, 6),
('Tracy', 'B.', 'A', 5, 26, 7),
('Emma', 'Gillett', 'A', 12, 27, 8),
('Charlie', 'Monsees', 'B', 13, 28, 9),
('Anthony', 'Thomas', 'A', 9, 1, 10),
('James', 'Carroll', 'A', 7, 2, 11),
('Justin', 'Stecia', 'A', 10, 3, 12),
('Ryan', 'Blank', 'A', 9, 4, 13),
('Elliot', 'Crego', 'K', 11, 5, 14),
('Mike', 'Invia', 'A', 12, 6, 15),
('Cody', 'Frenapa', 'A', 8, 7, 16),
('Jake', 'Jung', 'A', 5, 8, 17),
('Jaden', 'Muhammad', 'A', 12, 9, 18);