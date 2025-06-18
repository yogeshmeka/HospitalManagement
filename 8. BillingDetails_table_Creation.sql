DROP TABLE IF EXISTS BillingDetails;

CREATE TABLE BillingDetails (
    BillingId INT PRIMARY KEY,
    PatientId INT NOT NULL,
    AppointmentId INT NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    PaymentStatus VARCHAR(50) NOT NULL,
    PaymentDate DATE NOT NULL,
    FOREIGN KEY (PatientId) REFERENCES Patient(PatientId),
    FOREIGN KEY (AppointmentId) REFERENCES Appointments(AppointmentId)
);

SELECT * FROM BillingDetails