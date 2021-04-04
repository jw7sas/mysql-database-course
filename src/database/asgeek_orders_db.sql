CREATE DATABASE  IF NOT EXISTS `asgeek_orders` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `asgeek_orders`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: asgeek_orders
-- ------------------------------------------------------
-- Server version	8.0.21

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

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Deportes',NULL,NULL),(2,'Ropa',NULL,NULL),(3,'Oficina',NULL,NULL),(4,'Muebles',NULL,NULL),(5,'Electrodomésticos',NULL,NULL),(6,'Computadores',NULL,NULL),(7,'Entretenimiento',NULL,NULL),(8,'Hogar',NULL,NULL),(9,'Accesorios',NULL,NULL),(10,'Juguetes',NULL,NULL),(11,'Celulares',NULL,NULL),(12,'Anime',NULL,NULL),(13,'Libros',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `cellphone` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'LUIS','ALBERT','luis1_albert@gmail.com','4444100','3154569100','Carrera 100 N 1-100 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1001'),(2,'DANIEL','JOAQUIN','daniel2_joaquin@gmail.com','4444101','3154569101','Carrera 101 N 2-101 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1012'),(3,'JOSEP','CESAR','josep3_cesar@gmail.com','4444102','3154569102','Carrera 102 N 3-102 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1023'),(4,'EDUARDO','HUGO','eduardo4_hugo@gmail.com','4444103','3154569103','Carrera 103 N 4-103 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1034'),(5,'LEONEL','VALENTINA','leonel5_valentina@gmail.com','4444104','3154569104','Carrera 104 N 5-104 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1045'),(6,'JORDI','GERMAN','jordi6_german@gmail.com','4444105','3154569105','Carrera 105 N 6-105 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1056'),(7,'ESTEBAN','DAVID','esteban7_david@gmail.com','4444106','3154569106','Carrera 106 N 7-106 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1067'),(8,'JONATHAN','MIGUEL','jonathan8_miguel@gmail.com','4444107','3154569107','Carrera 107 N 8-107 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1078'),(9,'FELIPE','VICENTE','felipe9_vicente@gmail.com','4444108','3154569108','Carrera 108 N 9-108 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','1089'),(10,'JOSE','ALVARO','jose10_alvaro@gmail.com','4444109','3154569109','Carrera 109 N 10-109 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','10910'),(11,'FELIX','LUIS','felix11_luis@gmail.com','4444110','3154569110','Carrera 110 N 11-110 Este','VENEZUELA','CARACAS','CARACAS','11011'),(12,'PABLO','DANIEL','pablo12_daniel@gmail.com','4444111','3154569111','Carrera 111 N 12-111 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11112'),(13,'MANUEL','JOSEP','manuel13_josep@gmail.com','4444112','3154569112','Carrera 112 N 13-112 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11213'),(14,'LORENZO','EDUARDO','lorenzo14_eduardo@gmail.com','4444113','3154569113','Carrera 113 N 14-113 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11314'),(15,'ISAAC','LEONEL','isaac15_leonel@gmail.com','4444114','3154569114','Carrera 114 N 15-114 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11415'),(16,'MARIA','JORDI','maria16_jordi@gmail.com','4444115','3154569115','Carrera 115 N 16-115 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11516'),(17,'ANGEL','ESTEBAN','angel17_esteban@gmail.com','4444116','3154569116','Carrera 116 N 17-116 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11617'),(18,'ADOLFO','JONATHAN','adolfo18_jonathan@gmail.com','4444117','3154569117','Carrera 117 N 18-117 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11718'),(19,'ERNESTO','FELIPE','ernesto19_felipe@gmail.com','4444118','3154569118','Carrera 118 N 19-118 Este','BRASIL','RÍO DE JANEIRO','RÍO DE JANEIRO','11819'),(20,'RAFAEL','JOSE','rafael20_jose@gmail.com','4444119','3154569119','Carrera 119 N 20-119 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','11920'),(21,'TOMAS','FELIX','tomas21_felix@gmail.com','4444120','3154569120','Carrera 120 N 21-120 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12021'),(22,'MARCOS','PABLO','marcos22_pablo@gmail.com','4444121','3154569121','Carrera 121 N 22-121 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12122'),(23,'MARIO','MANUEL','mario23_manuel@gmail.com','4444122','3154569122','Carrera 122 N 23-122 Este','ARGENTINA','BUENOS AIRES','BUENOS AIRES','12223'),(24,'ARTURO','LORENZO','arturo24_lorenzo@gmail.com','4444123','3154569123','Carrera 123 N 24-123 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12324'),(25,'EUGENIO','ISAAC','eugenio25_isaac@gmail.com','4444124','3154569124','Carrera 124 N 25-124 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12425'),(26,'JUAN','MARIA','juan26_maria@gmail.com','4444125','3154569125','Carrera 125 N 26-125 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12526'),(27,'GONZALO','ANGEL','gonzalo27_angel@gmail.com','4444126','3154569126','Carrera 126 N 27-126 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12627'),(28,'ANTONIO','ADOLFO','antonio28_adolfo@gmail.com','4444127','3154569127','Carrera 127 N 28-127 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12728'),(29,'EMILIO','ERNESTO','emilio29_ernesto@gmail.com','4444128','3154569128','Carrera 128 N 29-128 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12829'),(30,'AGUSTIN','RAFAEL','agustin30_rafael@gmail.com','4444129','3154569129','Carrera 129 N 30-129 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','12930'),(31,'JUAN PABLO','TOMAS','juan pablo31_tomas@gmail.com','4444130','3154569130','Carrera 130 N 31-130 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13031'),(32,'FRANCISCO','MARCOS','francisco32_marcos@gmail.com','4444131','3154569131','Carrera 131 N 32-131 Oeste','BRASIL','RÍO DE JANEIRO','RÍO DE JANEIRO','13132'),(33,'MARC','MARIO','marc33_mario@gmail.com','4444132','3154569132','Carrera 132 N 33-132 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13233'),(34,'ROBERTO','ARTURO','roberto34_arturo@gmail.com','4444133','3154569133','Carrera 133 N 34-133 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13334'),(35,'CARLOS','EUGENIO','carlos35_eugenio@gmail.com','4444134','3154569134','Carrera 134 N 35-134 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13435'),(36,'JOEL','JUAN','joel36_juan@gmail.com','4444135','3154569135','Carrera 135 N 36-135 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13536'),(37,'MARIANO','GONZALO','mariano37_gonzalo@gmail.com','4444136','3154569136','Carrera 136 N 37-136 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13637'),(38,'OSCAR','ANTONIO','oscar38_antonio@gmail.com','4444137','3154569137','Carrera 137 N 38-137 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13738'),(39,'ALEXANDER','EMILIO','alexander39_emilio@gmail.com','4444138','3154569138','Carrera 138 N 39-138 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13839'),(40,'BORJA','AGUSTIN','borja40_agustin@gmail.com','4444139','3154569139','Carrera 139 N 40-139 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','13940'),(41,'RAUL','JUAN PABLO','raul41_juan pablo@gmail.com','4444140','3154569140','Carrera 140 N 41-140 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14041'),(42,'ALEX','FRANCISCO','alex42_francisco@gmail.com','4444141','3154569141','Carrera 141 N 42-141 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14142'),(43,'IVAN','MARC','ivan43_marc@gmail.com','4444142','3154569142','Carrera 142 N 43-142 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14243'),(44,'SAMUEL','ROBERTO','samuel44_roberto@gmail.com','4444143','3154569143','Carrera 143 N 44-143 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14344'),(45,'ANDRES','CARLOS','andres45_carlos@gmail.com','4444144','3154569144','Carrera 144 N 45-144 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14445'),(46,'NORA','JOEL','nora46_joel@gmail.com','4444145','3154569145','Carrera 145 N 46-145 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14546'),(47,'ANDRÉS','MARIANO','andrés47_mariano@gmail.com','4444146','3154569146','Carrera 146 N 47-146 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14647'),(48,'CRISTIAN','OSCAR','cristian48_oscar@gmail.com','4444147','3154569147','Carrera 147 N 48-147 Oeste','BRASIL','RÍO DE JANEIRO','RÍO DE JANEIRO','14748'),(49,'JAVIER','ALEXANDER','javier49_alexander@gmail.com','4444148','3154569148','Carrera 148 N 49-148 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','14849'),(50,'DOMINGO','BORJA','domingo50_borja@gmail.com','4444149','3154569149','Carrera 149 N 50-149 Norte','ECUADOR','QUITO','QUITO','14950'),(51,'NICOLAS','RAUL','nicolas51_raul@gmail.com','4444150','3154569150','Carrera 150 N 51-150 Este','BRASIL','RÍO DE JANEIRO','RÍO DE JANEIRO','15051'),(52,'HECTOR','ALEX','hector52_alex@gmail.com','4444151','3154569151','Carrera 151 N 52-151 Oeste','URUGUAY','MONTEVIDEO','MONTEVIDEO','15152'),(53,'RICARDO','IVAN','ricardo53_ivan@gmail.com','4444152','3154569152','Carrera 152 N 53-152 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','15253'),(54,'ALBERTO','SAMUEL','alberto54_samuel@gmail.com','4444153','3154569153','Carrera 153 N 54-153 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','15354'),(55,'RUBEN','ANDRES','ruben55_andres@gmail.com','4444154','3154569154','Carrera 154 N 55-154 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','15455'),(56,'SEBASTIAN','NORA','sebastian56_nora@gmail.com','4444155','3154569155','Carrera 155 N 56-155 Oeste','CHILE','SANTIAGO DE CHILE','SANTIAGO DE CHILE','15556'),(57,'MOHAMED','ANDRÉS','mohamed57_andrés@gmail.com','4444156','3154569156','Carrera 156 N 57-156 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','15657'),(58,'MARCO','CRISTIAN','marco58_cristian@gmail.com','4444157','3154569157','Carrera 157 N 58-157 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','15758'),(59,'SERGIO','JAVIER','sergio59_javier@gmail.com','4444158','3154569158','Carrera 158 N 59-158 Este','BOLIVIA','LA PAZ','LA PAZ','15859'),(60,'RAMON','DOMINGO','ramon60_domingo@gmail.com','4444159','3154569159','Carrera 159 N 60-159 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','15960'),(61,'GREGORIO','NICOLAS','gregorio61_nicolas@gmail.com','4444160','3154569160','Carrera 160 N 61-160 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16061'),(62,'JOAN','HECTOR','joan62_hector@gmail.com','4444161','3154569161','Carrera 161 N 62-161 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16162'),(63,'ALFONSO','RICARDO','alfonso63_ricardo@gmail.com','4444162','3154569162','Carrera 162 N 63-162 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16263'),(64,'GUILLERMO','ALBERTO','guillermo64_alberto@gmail.com','4444163','3154569163','Carrera 163 N 64-163 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16364'),(65,'CHRISTIAN','RUBEN','christian65_ruben@gmail.com','4444164','3154569164','Carrera 164 N 65-164 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16465'),(66,'MATEO','SEBASTIAN','mateo66_sebastian@gmail.com','4444165','3154569165','Carrera 165 N 66-165 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16566'),(67,'JULIAN','MOHAMED','julian67_mohamed@gmail.com','4444166','3154569166','Carrera 166 N 67-166 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16667'),(68,'CRISTOBAL','MARCO','cristobal68_marco@gmail.com','4444167','3154569167','Carrera 167 N 68-167 Oeste','PERU','LIMA','LIMA','16768'),(69,'RODRIGO','SERGIO','rodrigo69_sergio@gmail.com','4444168','3154569168','Carrera 168 N 69-168 Sur','BRASIL','RÍO DE JANEIRO','RÍO DE JANEIRO','16869'),(70,'JESUS','RAMON','jesus70_ramon@gmail.com','4444169','3154569169','Carrera 169 N 70-169 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','16970'),(71,'JORGE','GREGORIO','jorge71_gregorio@gmail.com','4444170','3154569170','Carrera 170 N 71-170 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17071'),(72,'JULIO','JOAN','julio72_joan@gmail.com','4444171','3154569171','Carrera 171 N 72-171 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17172'),(73,'MARIA MÓNICA','ALFONSO','maria mónica73_alfonso@gmail.com','4444172','3154569172','Carrera 172 N 73-172 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17273'),(74,'IGNACIO','GUILLERMO','ignacio74_guillermo@gmail.com','4444173','3154569173','Carrera 173 N 74-173 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17374'),(75,'GABRIEL','CHRISTIAN','gabriel75_christian@gmail.com','4444174','3154569174','Carrera 174 N 75-174 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17475'),(76,'MARTIN','MATEO','martin76_mateo@gmail.com','4444175','3154569175','Carrera 175 N 76-175 Oeste','URUGUAY','MONTEVIDEO','MONTEVIDEO','17576'),(77,'FERNANDO','JULIAN','fernando77_julian@gmail.com','4444176','3154569176','Carrera 176 N 77-176 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17677'),(78,'ALEJANDRO','CRISTOBAL','alejandro78_cristobal@gmail.com','4444177','3154569177','Carrera 177 N 78-177 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17778'),(79,'SANTIAGO','RODRIGO','santiago79_rodrigo@gmail.com','4444178','3154569178','Carrera 178 N 79-178 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','17879'),(80,'LUCAS','JESUS','lucas80_jesus@gmail.com','4444179','3154569179','Carrera 179 N 80-179 Oeste','ESPAÑA','MADRID','MADRID','17980'),(81,'PEDRO','JORGE','pedro81_jorge@gmail.com','4444180','3154569180','Carrera 180 N 81-180 Sur','CHILE','SANTIAGO DE CHILE','SANTIAGO DE CHILE','18081'),(82,'ENRIQUE','JULIO','enrique82_julio@gmail.com','4444181','3154569181','Carrera 181 N 82-181 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18182'),(83,'VICTOR','MARIA MÓNICA','victor83_maria mónica@gmail.com','4444182','3154569182','Carrera 182 N 83-182 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18283'),(84,'ALFREDO','IGNACIO','alfredo84_ignacio@gmail.com','4444183','3154569183','Carrera 183 N 84-183 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18384'),(85,'DARIO','GABRIEL','dario85_gabriel@gmail.com','4444184','3154569184','Carrera 184 N 85-184 Sur','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18485'),(86,'DIEGO','MARTIN','diego86_martin@gmail.com','4444185','3154569185','Carrera 185 N 86-185 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18586'),(87,'ISMAEL','FERNANDO','ismael87_fernando@gmail.com','4444186','3154569186','Carrera 186 N 87-186 Este','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18687'),(88,'JAIME','ALEJANDRO','jaime88_alejandro@gmail.com','4444187','3154569187','Carrera 187 N 88-187 Oeste','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18788'),(89,'SALVADOR','SANTIAGO','salvador89_santiago@gmail.com','4444188','3154569188','Carrera 188 N 89-188 Sur','CHILE','SANTIAGO DE CHILE','SANTIAGO DE CHILE','18889'),(90,'ADRIAN','LUCAS','adrian90_lucas@gmail.com','4444189','3154569189','Carrera 189 N 90-189 Norte','COLOMBIA','BOGOTÁ DC','BOGOTÁ DC','18990');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `hireDate` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `postalCode` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `homePhone` varchar(50) NOT NULL,
  `cellphone` varchar(200) NOT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Mario','Casas','Desarrollador Java','1970-11-02','2020-11-02','Carrera 5 sur Este','Bogotá',NULL,NULL,'Colombia','5555555','3132225544',NULL,NULL),(2,'ADRIAN','JAIME','Desarrollador PHP','1872-07-12','2021-01-30','Carrera 98 N 98 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9855555','3145556298',NULL,NULL),(3,'CESAR','ALBERT','Desarrollador Java','1775-07-12','2020-01-15','Carrera 1 N 1 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1555555','3145556231',NULL,NULL),(4,'HUGO','JOAQUIN','Desarrollador PHP','1776-07-12','2020-01-30','Carrera 2 N 2 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2555555','3145556232',NULL,NULL),(5,'VALENTINA','CESAR','Desarrollador Python','1777-07-12','2021-01-15','Carrera 3 N 3 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3555555','3145556233',NULL,NULL),(6,'GERMAN','HUGO','Desarrollador JavaScript','1778-07-12','2021-01-30','Carrera 4 N 4 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4555555','3145556234',NULL,NULL),(7,'DAVID','VALENTINA','Desarrollador Java','1779-07-12','2020-01-15','Carrera 5 N 5 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','5555555','3145556235',NULL,NULL),(8,'MIGUEL','GERMAN','Desarrollador PHP','1780-07-12','2020-01-30','Carrera 6 N 6 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6555555','3145556236',NULL,NULL),(9,'VICENTE','DAVID','Desarrollador Python','1781-07-12','2021-01-15','Carrera 7 N 7 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7555555','3145556237',NULL,NULL),(10,'ALVARO','MIGUEL','Desarrollador JavaScript','1782-07-12','2021-01-30','Carrera 8 N 8 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8555555','3145556238',NULL,NULL),(11,'LUIS','VICENTE','Desarrollador Java','1783-07-12','2020-01-15','Carrera 9 N 9 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9555555','3145556239',NULL,NULL),(12,'DANIEL','ALVARO','Desarrollador PHP','1784-07-12','2020-01-30','Carrera 10 N 10 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1055555','3145556210',NULL,NULL),(13,'JOSEP','LUIS','Desarrollador Python','1785-07-12','2021-01-15','Carrera 11 N 11 Este','CARACAS',NULL,NULL,'VENEZUELA','1155555','3145556211',NULL,NULL),(14,'EDUARDO','DANIEL','Desarrollador JavaScript','1786-07-12','2021-01-30','Carrera 12 N 12 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1255555','3145556212',NULL,NULL),(15,'LEONEL','JOSEP','Desarrollador Java','1787-07-12','2020-01-15','Carrera 13 N 13 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1355555','3145556213',NULL,NULL),(16,'JORDI','EDUARDO','Desarrollador PHP','1788-07-12','2020-01-30','Carrera 14 N 14 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1455555','3145556214',NULL,NULL),(17,'ESTEBAN','LEONEL','Desarrollador Python','1789-07-12','2021-01-15','Carrera 15 N 15 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1555555','3145556215',NULL,NULL),(18,'JONATHAN','JORDI','Desarrollador JavaScript','1790-07-12','2021-01-30','Carrera 16 N 16 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1655555','3145556216',NULL,NULL),(19,'FELIPE','ESTEBAN','Desarrollador Java','1791-07-12','2021-01-15','Carrera 17 N 17 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1755555','3145556217',NULL,NULL),(20,'JOSE','JONATHAN','Desarrollador PHP','1792-07-12','2021-01-30','Carrera 18 N 18 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','1855555','3145556218',NULL,NULL),(21,'FELIX','FELIPE','Desarrollador Python','1793-07-12','2020-01-15','Carrera 19 N 19 Este','RÍO DE JANEIRO',NULL,NULL,'BRASIL','1955555','3145556219',NULL,NULL),(22,'PABLO','JOSE','Desarrollador JavaScript','1794-07-12','2020-01-30','Carrera 20 N 20 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2055555','3145556220',NULL,NULL),(23,'MANUEL','FELIX','Desarrollador Java','1795-07-12','2021-01-15','Carrera 21 N 21 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2155555','3145556221',NULL,NULL),(24,'LORENZO','PABLO','Desarrollador PHP','1796-07-12','2021-01-30','Carrera 22 N 22 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2255555','3145556222',NULL,NULL),(25,'ISAAC','MANUEL','Desarrollador Python','1797-07-12','2020-01-15','Carrera 23 N 23 Este','BUENOS AIRES',NULL,NULL,'ARGENTINA','2355555','3145556223',NULL,NULL),(26,'MARIA','LORENZO','Desarrollador JavaScript','1798-07-12','2020-01-30','Carrera 24 N 24 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2455555','3145556224',NULL,NULL),(27,'ANGEL','ISAAC','Desarrollador Java','1799-07-12','2021-01-15','Carrera 25 N 25 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2555555','3145556225',NULL,NULL),(28,'ADOLFO','MARIA','Desarrollador PHP','1800-07-12','2021-01-30','Carrera 26 N 26 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2655555','3145556226',NULL,NULL),(29,'ERNESTO','ANGEL','Desarrollador Python','1801-07-12','2020-01-15','Carrera 27 N 27 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2755555','3145556227',NULL,NULL),(30,'RAFAEL','ADOLFO','Desarrollador JavaScript','1802-07-12','2020-01-30','Carrera 28 N 28 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2855555','3145556228',NULL,NULL),(31,'TOMAS','ERNESTO','Desarrollador Java','1803-07-12','2021-01-15','Carrera 29 N 29 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','2955555','3145556229',NULL,NULL),(32,'MARCOS','RAFAEL','Desarrollador PHP','1804-07-12','2021-01-30','Carrera 30 N 30 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3055555','3145556230',NULL,NULL),(33,'MARIO','TOMAS','Desarrollador Python','1805-07-12','2020-01-15','Carrera 31 N 31 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3155555','3145556231',NULL,NULL),(34,'ARTURO','MARCOS','Desarrollador JavaScript','1806-07-12','2020-01-30','Carrera 32 N 32 Oeste','RÍO DE JANEIRO',NULL,NULL,'BRASIL','3255555','3145556232',NULL,NULL),(35,'EUGENIO','MARIO','Desarrollador Java','1807-07-12','2021-01-15','Carrera 33 N 33 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3355555','3145556233',NULL,NULL),(36,'JUAN','ARTURO','Desarrollador PHP','1808-07-12','2021-01-30','Carrera 34 N 34 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3455555','3145556234',NULL,NULL),(37,'GONZALO','EUGENIO','Desarrollador Python','1809-07-12','2021-01-15','Carrera 35 N 35 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3555555','3145556235',NULL,NULL),(38,'ANTONIO','JUAN','Desarrollador JavaScript','1810-07-12','2021-01-30','Carrera 36 N 36 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3655555','3145556236',NULL,NULL),(39,'EMILIO','GONZALO','Desarrollador Java','1811-07-12','2020-01-15','Carrera 37 N 37 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3755555','3145556237',NULL,NULL),(40,'AGUSTIN','ANTONIO','Desarrollador PHP','1812-07-12','2020-01-30','Carrera 38 N 38 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3855555','3145556238',NULL,NULL),(41,'JUAN PABLO','EMILIO','Desarrollador Python','1813-07-12','2021-01-15','Carrera 39 N 39 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','3955555','3145556239',NULL,NULL),(42,'FRANCISCO','AGUSTIN','Desarrollador JavaScript','1814-07-12','2021-01-30','Carrera 40 N 40 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4055555','3145556240',NULL,NULL),(43,'MARC','JUAN PABLO','Desarrollador Java','1815-07-12','2020-01-15','Carrera 41 N 41 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4155555','3145556241',NULL,NULL),(44,'ROBERTO','FRANCISCO','Desarrollador PHP','1816-07-12','2020-01-30','Carrera 42 N 42 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4255555','3145556242',NULL,NULL),(45,'CARLOS','MARC','Desarrollador Python','1817-07-12','2021-01-15','Carrera 43 N 43 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4355555','3145556243',NULL,NULL),(46,'JOEL','ROBERTO','Desarrollador JavaScript','1818-07-12','2021-01-30','Carrera 44 N 44 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4455555','3145556244',NULL,NULL),(47,'MARIANO','CARLOS','Desarrollador Java','1819-07-12','2020-01-15','Carrera 45 N 45 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4555555','3145556245',NULL,NULL),(48,'OSCAR','JOEL','Desarrollador PHP','1820-07-12','2020-01-30','Carrera 46 N 46 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4655555','3145556246',NULL,NULL),(49,'ALEXANDER','MARIANO','Desarrollador Python','1821-07-12','2021-01-15','Carrera 47 N 47 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4755555','3145556247',NULL,NULL),(50,'BORJA','OSCAR','Desarrollador JavaScript','1822-07-12','2021-01-30','Carrera 48 N 48 Oeste','RÍO DE JANEIRO',NULL,NULL,'BRASIL','4855555','3145556248',NULL,NULL),(51,'RAUL','ALEXANDER','Desarrollador Java','1823-07-12','2020-01-15','Carrera 49 N 49 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','4955555','3145556249',NULL,NULL),(52,'ALEX','BORJA','Desarrollador PHP','1824-07-12','2020-01-30','Carrera 50 N 50 Norte','QUITO',NULL,NULL,'ECUADOR','5055555','3145556250',NULL,NULL),(53,'IVAN','RAUL','Desarrollador Python','1825-07-12','2021-01-15','Carrera 51 N 51 Este','RÍO DE JANEIRO',NULL,NULL,'BRASIL','5155555','3145556251',NULL,NULL),(54,'SAMUEL','ALEX','Desarrollador JavaScript','1826-07-12','2021-01-30','Carrera 52 N 52 Oeste','MONTEVIDEO',NULL,NULL,'URUGUAY','5255555','3145556252',NULL,NULL),(55,'ANDRES','IVAN','Desarrollador Java','1827-07-12','2021-01-15','Carrera 53 N 53 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','5355555','3145556253',NULL,NULL),(56,'NORA','SAMUEL','Desarrollador PHP','1828-07-12','2021-01-30','Carrera 54 N 54 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','5455555','3145556254',NULL,NULL),(57,'ANDRÉS','ANDRES','Desarrollador Python','1829-07-12','2020-01-15','Carrera 55 N 55 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','5555555','3145556255',NULL,NULL),(58,'CRISTIAN','NORA','Desarrollador JavaScript','1830-07-12','2020-01-30','Carrera 56 N 56 Oeste','SANTIAGO DE CHILE',NULL,NULL,'CHILE','5655555','3145556256',NULL,NULL),(59,'JAVIER','ANDRÉS','Desarrollador Java','1831-07-12','2021-01-15','Carrera 57 N 57 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','5755555','3145556257',NULL,NULL),(60,'DOMINGO','CRISTIAN','Desarrollador PHP','1832-07-12','2021-01-30','Carrera 58 N 58 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','5855555','3145556258',NULL,NULL),(61,'NICOLAS','JAVIER','Desarrollador Python','1833-07-12','2020-01-15','Carrera 59 N 59 Este','LA PAZ',NULL,NULL,'BOLIVIA','5955555','3145556259',NULL,NULL),(62,'HECTOR','DOMINGO','Desarrollador JavaScript','1834-07-12','2020-01-30','Carrera 60 N 60 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6055555','3145556260',NULL,NULL),(63,'RICARDO','NICOLAS','Desarrollador Java','1835-07-12','2021-01-15','Carrera 61 N 61 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6155555','3145556261',NULL,NULL),(64,'ALBERTO','HECTOR','Desarrollador PHP','1836-07-12','2021-01-30','Carrera 62 N 62 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6255555','3145556262',NULL,NULL),(65,'RUBEN','RICARDO','Desarrollador Python','1837-07-12','2020-01-15','Carrera 63 N 63 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6355555','3145556263',NULL,NULL),(66,'SEBASTIAN','ALBERTO','Desarrollador JavaScript','1838-07-12','2020-01-30','Carrera 64 N 64 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6455555','3145556264',NULL,NULL),(67,'MOHAMED','RUBEN','Desarrollador Java','1839-07-12','2021-01-15','Carrera 65 N 65 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6555555','3145556265',NULL,NULL),(68,'MARCO','SEBASTIAN','Desarrollador PHP','1840-07-12','2021-01-30','Carrera 66 N 66 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6655555','3145556266',NULL,NULL),(69,'SERGIO','MOHAMED','Desarrollador Python','1841-07-12','2020-01-15','Carrera 67 N 67 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','6755555','3145556267',NULL,NULL),(70,'RAMON','MARCO','Desarrollador JavaScript','1842-07-12','2020-01-30','Carrera 68 N 68 Oeste','LIMA',NULL,NULL,'PERU','6855555','3145556268',NULL,NULL),(71,'GREGORIO','SERGIO','Desarrollador Java','1843-07-12','2021-01-15','Carrera 69 N 69 Sur','RÍO DE JANEIRO',NULL,NULL,'BRASIL','6955555','3145556269',NULL,NULL),(72,'JOAN','RAMON','Desarrollador PHP','1844-07-12','2021-01-30','Carrera 70 N 70 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7055555','3145556270',NULL,NULL),(73,'ALFONSO','GREGORIO','Desarrollador Python','1845-07-12','2021-01-15','Carrera 71 N 71 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7155555','3145556271',NULL,NULL),(74,'GUILLERMO','JOAN','Desarrollador JavaScript','1846-07-12','2021-01-30','Carrera 72 N 72 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7255555','3145556272',NULL,NULL),(75,'CHRISTIAN','ALFONSO','Desarrollador Java','1847-07-12','2020-01-15','Carrera 73 N 73 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7355555','3145556273',NULL,NULL),(76,'MATEO','GUILLERMO','Desarrollador PHP','1848-07-12','2020-01-30','Carrera 74 N 74 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7455555','3145556274',NULL,NULL),(77,'JULIAN','CHRISTIAN','Desarrollador Python','1849-07-12','2021-01-15','Carrera 75 N 75 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7555555','3145556275',NULL,NULL),(78,'CRISTOBAL','MATEO','Desarrollador JavaScript','1850-07-12','2021-01-30','Carrera 76 N 76 Oeste','MONTEVIDEO',NULL,NULL,'URUGUAY','7655555','3145556276',NULL,NULL),(79,'RODRIGO','JULIAN','Desarrollador Java','1851-07-12','2020-01-15','Carrera 77 N 77 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7755555','3145556277',NULL,NULL),(80,'JESUS','CRISTOBAL','Desarrollador PHP','1852-07-12','2020-01-30','Carrera 78 N 78 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7855555','3145556278',NULL,NULL),(81,'JORGE','RODRIGO','Desarrollador Python','1853-07-12','2021-01-15','Carrera 79 N 79 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','7955555','3145556279',NULL,NULL),(82,'JULIO','JESUS','Desarrollador JavaScript','1854-07-12','2021-01-30','Carrera 80 N 80 Oeste','MADRID',NULL,NULL,'ESPAÑA','8055555','3145556280',NULL,NULL),(83,'MARIA MÓNICA','JORGE','Desarrollador Java','1855-07-12','2020-01-15','Carrera 81 N 81 Sur','SANTIAGO DE CHILE',NULL,NULL,'CHILE','8155555','3145556281',NULL,NULL),(84,'IGNACIO','JULIO','Desarrollador PHP','1856-07-12','2020-01-30','Carrera 82 N 82 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8255555','3145556282',NULL,NULL),(85,'GABRIEL','MARIA MÓNICA','Desarrollador Python','1857-07-12','2021-01-15','Carrera 83 N 83 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8355555','3145556283',NULL,NULL),(86,'MARTIN','IGNACIO','Desarrollador JavaScript','1858-07-12','2021-01-30','Carrera 84 N 84 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8455555','3145556284',NULL,NULL),(87,'FERNANDO','GABRIEL','Desarrollador Java','1859-07-12','2020-01-15','Carrera 85 N 85 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8555555','3145556285',NULL,NULL),(88,'ALEJANDRO','MARTIN','Desarrollador PHP','1860-07-12','2020-01-30','Carrera 86 N 86 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8655555','3145556286',NULL,NULL),(89,'SANTIAGO','FERNANDO','Desarrollador Python','1861-07-12','2021-01-15','Carrera 87 N 87 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8755555','3145556287',NULL,NULL),(90,'LUCAS','ALEJANDRO','Desarrollador JavaScript','1862-07-12','2021-01-30','Carrera 88 N 88 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','8855555','3145556288',NULL,NULL),(91,'PEDRO','SANTIAGO','Desarrollador Java','1863-07-12','2021-01-15','Carrera 89 N 89 Sur','SANTIAGO DE CHILE',NULL,NULL,'CHILE','8955555','3145556289',NULL,NULL),(92,'ENRIQUE','LUCAS','Desarrollador PHP','1864-07-12','2021-01-30','Carrera 90 N 90 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9055555','3145556290',NULL,NULL),(93,'VICTOR','PEDRO','Desarrollador Python','1865-07-12','2020-01-15','Carrera 91 N 91 Este','SANTIAGO DE CHILE',NULL,NULL,'CHILE','9155555','3145556291',NULL,NULL),(94,'ALFREDO','ENRIQUE','Desarrollador JavaScript','1866-07-12','2020-01-30','Carrera 92 N 92 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9255555','3145556292',NULL,NULL),(95,'DARIO','VICTOR','Desarrollador Java','1867-07-12','2021-01-15','Carrera 93 N 93 Sur','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9355555','3145556293',NULL,NULL),(96,'DIEGO','ALFREDO','Desarrollador PHP','1868-07-12','2021-01-30','Carrera 94 N 94 Norte','ASUNCIÓN',NULL,NULL,'PARAGUAY','9455555','3145556294',NULL,NULL),(97,'ISMAEL','DARIO','Desarrollador Python','1869-07-12','2020-01-15','Carrera 95 N 95 Este','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9555555','3145556295',NULL,NULL),(98,'JAIME','DIEGO','Desarrollador JavaScript','1870-07-12','2020-01-30','Carrera 96 N 96 Oeste','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9655555','3145556296',NULL,NULL),(99,'SALVADOR','ISMAEL','Desarrollador Java','1871-07-12','2021-01-15','Carrera 97 N 97 Sur','RÍO DE JANEIRO',NULL,NULL,'BRASIL','9755555','3145556297',NULL,NULL),(100,'ADRIAN','JAIME','Desarrollador PHP','1872-07-12','2021-01-30','Carrera 98 N 98 Norte','BOGOTÁ DC',NULL,NULL,'COLOMBIA','9855555','3145556298',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `unitPrice` decimal(12,2) unsigned NOT NULL,
  `quantity` int(3) unsigned zerofill NOT NULL,
  `discount` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,2500000.00,001,0,1,1),(2,769000.00,002,0,2,2),(3,709000.95,003,0,3,3),(4,362900.30,001,0,4,4),(5,399900.00,001,0,5,5),(6,339900.00,001,0,6,6),(7,74900.00,001,0,7,7),(8,1050000.00,002,0,8,8),(9,13592.00,003,0,9,9),(10,199900.00,001,0,10,10),(11,66378.00,001,0,11,11),(12,169900.00,001,0,12,12),(13,749000.00,001,0,13,13),(14,1059900.00,001,0,14,14),(15,1019900.00,001,0,15,15),(16,1349000.00,001,0,16,16),(17,4499990.00,001,0,17,17),(18,504900.00,001,0,18,18),(19,8190.00,001,0,19,19),(20,70990.00,001,0,20,20),(21,269900.00,001,0,21,21),(22,2500000.00,001,0,1,22),(23,769000.00,001,0,2,23),(24,709000.95,001,0,3,24),(25,362900.30,005,0,4,25),(26,399900.00,001,0,5,26),(27,339900.00,002,0,6,27),(28,74900.00,003,0,7,28),(29,1050000.00,001,0,8,29),(30,13592.00,001,0,9,30),(31,199900.00,001,0,10,31),(32,66378.00,001,0,11,32),(33,169900.00,002,0,12,33),(34,749000.00,003,0,13,34),(35,1059900.00,001,0,14,35),(36,1019900.00,001,0,15,36),(37,1349000.00,001,0,16,37),(38,4499990.00,001,0,17,38),(39,504900.00,001,0,18,39),(40,8190.00,001,0,19,40),(41,70990.00,001,0,20,41),(42,269900.00,001,0,21,42),(43,2500000.00,001,0,1,43),(44,769000.00,001,0,2,44),(45,709000.95,001,0,3,45),(46,362900.30,001,0,4,46),(47,399900.00,001,0,5,47),(48,339900.00,001,0,6,48),(49,74900.00,001,0,7,49),(50,1050000.00,005,0,8,50),(51,13592.00,001,0,9,51),(52,199900.00,002,0,10,52),(53,66378.00,003,0,11,53),(54,169900.00,001,0,12,54),(55,749000.00,001,0,13,55),(56,1059900.00,001,0,14,56),(57,1019900.00,001,0,15,57),(58,1349000.00,002,0,16,58),(59,4499990.00,003,0,17,59),(60,504900.00,001,0,18,60),(61,8190.00,001,0,19,61),(62,70990.00,001,0,20,62),(63,269900.00,001,0,21,63),(64,2500000.00,001,0,1,64),(65,769000.00,001,0,2,65),(66,709000.95,001,0,3,66),(67,362900.30,001,0,4,67),(68,399900.00,001,0,5,68),(69,339900.00,001,0,6,69),(70,74900.00,001,0,7,70),(71,1050000.00,001,0,8,71),(72,13592.00,001,0,9,72),(73,199900.00,001,0,10,73),(74,66378.00,001,0,11,74),(75,169900.00,005,0,12,75),(76,749000.00,001,0,13,76),(77,1059900.00,002,0,14,77),(78,1019900.00,003,0,15,78),(79,1349000.00,001,0,16,79),(80,4499990.00,001,0,17,80),(81,504900.00,001,0,18,81),(82,8190.00,001,0,19,82),(83,70990.00,002,0,20,83),(84,269900.00,003,0,21,84),(85,2500000.00,001,0,1,85),(86,769000.00,001,0,2,86),(87,709000.95,001,0,3,87),(88,362900.30,001,0,4,88),(89,399900.00,001,0,5,89),(90,339900.00,001,0,6,90);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `shippedDate` date NOT NULL,
  `freight` varchar(50) NOT NULL,
  `shipName` varchar(100) NOT NULL,
  `shipAddress` varchar(100) NOT NULL,
  `shipCity` varchar(50) NOT NULL,
  `shipRegion` varchar(50) NOT NULL,
  `shipPostalCode` varchar(50) NOT NULL,
  `shipCountry` varchar(50) NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `employee_id` int unsigned NOT NULL,
  `shipper_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `shipper_id` (`shipper_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 100 N 1-100 Sur','BOGOTÁ DC','BOGOTÁ DC','1001','COLOMBIA',1,1,1),(2,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 101 N 2-101 Norte','BOGOTÁ DC','BOGOTÁ DC','1012','COLOMBIA',2,2,2),(3,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 102 N 3-102 Este','BOGOTÁ DC','BOGOTÁ DC','1023','COLOMBIA',3,3,1),(4,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 103 N 4-103 Oeste','BOGOTÁ DC','BOGOTÁ DC','1034','COLOMBIA',4,4,2),(5,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 104 N 5-104 Sur','BOGOTÁ DC','BOGOTÁ DC','1045','COLOMBIA',5,5,1),(6,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 105 N 6-105 Norte','BOGOTÁ DC','BOGOTÁ DC','1056','COLOMBIA',6,6,2),(7,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 106 N 7-106 Este','BOGOTÁ DC','BOGOTÁ DC','1067','COLOMBIA',7,7,1),(8,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 107 N 8-107 Oeste','BOGOTÁ DC','BOGOTÁ DC','1078','COLOMBIA',8,8,2),(9,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 108 N 9-108 Sur','BOGOTÁ DC','BOGOTÁ DC','1089','COLOMBIA',9,9,1),(10,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 109 N 10-109 Norte','BOGOTÁ DC','BOGOTÁ DC','10910','COLOMBIA',10,10,2),(11,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 110 N 11-110 Este','CARACAS','CARACAS','11011','VENEZUELA',11,11,1),(12,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 111 N 12-111 Oeste','BOGOTÁ DC','BOGOTÁ DC','11112','COLOMBIA',12,12,2),(13,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 112 N 13-112 Sur','BOGOTÁ DC','BOGOTÁ DC','11213','COLOMBIA',13,13,1),(14,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 113 N 14-113 Norte','BOGOTÁ DC','BOGOTÁ DC','11314','COLOMBIA',14,14,2),(15,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 114 N 15-114 Este','BOGOTÁ DC','BOGOTÁ DC','11415','COLOMBIA',15,15,1),(16,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 115 N 16-115 Oeste','BOGOTÁ DC','BOGOTÁ DC','11516','COLOMBIA',16,16,2),(17,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 116 N 17-116 Sur','BOGOTÁ DC','BOGOTÁ DC','11617','COLOMBIA',17,17,1),(18,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 117 N 18-117 Norte','BOGOTÁ DC','BOGOTÁ DC','11718','COLOMBIA',18,18,2),(19,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 118 N 19-118 Este','RÍO DE JANEIRO','RÍO DE JANEIRO','11819','BRASIL',19,19,1),(20,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 119 N 20-119 Oeste','BOGOTÁ DC','BOGOTÁ DC','11920','COLOMBIA',20,20,2),(21,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 120 N 21-120 Sur','BOGOTÁ DC','BOGOTÁ DC','12021','COLOMBIA',21,21,1),(22,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 121 N 22-121 Norte','BOGOTÁ DC','BOGOTÁ DC','12122','COLOMBIA',22,22,2),(23,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 122 N 23-122 Este','BUENOS AIRES','BUENOS AIRES','12223','ARGENTINA',23,23,1),(24,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 123 N 24-123 Oeste','BOGOTÁ DC','BOGOTÁ DC','12324','COLOMBIA',24,24,2),(25,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 124 N 25-124 Sur','BOGOTÁ DC','BOGOTÁ DC','12425','COLOMBIA',25,25,1),(26,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 125 N 26-125 Norte','BOGOTÁ DC','BOGOTÁ DC','12526','COLOMBIA',26,26,2),(27,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 126 N 27-126 Este','BOGOTÁ DC','BOGOTÁ DC','12627','COLOMBIA',27,27,1),(28,'2021-04-02','2021-04-04','2021-04-04','Transportadora','Alianza Geek','Carrera 127 N 28-127 Oeste','BOGOTÁ DC','BOGOTÁ DC','12728','COLOMBIA',28,28,2),(29,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 128 N 29-128 Sur','BOGOTÁ DC','BOGOTÁ DC','12829','COLOMBIA',29,29,1),(30,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 129 N 30-129 Norte','BOGOTÁ DC','BOGOTÁ DC','12930','COLOMBIA',30,30,2),(31,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 130 N 31-130 Este','BOGOTÁ DC','BOGOTÁ DC','13031','COLOMBIA',31,31,1),(32,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 131 N 32-131 Oeste','RÍO DE JANEIRO','RÍO DE JANEIRO','13132','BRASIL',32,32,2),(33,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 132 N 33-132 Sur','BOGOTÁ DC','BOGOTÁ DC','13233','COLOMBIA',33,33,1),(34,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 133 N 34-133 Norte','BOGOTÁ DC','BOGOTÁ DC','13334','COLOMBIA',34,34,2),(35,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 134 N 35-134 Este','BOGOTÁ DC','BOGOTÁ DC','13435','COLOMBIA',35,35,1),(36,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 135 N 36-135 Oeste','BOGOTÁ DC','BOGOTÁ DC','13536','COLOMBIA',36,36,2),(37,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 136 N 37-136 Sur','BOGOTÁ DC','BOGOTÁ DC','13637','COLOMBIA',37,37,1),(38,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 137 N 38-137 Norte','BOGOTÁ DC','BOGOTÁ DC','13738','COLOMBIA',38,38,2),(39,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 138 N 39-138 Este','BOGOTÁ DC','BOGOTÁ DC','13839','COLOMBIA',39,39,1),(40,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 139 N 40-139 Oeste','BOGOTÁ DC','BOGOTÁ DC','13940','COLOMBIA',40,40,2),(41,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 140 N 41-140 Sur','BOGOTÁ DC','BOGOTÁ DC','14041','COLOMBIA',41,41,1),(42,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 141 N 42-141 Norte','BOGOTÁ DC','BOGOTÁ DC','14142','COLOMBIA',42,42,2),(43,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 142 N 43-142 Este','BOGOTÁ DC','BOGOTÁ DC','14243','COLOMBIA',43,43,1),(44,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 143 N 44-143 Oeste','BOGOTÁ DC','BOGOTÁ DC','14344','COLOMBIA',44,44,2),(45,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 144 N 45-144 Sur','BOGOTÁ DC','BOGOTÁ DC','14445','COLOMBIA',45,45,1),(46,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 145 N 46-145 Norte','BOGOTÁ DC','BOGOTÁ DC','14546','COLOMBIA',46,46,2),(47,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 146 N 47-146 Este','BOGOTÁ DC','BOGOTÁ DC','14647','COLOMBIA',47,47,1),(48,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 147 N 48-147 Oeste','RÍO DE JANEIRO','RÍO DE JANEIRO','14748','BRASIL',48,48,2),(49,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 148 N 49-148 Sur','BOGOTÁ DC','BOGOTÁ DC','14849','COLOMBIA',49,49,1),(50,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 149 N 50-149 Norte','QUITO','QUITO','14950','ECUADOR',50,50,2),(51,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 150 N 51-150 Este','RÍO DE JANEIRO','RÍO DE JANEIRO','15051','BRASIL',51,51,1),(52,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 151 N 52-151 Oeste','MONTEVIDEO','MONTEVIDEO','15152','URUGUAY',52,52,2),(53,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 152 N 53-152 Sur','BOGOTÁ DC','BOGOTÁ DC','15253','COLOMBIA',53,53,1),(54,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 153 N 54-153 Norte','BOGOTÁ DC','BOGOTÁ DC','15354','COLOMBIA',54,54,2),(55,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 154 N 55-154 Este','BOGOTÁ DC','BOGOTÁ DC','15455','COLOMBIA',55,55,1),(56,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 155 N 56-155 Oeste','SANTIAGO DE CHILE','SANTIAGO DE CHILE','15556','CHILE',56,56,2),(57,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 156 N 57-156 Sur','BOGOTÁ DC','BOGOTÁ DC','15657','COLOMBIA',57,57,1),(58,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 157 N 58-157 Norte','BOGOTÁ DC','BOGOTÁ DC','15758','COLOMBIA',58,58,2),(59,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 158 N 59-158 Este','LA PAZ','LA PAZ','15859','BOLIVIA',59,59,1),(60,'2021-04-03','2021-04-05','2021-04-05','Transportadora','Alianza Geek','Carrera 159 N 60-159 Oeste','BOGOTÁ DC','BOGOTÁ DC','15960','COLOMBIA',60,60,2),(61,'2021-04-05','2021-04-07','2021-04-07','Transportadora','Alianza Geek','Carrera 160 N 61-160 Sur','BOGOTÁ DC','BOGOTÁ DC','16061','COLOMBIA',61,61,1),(62,'2021-04-05','2021-04-07','2021-04-07','Transportadora','Alianza Geek','Carrera 161 N 62-161 Norte','BOGOTÁ DC','BOGOTÁ DC','16162','COLOMBIA',62,62,2),(63,'2021-04-05','2021-04-07','2021-04-07','Transportadora','Alianza Geek','Carrera 162 N 63-162 Este','BOGOTÁ DC','BOGOTÁ DC','16263','COLOMBIA',63,63,1),(64,'2021-04-05','2021-04-07','2021-04-07','Transportadora','Alianza Geek','Carrera 163 N 64-163 Oeste','BOGOTÁ DC','BOGOTÁ DC','16364','COLOMBIA',64,64,2),(65,'2021-04-09','2021-04-11','2021-04-11','Transportadora','Alianza Geek','Carrera 164 N 65-164 Sur','BOGOTÁ DC','BOGOTÁ DC','16465','COLOMBIA',65,65,1),(66,'2021-04-10','2021-04-12','2021-04-12','Transportadora','Alianza Geek','Carrera 165 N 66-165 Norte','BOGOTÁ DC','BOGOTÁ DC','16566','COLOMBIA',66,66,2),(67,'2021-04-11','2021-04-13','2021-04-13','Transportadora','Alianza Geek','Carrera 166 N 67-166 Este','BOGOTÁ DC','BOGOTÁ DC','16667','COLOMBIA',67,67,1),(68,'2021-04-12','2021-04-14','2021-04-14','Transportadora','Alianza Geek','Carrera 167 N 68-167 Oeste','LIMA','LIMA','16768','PERU',68,68,2),(69,'2021-04-13','2021-04-15','2021-04-15','Transportadora','Alianza Geek','Carrera 168 N 69-168 Sur','RÍO DE JANEIRO','RÍO DE JANEIRO','16869','BRASIL',69,69,1),(70,'2021-04-14','2021-04-16','2021-04-16','Transportadora','Alianza Geek','Carrera 169 N 70-169 Norte','BOGOTÁ DC','BOGOTÁ DC','16970','COLOMBIA',70,70,2),(71,'2021-04-15','2021-04-17','2021-04-17','Transportadora','Alianza Geek','Carrera 170 N 71-170 Este','BOGOTÁ DC','BOGOTÁ DC','17071','COLOMBIA',71,71,1),(72,'2021-04-16','2021-04-18','2021-04-18','Transportadora','Alianza Geek','Carrera 171 N 72-171 Oeste','BOGOTÁ DC','BOGOTÁ DC','17172','COLOMBIA',72,72,2),(73,'2021-04-17','2021-04-19','2021-04-19','Transportadora','Alianza Geek','Carrera 172 N 73-172 Sur','BOGOTÁ DC','BOGOTÁ DC','17273','COLOMBIA',73,73,1),(74,'2021-04-18','2021-04-20','2021-04-20','Transportadora','Alianza Geek','Carrera 173 N 74-173 Norte','BOGOTÁ DC','BOGOTÁ DC','17374','COLOMBIA',74,74,2),(75,'2021-04-19','2021-04-21','2021-04-21','Transportadora','Alianza Geek','Carrera 174 N 75-174 Este','BOGOTÁ DC','BOGOTÁ DC','17475','COLOMBIA',75,75,1),(76,'2021-04-20','2021-04-22','2021-04-22','Transportadora','Alianza Geek','Carrera 175 N 76-175 Oeste','MONTEVIDEO','MONTEVIDEO','17576','URUGUAY',76,76,2),(77,'2021-04-21','2021-04-23','2021-04-23','Transportadora','Alianza Geek','Carrera 176 N 77-176 Sur','BOGOTÁ DC','BOGOTÁ DC','17677','COLOMBIA',77,77,1),(78,'2021-04-22','2021-04-24','2021-04-24','Transportadora','Alianza Geek','Carrera 177 N 78-177 Norte','BOGOTÁ DC','BOGOTÁ DC','17778','COLOMBIA',78,78,2),(79,'2021-04-23','2021-04-25','2021-04-25','Transportadora','Alianza Geek','Carrera 178 N 79-178 Este','BOGOTÁ DC','BOGOTÁ DC','17879','COLOMBIA',79,79,1),(80,'2021-04-24','2021-04-26','2021-04-26','Transportadora','Alianza Geek','Carrera 179 N 80-179 Oeste','MADRID','MADRID','17980','ESPAÑA',80,80,2),(81,'2021-04-25','2021-04-27','2021-04-27','Transportadora','Alianza Geek','Carrera 180 N 81-180 Sur','SANTIAGO DE CHILE','SANTIAGO DE CHILE','18081','CHILE',81,81,1),(82,'2021-04-26','2021-04-28','2021-04-28','Transportadora','Alianza Geek','Carrera 181 N 82-181 Norte','BOGOTÁ DC','BOGOTÁ DC','18182','COLOMBIA',82,82,2),(83,'2021-04-27','2021-04-29','2021-04-29','Transportadora','Alianza Geek','Carrera 182 N 83-182 Este','BOGOTÁ DC','BOGOTÁ DC','18283','COLOMBIA',83,83,1),(84,'2021-04-28','2021-04-30','2021-04-30','Transportadora','Alianza Geek','Carrera 183 N 84-183 Oeste','BOGOTÁ DC','BOGOTÁ DC','18384','COLOMBIA',84,84,2),(85,'2021-04-29','2021-04-30','2021-04-30','Transportadora','Alianza Geek','Carrera 184 N 85-184 Sur','BOGOTÁ DC','BOGOTÁ DC','18485','COLOMBIA',85,85,1),(86,'2021-05-01','2021-05-03','2021-05-03','Transportadora','Alianza Geek','Carrera 185 N 86-185 Norte','BOGOTÁ DC','BOGOTÁ DC','18586','COLOMBIA',86,86,2),(87,'2021-05-02','2021-05-04','2021-05-04','Transportadora','Alianza Geek','Carrera 186 N 87-186 Este','BOGOTÁ DC','BOGOTÁ DC','18687','COLOMBIA',87,87,1),(88,'2021-05-03','2021-05-05','2021-05-05','Transportadora','Alianza Geek','Carrera 187 N 88-187 Oeste','BOGOTÁ DC','BOGOTÁ DC','18788','COLOMBIA',88,88,2),(89,'2021-05-04','2021-05-06','2021-05-06','Transportadora','Alianza Geek','Carrera 188 N 89-188 Sur','SANTIAGO DE CHILE','SANTIAGO DE CHILE','18889','CHILE',89,89,1),(90,'2021-05-05','2021-05-07','2021-05-07','Transportadora','Alianza Geek','Carrera 189 N 90-189 Norte','BOGOTÁ DC','BOGOTÁ DC','18990','COLOMBIA',90,90,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) NOT NULL,
  `quantityPerUnit` int unsigned DEFAULT NULL,
  `unitPrice` decimal(12,2) unsigned NOT NULL,
  `unitsInStock` int(3) unsigned zerofill NOT NULL,
  `discontinued` tinyint(1) NOT NULL DEFAULT '0',
  `supplier_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Samsung Galaxy S21',NULL,2500000.00,050,0,1,11),(2,'Samsung Galaxy A31128',NULL,769000.00,060,0,1,11),(3,'Huawei Y9 Prime Lite',NULL,709000.95,010,0,1,11),(4,'Xiaomi Redmi 9A',NULL,362900.30,054,0,1,11),(5,'Mi Redmi 9a',NULL,399900.00,010,0,1,11),(6,'Moto e6 play',NULL,339900.00,052,0,1,11),(7,'Balón de fútbol Golty No 5',NULL,74900.00,085,0,1,1),(8,'Trotadora caminadora electronica de banda correr trotar walk',NULL,1050000.00,005,0,1,1),(9,'Camiseta para hombre cuello redondo',NULL,13592.00,050,0,1,2),(10,'Chaqueta casual hombre',NULL,199900.00,036,0,1,2),(11,'Blazers abrigos manga larga mujer',NULL,66378.00,012,0,1,2),(12,'Escritorio markekit baptistine wengue',NULL,169900.00,003,0,1,3),(13,'Sofá cama Geoge con brazos',NULL,749000.00,005,0,1,4),(14,'Televisor Samsumg FLAT LED Smart TV 32',NULL,1059900.00,022,0,1,5),(15,'Nevera mabe no frost congelador superior',NULL,1019900.00,012,0,1,5),(16,'Asus portatil E410',NULL,1349000.00,002,0,1,6),(17,'Lenovo Yoga C940',NULL,4499990.00,001,0,1,6),(18,'Centro de entretenimiento Cantabria Revore',NULL,504900.00,013,0,1,7),(19,'Blanqueador Clorox Original',NULL,8190.00,120,0,1,8),(20,'Pulsera plata 925 Brazalete mujer elegante',NULL,70990.00,014,0,1,9),(21,'Robot Agua TOY LOGIC',NULL,269900.00,002,0,1,10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Servientrega','3132223366'),(2,'FedEx','3142223355');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) NOT NULL,
  `contactName` varchar(100) NOT NULL,
  `contactTitle` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `postalCode` varchar(100) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `homePage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Asperos Geek SAS','Geek','Asperos',NULL,NULL,NULL,NULL,'Colombia','3144444444',NULL,NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-03 17:32:55
