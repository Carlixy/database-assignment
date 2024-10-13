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
discharge_disposition VARCHAR(50) NOT NULL


WEEK 2
assignment 2
1.1
SELECT first_name, last_name, date_of_birth
FROM patients;
1.2
SELECT provider_id, first_name, provider_speciality
FROM providers;

part 2
SELECT first_name
FROM patients
WHERE first_name LIKE 'Ab%';
2.2
SELECT provider_specialities
FROM providers
WHERE provider_specialities LIKE'%y';

part 3
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth > '1980-01-01';

SELECT visit_id, patient_id, acquity
FROM ed_visits
WHERE acquity >=2;

part 4
SELECT first_name, last_name,date_of_birth, language
FROM patients
WHERE language = 'spanish';
4.2
SELECT visit_id, patient_id,visit_date, reason,disposition
FROM ed_visits
WHERE rason_for_visit = 'migraine' AND disposition = 'admitted';
4.3
SELECT first_name, last_name, date_of_birth
FROM patients
WHERE date_of_birth BETWEEN 1975 AND 1980;

part 5
SELECT first_name, last_name
FROM patients
ORDER BY last_name ASC;
5.2
SELECT visit_id, patient_id, visit_date
FROM visits
ORDER BY visit_date DESC;


part 6
SELECT admission_id, patient_id,discharge_disposition, primary_reason
FROM admissions
WHERE primary_diagnosis = 'stroke' AND discharge_disposition= 'home';
6.2
SELECT provider_id, provider_name, provider_speciality
FROM providers
WHERE date_joined > '1995'
AND provider_speciality IN ('pediatrics','cardiology');

bonus
SELECT discharge_id, patient-id, discharge_date
FROM discharges
WHERE discharg_disposition ='home'
AND discharge_date BETWEEN '2018/03/01' AND '2018/03/07';

 









