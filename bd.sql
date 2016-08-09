CREATE DATABASE  IF NOT EXISTS `horarios_isc_enero` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `horarios_isc_enero`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: horarios_isc_enero
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `carga_semestral`
--

DROP TABLE IF EXISTS `carga_semestral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carga_semestral` (
  `Clave` varchar(3) NOT NULL,
  `Materia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga_semestral`
--

LOCK TABLES `carga_semestral` WRITE;
/*!40000 ALTER TABLE `carga_semestral` DISABLE KEYS */;
INSERT INTO `carga_semestral` VALUES ('1P1','Cálculo Diferencial'),('1P2','Cálculo Integral'),('1P3','Cálculo Véctorial'),('1P4','Ecuaciones Diferenciales'),('1P5','Fundamentos de Telecomunicaciones'),('1P6','Sistemas Operativos'),('1P7','Taller de Sistemas Operativos'),('1P8','Programación Lógica y Funcional'),('1P9','Inteligencia Artificial'),('2P1','Fundamentos de Programación'),('2P2','Programación Orientada a Objetos'),('2P3','Estructura de datos'),('2P4','Métodos Numéricos'),('2P5','Fundamentos de Ingeníeria de Software'),('2P6','Redes de Computadoras'),('2P7','Conmutación y Enrutamiento en Redes de Datos'),('2P8','Administración de Redes'),('2P9','Aplicacioens web para Dispositivos Móviles'),('3P1','Taller de Ética'),('3P2','Contabilidad Financiera'),('3P3','Cultura Empresarial'),('3P4','Tópicos Avanzados de Programación'),('3P5','Simulación'),('3P6','Graficación'),('3P7','Taller de Investigación I'),('3P8','Taller de Investigación II'),('3P9','Programación de Dispositivos Móviles Plataforma II'),('4P1','Matemáticas Discretas'),('4P2','Química'),('4P3','Investigación de Operaciones'),('4P4','Fundamentos de Bases de datos'),('4P5','Taller de Bases de Datos'),('4P6','Administración de Bases de Datos'),('4P7','Fundamentos de las Comunicaciones Móviles'),('4P8','Programación Web'),('5P1','Taller de Administración'),('5P2','Algebra Lineal'),('5P3','Desarrollo Sustentable'),('5P4','Lenguajes y Autómatas I'),('5P5','Lenguajes y Autómatas II'),('5P6','Ingeníeria de Software'),('5P7','Gestiónde Proyectos de Software'),('5P8','Programación de Dispositivos Móviles Plataforma I'),('6P1','Fundamentos de Investigación'),('6P2','Probabilidad y Estadistica'),('6P3','Física General'),('6P4','Principios Eléctricos y Aplicaciones Digitales'),('6P5','Arquitectura de Computadoras'),('6P6','Lenguajes de Interfaz'),('6P7','Sistemas Programables'),('6P8','Desarrollo de Emprendedores'),('7P1',' '),('7P2',' '),('7P3',' '),('7P4',' '),('7P5',' '),('7P6',' '),('7P7','Sistemas Operativos para Dispositivos Móviles');
/*!40000 ALTER TABLE `carga_semestral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) DEFAULT NULL,
  `Viernes` varchar(10) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'1P1',5,'CB','CÁLCULO DIFERENCIAL','16','16',1),(2,'2P1',5,'SC','FUNDAMENTOS DE PROGRAMACIÓN','14','14',2),(3,'4P1',5,'SC','MATEMÁTICAS DISCRETAS','15','15',3),(4,'6P1',4,'SC','FUNDAMENTOS DE INVESTIGACIÓN','16',NULL,4),(5,'1P1',5,'CB','CÁLCULO DIFERENCIAL','17','16',5),(6,'5P1',4,'EA','TALLER DE ADMINISTRACIÓN','18',NULL,6),(7,'3P1',4,'EA','TALLER DE ÉTICA','19',NULL,6),(8,'3P2',4,'EA','CONTABILIDAD FINANCIERA','8',NULL,71),(9,'1P2',5,'CB','CÁLCULO INTEGRAL','9','9',8),(10,'2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','10','10',9),(11,'4P2',4,'CB','QUÍMICA','12',NULL,72),(12,'6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','12','12',11),(13,'5P2',5,'CB','ÁLGEBRA LINEAL','13','11',11),(14,'6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','8','10',12),(15,'4P2',4,'CB','QUÍMICA','19',NULL,73),(16,'3P2',4,'EA','CONTABILIDAD FINANCIERA','16',NULL,20),(17,'1P2',5,'CB','CÁLCULO INTEGRAL','11','11',8),(18,'5P2',5,'CB','ÁLGEBRA LINEAL','12','12',14),(19,'2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','13','13',15),(20,'1P2',5,'CB','CÁLCULO INTEGRAL','14','14',16),(21,'6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','15','15',12),(23,'5P2',5,'CB','ÁLGEBRA LINEAL','17','17',17),(24,'3P2',4,'EA','CONTABILIDAD FINANCIERA','8',NULL,15),(25,'2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','19','16',19),(26,'5P2',5,'CB','ÁLGEBRA LINEAL','14','14',15),(27,'2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','15','15',2),(28,'1P2',5,'CB','CÁLCULO INTEGRAL','16','16',17),(31,'6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','19','18',15),(32,'3P3',4,'EA','CULTURA EMPRESARIAL','11',NULL,67),(33,'6P3',5,'CB','FÍSICA GENERAL','9','9',16),(34,'1P3',5,'CB','CÁLCULO VECTORIAL','9','9',11),(35,'2P3',5,'SC','ESTRUCTURA DE DATOS','12','12',37),(36,'5P3',5,'CB','DESARROLLO SUSTENTABLE','10','10',65),(37,'6P3',5,'SC','FISICA GENERAL','8','8',42),(38,'2P3',5,'SC','ESTRUCTURA DE DATOS','11','11',37),(39,'1P3',5,'CB','CÁLCULO VECTORIAL','12','12',64),(40,'3P3',4,'EA','CULTURA EMPRESARIAL','10',NULL,68),(41,'6P3',5,'CB','FÍSICA GENERAL','16','16',24),(42,'4P3',4,'II','INVESTIGACIÓN DE OPERACIONES','13',NULL,70),(43,'1P4',5,'CB','ECUACIONES DIFERENCIALES','7','7',0),(44,'4P4',5,'SC','FUNDAMENTOS DE BASES DE DATOS','8','8',25),(45,'3P4',5,'SC','TÓPICOS AVANZADOS DE PROGRAMACIÓN','9','9',26),(46,'6P4',5,'SC','PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES','10','10',27),(47,'2P4',4,'CB','MÉTODOS NUMÉRICOS','11',NULL,16),(48,'5P4',5,'SC','LENGUAJES Y AUTÓMATAS I','12','11',28),(49,'3P4',5,'SC','TÓPICOS AVANZADOS DE PROGRAMACIÓN','13','14',9),(50,'2P4',4,'CB','MÉTODOS NUMÉRICOS','14',NULL,13),(51,'4P4',5,'SC','FUNDAMENTOS DE BASES DE DATOS','15','15',29),(52,'1P4',5,'CB','ESCUACIONES DIFERENCIALES','16','16',30),(53,'6P4',5,'SC','PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES','17','17',4),(54,'5P4',5,'SC','LENGUAJES Y AUTÓMATAS I','18','18',19),(55,'2P4',4,'CB','MÉTODOS NUMÉRICOS','10',NULL,12),(56,'3P4',5,'SC','TÓPICOS AVANZADOS DE PROGRAMACIÓN','16','16',15),(57,'4P4',5,'SC','FUNDAMENTOS DE BASES DE DATOS','14','14',24),(58,'1P5',4,'SC','FUNDAMENTOS DE TELECOMUNICACIONES','8',NULL,31),(59,'5P5',5,'SC','LENGUAJES Y AUTÓMATAS II','9','9',28),(60,'3P5',5,'II','SIMULACIÓN','10','10',15),(61,'4P5',4,'SC','TALLER DE BASES DE DATOS','11',NULL,29),(62,'6P5',5,'SC','ARQUITECTURA DE COMPUTADORAS','12','12',27),(63,'2P5',4,'SC','FUNDAMENTOS DE INGENIERÍA DE SOFTWARE','13',NULL,32),(64,'6P5',5,'SC','ARQUITECTURA DE COMPUTADORAS','14','14',27),(65,'5P5',5,'SC','LENGUAJES Y AUTÓMATAS II','19','19',33),(66,'4P6',5,'SC','ADMINISTRACIÓN DE BASES DE DATOS','8','9',24),(67,'3P6',4,'SC','GRAFICACIÓN','9',NULL,34),(68,'1P6',4,'SC','SISTEMAS OPERATIVOS','10',NULL,28),(69,'5P6',5,'SC','INGENIERÍA DE SOFTWARE','11','11',32),(70,'2P6',5,'SC','REDES DE COMPUTADORAS','12','8',35),(71,'6P6',4,'SC','LENGUAJES DE INTERFAZ','13',NULL,36),(72,'1P6',4,'SC','SISTEMAS OPERATIVOS','13',NULL,24),(73,'5P6',5,'SC','INGENIERÍA DE SOFTWARE','14','14',34),(74,'6P6',4,'SC','LENGUAJES DE INTERFAZ','15',NULL,28),(75,'4P6',5,'SC','ADMINISTRACIÓN DE BASES DE DATOS','16','16',32),(76,'3P6',4,'SC','GRAFICACIÓN','17',NULL,35),(77,'2P6',5,'SC','REDES DE COMPUTADORAS','18','17',36),(78,'DM1',4,'SC','FUNDAMENTOS DE LAS COMUNICACIONES MÓVILES (ME)','7',NULL,31),(79,'3P7',4,'SB','TALLER DE INVESTIGACIÓN I','8',NULL,15),(80,'2P7',5,'SC','CONMUTACIÓN Y ENRUTAMIENTO DE REDES','9','9',35),(81,'DM2',4,'SC','SISTEMAS OPERATIVOSPARA DISPOSITIVOS MÓVILES (ME)','10',NULL,37),(82,'1P7',4,'SC','TALLER DE SISTEMAS OPERATIVOS','11',NULL,35),(83,'6P7',4,'SC','SISTEMAS PROGRAMABLES','12',NULL,36),(84,'4P7',6,'SC','GESTIÓN DE PROYECTOS DE SOFTWARE','13','10',38),(85,'4P8',5,'SC','PROGRAMACIÓN WEB','8','10',39),(86,'1P8',4,'SC','PROGRAMACIÓN LÓGICA Y FUNCIONAL','9',NULL,15),(87,'DM4',4,'SC','DESARROLLO DE EMPRENDEDORES','10',NULL,40),(88,'DM3',5,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA I','11','9',34),(89,'3P8',4,'SB','TALLER DE INVESTIGACIÓN II','12',NULL,40),(90,'2P8',4,'SC','ADMINISTRACIÓN DE REDES','13',NULL,41),(91,'DM4',4,'SC','DESARROLLO DE EMPRENDEDORES','14',NULL,40),(92,'3P8',4,'SB','TALLER DE INVESTIGACIÓN II','18',NULL,4),(93,'2P8',4,'SC','ADMINISTRACIÓN DE REDES','17',NULL,33),(94,'4P8',5,'SC','PROGRAMACIÓN WEB','15','15',15),(95,'DM3',5,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA I','16','16',15),(96,'DM6',4,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA II','8',NULL,26),(97,'1P9',4,'SC','INTELIGENCIA ARTIFICIAL','9',NULL,15),(98,'DM5',4,'SC','APLICACIONES WEB PARA DISPOSITIVOS MÓVILES','10',NULL,34),(99,'1P9',4,'SC','INTELIGENCIA ARTIFICIAL','13',NULL,15),(100,'DM5',4,'SC','APLICACIONES WEB PARA DISPOSITIVOS MÓVILES','14',NULL,15),(101,'DM6',4,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA II','15',NULL,15),(102,'6P3',5,'SC','FISICA GENERAL','9','9',42),(103,'1P3',5,'CB','CÁLCULO VECTORIAL','14','14',64),(104,'5P3',5,'CB','DESARROLLO SUSTENTABLE','13','13',66),(105,'5P3',5,'CB','DESARROLLO SUSTENTABLE','13','13',65),(106,'3P3',4,'EA','CULTURA EMPRESARIAL','18',NULL,69),(107,'2P3',5,'SC','ESTRUCTURA DE DATOS','17','17',15),(108,'4P3',4,'II','INVESTIGACIÓN DE OPERACIONES','14',NULL,15),(109,'4P3',4,'II','INVESTIGACIÓN DE OPERACIONES','15',NULL,15);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docentes` (
  `iddocentes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddocentes`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'Andrés Hernández'),(2,'Adriana Guigón'),(3,'Miriam García'),(4,'Ernesto Leal'),(5,'Rafael Sánchez Ruelas'),(6,'Sergio Hernández'),(7,'Tomás Burciaga'),(8,'Mónica Aguirre'),(9,'Héctor Fuentes'),(10,'Martina Chávez'),(11,'Verónica Valenzuela'),(12,'Héctor Medrano'),(13,'Laura Ortega'),(14,'Manuel Domínguez'),(15,'SM'),(16,'Griselda Armendáriz'),(17,'Alberto Barraza'),(18,'Gustavo Soto'),(19,'Oscar Molina'),(20,'Graciela Chávez'),(21,'Antonio Muñoz'),(22,'Gustavo Sepulveda'),(23,'Elsa Quintanilla'),(24,'Ignacio López'),(25,'Angélica Vargas'),(26,'Carlos Rubio'),(27,'Luis Raúl Arzola'),(28,'Lorena Chavira'),(29,'Teresa De La Rosa'),(30,'Alberto Camacho'),(31,'Royce Rodríguez'),(32,'Héctor Flores'),(33,'Joel Quintana'),(34,'Luis Horacio González'),(35,'Angélica García'),(36,'Jesús Fernández'),(37,'Rubén Hernández'),(38,'Martín González'),(39,'Luis Acosta'),(40,'Judith Ruiz'),(41,'Jorge Ruiz'),(42,'Lina Santos'),(64,'Jorge Amézquita'),(65,'Colmenero Sujo'),(66,'Gallegos Angélica'),(67,'Muñoz Daniel'),(68,'Urias Rosa'),(69,'García Braulio'),(70,'Anaya Pavel'),(71,'González Rosario'),(72,'Acosta Jil'),(73,'Muñoz Raymundo');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'horarios_isc_enero'
--

--
-- Dumping routines for database 'horarios_isc_enero'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-08 18:07:17
