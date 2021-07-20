DROP TABLE tfoodtype CASCADE CONSTRAINTS;
DROP TABLE tfoodgroup CASCADE CONSTRAINTS;
DROP TABLE tfood CASCADE CONSTRAINTS;
DROP TABLE tsupplier CASCADE CONSTRAINTS;
DROP TABLE titem CASCADE CONSTRAINTS;


CREATE TABLE tfoodtype
(
foodtypeid NUMBER(10) PRIMARY KEY,
foodtype VARCHAR2(40 CHAR)
);


CREATE TABLE tfoodgroup
(
foodgroupid NUMBER(10) PRIMARY KEY,
foodgroup VARCHAR2(45),

foodtypeid NUMBER(10), 
CONSTRAINT fk_foodtype FOREIGN KEY(foodtypeid) REFERENCES tfoodtype(foodtypeid)
);

CREATE TABLE tfood
(
foodid NUMBER(10) PRIMARY KEY,
foodname VARCHAR2(45),
foodgroupid NUMBER(10),
CONSTRAINT fk_foodgroup FOREIGN KEY(foodgroupid) REFERENCES tfoodgroup(foodgroupid)
);



CREATE TABLE tsupplier

(

supplierid VARCHAR2(10 CHAR) PRIMARY KEY,

suppliername VARCHAR2(20 CHAR),

supplieraddress VARCHAR2(100 CHAR),

supplieremail VARCHAR2(40 CHAR),

supplilernumber NUMBER(13)

);


CREATE TABLE titem

(

itemid VARCHAR2(15 CHAR) PRIMARY KEY,

itemname VARCHAR2(40 CHAR),
itemprice NUMBER(5,2),

itembrand VARCHAR2(40 CHAR),

itemexpiarydate DATE DEFAULT SYSDATE,

foodid NUMBER(10) CONSTRAINT fk_foodid REFERENCES tfood(foodid),

itemweightype VARCHAR(2 CHAR),

itemweight NUMBER(5,2),

supplierid VARCHAR2(10 CHAR) CONSTRAINT fk_supplierid REFERENCES tsupplier(supplierid)

);

