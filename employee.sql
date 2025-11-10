-- Active: 1760942016873@@localhost@5432@emloyees


CREATE TABLE EMPLOYEE (
    id_employee serial PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contract_type VARCHAR(50),
    salary int,
    id_team int,
    CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES TEAM(id_team)
)

CREATE TABLE Leave (
    id_leave SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    id_employee int,
    CONSTRAINT fk_employee FOREIGN KEY (id_employee) REFERENCES EMPLOYEE(id_employee)
)

CREATE TABLE TEAM (
    id_team SERIAL PRIMARY KEY,
    name VARCHAR(50)
)


