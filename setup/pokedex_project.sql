CREATE DATABASE  IF NOT EXISTS `pokedex_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pokedex_project`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: pokedex_project
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `ability`
--

DROP TABLE IF EXISTS `ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ability` (
  `Ability_ID` int NOT NULL,
  `Ability1` varchar(25) DEFAULT NULL,
  `Ability2` varchar(25) DEFAULT NULL,
  `Hidden_Ability` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Ability_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ability`
--

LOCK TABLES `ability` WRITE;
/*!40000 ALTER TABLE `ability` DISABLE KEYS */;
INSERT INTO `ability` VALUES (1,'Overgrow','None','Chlorophyll'),(2,'Blaze','None','Solar Power'),(3,'Torrent','None','Rain Dish'),(4,'Shield Dust','None','Run Away'),(5,'Shed Skin','None','None'),(6,'Compound Eyes','None','Tinted Lens'),(7,'Swarm','None','Sniper'),(8,'Keen Eye','Tangled Feet','Big Pecks'),(9,'Run Away','Guts','Hustle'),(10,'Keen Eye','None','Sniper'),(11,'Intimidate','Shed Skin','Unnerve'),(12,'Static','None','Lighting Rod'),(13,'Sand Veil','None','Sand Rush'),(14,'Poison Point','Rivalry','Hustle'),(15,'Poison Point','Rivalry','Sheer Force'),(16,'Cute Charm','Magic Guard','Friend Guard'),(17,'Cute Charm','Magic Guard','Unaware'),(18,'Flash Fire','None','Drought'),(19,'Cute Charm','Competitive','Frisk'),(20,'Inner Focus','None','Infiltrator'),(21,'Chlorophyll','None','Run Away'),(22,'Chlorophyll','None','Stench'),(23,'Chlorophyll','None','Effect Spore'),(24,'Effect Spore','Dry Skin','Damp'),(25,'Compound Eyes','Tinted Lens','Run Away'),(26,'Shield Dust','Tinted Lens','Wounder Skin'),(27,'Sand Veil','Arena Trap','Sand Force'),(28,'Pickup','Technician','Unnerve'),(29,'Limber','Technician','Unnerve'),(30,'Damp','Cloud Nine','Swift Swim'),(31,'Vital Spirit','Anger Point','Defiant'),(32,'Intimidate','Flash Fire','Justified'),(33,'Water Absorb','Damp','Swift Swim'),(34,'Synchronize','Inner Focus','Magic Guard'),(35,'Guts','No Guard','Steadfast'),(36,'Chlorophyll','None','Gluttony'),(37,'Clear Body','Liquid Ooze','Rain Dish'),(38,'Rock Head','Sturdy','Sand Veil'),(39,'Run Away','Flash Fire','Flame Body'),(40,'Oblivious','Own Tempo','Regenerator'),(41,'Magnet Pull','Sturdy','Analytic'),(42,'Keen Eye','Inner Focus','Scrappy'),(43,'Run Away','Early Bird','Tangled Feet'),(44,'Thick Fat','Hydration','Ice Body'),(45,'Stench','Sticky Hold','Poison Touch'),(46,'Shell Armor','Skill Link','Overcoat'),(47,'Levitate','None','None'),(48,'Cursed Body','None','None'),(49,'Rock Head','Sturdy','Weak Armor'),(50,'Insomnia','Forewarn','Inner Focus'),(51,'Hyper Cutter','Shell Armor','Sheer Force'),(52,'Soundproof','Static','Aftermath'),(53,'Chlorophyll','None','Harvest'),(54,'Rock Head','Lighting Rod','Battle Armor'),(55,'Limber','Reckless','Unburden'),(56,'Keen Eye','Iron Fist','Inner Focus'),(57,'Own Tempo','Oblivious','Cloud Nine'),(58,'Levitate','Neutralizing Gas','Stench'),(59,'Lighting Rod','Rock Head','Reckless'),(60,'Natural Cure','Serene Grace','Healer'),(61,'Chlorophyll','Leaf Guard','Regenerator'),(62,'Early Bird','Scrappy','Inner Focus'),(63,'Swift Swim','Sniper','Damp'),(64,'Poison Point','Sniper','Damp'),(65,'Swift Swim','Water Veil','Lighting Rod'),(66,'Illuminate','Natural Cure','Analytic'),(67,'Soundproof','Filter','Technician'),(68,'Swarm','Technician','Steadfast'),(69,'Oblivious','Forewarn','Dry Skin'),(70,'Static','None','Vital Spirit'),(71,'Flame Body','None','Vital Spirit'),(72,'Hyper Cutter','Mold Breaker','Moxie'),(73,'Intimidate','Anger Point','Sheer Force'),(74,'Swift Swim','None','Rattled'),(75,'Intimidate','None','Moxie'),(76,'Water Absorb','Shell Armor','Hydration'),(77,'Limber','None','Imposter'),(78,'Run Away','Adaptability','Anticipation'),(79,'Water Absorb','None','Hydration'),(80,'Volt Absorb','None','Quick Feet'),(81,'Flash Fire','None','Guts'),(82,'Trace','Download','Analytic'),(83,'Swift Swim','Shell Armor','Weak Armor'),(84,'Swift Swim','Battle Armor','Weak Armor'),(85,'Rock Head','Pressure','Unnerve'),(86,'Immunity','Thick Fat','Gluttony'),(87,'Pressure','None','Snow Cloak'),(88,'Pressure','None','Static'),(89,'Pressure','None','Flame Body'),(90,'Shed Skin','None','Marvel Scale'),(91,'Inner Focus','None','Multiscale'),(92,'Pressure','None','Unnerve'),(93,'Synchronize','None','None');
/*!40000 ALTER TABLE `ability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `Gender_ID` int NOT NULL,
  `Male_Pct` double DEFAULT NULL,
  `Female_Pct` double DEFAULT NULL,
  PRIMARY KEY (`Gender_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,87.5,12.5),(2,50,50),(3,0,100),(4,100,0),(5,25,75),(6,75,25),(7,0,0);
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `ID` int NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Type_ID` int DEFAULT NULL,
  `Ability_ID` int DEFAULT NULL,
  `Gender_ID` int DEFAULT NULL,
  `Species_ID` int DEFAULT NULL,
  `Height` double DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Base_Total` int DEFAULT NULL,
  `HP` int DEFAULT NULL,
  `Attack` int DEFAULT NULL,
  `Defense` int DEFAULT NULL,
  `Special_Attack` int DEFAULT NULL,
  `Special_Defense` int DEFAULT NULL,
  `Speed` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Type_ID` (`Type_ID`),
  KEY `Ability_ID` (`Ability_ID`),
  KEY `Gender_ID` (`Gender_ID`),
  KEY `Species_ID` (`Species_ID`),
  CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`Type_ID`) REFERENCES `type` (`Type_ID`),
  CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`Ability_ID`) REFERENCES `ability` (`Ability_ID`),
  CONSTRAINT `pokemon_ibfk_3` FOREIGN KEY (`Gender_ID`) REFERENCES `gender` (`Gender_ID`),
  CONSTRAINT `pokemon_ibfk_4` FOREIGN KEY (`Species_ID`) REFERENCES `species` (`Species_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur',1,1,1,1,0.7,6.9,318,45,49,49,65,65,45),(2,'Ivysaur',1,1,1,1,1,13,405,60,62,63,80,80,60),(3,'Venusaur',1,1,1,1,2,100,525,80,82,83,100,100,80),(4,'Charmander',2,2,1,2,0.6,8.5,309,39,52,43,60,50,65),(5,'Charmeleon',2,2,1,3,1.1,19,405,58,64,58,80,65,80),(6,'Charizard',3,2,1,3,1.7,90.5,534,78,84,78,109,85,100),(7,'Squirtle',4,3,1,4,0.5,9,314,44,48,65,50,64,43),(8,'Wartortle',4,3,1,5,1,22.5,405,59,63,80,65,80,58),(9,'Blastoise',4,3,1,6,1.6,85.5,530,79,83,100,85,105,78),(10,'Caterpie',5,4,2,7,0.3,2.9,195,45,30,35,20,20,45),(11,'Metapod',5,5,2,8,0.7,9.9,205,50,20,55,25,25,30),(12,'Butterfree',6,6,2,9,1.1,32,395,60,45,50,90,80,70),(13,'Weedle',7,4,2,10,0.3,3.2,195,40,35,30,20,20,50),(14,'Kakuna',7,5,2,8,0.6,10,205,45,25,50,25,25,35),(15,'Beedrill',7,7,2,11,1,29.5,395,65,80,40,45,80,75),(16,'Pidgey',8,8,2,12,0.3,1.8,251,40,45,40,35,35,56),(17,'Pidgeotto',8,8,2,13,1.1,30,349,63,60,55,50,50,71),(18,'Pidgeot',9,8,2,13,1.5,39.5,479,83,80,75,70,70,91),(19,'Rattata',9,9,2,14,0.3,3.5,253,30,56,35,25,35,72),(20,'Raticate',9,9,2,14,0.7,18.5,413,55,81,60,50,70,97),(21,'Spearow',8,10,2,12,0.3,2,262,40,60,30,31,31,70),(22,'Fearow',8,10,2,15,1.2,38,442,65,90,65,61,61,100),(23,'Ekans',10,11,2,16,2,6.9,288,35,60,44,40,54,55),(24,'Arbok',10,11,2,17,3.5,65,448,60,85,69,65,79,80),(25,'Pikachu',11,12,2,14,0.4,6,320,35,55,30,50,50,90),(26,'Raichu',11,12,2,14,0.8,30,485,60,90,55,90,80,100),(27,'Sandshrew',12,13,2,14,0.6,12,300,50,75,85,20,30,40),(28,'Sandslash',12,13,2,14,1,29.5,450,75,100,110,45,55,65),(29,'Nidoran',10,14,3,18,0.4,7,275,55,47,52,40,40,41),(30,'Nidorina',10,14,3,18,0.8,20,365,70,62,67,55,55,56),(31,'Nidoqueen',13,15,3,19,1.3,60,505,90,82,87,75,85,76),(32,'Nidoran',10,14,4,18,0.5,9,273,46,57,40,40,40,50),(33,'Nidorino',10,14,4,18,0.9,19.5,365,61,72,57,55,55,65),(34,'Nidoking',13,15,4,19,1.4,62,505,81,92,77,85,75,85),(35,'Clefairy',14,16,5,20,0.6,7.5,323,70,45,48,60,65,35),(36,'Clefable',14,17,5,20,1.3,40,483,95,70,73,95,90,60),(37,'Vulpix',2,18,5,21,0.6,9.9,299,38,41,40,50,65,65),(38,'Ninetales',2,18,5,21,1.1,19.9,505,73,76,75,81,100,100),(39,'Jigglypuff',15,16,5,22,0.5,5.5,270,115,45,20,45,25,20),(40,'Wigglytuff',15,19,5,22,1,12,435,140,70,45,85,50,45),(41,'Zubat',16,20,2,23,0.8,7.5,245,40,45,35,30,40,55),(42,'Golbat',16,20,2,23,1.6,55,455,75,80,70,65,75,90),(43,'Oddish',1,21,2,24,0.5,5.4,320,45,50,55,75,65,30),(44,'Gloom',1,22,2,24,0.8,8.6,395,60,65,70,85,75,40),(45,'Vileplume',1,23,2,25,1.2,18.6,490,75,80,85,110,90,50),(46,'Paras',17,24,2,26,0.3,5.4,285,35,70,55,45,55,25),(47,'Parasect',17,24,2,26,1,29.5,405,60,95,80,60,80,30),(48,'Venonat',7,25,2,27,1,30,305,60,55,50,40,55,45),(49,'Venomoth',7,26,2,28,1.5,12.5,450,70,65,60,90,75,90),(50,'Diglett',12,27,2,29,0.2,0.8,265,10,55,25,35,45,95),(51,'Dugtrio',12,27,2,29,0.7,33.3,425,35,80,50,50,70,120),(52,'Meowth',9,28,2,30,0.4,4.2,290,40,45,35,40,40,90),(53,'Persian',9,29,2,31,1,32,440,65,70,60,65,65,115),(54,'Psyduck',4,30,2,32,0.8,19.6,320,50,52,48,65,50,55),(55,'Golduck',4,30,2,32,1.7,76.6,500,80,82,78,95,80,85),(56,'Mankey',18,31,2,33,0.5,28,305,40,80,35,35,45,70),(57,'Primeape',18,31,2,33,1,32,455,65,105,60,60,70,95),(58,'Growlithe',2,32,6,34,0.7,19,350,55,70,45,70,50,60),(59,'Arcanine',2,32,6,35,1.9,155,555,90,110,80,100,80,95),(60,'Poliwag',4,33,2,36,0.6,12.4,300,40,50,40,40,40,90),(61,'Poliwhirl',4,33,2,36,1,20,385,65,65,65,50,50,90),(62,'Poliwrath',19,33,2,36,1.3,54,510,90,85,95,70,90,70),(63,'Abra',20,34,6,37,0.9,19.5,310,25,20,15,105,55,90),(64,'Kadabra',20,34,6,37,1.3,56.5,400,40,35,30,120,70,105),(65,'Alakazam',20,34,6,37,1.5,48,500,55,50,45,135,95,120),(66,'Machop',18,35,6,38,0.8,19.5,305,70,80,50,35,35,35),(67,'Machoke',18,35,6,38,1.5,70.5,405,80,100,70,50,60,45),(68,'Machamp',18,35,6,38,1.6,130,505,90,130,80,65,85,55),(69,'Bellsprout',1,36,2,25,0.7,4,300,50,75,35,70,30,40),(70,'Weepinbell',1,36,2,39,1,6.4,390,65,90,50,85,45,55),(71,'Victreebel',1,36,2,39,1.7,15.5,490,80,105,65,100,70,70),(72,'Tentacool',21,37,2,40,0.9,45.5,335,40,40,35,50,100,70),(73,'Tentacruel',21,37,2,40,1.6,55,515,80,70,65,80,120,100),(74,'Geodude',22,38,2,41,0.4,20,300,40,80,100,30,30,20),(75,'Graveler',22,38,2,41,1,105,390,55,95,115,45,45,35),(76,'Golem',22,38,2,42,1.4,300,495,80,110,130,55,65,45),(77,'Ponyta',2,39,2,43,1,30,410,50,85,55,65,65,90),(78,'Rapidash',2,39,2,43,1.7,95,500,65,100,70,80,80,105),(79,'Slowpoke',23,40,2,44,1.2,36,315,90,65,65,40,40,15),(80,'Slowbro',23,40,2,45,1.6,78.5,490,95,75,110,100,80,30),(81,'Magnemite',24,41,7,46,0.3,6,325,25,35,70,95,55,45),(82,'Magneton',24,41,7,46,1,60,465,50,60,95,120,70,70),(83,'Farfetchd',8,42,2,47,0.8,15,377,52,65,55,58,62,60),(84,'Doduo',8,43,2,48,1.4,39.2,310,35,85,45,35,35,75),(85,'Dodrio',8,43,2,49,1.8,85.2,470,60,110,70,60,60,100),(86,'Seel',4,44,2,50,1.1,90,325,65,45,55,45,70,45),(87,'Dewgong',25,44,2,50,1.7,120,475,90,70,80,70,95,70),(88,'Grimer',10,45,2,51,0.9,30,325,80,80,50,40,50,25),(89,'Muk',10,45,2,51,1.2,30,500,105,105,75,65,100,50),(90,'Shellder',4,46,2,52,0.3,4,305,30,65,100,45,25,40),(91,'Cloyster',25,46,2,52,1.5,132.5,525,50,95,180,85,45,70),(92,'Gastly',26,47,2,53,1.3,0.1,310,30,35,30,100,35,80),(93,'Haunter',26,47,2,53,1.6,0.1,405,45,50,45,115,55,95),(94,'Gengar',26,48,2,54,1.5,40.5,500,60,65,60,130,75,110),(95,'Onix',22,49,2,55,8.8,210,385,35,45,160,30,45,70),(96,'Drowzee',20,50,2,56,1,32.4,328,60,48,45,43,90,42),(97,'Hypno',20,50,2,56,1.6,75.6,483,85,73,70,73,115,67),(98,'Krabby',4,51,2,57,0.4,6.5,325,30,105,90,25,25,50),(99,'Kingler',4,51,2,58,1.3,60,475,55,130,115,50,50,75),(100,'Voltorb',11,52,7,59,0.5,10.4,330,40,30,50,55,55,100),(101,'Electrode',11,52,7,59,1.2,66.6,490,60,50,70,80,80,140),(102,'Exeggcute',27,53,2,60,0.4,2.5,325,60,40,80,60,45,40),(103,'Exeggutor',27,53,2,61,2,120,530,95,95,85,125,75,55),(104,'Cubone',12,54,2,62,0.4,6.5,320,50,50,95,40,50,35),(105,'Marowak',12,54,2,63,1,45,425,60,80,110,50,80,45),(106,'Hitmonlee',18,55,7,64,1.5,49.8,455,50,120,53,35,110,87),(107,'Hitmonchan',18,56,7,65,1.4,50.2,455,50,105,79,35,110,76),(108,'Lickitung',9,47,2,66,1.2,65.5,385,90,55,75,60,75,30),(109,'Koffing',10,58,2,67,0.6,1,340,40,65,95,60,45,35),(110,'Weezing',10,58,2,67,1.2,9.5,490,65,90,120,85,70,60),(111,'Rhyhorn',22,59,2,68,1,115,345,80,85,95,30,30,25),(112,'Rhydon',22,59,2,19,1.9,120,485,105,130,120,45,45,40),(113,'Chansey',9,60,3,60,1.1,34.6,450,250,5,5,35,105,50),(114,'Tangela',28,61,2,69,1,35,435,65,55,115,100,40,60),(115,'Kangaskhan',9,62,3,70,2.2,80,490,105,95,80,40,80,90),(116,'Horsea',4,63,2,71,0.4,8,295,30,40,70,70,25,60),(117,'Seadra',4,64,2,71,1.2,25,440,55,65,95,95,45,85),(118,'Goldeen',4,65,2,72,0.6,15,320,45,67,60,35,50,63),(119,'Seaking',4,65,2,72,1.3,39,450,80,92,65,65,80,68),(120,'Staryu',4,66,7,73,0.8,34.5,340,30,45,55,70,55,85),(121,'Starmie',23,66,7,74,1.1,80,520,60,75,85,100,85,115),(122,'MrMime',29,67,2,75,1.3,54.5,460,40,45,65,100,120,90),(123,'Scyther',6,68,2,76,1.5,56,500,70,110,80,55,80,105),(124,'Jynx',30,69,3,77,1.4,40.6,455,65,50,35,115,95,95),(125,'Electabuzz',11,70,6,78,1.1,30,490,65,83,57,95,85,105),(126,'Magmar',2,71,6,79,1.3,44.5,495,65,95,57,100,85,93),(127,'Pinsir',5,72,2,80,1.5,55,500,65,125,100,55,70,85),(128,'Tauros',9,73,4,81,1.4,88.4,490,75,100,95,40,70,110),(129,'Magikarp',4,74,2,82,0.9,10,200,20,10,55,15,20,80),(130,'Gyarados',31,75,2,83,6.5,235,540,95,125,79,60,100,81),(131,'Lapras',25,76,2,84,2.5,220,535,130,85,80,85,95,60),(132,'Ditto',9,77,7,85,0.3,4,288,48,48,48,48,48,48),(133,'Eevee',9,78,1,86,0.3,6.5,325,55,55,50,45,65,55),(134,'Vaporeon',4,79,1,87,1,29,525,130,65,60,110,95,65),(135,'Jolteon',11,80,1,88,0.8,24.5,525,65,65,60,110,95,130),(136,'Flareon',2,81,1,3,0.9,25,525,65,130,60,95,110,65),(137,'Porygon',9,82,7,89,0.8,36.5,395,65,60,70,85,75,40),(138,'Omanyte',32,83,1,90,0.4,7.5,355,35,40,100,90,55,35),(139,'Omastar',32,83,1,90,1,35,495,70,60,125,115,70,55),(140,'Kabuto',32,84,1,6,0.5,11.5,355,30,80,90,55,45,55),(141,'Kabutops',32,84,1,6,1.3,40.5,495,60,115,105,65,70,80),(142,'Aerodactyl',33,85,1,91,1.8,59,515,80,105,65,60,75,130),(143,'Snorlax',9,86,1,92,2.1,460,540,160,110,65,65,110,30),(144,'Articuno',34,87,7,93,1.7,55.4,580,90,85,100,95,125,85),(145,'Zapdos',35,88,7,78,1.6,52.6,580,90,90,85,125,90,100),(146,'Moltres',3,89,7,3,2,60,580,90,100,90,125,85,90),(147,'Dratini',36,90,2,71,1.8,3.3,300,41,64,45,50,50,50),(148,'Dragonair',36,90,2,71,4,16.5,420,61,84,65,70,70,70),(149,'Dragonite',37,91,2,71,2.2,210,600,91,134,95,100,100,80),(150,'Mewtwo',20,92,7,94,2,122,680,106,110,90,154,90,130),(151,'Mew',20,93,7,95,0.4,4,600,100,100,100,100,100,100);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `Species_ID` int NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Species_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'Seed'),(2,'Lizard'),(3,'Flame'),(4,'Tiny Turtle'),(5,'Turtle'),(6,'Shellfish'),(7,'Worm'),(8,'Cocoon'),(9,'Butterfly'),(10,'Hairy Bug'),(11,'Poison Bee'),(12,'Tiny Bird'),(13,'Bird'),(14,'Mouse'),(15,'Beak'),(16,'Snake'),(17,'Cobra'),(18,'Poison Pin'),(19,'Drill'),(20,'Fairy'),(21,'Fox'),(22,'Balloon'),(23,'Bat'),(24,'Weed'),(25,'Flower'),(26,'Mushroom'),(27,'Insect'),(28,'Poison Moth'),(29,'Mole'),(30,'Scratch Cat'),(31,'Classy Cat'),(32,'Duck'),(33,'Pig Monkey'),(34,'Puppy'),(35,'Legendary'),(36,'Tadpole'),(37,'Psi'),(38,'Superpower'),(39,'Flycatcher'),(40,'Jellyfish'),(41,'Rock'),(42,'Megaton'),(43,'Fire Horse'),(44,'Dopey'),(45,'Hermit Crab'),(46,'Magnet'),(47,'Wild Duck'),(48,'Twin Bird'),(49,'Triple Bird'),(50,'Sea Lion'),(51,'Sludge'),(52,'Bivalve'),(53,'Gas'),(54,'Shadow'),(55,'Rock Snake'),(56,'Hypnosis'),(57,'River Crab'),(58,'Pincer'),(59,'Ball'),(60,'Egg'),(61,'Coconut'),(62,'Lonely'),(63,'Bone Keeper'),(64,'Kicking'),(65,'Punching'),(66,'Licking'),(67,'Poison Gas'),(68,'Spikes'),(69,'Vine'),(70,'Parent'),(71,'Dragon'),(72,'Goldfish'),(73,'Star Shape'),(74,'Mysterious'),(75,'Barrier'),(76,'Mantis'),(77,'Human Shape'),(78,'Electric'),(79,'Spitfire'),(80,'Stag Beetle'),(81,'Wild Bull'),(82,'Fish'),(83,'Atrocious'),(84,'Transport'),(85,'Transform'),(86,'Evolution'),(87,'Bubble Jet'),(88,'Lighting'),(89,'Virtual'),(90,'Spiral'),(91,'Fossil'),(92,'Sleeping'),(93,'Freeze'),(94,'Genetic'),(95,'New Species');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `Type_ID` int NOT NULL,
  `Weakness` varchar(100) DEFAULT NULL,
  `Strength` varchar(100) DEFAULT NULL,
  `Type1` varchar(10) DEFAULT NULL,
  `Type2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Flying Fire Psychic Ice','Fighting Water Electric Fairy','Grass','Poison'),(2,'Ground Rock Water','Bug Steel Fire Grass Ice Fairy','Fire','None'),(3,'Rock Water Electric','Fighting Steel Fire Fairy Bug Grass Ground','Fire','Flying'),(4,'Grass Electirc','Steel Fire Water Ice','Water','None'),(5,'Flying Rock Fire','Fighting Ground Grass','Bug','None'),(6,'Rock Flying Fire Electric Ice','Bug Fighting Grass Ground','Bug','Flying'),(7,'Flying Rock Fire Psychic','Poison Bug Fairy Fighting Grass','Bug','Poison'),(8,'Rock Electric Ice','Bug Grass Ground Ghost','Normal','Flying'),(9,'Fighting','Ghost','Normal','None'),(10,'Ground Psychic','Fighting Poison Bug Grass Fairy','Poison','None'),(11,'Ground','Flying Steel Electric','Electric','None'),(12,'Water Grass Ice','Poison Rock Electric','Ground','None'),(13,'Ground Water Psychic Ice','Fighting Rock Bug Fairy Poison Electric','Poison','Ground'),(14,'Poison Steel','Fighting Bug Dark Dragon','Fairy','None'),(15,'Poison Steel','Bug Dark Ghost Dragon','Normal','Fairy'),(16,'Rock Electric Pyschic Ice','Poison Fairy Fighting Bug Grass Ground','Poison','Flying'),(17,'Flying Fire Poison Rock Bug Ice','Fighting Water Electric Ground Grass','Bug','Grass'),(18,'Flying Psychic Fairy','Rock Bug Dark','Fighting','None'),(19,'Flying Grass Electric Psychic Fairy','Rock Bug Steel Fire Water Ice Dark','Water','Fighting'),(20,'Bug Ghost Dark','Fighting Psychic','Psychic','None'),(21,'Ground Electric Psychic','Fighting Poison Bug Steel Fire Water Ice Fairy','Water','Poison'),(22,'Water Grass Fighting Ground Steel Ice','Normal Flying Rock Fire Poison Electric','Rock','Ground'),(23,'Bug Ghost Grass Electric Dark','Fighting Steel Fire Water Psychic Ice','Water','Psychic'),(24,'Ground Fighting Fire','Normal Rock Bug Grass Electric Psychic Ice Dragon Fairy Flying Steel Poison','Electric','Steel'),(25,'Fighting Rock Grass Electric','Water Ice','Water','Ice'),(26,'Ground Ghost Psychic Dark','Grass Fairy Poison Bug Normal Fighting','Ghost','Poison'),(27,'Bug Flying Poison Ghost Fire Ice Dark','Fighting Ground Water Grass Electric Psychic','Grass','Psychic'),(28,'Flying Poison Bug Fire Ice','Ground Water Grass Electric','Grass','None'),(29,'Poison Ghost Steel','Psychic Fighting Dragon','Psychic','Fairy'),(30,'Rock Bug Ghost Steel Fire Dark','Psychic Ice','Ice','Psychic'),(31,'Electric Rock','Fighting Bug Steel Fire Water Ground','Water','Flying'),(32,'Grass Fighting Ground Electric','Normal Flying Poison Ice Fire','Rock','Water'),(33,'Rock Steel Water Electric Ice','Normal Flying Poison Bug Fire Ground','Rock','Flying'),(34,'Rock Steel Fire Electric','Bug Grass Ground','Ice','Flying'),(35,'Rock Ice','Fighting Flying Bug Steel Grass Ground','Electric','Flying'),(36,'Ice Dragon Fairy','Fire Water Grass Electric','Dragon','None'),(37,'Ice Rock Dragon Fairy','Fighting Bug Fire Water Grass Ground','Dragon','Flying');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 12:42:15

CREATE USER 'pokedex_project'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON pokedex_project.* TO 'pokedex_project'@'localhost' WITH GRANT OPTION;