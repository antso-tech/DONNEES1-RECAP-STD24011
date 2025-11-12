-- Active: 1760942016873@@localhost@5432@emloyees


CREATE TABLE EMPLOYEE (
    id_employee serial PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    contract_type VARCHAR(50) NOT NULL,
    salary int NOT NULL,
    id_team int,
    CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES TEAM(id_team)
)

CREATE TABLE Leave (
    id_leave SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    id_employee int,
    CONSTRAINT fk_employee FOREIGN KEY (id_employee) REFERENCES EMPLOYEE(id_employee)
)

CREATE TABLE TEAM (
    id_team SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)

SELECT id_employee, first_name, last_name 
FROM EMPLOYEE 
WHERE id_team ISNULL

SELECT * from LEAVE;

SELECT e.id_employee, e.first_name, e.last_name 
FROM EMPLOYEE e 
LEFT JOIN LEAVE l 
on e.id_employee = l.id_employee 
WHERE l.id_employee ISNULL

SELECT
l.id_leave, l.start_date, l.end_date, e.first_name, e.last_name, t.name as team
FROM EMPLOYEE e 
INNER JOIN TEAM t 
on e.id_team = t.id_team 
INNER JOIN LEAVE l 
on e.id_employee = l.id_employee 

SELECT  e.contract_type, count(*) as number_employee FROM EMPLOYEE e GROUP BY e.contract_type 

SELECT start_date, end_date 
FROM EMPLOYEE e inner 
join LEAVE l 
on e.id_employee = l.id_employee 
WHERE start_date <= CURRENT_DATE 
AND end_date >= CURRENT_DATE

SELECT e.id_employee, e.first_name, e.last_name, t.name 
FROM EMPLOYEE e inner 
JOIN TEAM t ON e.id_team = t.id_team inner join LEAVE l on e.id_employee = l.id_employee WHERE start_date <= CURRENT_DATE 
AND end_date >= CURRENT_DATE
