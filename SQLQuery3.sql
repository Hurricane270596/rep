Create Table [Persons]
(
PersonId int IDENTITY (10000, 10) Primary Key NOT NULL,
Surname varchar(30) NOT NULL,
FirstName varchar(30) NOT NULL,
PatronymicSurname varchar(30) NOT NULL,
PasportNumber char(15) NOT NULL UNIQUE,
BirthDate Date NOT NULL,
Age int NOT NULL,
Gender char(10) NOT NULL,
PhoneNumber int NOT NULL
);

Create Table [Aboniments]
(
AbonimentId int IDENTITY (10, 1) Primary Key NOT NULL,
AbonimentName nvarchar(50) NOT NULL,
AbonimentDuration int NOT NULL,
AbonimentCost int NOT NULL,
);

Create Table [Clients]
(
ClientId int NOT NULL UNIQUE foreign key references Persons(PersonId),
ActualAbonimentTypeId int REFERENCES Aboniments(AbonimentId),
DateOfPurchase Date,
TrainerId int
);

Create Table [Employees]
(
EmployeeId int NOT NULL UNIQUE foreign key references Persons(PersonId),
WorkBookNumber varchar(20) NOT Null,
LoginName varchar(30) NOT NULL,
Password varchar(30) NOT NULL
);

Create Table [JobTitles]
(
JobTitleId int IDENTITY (100, 1) Primary Key NOT NULL,
Salary int Check(Salary>0) NOT NULL
);

Create Table [EmployeesJob]
(
EmployeeId int NOT NULL foreign key references Employees(EmployeeId),
JobTitleId int NOT NULL foreign key references JobTitles(JobTitleId),
);

Create Table [EmployeesLog]
(
EmployeeId int NOT NULL UNIQUE foreign key references Employees(EmployeeId),
LoginName varchar(30) UNIQUE NOT NULL,
Password varchar(30) NOT NULL
)

Create Table [BodyInfo]
(
BodyInfoId int Identity(100000, 1) Primary Key NOT NULL,
ClientId int NOT NULL foreign key references Clients(ClientId),
DateOfMeasurement Date,
DaysToNextMeasurement int,
Height int NOT NULL,
Weight int NOT NULL,
SkeletalMuscleMass int NOT NULL,
PercentageOfFat int NOT NULL,
BodyMassIndex int NOT NULL,
ArmCircumference int NOT NULL,
ThighCircumference int NOT NULL,
WaistCircumference int NOT NULL,
ChestCircumference int NOT NULL,
ShoulderCircumference int NOT NULL
);



