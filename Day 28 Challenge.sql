-- Question 1
CREATE DATABASE CityHospital;
Use CityHospital;

CREATE TABLE Patients(
	Patient_id INT,
    Patient_name Varchar(30),
    Age Int,
    Gender enum('M', 'F'),
    Admission_date Date
);
Select * from Patients;
-- Question 2

Alter Table Patients
Add Doctor_assigned Varchar(50);

-- Question 3
Alter Table Patients
Modify column Patient_name Varchar(100);

-- Question 4
Alter Table Patients
Rename to Patients_info;

-- Question 5
Truncate table Patients_info;
Drop Table Patients_info;