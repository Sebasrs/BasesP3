IF DB_ID('NaturalPark') IS NOT NULL
BEGIN
  USE master;
  DROP DATABASE NaturalPark;
END

CREATE DATABASE NaturalPark;