DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //
CREATE PROCEDURE AddValidBooking(iN BookingDate DATE, TableNum INT)
BEGIN
	DECLARE `_rollback` BOOL DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_rollback` = 1;
    START TRANSACTION;
    INSERT INTO Bookings(Date, TableNumber) VALUES (BookingDate, TableNum);
    SELECT * FROM Bookings WHERE Date = BookingDate AND TableNumber = TableNum;
    IF `_rollback` THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
    
END//

DELIMITER ;

CALL AddValidBooking("2022-12-17", 6);