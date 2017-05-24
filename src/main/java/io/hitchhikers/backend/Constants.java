package io.hitchhikers.backend;

public class Constants {
	public static final String SQL_INSERT_USER = "INSERT INTO TotalUsers(FirstName, Lastname, Password, Email, Age, PhoneNumber, Picture) VALUES ";
	public static final String SQL_INSERT_RIDE = "INSERT INTO CurrentTrips(userID, FirstName, LastName, Email, StartingPoint, DestinationPoint, CarModel, LicensePlate, Cost, `Date/Time`, Detours, Hospitality, Food, Luggage, TotalSeats, SeatsAvailable) VALUES";
	public static final String SQL_INSERT_PREVIOUSRIDE = "INSERT INTO TotalPreviousTrips(rideID, userID, FirstName, LastName, Email, StartingPoint, DestinationPoint, CarModel, LicensePlate, Cost, `Date/Time`, Detours, Hospitality, Food, Luggage, TotalSeats, SeatsFilled) VALUES";
	public static final String JAWSDB_URL = "mysql://pbwdeafh1fdpr1y1:po9zgmty3j02semb@v02yrnuhptcod7dk.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/as5y1g3lj33esv6r";
}
