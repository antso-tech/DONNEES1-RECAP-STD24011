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

DROP TABLE LEAVE

DROP TABLE EMPLOYEE

insert into TEAM (name) values ('Huels-Bode');
insert into TEAM (name) values ('Hickle, Yost and Friesen');
insert into TEAM (name) values ('Bergstrom-Windler');
insert into TEAM (name) values ('Bins, Bauch and Medhurst');
insert into TEAM (name) values ('Luettgen, Torphy and Keebler');
insert into TEAM (name) values ('Pacocha-Hackett');
insert into TEAM (name) values ('MacGyver, Prosacco and Collier');
insert into TEAM (name) values ('Hand, Swift and Ullrich');
insert into TEAM (name) values ('Moen, Macejkovic and Glover');
insert into TEAM (name) values ('Gleichner-Ortiz');
insert into TEAM (name) values ('Jones and Sons');
insert into TEAM (name) values ('Dibbert, Zieme and Weissnat');
insert into TEAM (name) values ('Bosco Inc');
insert into TEAM (name) values ('Jacobson Group');
insert into TEAM (name) values ('Pfannerstill Inc');
insert into TEAM (name) values ('Borer Group');
insert into TEAM (name) values ('Turner, Hane and Flatley');
insert into TEAM (name) values ('Reilly-Koss');
insert into TEAM (name) values ('Shanahan, Waters and Harris');
insert into TEAM (name) values ('Feest-Jerde');




SELECT * FROM TEAM

SELECT * FROM Leave