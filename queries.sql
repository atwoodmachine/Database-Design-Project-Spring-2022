/*Query with GROUP BY*/
SELECT Job_Title, COUNT(*)
FROM STAFF
GROUP BY Job_Title;

/*Query with GROUP BY, HAVING*/
SELECT Dept_Name, COUNT(*)
FROM DEPT_EXAMINATION
GROUP BY Dept_Name
HAVING COUNT(*) > 2;

/*Nested query, ALL*/
SELECT Surgery_Name, Cost
FROM BILL_SURGERY
WHERE Cost > ALL (SELECT Cost
                  FROM BILL_SURGERY
                  WHERE Bill_num = '0000000001' OR Bill_num = '0000000003');

/*Nested query, IN*/
SELECT D_exam 
FROM DEPT_EXAMINATION
WHERE D_exam IN (SELECT Exam_name
                 FROM BILL_EXAMINATION
                 WHERE Cost > 10);
