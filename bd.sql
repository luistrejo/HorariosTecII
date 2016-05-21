-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: horarios_isc_enero
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
INSERT INTO `carga_semestral` VALUES ('1P1','Cálculo Diferencial'),('1P2','Cálculo Integral'),('1P3','Cálculo Véctorial'),('1P4','Ecuaciones Diferenciales'),('1P5','Fundamentos de Telecomunicaciones'),('1P6','Sistemas Operativos'),('1P7','Taller de Sistemas Operativos'),('1P8','Programación Lógica y Funcional'),('1P9','Inteligencia Artificial'),('2P1','Fundamentos de Programación'),('2P2','Programación Orientada Objetos'),('2P3','Estructura de datos'),('2P4','Métodos Numéricos'),('2P5','Fundamentos de Ingeníeria de Software'),('2P6','Redes de Computadoras'),('2P7','Conmutación y Enrutamiento en Redes de Datos'),('2P8','Administración de Redes'),('2P9','Aplicacioens web para Dispositivos Móviles'),('3P1','Taller de Ética'),('3P2','Contabilidad Financiera'),('3P3','Cultura Empresarial'),('3P4','Tópicos Avanzados de Programación'),('3P5','Simulación'),('3P6','Graficación'),('3P7','Taller de Investigación I'),('3P8','Taller de Investigación II'),('3P9','Programación de Dispositivos Móviles Plataforma II'),('4P1','Matemáticas Discretas'),('4P2','Química'),('4P3','Investigación de Operaciones'),('4P4','Fundamentos de Bases de datos'),('4P5','Taller de Bases de Datos'),('4P6','Administración de Bases de Datos'),('4P7','Fundamentos de las Comunicaciones Móviles'),('4P8','Programación Web'),('5P1','Taller de Administración'),('5P2','Algebra Lineal'),('5P3','Desarrollo Sustentable'),('5P4','Lenguajes y Autómatas I'),('5P5','Lenguajes y Autómatas II'),('5P6','Ingeníeria de Software'),('5P7','Gestiónde Proyectos de Software'),('5P8','Programación de Dispositivos Móviles Plataforma I'),('6P1','Fundamentos de Investigación'),('6P2','Probabilidad y Estadistica'),('6P3','Física General'),('6P4','Principios Eléctricos y Aplicaciones Digitales'),('6P5','Arquitectura de Computadoras'),('6P6','Lenguajes de Interfaz'),('6P7','Sistemas Programables'),('6P8','Desarrollo de Emprendedores'),('7P1',' '),('7P2',' '),('7P3',' '),('7P4',' '),('7P5',' '),('7P6',' '),('7P7','Sistemas Operativos para Dispositivos Móviles');
/*!40000 ALTER TABLE `carga_semestral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuarto_semestre_a`
--

DROP TABLE IF EXISTS `cuarto_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuarto_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuarto_semestre_a`
--

LOCK TABLES `cuarto_semestre_a` WRITE;
/*!40000 ALTER TABLE `cuarto_semestre_a` DISABLE KEYS */;
INSERT INTO `cuarto_semestre_a` VALUES ('1P4',5,'CB','ECUACIONES DIFERENCIALES','7','7','7','7','7','Andrés Hernández'),('4P4',5,'SC','FUNDAMENTOS DE BASES DE DATOS','8/S1','8/S1','8/S1','8','8/S1','Angélica Vargas'),('3P4',5,'SC','TÓPICOS AVANZADOS DE PROGRAMACIÓN','9/S4','9/S4','9/S4','9/S4','9/F2','Carlos Rubio'),('6P4',5,'SC','PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES','10','10','10/B4','10/B4','10/B4','Luis Raúl Arzola'),('2P4',4,'CB','MÉTODOS NUMÉRICOS','11','11','11','11',' ','Griselda Armendáriz'),('5P4',5,'SC','LENGUAJES Y AUTÓMATAS I','12','12','12','12','11','Lorena Chavira');
/*!40000 ALTER TABLE `cuarto_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuarto_semestre_b`
--

DROP TABLE IF EXISTS `cuarto_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuarto_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuarto_semestre_b`
--

LOCK TABLES `cuarto_semestre_b` WRITE;
/*!40000 ALTER TABLE `cuarto_semestre_b` DISABLE KEYS */;
INSERT INTO `cuarto_semestre_b` VALUES ('3P4',5,'SC','TÓPICOS AVANZADOS DE PROGRAMACIÓN','13/S6','13/S6','13/S6','13/S6','14','Héctor Fuentes'),('2P4',4,'CB','MÉTODOS NUMÉRICOS','14','14','14','14',' ','Laura Ortega'),('4P4',5,'SC','FUNDAMENTOS DE BASES DE DATOS','15/S1','15/S1','15/S6','15','15','Teresa De La Rosa'),('1P4',5,'CB','ESCUACIONES DIFERENCIALES','16','16','16','16','16','Alberto Camacho'),('6P4',5,'SC','PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES','17/B4','17/B4','17/B4','17/B4','17/B4','Ernesto Leal'),('5P4',5,'SC','LENGUAJES Y AUTÓMATAS I','18','18','18','18','18','Óscar Molina');
/*!40000 ALTER TABLE `cuarto_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuarto_semestre_c`
--

DROP TABLE IF EXISTS `cuarto_semestre_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuarto_semestre_c` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuarto_semestre_c`
--

LOCK TABLES `cuarto_semestre_c` WRITE;
/*!40000 ALTER TABLE `cuarto_semestre_c` DISABLE KEYS */;
INSERT INTO `cuarto_semestre_c` VALUES ('2P4',4,'CB','MÉTODOS NUMÉRICOS','10/F5','10/F5','10/F5','10/F5',' ','Héctor Medrano'),('3P4',5,'SC','TÓPICOS AVANZADOS DE PROGRAMACIÓN','16/S2','16/S2','16/S2','16/S2','16/S2','SM'),('4P4',5,'SC','FUNDAMENTOS DE BASES DE DATOS','14/S6','14/S6','14/S6','14/S6','14/S6','Ignacio López');
/*!40000 ALTER TABLE `cuarto_semestre_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noveno_semestre_a`
--

DROP TABLE IF EXISTS `noveno_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noveno_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noveno_semestre_a`
--

LOCK TABLES `noveno_semestre_a` WRITE;
/*!40000 ALTER TABLE `noveno_semestre_a` DISABLE KEYS */;
INSERT INTO `noveno_semestre_a` VALUES ('DM6',4,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA II','8/S4','8/S4','8/S4','8/S4',' ','Carlos Rubio'),('1P9',4,'SC','INTELIGENCIA ARTIFICIAL','9/F5','9/F5','9/F5','9/F5',' ','SM'),('DM5',4,'SC','APLICACIONES WEB PARA DISPOSITIVOS MÓVILES','10/S6','10/S1','10/S1','10/F4',' ','Luis Horacio González');
/*!40000 ALTER TABLE `noveno_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noveno_semestre_b`
--

DROP TABLE IF EXISTS `noveno_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noveno_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noveno_semestre_b`
--

LOCK TABLES `noveno_semestre_b` WRITE;
/*!40000 ALTER TABLE `noveno_semestre_b` DISABLE KEYS */;
INSERT INTO `noveno_semestre_b` VALUES ('1P9',4,'SC','INTELIGENCIA ARTIFICIAL','13/F5','13/F5','13/F5','13/F5',' ','SM'),('DM5',4,'SC','APLICACIONES WEB PARA DISPOSITIVOS MÓVILES','14/S4','14/S4','14/S4','14/S4',' ','SM'),('DM6',4,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA II','15/S4','15/S4','15/S4','15/S4',' ','SM');
/*!40000 ALTER TABLE `noveno_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `octavo_semestre_a`
--

DROP TABLE IF EXISTS `octavo_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `octavo_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `octavo_semestre_a`
--

LOCK TABLES `octavo_semestre_a` WRITE;
/*!40000 ALTER TABLE `octavo_semestre_a` DISABLE KEYS */;
INSERT INTO `octavo_semestre_a` VALUES ('4P8',5,'SC','PROGRAMACIÓN WEB','8','8/S2','8/S2','8/S2','10/S2','Luis Acosta'),('1P8',4,'SC','PROGRAMACIÓN LÓGICA Y FUNCIONAL','9','9','9','9',' ','SM'),('DM4',4,'SC','DESARROLLO DE EMPRENDEDORES','10','10','10','10',' ','Judith Ruiz'),('DM3',5,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA I','11/S4','11/S4','11/S4','11/S4','9/S4','Luis Horacio González'),('3P8',4,'SB','TALLER DE INVESTIGACIÓN II','12','12','12','12',' ','Judith Ruiz'),('2P8',4,'SC','ADMINISTRACIÓN DE REDES','13/S5','13/S5','13/S5','13/S5',' ','Jorge Ruiz');
/*!40000 ALTER TABLE `octavo_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `octavo_semestre_b`
--

DROP TABLE IF EXISTS `octavo_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `octavo_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `octavo_semestre_b`
--

LOCK TABLES `octavo_semestre_b` WRITE;
/*!40000 ALTER TABLE `octavo_semestre_b` DISABLE KEYS */;
INSERT INTO `octavo_semestre_b` VALUES ('DM4',4,'SC','DESARROLLO DE EMPRENDEDORES','14','14','14','14',' ','Judith Ruiz'),('3P8',4,'SB','TALLER DE INVESTIGACIÓN II','18','18','18','18',' ','Ernesto Leal'),('2P8',4,'SC','ADMINISTRACIÓN DE REDES','17/S5','17/S5','17/S5','17/S5',' ','Joel Quintana'),('4P8',5,'SC','PROGRAMACIÓN WEB','15/S6','15/S6','15/S6','15/S6','15/S6','SM'),('DM3',5,'SC','PROGRAMACIÓN DE DISPOSITIVOS MÓVILES PLATAFORMA I','16/S4','16/S4','16/S4','16/S4','16/S4','SM');
/*!40000 ALTER TABLE `octavo_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primer_semestre`
--

DROP TABLE IF EXISTS `primer_semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primer_semestre` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primer_semestre`
--

LOCK TABLES `primer_semestre` WRITE;
/*!40000 ALTER TABLE `primer_semestre` DISABLE KEYS */;
INSERT INTO `primer_semestre` VALUES ('1P1',5,'CB','CÁLCULO DIFERENCIAL','16/F7','16/F7','16/F7','16/F7','16/F7','Andrés Hernández');
/*!40000 ALTER TABLE `primer_semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primer_semestre_a`
--

DROP TABLE IF EXISTS `primer_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primer_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primer_semestre_a`
--

LOCK TABLES `primer_semestre_a` WRITE;
/*!40000 ALTER TABLE `primer_semestre_a` DISABLE KEYS */;
INSERT INTO `primer_semestre_a` VALUES ('2P1',5,'SC','FUNDAMENTOS DE PROGRAMACIÓN','14','14','14/S1','14/S1','14/S1','Adriana Guigón'),('4P1',5,'SC','MATEMÁTICAS DISCRETAS','15','15','15','15','15','Miriam García'),('6P1',4,'SC','FUNDAMENTOS DE INVESTIGACIÓN','16','16','16','16',' ','Ernesto Leal'),('1P1',5,'CB','CÁLCULO DIFERENCIAL','17','17','17','17','16','Rafael Sánchez Ruelas'),('5P1',4,'EA','TALLER DE ADMINISTRACIÓN','18','18','18','18',' ','Sergio Hernández'),('3P1',4,'EA','TALLER DE ÉTICA','19','19','19','19',' ','Sergio Hernández');
/*!40000 ALTER TABLE `primer_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quinto_semestre_a`
--

DROP TABLE IF EXISTS `quinto_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quinto_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quinto_semestre_a`
--

LOCK TABLES `quinto_semestre_a` WRITE;
/*!40000 ALTER TABLE `quinto_semestre_a` DISABLE KEYS */;
INSERT INTO `quinto_semestre_a` VALUES ('1P5',4,'SC','FUNDAMENTOS DE TELECOMUNICACIONES','8','8','8','8',' ','Royce Rodríguez'),('5P5',5,'SC','LENGUAJES Y AUTÓMATAS II','9','9','9','9','9','Lorena Chavira'),('3P5',5,'II','SIMULACIÓN','10','10','10','10','10','SM'),('4P5',4,'SC','TALLER DE BASES DE DATOS','11/S2','11/S2','11/S2','11/S2',' ','Teresa De La Rosa'),('6P5',5,'SC','ARQUITECTURA DE COMPUTADORAS','12','12','12/B4','12/B4','12/B4','Luis Raúl Arzola'),('2P5',4,'SC','FUNDAMENTOS DE INGENIERÍA DE SOFTWARE','13','13','13','13',' ','Héctor Flores');
/*!40000 ALTER TABLE `quinto_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quinto_semestre_b`
--

DROP TABLE IF EXISTS `quinto_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quinto_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quinto_semestre_b`
--

LOCK TABLES `quinto_semestre_b` WRITE;
/*!40000 ALTER TABLE `quinto_semestre_b` DISABLE KEYS */;
INSERT INTO `quinto_semestre_b` VALUES ('6P5',5,'SC','ARQUITECTURA DE COMPUTADORAS','14/B4','14/B4','14/B4','14/B4','14/B4','Luis Raúl Arzola'),('5P5',5,'SC','LENGUAJES Y AUTÓMATAS II','19/F7','19/F7','19/F7','19/F7','19/F7','Joel Quintana');
/*!40000 ALTER TABLE `quinto_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segundo_semestre_a`
--

DROP TABLE IF EXISTS `segundo_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segundo_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segundo_semestre_a`
--

LOCK TABLES `segundo_semestre_a` WRITE;
/*!40000 ALTER TABLE `segundo_semestre_a` DISABLE KEYS */;
INSERT INTO `segundo_semestre_a` VALUES ('3P2',4,'EA','CONTABILIDAD FINANCIERA','8','8','8','8',' ','Tomás Burciaga'),('1P2',5,'CB','CÁLCULO INTEGRAL','9','9','9','9','9','Mónica Aguirre'),('2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','10/S2','10/S2','10/S2','10/S2','10/S2','Héctor Fuentes'),('4P2',4,'CB','QUÍMICA','11','11','11','11',' ','Martina Chávez'),('6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','12','12','12','12','12','Verónica Valenzuela'),('5P2',5,'CB','ÁLGEBRA LINEAL','13','13','13','13','11','Verónica Valenzuela');
/*!40000 ALTER TABLE `segundo_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segundo_semestre_b`
--

DROP TABLE IF EXISTS `segundo_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segundo_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segundo_semestre_b`
--

LOCK TABLES `segundo_semestre_b` WRITE;
/*!40000 ALTER TABLE `segundo_semestre_b` DISABLE KEYS */;
INSERT INTO `segundo_semestre_b` VALUES ('6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','8','8','8','8','10','Héctor Medrano'),('4P2',4,'CB','QUÍMICA','9','9','9','9',' ','Laura Ortega'),('3P2',4,'EA','CONTABILIDAD FINANCIERA','10','10','10','10',' ','Tomás Burciaga'),('1P2',5,'CB','CÁLCULO INTEGRAL','11','11','11','11','11','Mónica Aguirre'),('5P2',5,'CB','ÁLGEBRA LINEAL','12','12','12','12','12','Manuel Domínguez'),('2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','13/S2','13/S2','13/S2','13/S2','13','SM');
/*!40000 ALTER TABLE `segundo_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segundo_semestre_c`
--

DROP TABLE IF EXISTS `segundo_semestre_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segundo_semestre_c` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segundo_semestre_c`
--

LOCK TABLES `segundo_semestre_c` WRITE;
/*!40000 ALTER TABLE `segundo_semestre_c` DISABLE KEYS */;
INSERT INTO `segundo_semestre_c` VALUES ('1P2',5,'CB','CÁLCULO INTEGRAL','14','14','14','14','14','Griselda Armendáriz'),('6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','15','15','15','15','15','Héctor Medrano'),('4P2',4,'CB','QUÍMICA','16','16','16','16',' ','SM'),('5P2',5,'CB','ÁLGEBRA LINEAL','17','17','17','17','17','Alberto Barraza'),('3P2',4,'EA','CONTABILIDAD FINANCIERA','18','18','18','18',' ','Gustavo Soto'),('2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','19/S1','19/S1','19/S1','19/S1','16','Oscar Molina');
/*!40000 ALTER TABLE `segundo_semestre_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segundo_semestre_d`
--

DROP TABLE IF EXISTS `segundo_semestre_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segundo_semestre_d` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segundo_semestre_d`
--

LOCK TABLES `segundo_semestre_d` WRITE;
/*!40000 ALTER TABLE `segundo_semestre_d` DISABLE KEYS */;
INSERT INTO `segundo_semestre_d` VALUES ('5P2',5,'CB','ÁLGEBRA LINEAL','14','14','14','14','14','SM'),('2P2',5,'SC','PROGRAMACIÓN ORIENTADA A OBJETOS','15','15','15/S1','15/S1','15/S1','Adriana Guigón'),('1P2',5,'CB','CÁLCULO INTEGRAL','16','16','16','16','16','Alberto Barraza'),('3P2',4,'EA','CONTABILIDAD FINANCIERA','17','17','17','17',' ','Graciela Chávez'),('4P2',4,'CB','QUÍMICA','18','18','18','18',' ','Antonio Muñoz'),('6P2',5,'CB','PROBABILIDAD Y ESTADÍSTICA','19','19','19','19','18','SM');
/*!40000 ALTER TABLE `segundo_semestre_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `septimo_semestre_a`
--

DROP TABLE IF EXISTS `septimo_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `septimo_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `septimo_semestre_a`
--

LOCK TABLES `septimo_semestre_a` WRITE;
/*!40000 ALTER TABLE `septimo_semestre_a` DISABLE KEYS */;
INSERT INTO `septimo_semestre_a` VALUES ('DM1',4,'SC','FUNDAMENTOS DE LAS COMUNICACIONES MÓVILES (ME)','7','7','7','7',' ','Royce Rodríguez'),('3P7',4,'SB','TALLER DE INVESTIGACIÓN I','8','8','8','8',' ','SM'),('2P7',5,'SC','CONMUTACIÓN Y ENRUTAMIENTO DE REDES','9/S5','9/S5','9/S5','9/S5','9/S5','Angélica García'),('DM2',4,'SC','SISTEMAS OPERATIVOSPARA DISPOSITIVOS MÓVILES (ME)','10/S4','10/S4','10/S4','10/S4',' ','Rubén Hernández'),('1P7',4,'SC','TALLER DE SISTEMAS OPERATIVOS','11/F8','11/F8','11/F8','11/F8',' ','Angélica García'),('6P7',4,'SC','SISTEMAS PROGRAMABLES','12/B4','12/B4','12/F6','12/F6',' ','Jesús Fernández'),('4P7',6,'SC','GESTIÓN DE PROYECTOS DE SOFTWARE','13','13','13','13','10-12/B7','Martín González');
/*!40000 ALTER TABLE `septimo_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexto_semestre_a`
--

DROP TABLE IF EXISTS `sexto_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexto_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexto_semestre_a`
--

LOCK TABLES `sexto_semestre_a` WRITE;
/*!40000 ALTER TABLE `sexto_semestre_a` DISABLE KEYS */;
INSERT INTO `sexto_semestre_a` VALUES ('4P6',5,'SC','ADMINISTRACIÓN DE BASES DE DATOS','8/S2','8/S6','8/S6','8/S1','9/S2','Ignacio López'),('3P6',4,'SC','GRAFICACIÓN','9/S2','9/S2','9/S2','9/S2',' ','Luis Horacio González'),('1P6',4,'SC','SISTEMAS OPERATIVOS','10','10','10','10',' ','Lorena Chavira'),('5P6',5,'SC','INGENIERÍA DE SOFTWARE','11','11','11','11','11','Héctor Flores'),('2P6',5,'SC','REDES DE COMPUTADORAS','12/S5','12/S5','12/S5','12/S5','8','Angélica García'),('6P6',4,'SC','LENGUAJES DE INTERFAZ','13/B4','13/B4','13','13',' ','Jesús Fernández');
/*!40000 ALTER TABLE `sexto_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexto_semestre_b`
--

DROP TABLE IF EXISTS `sexto_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexto_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexto_semestre_b`
--

LOCK TABLES `sexto_semestre_b` WRITE;
/*!40000 ALTER TABLE `sexto_semestre_b` DISABLE KEYS */;
INSERT INTO `sexto_semestre_b` VALUES ('1P6',4,'SC','SISTEMAS OPERATIVOS','13/F8','13/F8','13/F8','13/F8',' ','Ignacio López'),('5P6',5,'SC','INGENIERÍA DE SOFTWARE','14','14','14','14','14','Luis Horacio González'),('6P6',4,'SC','LENGUAJES DE INTERFAZ','15/B4','15/B4','15/B4','15/B4',' ','Lorena Chavira'),('4P6',5,'SC','ADMINISTRACIÓN DE BASES DE DATOS','16/S1','16/S1','16/S1','16/S1','16/S1','Héctor Flores'),('3P6',4,'SC','GRAFICACIÓN','17/S1','17/S1','17/S1','17/S1',' ','Angélica García'),('2P6',5,'SC','REDES DE COMPUTADORAS','18/S5','18/S5','18/S5','18/S5','17/S5','Jesús Fernández');
/*!40000 ALTER TABLE `sexto_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tercer_semestre_a`
--

DROP TABLE IF EXISTS `tercer_semestre_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tercer_semestre_a` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tercer_semestre_a`
--

LOCK TABLES `tercer_semestre_a` WRITE;
/*!40000 ALTER TABLE `tercer_semestre_a` DISABLE KEYS */;
INSERT INTO `tercer_semestre_a` VALUES ('3P3',4,'EA','CULTURA EMPRESARIAL','8','8','8','8',' ','Gustavo Sepulveda'),('6P3',5,'CB','FÍSICA GENERAL','9','9','9','9','9','Griselda Armendáriz'),('1P3',5,'CB','CÁLCULO VECTORIAL','10','10','10','10','10','Elsa Quintanilla'),('2P3',5,'SC','ESTRUCTURA DE DATOS','11/S1','11/S1','11/S1','11/S1','11/S1','Ignacio López'),('5P3',5,'CB','DESARROLLO SUSTENTABLE','12','12','12','12','12','Héctor Medrano'),('4P3',4,'II','INVESTIGACIÓN DE OPERACIONES','13','13','13','13',' ','SM');
/*!40000 ALTER TABLE `tercer_semestre_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tercer_semestre_b`
--

DROP TABLE IF EXISTS `tercer_semestre_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tercer_semestre_b` (
  `Clave` varchar(3) NOT NULL,
  `Creditos` int(1) NOT NULL,
  `Depto` varchar(2) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  `Lunes` varchar(10) NOT NULL,
  `Martes` varchar(10) NOT NULL,
  `Miércoles` varchar(10) NOT NULL,
  `Jueves` varchar(10) NOT NULL,
  `Viernes` varchar(10) NOT NULL,
  `Docente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tercer_semestre_b`
--

LOCK TABLES `tercer_semestre_b` WRITE;
/*!40000 ALTER TABLE `tercer_semestre_b` DISABLE KEYS */;
INSERT INTO `tercer_semestre_b` VALUES ('2P3',5,'SC','ESTRUCTURA DE DATOS','13','13/S1','13/S1','13/S1','13/S1','Gustavo Sepulveda'),('1P3',5,'CB','CÁLCULO VECTORIAL','14','14','14','14','14','Griselda Armendáriz'),('3P3',4,'EA','CULTURA EMPRESARIAL','15','15','15','15',' ','Elsa Quintanilla'),('6P3',5,'CB','FÍSICA GENERAL','16','16','16','16','16','Ignacio López'),('4P3',4,'II','INVESTIGACIÓN DE OPERACIONES','17','17','17','17',' ','Héctor Medrano');
/*!40000 ALTER TABLE `tercer_semestre_b` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-30 15:10:33
