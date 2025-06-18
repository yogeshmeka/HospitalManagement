DELIMITER $$
CREATE TRIGGER check_future_appointment_date
BEFORE INSERT ON Appointments
FOR EACH ROW
BEGIN
    IF NEW.AppointmentStatus='Scheduled' AND NEW.DateOfAppointment < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Appointment date cannot be in the past';
    END IF;
END $$
DELIMITER ;

SHOW triggers