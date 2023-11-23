DROP DATABASE MYBDB;

CREATE DATABASE MYBDB;

USE MYBDB;

-- -----------------------------------------------------

-- Table `TB_USER`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `TB_USER` (
        `ID_USER` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `FIRST_NAME` VARCHAR(20) NOT NULL,
        `LAST_NAME` VARCHAR(20) NOT NULL,
        `DATE_OF_BIRTH` DATE NOT NULL,
        `GENRE` VARCHAR(10) NOT NULL,
        `CHILDREN_NUMBER` INT NOT NULL,
        `PHONE` VARCHAR(20) NOT NULL,
        `EMAIL` VARCHAR(60) NOT NULL UNIQUE,
        `PASSWORD` VARCHAR(255) NOT NULL,
        `STATUS` CHAR(1) NOT NULL DEFAULT 'A',
        `STATUS_CIVIL` CHAR(1) NOT NULL DEFAULT 'S',
        `CREATE_AT` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `UPDATE_AT` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

-- -----------------------------------------------------

-- Table `TB_BUDGET`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `TB_BUDGET` (
        `ID_BUDGET` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `BUDGET` DOUBLE NOT NULL,
        `VALUE_SAVED` DOUBLE NOT NULL DEFAULT 0.0,
        `SPENDING_LIMIT_ECONOMY` DOUBLE NOT NULL DEFAULT 0.0,
        `ID_USER` INT NOT NULL,
        INDEX `fk_TB_BUDGET_TB_USER1_idx` (`ID_USER` ASC),
        CONSTRAINT `fk_TB_BUDGET_TB_USER1` FOREIGN KEY (`ID_USER`) REFERENCES `TB_USER` (`ID_USER`)
    );

-- -----------------------------------------------------

-- Table `TB_GOALS`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `TB_GOALS` (
        `ID_GOALS` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `DESCRIPTION` VARCHAR(255) NOT NULL,
        `PROGRESS` VARCHAR(15) NOT NULL,
        `ESTIMATED_DATE` DATETIME NOT NULL,
        `ID_USER` INT NOT NULL,
        INDEX `fk_TB_GOALS_TB_USER1_idx` (`ID_USER` ASC),
        CONSTRAINT `fk_TB_GOALS_TB_USER1` FOREIGN KEY (`ID_USER`) REFERENCES `TB_USER` (`ID_USER`)
    );

-- -----------------------------------------------------

-- Table `TB_USER_EMPLOYMENT`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `TB_EMPLOYMENTS` (
        `ID_EMPLOYMENT` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `JOBNAME` VARCHAR(60) NOT NULL,
        `SALARY` DOUBLE NOT NULL,
        `WORK_START_DATE` DATE NOT NULL,
        `ID_USER` INT NOT NULL,
        INDEX `fk_TB_EMPLOYMENTS_TB_USER1_idx` (`ID_USER` ASC),
        CONSTRAINT `fk_TB_EMPLOYMENTS_TB_USER1` FOREIGN KEY (`ID_USER`) REFERENCES `TB_USER` (`ID_USER`)
    );

-- -----------------------------------------------------

-- Table `TB_EXPENSES_TYPE`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `TB_EXPENSES_TYPE` (
        `ID_EXP_TYPE` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `TYPE` VARCHAR(40) NOT NULL,
        `DESCRIPTION` VARCHAR(160) NULL
    );

-- -----------------------------------------------------

-- Table `TB_EXPENSES`

-- -----------------------------------------------------

CREATE TABLE
    IF NOT EXISTS `TB_EXPENSES` (
        `ID_EXPENSES` INT NOT NULL AUTO_INCREMENT,
        `DATE_REFERENCE` DATETIME NOT NULL,
        `VALUE` DOUBLE NOT NULL,
        `STATUS` CHAR(1) NOT NULL DEFAULT 'A',
        `ID_USER` INT NOT NULL,
        `ID_EXP_TYPE` INT NOT NULL,
        PRIMARY KEY (
            `ID_EXPENSES`,
            `ID_USER`,
            `ID_EXP_TYPE`
        ),
        INDEX `fk_TB_EXPENSES_TB_USER1_idx` (`ID_USER` ASC),
        INDEX `fk_TB_EXPENSES_TB_EXPENSES_TYPE1_idx` (`ID_EXP_TYPE` ASC),
        CONSTRAINT `fk_TB_EXPENSES_TB_USER1` FOREIGN KEY (`ID_USER`) REFERENCES `TB_USER` (`ID_USER`),
        CONSTRAINT `fk_TB_EXPENSES_TB_EXPENSES_TYPE1` FOREIGN KEY (`ID_EXP_TYPE`) REFERENCES `TB_EXPENSES_TYPE` (`ID_EXP_TYPE`)
    );
