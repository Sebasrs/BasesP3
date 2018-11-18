USE GreenTECDW
GO

CREATE TABLE DimTime
(
  IdDimTime         INT NOT NULL PRIMARY KEY,
  CalendarDate      DATE,
  CalendarMonth     VARCHAR(50),
  CalendarTrimester INT,
  CalendarYear      INT,
  DayOfWeek         VARCHAR(50)
);
GO

CREATE TABLE DimEarnings
(
  IdDimEarnings INT NOT NULL IDENTITY PRIMARY KEY,
  ToursIncome   INT,
  HousingIncome INT
)
GO

CREATE TABLE DimCosts
(
  IdDimCosts       INT NOT NULL IDENTITY PRIMARY KEY,
  AllSalaries      INT,
  ToursExpenses    INT
)
GO

CREATE TABLE DimLocation
(
  IdDimLocation   INT NOT NULL IDENTITY PRIMARY KEY,
  NaturalPark VARCHAR(50)
)
GO

CREATE TABLE FactOverview
(
  IdDimTime     INT REFERENCES DimTime(IdDimTime),
  IdDimEarnings INT REFERENCES DimEarnings(IdDimEarnings),
  IdDimCosts    INT REFERENCES DimCosts(IdDimCosts),
  IdDimLocation INT REFERENCES DimLocation(IdDimLocation),
  TotalIncome   INT,
  TotalExpenses INT,
  Profit        INT,
  CONSTRAINT    IdFactOverview PRIMARY KEY
  (
    IdDimTIme,
    IdDimEarnings,
    IdDimCosts,
    IdDimLocation
  )
)
GO