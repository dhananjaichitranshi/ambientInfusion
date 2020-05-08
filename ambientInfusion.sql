-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: ambientInfusion
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Product Information',7,'add_product'),(20,'Can change Product Information',7,'change_product'),(21,'Can delete Product Information',7,'delete_product'),(22,'Can add Category Information',8,'add_category'),(23,'Can change Category Information',8,'change_category'),(24,'Can delete Category Information',8,'delete_category');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$6AQxvB0LkzWu$F0uyGdgi/W4UCPLUA2v50MCqX+vBPh8AukC5ROohw1o=','2020-04-29 06:17:08.339563',1,'chitranshdhananjai1995@gmail.com','','','chitranshdhananjai1995@gmail.com',1,1,'2020-04-27 13:40:00.924682');
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
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-27 13:41:24.585644','1','Security',1,'[{\"added\": {}}]',8,1),(2,'2020-04-27 13:41:58.733819','2','Luxury',1,'[{\"added\": {}}]',8,1),(3,'2020-04-27 13:42:26.807374','3','Convince',1,'[{\"added\": {}}]',8,1),(4,'2020-04-27 13:42:45.550119','4','Water Controller',1,'[{\"added\": {}}]',8,1),(5,'2020-04-27 13:43:02.551385','5','Upcoming',1,'[{\"added\": {}}]',8,1),(6,'2020-04-27 14:22:53.837019','1','Product 1',1,'[{\"added\": {}}]',7,1),(7,'2020-04-28 12:06:46.189658','2','8 Node',1,'[{\"added\": {}}]',7,1),(8,'2020-04-28 12:07:23.185699','2','8 Node',2,'[]',7,1),(9,'2020-04-28 12:08:13.148372','3','8 Node',1,'[{\"added\": {}}]',7,1),(10,'2020-04-28 12:09:01.382568','2','8 Node',3,'',7,1),(11,'2020-04-28 12:10:40.936584','4','2 Node',1,'[{\"added\": {}}]',7,1),(12,'2020-04-28 12:12:51.414393','5','4 Node',1,'[{\"added\": {}}]',7,1),(13,'2020-04-28 12:14:51.086098','6','8 Node',1,'[{\"added\": {}}]',7,1),(14,'2020-04-28 12:16:34.249403','7','2 Node',1,'[{\"added\": {}}]',7,1),(15,'2020-04-28 12:45:38.328101','7','2 Node',3,'',7,1),(16,'2020-04-28 12:45:38.330727','6','8 Node',3,'',7,1),(17,'2020-04-28 12:45:38.340338','5','4 Node',3,'',7,1),(18,'2020-04-28 12:45:38.359533','4','2 Node',3,'',7,1),(19,'2020-04-28 12:45:38.369132','3','8 Node',3,'',7,1),(20,'2020-04-28 12:49:26.358950','6','convenience',1,'[{\"added\": {}}]',8,1),(21,'2020-04-28 12:49:46.074868','8','8 Node',1,'[{\"added\": {}}]',7,1),(22,'2020-04-28 12:51:39.832102','9','4 Node',1,'[{\"added\": {}}]',7,1),(23,'2020-04-28 12:53:14.589112','10','2 Node',1,'[{\"added\": {}}]',7,1),(24,'2020-04-28 12:55:09.783675','11','Smart plug',1,'[{\"added\": {}}]',7,1),(25,'2020-04-28 12:59:03.481718','12','Multi Sensor',1,'[{\"added\": {}}]',7,1),(26,'2020-04-28 13:32:20.474819','13','Hogar Insert module',1,'[{\"added\": {}}]',7,1),(27,'2020-04-28 13:37:14.061048','13','Hogar Insert module',2,'[]',7,1),(28,'2020-04-28 13:38:00.736201','13','Hogar Insert module',2,'[]',7,1),(29,'2020-04-28 13:38:48.415174','13','Hogar Insert module',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',7,1),(30,'2020-04-28 13:39:06.587008','13','Hogar Insert module',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',7,1),(31,'2020-04-29 06:24:24.517930','14','Hogar Fan Dimmer',1,'[{\"added\": {}}]',7,1),(32,'2020-04-29 06:26:27.325602','15','Hogar IR Controller',1,'[{\"added\": {}}]',7,1),(33,'2020-04-29 06:27:54.832146','16','Hogar Smart Home HUB',1,'[{\"added\": {}}]',7,1),(34,'2020-04-29 06:29:06.088742','17','Hogar Mini HUB',1,'[{\"added\": {}}]',7,1),(35,'2020-04-29 06:30:31.112510','18','Hogar Video Bell',1,'[{\"added\": {}}]',7,1),(36,'2020-04-29 06:33:23.775446','19','Hogar Smart Door Lock',1,'[{\"added\": {}}]',7,1),(37,'2020-04-29 06:34:44.193353','20','Hogar Sensor Camera',1,'[{\"added\": {}}]',7,1),(38,'2020-04-29 06:36:25.905936','21','Smart Door lock',1,'[{\"added\": {}}]',7,1),(39,'2020-04-29 06:37:39.625626','22','Door Sensor',1,'[{\"added\": {}}]',7,1),(40,'2020-04-29 06:38:24.216042','23','Motion Sensor',1,'[{\"added\": {}}]',7,1),(41,'2020-04-29 06:40:29.113860','24','Hogar Pebble',1,'[{\"added\": {}}]',7,1),(42,'2020-04-29 06:42:40.211517','25','Hogar RBG',1,'[{\"added\": {}}]',7,1),(43,'2020-04-29 06:44:19.195517','26','RBG Light',1,'[{\"added\": {}}]',7,1),(44,'2020-04-29 06:45:31.859010','27','Curtain Controller',1,'[{\"added\": {}}]',7,1),(45,'2020-04-29 06:46:35.758701','28','Remote',1,'[{\"added\": {}}]',7,1),(46,'2020-04-29 06:47:39.958547','7','Smart Touch Panel',1,'[{\"added\": {}}]',8,1),(47,'2020-04-29 06:50:54.290520','29','One Touch Switch',1,'[{\"added\": {}}]',7,1),(48,'2020-04-29 06:52:26.944759','30','Two Touch Switch',1,'[{\"added\": {}}]',7,1),(49,'2020-04-29 06:53:59.627566','31','Three Touch Switch',1,'[{\"added\": {}}]',7,1),(50,'2020-04-29 06:55:00.246432','32','Four Touch Switch & Socket',1,'[{\"added\": {}}]',7,1),(51,'2020-04-29 06:55:52.469095','33','Eight Touch Switch',1,'[{\"added\": {}}]',7,1),(52,'2020-04-29 06:56:52.201395','34','Ten Touch Switch & Socket',1,'[{\"added\": {}}]',7,1),(53,'2020-04-29 07:00:02.927127','1','Product 1',3,'',7,1),(54,'2020-04-29 07:00:35.557426','3','Convince',3,'',8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'website','category'),(7,'website','product');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-27 13:32:37.174931'),(2,'auth','0001_initial','2020-04-27 13:32:39.400351'),(3,'admin','0001_initial','2020-04-27 13:32:39.855411'),(4,'admin','0002_logentry_remove_auto_add','2020-04-27 13:32:39.873033'),(5,'contenttypes','0002_remove_content_type_name','2020-04-27 13:32:40.144282'),(6,'auth','0002_alter_permission_name_max_length','2020-04-27 13:32:40.174386'),(7,'auth','0003_alter_user_email_max_length','2020-04-27 13:32:40.204084'),(8,'auth','0004_alter_user_username_opts','2020-04-27 13:32:40.221055'),(9,'auth','0005_alter_user_last_login_null','2020-04-27 13:32:40.352338'),(10,'auth','0006_require_contenttypes_0002','2020-04-27 13:32:40.361958'),(11,'auth','0007_alter_validators_add_error_messages','2020-04-27 13:32:40.383055'),(12,'auth','0008_alter_user_username_max_length','2020-04-27 13:32:40.615355'),(13,'auth','0009_alter_user_last_name_max_length','2020-04-27 13:32:40.644760'),(14,'sessions','0001_initial','2020-04-27 13:32:40.785088'),(15,'website','0001_initial','2020-04-27 13:32:40.868145'),(16,'website','0002_auto_20200427_1209','2020-04-27 13:32:41.500152');
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
INSERT INTO `django_session` VALUES ('m7csaxcy1ikre5qk62o0f9k35rhplva6','YzYyMzJkY2NkYjVjZDhhNWZlMWQ3NzQ4OWY2NGU0ZWQ4MjY3YmYwYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjJkMTcwZGI1MTk1N2VhZTk0NTE2OGEwZjFiZGI0MjViZDU4MGQ1In0=','2020-05-13 06:17:08.343587'),('zisgll7pdrt4vxcl472oqai8iaveexzq','YzYyMzJkY2NkYjVjZDhhNWZlMWQ3NzQ4OWY2NGU0ZWQ4MjY3YmYwYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjJkMTcwZGI1MTk1N2VhZTk0NTE2OGEwZjFiZGI0MjViZDU4MGQ1In0=','2020-05-11 14:21:22.243128');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_category`
--

DROP TABLE IF EXISTS `website_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `label_name` varchar(254) DEFAULT NULL,
  `description` longtext,
  `specialites` varchar(254) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_category`
--

LOCK TABLES `website_category` WRITE;
/*!40000 ALTER TABLE `website_category` DISABLE KEYS */;
INSERT INTO `website_category` VALUES (1,'Security','Security','Security','Security','2020-04-27 13:41:24.585166','2020-04-27 13:41:24.585199'),(2,'Luxury','Luxury','Luxury','Luxury','2020-04-27 13:41:58.730874','2020-04-27 13:41:58.730902'),(4,'Water Controller','Water Controller','Water Controller','Water Controller','2020-04-27 13:42:45.547130','2020-04-27 13:42:45.547161'),(5,'Upcoming','Upcoming','Upcoming','Upcoming','2020-04-27 13:43:02.550935','2020-04-27 13:43:02.550964'),(6,'convenience','convenience','',NULL,'2020-04-28 12:49:26.356534','2020-04-28 12:49:26.356563'),(7,'Smart Touch Panel','Smart Touch Panel','',NULL,'2020-04-29 06:47:39.958114','2020-04-29 06:47:39.958149');
/*!40000 ALTER TABLE `website_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_product`
--

DROP TABLE IF EXISTS `website_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `label_name` varchar(254) DEFAULT NULL,
  `description` longtext,
  `specialites` varchar(254) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image_small` varchar(100),
  `image_two` varchar(100),
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `website_product_category_id_62edcbd0_fk_website_category_id` (`category_id`),
  CONSTRAINT `website_product_category_id_62edcbd0_fk_website_category_id` FOREIGN KEY (`category_id`) REFERENCES `website_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_product`
--

LOCK TABLES `website_product` WRITE;
/*!40000 ALTER TABLE `website_product` DISABLE KEYS */;
INSERT INTO `website_product` VALUES (8,'8 Node','8 Node','Turn appliances and electronics on/off, and schedule the same from anywhere across the house, or from any part of the world, from the Pert app.\r\n\r\nThe Pert smart switch can measure the energy consumption of the respective switchboard, allowing you to control its usage and identify if it is inefficient.\r\n\r\nEach Switch can also be configured to be used as a dimmer, so you can set up the perfect ambiance in your home and save energy at the same time.\r\n\r\nPert devices are easy to remove as they are to install. The Pert 8-Node can be taken out and reinstalled in any switchboard in your house.\r\nIntegrates with IFTTT.','The Pert 8-Node smart switch is a Wi-Fi enabled smart device, which can easily be installed into your existing 6-8 module switchboard.','dynamicImg/project/8node-1-800x600_mP6O18P.jpg',1,'2020-04-28 12:49:46.074370','2020-04-28 12:49:46.074403','dynamicImg/project/8node-1-800x600_X8CvAGp.jpg','dynamicImg/project/8node-1-800x600_tysvmll.jpg',6),(9,'4 Node','4 Node','Turn appliances and electronics on/off, and schedule the same from anywhere across the house, or from any part of the world, from the Pert app.\r\nThe Pert smart switch can measure the energy consumption of the respective switchboard, allowing you to control its usage and identify if it is inefficient.\r\nEach switch can also be configured to be used as a dimmer, so you can set up the perfect ambiance in your home and save energy at the same time.\r\nPert devices are easy to remove as they are to install. The Pert 4-Node can be taken out and reinstalled in any switchboard in your house.\r\nIntegrates with IFTTT.','The Pert 4-Node smart switch is a Wi-Fi enabled smart device, which can easily be installed into your existing 4 module switchboard.','dynamicImg/project/4node-1-800x600_MP8VoQ5.jpg',1,'2020-04-28 12:51:39.829432','2020-04-28 12:51:39.829461','dynamicImg/project/4node-1-800x600_eBLmqZJ.jpg','dynamicImg/project/4node-1-800x600_5aP7Gn1.jpg',6),(10,'2 Node','2 Node','Turn appliances and electronics on/off, and schedule the same from anywhere across the house, or from any part of the world, from the Pert app.\r\nEach switch can also be configured to be used as a dimmer, so you can set up the perfect ambiance in your home and save energy at the same time.\r\nPert devices are easy to remove as they are to install. The Pert 2-Node can be taken out and reinstalled in any switchboard in your house.\r\nIntegrates with IFTTT.','The Pert 2-Node smart switch is a Wi-Fi enabled smart device, which can easily be installed into your existing 2 module switchboard.','dynamicImg/project/2-Node-Edit-1-1-600x600_8WFmHY1.png',1,'2020-04-28 12:53:14.588612','2020-04-28 12:53:14.588645','dynamicImg/project/2-Node-Edit-1-1-600x600_Z35suvi.png','dynamicImg/project/2-Node-Edit-1-1-600x600_KdimIkF.png',6),(11,'Smart plug','Smart Plug','Control your appliances like air-conditioner / geyser from your smartphone.\r\nEasy to set up and easy to use.\r\nAutomate and schedule appliances that are connected to the Pert plug from your smartphone.\r\nThe plug analyzes energy usage and notifies you if an appliance malfunctions or is not performing normally.\r\nThe Pert plug requires no monthly charges to function regularly in your smart home.\r\nIntegrates with IFTTT.','Wi-fi enabled smart plug. The Pert plug directly connects with your smart phone, eliminating the need of a controller or hub.','dynamicImg/project/pert_plug_2-800x600_ikizkKs.png',1,'2020-04-28 12:55:09.780959','2020-04-28 12:55:09.780990','dynamicImg/project/pert_plug_2-800x600.png','dynamicImg/project/pert_plug_2-800x600_YpEPOuX.png',6),(12,'Multi Sensor','Multi Sensor','Control all your IR Appliances Like Television, Set top Box, Air-conditioner, Music System, DVD players,etc.\r\nThe Multi Sensor allows you to dynamically control all your appliances with the pert app via setting customised rules.\r\nFully custom built using high grade military infrared material.','The Pert Multi Sensor is a Wi-Fi enabled smart Sensor, which has IR Transmitter, IR Receiver, Temperature, Luminosity & Gas Sensor.','dynamicImg/project/1-1-800x600_K0Bm0on.png',1,'2020-04-28 12:59:03.481211','2020-04-28 12:59:03.481244','dynamicImg/project/1-1-800x600.png','dynamicImg/project/1-1-800x600_bqe98eC.png',6),(13,'Hogar Insert module','Hogar Insert module','2-IN-1 Module Features\r\nConnects with any standard switch to make it a smart switch.\r\nCompact Design that fits easily inside any standard electrical switchboard.\r\nTurn lights and electrical appliances on/off, control power outlets, blinds, and shades.\r\nRetrofit and can be installed in a few minutes.\r\nSwitches easily between modes and control devices.\r\nCan be integrated easily with Smart hubs and Voice Assistants like Google Assistant & Amazon Alexa.\r\ncurtain controller\r\n\r\n3-IN-1 Module Features\r\nConnects with any normal switch to make it a smart switch.\r\nCompact design to fit inside any electrical switch board.\r\nTurn lights and electrical appliances on/off, control power outlets, blinds and shades.\r\nChoose between the functions of the module with a simple programmable button.\r\nRetrofit design, installation takes just a few minutes.\r\n\r\nshades controlShades\r\nblinds controlBlinds\r\ncurtain controlCurtains\r\ngarage controlGarage gates\r\nWatch Installation Video\r\ncurtain module uses\r\n\r\n3-IN-1 Module Uses\r\nshades controlShades\r\nblinds controlBlinds\r\ncurtain controlCurtains\r\nhome windows controlWindows\r\ngarage controlGarage gates\r\nlight dimmingLight Dimming\r\nWatch Installation Video\r\ncurtain module uses','3-IN-1 INSERT MODULE The 3-in-1 insert module is an electrically operated switch that connects with any normal switch to make it a smart switch. Its main use is to control circuits by a low-power signal or when several circuits must be controlled by one','dynamicImg/project/designed-perform_Ed8tFeR.png',1,'2020-04-28 13:32:20.472163','2020-04-28 13:39:06.586011','dynamicImg/project/threeinone-insert_AQQhiVU.png','dynamicImg/project/2019-10-31-2_hiE5nkA.png',6),(14,'Hogar Fan Dimmer','Hogar Fan Dimmer','SMART CEILING FAN SPEED CONTROL\r\nHogar Fan Dimming Module can be used to control the speed of a fan using the Hogar App.\r\nThis module is designed to be installed in a standard wall switch box\r\nor anywhere else where there is a necessity to either decrease\r\nor increase the speed of a fan.\r\n\r\nFan Dimmer\r\nFeatures\r\nCan be used with Momentary/Push Bell/Touch Switches\r\nRemote Access\r\nPrecise 4 step speed control, OFF-LOW-MED-HIGH\r\nMulti-device Connectivity\r\nMinimal wiring and simple installation\r\nZero humming noise','Fan dimmer Insert Module is intended for controlling the speed of ceiling mounted, wall mounted or tower fans with typical wattage between 60-140W. It uses a specialized circuit design to give the best speed control.','dynamicImg/project/fan-dimmer-banner.png',1,'2020-04-29 06:24:24.517410','2020-04-29 06:24:24.517440','dynamicImg/project/fan-dimmer.png','dynamicImg/project/fan-dimmer_ugm5AM1.png',6),(15,'Hogar IR Controller','Hogar IR Controller','One device can control multiple devices in a room or at the office. Beautiful and unique design blends with home and office interiors.\r\n\r\n\r\n\r\nPowerful 360°\r\nIR signal\r\nAllows seamless connectivity with devices all around the room.\r\n\r\nCompatible with all IR devices\r\nSo powerful that it can control any appliances that uses an IR remote.\r\n\r\nOne app for all devices\r\nOnce configured, all the devices can be controlled with the Hogar app.\r\n\r\nPlug and play\r\ndevice\r\nUse it on the desk, under a cabinet or with a ceiling mount without any networking cable.\r\n\r\nEasy to setup\r\nEasy code learning makes setting it up with the Home Controller Pro very easy.','A single device to control your TV, audio system, set top box,  air conditioner and any other device that works with an IR remote controller.  With 360 degrees of uniform and powerful IR signal,','dynamicImg/project/ir-controller.png',1,'2020-04-29 06:26:27.322903','2020-04-29 06:26:27.322935','dynamicImg/project/ir-controller-device.png','dynamicImg/project/ir-banner.png',6),(16,'Hogar Smart Home HUB','Hogar Smart Home HUB','Compact\r\nIt is so small that you can fit it into any power outlet and take control of all your smart home devices using a single controller.\r\n\r\nPlug and play\r\nWith wireless operation and easy setup, it helps you manage your smart-home with just the push of a button.\r\n\r\nFree cloud connect\r\nThe cloud connectivity feature allows you to easily and conveniently give commands to your controller using the internet from anywhere around the world.\r\n\r\nOTA updates\r\nIt supports over the air(OTA) firmware updates to seamlessly help in keeping your smart home controller up-to-date at all times.\r\n\r\n\r\n\r\nSimply Plug & Play\r\nAll App Configuration\r\nSet Scenes & Moods\r\nAccess Home Remotely\r\nAutomate Your Room OR Your Building\r\nCompatible with 200+ Smart Home Brands\r\nCompatible with Amazon Alexa & Google Assistant','The sleek and compact design of the Hogar HC Pro makes it the perfect smart home hub for a complete smart home system.','dynamicImg/project/HC_v2_Pack_ug4KyOj.png',1,'2020-04-29 06:27:54.831595','2020-04-29 06:27:54.831625','dynamicImg/project/HC_v2_Pack.png','dynamicImg/project/HC_v2_Pack_RA6N9K7.png',6),(17,'Hogar Mini HUB','Hogar Mini HUB','Scheduled ON/OFF\r\nThrough the automatic actions and scheduled rules and scenes, control the devices easily and automatically as it helps in reducing the energy wastage and save electricity bills.\r\n\r\n\r\nTailored for various automation needs\r\nMakes connected home solutions simple and sophisticated as it works in user harmony .Experience the comfort, security, and peace of mind in any type of space as commercial space, residencies and hospitals.\r\n\r\n\r\nUnified Control\r\nHC Mini is compatible with connecting up to 60 devices, to collaborate and control the entire home in one go using the exclusive Hogar Mini App.\r\n\r\n\r\nA Simplified controller that features simple programming to control the entire smart home through touch, HC Mini only supports Google Assistant and Amazon Alexa. The HC- Mini takes its cue from the feature-rich HC Pro. This smart mini hub can be integrated smoothly with a broad range of multimedia devices, smart TVs, lights and other devices. One of its kind, the HC-Mini Hub allows you to control all your smart home devices both remotely and locally.','Half of the Price and double the power The most robust yet affordable innovation which can do everything as any other hub does but with 25% of the price.','dynamicImg/project/hc-mini-portable_9xepstv.png',1,'2020-04-29 06:29:06.088170','2020-04-29 06:29:06.088201','dynamicImg/project/hc-mini-portable.png','dynamicImg/project/hc-mini-portable_vNhPMKc.png',6),(18,'Hogar Video Bell','Hogar Video Bell','VIDEO DOOR BELL\r\n It has only internal video storage and it can be accessed from anywhere.\r\n\r\nExplore more\r\n\r\nWIRELESS VIDEO DOOR BELL CAMERA\r\nnever miss a visitor\r\nThe Hogar Video Door Bell is a state-of-the-art wireless video doorbell camera that can deliver High Definition video to your smartphone. It is a 2-way communication device that helps you communicate with your guests locally or from anywhere around the world. It has both cloud and internal video storage capabilities.\r\n\r\n\r\nVideo Door Bell\r\nFeatures\r\nThe features of the compact yet powerful Hogar Video Door Bell are not limited only to alerting you about visitors at the door, but much more.\r\n\r\nwide angle camera\r\nWide angle camera\r\nlive video feature\r\nLive video with incoming audio\r\nauto video recording\r\nAuto Visitor Video Record\r\nremote door unlock\r\nRemote door unlock trigger\r\npush notifications\r\nPush notifications\r\nnight mode camera\r\nIn-built ambient sensor for low light conditions','The Hogar Video Door Bell is a state-of-the-art security device that can deliver High Definition video to your smartphone. It is a 2-way communication device that helps you communicate with your guests locally or from anywhere around the world.','dynamicImg/project/home-video-door-bell_EVluY8O.png',1,'2020-04-29 06:30:31.109818','2020-04-29 06:30:31.109850','dynamicImg/project/home-video-door-bell.png','dynamicImg/project/home-video-door-bell_gM1Ss2A.png',1),(19,'Hogar Smart Door Lock','Hogar Smart Door Lock','With the remote access, one need not make any visitor wait and worry about carrying keys around while going out or searching for them.\r\n\r\nSMART DOOR LOCK\r\nSecurity that fits around you!\r\nThe Hogar Digital Door Lock combines cutting-edge technology with practical reliability. Providing the keyless access to your door lock system, it adds simplicity and convenience to your lifestyle. These digital door locks can be paired with alarms to offer additional security from burglary, damages, and attacks. It supports and unlocking the door remotely for guests, friends, or family is now simple and hassle-free.\r\n\r\n\r\nSmart Door Lock Features\r\nThis adds a new level of security to your home and allows convenient access to the home brilliant features.\r\n\r\n Four-way access Method - Fingerprint, RF Card, Passcode, Mechanical key\r\n Automatic Unlock / Lock functions\r\n Remote access to the door\r\n Smart Touchpad with LED status icon\r\n Multi-user access','Hogar digital lock provides the keyless convenience to unlock the door. It combines theaesthetic design and brilliant functionality of accessing the front door through multiple ways - fingerprint, smart card, passcode, or through an App.','dynamicImg/project/black_door_lock_ONYNMEp.png',1,'2020-04-29 06:33:23.774785','2020-04-29 06:33:23.774815','dynamicImg/project/black_door_lock.png','dynamicImg/project/black_door_lock_H3Vjotx.png',1),(20,'Hogar Sensor Camera','Hogar Sensor Camera','SENSOR CAMERA\r\n It has a truly wireless compact design and can deliver High Definition video with event push notifications suitable for home monitoring, small business monitoring, baby or elderly care.\r\n\r\nExplore more\r\nwire-free deviceTrue Wire-Freemotion detectionMotion detectiondual powerDual power modemobile alertsMobile Alerts\r\n\r\nWIRELESS SECURITY CAMERA FOR HOME\r\nThe Hogar Sensor Camera is the perfect combination of security and portability in a compact design. With dual power input, HD video capability and a PIR motion sensor it is an all-round truly wireless security camera for home and office.','The Hogar Sensor Camera has a compact design and combines HD video and PIR motion sensor. It supports dual power input, giving the best home security anywhere.','dynamicImg/project/sensor-cam-banner.png',1,'2020-04-29 06:34:44.192581','2020-04-29 06:34:44.192613','dynamicImg/project/sensorcamera.png','dynamicImg/project/sensorcamera_L0Cr0JS.png',1),(21,'Smart Door lock','Smart Door lock','','Grants key-less access to people at your command. Never worry about keys anymore. Control and monitor your door from anywhere Fits seamlessly into your existing door. Installs in minutes on the inside of your door. Works in sync with other Pert Products','dynamicImg/project/door-lock-800x600_JzBVTn0.png',1,'2020-04-29 06:36:25.903252','2020-04-29 06:36:25.903283','dynamicImg/project/door-lock-800x600.png','dynamicImg/project/door-lock-800x600_g9ayp62.png',1),(22,'Door Sensor','Door Sensor','Receive alerts on your smartphone if your Door Sensor detects opening or closing of a door.\r\nAutomate connected devices with Pert Products and set them to turn on or off if your Door Sensor detects opening or closing of a door.\r\nRequires Pert Multi Sensor.','The Pert Door Sensor is a battery based Sensor that works on RF Technology.','dynamicImg/project/Door_Sensor_9JYExcQ.png',1,'2020-04-29 06:37:39.625116','2020-04-29 06:37:39.625147','dynamicImg/project/Door_Sensor.png','dynamicImg/project/Door_Sensor_1GV5Pc8.png',1),(23,'Motion Sensor','Motion Sensor','Receive alerts on your smartphone if your Motion Sensor detects movement.\r\nAutomate connected devices with Pert Products and set them to turn on or off if your Motion Sensor detects movement.\r\nRequires Pert Multi Sensor.','The Pert Motion Sensor is a battery based PIR Sensor that works on RF Technology.','dynamicImg/project/Door_Sensor_VwFrqtu.png',1,'2020-04-29 06:38:24.215565','2020-04-29 06:38:24.215596','dynamicImg/project/Door_Sensor_EbjTBlb.png','dynamicImg/project/Door_Sensor_jJ6Z0Uf.png',1),(24,'Hogar Pebble','Hogar Pebble','Convenient enough to attach on a glass, wooden, metal surface or table top, it can activate 9 scenes with different gestures like touch, tap and swipe.\r\n\r\nPebble is a new wireless touch button that combines elegant design and functionality into a simple, personalized device to control everything in your home. Pebble allows you to customize up to 9 actions such as smart lighting, music, shading, thermostats, and more with a single touch.\r\n\r\nExplore More\r\n\r\nAutomated Scenes\r\nEntertainment Control\r\nHome Security\r\nDigital Locks\r\n\r\nTemperature Control\r\nLighting control\r\nCurtains & Shades control \r\n\r\n\r\n\r\n\r\n\r\nPortable Smart Home Controller\r\nPEBBLE\r\nA tiny and portable wireless 3D touch button, Hogar Pebble combines elegant design and functionality into a simple, personalized device to control everything in your smart home. Convenient enough to attach on a glass, wooden, metal surface or table top, it can activate 9 scenes with different gestures like touch, tap and swipe.\r\n\r\n    \r\nPortable\r\ndevice\r\nMeasuring just 5 cm in diameter, it is an extremely compact device that you can carry around comfortably.\r\n\r\nConnectivity\r\nThe technologically advanced Hogar Pebble meets smart home automation standards as it operates on Z-Wave wireless communication protocol developed exclusively for home automation products.','A tiny and portable wireless 3D touch button, Hogar Pebble combines elegant design and functionality into a simple, personalized device to control everything in your smart home.','dynamicImg/project/pebble_front_flat.png',1,'2020-04-29 06:40:29.111442','2020-04-29 06:40:29.111476','dynamicImg/project/pebble-front-view.png','dynamicImg/project/pebble_front_flat_ycAvtOX.png',2),(25,'Hogar RBG','Hogar RBG','Experiences for buildings, art installations and events of all sizes. Apart from traditional RGB lights, it has additional white light channel, which allows for adding pastel colors to the color scheme.\r\n\r\nRGBW LED CONTROLLER\r\nHogar RGBW Insert Module allows you to create dynamic LED lighting experiences for buildings, art installations and events of all sizes. Complete your luxury home automation with versatile and energy-efficient lighting solutions and fascinate the world with modern lighting.\r\n\r\nRGBW Insert Module Features\r\nAdd ambient lighting for: instance and control with Hogar RGB module.\r\nUse our RGB module to create: colourful atmospheres. Explore new design possibilities to transform spaces with additional ambient lighting.\r\nUse our intuitive interface from your Smartphone or tablet, to choose your favourite colour for each lighting zone.','RGBW Insert Module is intended to control RGB strip lights and create dynamic LED lighting','dynamicImg/project/innovation-inspired.png',1,'2020-04-29 06:42:40.210978','2020-04-29 06:42:40.211010','dynamicImg/project/rgbw-controller.png','dynamicImg/project/rgbw-controller_GZcUxe8.png',2),(26,'RBG Light','RBG Light','Easy to mount to your walls, under your bed or cabinets and pretty much anywhere you’d like.\r\nControl your room’s ambient mood with pert app on your smart phone.\r\nThe light-strip can be integrated with Pert ecosystem & work with other devices.','16 million colors to choose from &adjustable color temperature with dimmable light.','dynamicImg/project/rgb_strip-800x600_wq1Qj7M.png',1,'2020-04-29 06:44:19.194931','2020-04-29 06:44:19.194962','dynamicImg/project/rgb_strip-800x600.png','dynamicImg/project/rgb_strip-800x600_qrcUvop.png',2),(27,'Curtain Controller','Curtain Controller','Makes your curtains smart and remotely operational with pert app & wifi from anywhere.\r\nYou can still move your curtains by hand.\r\nSaves electricity bills & helps manage temperature.\r\nWorks in sync with other Pert Products','Works on virtually all your existing horizontal curtains. Completely retrofittable. Easy installation. Imagine waking up with natural light.','dynamicImg/project/curtain-800x600_jRIkH8N.png',1,'2020-04-29 06:45:31.856250','2020-04-29 06:45:31.856281','dynamicImg/project/curtain-800x600.png','dynamicImg/project/curtain-800x600_H21TOUx.png',2),(28,'Remote','Remote','Control all your IR Appliances Like Television, Set top Box, Air-conditioner, Music System, DVD players,etc.\r\nThe Pert Remote allows you to dynamically control all your appliances with the pert app via setting customised rules.\r\nFully custom built using high grade military infrared material.','The Pert Remote is a Wi-Fi enabled  Sensor, which has IR Transmitter & IR Receiver.','dynamicImg/project/remote_pYNbaqu.png',1,'2020-04-29 06:46:35.756038','2020-04-29 06:46:35.756068','dynamicImg/project/remote.png','dynamicImg/project/remote_aU8Z6x0.png',6),(29,'One Touch Switch','One Touch Switch','Features\r\nA sleek glass panel design and an extremely smooth and precise circuit control on the wall.\r\n The best of design and functionality at your fingertips.\r\n\r\nHeat, humidity and shock-proof\r\nDesigned keeping in mind everyday usage scenarios, the Smart Wall Switch Panels are heat, humidity and shockproof for you to conveniently use.\r\n\r\ncustom fitRetrofit Design\r\nSwitching from conventional switches to smart switches is an impossible task made possible with the retrofit design of Smart Touch Panels.\r\n\r\ntouch sensorsCapacitive Touch Sensors\r\nThe Hogar Touch Panels have high-sensitivity capacitive touch sensors that provide perfect responses to all your touch commands\r\n\r\ntoggle/sceneToggle/Scene\r\nWhether switching circuits on/off or setting up scenes combining multiple commands, it is all possible with the Smart Touch Panels.\r\n\r\nProgrammable touch buttons to act as a relay or scene mode.\r\nUniform dual back light with 2-way feed back.\r\nAdvanced circuit design to control any electrical load without any hitch.\r\nA perfect match for LED loads with protective inrush current.\r\nDetachable socket slot to choose any socket type.\r\n2 minutes installation with no additional wiring.','1 Touch Switch panel, relay or scene controller with load current of Max 5 Amps, IN standard 2 module gang box-compatible.','dynamicImg/project/1touch-bblack.png',1,'2020-04-29 06:50:54.289953','2020-04-29 06:50:54.289997','dynamicImg/project/1touch-wsilver.png','dynamicImg/project/1touch-wsilver_GylBkRk.png',7),(30,'Two Touch Switch','Two Touch Switch','Features\r\nA sleek glass panel design and an extremely smooth and precise circuit control on the wall.\r\n The best of design and functionality at your fingertips.\r\n\r\nHeat, humidity and shock-proof\r\nDesigned keeping in mind everyday usage scenarios, the Smart Wall Switch Panels are heat, humidity and shockproof for you to conveniently use.\r\n\r\ncustom fitRetrofit Design\r\nSwitching from conventional switches to smart switches is an impossible task made possible with the retrofit design of Smart Touch Panels.\r\n\r\ntouch sensorsCapacitive Touch Sensors\r\nThe Hogar Touch Panels have high-sensitivity capacitive touch sensors that provide perfect responses to all your touch commands\r\n\r\ntoggle/sceneToggle/Scene\r\nWhether switching circuits on/off or setting up scenes combining multiple commands, it is all possible with the Smart Touch Panels.\r\n\r\nProgrammable touch buttons to act as a relay or scene mode.\r\nUniform dual back light with 2-way feed back.\r\nAdvanced circuit design to control any electrical load without any hitch.\r\nA perfect match for LED loads with protective inrush current.\r\nDetachable socket slot to choose any socket type.\r\n2 minutes installation with no additional wiring.','2-Touch switch, relay or scene controller with load current of max 8A each, IN standard 2 module gang box-compatible.','dynamicImg/project/2touch-panel_BrFwZWf.png',1,'2020-04-29 06:52:26.943965','2020-04-29 06:52:26.943996','dynamicImg/project/2touch-panel.png','dynamicImg/project/2touch-panel_HkwyIp5.png',7),(31,'Three Touch Switch','Three Touch Switch','Features\r\nA sleek glass panel design and an extremely smooth and precise circuit control on the wall.\r\n The best of design and functionality at your fingertips.\r\n\r\nHeat, humidity and shock-proof\r\nDesigned keeping in mind everyday usage scenarios, the Smart Wall Switch Panels are heat, humidity and shockproof for you to conveniently use.\r\n\r\ncustom fitRetrofit Design\r\nSwitching from conventional switches to smart switches is an impossible task made possible with the retrofit design of Smart Touch Panels.\r\n\r\ntouch sensorsCapacitive Touch Sensors\r\nThe Hogar Touch Panels have high-sensitivity capacitive touch sensors that provide perfect responses to all your touch commands\r\n\r\ntoggle/sceneToggle/Scene\r\nWhether switching circuits on/off or setting up scenes combining multiple commands, it is all possible with the Smart Touch Panels.\r\n\r\nProgrammable touch buttons to act as a relay or scene mode.\r\nUniform dual back light with 2-way feed back.\r\nAdvanced circuit design to control any electrical load without any hitch.\r\nA perfect match for LED loads with protective inrush current.\r\nDetachable socket slot to choose any socket type.\r\n2 minutes installation with no additional wiring.','3-Touch switch, relay or scene controller with load current of max 8A each, IN standard 2 module gang box-compatible.','dynamicImg/project/3touch-panel_C2RObD7.png',1,'2020-04-29 06:53:59.626792','2020-04-29 06:53:59.626820','dynamicImg/project/3touch-panel.png','dynamicImg/project/3touch-panel_imB4cDi.png',7),(32,'Four Touch Switch & Socket','Four Touch Switch & Socket','Features\r\nA sleek glass panel design and an extremely smooth and precise circuit control on the wall.\r\n The best of design and functionality at your fingertips.\r\n\r\nHeat, humidity and shock-proof\r\nDesigned keeping in mind everyday usage scenarios, the Smart Wall Switch Panels are heat, humidity and shockproof for you to conveniently use.\r\n\r\ncustom fitRetrofit Design\r\nSwitching from conventional switches to smart switches is an impossible task made possible with the retrofit design of Smart Touch Panels.\r\n\r\ntouch sensorsCapacitive Touch Sensors\r\nThe Hogar Touch Panels have high-sensitivity capacitive touch sensors that provide perfect responses to all your touch commands\r\n\r\ntoggle/sceneToggle/Scene\r\nWhether switching circuits on/off or setting up scenes combining multiple commands, it is all possible with the Smart Touch Panels.\r\n\r\nProgrammable touch buttons to act as a relay or scene mode.\r\nUniform dual back light with 2-way feed back.\r\nAdvanced circuit design to control any electrical load without any hitch.\r\nA perfect match for LED loads with protective inrush current.\r\nDetachable socket slot to choose any socket type.\r\n2 minutes installation with no additional wiring.','4-Touch switch with 1 socket slot, relay or scene controller with load current of max 8A each, IN standard 4 module gang box-compatible.','dynamicImg/project/4touchpanel-socket.png',1,'2020-04-29 06:55:00.243691','2020-04-29 06:55:00.243724','dynamicImg/project/4touch-panel.png','dynamicImg/project/4touch-panel_NLp8Rmw.png',7),(33,'Eight Touch Switch','Eight Touch Switch','Features\r\nA sleek glass panel design and an extremely smooth and precise circuit control on the wall.\r\n The best of design and functionality at your fingertips.\r\n\r\nHeat, humidity and shock-proof\r\nDesigned keeping in mind everyday usage scenarios, the Smart Wall Switch Panels are heat, humidity and shockproof for you to conveniently use.\r\n\r\ncustom fitRetrofit Design\r\nSwitching from conventional switches to smart switches is an impossible task made possible with the retrofit design of Smart Touch Panels.\r\n\r\ntouch sensorsCapacitive Touch Sensors\r\nThe Hogar Touch Panels have high-sensitivity capacitive touch sensors that provide perfect responses to all your touch commands\r\n\r\ntoggle/sceneToggle/Scene\r\nWhether switching circuits on/off or setting up scenes combining multiple commands, it is all possible with the Smart Touch Panels.\r\n\r\nProgrammable touch buttons to act as a relay or scene mode.\r\nUniform dual back light with 2-way feed back.\r\nAdvanced circuit design to control any electrical load without any hitch.\r\nA perfect match for LED loads with protective inrush current.\r\nDetachable socket slot to choose any socket type.\r\n2 minutes installation with no additional wiring.','8-Touch switch, relay or scene controller with load current of max 8A each, IN standard 6 module gang box-compatible.','dynamicImg/project/eight-touchpanel_4pdSExW.png',1,'2020-04-29 06:55:52.468304','2020-04-29 06:55:52.468335','dynamicImg/project/eight-touchpanel.png','dynamicImg/project/eight-touchpanel_0zcjhxq.png',7),(34,'Ten Touch Switch & Socket','Ten Touch Switch & Socket','Features\r\nA sleek glass panel design and an extremely smooth and precise circuit control on the wall.\r\n The best of design and functionality at your fingertips.\r\n\r\nHeat, humidity and shock-proof\r\nDesigned keeping in mind everyday usage scenarios, the Smart Wall Switch Panels are heat, humidity and shockproof for you to conveniently use.\r\n\r\ncustom fitRetrofit Design\r\nSwitching from conventional switches to smart switches is an impossible task made possible with the retrofit design of Smart Touch Panels.\r\n\r\ntouch sensorsCapacitive Touch Sensors\r\nThe Hogar Touch Panels have high-sensitivity capacitive touch sensors that provide perfect responses to all your touch commands\r\n\r\ntoggle/sceneToggle/Scene\r\nWhether switching circuits on/off or setting up scenes combining multiple commands, it is all possible with the Smart Touch Panels.\r\n\r\nProgrammable touch buttons to act as a relay or scene mode.\r\nUniform dual back light with 2-way feed back.\r\nAdvanced circuit design to control any electrical load without any hitch.\r\nA perfect match for LED loads with protective inrush current.\r\nDetachable socket slot to choose any socket type.\r\n2 minutes installation with no additional wiring.','10-Touch switch with 2 socket slots, relay or scene controller with load current of max 8A each, IN standard 12 module gang box-compatible.','dynamicImg/project/ten-touchpanel-socket.png',1,'2020-04-29 06:56:52.200605','2020-04-29 06:56:52.200636','dynamicImg/project/ten-touchpanel.png','dynamicImg/project/ten-touchpanel-sockets.png',7);
/*!40000 ALTER TABLE `website_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-08 14:23:19
