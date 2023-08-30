DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
CREATE PROCEDURE CancelBooking(IN ID INT)

BEGIN
	DELETE FROM Bookings WHERE BookingID = ID;
    SELECT CONCAT('Booking ', ID, ' cancelled') AS Confirmation;
    
END//

DELIMITER ;

CALL CancelBooking(9);