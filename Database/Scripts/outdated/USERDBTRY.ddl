-- Generated by Oracle SQL Developer Data Modeler 4.1.2.895
--   at:        2016-03-16 21:08:49 CET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE CAMPS
  (
    CAMPING_ID NUMERIC NOT NULL ,
    TENTNR     NUMERIC ,
    CAPACITY   NUMERIC ,
    STATUS     VARCHAR (10)
  ) ;
ALTER TABLE CAMPS ADD CONSTRAINT CAMPS_PK PRIMARY KEY ( CAMPING_ID ) ;


CREATE TABLE RFIDS
  (
    BRACELET_ID NUMERIC NOT NULL ,
    STATUS      VARCHAR (10),
    --  ERROR: VARCHAR size not specified
    NOT NULL ,
    VISITORS_USER_ID NUMERIC
  ) ;

ALTER TABLE RFIDS ADD CONSTRAINT RFIDS_PK PRIMARY KEY ( BRACELET_ID ) ;


CREATE TABLE USERS
  (
    USER_ID     NUMERIC NOT NULL ,
    LOGIN       VARCHAR (25) NOT NULL ,
    PASSWORD    VARCHAR (25) NOT NULL ,
    EMAIL       VARCHAR (40) NOT NULL ,
    DATEOFBIRTH DATE NOT NULL ,
    BALANCE     NUMERIC NOT NULL ,
    PAID BLOB ,
    REGDATE DATE
  ) ;
ALTER TABLE USERS ADD CONSTRAINT USERS_PK PRIMARY KEY ( USER_ID ) ;


CREATE TABLE VISITORS
  ( USER_ID NUMERIC NOT NULL , CAMPS_CAMPING_ID NUMERIC
  ) ;
ALTER TABLE VISITORS ADD CONSTRAINT VISITORS_PK PRIMARY KEY ( USER_ID ) ;


ALTER TABLE RFIDS ADD CONSTRAINT RFIDS_VISITORS_FK FOREIGN KEY ( VISITORS_USER_ID ) REFERENCES VISITORS ( USER_ID ) ;

ALTER TABLE VISITORS ADD CONSTRAINT VISITORS_CAMPS_FK FOREIGN KEY ( CAMPS_CAMPING_ID ) REFERENCES CAMPS ( CAMPING_ID ) ;

ALTER TABLE VISITORS ADD CONSTRAINT VISITORS_USERS_FK FOREIGN KEY ( USER_ID ) REFERENCES USERS ( USER_ID ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             1
-- ALTER TABLE                              7
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
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   1
-- WARNINGS                                 0
