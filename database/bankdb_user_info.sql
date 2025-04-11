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
-- Table structure for table `user_info`
--
USE krungthon_bank;
DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `date_of_birth` timestamp(6) NOT NULL,
  `ID_card_Number` varchar(13) DEFAULT NULL,
  `address` text NOT NULL,
  `career` text,
  `salary` int DEFAULT NULL,
  `work_address` text,
  `phone_number` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `sex` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (27,'Chayanee','Bhoosiri','2002-10-03 17:00:00.000000','1104899570015','50/117 หมู่ที่ 2 ถ. บรมราชชนนี ตำบล บางเตย อำเภอสามพราน นครปฐม 73210','หมอ',100000,'2 ถนน วังหลัง แขวงศิริราช เขตบางกอกน้อย กรุงเทพมหานคร 10700','0632317658','041045','female'),(28,'Pitchapha','Photun','1996-10-10 17:00:00.000000','1544700874566','518 ถ.เพชรเกษม แขวงบางแคเหนือ เขตบางแค กรุงเทพฯ 10600','นักธุรกิจ',85000,'518 ถ.เพชรเกษม แขวงบางแคเหนือ เขตบางแค กรุงเทพฯ 10600','0874410025','123456','female'),(29,'Warrachote','Ponpiboonlarp','2002-07-26 17:00:00.000000','1550011756669','118/21 หมู่ 7 ถ.กรุงเทพฯ-ปทุมธานี ตำบล บางคูวัด อำเภอเมืองปทุมธานี จังหวัดปทุมธานี 12000','Computer engineer',70000,'70 หมู่ที่ 6 ถ.เจ้าฟ้าตะวันตก ตำบล ฉลอง อำเภอเมืองภูเก็ต ภูเก็ต 83000','0627189899','12345','male'),(30,'Pannatorn','Sriwongpan','2002-06-02 17:00:00.000000','1579900969433','243/16 ม.3 ต.รอบเวียง อ.เมือง จ.เชียงราย 57000','student',9000,'126 ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพฯ 10140','0823840049','25452545','male'),(31,'chanakarn','takham','2002-11-07 17:00:00.000000','1509966240526','103/1 ม.4 ต.สันกำแพง อ.สันกำแพง จ.เชียงใหม่ 50130','student',12500,'kmutt','0639584217','nine555','female'),(32,'Thanakrit','Jaiphukdee','1990-05-16 17:00:00.000000','1400857996323','39 หมู่ที่ 6  ถนนบางนา-ตราด ตำบล บางแก้ว อำเภอบางพลี สมุทรปราการ 10540','teacher',35000,'98 ซอยสุขสวัสดิ์ 1 แขวงบางปะกอก เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140.','0832696667','070294','male'),(33,'Taweesak','Sriwongpan','1970-07-22 17:00:00.000000','3589900969434','273 ม.9 ต.บ้านดู่ อ.เมือง จ.เชียงราย 57100','ราชการ',65000,'593 ม.7 ต.รอบเวียง อ.เมือง จ.เชียงราย 57000','0832060080','12345','male'),(34,'Jaidee','Srisuk','1979-05-31 17:00:00.000000','1108991237735','31 ถนน หน้าพระลาน แขวงพระบรมมหาราชวัง เขตพระนคร กรุงเทพมหานคร 10200','นักธุรกิจ',100000,'31 ถนน หน้าพระลาน แขวงพระบรมมหาราชวัง เขตพระนคร กรุงเทพมหานคร 10200','0674441011','23631','female'),(35,'Somsak','Chaipukdee','1989-12-12 17:00:00.000000','1193478521146','192 Lardyao Chatuchak Bangkok 10900','Trainer',30000,'121 Soi Nakonkasem 2 Charoenkrung Road Sampanthawong Bangkok 10100','0227220515','12345','male'),(36,'Warunee','Meelarb','1990-12-30 17:00:00.000000','1034475581230','58-60 Rama 4 Road Taladnoi  Bangkok   10100','Lawer',75000,'120 หมู่ที่ 3 ถ. แจ้งวัฒนะ แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร 10210','0662221473','55555','female'),(37,'Doris','Hodan','2023-03-14 17:00:00.000000','9612613188624','58/30 Chao Fa East Rd., T. Taladnua, A. Muang Phuket 83000','Lawyer',70000,'33/3 Mai Khao, Thalang District, Phuket 83110','0762225233','12345','female'),(38,'Rollo','Spencer','1970-12-12 17:00:00.000000','2137804152618','800/43-45 Soi Trakulsuk, Asok-Dindaeng Rd., Huai Khwang Bangkok 10310','Police Officer',27121716,'86 Soi 38 Sukhumvit Phra Khanong Khlong Toei  Bangkok','0264298832','12345','male'),(39,'Pongpol','Khun','2003-03-16 17:00:00.000000','1886647899911','118/21 หมู่ 7 ถ.กรุงเทพฯ-ปทุมธานี ตำบล บางคูวัด อำเภอเมืองปทุมธานี จังหวัดปทุมธานี 12000','Student',20000,'88 ถนนตรีเพชร แขวงวังบูรพาภิรมย์ เขตพระนคร กรุงเทพมหานคร 10200','0917856767','12345','male'),(40,'Vittikhun','Nansang','1998-02-17 17:00:00.000000','1778954333451','1666/32 New Road Yannawa1666/32 New Road Yannawa Sathorn Bangkok','Architecture',17000,'202/28 Soi 23 Ramintra Anusaowaree Bangkok Bangkok','0841839769','54321','male'),(41,'Witchaya','Thongmeemark','1980-08-11 17:00:00.000000','1129077889001','4/59 Soi Vachirathamsathit Sukhumvit Nong Bon Prawet Bangkok Bangkok','Teacher',45000,'565 ถนนสามเสน แขวงวชิรพยาบาล เขตดุสิต กรุงเทพมหานคร 10300','0925607090','54321','female'),(42,'Hutsatud','Chan','2002-03-17 17:00:00.000000','1448800658998','118/21 หมู่ 7 ถ.กรุงเทพฯ-ปทุมธานี ตำบล บางคูวัด อำเภอเมืองปทุมธานี จังหวัดปทุมธานี 12000','Actor',100000,'50 ถนนสุขุมวิท 21 (อโศก) แขวงคลองเตยเหนือ เขตวัฒนา กรุงเทพมหานคร10110','0829066712','67890','male'),(43,'Arthit','Darunnithiklai','1989-07-25 17:00:00.000000','1194084310021','367/2 Yaowarat Road Muang Phuket Phuket','Police',47000,'12 Soi Panichanant Sukhumvit Klongton Nua Watthana Bangkok Bangkok','0621278432','67890','male'),(44,'Marisa','Junsri','2004-05-03 17:00:00.000000','1509966247706','65/7 ม.6 ต.พญาชมพู อ.สารภี จ.เชียงใหม่ 54218','Air hostess',200000,'เลขที่ 60 หมู่ 3 ตำบลสุเทพ อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่','0875336378','ืฟทดนื765','female'),(45,'Chutima','Yaorungrawee','1997-09-07 17:00:00.000000','1825567498809','123 หมู่ 16 ถ.มิตรภาพ ต.ในเมือง อ.เมือง จ.ขอนแก่น 4000','Actress',75000,'50 ถนนสุขุมวิท 21 (อโศก) แขวงคลองเตยเหนือ เขตวัฒนา กรุงเทพมหานคร10110','0619088712','12345','female'),(46,'Suthudsanin','Chan','1995-10-18 17:00:00.000000','1654493241100','118/21 หมู่ 7 ถ.กรุงเทพฯ-ปทุมธานี ตำบล บางคูวัด อำเภอเมืองปทุมธานี จังหวัดปทุมธานี 12000','Chef',79000,'222 ซอยราชปรารภ 3 ถนนราชปรารภ. เมือง, แขวงถนนพญาไท เขตราชเทวี กรุงเทพมหานคร','0854649142','67890','male'),(47,'cheewan','Takham','1987-06-24 17:00:00.000000','3501309966240','103/7 ม.4 ต.สันกำแพง อ.สันกำแพง จ.เชียงใหม่ 50130','freelance',759000,'103/7 ม.4 ต.สันกำแพง อ.สันกำแพง จ.เชียงใหม่ 50130','0918366601','ืรืเ8833','female'),(48,'Wuttanika','Srimokkasut','1992-02-17 17:00:00.000000','1756904438899','1666/32 New Road Yannawa1666/32 New Road Yannawa Sathorn Bangkok','Designer',9000,'202/28 Soi 23 Ramintra Anusaowaree Bangkok Bangkok','0896157676','12345','female');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
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

-- Dump completed on 2023-05-30 15:12:53
