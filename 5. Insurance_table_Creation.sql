DROP TABLE IF EXISTS Insurance;

CREATE TABLE Insurance (
    InsuranceId VARCHAR(15) PRIMARY KEY,
    PatientId INT NOT NULL,
    InsuranceCompany VARCHAR(100) NOT NULL,
    InsuranceContactNumber VARCHAR(15) NOT NULL,
    InsuranceEmail VARCHAR(100) NOT NULL, 
    FOREIGN KEY (PatientId) REFERENCES Patient(PatientId)
);

SELECT * FROM Insurance;