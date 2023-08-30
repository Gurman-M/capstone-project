DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER //
CREATE PROCEDURE UpdateBooking(iN ID INT, IN BookingDate DATE)

BEGIN
	UPDATE Bookings SET Date = BookingDate WHERE BookingID = ID;
    SELECT CONCAT('Booking ', ID, ' updated') AS Confirmation;
    
END//

DELIMITER ;

CALL UpdateBooking(9, "2022-12-17");