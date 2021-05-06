CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;
-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `entity_assignments`
--

DROP TABLE IF EXISTS `entity_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_assignments` (
  `id_assign` int(10) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `points` int(10) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_assign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_assignments`
--

LOCK TABLES `entity_assignments` WRITE;
/*!40000 ALTER TABLE `entity_assignments` DISABLE KEYS */;
INSERT INTO `entity_assignments` VALUES (1,'Easy',10,'2021-05-05 18:00:00'),(2,'Medium',50,'2021-05-06 18:00:00'),(3,'Hard',100,'2021-05-07 18:00:00');
/*!40000 ALTER TABLE `entity_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_course`
--

DROP TABLE IF EXISTS `entity_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_course` (
  `id_section` int(10) NOT NULL,
  `id_discipline` int(10) DEFAULT NULL,
  `number` char(3) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` tinytext,
  PRIMARY KEY (`id_section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_course`
--

LOCK TABLES `entity_course` WRITE;
/*!40000 ALTER TABLE `entity_course` DISABLE KEYS */;
INSERT INTO `entity_course` VALUES (43400,1,'17b','C++ Programming: Advanced Objects','Lots of Work'),(43401,2,'17a','C++ Programming: Objects','Less Work'),(43402,3,'5','C++ Programming: Intro','Simple');
/*!40000 ALTER TABLE `entity_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_instructor`
--

DROP TABLE IF EXISTS `entity_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_instructor` (
  `id_instructor` int(10) NOT NULL,
  `first_name` char(15) DEFAULT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `last_name` char(20) DEFAULT NULL,
  `email_address` char(30) DEFAULT NULL,
  `phone_number` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_instructor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_instructor`
--

LOCK TABLES `entity_instructor` WRITE;
/*!40000 ALTER TABLE `entity_instructor` DISABLE KEYS */;
INSERT INTO `entity_instructor` VALUES (1,'Mark','E','Lehr','mark.lehr@rcc.edu','9512228260'),(2,'Paul','C','Conrad','paul.conrade@rcc.edu','9512228110'),(3,'Paul','B','Dalba','paul.daulba@rccd.edu','9512228123');
/*!40000 ALTER TABLE `entity_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_student`
--

DROP TABLE IF EXISTS `entity_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_student` (
  `id_student` int(10) NOT NULL,
  `first_name` char(15) DEFAULT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `last_name` char(20) DEFAULT NULL,
  `email_address` char(40) DEFAULT NULL,
  `phone_number` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_student`
--

LOCK TABLES `entity_student` WRITE;
/*!40000 ALTER TABLE `entity_student` DISABLE KEYS */;
INSERT INTO `entity_student` VALUES (1,'Mark','E','Blaine','mark.blaine@student.rccd.edu','9511234567'),(2,'Sharon','C','Delaney','sharon.delaney@student.rccd.edu','9512345678'),(3,'Janet','W','Cisneros','janet.cisneros@student.rccd.edu','9513456789');
/*!40000 ALTER TABLE `entity_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enum_discipline`
--

DROP TABLE IF EXISTS `enum_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_discipline` (
  `id_discipline` int(10) NOT NULL,
  `discipline` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_discipline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_discipline`
--

LOCK TABLES `enum_discipline` WRITE;
/*!40000 ALTER TABLE `enum_discipline` DISABLE KEYS */;
INSERT INTO `enum_discipline` VALUES (1,'CSC'),(2,'CIS'),(3,'CAT');
/*!40000 ALTER TABLE `enum_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xref_course_assignment`
--

DROP TABLE IF EXISTS `xref_course_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_course_assignment` (
  `id_xref_cours_assign` int(10) NOT NULL,
  `id_course` int(10) DEFAULT NULL,
  `id_assign` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_xref_cours_assign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xref_course_assignment`
--

LOCK TABLES `xref_course_assignment` WRITE;
/*!40000 ALTER TABLE `xref_course_assignment` DISABLE KEYS */;
INSERT INTO `xref_course_assignment` VALUES (1,43400,1),(2,43401,2),(3,4302,3);
/*!40000 ALTER TABLE `xref_course_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xref_inst_course`
--

DROP TABLE IF EXISTS `xref_inst_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_inst_course` (
  `id_xref` int(10) NOT NULL,
  `id_instructor` int(10) DEFAULT NULL,
  `id_course` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_xref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xref_inst_course`
--

LOCK TABLES `xref_inst_course` WRITE;
/*!40000 ALTER TABLE `xref_inst_course` DISABLE KEYS */;
INSERT INTO `xref_inst_course` VALUES (1,1,43400),(2,2,43401),(3,3,43402);
/*!40000 ALTER TABLE `xref_inst_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xref_student_assignment`
--

DROP TABLE IF EXISTS `xref_student_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_student_assignment` (
  `id_xref_stu_ass` int(10) NOT NULL,
  `id_student` int(10) DEFAULT NULL,
  `id_assignment` int(10) DEFAULT NULL,
  `grade` char(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_xref_stu_ass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xref_student_assignment`
--

LOCK TABLES `xref_student_assignment` WRITE;
/*!40000 ALTER TABLE `xref_student_assignment` DISABLE KEYS */;
INSERT INTO `xref_student_assignment` VALUES (1,1,3,'C','Do Better'),(2,2,1,'A','Easy Stuff'),(3,3,2,'B','Way to Go');
/*!40000 ALTER TABLE `xref_student_assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 16:58:38
