DROP TABLE IF EXISTS Appointments;

CREATE TABLE Appointments (
    AppointmentId INT PRIMARY KEY,
    PatientId INT NOT NULL,
    DoctorId INT NOT NULL,
    DateOfAppointment DATE NOT NULL,
    TimeOfAppointment TIME NOT NULL,
    ReasonForVisit VARCHAR(255) NOT NULL,
    AppointmentStatus VARCHAR(50) NOT NULL,
    FOREIGN KEY (PatientId) REFERENCES Patient(PatientId),
    FOREIGN KEY (DoctorId) REFERENCES Doctor(DoctorId)
);

SELECT * FROM Appointments