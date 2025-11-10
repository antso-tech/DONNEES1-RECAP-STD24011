-- Active: 1760942016873@@localhost@5432@emloyees


CREATE TABLE EMPLOYEE (
    int serial PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contract_type VARCHAR(50),
    salary int
)

CREATE TABLE Leave (
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE
)