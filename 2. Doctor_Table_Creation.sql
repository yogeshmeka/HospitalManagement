USE HospitalManagementSystem;

DROP TABLE IF EXISTS Doctor;
CREATE TABLE Doctor (
    DoctorId INT PRIMARY KEY,
    DepartmentId INT NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    Qualifications VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    ContactNumber VARCHAR(15) NOT NULL UNIQUE,
    Gender VARCHAR(10) NOT NULL,
    WorkingHours VARCHAR(50) NOT NULL,
    ConsultationFee DECIMAL(10,2) NOT NULL,
    BloodGroup VARCHAR(5) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);

SELECT * FROM Doctor