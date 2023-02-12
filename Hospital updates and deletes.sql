DELETE FROM ADMIN WHERE SNN = '121212121';
DELETE FROM BILL WHERE Bill_Num = '0000000001';
DELETE FROM BILL_EXAMINATION WHERE Exam_Name = 'Albumin Blood Test';
DELETE FROM BILL_SURGERY WHERE Surgery_Name = 'Cataract surgery';
DELETE FROM BILL_TREATMENT WHERE Treatment_Name = 'Physical Therapy';
DELETE FROM DEPARTMENT WHERE Dept_Name = 'Pediatrics';
DELETE FROM DEPT_EXAMINATION WHERE D_Exam = 'White Blood Cell Count';
DELETE FROM DEPT_SURGERY WHERE D_Surgery = 'Carotid endarterectomy';
DELETE FORM DEPT_TREATMENT WHERE D_Treatment = 'Physical Therapy';
DELETE FROM DOCTOR WHERE SNN = '111111111';
DELETE FROM INPATIENT WHERE In_name = 'Pediatrics';
DELETE FROM LAB WHERE Lab_Name = 'Bacteriology';
DELETE FROM LAB_TESTS WHERE Test = 'Platelet count';
DELETE FROM MEDICATION WHERE Med_Name = 'Amoxil';
DELETE FROM NONMEDICAL WHERE SSN = '888888888';
DELETE FROM NURSE WHERE SSN = '543219876';
DELETE FROM OUTPATIENT WHERE Out_Name = 'Chemotherapy';
DELETE FROM PATIENT WHERE SSN = '987987987';
DELETE FROM STAFF WHERE SSN = '103123123';
DELETE FROM TREATED_BY WHERE P_SSN = '987987987';
DELETE FROM VISITS WHERE P_SSN = '000111222';

UPDATE ADMIN 
SET SNN = '242325262'
WHERE SSN = '121212121';

UPDATE BILL
SET Other_fees = 'Room and board - Semi private'
WHERE P_SSN = '987987987';

UPDATE BILL_EXAMINATION
SET Cost = Cost * 1.2;

UPDATE BILL_SURGERY
SET Cost = Cost * 1.15;

UPDATE BILL_TREATMENT
SET Cost = Cost * 0.9;

UPDATE DEPARTMENT
SET Admin_SSN = '456456456', Admin_Name = 'Eliza Brown'
WHERE Dept_Name = 'Maintenance';

UPDATE DEPT_EXAMINATION
SET Dept_name = 'Hematology'
WHERE D_exam = 'Blood Pressure Test';

UPDATE DEPT_SURGERY
SET Dept_name = 'ER'
WHERE D_surgery = 'Free skin graft';

UPDATE DEPT_TREATMENT
SET Dept_name = 'ER'
WHERE D_treatment = 'Stitches';

UPDATE DOCTOR
SET Specialty = 'Surgeon'
WHERE SSN = '135791113';

UPDATE INPATIENT
SET Num_Patients = Num_Patients + 23
WHERE Dept_name = 'Cardiology';

UPDATE LAB
SET Lab_Name = 'Microbiology'
WHERE Lab_Name = 'Bacteriology';

UPDATE LAB_TESTS
SET Lab_name = 'Microbiology'
WHERE Test = 'Throat culture';

UPDATE MEDICATION
SET Med_Name = 'Ibuprofen'
WHERE Med_Name = 'Nonsteroidal anti-inflammatory';

UPDATE NONMEDICAL
SET Job_name = 'Maintenance'
WHERE SSN = '888888888';

UPDATE NURSE
SET Specialty = 'Nephrology'
WHERE SSN = '543219876';

UPDATE OUTPATIENT
SET Num_patients = Num_patients - 2
WHERE Out_name = 'Chemotherapy';

UPDATE PATIENT
SET Insurance = 'Aetna'
WHERE SSN = '333666999';

UPDATE STAFF
SET Job_Title = 'Pediatrician'
WHERE SSN = '123456789';

UPDATE TREATED_BY
SET Doc_SSN = '246810121'
WHERE P_SSN = '333666999';

UPDATE VISITS
SET Dept_Name = 'Intensive Care';
WHERE P_SSN = '888999000';

