DROP DATABASE MYBDB;

CREATE DATABASE MYBDB;

USE MYBDB;

CREATE TABLE TB_USER (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  FIRST_NAME VARCHAR(30) NOT NULL,
  LAST_NAME VARCHAR(30) NOT NULL,
  DATEOFBIRTH DATE NOT NULL,
  GENRE VARCHAR(10) NOT NULL,
  PHONE VARCHAR(20) NOT NULL,
  EMAIL VARCHAR(60) NOT NULL,
  STATUS CHAR(1) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  CREATE_AT DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UPDATE_AT DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );

 CREATE TABLE TB_USER_FAMILY(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_USER INT NOT NULL,
    CHILDREN_NUMBER INT NOT NULL DEFAULT 0,
    CIVIL_STATUS CHAR(1) NOT NULL DEFAULT 'S',
    FAMILY_INCOME DOUBLE NOT NULL DEFAULT 0.0,

    CONSTRAINT FK_USER_FAMILY_01 FOREIGN KEY (ID_USER) REFERENCES TB_USER (ID)
 );

 CREATE TABLE TB_USER_EMPLOYMENT(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_USER INT NOT NULL,
    JOB_NAME VARCHAR(160) NOT NULL,
    SALARY DOUBLE NOT NULL,
    CONSTRAINT FK_USER_EMPLOYMENT_01 FOREIGN KEY (ID_USER) REFERENCES TB_USER (ID)
 );