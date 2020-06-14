-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: spor_salonu
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `personel_tab`
--

DROP TABLE IF EXISTS `personel_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personel_tab` (
  `adsoyad` varchar(45) DEFAULT NULL,
  `tc` varchar(45) DEFAULT NULL,
  `dogumTarihi` varchar(45) DEFAULT NULL,
  `cinsiyet` varchar(45) DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `kullanıcıad` varchar(45) NOT NULL,
  `sifre` varchar(45) DEFAULT NULL,
  `EgitimDurumu` varchar(45) DEFAULT NULL,
  `Pozisyon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kullanıcıad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel_tab`
--

LOCK TABLES `personel_tab` WRITE;
/*!40000 ALTER TABLE `personel_tab` DISABLE KEYS */;
INSERT INTO `personel_tab` VALUES ('Aleyna Sarı','63582487452','03.05.1998','Kadın','5336984123','aleynas','25','Üniversite','Plates Eğitmeni'),('Ali Taş','96887410325','19.12.1980','Erkek','5338741656','ali','56','Lise','Salon Görevlisi'),('Alper Şahin','12388745964','06.01.1999','Erkek','5337890142','alper','13','Üniversite','Muhasebeci'),('Aslı Gümüş','56985647567','02.05.1998','Kadın','565621626','aslı','14','Üniversite','Plates Eğitmeni'),('Cenk Bozdağ','39864710123','11.03.1990','Erkek','5358961413','cenk','23','Üniversite','Antrenör'),('Hande Umut','5698548752','02.03.1998','Kadın','533475685','hande','1111','Üniversite','Zumba Eğitmeni'),('Metin Kılıç','8964510354','11.03.1997','Erkek','5338745698','metin','1234','Üniversite','Diyetisyen'),('Melisa Güven','56987445622','20.01.1990','Kadın','5389633232','mgüven','1','Üniversite','Diyetisyen'),('Selin Ada','59654123356','07.07.1996','Kadın','533986120','selin','1','Üniversite','Antrenör'),('Tuğçe Kaz','58962151235','04.06.1991','Kadın','5386621017','tugce','11','Üniversite','Plates Eğitmeni'),('Ufuk Kaya','56987452454','16.02.1998','Erkek','5669874214','ufukl','2','Üniversite','Antrenör');
/*!40000 ALTER TABLE `personel_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonetici_tablosu`
--

DROP TABLE IF EXISTS `yonetici_tablosu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonetici_tablosu` (
  `idYonetici_Tablosu` int(11) NOT NULL,
  `yk_ad` varchar(45) NOT NULL,
  `y_sifre` varchar(45) NOT NULL,
  PRIMARY KEY (`idYonetici_Tablosu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonetici_tablosu`
--

LOCK TABLES `yonetici_tablosu` WRITE;
/*!40000 ALTER TABLE `yonetici_tablosu` DISABLE KEYS */;
INSERT INTO `yonetici_tablosu` VALUES (1,'yönetici','123'),(2,'yntc','14');
/*!40000 ALTER TABLE `yonetici_tablosu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `üye_tab`
--

DROP TABLE IF EXISTS `üye_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `üye_tab` (
  `AdSoyad` varchar(45) NOT NULL,
  `DogumTarihi` varchar(45) DEFAULT NULL,
  `Tc` varchar(11) DEFAULT NULL,
  `TelNo` varchar(11) DEFAULT NULL,
  `Cinsiyet` varchar(45) DEFAULT NULL,
  `Boy` varchar(4) DEFAULT NULL,
  `KayıtTarihi` varchar(45) DEFAULT NULL,
  `KayıtSüresi` varchar(45) DEFAULT NULL,
  `Program` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdSoyad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `üye_tab`
--

LOCK TABLES `üye_tab` WRITE;
/*!40000 ALTER TABLE `üye_tab` DISABLE KEYS */;
INSERT INTO `üye_tab` VALUES ('Aleyna Kaya','03.03.1998','71563254036','5306689651','Kadın','1.66','02.06.2020','Haftalık','1.Program'),('Alp Kaya','22.03.1998','56987456821','5336981423','Erkek','1.82','03.06.2020','Aylık','1.Program'),('Burak Yılmaz','29.01.1989','26987412653','5308854162','Erkek','1.73','01.06.2020','Yıllık','Diğer'),('Can Yıldırım','17.01.1990','26332101429','5382249321','Erkek','1.72','02.06.2020','Aylık','3.Program'),('Demir Eren','09.02.1991','63279102535','5354690289','Erkek','1.98','02.06.2020','Yıllık','Diğer'),('Ece Kartal','01.01.1997','54798652124','534578968','Kadın','1.70','02.06.2020','Aylık','4.Program'),('Ecrin Polat','06.07.1992','36974102356','5308894102','Kadın','1.69','02.06.2020','Aylık','3.Program'),('Eda Özbek','09.04.1990','63214025630','5389964123','Kadın','1.68','14.06.2020','Yıllık','4.Program'),('Fatma Coşkun','25.12.1997','56475120122','5389624102','Kadın','1.65','02.06.2020','Aylık','3.Program'),('Kaan Demir','02.06.1998','36574123698','5304495610','Erkek','1.76','02.06.2020','Aylık','1.Program'),('Melisa Demir','19.07.1987','26944120321','5339870102','Kadın','1.70','02.06.2020','Yıllık','1.Program'),('Memduh Özarslan','22.09.1996','26574102307','5368897410','Erkek','1.71','02.06.2020','Haftalık','Diğer'),('Mustafa Aydoğan','06.01.1999','65945231521','5302269845','Erkek','1.75','01.06.2020','Yıllık','Diğer'),('Oğuz Sancak','23.02.1989','65741235025','5531472024','Erkek','1.72','02.06.2020','Aylık','Diğer'),('Salih Demir','05.06.1995','56321485420','5387520121','Erkek','1.70','13.06.2020','Aylık','2.Program'),('Saliha Durmaz','01.09.1998','26574123650','5337894512','Kadın','1.65','03.06.2020','Yıllık','4.Program'),('Selim Aydemir','15.09.1998','56689742156','5321520526','Erkek','1.80','03.06.2020','Aylık','2.Program'),('Sena Aydın','05.05.1993','23500142133','5308896547','Kadın','1.68','09.06.2020','Haftalık','1.Program'),('Sıla Karakaya','21.03.1998','48965231756','5368895641','Kadın','1.69','10.06.2020','Aylık','Diğer'),('Taha Turna','10.01.1997','69854785102','5306691020','Erkek','1.95','12.06.2020','Aylık','3.Program'),('Uğur Şahin','04.06.1997','21301456874','5387415689','Erkek','1.80','13.06.2020','Aylık','3.Program');
/*!40000 ALTER TABLE `üye_tab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-14 21:49:23
