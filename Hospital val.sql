ALTER SESSION SET nls_date_format='yyyy-mm-dd'; 

INSERT INTO STAFF VALUES ('123456789', 'Doctor', 'John', 'H', 'Smith', 'Cardiology');/
INSERT INTO STAFF VALUES ('987654321', 'Nurse', 'Peter', 'B', 'Parker', 'Physiotherapy');/
INSERT INTO STAFF VALUES ('246810121', 'Doctor', 'Kate', NULL, 'Smith', 'Surgery');/
INSERT INTO STAFF VALUES ('135791113', 'Doctor', 'Ryan', 'H', 'Calloway', 'Neurology');/
INSERT INTO STAFF VALUES ('543219876', 'Pharmacist', 'Mary', NULL, 'Davids', 'Pharmacy'); /
INSERT INTO STAFF VALUES ('888888888', 'Custodian', 'Lloyd', NULL, 'Weiss', 'Maintenance');/ 
INSERT INTO STAFF VALUES ('999999999', 'Secretary', 'Dale', 'C', 'Woods', 'Administration');/
INSERT INTO STAFF VALUES ('121212121', 'Administrator', 'Henry', NULL, 'Smith', 'Administration');/
INSERT INTO STAFF VALUES ('103123123', 'Maintenance', 'Harry', 'H', 'DuBois', 'Maintenance');/
INSERT INTO STAFF VALUES ('456456456', 'Administrator', 'Marie', NULL, 'Davids', 'Administration'); /

INSERT INTO DOCTOR VALUES ('123456789', 'Surgeon');/
INSERT INTO DOCTOR VALUES ('246810121', 'Surgeon');/
INSERT INTO DOCTOR VALUES ('135791113', 'Neurologist');/
INSERT INTO DOCTOR VALUES ('111111111', 'Anesthesiologist');/
INSERT INTO DOCTOR VALUES ('222222222', 'Cardiologist');/

INSERT INTO NURSE VALUES ('543219876', 'Pediatrics');/
INSERT INTO NURSE VALUES ('987654321', 'Physiotherapy');/
INSERT INTO NURSE VALUES ('555555555', 'Radiology');/
INSERT INTO NURSE VALUES ('666666666', 'Dermatology');/
INSERT INTO NURSE VALUES ('777777777', 'Nephrology');/

INSERT INTO DEPARTMENT VALUES('Maintenance', NULL, NULL);/
INSERT INTO DEPARTMENT VALUES('Administration', NULL, NULL);/
INSERT INTO DEPARTMENT VALUES('ER', '121212121', 'Cassie Opiea');/
INSERT INTO DEPARTMENT VALUES('Intensive Care','121212121', 'Cassie Opiea');/
INSERT INTO DEPARTMENT VALUES('Pediatrics', '222333444', 'Ariana Large');/
INSERT INTO DEPARTMENT VALUES('Imaging', '121212121', 'Cassie Opiea');/
INSERT INTO DEPARTMENT VALUES('Consultation', '222333444', 'Ariana Large');/
INSERT INTO DEPARTMENT VALUES('Chemotherapy','111222333', 'Vanessa Broom');/
INSERT INTO DEPARTMENT VALUES('Examination','111222333', 'Vanessa Broom');/
INSERT INTO DEPARTMENT VALUES('Urgent Care', '121212121', 'Cassie Opiea');/
INSERT INTO DEPARTMENT VALUES('Bacteriology', '888777444', 'Hellen Baker');/
INSERT INTO DEPARTMENT VALUES('Hematology', '888777444', 'Hellen Baker');/
INSERT INTO DEPARTMENT VALUES('Parasitology', '888777444', 'Hellen Baker');/
INSERT INTO DEPARTMENT VALUES('Serology', '002002002', 'Jane Doe');/
INSERT INTO DEPARTMENT VALUES('Histopathology', '002002002', 'Jane Doe');/
INSERT INTO DEPARTMENT VALUES('Ophthalmology','111234111', 'Martin Clarke');/
INSERT INTO DEPARTMENT VALUES('Dermatology', '002002002', 'Jane Doe');/
INSERT INTO DEPARTMENT VALUES ('Cardiology', '121212121', 'Cassie Opiea');/
INSERT INTO DEPARTMENT VALUES ('Physiotherapy', '456456456', 'Eliza Brown');/
INSERT INTO DEPARTMENT VALUES ('Surgery', '111222333', 'Vanessa Broom');/
INSERT INTO DEPARTMENT VALUES ('Neurology', '222333444', 'Ariana Large');/
INSERT INTO DEPARTMENT VALUES ('Pharmacy', '333444555', 'Helena Handbasket');/

INSERT INTO NONMEDICAL VALUES ('888888888', 'Custodian');/
INSERT INTO NONMEDICAL VALUES ('999999999', 'Secretary');/
INSERT INTO NONMEDICAL VALUES ('121212121', 'Administrator');/
INSERT INTO NONMEDICAL VALUES ('123123123', 'Maintenance');/
INSERT INTO NONMEDICAL VALUES ('456456456', 'Administrator');/

INSERT INTO ADMIN VALUES ('121212121');/
INSERT INTO ADMIN VALUES ('456456456');/
INSERT INTO ADMIN VALUES ('111222333');/
INSERT INTO ADMIN VALUES ('222333444');/
INSERT INTO ADMIN VALUES ('333444555');/
INSERT INTO ADMIN VALUES ('888777444');/
INSERT INTO ADMIN VALUES ('002002002');/
INSERT INTO ADMIN VALUES ('111234111');/

INSERT INTO INPATIENT VALUES ('Cardiology', 100, 27);/
INSERT INTO INPATIENT VALUES ('Surgery', 500, 198);/
INSERT INTO INPATIENT VALUES ('Intensive Care', 900, 675);/ 
INSERT INTO INPATIENT VALUES ('Neurology', 250, 132);/
INSERT INTO INPATIENT VALUES ('Pediatrics', 300, 89); /

INSERT INTO OUTPATIENT VALUES ('Imaging', 30, 5);/ 
INSERT INTO OUTPATIENT VALUES ('Consultation', 100, 95);/
INSERT INTO OUTPATIENT VALUES ('Chemotherapy', 10, 5);/
INSERT INTO OUTPATIENT VALUES ('Examination', 110, 78);/
INSERT INTO OUTPATIENT VALUES ('Urgent Care', 55, 45);/

INSERT INTO LAB VALUES ('Bacteriology'); /
INSERT INTO LAB VALUES ('Hematology');/
INSERT INTO LAB VALUES ('Parasitology');/
INSERT INTO LAB VALUES ('Serology');/
INSERT INTO LAB VALUES ('Histopathology');/

INSERT INTO MEDICATION VALUES('Amoxil', 'Aminopenicillins'); /
INSERT INTO MEDICATION VALUES('Advil', 'Nonsteroidal anti-inflammatory'); /
INSERT INTO MEDICATION VALUES('Fasenra', 'Interleukin inhibitors'); /
INSERT INTO MEDICATION VALUES('Thiamine', 'Vitamins'); /
INSERT INTO MEDICATION VALUES('Xalatan', 'Ophthalmic glaucoma agents'); /

INSERT INTO PATIENT VALUES('987987987','Terry',NULL,'Aki', 'F', 'Bluecross Blueshield', '1998-04-23', 0);/
INSERT INTO PATIENT VALUES('000111222','Gil','T','Azhelle', 'M', 'Aetna', '1988-12-25', 3);/
INSERT INTO PATIENT VALUES('888999000','Gabriella',NULL,'Crank', 'F', 'Medicare', '1960-09-01', 0);/
INSERT INTO PATIENT VALUES('333666999','Ambu',NULL,'Lance', 'M', 'Cigna', '1973-07-14', 5);/
INSERT INTO PATIENT VALUES('222444666','Laura',NULL,'Hollis', 'F', 'United Healthcare', '1999-09-09', 1);/

INSERT INTO BILL VALUES('987987987', '0000000001', 'Ambulance fee', 1000.00);/
INSERT INTO BILL VALUES('000111222', '0000000002', 'Room and board - Semi private', 7500.00);/
INSERT INTO BILL VALUES('888999000', '0000000003', 'Office visit', 335.00);/
INSERT INTO BILL VALUES('333666999', '0000000004', 'Emergency center', 1000.00);/
INSERT INTO BILL VALUES('222444666', '0000000005', 'Ambulance fee', 1000.00);/

INSERT INTO LAB_TESTS VALUES('Throat culture','Bacteriology');/ 
INSERT INTO LAB_TESTS VALUES('Platelet count','Hematology');/
INSERT INTO LAB_TESTS VALUES('Blood smear','Parasitology');/
INSERT INTO LAB_TESTS VALUES('Flocculation test','Serology');/
INSERT INTO LAB_TESTS VALUES('Nephropathology test','Histopathology');/

INSERT INTO TREATED_BY VALUES('123456789','987987987');/
INSERT INTO TREATED_BY VALUES('246810121', '000111222');/
INSERT INTO TREATED_BY VALUES('135791113','888999000');/
INSERT INTO TREATED_BY VALUES('111111111','333666999');/
INSERT INTO TREATED_BY VALUES('222222222','222444666');/

INSERT INTO VISITS VALUES('Cardiology','987987987','0000000001','Family history heart disease');/
INSERT INTO VISITS VALUES('Surgery','000111222','0000000002','Frequent smoking');/
INSERT INTO VISITS VALUES('Intensive Care','333666999','0000000004','Tree nut allergy');/ 
INSERT INTO VISITS VALUES('Neurology','888999000','0000000003','Penicillin allergy');/
INSERT INTO VISITS VALUES('Physiotherapy','222444666','0000000005','High blood pressure');/

INSERT INTO BILL_EXAMINATION VALUES('Albumin Blood Test',100.00,'987987987','0000000001');/
INSERT INTO BILL_EXAMINATION VALUES('Bacteria Culture Test',300.00,'000111222','0000000002');/
INSERT INTO BILL_EXAMINATION VALUES('Blood Oxygen Level',20.00,'888999000','0000000003');/
INSERT INTO BILL_EXAMINATION VALUES('Lung Function Test',30.00,'333666999','0000000004');/
INSERT INTO BILL_EXAMINATION VALUES('Blood Pressure Test',10.00,'222444666','0000000005');/

INSERT INTO BILL_SURGERY VALUES('Appendectomy',1000.00,'987987987','0000000001');/
INSERT INTO BILL_SURGERY VALUES('Cataract surgery',3000.00,'000111222','0000000002');/
INSERT INTO BILL_SURGERY VALUES('Debridement of infection',2000.00,'888999000','0000000003');/
INSERT INTO BILL_SURGERY VALUES('Carotid endarterectomy',3000.00,'333666999','0000000004');/
INSERT INTO BILL_SURGERY VALUES('Free skin graft',1030.00,'222444666','0000000005');/

INSERT INTO BILL_TREATMENT VALUES('Physical Therapy',1000.00,'987987987','0000000001');/
INSERT INTO BILL_TREATMENT VALUES('IV Solutions',1200.00,'000111222','0000000002');/
INSERT INTO BILL_TREATMENT VALUES('Stitches',600.00,'888999000','0000000003');/
INSERT INTO BILL_TREATMENT VALUES('Ventilator',4300.00,'333666999','0000000004');/
INSERT INTO BILL_TREATMENT VALUES('Anesthesia',1090.00,'222444666','0000000005');/

INSERT INTO DEPT_EXAMINATION VALUES('Bacteria Culture Test','Bacteriology');/
INSERT INTO DEPT_EXAMINATION VALUES('Albumin Blood Test','Hematology');/
INSERT INTO DEPT_EXAMINATION VALUES('Blood Pressure Test','Cardiology');/
INSERT INTO DEPT_EXAMINATION VALUES('Blood Oxygen Level','Hematology');/
INSERT INTO DEPT_EXAMINATION VALUES('White Blood Cell Count','Hematology');/

INSERT INTO DEPT_TREATMENT VALUES('Physical Therapy','Physiotherapy');/
INSERT INTO DEPT_TREATMENT VALUES('IV Solutions','ER');/
INSERT INTO DEPT_TREATMENT VALUES('Stitches','ER');/
INSERT INTO DEPT_TREATMENT VALUES('Ventilator','Intensive Care');/
INSERT INTO DEPT_TREATMENT VALUES('Anesthesia','Surgery'); /

INSERT INTO DEPT_SURGERY VALUES('Appendectomy','ER');/ 
INSERT INTO DEPT_SURGERY VALUES('Cataract surgery','Ophthalmology');/
INSERT INTO DEPT_SURGERY VALUES('Debridement of infection','ER');/
INSERT INTO DEPT_SURGERY VALUES('Carotid endarterectomy','Cardiology');/
INSERT INTO DEPT_SURGERY VALUES('Free skin graft','Dermatology');/


SELECT * 
FROM admin;






