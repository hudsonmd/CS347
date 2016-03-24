-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-11-22 17:41:42 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE F15F1_Approver
  (
    approver_id      INTEGER NOT NULL ,
    F15F1_Emp_emp_id INTEGER NOT NULL ,
    F15F1_RFE_rfe_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_Approver ADD CONSTRAINT F15F1_Approver_PK PRIMARY KEY ( approver_id ) ;


CREATE TABLE F15F1_Auth
  (
    auth_id          INTEGER NOT NULL ,
    auth             VARCHAR2 (4) NOT NULL ,
    F15F1_Emp_emp_id INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX F15F1_Auth__IDX ON F15F1_Auth
  (
    F15F1_Emp_emp_id ASC
  )
  ;
ALTER TABLE F15F1_Auth ADD CONSTRAINT F15F1_Auth_PK PRIMARY KEY ( auth_id ) ;


CREATE TABLE F15F1_Comment
  (
    comment_id         INTEGER NOT NULL ,
    F15F1_RFE_rfe_id   INTEGER ,
    comment_entry_date DATE NOT NULL ,
    comments           VARCHAR2 (4000) NOT NULL ,
    F15F1_Emp_emp_id   INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_Comment ADD CONSTRAINT F15F1_Comment_PK PRIMARY KEY ( comment_id ) ;


CREATE TABLE F15F1_Contact
  (
    effective_date       DATE NOT NULL ,
    comments             VARCHAR2 (4000) ,
    F15F1_Emp_emp_id     INTEGER NOT NULL ,
    F15F1_RFE_rfe_id     INTEGER NOT NULL ,
    F15F1_Role_role_code INTEGER NOT NULL ,
    contact_id           INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_Contact ADD CONSTRAINT F15F1_Contact_PK PRIMARY KEY ( contact_id ) ;


CREATE TABLE F15F1_Doc
  (
    doc_id           INTEGER NOT NULL ,
    F15F1_RFE_rfe_id INTEGER NOT NULL ,
    filename         VARCHAR2 (4000) ,
    file_mimetype    VARCHAR2 (512) ,
    file_charset     VARCHAR2 (512) ,
    file_blob BLOB ,
    file_comments VARCHAR2 (4000) ,
    tags          VARCHAR2 (4000)
  ) ;
ALTER TABLE F15F1_Doc ADD CONSTRAINT F15F1_Doc_PK PRIMARY KEY ( doc_id ) ;


CREATE TABLE F15F1_Emp
  (
    emp_id             INTEGER NOT NULL ,
    active             CHAR (1) NOT NULL ,
    name               VARCHAR2 (30) NOT NULL ,
    email              VARCHAR2 (30) NOT NULL ,
    office             VARCHAR2 (30) NOT NULL ,
    phone_number       VARCHAR2 (30) NOT NULL ,
    status_eff_date    DATE NOT NULL ,
    executive_director CHAR (1) NOT NULL ,
    admin              CHAR (1) NOT NULL ,
    chair_person       CHAR (1) NOT NULL ,
    lab_director       CHAR (1) NOT NULL ,
    F15F1_Lab_lab_id   INTEGER NOT NULL ,
    auth               VARCHAR2 (10)
  ) ;
ALTER TABLE F15F1_Emp ADD CONSTRAINT F15F1_Emp_PK PRIMARY KEY ( emp_id ) ;


CREATE TABLE F15F1_History
  (
    "date"              DATE NOT NULL ,
    history_id          INTEGER NOT NULL ,
    F15F1_RFE_rfe_id    INTEGER NOT NULL ,
    F15F1_Status_status INTEGER NOT NULL ,
    F15F1_Emp_emp_id    INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_History ADD CONSTRAINT F15F1_History_PK PRIMARY KEY ( history_id ) ;


CREATE TABLE F15F1_Lab
  ( lab_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_Lab ADD CONSTRAINT F15F1_Lab_PK PRIMARY KEY ( lab_id ) ;


CREATE TABLE F15F1_RFE
  (
    rfe_id               INTEGER NOT NULL ,
    F15F1_Status_status  INTEGER ,
    explanation          VARCHAR2 (4000) NOT NULL ,
    alt_protections      VARCHAR2 (4000) NOT NULL ,
    approval_review_date DATE ,
    F15F1_Emp_emp_id     INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_RFE ADD CONSTRAINT F15F1_RFE_PK PRIMARY KEY ( rfe_id ) ;


CREATE TABLE F15F1_RFE_Task
  (
    RFE_task_id        INTEGER NOT NULL ,
    F15F1_RFE_rfe_id   INTEGER NOT NULL ,
    F15F1_Task_task_id INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_RFE_Task ADD CONSTRAINT F15F1_RFE_Task_PK PRIMARY KEY ( RFE_task_id ) ;


CREATE TABLE F15F1_Role
  (
    role_code   INTEGER NOT NULL ,
    role_type   VARCHAR2 (30) NOT NULL ,
    description VARCHAR2 (500) NOT NULL
  ) ;
ALTER TABLE F15F1_Role ADD CONSTRAINT F15F1_Role_PK PRIMARY KEY ( role_code ) ;


CREATE TABLE F15F1_Status
  (
    status      INTEGER NOT NULL ,
    rfe_status  VARCHAR2 (30) NOT NULL ,
    description VARCHAR2 (500) NOT NULL
  ) ;
ALTER TABLE F15F1_Status ADD CONSTRAINT F15F1_Status_PK PRIMARY KEY ( status ) ;


CREATE TABLE F15F1_Task
  (
    effective_date    DATE NOT NULL ,
    task_abbreviation VARCHAR2 (15) NOT NULL ,
    task_description  VARCHAR2 (4000) NOT NULL ,
    task_id           INTEGER NOT NULL
  ) ;
ALTER TABLE F15F1_Task ADD CONSTRAINT F15F1_Task_PK PRIMARY KEY ( task_id ) ;


ALTER TABLE F15F1_Approver ADD CONSTRAINT F15F1_Approver_F15F1_Emp_FK FOREIGN KEY ( F15F1_Emp_emp_id ) REFERENCES F15F1_Emp ( emp_id ) ;

ALTER TABLE F15F1_Approver ADD CONSTRAINT F15F1_Approver_F15F1_RFE_FK FOREIGN KEY ( F15F1_RFE_rfe_id ) REFERENCES F15F1_RFE ( rfe_id ) ;

ALTER TABLE F15F1_Auth ADD CONSTRAINT F15F1_Auth_F15F1_Emp_FK FOREIGN KEY ( F15F1_Emp_emp_id ) REFERENCES F15F1_Emp ( emp_id ) ;

ALTER TABLE F15F1_Comment ADD CONSTRAINT F15F1_Comment_F15F1_Emp_FK FOREIGN KEY ( F15F1_Emp_emp_id ) REFERENCES F15F1_Emp ( emp_id ) ;

ALTER TABLE F15F1_Comment ADD CONSTRAINT F15F1_Comment_F15F1_RFE_FK FOREIGN KEY ( F15F1_RFE_rfe_id ) REFERENCES F15F1_RFE ( rfe_id ) ;

ALTER TABLE F15F1_Contact ADD CONSTRAINT F15F1_Contact_F15F1_Emp_FK FOREIGN KEY ( F15F1_Emp_emp_id ) REFERENCES F15F1_Emp ( emp_id ) ;

ALTER TABLE F15F1_Contact ADD CONSTRAINT F15F1_Contact_F15F1_RFE_FK FOREIGN KEY ( F15F1_RFE_rfe_id ) REFERENCES F15F1_RFE ( rfe_id ) ;

ALTER TABLE F15F1_Contact ADD CONSTRAINT F15F1_Contact_F15F1_Role_FK FOREIGN KEY ( F15F1_Role_role_code ) REFERENCES F15F1_Role ( role_code ) ;

ALTER TABLE F15F1_Doc ADD CONSTRAINT F15F1_Doc_F15F1_RFE_FK FOREIGN KEY ( F15F1_RFE_rfe_id ) REFERENCES F15F1_RFE ( rfe_id ) ;

ALTER TABLE F15F1_Emp ADD CONSTRAINT F15F1_Emp_F15F1_Lab_FK FOREIGN KEY ( F15F1_Lab_lab_id ) REFERENCES F15F1_Lab ( lab_id ) ;

ALTER TABLE F15F1_History ADD CONSTRAINT F15F1_History_F15F1_Emp_FK FOREIGN KEY ( F15F1_Emp_emp_id ) REFERENCES F15F1_Emp ( emp_id ) ;

ALTER TABLE F15F1_History ADD CONSTRAINT F15F1_History_F15F1_RFE_FK FOREIGN KEY ( F15F1_RFE_rfe_id ) REFERENCES F15F1_RFE ( rfe_id ) ;

ALTER TABLE F15F1_History ADD CONSTRAINT F15F1_History_F15F1_Status_FK FOREIGN KEY ( F15F1_Status_status ) REFERENCES F15F1_Status ( status ) ;

ALTER TABLE F15F1_RFE ADD CONSTRAINT F15F1_RFE_F15F1_Emp_FK FOREIGN KEY ( F15F1_Emp_emp_id ) REFERENCES F15F1_Emp ( emp_id ) ;

ALTER TABLE F15F1_RFE ADD CONSTRAINT F15F1_RFE_F15F1_Status_FK FOREIGN KEY ( F15F1_Status_status ) REFERENCES F15F1_Status ( status ) ;

ALTER TABLE F15F1_RFE_Task ADD CONSTRAINT F15F1_RFE_Task_F15F1_RFE_FK FOREIGN KEY ( F15F1_RFE_rfe_id ) REFERENCES F15F1_RFE ( rfe_id ) ;

ALTER TABLE F15F1_RFE_Task ADD CONSTRAINT F15F1_RFE_Task_F15F1_Task_FK FOREIGN KEY ( F15F1_Task_task_id ) REFERENCES F15F1_Task ( task_id ) ;