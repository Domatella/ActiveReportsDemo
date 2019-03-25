CREATE DATABASE TESTDB
GO

USE TESTDB
GO

CREATE TABLE [Emloyees] (
    [EmloyeesID] INTEGER NOT NULL IDENTITY(1, 1),
    [Name] VARCHAR(255) NULL,
    [ComputerTypeID] INTEGER NULL,
    PRIMARY KEY ([EmloyeesID])
);
GO

INSERT INTO Emloyees([Name],[ComputerTypeID]) VALUES('Celeste V. Ross',1),('Victor A. Wheeler',1),('Sage K. Patterson',2),('Justin E. Washington',1),('Vernon Q. Cooper',2),('Adrian S. Hood',1),('Magee L. Dickerson',1),('Castor F. Taylor',1),('Rooney S. Vasquez',2),('Wallace C. Alston',2),('Matthew L. Medina',2),('Cheyenne P. Espinoza',3),('Carter I. Strickland',1),('Julie U. Carney',2),('Wesley E. Guerra',1),('Avram Z. Sherman',3),('Bo Y. Noel',3),('Roth J. Acosta',2),('Casey S. Gould',2),('Hyatt M. Sullivan',3);
INSERT INTO Emloyees([Name],[ComputerTypeID]) VALUES('Iola K. Chang',2),('Charissa U. Bonner',1),('Anika D. Mayo',1),('Emerson R. Walsh',2),('Gary G. Watkins',2),('Alan Y. Martinez',2),('Florence F. Osborne',1),('Zia F. Rodriquez',2),('Wade E. Smith',2),('Fulton F. Goodman',3),('Katell N. James',2),('Graham K. Hardy',1),('Quintessa B. Morin',2),('Hanna A. Poole',2),('Samantha V. Trevino',2),('Gannon G. Bennett',1),('Jordan N. Campos',2),('Gil O. Avery',2),('Unity M. Mendoza',3),('Lenore I. Bartlett',1);
INSERT INTO Emloyees([Name],[ComputerTypeID]) VALUES('Charles P. Johnson',3),('Clark Y. Fry',2),('Neve F. Owen',1),('Cailin V. Hobbs',3),('Ann Q. Goff',1),('Amir N. Oliver',1),('Paul J. Hines',3),('Tucker T. Macias',3),('Octavius Y. Christian',1),('Graham Q. Huffman',3),('Kieran F. Buchanan',2),('Brielle V. Mayo',1),('Idola A. Tucker',3),('Harrison X. Schultz',2),('Roth W. Curry',2),('Katell J. Osborn',3),('Merritt I. Hogan',1),('Juliet P. Robles',2),('Evan F. Bradford',1),('Omar C. Norton',2);
INSERT INTO Emloyees([Name],[ComputerTypeID]) VALUES('Elijah G. Guerrero',3),('Elijah E. Solis',1),('Avram K. Rodriguez',3),('Sybil W. Lowe',3),('Levi B. Huffman',2),('Chloe R. Knight',2),('Ivor Z. Knapp',3),('Logan S. Martinez',3),('Zia Q. Livingston',1),('Daquan E. Glover',1),('Vaughan V. Massey',2),('Maile O. Espinoza',3),('Callum O. Davenport',3),('Barry H. Sweeney',2),('Nayda K. Grant',2),('Wayne I. Potts',2),('Bruce C. Schultz',1),('Cyrus U. Dean',1),('Kasper J. Burgess',2),('Brynn M. Davidson',1);
INSERT INTO Emloyees([Name],[ComputerTypeID]) VALUES('Sybil V. Hall',3),('Ulysses S. Russo',3),('Hiroko W. Wiggins',2),('Michelle D. Dale',2),('Martha P. Washington',1),('Breanna E. Cox',3),('Brian O. Hurley',1),('Marvin R. Britt',3),('Tyrone X. Christensen',1),('Gannon E. Johnson',1),('Vivian C. Duffy',3),('Stuart L. Arnold',1),('Kyla F. Bruce',2),('Phelan W. Silva',3),('Lacy A. Cohen',1),('Devin Z. Morton',1),('Cailin B. Diaz',2),('Yolanda L. Patterson',3),('Bruce I. Sutton',3),('Quon R. Stewart',3);

CREATE TABLE [ComputerTypes] (
    [TypeID] INTEGER NOT NULL IDENTITY(1, 1),
    [Name] VARCHAR(255) NULL,
    PRIMARY KEY ([TypeID])
);
GO

insert into ComputerTypes([Name]) VALUES ('PC');
insert into ComputerTypes([Name]) VALUES ('Laptop');
insert into ComputerTypes([Name]) VALUES ('Tablet');
GO

ALTER TABLE [Emloyees]
ADD FOREIGN KEY ([ComputerTypeID]) REFERENCES ComputerTypes([TypeID]);
GO

ALTER table [Emloyees]
add cost decimal null
GO

declare @i int = 0;

while (@i < 101)
begin
	update Emloyees set cost = rand() * (3001 - 1000) + 1000 where [EmloyeesID] = @i;
	set @i = @i + 1;
end