DROP TABLE IF EXISTS Patient;

CREATE TABLE Patient (
    PatientId INT PRIMARY KEY,
    DoctorId INT NOT NULL,
    NurseId INT NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Age INT NOT NULL,
    Height DECIMAL(5,2) NOT NULL,
    Weight DECIMAL(5,2) NOT NULL,
    BloodGroup VARCHAR(5) NOT NULL,
    ContactNumber VARCHAR(15) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Address VARCHAR(255) NOT NULL,
    EmergencyContactName VARCHAR(100) NOT NULL,
    EmergencyContactNumber VARCHAR(15) NOT NULL,
    AdmissionStatus Boolean NOT NULL,
    CHECK (EmergencyContactNumber <> ContactNumber),
    FOREIGN KEY (DoctorId) REFERENCES Doctor(DoctorId),
    FOREIGN KEY (NurseId) REFERENCES Nurse(NurseId)
);

SELECT * FROM Patient
