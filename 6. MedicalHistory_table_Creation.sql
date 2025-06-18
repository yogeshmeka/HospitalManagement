DROP TABLE IF EXISTS MedicalHistory;

CREATE TABLE MedicalHistory (
    MedicalHistoryId INT PRIMARY KEY,
    PatientId INT NOT NULL,
    DoctorId INT NOT NULL,
    DateOfEntry DATE NOT NULL,
    Diagnosis VARCHAR(255) NOT NULL,
    Treatment VARCHAR(255) NOT NULL,
    PrescribedMedication VARCHAR(255) NOT NULL,
    SurgicalHistory VARCHAR(255) NOT NULL,
    Allergies VARCHAR(255),
    Vaccinations VARCHAR(255),
    FollowUpInstructions VARCHAR(255),
    MedicalHistoryStatus VARCHAR(50) NOT NULL,
    FOREIGN KEY (PatientId) REFERENCES Patient(PatientId),
    FOREIGN KEY (DoctorId) REFERENCES Doctor(DoctorId)
);

SELECT * FROM MedicalHistory;