-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: ITS
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add credentials',7,'add_credentials'),(26,'Can change credentials',7,'change_credentials'),(27,'Can delete credentials',7,'delete_credentials'),(28,'Can view credentials',7,'view_credentials'),(29,'Can add academic_score',8,'add_academic_score'),(30,'Can change academic_score',8,'change_academic_score'),(31,'Can delete academic_score',8,'delete_academic_score'),(32,'Can view academic_score',8,'view_academic_score'),(33,'Can add attendance',9,'add_attendance'),(34,'Can change attendance',9,'change_attendance'),(35,'Can delete attendance',9,'delete_attendance'),(36,'Can view attendance',9,'view_attendance'),(37,'Can add faculty',10,'add_faculty'),(38,'Can change faculty',10,'change_faculty'),(39,'Can delete faculty',10,'delete_faculty'),(40,'Can view faculty',10,'view_faculty'),(41,'Can add gradeschema',11,'add_gradeschema'),(42,'Can change gradeschema',11,'change_gradeschema'),(43,'Can delete gradeschema',11,'delete_gradeschema'),(44,'Can view gradeschema',11,'view_gradeschema'),(45,'Can add achievements',12,'add_achievements'),(46,'Can change achievements',12,'change_achievements'),(47,'Can delete achievements',12,'delete_achievements'),(48,'Can view achievements',12,'view_achievements'),(49,'Can add club',13,'add_club'),(50,'Can change club',13,'change_club'),(51,'Can delete club',13,'delete_club'),(52,'Can view club',13,'view_club'),(53,'Can add registration',14,'add_registration'),(54,'Can change registration',14,'change_registration'),(55,'Can delete registration',14,'delete_registration'),(56,'Can view registration',14,'view_registration'),(57,'Can add student',15,'add_student'),(58,'Can change student',15,'change_student'),(59,'Can delete student',15,'delete_student'),(60,'Can view student',15,'view_student'),(61,'Can add academic_ course',16,'add_academic_course'),(62,'Can change academic_ course',16,'change_academic_course'),(63,'Can delete academic_ course',16,'delete_academic_course'),(64,'Can view academic_ course',16,'view_academic_course'),(65,'Can add gradeweightage',17,'add_gradeweightage'),(66,'Can change gradeweightage',17,'change_gradeweightage'),(67,'Can delete gradeweightage',17,'delete_gradeweightage'),(68,'Can view gradeweightage',17,'view_gradeweightage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(16,'student','academic_course'),(8,'student','academic_score'),(12,'student','achievements'),(9,'student','attendance'),(13,'student','club'),(7,'student','credentials'),(10,'student','faculty'),(11,'student','gradeschema'),(17,'student','gradeweightage'),(14,'student','registration'),(15,'student','student');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-01 14:38:42.552147'),(2,'auth','0001_initial','2018-11-01 14:38:51.982382'),(3,'admin','0001_initial','2018-11-01 14:38:53.979294'),(4,'admin','0002_logentry_remove_auto_add','2018-11-01 14:38:54.130635'),(5,'admin','0003_logentry_add_action_flag_choices','2018-11-01 14:38:54.216693'),(6,'contenttypes','0002_remove_content_type_name','2018-11-01 14:38:55.473517'),(7,'auth','0002_alter_permission_name_max_length','2018-11-01 14:38:55.685020'),(8,'auth','0003_alter_user_email_max_length','2018-11-01 14:38:55.877693'),(9,'auth','0004_alter_user_username_opts','2018-11-01 14:38:55.962601'),(10,'auth','0005_alter_user_last_login_null','2018-11-01 14:38:56.575989'),(11,'auth','0006_require_contenttypes_0002','2018-11-01 14:38:56.620518'),(12,'auth','0007_alter_validators_add_error_messages','2018-11-01 14:38:56.706127'),(13,'auth','0008_alter_user_username_max_length','2018-11-01 14:38:56.887800'),(14,'auth','0009_alter_user_last_name_max_length','2018-11-01 14:38:57.065931'),(15,'sessions','0001_initial','2018-11-01 14:38:57.747924'),(16,'student','0001_initial','2018-11-01 14:45:29.639100'),(17,'student','0002_academic_score_facultycourse_id','2018-11-01 15:09:12.133008'),(18,'student','0003_auto_20181101_1820','2018-11-01 18:20:42.965790'),(19,'student','0004_auto_20181101_1827','2018-11-01 18:28:17.287123'),(20,'student','0005_auto_20181102_0634','2018-11-02 06:35:17.195240'),(21,'student','0006_auto_20181102_0820','2018-11-02 08:20:43.904787'),(22,'student','0007_auto_20181103_1613','2018-11-03 16:13:48.049699'),(23,'student','0008_student_student_image','2018-11-03 17:16:27.939380'),(24,'student','0009_auto_20181111_0526','2018-11-11 05:27:23.048888'),(25,'student','0010_auto_20181111_0531','2018-11-11 05:32:04.843015'),(26,'student','0011_academic_score','2018-11-11 05:36:25.545590'),(27,'student','0012_gradeweightage_course','2018-11-11 05:50:29.935634'),(28,'student','0013_auto_20181111_0552','2018-11-11 05:52:20.541409'),(29,'student','0014_remove_academic_score_course','2018-11-11 06:40:23.759309'),(30,'student','0015_auto_20181111_0849','2018-11-11 08:49:45.704832'),(31,'student','0016_gradeschema_gradeweightage','2018-11-11 08:50:26.873177'),(32,'student','0017_registration','2018-11-12 07:54:29.464272'),(33,'student','0018_auto_20181115_1250','2018-11-15 12:50:26.392980'),(34,'student','0019_attendance','2018-11-15 12:51:09.772865');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_academic_course`
--

DROP TABLE IF EXISTS `student_academic_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_academic_course` (
  `Academic_Course_Id` varchar(20) NOT NULL,
  `Academic_Course_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Academic_Course_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_academic_course`
--

LOCK TABLES `student_academic_course` WRITE;
/*!40000 ALTER TABLE `student_academic_course` DISABLE KEYS */;
INSERT INTO `student_academic_course` VALUES ('Additional-ZC','ZigbeeCommunication'),('AI','ArtificialIntelligence'),('ALGO','Algorithms'),('APS','AdvancedProblemSolving'),('APT','Aptitude'),('ASE2','AppliedSoftwareEngineering2'),('BB','BiotechnologyandBiotechnology'),('BEC','BasicElectroniCircuits'),('BTP-WMS','WaterManagementSystem'),('CCN','ComputerandCommunicationNetworks'),('CD','CompilerDesign'),('CG','ContemporaryGandhi'),('CO','ComputerOrganisation'),('COpt','ConvexOptimization'),('CP','ComputerProgramming'),('CSD','CommunicationSystemDesign'),('CV','ComputerVision'),('DBMS','DatabaseManagementSystems'),('DC','DistributedComputing'),('DE','DifferentialEquations'),('DET','DetectionandEstimationTheory'),('DIGICOMM','DigitalCommunicationSystems'),('DIP','DigitalImageProcessing'),('DLD','DigitalDesignandElectronicCircuits'),('DM','DataMining'),('DS','DataStructures'),('DSAA','DigitalSignalAanalysisandApplications'),('DSP','DigitalSignalProcessing'),('EIS','EmbeddedandIntelligentSystems'),('EMT','ElectroMagneticTheory'),('FA','FilmAppreciation'),('FCOMM','FundamentalsofCommunication'),('GE','GoodEarth'),('Honors-ES','EmployeeSystem'),('IoT','InternetofThings'),('IR','InformationRetrieval'),('ITWS1','ITWorkshop1'),('ITWS2','ITWorkshop2'),('ITWS3','ITWorkshop3'),('LEC','LinearElectronicCircuits'),('LS','LifeSciences'),('M1','Mathematics1'),('M2','Mathematics2'),('M3','Mathematics3'),('MCS','ModernControlSystem'),('MERS','MicrowaveEngineeringandRadarSystems'),('NCC','NatureClimateChange'),('ONE','OptoandNanoElectronics'),('OS','OperatingSystems'),('PA','PerformingArts'),('PMSD','ParticipatoryMethodsforSocialDevelopment'),('PoM','PrinciplesofManagement'),('PS','ProgrammingSystems'),('SDS','StasticsforDataScience'),('SIS','SpatialInformationSystems'),('Skills_1','Skills1'),('Skills_2','Skills2'),('Skills_3','Skills3'),('Skills_4','Skills4'),('TML','TopicsinMachineLearning'),('TOC','TheoryofComputation'),('VLSI','IntroductiontoVLSI'),('WC','WirelessCommunication'),('WN','WirelessNetworks'),('YW','YouandtheWorld');
/*!40000 ALTER TABLE `student_academic_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_academic_score`
--

DROP TABLE IF EXISTS `student_academic_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_academic_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Exam_Type` varchar(20) NOT NULL,
  `Marks` decimal(10,2) DEFAULT NULL,
  `Marks_perc` decimal(10,2) DEFAULT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `Academic_Course_Id_id` varchar(20) NOT NULL,
  `Facultycourse_Id_id` int(11) NOT NULL,
  `Student_Id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_academic_sco_Academic_Course_Id_i_ec42911c_fk_student_a` (`Academic_Course_Id_id`),
  KEY `student_academic_sco_Facultycourse_Id_id_78f3767c_fk_student_f` (`Facultycourse_Id_id`),
  KEY `student_academic_sco_Student_Id_id_1b93f3b7_fk_student_s` (`Student_Id_id`),
  CONSTRAINT `student_academic_sco_Academic_Course_Id_i_ec42911c_fk_student_a` FOREIGN KEY (`Academic_Course_Id_id`) REFERENCES `student_academic_course` (`Academic_Course_Id`),
  CONSTRAINT `student_academic_sco_Facultycourse_Id_id_78f3767c_fk_student_f` FOREIGN KEY (`Facultycourse_Id_id`) REFERENCES `student_faculty` (`Facultycourse_Id`),
  CONSTRAINT `student_academic_sco_Student_Id_id_1b93f3b7_fk_student_s` FOREIGN KEY (`Student_Id_id`) REFERENCES `student_student` (`Student_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_academic_score`
--

LOCK TABLES `student_academic_score` WRITE;
/*!40000 ALTER TABLE `student_academic_score` DISABLE KEYS */;
INSERT INTO `student_academic_score` VALUES (1,'mid1',35.00,26.25,'M_2018','TOC',42,'20160010001'),(2,'mid1',31.00,23.25,'M_2018','TOC',42,'20160010002'),(3,'mid1',31.00,23.25,'M_2018','TOC',42,'20160010016'),(4,'mid1',40.00,30.00,'M_2018','TOC',42,'20160010023'),(5,'mid1',40.00,30.00,'M_2018','TOC',42,'20160010030'),(6,'mid1',43.00,12.90,'M_2016','M1',1,'20160010001'),(7,'mid1',35.00,10.50,'M_2016','M1',1,'20160010002'),(8,'mid1',35.00,10.50,'M_2016','M1',1,'20160020147'),(9,'mid2',47.00,14.10,'M_2016','M1',1,'20160010001'),(10,'mid2',50.00,15.00,'M_2016','M1',1,'20160010002'),(11,'mid2',50.00,15.00,'M_2016','M1',1,'20160020147'),(12,'end',70.00,35.00,'M_2016','M1',1,'20160010001'),(13,'end',60.00,30.00,'M_2016','M1',1,'20160010002'),(14,'end',60.00,30.00,'M_2016','M1',1,'20160020147'),(15,'mid1',25.00,25.00,'M_2018','GE',57,'20160020147'),(16,'assign1',8.00,8.00,'M_2018','GE',57,'20160020147'),(17,'mid1',43.00,21.50,'M_2016','Skills_1',14,'20160010001'),(18,'mid2',47.00,23.50,'M_2016','Skills_1',14,'20160010001'),(19,'end',70.00,35.00,'M_2016','Skills_1',14,'20160010001');
/*!40000 ALTER TABLE `student_academic_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_achievements`
--

DROP TABLE IF EXISTS `student_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Achievement` varchar(100) NOT NULL,
  `Student_Id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_achievements_Student_Id_id_685d347e_fk_student_s` (`Student_Id_id`),
  CONSTRAINT `student_achievements_Student_Id_id_685d347e_fk_student_s` FOREIGN KEY (`Student_Id_id`) REFERENCES `student_student` (`Student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_achievements`
--

LOCK TABLES `student_achievements` WRITE;
/*!40000 ALTER TABLE `student_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_attendance`
--

DROP TABLE IF EXISTS `student_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `M1_01` varchar(10) DEFAULT NULL,
  `M1_02` varchar(10) DEFAULT NULL,
  `M1_03` varchar(10) DEFAULT NULL,
  `M1_04` varchar(10) DEFAULT NULL,
  `M1_05` varchar(10) DEFAULT NULL,
  `M1_06` varchar(10) DEFAULT NULL,
  `M1_07` varchar(10) DEFAULT NULL,
  `M1_08` varchar(10) DEFAULT NULL,
  `M1_09` varchar(10) DEFAULT NULL,
  `M1_10` varchar(10) DEFAULT NULL,
  `M1_11` varchar(10) DEFAULT NULL,
  `M1_12` varchar(10) DEFAULT NULL,
  `M1_13` varchar(10) DEFAULT NULL,
  `M1_14` varchar(10) DEFAULT NULL,
  `M1_15` varchar(10) DEFAULT NULL,
  `M1_16` varchar(10) DEFAULT NULL,
  `M1_17` varchar(10) DEFAULT NULL,
  `M1_18` varchar(10) DEFAULT NULL,
  `M1_19` varchar(10) DEFAULT NULL,
  `M1_20` varchar(10) DEFAULT NULL,
  `M1_21` varchar(10) DEFAULT NULL,
  `M1_22` varchar(10) DEFAULT NULL,
  `M1_23` varchar(10) DEFAULT NULL,
  `M1_24` varchar(10) DEFAULT NULL,
  `M1_25` varchar(10) DEFAULT NULL,
  `M1_26` varchar(10) DEFAULT NULL,
  `M1_27` varchar(10) DEFAULT NULL,
  `M1_28` varchar(10) DEFAULT NULL,
  `M1_29` varchar(10) DEFAULT NULL,
  `M1_30` varchar(10) DEFAULT NULL,
  `M1_31` varchar(10) DEFAULT NULL,
  `M2_01` varchar(10) DEFAULT NULL,
  `M2_02` varchar(10) DEFAULT NULL,
  `M2_03` varchar(10) DEFAULT NULL,
  `M2_04` varchar(10) DEFAULT NULL,
  `M2_05` varchar(10) DEFAULT NULL,
  `M2_06` varchar(10) DEFAULT NULL,
  `M2_07` varchar(10) DEFAULT NULL,
  `M2_08` varchar(10) DEFAULT NULL,
  `M2_09` varchar(10) DEFAULT NULL,
  `M2_10` varchar(10) DEFAULT NULL,
  `M2_11` varchar(10) DEFAULT NULL,
  `M2_12` varchar(10) DEFAULT NULL,
  `M2_13` varchar(10) DEFAULT NULL,
  `M2_14` varchar(10) DEFAULT NULL,
  `M2_15` varchar(10) DEFAULT NULL,
  `M2_16` varchar(10) DEFAULT NULL,
  `M2_17` varchar(10) DEFAULT NULL,
  `M2_18` varchar(10) DEFAULT NULL,
  `M2_19` varchar(10) DEFAULT NULL,
  `M2_20` varchar(10) DEFAULT NULL,
  `M2_21` varchar(10) DEFAULT NULL,
  `M2_22` varchar(10) DEFAULT NULL,
  `M2_23` varchar(10) DEFAULT NULL,
  `M2_24` varchar(10) DEFAULT NULL,
  `M2_25` varchar(10) DEFAULT NULL,
  `M2_26` varchar(10) DEFAULT NULL,
  `M2_27` varchar(10) DEFAULT NULL,
  `M2_28` varchar(10) DEFAULT NULL,
  `M2_29` varchar(10) DEFAULT NULL,
  `M2_30` varchar(10) DEFAULT NULL,
  `M2_31` varchar(10) DEFAULT NULL,
  `M3_01` varchar(10) DEFAULT NULL,
  `M3_02` varchar(10) DEFAULT NULL,
  `M3_03` varchar(10) DEFAULT NULL,
  `M3_04` varchar(10) DEFAULT NULL,
  `M3_05` varchar(10) DEFAULT NULL,
  `M3_06` varchar(10) DEFAULT NULL,
  `M3_07` varchar(10) DEFAULT NULL,
  `M3_08` varchar(10) DEFAULT NULL,
  `M3_09` varchar(10) DEFAULT NULL,
  `M3_10` varchar(10) DEFAULT NULL,
  `M3_11` varchar(10) DEFAULT NULL,
  `M3_12` varchar(10) DEFAULT NULL,
  `M3_13` varchar(10) DEFAULT NULL,
  `M3_14` varchar(10) DEFAULT NULL,
  `M3_15` varchar(10) DEFAULT NULL,
  `M3_16` varchar(10) DEFAULT NULL,
  `M3_17` varchar(10) DEFAULT NULL,
  `M3_18` varchar(10) DEFAULT NULL,
  `M3_19` varchar(10) DEFAULT NULL,
  `M3_20` varchar(10) DEFAULT NULL,
  `M3_21` varchar(10) DEFAULT NULL,
  `M3_22` varchar(10) DEFAULT NULL,
  `M3_23` varchar(10) DEFAULT NULL,
  `M3_24` varchar(10) DEFAULT NULL,
  `M3_25` varchar(10) DEFAULT NULL,
  `M3_26` varchar(10) DEFAULT NULL,
  `M3_27` varchar(10) DEFAULT NULL,
  `M3_28` varchar(10) DEFAULT NULL,
  `M3_29` varchar(10) DEFAULT NULL,
  `M3_30` varchar(10) DEFAULT NULL,
  `M3_31` varchar(10) DEFAULT NULL,
  `M4_01` varchar(10) DEFAULT NULL,
  `M4_02` varchar(10) DEFAULT NULL,
  `M4_03` varchar(10) DEFAULT NULL,
  `M4_04` varchar(10) DEFAULT NULL,
  `M4_05` varchar(10) DEFAULT NULL,
  `M4_06` varchar(10) DEFAULT NULL,
  `M4_07` varchar(10) DEFAULT NULL,
  `M4_08` varchar(10) DEFAULT NULL,
  `M4_09` varchar(10) DEFAULT NULL,
  `M4_10` varchar(10) DEFAULT NULL,
  `M4_11` varchar(10) DEFAULT NULL,
  `M4_12` varchar(10) DEFAULT NULL,
  `M4_13` varchar(10) DEFAULT NULL,
  `M4_14` varchar(10) DEFAULT NULL,
  `M4_15` varchar(10) DEFAULT NULL,
  `M4_16` varchar(10) DEFAULT NULL,
  `M4_17` varchar(10) DEFAULT NULL,
  `M4_18` varchar(10) DEFAULT NULL,
  `M4_19` varchar(10) DEFAULT NULL,
  `M4_20` varchar(10) DEFAULT NULL,
  `M4_21` varchar(10) DEFAULT NULL,
  `M4_22` varchar(10) DEFAULT NULL,
  `M4_23` varchar(10) DEFAULT NULL,
  `M4_24` varchar(10) DEFAULT NULL,
  `M4_25` varchar(10) DEFAULT NULL,
  `M4_26` varchar(10) DEFAULT NULL,
  `M4_27` varchar(10) DEFAULT NULL,
  `M4_28` varchar(10) DEFAULT NULL,
  `M4_29` varchar(10) DEFAULT NULL,
  `M4_30` varchar(10) DEFAULT NULL,
  `M4_31` varchar(10) DEFAULT NULL,
  `M5_01` varchar(10) DEFAULT NULL,
  `M5_02` varchar(10) DEFAULT NULL,
  `M5_03` varchar(10) DEFAULT NULL,
  `M5_04` varchar(10) DEFAULT NULL,
  `M5_05` varchar(10) DEFAULT NULL,
  `M5_06` varchar(10) DEFAULT NULL,
  `M5_07` varchar(10) DEFAULT NULL,
  `M5_08` varchar(10) DEFAULT NULL,
  `M5_09` varchar(10) DEFAULT NULL,
  `M5_10` varchar(10) DEFAULT NULL,
  `M5_11` varchar(10) DEFAULT NULL,
  `M5_12` varchar(10) DEFAULT NULL,
  `M5_13` varchar(10) DEFAULT NULL,
  `M5_14` varchar(10) DEFAULT NULL,
  `M5_15` varchar(10) DEFAULT NULL,
  `M5_16` varchar(10) DEFAULT NULL,
  `M5_17` varchar(10) DEFAULT NULL,
  `M5_18` varchar(10) DEFAULT NULL,
  `M5_19` varchar(10) DEFAULT NULL,
  `M5_20` varchar(10) DEFAULT NULL,
  `M5_21` varchar(10) DEFAULT NULL,
  `M5_22` varchar(10) DEFAULT NULL,
  `M5_23` varchar(10) DEFAULT NULL,
  `M5_24` varchar(10) DEFAULT NULL,
  `M5_25` varchar(10) DEFAULT NULL,
  `M5_26` varchar(10) DEFAULT NULL,
  `M5_27` varchar(10) DEFAULT NULL,
  `M5_28` varchar(10) DEFAULT NULL,
  `M5_29` varchar(10) DEFAULT NULL,
  `M5_30` varchar(10) DEFAULT NULL,
  `M5_31` varchar(10) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `Academic_Course_Id_id` varchar(20) NOT NULL,
  `Student_Id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_attendance_Academic_Course_Id_i_3ca65e05_fk_student_a` (`Academic_Course_Id_id`),
  KEY `student_attendance_Student_Id_id_9f4039db_fk_student_s` (`Student_Id_id`),
  CONSTRAINT `student_attendance_Academic_Course_Id_i_3ca65e05_fk_student_a` FOREIGN KEY (`Academic_Course_Id_id`) REFERENCES `student_academic_course` (`Academic_Course_Id`),
  CONSTRAINT `student_attendance_Student_Id_id_9f4039db_fk_student_s` FOREIGN KEY (`Student_Id_id`) REFERENCES `student_student` (`Student_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_attendance`
--

LOCK TABLES `student_attendance` WRITE;
/*!40000 ALTER TABLE `student_attendance` DISABLE KEYS */;
INSERT INTO `student_attendance` VALUES (1,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','P','','','','',0,'TOC','20160010001'),(2,'','','','','','','P','P','','','','','P','','A','','','','','P','A','P','','','','','P','P','P','','','','','P','A','P','','','','P','P','P','','','','','P','P','A','','','','','A','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','A','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','P','','','','',0,'TOC','20160010002'),(3,'','','','','','','P','A','','','','','P','','P','','','','','P','P','P','','','','','A','A','P','','','','','P','A','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','A','P','P','','','','P','P','P','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','P','','','','',0,'DM','20160010003'),(4,'','','','','','','P','P','','','','','P','','P','','','','','A','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',1,'TOC','20160010005'),(5,'','','','','','','P','P','','','','','A','','P','','','','','P','A','A','','','','','P','A','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','A','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',1,'TOC','20160010006'),(6,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','','','','','','','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',15,'TOC','20160010016'),(7,'','','','','','','P','A','','','','','P','','P','','','','','P','P','A','','','','','P','P','P','','','','','P','P','P','','','','A','P','P','','','','','P','A','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','A','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',1,'TOC','20160010023'),(8,'','','','','','','P','P','','','','','P','','P','','','','','P','P','A','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','A','P','','','','','P','A','','','','','','','P','P','A','','','','P','P','P','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','','','','','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',15,'DIP','20160010030'),(9,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','A','','','','','P','P','','','','','','P','P','A','','','','','A','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',1,'TOC','20160010041'),(10,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','A','P','','','','','P','P','','','','','','P','A','P','','','','','A','P','P','','','','','','','','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',15,'LS','20160010059'),(11,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',15,'LS','20160010162'),(12,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','A','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','A','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',15,'GE','20160020147'),(13,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','A','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','A','','','','','P','P','','','','','','P','P','P','','','','','P','P','P','','','','','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',15,'DM','20160010067'),(16,'','','','','','','P','P','','','','','P','','P','','','','','P','P','P','','','','','P','P','P','','','','','P','P','P','','','','P','P','P','','','','','P','P','P','','','','','P','P','','','','','','','P','P','P','','','','P','P','P','','','','','A','P','','','','','','P','P','P','','','','','P','P','P','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','A','','','','',1,'TOC','20160020111');
/*!40000 ALTER TABLE `student_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_club`
--

DROP TABLE IF EXISTS `student_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Club_name` varchar(100) NOT NULL,
  `session1` varchar(10) DEFAULT NULL,
  `session2` varchar(10) DEFAULT NULL,
  `session3` varchar(10) DEFAULT NULL,
  `session4` varchar(10) DEFAULT NULL,
  `session5` varchar(10) DEFAULT NULL,
  `session6` varchar(10) DEFAULT NULL,
  `session7` varchar(10) DEFAULT NULL,
  `session8` varchar(10) DEFAULT NULL,
  `session9` varchar(10) DEFAULT NULL,
  `session10` varchar(10) DEFAULT NULL,
  `session11` varchar(10) DEFAULT NULL,
  `session12` varchar(10) DEFAULT NULL,
  `Student_Id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_club_Student_Id_id_bf9355ab_fk_student_s` (`Student_Id_id`),
  CONSTRAINT `student_club_Student_Id_id_bf9355ab_fk_student_s` FOREIGN KEY (`Student_Id_id`) REFERENCES `student_student` (`Student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_club`
--

LOCK TABLES `student_club` WRITE;
/*!40000 ALTER TABLE `student_club` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_credentials`
--

DROP TABLE IF EXISTS `student_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` varchar(100) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Confirm_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_credentials`
--

LOCK TABLES `student_credentials` WRITE;
/*!40000 ALTER TABLE `student_credentials` DISABLE KEYS */;
INSERT INTO `student_credentials` VALUES (1,'20160010016','Niharika','','Chalapaka','Project-admin1','Project-admin1\r'),(2,'20160010001','Aakash','','Shukla','Student@1','Student@1\r'),(3,'20160010002','Aditya','Haridas','Menon','Student@1','Student@1\r'),(4,'20160010003','Dharani','Devi','Akurathi','Student@1','Student@1\r'),(5,'20160020111','Ashish','Kumar','Patel','Student@1','Student@1\r'),(6,'20160020147','Mrudula','Shastri','Pullela','Project-admin1','Project-admin1\r'),(7,'20160010041','Kaustubh','','Pandey','Student@1','Student@1\r'),(8,'20160020114','Lavanya','','Banoth','Student@1','Student@1\r'),(9,'20160010030','Jahnavi','','Gujjula','Student@1','Student@1\r'),(10,'20160010023','Dhruv','','Meshram','Student@1','Student@1\r'),(11,'F_0016','Vishwanath','','P','Faculty@1','Faculty@1\r'),(12,'F_0027','Nagesh','','','Faculty@1','Faculty@1\r'),(13,'F_0018','Divya','Brahmam','','Faculty@1','Faculty@1\r'),(14,'F_0017','Uma','','Garimella','Faculty@1','Faculty@1\r'),(15,'F_0001','Snehasis','','Mukerjee','Faculty@1','Faculty@1\r'),(16,'F_0002','Paul','','Brainerd','Faculty@1','Faculty@1\r'),(17,'F_0003','Siva','Prasad','K','Faculty@1','Faculty@1\r'),(18,'F_0004','Shivram','','Dubey','Faculty@1','Faculty@1\r'),(19,'F_0005','Venkatesh','','','Faculty@1','Faculty@1\r'),(20,'F_0006','Sukanya','','','Faculty@1','Faculty@1\r'),(21,'F_0007','Anupama','','','Faculty@1','Faculty@1\r'),(22,'F_0008','Rajendra','Prasath','','Faculty@1','Faculty@1\r'),(23,'F_0009','Praveen','Kumar','','Faculty@1','Faculty@1\r'),(24,'F_0010','Raja','Vara Prasad','','Faculty@1','Faculty@1\r'),(25,'F_0011','Rangeet','','Mitra','Faculty@1','Faculty@1\r'),(26,'F_0012','Balaji','','Raman','Faculty@1','Faculty@1\r'),(27,'F_0013','Anish','Chand','','Faculty@1','Faculty@1\r'),(28,'F_0014','Subu','','Kandaswamy','Faculty@1','Faculty@1\r'),(29,'F_0015','Hrishikesh','','V','Faculty@1','Faculty@1\r'),(30,'F_0019','Krishna','Chaitanya','','Faculty@1','Faculty@1\r'),(31,'F_0020','Prasanna','','','Faculty@1','Faculty@1\r'),(32,'F_0021','Yogananda','Rao','','Faculty@1','Faculty@1\r'),(33,'F_0022','Srijitha','','Banerjee','Faculty@1','Faculty@1\r'),(34,'F_0023','Srivalli','','','Faculty@1','Faculty@1\r'),(35,'F_0024','Maniak','','Thakur','Faculty@1','Faculty@1\r'),(36,'F_0025','External','','','Faculty@1','Faculty@1\r'),(37,'F_0026','Sanjay','','Vishwakarma','Faculty@1','Faculty@1\r'),(38,'F_0028','Subramaniam','','','Faculty@1','Faculty@1\r'),(39,'A_0001','Siri','Babu','','Admin@001','Admin@001\r'),(40,'A_0002','Sai','Krishna','','Admin@001','Admin@001\r'),(41,'Nature_President','Rohith','Chowdary','Atluri','Club@001','Club@001\r'),(42,'Programming_VicePresident','Krishna','Kumar','Dey','Club@001','Club@001');
/*!40000 ALTER TABLE `student_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_faculty`
--

DROP TABLE IF EXISTS `student_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_faculty` (
  `Facultycourse_Id` int(11) NOT NULL,
  `Faculty_Id` varchar(20) NOT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Faculty_Name` varchar(100) DEFAULT NULL,
  `Academic_Course_Id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`Facultycourse_Id`),
  KEY `student_faculty_Academic_Course_Id_i_67e3d289_fk_student_a` (`Academic_Course_Id_id`),
  CONSTRAINT `student_faculty_Academic_Course_Id_i_67e3d289_fk_student_a` FOREIGN KEY (`Academic_Course_Id_id`) REFERENCES `student_academic_course` (`Academic_Course_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_faculty`
--

LOCK TABLES `student_faculty` WRITE;
/*!40000 ALTER TABLE `student_faculty` DISABLE KEYS */;
INSERT INTO `student_faculty` VALUES (1,'F_0001','1','Snehasis Mukherjee','M1'),(2,'F_0001','2','Snehasis Mukherjee','M2'),(3,'F_0001','1','Snehasis Mukherjee','DIP'),(4,'F_0002','2','Paul Braineard','BEC'),(5,'F_0002','1','Paul Braineard','VLSI'),(6,'F_0003','1','Siva Prasad K','DLD'),(7,'F_0003','2','Siva Prasad K','MCS'),(8,'F_0003','2','Siva Prasad K','ONE'),(9,'F_0004','1','Shivram Dubey','ITWS1'),(10,'F_0004','2','Shivram Dubey','CV'),(11,'F_0004','2','Shivram Dubey','ITWS2'),(12,'F_0005','1','Venkatesh','CP'),(13,'F_0005','1','Venkatesh','IR'),(14,'F_0006','1','Sukanya','Skills_1'),(15,'F_0006','2','Sukanya','Skills_2'),(16,'F_0006','1','Sukanya','Skills_3'),(17,'F_0006','2','Sukanya','Skills_4'),(18,'F_0007','1','Anupama','Skills_1'),(19,'F_0007','2','Anupama','Skills_2'),(20,'F_0007','1','Anupama','Skills_3'),(21,'F_0007','2','Anupama','Skills_4'),(22,'F_0008','2','Rajendra Prasanth','DS'),(23,'F_0008','1','Rajendra Prasanth','ALGO'),(24,'F_0008','2','Rajendra Prasanth','DC'),(25,'F_0009','2','Praveen Kumar','CO'),(26,'F_0010','2','Raja Varra Prasad','ITWS2'),(27,'F_0010','1','Raja Varra Prasad','IoT'),(28,'F_0010','2','Raja Varra Prasad','EIS'),(29,'F_0011','1','Rangeet Mitra','M3'),(30,'F_0011','2','Rangeet Mitra','DSP'),(31,'F_0011','2','Rangeet Mitra','TML'),(32,'F_0012','1','Balaji Raman','OS'),(33,'F_0013','1','Anish Chand','DSAA'),(34,'F_0013','2','Anish Chand','TML'),(35,'F_0013','2','Anish Chand','MCS'),(36,'F_0014','1','Subu Kandaswamy','ITWS3'),(37,'F_0015','2','Hrishikesh V','FCOMM'),(38,'F_0015','1','Hrishikesh V','CSD'),(39,'F_0015','2','Hrishikesh V','WN'),(40,'F_0016','2','Vishwanath P','AI'),(41,'F_0016','2','Vishwanath P','CD'),(42,'F_0016','1','Vishwanath P','TOC'),(43,'F_0016','1','Vishwanath P','DM'),(44,'F_0017','2','Uma Garimella','DBMS'),(45,'F_0017','1','Uma Garimella','APS'),(46,'F_0017','1','Uma Garimella','YW'),(47,'F_0017','1','Uma Garimella','ASE2'),(48,'F_0018','2','Divya Brahmam','LEC'),(49,'F_0018','1','Divya Brahmam','EMT'),(50,'F_0018','1','Divya Brahmam','MERS'),(51,'F_0019','2','Krishna Chaitanya','CCN'),(52,'F_0019','1','Krishna Chaitanya','DIGICOMM'),(53,'F_0019','1','Krishna Chaitanya','WC'),(54,'F_0020','1','Prasanna','FA'),(55,'F_0020','2','Prasanna','PA'),(56,'F_0020','2','Prasanna','CG'),(57,'F_0021','1','Yogananda Rao','GE'),(58,'F_0021','2','Yogananda Rao','NCC'),(59,'F_0022','1','Srijitha Banerjee','LS'),(60,'F_0022','2','Srijitha Banerjee','BB'),(61,'F_0023','1','Srivalli','DE'),(62,'F_0024','1','Mainak Thakur','SDS'),(63,'F_0025','1','External','Apt'),(64,'F_0026','2','Sanjay Vishwakarma','COpt'),(65,'F_0026','2','Sanjay Vishwakarma','DET'),(66,'F_0027','2','Nagesh','SIS'),(67,'F_0027','2','Nagesh','PMSD'),(68,'F_0027','2','Nagesh','BTP-WMS'),(69,'F_0019','1','Krishna Chaitanya','Additional-ZC'),(70,'F_0017','1','Uma Garimella','Honors-ES');
/*!40000 ALTER TABLE `student_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_gradeschema`
--

DROP TABLE IF EXISTS `student_gradeschema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_gradeschema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `A` varchar(10) NOT NULL,
  `A2` varchar(10) NOT NULL,
  `B` varchar(10) NOT NULL,
  `B2` varchar(10) NOT NULL,
  `C` varchar(10) NOT NULL,
  `C2` varchar(10) NOT NULL,
  `D` varchar(10) NOT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `Facultycourse_Id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_gradeschema_Facultycourse_Id_id_770b6449_fk_student_f` (`Facultycourse_Id_id`),
  CONSTRAINT `student_gradeschema_Facultycourse_Id_id_770b6449_fk_student_f` FOREIGN KEY (`Facultycourse_Id_id`) REFERENCES `student_faculty` (`Facultycourse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_gradeschema`
--

LOCK TABLES `student_gradeschema` WRITE;
/*!40000 ALTER TABLE `student_gradeschema` DISABLE KEYS */;
INSERT INTO `student_gradeschema` VALUES (1,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2016',1),(2,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',2),(3,'89-100','79-88','70-78','61-70','56-60','41-55','35-40','M_2018',3),(4,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',4),(5,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',5),(6,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2016',6),(7,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',7),(8,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',8),(9,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2016',9),(10,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',10),(11,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',11),(12,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2016',12),(13,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',13),(14,'96-100','86-95','76-85','61-75','51-60','40-50','35-40','M_2016',14),(15,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',15),(16,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',16),(17,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',17),(18,'91-100','81-90','76-80','61-75','51-60','46-50','35-45','M_2016',18),(19,'96-100','86-95','71-80','61-70','51-60','41-50','35-40','S_2017',19),(20,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',20),(21,'91-100','81-90','71-80','66-70','56-65','41-55','35-40','S_2018',21),(22,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',22),(23,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',23),(24,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',24),(25,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',25),(26,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2017',26),(27,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',27),(28,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',28),(29,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',29),(30,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',30),(31,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',31),(32,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',32),(33,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',33),(34,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',34),(35,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',35),(36,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2017',36),(37,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',37),(38,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',38),(39,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',39),(40,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',40),(41,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',41),(42,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',42),(43,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',43),(44,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',44),(45,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',45),(46,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',46),(47,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',47),(48,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',48),(49,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',49),(50,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',50),(51,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','S_2018',51),(52,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','M_2018',52),(53,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','S_2018',53),(54,'91-100','81-90','71-80','61-70','51-60','41-50','36-40','M_2018',54),(55,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',55),(56,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',56),(57,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','M_2018',57),(58,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','S_2018',58),(59,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',59),(60,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',60),(61,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','M_2018',61),(62,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',62),(63,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',63),(64,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',64),(65,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',65),(66,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',66),(67,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',67),(68,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','S_2018',68),(69,'86-100','76-85','66-75','56-65','46-55','36-45','30-35','M_2018',69),(70,'91-100','81-90','71-80','61-70','51-60','41-50','35-40','M_2018',70);
/*!40000 ALTER TABLE `student_gradeschema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_gradeweightage`
--

DROP TABLE IF EXISTS `student_gradeweightage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_gradeweightage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Exam_Type` varchar(20) DEFAULT NULL,
  `tmarks` decimal(10,2) DEFAULT NULL,
  `wmarks` decimal(10,2) DEFAULT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `Facultycourse_Id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_gradeweighta_Facultycourse_Id_id_2022728b_fk_student_f` (`Facultycourse_Id_id`),
  CONSTRAINT `student_gradeweighta_Facultycourse_Id_id_2022728b_fk_student_f` FOREIGN KEY (`Facultycourse_Id_id`) REFERENCES `student_faculty` (`Facultycourse_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_gradeweightage`
--

LOCK TABLES `student_gradeweightage` WRITE;
/*!40000 ALTER TABLE `student_gradeweightage` DISABLE KEYS */;
INSERT INTO `student_gradeweightage` VALUES (1,'mid1',50.00,15.00,'M_2016',1),(2,'mid2',50.00,15.00,'M_2016',1),(3,'end',100.00,50.00,'M_2016',1),(4,'assign1',20.00,10.00,'M_2016',1),(5,'assign2',20.00,10.00,'M_2016',1),(6,'mid1',50.00,15.00,'M_2016',6),(7,'mid2',50.00,15.00,'M_2016',6),(8,'end',100.00,40.00,'M_2016',6),(9,'assign1',30.00,5.00,'M_2016',6),(10,'assign2',30.00,5.00,'M_2016',6),(11,'labexam',20.00,20.00,'M_2016',6),(12,'mid1',50.00,10.00,'M_2016',9),(13,'mid2',50.00,10.00,'M_2016',9),(14,'end',100.00,30.00,'M_2016',9),(15,'assign1',30.00,10.00,'M_2016',9),(16,'assign2',20.00,10.00,'M_2016',9),(17,'project',30.00,30.00,'M_2016',9),(18,'mid1',50.00,15.00,'M_2016',12),(19,'mid2',50.00,15.00,'M_2016',12),(20,'end',100.00,30.00,'M_2016',12),(21,'assign1',90.00,10.00,'M_2016',12),(22,'assign2',90.00,15.00,'M_2016',12),(23,'assign3',90.00,15.00,'M_2016',12),(24,'mid1',60.00,30.00,'M_2016',14),(25,'mid2',60.00,30.00,'M_2016',14),(26,'end',80.00,40.00,'M_2016',14),(27,'mid1',25.00,15.00,'M_2017',32),(28,'mid2',25.00,15.00,'M_2017',32),(29,'end',30.00,30.00,'M_2017',32),(30,'assign1',10.00,10.00,'M_2017',32),(31,'project',30.00,30.00,'M_2017',32),(32,'mid1',50.00,20.00,'M_2017',23),(33,'mid2',50.00,20.00,'M_2017',23),(34,'end',100.00,30.00,'M_2017',23),(35,'assign1',50.00,15.00,'M_2017',23),(36,'assign2',60.00,15.00,'M_2017',23),(37,'mid1',20.00,10.00,'M_2017',33),(38,'mid2',20.00,10.00,'M_2017',33),(39,'end',30.00,20.00,'M_2017',33),(40,'assign1',20.00,10.00,'M_2017',33),(41,'assign2',20.00,10.00,'M_2017',33),(42,'project',40.00,40.00,'M_2017',33),(43,'mid1',15.00,10.00,'M_2017',36),(44,'mid2',15.00,10.00,'M_2017',36),(45,'end',30.00,10.00,'M_2017',36),(46,'project',70.00,70.00,'M_2017',36),(47,'mid1',50.00,20.00,'M_2017',29),(48,'mid2',50.00,20.00,'M_2017',29),(49,'end',60.00,60.00,'M_2017',29),(50,'mid1',60.00,25.00,'M_2017',16),(51,'mid2',60.00,25.00,'M_2017',16),(52,'end',80.00,40.00,'M_2017',16),(53,'spt',10.00,10.00,'M_2017',16),(54,'mid1',60.00,25.00,'M_2017',20),(55,'mid2',60.00,25.00,'M_2017',20),(56,'end',80.00,40.00,'M_2017',20),(57,'spt',10.00,10.00,'M_2017',20),(58,'mid1',60.00,20.00,'M_2016',18),(59,'mid2',60.00,20.00,'M_2016',18),(60,'end',80.00,60.00,'M_2017',20),(61,'eval-1',20.00,20.00,'M_2018',47),(62,'mid1',50.00,25.00,'M_2018',61),(63,'assign1',50.00,20.00,'M_2018',61),(64,'assign2',50.00,20.00,'M_2018',61),(65,'mid1',40.00,30.00,'M_2018',42),(67,'mid1',30.00,30.00,'M_2018',57),(68,'assign1',10.00,10.00,'M_2018',57),(69,'assign2',10.00,10.00,'M_2018',57);
/*!40000 ALTER TABLE `student_gradeweightage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_registration`
--

DROP TABLE IF EXISTS `student_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Semester` varchar(10) DEFAULT NULL,
  `Academic_Course_Id_id` varchar(20) NOT NULL,
  `Student_Id_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_registration_Academic_Course_Id_i_e15acb76_fk_student_a` (`Academic_Course_Id_id`),
  KEY `student_registration_Student_Id_id_dfd4cf5d_fk_student_s` (`Student_Id_id`),
  CONSTRAINT `student_registration_Academic_Course_Id_i_e15acb76_fk_student_a` FOREIGN KEY (`Academic_Course_Id_id`) REFERENCES `student_academic_course` (`Academic_Course_Id`),
  CONSTRAINT `student_registration_Student_Id_id_dfd4cf5d_fk_student_s` FOREIGN KEY (`Student_Id_id`) REFERENCES `student_student` (`Student_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_registration`
--

LOCK TABLES `student_registration` WRITE;
/*!40000 ALTER TABLE `student_registration` DISABLE KEYS */;
INSERT INTO `student_registration` VALUES (1,'M_2016','M1','20160010001'),(2,'M_2016','DLD','20160010001'),(3,'M_2016','ITWS1','20160010001'),(4,'M_2016','CP','20160010001'),(5,'M_2016','Skills_1','20160010001'),(6,'M_2016','M1','20160010002'),(7,'M_2016','DLD','20160010002'),(8,'M_2016','ITWS1','20160010002'),(9,'M_2016','CP','20160010002'),(10,'M_2016','Skills_1','20160010002'),(11,'M_2016','M1','20160010003'),(12,'M_2016','DLD','20160010003'),(13,'M_2016','ITWS1','20160010003'),(14,'M_2016','CP','20160010003'),(15,'M_2016','Skills_1','20160010003'),(16,'M_2016','M1','20160010005'),(17,'M_2016','DLD','20160010005'),(18,'M_2016','ITWS1','20160010005'),(19,'M_2016','CP','20160010005'),(20,'M_2016','Skills_1','20160010005'),(21,'M_2016','M1','20160010006'),(22,'M_2016','DLD','20160010006'),(23,'M_2016','ITWS1','20160010006'),(24,'M_2016','CP','20160010006'),(25,'M_2016','Skills_1','20160010006'),(26,'M_2016','M1','20160010016'),(27,'M_2016','DLD','20160010016'),(28,'M_2016','ITWS1','20160010016'),(29,'M_2016','CP','20160010016'),(30,'M_2016','Skills_1','20160010016'),(31,'M_2016','M1','20160010023'),(32,'M_2016','DLD','20160010023'),(33,'M_2016','ITWS1','20160010023'),(34,'M_2016','CP','20160010023'),(35,'M_2016','Skills_1','20160010023'),(36,'M_2016','M1','20160010030'),(37,'M_2016','DLD','20160010030'),(38,'M_2016','ITWS1','20160010030'),(39,'M_2016','CP','20160010030'),(40,'M_2016','Skills_1','20160010030'),(41,'M_2016','M1','20160010041'),(42,'M_2016','DLD','20160010041'),(43,'M_2016','ITWS1','20160010041'),(44,'M_2016','CP','20160010041'),(45,'M_2016','Skills_1','20160010041'),(46,'M_2016','M1','20160020111'),(47,'M_2016','DLD','20160020111'),(48,'M_2016','ITWS1','20160020111'),(49,'M_2016','CP','20160020111'),(50,'M_2016','Skills_1','20160020111'),(51,'M_2016','M1','20160020114'),(52,'M_2016','DLD','20160020114'),(53,'M_2016','ITWS1','20160020114'),(54,'M_2016','CP','20160020114'),(55,'M_2016','Skills_1','20160020114'),(56,'M_2016','M1','20160020147'),(57,'M_2016','DLD','20160020147'),(58,'M_2016','ITWS1','20160020147'),(59,'M_2016','CP','20160020147'),(60,'M_2016','Skills_1','20160020147'),(61,'S_2016','DS','20160010001'),(62,'S_2016','ITWS2','20160010001'),(63,'S_2016','CO','20160010001'),(64,'S_2016','M2','20160010001'),(65,'S_2016','BEC','20160010001'),(66,'S_2016','Skills_2','20160010001'),(67,'S_2016','DS','20160010002'),(68,'S_2016','ITWS2','20160010002'),(69,'S_2016','CO','20160010002'),(70,'S_2016','M2','20160010002'),(71,'S_2016','BEC','20160010002'),(72,'S_2016','Skills_2','20160010002'),(73,'S_2016','DS','20160010003'),(74,'S_2016','ITWS2','20160010003'),(75,'S_2016','CO','20160010003'),(76,'S_2016','M2','20160010003'),(77,'S_2016','BEC','20160010003'),(78,'S_2016','Skills_2','20160010003'),(79,'S_2016','DS','20160010005'),(80,'S_2016','ITWS2','20160010005'),(81,'S_2016','CO','20160010005'),(82,'S_2016','M2','20160010005'),(83,'S_2016','BEC','20160010005'),(84,'S_2016','Skills_2','20160010005'),(85,'S_2016','DS','20160010006'),(86,'S_2016','ITWS2','20160010006'),(87,'S_2016','CO','20160010006'),(88,'S_2016','M2','20160010006'),(89,'S_2016','BEC','20160010006'),(90,'S_2016','Skills_2','20160010006'),(91,'S_2016','DS','20160010016'),(92,'S_2016','ITWS2','20160010016'),(93,'S_2016','CO','20160010016'),(94,'S_2016','M2','20160010016'),(95,'S_2016','BEC','20160010016'),(96,'S_2016','Skills_2','20160010016'),(97,'S_2016','DS','20160010023'),(98,'S_2016','ITWS2','20160010023'),(99,'S_2016','CO','20160010023'),(100,'S_2016','M2','20160010023'),(101,'S_2016','BEC','20160010023'),(102,'S_2016','Skills_2','20160010023'),(103,'S_2016','DS','20160010030'),(104,'S_2016','ITWS2','20160010030'),(105,'S_2016','CO','20160010030'),(106,'S_2016','M2','20160010030'),(107,'S_2016','BEC','20160010030'),(108,'S_2016','Skills_2','20160010030'),(109,'S_2016','DS','20160010041'),(110,'S_2016','ITWS2','20160010041'),(111,'S_2016','CO','20160010041'),(112,'S_2016','M2','20160010041'),(113,'S_2016','BEC','20160010041'),(114,'S_2016','Skills_2','20160010041'),(115,'S_2016','DS','20160020111'),(116,'S_2016','ITWS2','20160020111'),(117,'S_2016','CO','20160020111'),(118,'S_2016','M2','20160020111'),(119,'S_2016','BEC','20160020111'),(120,'S_2016','Skills_2','20160020111'),(121,'S_2016','DS','20160020114'),(122,'S_2016','ITWS2','20160020114'),(123,'S_2016','CO','20160020114'),(124,'S_2016','M2','20160020114'),(125,'S_2016','BEC','20160020114'),(126,'S_2016','Skills_2','20160020114'),(127,'S_2016','DS','20160020147'),(128,'S_2016','ITWS2','20160020147'),(129,'S_2016','CO','20160020147'),(130,'S_2016','M2','20160020147'),(131,'S_2016','BEC','20160020147'),(132,'S_2016','Skills_2','20160020147'),(133,'M_2017','OS','20160010001'),(134,'M_2017','ALGO','20160010001'),(135,'M_2017','DSAA','20160010001'),(136,'M_2017','ITWS3','20160010001'),(137,'M_2017','M3','20160010001'),(138,'M_2017','Skills_3','20160010001'),(139,'M_2017','OS','20160010002'),(140,'M_2017','ALGO','20160010002'),(141,'M_2017','DSAA','20160010002'),(142,'M_2017','ITWS3','20160010002'),(143,'M_2017','M3','20160010002'),(144,'M_2017','Skills_3','20160010002'),(145,'M_2017','OS','20160010003'),(146,'M_2017','ALGO','20160010003'),(147,'M_2017','DSAA','20160010003'),(148,'M_2017','ITWS3','20160010003'),(149,'M_2017','M3','20160010003'),(150,'M_2017','Skills_3','20160010003'),(151,'M_2017','OS','20160010005'),(152,'M_2017','ALGO','20160010005'),(153,'M_2017','DSAA','20160010005'),(154,'M_2017','ITWS3','20160010005'),(155,'M_2017','M3','20160010005'),(156,'M_2017','Skills_3','20160010005'),(157,'M_2017','OS','20160010006'),(158,'M_2017','ALGO','20160010006'),(159,'M_2017','DSAA','20160010006'),(160,'M_2017','ITWS3','20160010006'),(161,'M_2017','M3','20160010006'),(162,'M_2017','Skills_3','20160010006'),(163,'M_2017','OS','20160010016'),(164,'M_2017','ALGO','20160010016'),(165,'M_2017','DSAA','20160010016'),(166,'M_2017','ITWS3','20160010016'),(167,'M_2017','M3','20160010016'),(168,'M_2017','Skills_3','20160010016'),(169,'M_2017','OS','20160010023'),(170,'M_2017','ALGO','20160010023'),(171,'M_2017','DSAA','20160010023'),(172,'M_2017','ITWS3','20160010023'),(173,'M_2017','M3','20160010023'),(174,'M_2017','Skills_3','20160010023'),(175,'M_2017','OS','20160010030'),(176,'M_2017','ALGO','20160010030'),(177,'M_2017','DSAA','20160010030'),(178,'M_2017','ITWS3','20160010030'),(179,'M_2017','M3','20160010030'),(180,'M_2017','Skills_3','20160010030'),(181,'M_2017','OS','20160010041'),(182,'M_2017','ALGO','20160010041'),(183,'M_2017','DSAA','20160010041'),(184,'M_2017','ITWS3','20160010041'),(185,'M_2017','M3','20160010041'),(186,'M_2017','Skills_3','20160010041'),(187,'M_2017','OS','20160020111'),(188,'M_2017','ALGO','20160020111'),(189,'M_2017','DSAA','20160020111'),(190,'M_2017','ITWS3','20160020111'),(191,'M_2017','M3','20160020111'),(192,'M_2017','Skills_3','20160020111'),(193,'M_2017','OS','20160020114'),(194,'M_2017','ALGO','20160020114'),(195,'M_2017','DSAA','20160020114'),(196,'M_2017','ITWS3','20160020114'),(197,'M_2017','M3','20160020114'),(198,'M_2017','Skills_3','20160020114'),(199,'M_2017','OS','20160020147'),(200,'M_2017','ALGO','20160020147'),(201,'M_2017','DSAA','20160020147'),(202,'M_2017','ITWS3','20160020147'),(203,'M_2017','M3','20160020147'),(204,'M_2017','Skills_3','20160020147'),(205,'S_2017','EIS','20160010001'),(206,'S_2017','FCOMM','20160010001'),(207,'S_2017','AI','20160010001'),(208,'S_2017','DBMS','20160010001'),(209,'S_2017','CCN','20160010001'),(210,'S_2017','Skills_4','20160010001'),(211,'S_2017','EIS','20160010002'),(212,'S_2017','FCOMM','20160010002'),(213,'S_2017','AI','20160010002'),(214,'S_2017','DBMS','20160010002'),(215,'S_2017','CCN','20160010002'),(216,'S_2017','Skills_4','20160010002'),(217,'S_2017','EIS','20160010003'),(218,'S_2017','FCOMM','20160010003'),(219,'S_2017','AI','20160010003'),(220,'S_2017','DBMS','20160010003'),(221,'S_2017','CCN','20160010003'),(222,'S_2017','Skills_4','20160010003'),(223,'S_2017','EIS','20160010005'),(224,'S_2017','FCOMM','20160010005'),(225,'S_2017','AI','20160010005'),(226,'S_2017','DBMS','20160010005'),(227,'S_2017','CCN','20160010005'),(228,'S_2017','Skills_4','20160010005'),(229,'S_2017','EIS','20160010006'),(230,'S_2017','FCOMM','20160010006'),(231,'S_2017','AI','20160010006'),(232,'S_2017','DBMS','20160010006'),(233,'S_2017','CCN','20160010006'),(234,'S_2017','Skills_4','20160010006'),(235,'S_2017','EIS','20160010016'),(236,'S_2017','FCOMM','20160010016'),(237,'S_2017','AI','20160010016'),(238,'S_2017','DBMS','20160010016'),(239,'S_2017','CCN','20160010016'),(240,'S_2017','Skills_4','20160010016'),(241,'S_2017','EIS','20160010023'),(242,'S_2017','FCOMM','20160010023'),(243,'S_2017','AI','20160010023'),(244,'S_2017','DBMS','20160010023'),(245,'S_2017','CCN','20160010023'),(246,'S_2017','Skills_4','20160010023'),(247,'S_2017','EIS','20160010030'),(248,'S_2017','FCOMM','20160010030'),(249,'S_2017','AI','20160010030'),(250,'S_2017','DBMS','20160010030'),(251,'S_2017','CCN','20160010030'),(252,'S_2017','Skills_4','20160010030'),(253,'S_2017','EIS','20160010041'),(254,'S_2017','FCOMM','20160010041'),(255,'S_2017','AI','20160010041'),(256,'S_2017','DBMS','20160010041'),(257,'S_2017','CCN','20160010041'),(258,'S_2017','Skills_4','20160010041'),(259,'S_2017','EIS','20160020111'),(260,'S_2017','FCOMM','20160020111'),(261,'S_2017','DSP','20160020111'),(262,'S_2017','LEC','20160020111'),(263,'S_2017','CCN','20160020111'),(264,'S_2017','Skills_4','20160020111'),(265,'S_2017','EIS','20160020114'),(266,'S_2017','FCOMM','20160020114'),(267,'S_2017','DSP','20160020114'),(268,'S_2017','LEC','20160020114'),(269,'S_2017','CCN','20160020114'),(270,'S_2017','Skills_4','20160020114'),(271,'S_2017','EIS','20160020147'),(272,'S_2017','FCOMM','20160020147'),(273,'S_2017','DSP','20160020147'),(274,'S_2017','LEC','20160020147'),(275,'S_2017','CCN','20160020147'),(276,'S_2017','Skills_4','20160020147'),(277,'M_2018','ASE2','20160010001'),(278,'M_2018','TOC','20160010001'),(279,'M_2018','IR','20160010001'),(280,'M_2018','DIP','20160010001'),(281,'M_2018','SDS','20160010001'),(282,'M_2018','DE','20160010001'),(283,'M_2018','ASE2','20160010002'),(284,'M_2018','TOC','20160010002'),(285,'M_2018','IR','20160010002'),(286,'M_2018','DIP','20160010002'),(287,'M_2018','DE','20160010002'),(288,'M_2018','ASE2','20160010003'),(289,'M_2018','TOC','20160010003'),(290,'M_2018','IR','20160010003'),(291,'M_2018','DIP','20160010003'),(292,'M_2018','DM','20160010003'),(293,'M_2018','SDS','20160010003'),(294,'M_2018','ASE2','20160010005'),(295,'M_2018','TOC','20160010005'),(296,'M_2018','IR','20160010005'),(297,'M_2018','DIP','20160010005'),(298,'M_2018','DM','20160010005'),(299,'M_2018','DE','20160010005'),(300,'M_2018','ASE2','20160010006'),(301,'M_2018','TOC','20160010006'),(302,'M_2018','IR','20160010006'),(303,'M_2018','IoT','20160010006'),(304,'M_2018','DIP','20160010006'),(305,'M_2018','DE','20160010006'),(306,'M_2018','ASE2','20160010016'),(307,'M_2018','TOC','20160010016'),(308,'M_2018','CSD','20160010016'),(309,'M_2018','IR','20160010016'),(310,'M_2018','SDS','20160010016'),(311,'M_2018','LS','20160010016'),(312,'M_2018','ASE2','20160010023'),(313,'M_2018','TOC','20160010023'),(314,'M_2018','IR','20160010023'),(315,'M_2018','LS','20160010023'),(316,'M_2018','YW','20160010023'),(317,'M_2018','ASE2','20160010030'),(318,'M_2018','TOC','20160010030'),(319,'M_2018','IR','20160010030'),(320,'M_2018','DIP','20160010030'),(321,'M_2018','SDS','20160010030'),(322,'M_2018','LS','20160010030'),(323,'M_2018','ASE2','20160010041'),(324,'M_2018','TOC','20160010041'),(325,'M_2018','IR','20160010041'),(326,'M_2018','DIP','20160010041'),(327,'M_2018','SDS','20160010041'),(328,'M_2018','GE','20160010041'),(329,'M_2018','ASE2','20160020111'),(330,'M_2018','DIGICOMM','20160020111'),(331,'M_2018','EMT','20160020111'),(332,'M_2018','VLSI','20160020111'),(333,'M_2018','DIP','20160020111'),(334,'M_2018','GE','20160020111'),(335,'M_2018','ASE2','20160020114'),(336,'M_2018','DIGICOMM','20160020114'),(337,'M_2018','EMT','20160020114'),(338,'M_2018','IoT','20160020114'),(339,'M_2018','DE','20160020114'),(340,'M_2018','LS','20160020114'),(341,'M_2018','ASE2','20160020147'),(342,'M_2018','DIGICOMM','20160020147'),(343,'M_2018','EMT','20160020147'),(344,'M_2018','DE','20160020147'),(345,'M_2018','DIP','20160020147'),(346,'M_2018','GE','20160020147');
/*!40000 ALTER TABLE `student_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_student`
--

DROP TABLE IF EXISTS `student_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_student` (
  `Student_Id` varchar(20) NOT NULL,
  `Student_First_Name` varchar(45) NOT NULL,
  `Student_Middle_Name` varchar(45) NOT NULL,
  `Student_Last_Name` varchar(45) NOT NULL,
  `Student_DOB` varchar(45) NOT NULL,
  `Student_Gender` varchar(10) NOT NULL,
  `Student_Email` varchar(100) NOT NULL,
  `Student_Registered_Year` int(11) NOT NULL,
  `Club_President` varchar(20) DEFAULT NULL,
  `Club_Vicepresident` varchar(20) DEFAULT NULL,
  `student_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_student`
--

LOCK TABLES `student_student` WRITE;
/*!40000 ALTER TABLE `student_student` DISABLE KEYS */;
INSERT INTO `student_student` VALUES ('20160010001','Aakash','','Shukla','1999/01/12','M','aakash.s16@iiits.in',2016,'','','media/SPS/S20160010001.jpg'),('20160010002','Aditya','Haridas','Menon','1998/07/04','M','adityaharidas.m16@iiits.in',2016,'','','media/SPS/x.jpg'),('20160010003','Dharani','Devi','Akurathi','1998/10/27','F','dharanidevi.a16@iiits.in',2016,'','','media/SPS/S20160010003.jpg'),('20160010005','Anubhav','','Ujjawal','1998/01/16','M','anubhav.u16@iiits.in',2016,'','','media/SPS/x.jpg'),('20160010006','Anurag','','Gupta','1998/11/17','M','anurag.g16@iiits.in',2016,'Programming','','media/SPS/S20160010006.jpg'),('20160010016','Niharika','','Chalapaka','1998/12/17','F','media/SPS/S20160010016.jpg',2016,NULL,NULL,'media/SPS/x.jpg'),('20160010023','Dhruv','','Meshram','1998/06/20','M','dhruv.m16@iiits.in',2016,'','','media/SPS/x.jpg'),('20160010030','Jahnavi','','Gujjula','1998/09/15','F','jahnavi.g16@iiits.in',2016,'','','media/SPS/S20160010030.jpg'),('20160010041','Kaustubh','','Pandey','1999/02/29','M','kastubh.p16@iiits.in',2016,'','','media/SPS/S20160010041.jpg'),('20160010059','Manogna','','Pagadala','1999/03/06','F','manogna.p16@iiits.in',2016,'','','\r'),('20160010067','Muni Nihitha','','Pulivarthi','1999/05/30','F','muninihithachowdary.p16@iiits.in',2016,NULL,NULL,'media/SPS/x.jpg'),('20160010162','Mahathi','','Duvvuru','1999/02/05','F','mahathi.d16@iiits.in',2016,'','','\r'),('20160020111','Ashish','Kumar','Patel','1998/12/21','M','ashishkumar.p16@iiits.in',2016,'','','media/SPS/x.jpg'),('20160020114','Lavanya','','Banoth','1998/08/02','F','lavanya.b16@iiits.in,2016',2016,NULL,NULL,'media/SPS/S20160020114.jpg'),('20160020147','Mrudula','Shastri','Pullela','1999/05/18','F','mrudulashastri.p16@iiits.in',2016,NULL,NULL,'media/SPS/x.jpg');
/*!40000 ALTER TABLE `student_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 23:34:15
