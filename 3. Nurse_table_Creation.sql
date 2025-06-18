DROP TABLE IF EXISTS Nurse;

CREATE TABLE Nurse (
    NurseId INT PRIMARY KEY,
    DepartmentId INT NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Qualifications VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    ContactNumber VARCHAR(15) NOT NULL UNIQUE,
    Gender VARCHAR(10) NOT NULL,
    WorkingHours VARCHAR(50) NOT NULL,
    BloodGroup VARCHAR(5) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);

SELECT * FROM Nurse


