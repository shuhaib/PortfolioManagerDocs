-- CREATE SCHEMA `portfolio_manager` ;
USE `portfolio_manager`;

------------------------------------
-- Currently there are 11 tables
-- 1.  COUNTRY
-- 2.  USER
-- 3.  USER_CONTACT
-- 4.  ORGANIZATION
-- 5.  OPERATING_ENTITY
-- 6.  SERVICE_OFFERING
-- 7.  PORTFOLIO
-- 8.  PROJECT
-- 9.  KPI_MASTER
-- 10. KPI
-- 11. KPI_DATA
------------------------------------ 

-- Table COUNTRY
CREATE TABLE `COUNTRY` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `CODE` VARCHAR(255) NOT NULL,
    `NAME` VARCHAR(255) NOT NULL
);

-- Table USER
CREATE TABLE `USER` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	`FIRST_NAME` VARCHAR(255) NOT NULL,
    `LAST_NAME` VARCHAR(255)
);

-- Table USER_CONTACT
CREATE TABLE `USER_CONTACT` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	`EMAIL` VARCHAR(255) NOT NULL,
    `PHONE_NUMBER` BIGINT,
	`USER_ID` BIGINT UNSIGNED NOT NULL
);

-- Table ORGANIZATION
CREATE TABLE `ORGANIZATION` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `NAME` VARCHAR(255) NOT NULL,
    `DESCRIPTION` VARCHAR(255),
    `COUNTRY_ID` BIGINT UNSIGNED NOT NULL
);

-- Table OPERATING_ENTITY
CREATE TABLE `OPERATING_ENTITY` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `NAME` VARCHAR(255) NOT NULL,
    `ORGANISATION_ID` BIGINT UNSIGNED NOT NULL,
    `COUNTRY_ID` BIGINT UNSIGNED NOT NULL
);

-- Table SERVICE_OFFERING
CREATE TABLE `SERVICE_OFFERING` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `NAME` VARCHAR(255) NOT NULL,
    `DESCRIPTION` VARCHAR(255),
    `BUSINESS_WEIGHTAGE` INT,
    `OPERATING_ENTITY_ID` BIGINT UNSIGNED NOT NULL
);

-- Table PORTFOLIO
CREATE TABLE `PORTFOLIO` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `NAME` VARCHAR(255) NOT NULL,
    `DESCRIPTION` VARCHAR(255),
    `SOLUTION` VARCHAR(255),
    `PORTFOLIO_MODEL` VARCHAR(255),
    `BUSINESS_WEIGHTAGE` INT,
    `SERVICE_OFFERING_ID` BIGINT UNSIGNED NOT NULL
);

-- Table PROJECT
CREATE TABLE `PROJECT` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `NAME` VARCHAR(255) NOT NULL,
	`DESCRIPTION` TEXT,
	`DEPARTMENT` VARCHAR(255),
	`HEAD_COUNT` INT,
    `BUSINESS_WEIGHTAGE` INT,
    `DEVELOPMENT_METHODOLOGY` VARCHAR(255),
	`SERVIVE_OWNER_IT_ID` BIGINT UNSIGNED,
	`SERVIVE_OWNER_BUSINESS_ID` BIGINT UNSIGNED,
	`SERVIVE_MANAGER_ID` BIGINT UNSIGNED,
	`PORTFOLIO_ID` BIGINT UNSIGNED
);

-- Table KPI_MASTER
CREATE TABLE `KPI_MASTER` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	`NAME` VARCHAR(255) NOT NULL,
    `DESCRIPTION` VARCHAR(255)
);

-- Table KPI
CREATE TABLE `KPI` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	`THRESHOLD_MAX` INT,
	`THRESHOLD_MIN` INT,
	`KPI_MASTER_ID` BIGINT UNSIGNED,
	`PROJECT_ID` BIGINT UNSIGNED,
    `BUSINESS_WEIGHTAGE` INT
);

-- Table KPI_DATA
CREATE TABLE `KPI_DATA` (
    `ID` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	`VALUE` INT,
	`REPORTING_PERIOD` DATETIME,
	`COMMENTS` VARCHAR(255),	
    `KPI_ID` BIGINT UNSIGNED
);