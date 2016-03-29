-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2016-03-29 16:09:05 CDT
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c




DROP TABLE Department CASCADE CONSTRAINTS ;

DROP TABLE Parent_Child CASCADE CONSTRAINTS ;

DROP TABLE Person CASCADE CONSTRAINTS ;

DROP TABLE Person_Project CASCADE CONSTRAINTS ;

DROP TABLE Project CASCADE CONSTRAINTS ;

CREATE TABLE Department
  (
    dept_no   INTEGER NOT NULL ,
    dept_name VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE Department ADD CONSTRAINT Department_PK PRIMARY KEY ( dept_no ) ;


CREATE TABLE Parent_Child
  (
    parent_child_id INTEGER NOT NULL ,
    parent          INTEGER NOT NULL ,
    child           INTEGER NOT NULL
  ) ;
ALTER TABLE Parent_Child ADD CONSTRAINT "Parent-Child_PK" PRIMARY KEY ( parent_child_id ) ;


CREATE TABLE Person
  (
    person_id        INTEGER NOT NULL ,
    first_name       VARCHAR2 (255) NOT NULL ,
    last_name        VARCHAR2 (255) NOT NULL ,
    home_address     VARCHAR2 (255) ,
    zipcode          VARCHAR2 (255) ,
    home_phone     INTEGER ,
    us_citizen     NUMBER NOT NULL ,
    spouse           INTEGER ,
    employee_id      INTEGER ,
    salary           INTEGER ,
    salary_exception NUMBER ,
    IsFired          NUMBER ,
    manager          INTEGER ,
    type             VARCHAR2 (255) ,
    bonus            INTEGER ,
    dept_no          INTEGER
  ) ;
CREATE UNIQUE INDEX Person__IDX ON Person
  (
    spouse ASC
  )
  ;
ALTER TABLE Person ADD CONSTRAINT Person_PK PRIMARY KEY ( person_id ) ;


CREATE TABLE Person_Project
  (
    person_project_id INTEGER NOT NULL ,
    person_id         INTEGER NOT NULL ,
    project_id        INTEGER NOT NULL
  ) ;
ALTER TABLE Person_Project ADD CONSTRAINT "Person-Project_PK" PRIMARY KEY ( person_project_id ) ;


CREATE TABLE Project
  (
    manager          INTEGER ,
    project_id       INTEGER NOT NULL ,
    project_title    VARCHAR2 (20) NOT NULL ,
    dept_no          INTEGER NOT NULL ,
    project_active   NUMBER ,
    end_date_month   INTEGER ,
    end_date_day     INTEGER ,
    end_date_year    INTEGER ,
    est_person_hours INTEGER ,
    parent_project   INTEGER NOT NULL ,
    type             VARCHAR2 (255)
  ) ;
ALTER TABLE Project ADD CONSTRAINT Project_PK PRIMARY KEY ( project_id ) ;


ALTER TABLE Parent_Child ADD CONSTRAINT "Parent-Child_Person_FK" FOREIGN KEY ( child ) REFERENCES Person ( person_id ) ;

ALTER TABLE Parent_Child ADD CONSTRAINT "Parent-Child_Person_FKv1" FOREIGN KEY ( parent ) REFERENCES Person ( person_id ) ;

ALTER TABLE Person_Project ADD CONSTRAINT "Person-Project_Person_FK" FOREIGN KEY ( person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE Person_Project ADD CONSTRAINT "Person-Project_Project_FK" FOREIGN KEY ( project_id ) REFERENCES Project ( project_id ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Department_FK FOREIGN KEY ( dept_no ) REFERENCES Department ( dept_no ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FK FOREIGN KEY ( spouse ) REFERENCES Person ( person_id ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FKv1 FOREIGN KEY ( manager ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Department_FK FOREIGN KEY ( dept_no ) REFERENCES Department ( dept_no ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Person_FK FOREIGN KEY ( manager ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Project_FK FOREIGN KEY ( parent_project ) REFERENCES Project ( project_id ) ;


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

DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Department_PK_trig 
; 

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.dept_no from dual; 
end; 
/

DROP SEQUENCE Parent_Child_seq ; 
create sequence Parent_Child_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Parent_Child_PK_trig 
; 

create or replace trigger Parent_Child_PK_trig 
before insert on Parent_Child
for each row 
begin 
select Parent_Child_seq.nextval into :new.parent_child_id from dual; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Person_PK_trig 
; 

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.person_id from dual; 
end; 
/

DROP SEQUENCE Person_Project_seq ; 
create sequence Person_Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Person_Project_PK_trig 
; 

create or replace trigger Person_Project_PK_trig 
before insert on Person_Project
for each row 
begin 
select Person_Project_seq.nextval into :new.person_project_id from dual; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Project_PK_trig 
; 

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.project_id from dual; 
end; 
/

DROP INDEX child_FK_0 ;
CREATE INDEX child_FK_0 ON Parent_Child(child) ;
DROP INDEX parent_FK_1 ;
CREATE INDEX parent_FK_1 ON Parent_Child(parent) ;
DROP INDEX person_id_FK_2 ;
CREATE INDEX person_id_FK_2 ON Person_Project(person_id) ;
DROP INDEX project_id_FK_3 ;
CREATE INDEX project_id_FK_3 ON Person_Project(project_id) ;
DROP INDEX dept_no_FK_4 ;
CREATE INDEX dept_no_FK_4 ON Person(dept_no) ;
DROP INDEX spouse_FK_5 ;
CREATE INDEX spouse_FK_5 ON Person(spouse) ;
DROP INDEX manager_FK_6 ;
CREATE INDEX manager_FK_6 ON Person(manager) ;
DROP INDEX dept_no_FK_7 ;
CREATE INDEX dept_no_FK_7 ON Project(dept_no) ;
DROP INDEX manager_FK_8 ;
CREATE INDEX manager_FK_8 ON Project(manager) ;
DROP INDEX parent_project_FK_9 ;
CREATE INDEX parent_project_FK_9 ON Project(parent_project) ;

DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.dept_no from dual; 
end; 
/
alter table Department add created date ; 
alter table Department add created_by VARCHAR2 (255) ; 
alter table Department add row_version_number integer ; 
alter table Department add updated date ; 
alter table Department add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Department_AUD_trig 
before insert or update on Department 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Parent_Child_seq ; 
create sequence Parent_Child_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Parent_Child_PK_trig 
before insert on Parent_Child
for each row 
begin 
select Parent_Child_seq.nextval into :new.parent_child_id from dual; 
end; 
/
alter table Parent_Child add created date ; 
alter table Parent_Child add created_by VARCHAR2 (255) ; 
alter table Parent_Child add row_version_number integer ; 
alter table Parent_Child add updated date ; 
alter table Parent_Child add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Parent_Child_AUD_trig 
before insert or update on Parent_Child 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.person_id from dual; 
end; 
/
alter table Person add created date ; 
alter table Person add created_by VARCHAR2 (255) ; 
alter table Person add row_version_number integer ; 
alter table Person add updated date ; 
alter table Person add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Person_AUD_trig 
before insert or update on Person 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Person_Project_seq ; 
create sequence Person_Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Person_Project_PK_trig 
before insert on Person_Project
for each row 
begin 
select Person_Project_seq.nextval into :new.person_project_id from dual; 
end; 
/
alter table Person_Project add created date ; 
alter table Person_Project add created_by VARCHAR2 (255) ; 
alter table Person_Project add row_version_number integer ; 
alter table Person_Project add updated date ; 
alter table Person_Project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Person_Project_AUD_trig 
before insert or update on Person_Project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.project_id from dual; 
end; 
/
alter table Project add created date ; 
alter table Project add created_by VARCHAR2 (255) ; 
alter table Project add row_version_number integer ; 
alter table Project add updated date ; 
alter table Project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Project_AUD_trig 
before insert or update on Project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP INDEX child_FK_0 ;
CREATE INDEX child_FK_0 ON Parent_Child(child) ;
DROP INDEX parent_FK_1 ;
CREATE INDEX parent_FK_1 ON Parent_Child(parent) ;
DROP INDEX person_id_FK_2 ;
CREATE INDEX person_id_FK_2 ON Person_Project(person_id) ;
DROP INDEX project_id_FK_3 ;
CREATE INDEX project_id_FK_3 ON Person_Project(project_id) ;
DROP INDEX dept_no_FK_4 ;
CREATE INDEX dept_no_FK_4 ON Person(dept_no) ;
DROP INDEX spouse_FK_5 ;
CREATE INDEX spouse_FK_5 ON Person(spouse) ;
DROP INDEX manager_FK_6 ;
CREATE INDEX manager_FK_6 ON Person(manager) ;
DROP INDEX dept_no_FK_7 ;
CREATE INDEX dept_no_FK_7 ON Project(dept_no) ;
DROP INDEX manager_FK_8 ;
CREATE INDEX manager_FK_8 ON Project(manager) ;
DROP INDEX parent_project_FK_9 ;
CREATE INDEX parent_project_FK_9 ON Project(parent_project) ;

drop view Previous_Employee_view ;
drop view Employee_view ;
drop view Project_Employee_view ;
drop view Manager_view ;
drop view Interim_Manager_view ;
drop view President_view ;
drop view Current_Project_view ;
drop view Previous_Project_view ;

create view Previous_Employee_view as
SELECT 
    person_id,
  first_name,
  last_name,
  home_address,
  zipcode,
  home_phone,
  us_citizen,
  spouse,
  IsFired,
  salary,
  type

FROM Person where type = 'Previous_Employee' ;

create or replace TRIGGER previous_employee_trigger
     INSTEAD OF insert ON previous_employee_view
     FOR EACH ROW
BEGIN
    insert into Person( 
    person_id,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    IsFired,
    salary,
    type
    )
     VALUES ( 
    :NEW.person_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.home_address,
    :NEW.zipcode,
    :NEW.home_phone,
    :NEW.us_citizen,
    :NEW.spouse,
    :NEW.IsFired,
    :NEW.salary,
        "Previous_Employee") ;
END;
/

create view Employee_view as
SELECT 
    person_id,
  first_name,
  last_name,
  home_address,
  zipcode,
  home_phone,
  us_citizen,
  spouse,
  employee_id,
  salary,
  salary_exception,
  manager,
  type

FROM Person where type = 'Employee' ;

create or replace TRIGGER employee_trigger
     INSTEAD OF insert ON employee_view
     FOR EACH ROW
BEGIN
    insert into Person( 
    person_id,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager,
    type
    )
     VALUES ( 
    :NEW.person_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.home_address,
    :NEW.zipcode,
    :NEW.home_phone,
    :NEW.us_citizen,
    :NEW.spouse,
    :NEW.employee_id,
    :NEW.salary,
    :NEW.salary_exception,
    :NEW.manager,
        "Employee") ;
END;
/

create view Project_Employee_view as
SELECT 
    person_id,
  first_name,
  last_name,
  home_address,
  zipcode,
  home_phone,
  us_citizen,
  spouse,
  employee_id,
  salary,
  salary_exception,
  manager,
  type

FROM Person where type = 'Project_Employee' ;

create or replace TRIGGER project_employee_trigger
     INSTEAD OF insert ON project_employee_view
     FOR EACH ROW
BEGIN
    insert into Person( 
    person_id,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager,
    type
    )
     VALUES ( 
    :NEW.person_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.home_address,
    :NEW.zipcode,
    :NEW.home_phone,
    :NEW.us_citizen,
    :NEW.spouse,
    :NEW.employee_id,
    :NEW.salary,
    :NEW.salary_exception,
    :NEW.manager,
        "Project_Employee") ;
END;
/

create view Manager_view as
SELECT 
    person_id,
  first_name,
  last_name,
  home_address,
  zipcode,
  home_phone,
  us_citizen,
  spouse,
  employee_id,
  salary,
  salary_exception,
  manager,
  bonus,
  dept_no,
  type

FROM Person where type = 'Manager' ;

create or replace TRIGGER manager_trigger
     INSTEAD OF insert ON manager_view
     FOR EACH ROW
BEGIN
    insert into Person( 
    person_id,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager,
    bonus,
    dept_no,
    type
    )
     VALUES ( 
    :NEW.person_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.home_address,
    :NEW.zipcode,
    :NEW.home_phone,
    :NEW.us_citizen,
    :NEW.spouse,
    :NEW.employee_id,
    :NEW.salary,
    :NEW.salary_exception,
    :NEW.manager,
    :NEW.bonus,
    :NEW.dept_no,
        "Manager") ;
END;
/

create view Interim_Manager_view as
SELECT 
    person_id,
  first_name,
  last_name,
  home_address,
  zipcode,
  home_phone,
  us_citizen,
  spouse,
  employee_id,
  salary,
  salary_exception,
  manager,
  bonus,
  dept_no,
  type

FROM Person where type = 'Interim_Manager' ;

create or replace TRIGGER interim_manager_trigger
     INSTEAD OF insert ON interim_manager_view
     FOR EACH ROW
BEGIN
    insert into Person( 
    person_id,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager,
    bonus,
    dept_no,
    type
    )
     VALUES ( 
    :NEW.person_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.home_address,
    :NEW.zipcode,
    :NEW.home_phone,
    :NEW.us_citizen,
    :NEW.spouse,
    :NEW.employee_id,
    :NEW.salary,
    :NEW.salary_exception,
    :NEW.manager,
    :NEW.bonus,
    :NEW.dept_no,
        "Interim_Manager") ;
END;
/

create view President_view as
SELECT 
    person_id,
  first_name,
  last_name,
  home_address,
  zipcode,
  home_phone,
  us_citizen,
  spouse,
  employee_id,
  salary,
  salary_exception,
  manager,
  bonus,
  dept_no,
  type

FROM Person where type = 'President' ;

create or replace TRIGGER president_trigger
     INSTEAD OF insert ON president_view
     FOR EACH ROW
BEGIN
    insert into Person( 
    person_id,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager,
    bonus,
    dept_no,
    type
    )
     VALUES ( 
    :NEW.person_id,
    :NEW.first_name,
    :NEW.last_name,
    :NEW.home_address,
    :NEW.zipcode,
    :NEW.home_phone,
    :NEW.us_citizen,
    :NEW.spouse,
    :NEW.employee_id,
    :NEW.salary,
    :NEW.salary_exception,
    :NEW.manager,
    :NEW.bonus,
    :NEW.dept_no,
        "President") ;
END;
/


create view Current_Project_view as
SELECT 
    project_id,
  manager,
  project_title,
  dept_no,
  parent_project,
  project_active,
  type

FROM Project where type = 'Current_Project' ;

create or replace TRIGGER current_project_trigger
     INSTEAD OF insert ON current_project_view
     FOR EACH ROW
BEGIN
    insert into Project( 
    project_id,
    manager,
    project_title,
    dept_no,
    parent_project,
    project_active,
    type
    )
     VALUES ( 
    :NEW.project_id,
    :NEW.manager,
    :NEW.project_title,
    :NEW.dept_no,
    :NEW.parent_project,
    :NEW.project_active,
        "Current_Project") ;
END;
/

create view Previous_Project_view as
SELECT 
    project_id,
  manager,
  project_title,
  dept_no,
  parent_project,
  project_active,
  end_date_month,
  end_date_day,
  end_date_year,
  est_person_hours,
  type

FROM Project where type = 'Previous_Project' ;

create or replace TRIGGER previous_project_trigger
     INSTEAD OF insert ON previous_project_view
     FOR EACH ROW
BEGIN
    insert into Project( 
    project_id,
    manager,
    project_title,
    dept_no,
    parent_project,
    project_active,
    end_date_month,
    end_date_day,
    end_date_year,
    est_person_hours,
    type
    )
     VALUES ( 
    :NEW.project_id,
    :NEW.manager,
    :NEW.project_title,
    :NEW.dept_no,
    :NEW.parent_project,
    :NEW.project_active,
    :NEW.end_date_month.
    :NEW.end_date_day,
    :NEW.end_date_year,
    :NEW.est_person_hours,
        "Previous_Project") ;
END;
/