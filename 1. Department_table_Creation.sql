USE HospitalManagementSystem;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    DepartmentId INT PRIMARY KEY,
    DepartmentHeadId INT UNIQUE NOT NULL,
    DepartmentName VARCHAR(100) NOT NULL
);

ALTER TABLE Department
ADD FOREIGN KEY (DepartmentHeadId) REFERENCES Doctor(DoctorId);

SELECT * FROM Department
