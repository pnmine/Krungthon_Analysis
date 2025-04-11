-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: 35.240.246.187    Database: bankdb
-- ------------------------------------------------------
-- Server version	8.0.26-google

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--


--
-- Table structure for table `type_of_insurance`
--

DROP TABLE IF EXISTS `type_of_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_of_insurance` (
  `insurance_category_code` int NOT NULL AUTO_INCREMENT,
  `insurance_code_describtion` text NOT NULL,
  `maximum_coverage` decimal(8,2) NOT NULL,
  `insurance_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`insurance_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_insurance`
--

LOCK TABLES `type_of_insurance` WRITE;
/*!40000 ALTER TABLE `type_of_insurance` DISABLE KEYS */;
INSERT INTO `type_of_insurance` VALUES (1,'life insurance policy guarantees the insurer pays a sum of money to one or more named beneficiaries when the insured person dies in exchange for premiums paid by the policyholder during their lifetime.',500000.00,'Life insurance'),(2,'Health insurance is a type of coverage that helps individuals and families pay for medical expenses. It is designed to provide financial protection in the event of unexpected illnesses, injuries, or medical conditions.',200000.00,'Health insurance'),(3,'Auto insurance is a contract between you and the insurance company that protects you against financial loss in the event of an accident or theft. In exchange for your paying a premium, the insurance company agrees to pay your losses as outlined in your policy.',150000.00,'Auto insurance'),(4,'A long-term care insurance policy helps cover the costs of that care when you have a chronic medical condition, disability or disorder such as Alzheimer’s disease. Most policies will reimburse you for care given in a variety of places',250000.00,'Long-term care insurance'),(5,'Homeowners insurance is a form of property insurance that covers losses and damages to an individual\'s residence, along with furnishings and other assets in the home. Homeowners insurance also provides liability coverage against accidents in the home or on the property.',600000.00,'Home insurance'),(6,' A renters insurance policy is a group of coverages designed to help protect renters living in a house or apartment. A typical renters insurance policy includes three types of coverage that help protect you, your belongings and your living arrangements after a covered loss.',400000.00,'Renters insurance'),(7,'Umbrella insurance is a type of personal liability insurance that can be indispensable when you find yourself liable for a claim larger than your homeowner\'s insurance or auto insurance will cover. If you own a boat, umbrella insurance will also pick up where your watercraft\'s liability insurance leaves off.',200000.00,'Umbrella insurance'),(8,'Disability insurance is a type of insurance product that provides income in the event that a policyholder is prevented from working and earning an income due to a disability.',120000.00,'Disability insurance');
/*!40000 ALTER TABLE `type_of_insurance` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 15:12:48
