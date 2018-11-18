USE NaturalPark;

CREATE TABLE Organization
(
  IdOrganization INT IDENTITY(1,1) PRIMARY KEY
);

CREATE TABLE Community
(
  IdCommunity    INT IDENTITY(1,1) PRIMARY KEY,
  IdOrganization INT,
  FOREIGN KEY    (IdOrganization) REFERENCES Organization(IdOrganization)
);

CREATE TABLE NaturalPark
(
  IdNaturalPark   INT IDENTITY(1,1) PRIMARY KEY,
  ParkName        VARCHAR(50),
  DeclarationDate DATETIME,
  TotalArea       INT
);

CREATE TABLE Area
(
  IdArea         INT IDENTITY(1,1) PRIMARY KEY,
  AreaName       VARCHAR(50),
  lenght         INT,
  IdNaturalPark  INT,
  FOREIGN KEY    (IdNaturalPark) REFERENCES NaturalPark(IdNaturalPark)
);

CREATE TABLE ParkByCommunity
(
  IdParkByCommunity INT IDENTITY(1,1) PRIMARY KEY,
  IdCommunity       INT,
  IdNaturalPark     INT,
  FOREIGN KEY       (IdCommunity)    REFERENCES Community(IdCommunity),
  FOREIGN KEY       (IdNaturalPark)  REFERENCES NaturalPark(IdNaturalPark)
);

CREATE INDEX CommunityNaturalPark
  ON ParkByCommunity (IdNaturalPark);

CREATE TABLE SpeciesType
(
  IdSpeciesType INT IDENTITY(1,1) PRIMARY KEY,
  SpeciesType   VARCHAR(50)
)

CREATE TABLE DataSpecies
(
  IdDataSpecies INT IDENTITY(1,1) PRIMARY KEY,
  Description   VARCHAR(250)
);

CREATE TABLE Species
(
  IdSpecies          INT IDENTITY(1,1) PRIMARY KEY,
  ScientificName     VARCHAR(50),
  CommonName         VARCHAR(50),
  IdSpeciesType      INT,
  IdDataSpecies      INT,
  IndividualsPerArea INT,
  FOREIGN KEY        (IdDataSpecies) REFERENCES DataSpecies(IdDataSpecies),
  FOREIGN KEY        (IdSpeciestype) REFERENCES SpeciesType(IdSpeciesType)
);

CREATE TABLE FoodChain
(
  IdFoodChain INT IDENTITY(1,1) PRIMARY KEY,
  IdPredator  INT,
  IdPrey      INT,
  FOREIGN KEY (IdPredator) REFERENCES Species(IdSpecies),
  FOREIGN KEY (IdPrey)     REFERENCES Species(IdSpecies)
)

CREATE TABLE PhoneType
(
  IdType INT IDENTITY(1,1) PRIMARY KEY,
  Value  INT
);

CREATE TABLE Phone
(
  IdPhone     INT IDENTITY(1,1) PRIMARY KEY,
  PhoneNumber INT,
  IdType      INT,
  FOREIGN KEY (IdType) REFERENCES PhoneType(IdType)
);

CREATE TABLE StaffPosition
(
  IdStaffPosition INT IDENTITY(1,1) PRIMARY KEY,
  Position        VARCHAR(50)
);

CREATE TABLE Staff
(
  IdStaff         INT IDENTITY(1,1) PRIMARY KEY,
  IdStaffPosition INT,
  Identification  VARCHAR(25),
  StaffName       VARCHAR(50),
  Direction       VARCHAR(50),
  IdPhoneNumber   INT,
  Salary          INT,
  FOREIGN KEY     (IdPhoneNumber)   REFERENCES Phone(IdPhone),
  FOREIGN KEY     (IdStaffPosition) REFERENCES StaffPosition(IdStaffPosition)
);

CREATE TABLE Entrance
(
  IdEntrance     INT IDENTITY(1,1) PRIMARY KEY,
  EntranceNumber INT,
  IdNaturalPark  INT,
  FOREIGN KEY    (IdNaturalPark) REFERENCES NaturalPark(IdNaturalPark)
);

CREATE TABLE StaffManagement
(
  IdStaffManagement INT IDENTITY(1,1) PRIMARY KEY,
  IdStaff           INT,
  IdEntrance        INT,
  FOREIGN KEY       (IdStaff)    REFERENCES Staff(IdStaff),
  FOREIGN KEY       (IdEntrance) REFERENCES Entrance(IdEntrance)
);

CREATE TABLE Category
(
  IdCategory     INT IDENTITY(1,1) PRIMARY KEY,
  CategoryType   VARCHAR(50),
  Capacity       INT,
  Price          INT
);

CREATE TABLE Housing
(
  IdHousing      INT IDENTITY(1,1) PRIMARY KEY,
  IdNaturalPark  INT,
  IdCategory     INT,
  FOREIGN KEY    (IdCategory)     REFERENCES Category(IdCategory),
  FOREIGN KEY    (IdNaturalPark) REFERENCES NaturalPark(IdNaturalPark)
);

CREATE TABLE Visitor
(
  IdVisitor      INT IDENTITY(1,1) PRIMARY KEY,
  Identification VARCHAR(20),
  VisitorName    VARCHAR(50),
  Residency      VARCHAR(50),
  Profession     VARCHAR(25),
  IdHousing      INT NOT NULL,
  FOREIGN KEY    (IdHousing) REFERENCES Housing(IdHousing)
);

CREATE TABLE Vehicle
(
  IdVehicle    INT IDENTITY(1,1) PRIMARY KEY,
  LicensePlate VARCHAR(20),
  VehicleType  INT
);

CREATE TABLE VigilanceStaff
(
  IdVigilanceStaff INT IDENTITY(1,1) PRIMARY KEY,
  IdStaff          INT,
  IdArea           INT,
  FOREIGN KEY      (IdStaff)   REFERENCES Staff(IdStaff),
  FOREIGN KEY      (IdArea)    REFERENCES Area(IdArea)
);

CREATE TABLE VigilanceVehicleUse
(
  IdVehicle        INT,
  IdVigilanceStaff INT,
  UseStartDate     DATE,
  UseEndDate       DATE,
  FOREIGN KEY      (IdVehicle)        REFERENCES Vehicle(IdVehicle),
  FOREIGN KEY      (IdVigilanceStaff) REFERENCES VigilanceStaff(IdVigilanceStaff)
);

CREATE TABLE Project
(
  IdProject INT IDENTITY(1,1) PRIMARY KEY,
  Budget    INT,
  StartDate DATE,
  EndDate   DATE
);

CREATE TABLE Degree
(
  IdDegree INT IDENTITY(1,1) PRIMARY KEY,
  DegreeDescription    VARCHAR(50)
);

CREATE TABLE InvestigationStaff
(
  IdInvestigationStaff INT IDENTITY(1,1) PRIMARY KEY,
  IdStaff              INT,
  IdProject            INT,
  IdDegree             INT,
  FOREIGN KEY          (IdStaff)   REFERENCES Staff(IdStaff),
  FOREIGN KEY          (IdProject) REFERENCES Project(IdProject),
  FOREIGN KEY          (IdDegree)  REFERENCES Degree(IdDegree)
);

CREATE TABLE Specialization
(
  Idspecialization    INT IDENTITY(1,1) PRIMARY KEY,
  SpecializationValue VARCHAR(50)
);

CREATE TABLE ConservationStaff
(
  IdConservationStaff INT IDENTITY(1,1) PRIMARY KEY,
  IdStaff             INT,
  IdArea              INT,
  Idspecialization    INT,
  FOREIGN KEY         (IdStaff)          REFERENCES Staff(IdStaff),
  FOREIGN KEY         (IdArea)           REFERENCES Area(IdArea),
  FOREIGN KEY         (Idspecialization) REFERENCES Specialization(Idspecialization)
);

CREATE TABLE TourType
(
  IdTourType        INT IDENTITY(1,1) PRIMARY KEY,
  TourValue         VARCHAR(50),
  PayPerVisitor   INT
);

CREATE TABLE Tour
(
  IdTour            INT IDENTITY(1,1) PRIMARY KEY,
  IdHousing         INT,
  IdTourType        INT,
  TourDate          DATE,
  OrganizationCost  INT,
  FOREIGN KEY       (IdHousing)  REFERENCES Housing(IdHousing),
  FOREIGN KEY       (IdTourType) REFERENCES TourType(IdTourType)
);

CREATE TABLE VisitorByTour
(
  IdVisitorByTour INT IDENTITY(1,1) PRIMARY KEY,
  IdVisitor       INT,
  IdTour          INT,
  FOREIGN KEY     (IdVisitor) REFERENCES Visitor(IdVisitor),
  FOREIGN KEY     (IdTour)    REFERENCES Tour(IdTour)
);

CREATE TABLE SpeciesByArea
(
  IdSpeciesByArea INT IDENTITY(1,1) PRIMARY KEY,
  IdSpecies       INT,
  IdArea          INT,
  FOREIGN KEY     (IdSpecies) REFERENCES Species(IdSpecies),
  FOREIGN KEY     (IdArea)    REFERENCES Area(IdArea)
);