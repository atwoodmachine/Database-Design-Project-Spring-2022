
CREATE TABLE STAFF (
SSN         CHAR(9)     NOT NULL,
Job_Title   VARCHAR(30),
FName       VARCHAR(30),
Minit       CHAR(1),
LName       VARCHAR(30), 
Dept_Name   VARCHAR(30),
PRIMARY KEY (SSN)
);

CREATE TABLE DEPARTMENT (
Dept_Name       VARCHAR(30),
Admin_SSN       CHAR(9),
Admin_Name      VARCHAR(40),
PRIMARY KEY (Dept_Name),
FOREIGN KEY (Admin_SSN) REFERENCES ADMIN (SSN) ON DELETE SET NULL
);

ALTER TABLE STAFF ADD CONSTRAINT Staff_Dep FOREIGN KEY (Dept_Name) REFERENCES DEPARTMENT (Dept_Name);

CREATE TABLE DOCTOR (
SSN         CHAR(9)     NOT NULL,
Specialty   VARCHAR(30),
PRIMARY KEY (SSN),
FOREIGN KEY (SSN) REFERENCES STAFF (SSN) ON DELETE CASCADE
);

CREATE TABLE NURSE (
SSN         CHAR(9) NOT NULL,
Specialty   VARCHAR(30),
PRIMARY KEY (SSN),
FOREIGN KEY (SSN) REFERENCES STAFF (SSN) ON DELETE CASCADE
);

CREATE TABLE NONMEDICAL (
SSN         CHAR(9) NOT NULL,
Job_name    VARCHAR(30),
PRIMARY KEY (SSN),
FOREIGN KEY (SSN) REFERENCES STAFF (SSN) ON DELETE CASCADE
);

CREATE TABLE ADMIN (
SSN CHAR(9)     NOT NULL,
PRIMARY KEY (SSN),
FOREIGN KEY (SSN) REFERENCES STAFF (SSN) ON DELETE CASCADE
);

CREATE TABLE INPATIENT (
In_Name         VARCHAR(30),
Num_beds        INT,
Num_patients    INT,
PRIMARY KEY (In_Name),
FOREIGN KEY (In_Name) REFERENCES DEPARTMENT (Dept_Name) ON DELETE CASCADE
);

CREATE TABLE OUTPATIENT (
Out_Name        VARCHAR(30),
Num_Rooms       INT,
Num_patients    INT,
PRIMARY KEY (Out_Name),
FOREIGN KEY (Out_Name) REFERENCES DEPARTMENT (Dept_Name) ON DELETE CASCADE
);

CREATE TABLE LAB (
Lab_Name        VARCHAR(30),
PRIMARY KEY (Lab_Name),
FOREIGN KEY (Lab_Name) REFERENCES DEPARTMENT(Dept_Name) ON DELETE CASCADE
);

CREATE TABLE MEDICATION (
Med_Name        VARCHAR(30) NOT NULL,
Med_Class       VARCHAR(50),
PRIMARY KEY (Med_Name)
);

CREATE TABLE PATIENT (
SSN                 CHAR(9)         NOT NULL,
FName               VARCHAR(30),
Minit               CHAR(1),
LName               VARCHAR(30),
Sex                 CHAR(1),
Insurance           VARCHAR(30),
Date_Of_Birth       DATE,
Stay_Length_Days    INT,
PRIMARY KEY (SSN)
);

CREATE TABLE BILL (
P_SSN           CHAR(9)         NOT NULL,
Bill_Num        CHAR(10),
Other_Fees      VARCHAR(40),
Other_Cost      DECIMAL (6,2),
PRIMARY KEY (Bill_Num),
FOREIGN KEY (P_SSN) REFERENCES PATIENT (SSN) ON DELETE CASCADE
);

CREATE TABLE LAB_TESTS (
Test        VARCHAR(50),
Lab_Name    VARCHAR(30),
PRIMARY KEY (Test),
FOREIGN KEY (Lab_Name) REFERENCES LAB (Lab_Name) ON DELETE CASCADE
);

CREATE TABLE TREATED_BY (
Doc_SSN     CHAR(9),
P_SSN       CHAR (9),
PRIMARY KEY (P_SSN),
FOREIGN KEY (P_SSN) REFERENCES PATIENT (SSN) ON DELETE CASCADE,
FOREIGN KEY (Doc_SSN) REFERENCES DOCTOR (SSN) ON DELETE SET NULL
);

CREATE TABLE VISITS (
Dept_Name       VARCHAR(30),
P_SSN           CHAR(9),
P_Statement     CHAR(10),
P_History       VARCHAR(100),
PRIMARY KEY (P_SSN),
FOREIGN KEY (Dept_Name) REFERENCES DEPARTMENT (Dept_Name) ON DELETE SET NULL,
FOREIGN KEY (P_SSN) REFERENCES PATIENT (SSN) ON DELETE CASCADE,
FOREIGN KEY (P_Statement) REFERENCES BILL (Bill_Num)ON DELETE SET NULL
);

CREATE TABLE BILL_EXAMINATION (
Exam_Name       VARCHAR(40) NOT NULL,
Cost            DECIMAL (6,2),
P_SSN           CHAR(9),
Bill_Num        CHAR(10),
PRIMARY KEY (Exam_Name),
FOREIGN KEY (P_SSN) REFERENCES PATIENT (SSN) ON DELETE CASCADE,
FOREIGN KEY (Bill_Num) REFERENCES BILL (Bill_Num) ON DELETE CASCADE
);

CREATE TABLE BILL_SURGERY (
Surgery_Name        VARCHAR(40) NOT NULL,
Cost                DECIMAL (6,2),
P_SSN               CHAR(9),
Bill_Num            CHAR(10),
PRIMARY KEY (Surgery_Name),
FOREIGN KEY (P_SSN) REFERENCES PATIENT (SSN) ON DELETE CASCADE,
FOREIGN KEY (Bill_Num) REFERENCES BILL (Bill_Num) ON DELETE CASCADE
);

CREATE TABLE BILL_TREATMENT (
Treatment_Name      VARCHAR(40)      NOT NULL,
Cost                DECIMAL (6,2),
P_SSN               CHAR(9),
Bill_Num            CHAR(10),
PRIMARY KEY (Treatment_Name),
FOREIGN KEY (P_SSN) REFERENCES PATIENT (SSN) ON DELETE CASCADE,
FOREIGN KEY (Bill_Num) REFERENCES BILL (Bill_Num) ON DELETE CASCADE
);

CREATE TABLE DEPT_EXAMINATION (
D_Exam      VARCHAR(40),
Dept_Name   VARCHAR(30),
PRIMARY KEY (D_Exam),
FOREIGN KEY (Dept_Name) REFERENCES DEPARTMENT (Dept_Name) ON DELETE CASCADE
);

CREATE TABLE DEPT_TREATMENT (
D_Treatment     VARCHAR(40),
Dept_Name       VARCHAR(30),
PRIMARY KEY (D_Treatment),
FOREIGN KEY (Dept_Name) REFERENCES DEPARTMENT (Dept_Name) ON DELETE CASCADE
);

CREATE TABLE DEPT_SURGERY (
D_Surgery       VARCHAR(40),
Dept_Name       VARCHAR(30),
PRIMARY KEY (D_Surgery),
FOREIGN KEY (Dept_Name) REFERENCES DEPARTMENT (Dept_Name) ON DELETE CASCADE
);/
