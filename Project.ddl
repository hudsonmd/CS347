-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2016_03_28 13:15:08 CDT
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c




DROP TABLE Department CASCADE CONSTRAINTS ;

DROP TABLE "Parent_Child" CASCADE CONSTRAINTS ;

DROP TABLE Person CASCADE CONSTRAINTS ;

DROP TABLE "Person_Project" CASCADE CONSTRAINTS ;

DROP TABLE Project CASCADE CONSTRAINTS ;

CREATE TABLE Department
  (
    "dept_no"   INTEGER NOT NULL ,
    "dept_name" VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE Department ADD CONSTRAINT Department_PK PRIMARY KEY ( "dept_no" ) ;


CREATE TABLE "Parent_Child"
  (
    "parent_child_id" INTEGER NOT NULL ,
    parent            INTEGER NOT NULL ,
    child             INTEGER NOT NULL
  ) ;
ALTER TABLE "Parent_Child" ADD CONSTRAINT "Parent_Child_PK" PRIMARY KEY ( "parent_child_id" ) ;


CREATE TABLE Person
  (
    "person_id"        INTEGER NOT NULL ,
    "first_name"       VARCHAR2 (255) NOT NULL ,
    "last_name"        VARCHAR2 (255) NOT NULL ,
    home_address       VARCHAR2 (255) ,
    zipcode            VARCHAR2 (255) ,
    "home_phone"       INTEGER ,
    "us_citizen"       NUMBER NOT NULL ,
    spouse             INTEGER ,
    "employee_id"      INTEGER ,
    salary             INTEGER ,
    "salary_exception" NUMBER ,
    IsFired            NUMBER ,
    manager            INTEGER ,
    type               VARCHAR2 (255) ,
    bonus              INTEGER ,
    "dept_no"          INTEGER
  ) ;
CREATE UNIQUE INDEX Person__IDX ON Person
  (
    spouse ASC
  )
  ;
ALTER TABLE Person ADD CONSTRAINT Person_PK PRIMARY KEY ( "person_id" ) ;


CREATE TABLE "Person_Project"
  (
    "person_project_id" INTEGER NOT NULL ,
    "person_id"         INTEGER NOT NULL ,
    "project_id"        INTEGER NOT NULL
  ) ;
ALTER TABLE "Person_Project" ADD CONSTRAINT "Person_Project_PK" PRIMARY KEY ( "person_project_id" ) ;


CREATE TABLE Project
  (
    manager            INTEGER ,
    "project_id"       INTEGER NOT NULL ,
    "project_title"    VARCHAR2 (20) NOT NULL ,
    "dept_no"          INTEGER NOT NULL ,
    "project_active"   NUMBER ,
    "end_date_month"   INTEGER ,
    "end_date_day"     INTEGER ,
    "end_date_year"    INTEGER ,
    "est_person_hours" INTEGER ,
    "parent_project"   INTEGER NOT NULL
  ) ;
ALTER TABLE Project ADD CONSTRAINT Project_PK PRIMARY KEY ( "project_id" ) ;


ALTER TABLE "Parent_Child" ADD CONSTRAINT "Parent_Child_Person_FK" FOREIGN KEY ( child ) REFERENCES Person ( "person_id" ) ;

ALTER TABLE "Parent_Child" ADD CONSTRAINT "Parent_Child_Person_FKv1" FOREIGN KEY ( parent ) REFERENCES Person ( "person_id" ) ;

ALTER TABLE "Person_Project" ADD CONSTRAINT "Person_Project_Person_FK" FOREIGN KEY ( "person_id" ) REFERENCES Person ( "person_id" ) ;

ALTER TABLE "Person_Project" ADD CONSTRAINT "Person_Project_Project_FK" FOREIGN KEY ( "project_id" ) REFERENCES Project ( "project_id" ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Department_FK FOREIGN KEY ( "dept_no" ) REFERENCES Department ( "dept_no" ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FK FOREIGN KEY ( spouse ) REFERENCES Person ( "person_id" ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FKv1 FOREIGN KEY ( manager ) REFERENCES Person ( "person_id" ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Department_FK FOREIGN KEY ( "dept_no" ) REFERENCES Department ( "dept_no" ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Person_FK FOREIGN KEY ( manager ) REFERENCES Person ( "person_id" ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Project_FK FOREIGN KEY ( "parent_project" ) REFERENCES Project ( "project_id" ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             1
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
