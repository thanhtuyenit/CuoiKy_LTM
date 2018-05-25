-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ThiCuoiKy
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `benh`
--

DROP TABLE IF EXISTS `benh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benh` (
  `mabenh` int(11) NOT NULL AUTO_INCREMENT,
  `tenbenh` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mabenh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benh`
--

LOCK TABLES `benh` WRITE;
/*!40000 ALTER TABLE `benh` DISABLE KEYS */;
/*!40000 ALTER TABLE `benh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL AUTO_INCREMENT,
  `hotenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `diachikh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` int(11) NOT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichsutiemphong`
--

DROP TABLE IF EXISTS `lichsutiemphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lichsutiemphong` (
  `makh` int(11) NOT NULL,
  `mavacxin` int(11) NOT NULL,
  `sttmui` int(11) NOT NULL,
  `ngaytimphong` date NOT NULL,
  `ngayhentieptheo` date NOT NULL,
  PRIMARY KEY (`makh`,`mavacxin`),
  KEY `fk_lichsutiemphong_vacxin_idx` (`mavacxin`),
  CONSTRAINT `fk_lichsutiemphong_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lichsutiemphong_vacxin` FOREIGN KEY (`mavacxin`) REFERENCES `vacxin` (`mavacxin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichsutiemphong`
--

LOCK TABLES `lichsutiemphong` WRITE;
/*!40000 ALTER TABLE `lichsutiemphong` DISABLE KEYS */;
/*!40000 ALTER TABLE `lichsutiemphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongbenh`
--

DROP TABLE IF EXISTS `phongbenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phongbenh` (
  `mavacxin` int(11) NOT NULL,
  `mabenh` int(11) NOT NULL,
  `ghichu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mavacxin`,`mabenh`),
  KEY `fk_phongbenh_1_idx` (`mabenh`),
  CONSTRAINT `fk_phongbenh_1` FOREIGN KEY (`mabenh`) REFERENCES `benh` (`mabenh`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_phongbenh_vacxin` FOREIGN KEY (`mavacxin`) REFERENCES `vacxin` (`mavacxin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongbenh`
--

LOCK TABLES `phongbenh` WRITE;
/*!40000 ALTER TABLE `phongbenh` DISABLE KEYS */;
/*!40000 ALTER TABLE `phongbenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@gmail.com','123456','Tuyền');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacxin`
--

DROP TABLE IF EXISTS `vacxin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacxin` (
  `mavacxin` int(11) NOT NULL AUTO_INCREMENT,
  `tenvacxin` varchar(45) CHARACTER SET utf8 NOT NULL,
  `somui` int(11) NOT NULL,
  `mota` varchar(45) CHARACTER SET utf8 NOT NULL,
  `giavacxin` double NOT NULL,
  `tenhang` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`mavacxin`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacxin`
--

LOCK TABLES `vacxin` WRITE;
/*!40000 ALTER TABLE `vacxin` DISABLE KEYS */;
INSERT INTO `vacxin` VALUES (1,'Vacxin1',3,'ABC',1000,'Viet nam'),(2,'q',12,'qqq',123,'abc'),(3,'q',12,'fffff',123,'Nhat');
/*!40000 ALTER TABLE `vacxin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25 23:22:23
