-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: localhost    Database: Hitchhikers
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CurrentTrips`
--

DROP TABLE IF EXISTS `CurrentTrips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CurrentTrips` (
  `rideID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `StartingPoint` varchar(200) NOT NULL,
  `DestinationPoint` varchar(200) NOT NULL,
  `CarModel` varchar(50) NOT NULL,
  `LicensePlate` varchar(50) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Date/Time` varchar(100) NOT NULL,
  `Detours` varchar(200) NOT NULL,
  `Hospitality` varchar(200) NOT NULL,
  `Food` varchar(200) NOT NULL,
  `Luggage` varchar(200) NOT NULL,
  `TotalSeats` int(11) NOT NULL,
  `SeatsAvailable` int(11) NOT NULL,
  PRIMARY KEY (`rideID`),
  KEY `userID` (`userID`),
  CONSTRAINT `currenttrips_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `TotalUsers` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CurrentTrips`
--

LOCK TABLES `CurrentTrips` WRITE;
/*!40000 ALTER TABLE `CurrentTrips` DISABLE KEYS */;
INSERT INTO `CurrentTrips` VALUES (1,2,'David','Sealand','sealand@usc.edu','Los Angeles, CA, USA','Portland, OR, USA','Bugatti Veyron','202JEJ',20,'Friday April 21','no detours','I love food','i have no snacks','lots of luggage space',2,1),(2,3,'Adam','Espinoza','adamespi@usc.edu','Los Angeles, CA, USA','Phoenix, AZ, USA','Honda Odyssey','309EAK',12,'Saturday April 22','all the detours','You can stay with me','I will bring food','bring any luggage',6,5),(3,1,'Aneel','Yelamanchili','ayelaman@usc.edu','Los Angeles, CA, USA','San Francisco, CA, USA','Nissan Leaf','857KZN',15,'Sunday April 23','no detours','We are stopping to charge 10 times','We will stop for food','bring any luggage',4,3);
/*!40000 ALTER TABLE `CurrentTrips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TotalPreviousTrips`
--

DROP TABLE IF EXISTS `TotalPreviousTrips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TotalPreviousTrips` (
  `rideID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `StartingPoint` varchar(200) NOT NULL,
  `DestinationPoint` varchar(200) NOT NULL,
  `CarModel` varchar(50) NOT NULL,
  `LicensePlate` varchar(50) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Date/Time` varchar(100) NOT NULL,
  `Detours` varchar(200) NOT NULL,
  `Hospitality` varchar(200) NOT NULL,
  `Food` varchar(200) NOT NULL,
  `Luggage` varchar(200) NOT NULL,
  `TotalSeats` int(11) NOT NULL,
  `SeatsFilled` int(11) NOT NULL,
  KEY `userID` (`userID`),
  CONSTRAINT `totalprevioustrips_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `TotalUsers` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TotalPreviousTrips`
--

LOCK TABLES `TotalPreviousTrips` WRITE;
/*!40000 ALTER TABLE `TotalPreviousTrips` DISABLE KEYS */;
INSERT INTO `TotalPreviousTrips` VALUES (1,1,'Adam','Espinoza','adamespi@usc.edu','San Fracisco,CA','Los Angeles','Honda Civic','64j74k',25,'Wednesday April 19','no detours','bring pillows','i have snacks','no luggage space',4,2);
/*!40000 ALTER TABLE `TotalPreviousTrips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TotalUsers`
--

DROP TABLE IF EXISTS `TotalUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TotalUsers` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Picture` varchar(200) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TotalUsers`
--

LOCK TABLES `TotalUsers` WRITE;
/*!40000 ALTER TABLE `TotalUsers` DISABLE KEYS */;
INSERT INTO `TotalUsers` VALUES (1,'Aneel','Yelamanchili','aneel','ayelaman@usc.edu',20,'5039169169','https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/13507226_1148683701850248_1676098310529753614_n.jpg?oh=8fc80ae2dd67fa09b7b8e40c801c8130&oe=5951E6F9'),(2,'David','Sealand','david','sealand@usc.edu',19,'4919193020','https://scontent-lax3-2.xx.fbcdn.net/v/t31.0-8/12841330_663274557146113_2810161329870379623_o.jpg?oh=98a2db28fbd7e4df98aaa19f3f6c9bc6&oe=59958317'),(3,'Adam','Espinoza','adam','adamespi@usc.edu',20,'9101223112','https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAiDAAAAJDNiMWE3YTkyLTRiMzAtNDJkNS1hMjE3LWE2ZWFiNDlkMDgwNA.jpg'),(4,'William','Wang','william','wang975@usc.edu',20,'8083219909','https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/12122921_974493999258444_5174282398401993915_n.jpg?oh=33da5dee348b806e9d7554f9750a3a5b&oe=59961E92');
/*!40000 ALTER TABLE `TotalUsers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 23:09:51
