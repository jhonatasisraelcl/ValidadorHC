CREATE DATABASE  IF NOT EXISTS `validaxml` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `validaxml`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametro` (
  `idParametro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `obrigatorio` int(11) NOT NULL,
  `conteudo` int(11) NOT NULL,
  PRIMARY KEY (`idParametro`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES (1,'src',1,1),(2,'alt',1,1),(3,'html',1,0),(4,'dir ',1,1),(5,'cite',1,1),(6,'datetime',1,0),(7,'accept-charset',0,1),(8,'action',0,1),(9,'autocomplete',0,1),(10,'enctype',0,1),(11,'method',0,1),(12,'name',0,1),(13,'novalidate',0,1),(14,'target',0,1),(15,'accept',0,1),(16,'autofocus',0,1),(17,'checked',0,1),(18,'dirname',0,1),(19,'disabled',0,1),(20,'form',0,1),(21,'formaction',0,1),(22,'formenctype',0,1),(23,'formmethod',0,1),(24,'formnovalidate',0,1),(25,'height',0,1),(26,'list',0,1),(27,'max',0,1),(28,'maxlength',0,1),(29,'min',0,1),(30,'multiple',0,1),(31,'readonly',0,1),(32,'pattern',0,1),(33,'placeholder',0,1),(34,'required',0,1),(35,'size',0,1),(36,'step',0,1),(37,'type',1,1),(38,'value',0,1),(39,'width',0,1),(41,'cols',0,1),(42,'rows',0,1),(43,'wrap',0,1),(44,'formtarget',0,1),(45,'label',0,1),(46,'selected',0,0),(47,'for',1,1),(48,'challenge',0,0),(49,'keytype',1,1),(50,'sandbox',0,0),(51,'srcdoc',0,1),(52,'coords',1,1),(53,'download	',0,1),(54,'href',1,1),(55,'hreflang',0,1),(56,'media',0,1),(57,'rel	',0,1),(58,'shape',0,1),(60,'autoplay',0,0),(61,'controls',0,0),(62,'loop',0,0),(63,'muted',0,0),(64,'preload',0,1),(65,'srcset',0,1),(66,'default',0,0),(67,'kind ',0,1),(68,'srclang',0,1),(69,'poster',0,1),(70,'crossorigin',0,1),(71,'sizes',0,1),(72,'reversed',0,1),(73,'start',0,1),(74,'command	',0,1),(75,'icon',0,1),(76,'radiogroup',0,1),(77,'sortable',1,0),(78,'abbr',0,1),(79,'colspan	',0,1),(80,'headers',0,1),(81,'rowspan',0,1),(82,'scope',0,1),(83,'sorted',0,1),(84,'span',0,1),(85,'scoped',1,0),(87,'open',1,0),(88,'charset',0,1),(89,'content',0,1),(90,'http-equiv',0,1),(91,'async',0,1),(92,'defer',0,1),(93,'usemap',0,1);
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `idTAG` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `conteudo` int(11) NOT NULL,
  `vazia` int(11) NOT NULL,
  PRIMARY KEY (`idTAG`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'img',0,1),(2,'script',1,0),(3,'html',0,0),(4,'!DOCTYPE',0,0),(5,'title',0,0),(6,'body',0,0),(7,'h1',1,0),(8,'h2',1,0),(9,'h3',1,0),(10,'h4',1,0),(11,'h5',1,0),(12,'h6',1,0),(13,'p',1,0),(15,'br',0,1),(16,'hr',0,1),(17,'abbr',1,0),(18,'address',1,0),(19,'b',0,0),(20,'bdi',0,0),(21,'bdo',1,0),(22,'blockquote ',1,0),(23,'cite',0,0),(24,'code',1,0),(25,'del',1,0),(26,'dfn',1,0),(27,'em',1,0),(28,'i',1,0),(29,'ins',1,0),(30,'kbd',1,0),(31,'mark',1,0),(32,'meter',1,0),(34,'progress',1,0),(35,'q',1,0),(36,'rp',1,0),(37,'rt',1,0),(38,'ruby',1,0),(39,'s',1,0),(40,'samp',1,0),(41,'small',1,0),(42,'strong',1,0),(43,'sub',1,0),(44,'sup',1,0),(45,'time',1,0),(46,'u',1,0),(47,'var',1,0),(48,'wbr',1,1),(49,'form',1,0),(50,'input',1,1),(51,'textarea',1,0),(52,'button',1,0),(53,'select',1,0),(54,'optgroup',1,0),(55,'option',1,0),(56,'label',1,0),(57,'fieldset',1,0),(58,'legend',1,0),(59,'datalist',1,0),(60,'keygen',1,0),(61,'output',1,0),(62,'iframe',1,0),(63,'map',1,0),(64,'area',0,1),(65,'canvas',1,0),(66,'figcaption',0,0),(67,'figure',0,0),(68,'picture',0,0),(69,'audio',1,0),(70,'source',1,1),(71,'track',1,1),(72,'video',1,0),(73,'a',1,0),(74,'link',1,1),(75,'nav',1,0),(76,'ul',1,0),(77,'ol',1,0),(78,'li',1,0),(79,'dl',1,0),(80,'dt',1,0),(81,'dd',1,0),(82,'menu',1,0),(83,'menuitem',1,0),(84,'table',1,0),(85,'caption',1,0),(86,'tr',1,0),(87,'td',1,0),(88,'thead',1,0),(89,'tbody',1,0),(90,'tfoot',1,0),(91,'col',1,1),(92,'colgroup',1,0),(93,'style',1,0),(94,'div',1,0),(95,'span',1,0),(96,'header',1,0),(97,'footer',1,0),(98,'main',1,0),(99,'section',1,0),(100,'article',1,0),(101,'aside',1,0),(102,'details',1,0),(103,'dialog',1,0),(104,'summary',1,0),(105,'data',1,0),(106,'head',1,0),(107,'meta',1,1),(108,'base',1,1),(109,'script',1,0),(110,'noscript',1,0),(111,'embed',1,1),(112,'object',1,0),(113,'param',1,1),(114,'th',1,0);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_parametro`
--

DROP TABLE IF EXISTS `tag_parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_parametro` (
  `idTag_Parametro` int(11) NOT NULL AUTO_INCREMENT,
  `idTAG` int(11) NOT NULL,
  `idPARAMETRO` int(11) NOT NULL,
  PRIMARY KEY (`idTag_Parametro`),
  KEY `FK_PARAMETRO2_TAG2_PARAMETRO2_idx` (`idPARAMETRO`),
  KEY `FK_TAG2_TAG2_PARAMETRO2_idx` (`idTAG`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_parametro`
--

LOCK TABLES `tag_parametro` WRITE;
/*!40000 ALTER TABLE `tag_parametro` DISABLE KEYS */;
INSERT INTO `tag_parametro` VALUES (1,1,1),(2,1,2),(3,2,1),(4,4,3),(5,21,4),(6,22,5),(7,29,5),(8,29,6),(9,49,7),(10,49,8),(11,49,9),(12,49,10),(13,49,11),(14,49,12),(15,49,13),(16,49,14),(17,50,15),(18,50,2),(19,50,9),(20,50,16),(21,50,17),(22,50,18),(23,50,19),(24,50,20),(25,50,21),(26,50,22),(27,50,23),(28,50,24),(29,50,25),(30,50,26),(31,50,27),(32,50,28),(33,50,29),(34,50,30),(35,50,12),(36,50,32),(37,50,33),(38,50,31),(53,50,34),(54,50,1),(55,50,35),(56,50,36),(57,50,37),(58,50,38),(59,50,39),(60,51,16),(72,51,40),(73,51,18),(74,51,19),(75,51,20),(76,51,28),(77,51,12),(78,51,33),(79,51,31),(80,51,34),(81,51,43),(82,51,42),(83,52,16),(84,52,19),(85,52,20),(86,52,21),(87,52,22),(88,52,23),(89,52,24),(90,52,44),(91,52,12),(92,52,37),(93,52,38),(94,53,16),(95,53,19),(96,53,20),(97,53,30),(98,53,12),(99,53,34),(100,53,35),(101,54,19),(102,54,45),(103,55,19),(104,55,45),(105,55,46),(106,55,38),(107,56,47),(108,56,20),(109,57,19),(110,57,20),(111,57,12),(112,60,16),(113,60,48),(114,60,19),(115,60,20),(116,60,49),(117,60,12),(118,61,47),(119,61,20),(120,61,12),(121,62,12),(122,62,50),(123,62,1),(124,62,51),(125,62,39),(126,63,12),(127,64,2),(128,64,52),(129,64,53),(130,64,54),(131,64,55),(132,64,56),(133,64,57),(134,64,58),(135,64,14),(136,64,37),(137,65,25),(138,65,39),(139,69,60),(140,69,61),(141,69,62),(142,69,63),(143,69,64),(144,69,1),(145,70,1),(146,70,65),(147,70,56),(148,70,35),(149,70,37),(150,71,66),(151,71,67),(152,71,45),(153,71,1),(154,71,68),(155,72,60),(156,72,61),(157,72,25),(158,72,62),(159,72,63),(160,72,69),(161,72,64),(162,72,1),(163,72,39),(164,73,53),(165,73,54),(166,73,55),(167,73,56),(168,73,57),(169,73,14),(170,73,37),(171,74,70),(172,74,54),(173,74,55),(174,74,56),(175,74,57),(176,74,71),(177,74,37),(178,77,72),(179,77,73),(180,77,37),(181,78,38),(182,82,45),(183,82,37),(185,83,74),(186,83,66),(187,83,19),(188,83,75),(189,83,45),(190,83,76),(191,83,37),(192,84,77),(193,86,78),(194,114,79),(195,86,80),(196,86,81),(197,86,82),(198,86,83),(199,87,79),(200,87,80),(201,87,81),(202,91,84),(203,92,84),(204,93,56),(205,93,85),(206,93,37),(207,102,87),(208,103,87),(209,105,38),(210,107,88),(211,107,89),(212,107,90),(213,107,12),(214,108,54),(215,108,14),(216,109,91),(217,109,88),(218,109,92),(219,109,1),(220,109,37),(221,111,25),(222,111,1),(223,111,37),(224,111,39),(225,112,20),(226,112,25),(227,112,12),(228,112,37),(229,112,93),(230,112,39),(231,113,12),(232,113,38),(233,25,5),(234,35,5),(235,51,41);
/*!40000 ALTER TABLE `tag_parametro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-21 13:31:48
