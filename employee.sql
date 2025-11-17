-- Active: 1760942016873@@localhost@5432@emloyees

--exercice 1
SELECT id_employee, first_name, last_name 
FROM EMPLOYEE 
WHERE id_team ISNULL

--exercice 2 
SELECT e.id_employee, e.first_name, e.last_name 
FROM EMPLOYEE e 
LEFT JOIN LEAVE l 
on e.id_employee = l.id_employee 
WHERE l.id_employee ISNULL

--exercice 3
SELECT
l.id_leave, l.start_date, l.end_date, e.first_name, e.last_name, t.name as team
FROM EMPLOYEE e 
INNER JOIN TEAM t 
on e.id_team = t.id_team 
INNER JOIN LEAVE l 
on e.id_employee = l.id_employee 

--exercice 4
SELECT  e.contract_type, count(*) as number_employee FROM EMPLOYEE e GROUP BY e.contract_type 

--exercice 5
SELECT start_date, end_date 
FROM EMPLOYEE e inner 
join LEAVE l 
on e.id_employee = l.id_employee 
WHERE start_date <= CURRENT_DATE 
AND end_date >= CURRENT_DATE

--exercice 6
SELECT e.id_employee, e.first_name, e.last_name, t.name 
FROM EMPLOYEE e inner 
JOIN TEAM t 
ON e.id_team = t.id_team inner 
join LEAVE l on e.id_employee = l.id_employee 
WHERE start_date <= CURRENT_DATE 
AND end_date >= CURRENT_DATE
