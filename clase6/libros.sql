-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
                           `idAutor` smallint unsigned NOT NULL AUTO_INCREMENT,
                           `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `nacionalidad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                           PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Isaac Asimov','Estadounidense'),(2,'Stanislav Lem','Polaco'),(3,'Terry Pratchett','Británico'),(4,'J. R. R. Tolkien','Británico'),(5,'Howard Phillips Lovecraft','Estadounidense'),(6,'Michael Crichton','Estadounidense'),(7,'Stephen Fry','Británico'),(8,'Michio Kaku','Estadounidense'),(9,'Stephen Hawking','Británico'),(10,'Carl Sagan','Estadounidense'),(11,'Bill Bryson','Estadounidense'),(12,'Neil Gaiman','Británico'),(13,'Douglas Adams','Británico'),(14,'Ursula K. Le Guin','Estadounidense'),(15,'Philip K. Dick','Estadounidense'),(16,'Frank Herbert','Estadounidense'),(17,'Ray Bradbury','Estadounidense'),(18,'Arthur C. Clarke','Británico'),(19,'Jorge Luis Borges','Argentino'),(20,'Julio Cortázar','Argentino');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
                               `idEditorial` tinyint unsigned NOT NULL AUTO_INCREMENT,
                               `editorial` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                               PRIMARY KEY (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Penguin Random House'),(2,'Planeta'),(3,'Anagrama'),(4,'Alianza Editorial'),(5,'Tusquets'),(6,'Minotauro'),(7,'Crítica'),(8,'Debate'),(9,'Debolsillo'),(10,'Salamandra');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
                           `idGenero` tinyint unsigned NOT NULL AUTO_INCREMENT,
                           `genero` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                           PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Ciencia Ficción'),(2,'Fantasía'),(3,'Terror'),(4,'Divulgación Científica'),(5,'Humor'),(6,'Biografía'),(7,'Historia'),(8,'Ensayo'),(9,'Ficción Histórica'),(10,'Aventura');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
                          `idLibro` smallint unsigned NOT NULL AUTO_INCREMENT,
                          `titulo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `anio` smallint DEFAULT NULL,
                          `idGenero` tinyint unsigned NOT NULL,
                          `idEditorial` tinyint unsigned NOT NULL,
                          `isbn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                          PRIMARY KEY (`idLibro`),
                          UNIQUE KEY `isbn` (`isbn`),
                          KEY `idGenero` (`idGenero`),
                          KEY `idEditorial` (`idEditorial`),
                          CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`),
                          CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`idEditorial`) REFERENCES `editoriales` (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Mort',1987,2,6,'978-0552131063'),(2,'El Color de la Magia',1983,2,6,'978-0552124751'),(3,'Buenos Presagios',1990,2,6,'978-0552137034'),(4,'Dioses Menores',1992,2,6,'978-0552140294'),(5,'Cosmos',1980,4,7,'978-0345331359'),(6,'Relatos del Piloto Pirx',1968,1,6,'978-8445077429'),(7,'Solaris',1961,1,6,'978-8445077436'),(8,'La Llamada de Cthulhu',1928,3,4,'978-8420674308'),(9,'Las Montañas de la Locura',1931,3,4,'978-8420674315'),(10,'El Silmarillion',1977,2,6,'978-8445077443'),(11,'El Hobbit',1937,2,6,'978-8445077450'),(12,'Parque Jurásico',1990,1,1,'978-8497930451'),(13,'Breve Historia del Tiempo',1988,4,7,'978-8408053309'),(14,'El Futuro de la Humanidad',2018,4,8,'978-8483068014'),(15,'Fundación',1951,1,6,'978-8445077467'),(16,'Yo, Robot',1950,1,6,'978-8445077474'),(17,'El Fin de la Eternidad',1955,1,6,'978-8445077481'),(18,'Segunda Fundación',1953,1,6,'978-8445077498'),(19,'El Señor de los Anillos: La Comunidad del Anillo',1954,2,6,'978-8445077504'),(20,'El Señor de los Anillos: Las Dos Torres',1954,2,6,'978-8445077511'),(21,'El Señor de los Anillos: El Retorno del Rey',1955,2,6,'978-8445077528'),(22,'Mundodisco: El Segador',1991,2,6,'978-8445077535'),(23,'Mundodisco: Hombres de Armas',1993,2,6,'978-8445077542'),(24,'El Horror de Dunwich',1929,3,4,'978-8420674322'),(25,'La Sombra sobre Innsmouth',1931,3,4,'978-8420674339'),(26,'Esfera',1987,1,1,'978-8497930468'),(27,'Presa',2002,1,1,'978-8497930475'),(28,'Un Poco de Todo',2010,5,3,'978-8433977236'),(29,'Mitología',2017,5,3,'978-8433977243'),(30,'Universos Paralelos',2005,4,7,'978-8483068021'),(31,'La Física del Futuro',2011,4,7,'978-8483068038'),(32,'El Universo Elegante',2003,4,7,'978-8483068045'),(33,'Un Paseo por el Bosque',1998,4,7,'978-8483068052'),(34,'Breve Historia de Casi Todo',2003,4,7,'978-8483068069'),(35,'Guía del Autoestopista Galáctico',1979,1,9,'978-8445077559'),(36,'El Restaurante del Fin del Mundo',1980,1,9,'978-8445077566'),(37,'Buenos Presagios (Edición Especial)',1990,2,6,'978-8445077573'),(38,'Sandman: Preludios y Nocturnos',1989,2,10,'978-8445077580'),(39,'American Gods',2001,2,10,'978-8445077597'),(40,'La Mano Izquierda de la Oscuridad',1969,1,6,'978-8445077603'),(41,'Los Desposeídos',1974,1,6,'978-8445077610'),(42,'¿Sueñan los Androides con Ovejas Eléctricas?',1968,1,6,'978-8445077627'),(43,'Minority Report',1956,1,6,'978-8445077634'),(44,'Dune',1965,1,6,'978-8445077641'),(45,'El Mesías de Dune',1969,1,6,'978-8445077658'),(46,'Fahrenheit 451',1953,1,6,'978-8445077665'),(47,'Crónicas Marcianas',1950,1,6,'978-8445077672'),(48,'2001: Una Odisea del Espacio',1968,1,6,'978-8445077689'),(49,'Cita con Rama',1973,1,6,'978-8445077696'),(50,'Ficciones',1944,8,4,'978-8420674346'),(51,'El Aleph',1949,8,4,'978-8420674353'),(52,'Rayuela',1963,9,4,'978-8420674360'),(53,'Bestiario',1951,8,4,'978-8420674377'),(54,'Historia Universal de la Infamia',1935,8,4,'978-8420674384'),(55,'Casa Tomada',1946,8,4,'978-8420674391'),(56,'El Nombre del Viento',2007,2,1,'978-8497930482'),(57,'Neuromante',1984,1,6,'978-8445077702'),(58,'1984',1949,1,4,'978-8420674407'),(59,'Un Mundo Feliz',1932,1,4,'978-8420674414'),(60,'La Máquina del Tiempo',1895,1,4,'978-8420674421'),(61,'La Guerra de los Mundos',1898,1,4,'978-8420674438'),(62,'20.000 Leguas de Viaje Submarino',1870,10,4,'978-8420674445'),(63,'Viaje al Centro de la Tierra',1864,10,4,'978-8420674452'),(64,'Frankenstein',1818,3,4,'978-8420674469'),(65,'Drácula',1897,3,4,'978-8420674476');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros_autores`
--

DROP TABLE IF EXISTS `libros_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros_autores` (
                                  `idLibro` smallint unsigned NOT NULL,
                                  `idAutor` smallint unsigned NOT NULL,
                                  PRIMARY KEY (`idLibro`,`idAutor`),
                                  KEY `idAutor` (`idAutor`),
                                  CONSTRAINT `libros_autores_ibfk_1` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`),
                                  CONSTRAINT `libros_autores_ibfk_2` FOREIGN KEY (`idAutor`) REFERENCES `autores` (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros_autores`
--

LOCK TABLES `libros_autores` WRITE;
/*!40000 ALTER TABLE `libros_autores` DISABLE KEYS */;
INSERT INTO `libros_autores` VALUES (15,1),(16,1),(17,1),(18,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(22,3),(23,3),(33,3),(10,4),(11,4),(19,4),(20,4),(21,4),(8,5),(9,5),(24,5),(25,5),(12,6),(26,6),(27,6),(28,7),(29,7),(14,8),(30,8),(31,8),(13,9),(5,10),(32,11),(33,11),(3,12),(33,12),(36,12),(37,12),(34,13),(35,13),(38,14),(39,14),(40,15),(41,15),(42,16),(43,16),(44,17),(45,17),(46,18),(47,18),(48,19),(49,19),(53,19),(50,20),(51,20),(52,20);
/*!40000 ALTER TABLE `libros_autores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-07  9:08:30