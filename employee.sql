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

SELECT * FROM TEAM

SELECT * FROM Leave