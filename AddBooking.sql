DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(iN BookingID INT, IN CustomerID INT, IN TableNumber INT, IN BookingDate DATE)

BEGIN
	INSERT INTO Bookings VALUES (BookingID, CustomerID, TableNumber, BookingDate);
    SELECT "New Booking Added" AS Confirmation;
    
END//

DELIMITER ;

CALL AddBooking(9, 3, 4, "2022-12-30");