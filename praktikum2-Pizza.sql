
USE `1339623`;

--
-- Table structure for table `Adressen`
--

DROP TABLE IF EXISTS `Adressen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adressen` (
  `Adress_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Strasse` varchar(255) NOT NULL,
  `Hausnummer` varchar(255) NOT NULL,
  `Postleitzahl` int(5) unsigned zerofill NOT NULL,
  `Stadt` varchar(255) NOT NULL,
  PRIMARY KEY (`Adress_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adressen`
--

LOCK TABLES `Adressen` WRITE;
/*!40000 ALTER TABLE `Adressen` DISABLE KEYS */;
INSERT INTO `Adressen` VALUES (1,'Neustrasse','123',01234,'Berlin'),(2,'Ginsterweg','14',42781,'Haan'),(3,'Saarstraße','9',58332,'Schwelm'),(4,'Aufm Baum','1',00001,'Gallisches Dorf'),(5,'Links','3',12345,'Kleinbonum'),(6,'Baker Street','221b',00001,'London'),(7,'Downing Street','10',01122,'London'),(8,'Rainer-Gruenter-Str','21',42119,'Wuppertal'),(9,'Gaußstr. ','20',42119,'Wuppertal'),(10,'Max-Horkheimer-Str.','167-169',42119,'Wuppertal'),(11,'Cronenberger Straße','256',42119,'Wuppertal'),(12,'Max-Horkheimer Straße','10-16',42119,'Wuppertal'),(13,'Ostersiepen','9-11',42119,'Wuppertal'),(14,'Ostersiepen','15',42119,'Wuppertal'),(15,'Max-Horkheimer Straße','18',42119,'Wuppertal'),(16,'Schwelmer Str.','41',42897,'Remscheid'),(17,'Steinhauser Straße','2',42339,'Wuppertal'),(18,'Unterdörnen','32',42283,'Wuppertal'),(19,'Gräfrather Str.','124',42329,'Wuppertal');
/*!40000 ALTER TABLE `Adressen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bestellungen`
--

DROP TABLE IF EXISTS `Bestellungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bestellungen` (
  `Bestellungsnummer` int(11) NOT NULL AUTO_INCREMENT,
  `Kundennummer` int(11) NOT NULL,
  `Bestellzeitpunkt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` varchar(255) NOT NULL DEFAULT 'bestellt',
  PRIMARY KEY (`Bestellungsnummer`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bestellungen`
--

LOCK TABLES `Bestellungen` WRITE;
/*!40000 ALTER TABLE `Bestellungen` DISABLE KEYS */;
INSERT INTO `Bestellungen` VALUES (6,2,'2011-05-23 00:43:09','bestellt'),(5,1,'2011-05-22 23:44:07','bestellt'),(4,1,'2011-05-22 23:42:17','bestellt'),(7,1,'2011-05-23 12:32:21','bestellt');
/*!40000 ALTER TABLE `Bestellungen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gerichte`
--

DROP TABLE IF EXISTS `Gerichte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gerichte` (
  `Gericht_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Preis` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Gericht_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gerichte`
--

LOCK TABLES `Gerichte` WRITE;
/*!40000 ALTER TABLE `Gerichte` DISABLE KEYS */;
INSERT INTO `Gerichte` VALUES (1,'Pizza Margherita','2.50'),(2,'Pizza Cipolla','4.00'),(3,'Pizza Salami','4.00'),(4,'Pizza Spinaci','4.00'),(5,'Pizza Prosciutto','4.00'),(6,'Pizza Napoli','3.50'),(7,'Pizza Funghi','4.00'),(8,'Pizza Tonno','4.00'),(9,'Pizza Pirata','4.50'),(10,'Pizza Tonno-Cipolla','4.50'),(11,'Pizza Prociutto-Funghi','4.50'),(12,'Pizza Hawaii','4.50'),(13,'Pizza Quattro-Stagione','4.50'),(14,'Pizza Diavolo','5.00'),(15,'Calzone','5.00'),(16,'Pizza Italia','4.50'),(17,'Pizza Capricciosa','5.00'),(18,'Pizza Gyros','6.00'),(19,'Pizza Frutti die Mare','5.50'),(20,'Pizza Antonio','6.00'),(21,'Pizza Scampi','5.50'),(22,'Pizza Broccoli','4.00'),(23,'Pizza Contadina','5.00'),(24,'Pizza Tropical','4.50'),(25,'Pizza-Brötchen','2.00');
/*!40000 ALTER TABLE `Gerichte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Konten`
--

DROP TABLE IF EXISTS `Konten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Konten` (
  `Kundennummer` int(11) unsigned zerofill NOT NULL,
  `Kontonummer` int(10) unsigned zerofill NOT NULL,
  `Bankleitzahl` int(8) unsigned zerofill NOT NULL,
  PRIMARY KEY (`Kundennummer`,`Kontonummer`,`Bankleitzahl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Konten`
--

LOCK TABLES `Konten` WRITE;
/*!40000 ALTER TABLE `Konten` DISABLE KEYS */;
INSERT INTO `Konten` VALUES (00000000001,0190331331,08154711),(00000000006,0000262775,33040001),(00000000007,0007265287,33060098),(00000000008,0000725517,33050000),(00000000009,0000374528,33040001),(00000000010,0000975267,33020190),(00000000013,0000625418,33060098),(00000000015,0000637248,33010111),(00000000016,0000636395,33040001),(00000000017,0000163826,33050000),(00000000018,0000635618,33060098);
/*!40000 ALTER TABLE `Konten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kunden`
--

DROP TABLE IF EXISTS `Kunden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kunden` (
  `Kundennummer` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Adress_ID` int(11) NOT NULL,
  `Vorname` varchar(255) NOT NULL,
  `Nachname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Passwort` varchar(255) NOT NULL,
  `Telefonnummer` varchar(255) NOT NULL,
  PRIMARY KEY (`Kundennummer`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kunden`
--

LOCK TABLES `Kunden` WRITE;
/*!40000 ALTER TABLE `Kunden` DISABLE KEYS */;
INSERT INTO `Kunden` VALUES (00000000001,1,'Joe','Tester','joe.tester@home.de','geheim','0190 / 331 332'),(00000000002,2,'Elfriede','Schulz','eschulz@GMX.de','geheim','020245326'),(00000000003,3,'Hugo','Heinz','hh@Web.de','geheim','0176463747'),(00000000004,4,'Trou','badix','tb@gallier.de','geheim',''),(00000000005,5,'Cäsar','Römer','','geheim',''),(00000000006,6,'Sherlock','Holmes','','geheim',''),(00000000007,7,'David','Cameron','prem@gov.Co.uk','geheim',''),(00000000008,8,'Nils','potthoff','potthoff@Uni-wuppertal.de','geheim','02024391335'),(00000000009,9,'Hannibal','Lecter','','geheim',''),(00000000010,19,'Till','Tillipaul','','geheim',''),(00000000011,10,'Darth','Vader','','geheim',''),(00000000012,11,'Draco','Malfoy','','geheim',''),(00000000013,12,'Franz','Moor von','','geheim',''),(00000000014,13,'Edward','Hyde','','geheim',''),(00000000015,14,'William','Styker','','geheim',''),(00000000016,15,'Max','Mustermann','','geheim',''),(00000000017,16,'Roswitha','Musterfrau','','geheim',''),(00000000018,17,'Jane','Doe','','geheim','');
/*!40000 ALTER TABLE `Kunden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lieferanten`
--

DROP TABLE IF EXISTS `Lieferanten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lieferanten` (
  `Lieferanten_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Adress ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Telefonnummer` varchar(255) NOT NULL,
  PRIMARY KEY (`Lieferanten_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lieferanten`
--

LOCK TABLES `Lieferanten` WRITE;
/*!40000 ALTER TABLE `Lieferanten` DISABLE KEYS */;
INSERT INTO `Lieferanten` VALUES (1,2,'Handelshof Haan GmbH & Co. KG','02129 913-0'),(2,3,'Metro Schwelm','01805-63876-0');
/*!40000 ALTER TABLE `Lieferanten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Positionen`
--

DROP TABLE IF EXISTS `Positionen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Positionen` (
  `Bestellungsnummer` int(11) NOT NULL,
  `Gericht_ID` int(11) NOT NULL,
  `Anzahl` int(11) NOT NULL,
  `Zwischensumme` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Bestellungsnummer`,`Gericht_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positionen`
--

LOCK TABLES `Positionen` WRITE;
/*!40000 ALTER TABLE `Positionen` DISABLE KEYS */;
INSERT INTO `Positionen` VALUES (7,1,1,'2.50'),(6,12,2,'9.00'),(6,6,1,'3.50'),(5,1,1,'2.50'),(4,25,1,'2.00'),(4,8,1,'4.00'),(4,3,1,'4.00'),(4,1,2,'5.00'),(7,2,1,'4.00'),(7,3,3,'12.00');
/*!40000 ALTER TABLE `Positionen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rezepte`
--

DROP TABLE IF EXISTS `Rezepte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rezepte` (
  `Gericht_ID` int(11) NOT NULL,
  `Zutaten_ID` int(11) NOT NULL,
  `Menge` int(11) NOT NULL,
  PRIMARY KEY (`Gericht_ID`,`Zutaten_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rezepte`
--

LOCK TABLES `Rezepte` WRITE;
/*!40000 ALTER TABLE `Rezepte` DISABLE KEYS */;
INSERT INTO `Rezepte` VALUES (1,1,1),(1,2,1),(1,3,1),(2,1,1),(2,2,1),(2,3,1),(2,4,1),(3,1,1),(3,2,1),(3,3,1),(3,5,1),(4,1,1),(4,2,1),(4,3,1),(4,6,1),(4,7,1),(5,1,1),(5,2,1),(5,3,1),(5,8,1),(6,1,1),(6,2,1),(6,3,1),(6,9,1),(6,10,1),(7,1,1),(7,2,1),(7,3,1),(7,11,1),(8,1,1),(8,2,1),(8,3,1),(8,12,1),(9,1,1),(9,2,1),(9,3,1),(9,13,1),(10,1,1),(10,2,1),(10,3,1),(10,4,1),(10,12,1),(11,1,1),(11,2,1),(11,3,1),(11,8,1),(11,11,1),(12,1,1),(12,2,1),(12,3,1),(12,8,1),(12,14,1),(13,1,1),(13,2,1),(13,3,1),(13,8,1),(13,11,1),(13,12,1),(13,15,1),(14,1,1),(14,2,1),(14,3,1),(14,8,1),(14,11,1),(14,15,1),(14,16,1),(15,1,1),(15,2,1),(15,3,1),(15,8,1),(15,11,1),(15,12,1),(16,1,1),(16,2,1),(16,3,1),(16,4,1),(16,6,1),(16,7,1),(16,17,1),(17,1,1),(17,2,1),(17,3,1),(17,4,1),(17,8,1),(17,11,1),(17,15,1),(18,1,1),(18,2,1),(18,3,1),(18,4,1),(18,18,1),(18,19,1),(19,1,1),(19,2,1),(19,3,1),(19,7,1),(19,20,1),(20,1,1),(20,2,1),(20,3,1),(20,8,1),(20,9,1),(20,11,1),(20,12,1),(20,21,1),(21,1,1),(21,2,1),(21,3,1),(21,7,1),(21,22,1),(22,1,1),(22,2,1),(22,3,1),(22,7,1),(22,23,1),(23,1,1),(23,2,1),(23,3,1),(23,6,1),(23,7,1),(23,15,1),(23,23,1),(24,1,1),(24,2,1),(24,3,1),(24,14,1),(24,24,1),(24,25,1),(25,26,1);
/*!40000 ALTER TABLE `Rezepte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Temp_Positionen`
--

DROP TABLE IF EXISTS `Temp_Positionen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Temp_Positionen` (
  `Kundennummer` int(11) unsigned zerofill NOT NULL,
  `Gericht_ID` int(11) NOT NULL,
  `Anzahl` int(11) NOT NULL,
  `Zwischensumme` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Kundennummer`,`Gericht_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Temp_Positionen`
--

LOCK TABLES `Temp_Positionen` WRITE;
/*!40000 ALTER TABLE `Temp_Positionen` DISABLE KEYS */;
INSERT INTO Temp_Positionen VALUES (2,1,3,7.50),(2,5,7,28.0);
/*!40000 ALTER TABLE `Temp_Positionen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zutaten`
--

DROP TABLE IF EXISTS `Zutaten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zutaten` (
  `Zutaten_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Lieferanten ID` int(11) NOT NULL DEFAULT '1',
  `Name` varchar(255) NOT NULL,
  `Vorratsmenge` int(11) NOT NULL DEFAULT '100',
  `Mindestmenge` int(11) NOT NULL DEFAULT '25',
  PRIMARY KEY (`Zutaten_ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zutaten`
--

LOCK TABLES `Zutaten` WRITE;
/*!40000 ALTER TABLE `Zutaten` DISABLE KEYS */;
INSERT INTO `Zutaten` VALUES (1,1,'Tomaten',100,25),(2,1,'Käse',100,25),(3,1,'Oregano',100,25),(4,1,'Zwiebeln',100,25),(5,1,'Salami',100,25),(6,1,'Spinat',100,25),(7,1,'Knoblauch',100,25),(8,1,'Schinken',100,25),(9,1,'Kapern',100,25),(10,1,'Sardellen',100,25),(11,1,'Champignons',100,25),(12,1,'Thunfisch',100,25),(13,1,'Hackfleisch',100,25),(14,1,'Ananas',100,25),(15,1,'Artischocken',100,25),(16,1,'Peperoni',100,25),(17,1,'Paprika',100,25),(18,1,'Gyros',100,25),(19,1,'Tzatziki',100,25),(20,1,'Meeresfrüchte',100,25),(21,1,'Oliven',100,25),(22,1,'Scampi',100,25),(23,1,'Broccoli',100,25),(24,1,'Pfirsiche',100,25),(25,1,'Preiselbeeren',100,25),(26,1,'Kräuterbutter',100,25);
/*!40000 ALTER TABLE `Zutaten` ENABLE KEYS */;
UNLOCK TABLES;
