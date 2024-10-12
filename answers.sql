CREATE DATABASE hospital_db;
USE hospital_db;

CREATE TABLE patient(
patient_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR(10) NOT NULL,
language VARCHAR(20) NOT NULL
);

CREATE TABLE providers(
provider_id INT AUTO INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
Provider_speciality VARCHAR(50) NOT NULL,
email_address VARCHAR(20),
phone_number VARCHAR(20),
date_joined DATE NOT NULL
);

CREATE TABLE visits(
visit_id INT AUTO INCREMENT PRIMARY KEY,
patient_id INT FOREIGN KEY,
provider_id INT FOREIGN KEY,
date_of_visit DATE NOT NULL,
date_scheduled DATE NOT NULL,
Visit_department_id INT NOT,
visit_type VARCHAR(20) NOT NULL,
blood_pressure_systollic INT,
blood_pressure_diastollic DECIMAL,
pulse DECIMAL,
visit_status VARCHAR(50) NOT NULL
);

CREATE TABLE ed_visits(
ed_visit_id INT AUTO INCREMENT PRIMARY KEY,
vidit_id INT FOREIGN KEY,
patient_id INT FOREIGN KEY,
acuity INT NOT NULL,
reason_for_visit VARCHAR(50) NOT NULL,
disposition VARCHAR(50) NOT NULL
);

CREATE TABLE admisions(
admisssion_id INT AUTO INCREMENT NOT NULL,
patient_id INT FOREIGN KEY,
admission_date DATE NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR(50) NOT NULL,
service VARCHAR(50) NOT NULL,
primary_diagnosis VARCHAR NOT NULL
);

CREATE TABLE discharges(
discharge_id INT AUTO INCREMENT PRIMARY KEY,
admission_id INT FOREIGN KEY,
patient_id INT FOREIGN KEY,
discharge_date DATE NOT NULL,
discharde_disposition VARCHAR(50) NOT NULL








