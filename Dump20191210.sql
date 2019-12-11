CREATE DATABASE  IF NOT EXISTS `talleres` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `talleres`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: talleres
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `asistentes`
--

DROP TABLE IF EXISTS `asistentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asistentes` (
  `idasistentes` int(11) NOT NULL AUTO_INCREMENT,
  `idusuarios` int(11) NOT NULL,
  `idroles` int(11) NOT NULL,
  `idtalleres` int(11) NOT NULL,
  `asiste` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idasistentes`),
  KEY `fk_asistentes_usuarios1_idx` (`idusuarios`,`idroles`),
  KEY `fk_asistentes_talleres1_idx` (`idtalleres`),
  CONSTRAINT `fk_asistentes_talleres1` FOREIGN KEY (`idtalleres`) REFERENCES `talleres` (`idtalleres`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_asistentes_usuarios1` FOREIGN KEY (`idusuarios`, `idroles`) REFERENCES `usuarios` (`idusuarios`, `idroles`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistentes`
--

LOCK TABLES `asistentes` WRITE;
/*!40000 ALTER TABLE `asistentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista`
--

DROP TABLE IF EXISTS `lista`;
/*!50001 DROP VIEW IF EXISTS `lista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `lista` AS SELECT 
 1 AS `nombres`,
 1 AS `ficha`,
 1 AS `nametaller`,
 1 AS `horaini`,
 1 AS `asiste`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `idroles` int(11) NOT NULL AUTO_INCREMENT,
  `nombrol` varchar(45) NOT NULL,
  PRIMARY KEY (`idroles`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Expositor'),(2,'Asistente');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talleres`
--

DROP TABLE IF EXISTS `talleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talleres` (
  `idtalleres` int(11) NOT NULL AUTO_INCREMENT,
  `nametaller` varchar(255) NOT NULL,
  `periodo` year(4) NOT NULL,
  `horaini` datetime NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtalleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talleres`
--

LOCK TABLES `talleres` WRITE;
/*!40000 ALTER TABLE `talleres` DISABLE KEYS */;
/*!40000 ALTER TABLE `talleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `idroles` int(11) NOT NULL,
  `iduser` varchar(45) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `ficha` varchar(10) NOT NULL,
  `estauser` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusuarios`,`idroles`),
  KEY `fk_usuarios_roles_idx` (`idroles`),
  CONSTRAINT `fk_usuarios_roles` FOREIGN KEY (`idroles`) REFERENCES `roles` (`idroles`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,2,'1007222463','Sebastian Alvarez Perez','1827231',1),(2,2,'1193114252','Dennise Alejandra Alzate Meneses','1827231',1),(3,2,'1000871417','Tomas Diaz Vazques','1827231',1),(4,2,'1000661880','Natalia Garnica Genes ','1827231',1),(5,2,'1152718045','Stefania Giraldo Monsalve','1827231',1),(6,2,'1000884447','Luis Pablo Goez Sepulveda','1827231',1),(7,2,'1000204566','Juan Jose Laurens Gomez','1827231',1),(8,2,'1000901154','Sebastian David Martinez Godoy ','1827231',1),(9,2,'1000290790','Julian Andres Molino Meneses','1827231',1),(10,2,'1000565339','Sergio Leon Saldarriaga Davila','1827231',1),(11,2,'1193538361','Kevin Alexander Suaza Gomez','1827231',1),(12,2,'1001229049','Karen Vasquez Hernandez','1827231',1),(13,2,'1007222463','Sebastian   Velasquez Perez','1827231',1),(14,2,'1000539147','Dayana Velez Uribe ','1827231',1),(15,2,'1000190455','Daniela Zapata Gutierrez','1827231',1),(16,2,'1000445851','Maria Camila Zuluaga Londoño','1827231',1),(17,2,'1000396462','MARLON ANDRES GRANDA MUÑOZ','1751400',1),(18,2,'1000570928','JORGE LUIS AVENDAÑO PEREZ','1751400',1),(19,2,'1000868830','EMANUEL URAN VARGAS','1751400',1),(20,2,'1001250092','KARLA ANDREA CARDENAS ','1751400',1),(21,2,'1002494164','YEISSON DAVID OSORNO PATERNINA','1751400',1),(22,2,'1007239563','VERONICA PEREZ ZEA','1751400',1),(23,2,'1007330344','JUAN PABLO MONSALVE LANDETA','1751400',1),(24,2,'1017259951','CRISTIAN CAMILO USUGA URREGO','1751400',1),(25,2,'1017265927','DAHIANA BEDOYA RAMIREZ','1751400',1),(26,2,'1020441065','JUAN DAVID MAYA MAZO','1751400',1),(27,2,'1020487581','VALENTINA NARANJO RODRIGUEZ','1751400',1),(28,2,'1020492202','YEFERSON CORREA CARDONA','1751400',1),(29,2,'1020493325','JASSAN YUSEFF MAQUIUTH','1751400',1),(30,2,'1020496440','JUAN JOSE MENESES TORRES','1751400',1),(31,2,'1035434852','SEBASTIAN SARRAZOLA GAVIRIA','1751400',1),(32,2,'1036134367','LUIS JOSE LENES VELANDIA','1751400',1),(33,2,'1036672733','KEVIN ARDILA LOPERA','1751400',1),(34,2,'1036682388','KEVIN ANDRES GUTIERREZ VERGARA','1751400',1),(35,2,'1038111159','CARLOS DAVID BARRAGAN CABALLERO','1751400',1),(36,2,'1047972635','CRISTIAN DAVID GONZALEZ RESTREPO','1751400',1),(37,2,'1063306017','JOHAN SEBASTIAN CASTAÑO RIVILLAS','1751400',1),(38,2,'1128402223','BONNIE ALEJANDRO QUINTERO CARDONA','1751400',1),(39,2,'1152223395','JUAN PABLO PATERNINA CASTRO','1751400',1),(40,2,'1152702469','SERGIO ESTEBAN MURILLO HIGUITA','1751400',1),(41,2,'1152712286','YEISON BERMUDEZ MONTOYA','1751400',1),(42,2,'1152713932','SEBASTIAN RODRIGUEZ VASQUEZ','1751400',1),(43,2,'71213199','JAIME ALBERTO HIGUITA BEDOYA','1751400',1),(44,2,'1000089581','LOPERA GOMEZ MARIA ISABEL','1906901',1),(45,2,'1000439498','QUINTANA PINEDA ANA SOFIA','1906901',1),(46,2,'1000565331','ALZATE GONZALEZ VALENTINA','1906901',1),(47,2,'1000634928','MURILLO LOPEZ ALEXIS','1906901',1),(48,2,'1006869135','FOX LYNTON STEVE SEBASTIAN','1906901',1),(49,2,'1007114039','GONZALEZ VARGAS JORGE ALEJANDRO','1906901',1),(50,2,'1007239050','ACEVEDO CARTAGENA MARIANA','1906901',1),(51,2,'1007333351','MEDINA PELAEZ MARLON DAVID','1906901',1),(52,2,'1035917862','DAVID OLEAS JUAN PABLO','1906901',1),(53,2,'1039625764','PULGARIN MONTOYA XIMENA ANDREA','1906901',1),(54,2,'1146439662','TIGREROS JARAMILLO JUAN SEBASTIAN','1906901',1),(55,2,'1152211552','SERNA MENDOZA LUIS FELIPE','1906901',1),(56,2,'1193149253','DEL VALLE MOLINA LAURA CAMILA','1906901',1),(57,2,'1214741684','GARCIA ARBELAEZ JUAN CAMILO','1906901',1),(58,2,'1214743650','JIMENEZ BAENA JOSE LEONEL','1906901',1),(59,2,'1214747365','RIOS ACEVEDO BRANDON SMITH','1906901',1),(60,2,'1216719836','DAVID GUZMAN SANTIAGO','1906901',1),(61,2,'1037661683','SANCHES LONDOÑO DAVID ALEJAMDRO','1906901',1),(62,2,'1001620454','USUGA HERNANDEZ SANTIAGO','1906901',1),(63,2,'1017201179','TORRES OSORIO JEFFERSON','1906901',1),(64,2,'1001010449','VELEZ  R SANTIAGO','1906901',1),(65,2,'1007238905','PUERTA M JHOLMAN DANIEL','1906901',1),(66,2,'1017209586','MONTOYA CORREA TATIANA','1834434',1),(67,2,'1035861808','SANCHEZ MONTES CATHERIN','1834434',1),(68,2,'1035867676','BEDOYA OLARTE JHON EDISON','1834434',1),(69,2,'1036934356','MACHADO YEPES DANIEL','1834434',1),(70,2,'1037626107','MESA RENDON MAURICIO','1834434',1),(71,2,'1038119207','PEREZ DE AGUSTIN MIGUEL ANDRES','1834434',1),(72,2,'1038800943','CASTRILLON ARANGO BAYRON','1834434',1),(73,2,'1039466116','VASCO TABORDA BRAYAN MANUEL','1834434',1),(74,2,'1047413294','MENESES GALLO JAIR JOSUE','1834434',1),(75,2,'1121852661','PARDO TELLEZ YALIAN ANDREY','1834434',1),(76,2,'1128282395','MARTINEZ DUQUE DIANA MARIA','1834434',1),(77,2,'1149189034','PEREZ PEÑATE DANIS DARIO','1834434',1),(78,2,'1152216000','ARCILA ARGAEZ CAROLINA','1834434',1),(79,2,'1152685985','AGUDELO PEREZ WILLIAM ANTONIO','1834434',1),(80,2,'15373076','DAZA VALENCIA GUILLERMO ARLEX','1834434',1),(81,2,'32110829','JIMENEZ ARIAS OLGA LORENA','1834434',1),(82,2,'43103110','ARRIETA OCHOA PAOLA ANDREA','1834434',1),(83,2,'70561140','CARVAJAL MONTOYA JUAN DAVID','1834434',1),(84,2,'98591275','ACEVEDO ZULUGA SODIMAN ALIRIO','1834434',1),(85,2,'98687613','JARAMILLO PULGARIN JUAN CRISOSTOMO','1834434',1),(86,1,'1035439644','ALZATE BEDOYA JUAN ESTEBAN','1693151',1),(87,1,'1036669501','ARBOLEDA ESTRADA LUIS DAVID','1693151',1),(88,1,'1007412048','BETANCUR MURILLO CRISTIAN FERNEY','1693151',1),(89,1,'1001368018','CABUYA BERRIO CAMILO','1693151',1),(90,1,'1010109842','CARMONA SOSA MELISA','1693151',1),(91,1,'1007376628','CASTAÑEDA MAZO YESICA MILENA','1693151',1),(92,1,'1045738333','CATAÑO GUEVARA JOHAN ARCANGEL','1693151',1),(93,1,'1017163330','CLAVIJO LOPEZ YENNIFER TATIANA','1693151',1),(94,1,'1020462103','GALEANO PIMIENTA DANIEL RICARDO','1693151',1),(95,1,'1002320227','GIRALDO ARIAS BREINER ESTIVER','1693151',1),(96,1,'1020495701','HERNANDEZ RAMIREZ STIVEN','1693151',1),(97,1,'1054926682','JARAMILLO DOMINGUEZ ANGELI','1693151',1),(98,1,'1035442081','LONDOÑO VELEZ JORGE ANDRES','1693151',1),(99,1,'1152717628','LOZANO BARRERA JUAN ESTEBAN','1693151',1),(100,1,'1020472551','MARIN ORTIZ SANTIAGO ALONSO','1693151',1),(101,1,'1017229730','MARULANDA MUÑOZ JUAN SEBASTIAN','1693151',1),(102,1,'1020457234','MENDEZ URREGO GERALDINE','1693151',1),(103,1,'1035865511','MONSALVE ARANGO JONATHAN','1693151',1),(104,1,'1017142919','MONSALVE ECHAVARRIA ANDRES MAURICIO','1693151',1),(105,1,'1007412041','MORELO HIGUITA DANIEL ESTIVEN','1693151',1),(106,1,'1146443422','MOSQUERA MOSQUERA CARLOS ANDRES','1693151',1),(107,1,'1035437615','MUSTAFA CALLE BRAYAN SMIT','1693151',1),(108,1,'1020483320','OCAMPO TABARES JUAN CAMILO','1693151',1),(109,1,'1152704288','ORTEGA CARDENAS SANTIAGO','1693151',1),(110,1,'1000755422','QUINTERO RODRIGUEZ JOSE MANUEL','1693151',1),(111,1,'1037269394','RIVAS ALZATE DIEGO FERNEY','1693151',1),(112,1,'1128458620','ROBLES GOMEZ FELIPE','1693151',1),(113,1,'71749282','SAAVEDRA RUEDA WILLIAM JOSE','1693151',1),(114,1,'1017268487','SANCHEZ VASQUEZ JUAN MANUEL','1693151',1),(115,1,'1035871710','VAHOS LOPEZ CAMILO','1693151',1),(116,1,'1059701136','VELEZ GARCIA CRISTIAN ANDRES','1693151',1),(117,2,'1007238734','MORALES VARGAS MARIA CAMILA','1906897',1),(118,2,'1020493176','TORO CORREA ANDRES FELIPE','1906897',1),(119,2,'1035858218','LONDOÑO SERNA KELLY JOHANNA','1906897',1),(120,2,'1036656697','VELASQUEZ AMAYA CRISTIAN CAMILO','1906897',1),(121,2,'1065877248','CRUZ GAMARRA CARLOS ANDRES','1906897',1),(122,2,'1076822414','MONTAÑO MURRAY JAEN CARLOS','1906897',1),(123,2,'1128403671','MERCHAN TOBON JUAN CAMILO','1906897',1),(124,2,'1147951119','PEREIRA JIMENEZ LINDA LIZETH','1906897',1),(125,2,'1152222093','PANESO MARIN JHON ANDERSON','1906897',1),(126,2,'32142580','RALLON BENJUMEA MARGARITA MARIA','1906897',1),(127,2,'43598920','DUQUE GIRALDO GLORIA PATRICIA','1906897',1),(128,2,'71700019','RESTREPO POSADA RAFAEL ABDON','1906897',1),(129,2,'71738718','DUQUE MESA LUIS ALBERTO','1906897',1),(130,2,'79789332','FORERO MONTERO CARLOS ANDRES','1906897',1),(131,2,'8061371','HENAO DUQUE ARLEY ALEXANDER','1906897',1),(132,2,'8126059','LOPEZ VAHOS JUAN DAVID','1906897',1),(133,2,'98701011','ARANGO SIERRA MARLON SANTIAGO','1906897',1),(134,2,'1000088582','CANO VALENCIA JUAN DIEGO','1906746',1),(135,2,'1000885064','HIGUITA RAMIREZ IVAN SANTIAGO','1906746',1),(136,2,'1001526457','POSADA LOPEZ JAVIER ANDRES','1906746',1),(137,2,'1017152063','OSSA MONTOYA ELIANA MARCELA','1906746',1),(138,2,'1017156987','MUÑOZ BEDOYA FRANK FERNANDO','1906746',1),(139,2,'1017183719','PAEZ MONTOYA ANDRES FELIPE','1906746',1),(140,2,'1017202442','RODRIGUEZ SANCHEZ CRISTIAN CAMILO','1906746',1),(141,2,'1017205710','VALENCIA MONSALVE FRANCISCO JOSE','1906746',1),(142,2,'1020405786','VIDAL PULGARIN JUAN CARLOS','1906746',1),(143,2,'1020424348','CATAÑO PEÑA JUAN CAMILO','1906746',1),(144,2,'1020425907','VALENCIA MORALES JUAN SEBASTIAN','1906746',1),(145,2,'1020467365','HERRERA VANEGAS ANDRES FELIPE','1906746',1),(146,2,'1030611818','BENAVIDES ACOSTA JUAN CAMILO','1906746',1),(147,2,'1035229561','MAYORGA QUINTERO JEFFERSON JAIR','1906746',1),(148,2,'1035876637','CARMONA JIMENEZ DANILO','1906746',1),(149,2,'1036661658','ARANGO CEBALLOS CAMILO ALEJANDRO','1906746',1),(150,2,'1037593106','HINESTROZA  JONATHAN','1906746',1),(151,2,'1037618157','VILLA MONTOYA JUAN DIEGO','1906746',1),(152,2,'1037669805','LIENDO VELEZ JUAN PABLO','1906746',1),(153,2,'1037975962','MARTINEZ DUQUE DIANA MARCELA','1906746',1),(154,2,'1038361053','OSPINA PALACIO GILMER ALFONSO','1906746',1),(155,2,'1039459054','SIERRA GALLEGO ALEXANDER','1906746',1),(156,2,'1042772460','SOSA PATIÑO YEISON DAVIER','1906746',1),(157,2,'1128392342','TORO  DIEGO ALEJANDRO','1906746',1),(158,2,'1128424514','CRESPO GALEANO MOISES','1906746',1),(159,2,'1128425471','DAVID GALLEGO JONNATHAN','1906746',1),(160,2,'1128465467','MUÑOZ VALENCIA CESAR AUGUSTO','1906746',1),(161,2,'1152437822','LEON VALENCIA LISETH YULIANA','1906746',1),(162,2,'1152694111','BUSTAMANTE LOPEZ JUAN FERNANDO','1906746',1),(163,2,'1152715235','HENAO SERNA SARA','1906746',1),(164,2,'11808273','PEREA PARRA WILFER AMADO','1906746',1),(165,2,'1193567966','DAZA MORENO JONIER ALEXANDER','1906746',1),(166,2,'1216720972','GONZALEZ VARGAS SANTIAGO','1906746',1),(167,2,'15518538','ECHEVERRI CADAVID DIEGO FERNANDO','1906746',1),(168,2,'98702322','CASTRO RIOS CESAR AUGUSTO','1906746',1),(169,2,'98761093','GOMEZ LOPEZ JOSE ALEXANDER','1906746',1),(170,2,'1033342873','Holgin Bedoya Brayan','1827231',1),(171,2,'1017184244','Portilla Delgado Cristhian Julian','1827231',1),(172,2,'1005932583','Daniel Fernando Carvajal Cañon','1827231',1),(173,2,'1073327485','Diego Fernando Real Martines','1827231',1),(174,2,'1001580847','Javier Alonso Osorio Caro','1827231',1),(175,2,'1007165941','Jhon Einsteing Castiblanco ciru','1827231',1),(176,2,'1020483790','Jonha Camilo Guzman Avendaño','1827231',1),(177,2,'1000903644','Jhoan Sebastian Cardona Figueroa','1827231',1),(178,2,'1001580044','Juan David Ceballos Muñoz','1827231',1),(179,2,'1000897934','Juan Sebastian Toro Mira','1827231',1),(180,2,'1007601270\'','Luis Miguel Vivas Palacio','1827231',1),(181,2,'1001629330','Sergio David Sepulveda Montoya','1827231',1),(182,2,'1128435635','Yajani Arley Bejarano Mena','1827231',1),(183,2,'1128462720','Juan David Piedrahita Rojas','1827231',1),(184,2,'100565891','Laura Vanesa Agudelo Arias','1827231',1),(185,2,'1007222463','Sebastian Alvarez Perez','1827231',1),(186,2,'1193114252','Dennise Alejandra Alzate Meneses','1827231',1),(187,2,'1000871417','Tomas Diaz Vazques','1827231',1),(188,2,'1000661880','Natalia Garnica Genes ','1827231',1),(189,2,'1152718045','Stefania Giraldo Monsalve','1827231',1),(190,2,'1000884447','Luis Pablo Goez Sepulveda','1827231',1),(191,2,'1000204566','Juan Jose Laurens Gomez','1827231',1),(192,2,'1000290790','Julian Andres Molino Meneses','1827231',1),(193,2,'1000565339','Sergio Leon Saldarriaga Davila','1827231',1),(194,2,'1193538361','Kevin Alexander Suaza Gomez','1827231',1),(195,2,'1001229049','Karen Vasquez Hernandez','1827231',1),(196,2,'1000539147','Dayana Velez Uribe ','1827231',1),(197,2,'1000190455','Daniela Zapata Gutierrez','1827231',1),(198,2,'1000445851','Maria Camila Zuluaga Londoño','1827231',1),(199,2,'1000304810','Orrego Gomez Kevin Andres','1800888',1),(200,2,'1000565214','Polo Ciro Darwinzon Arley','1800888',1),(201,2,'1000748038','Vahos Rodas Juan Sebastian','1800888',1),(202,2,'1000883553','Romero Mosquera Diego Alejandro','1800888',1),(203,2,'1000922106','Calle Velez Carolina','1800888',1),(204,2,'1000922445','Reyes Peñaranda Manuela ','1800888',1),(205,2,'1001362780','Ramirez Gomez Jose David','1800888',1),(206,2,'1001362780','Bustamante Castro Andres Mariano','1800888',1),(207,2,'1001637214','Rojas Cabrera Jhon Hader','1800888',1),(208,2,'1003290312','Holguin Montalvo Jhon Bairon','1800888',1),(209,2,'1007240178','Hernandez Chavarria Santiago','1800888',1),(210,2,'1007304708','Restrepo Cardona Felipe','1800888',1),(211,2,'1007704966','Ortiz Muñoz Sebastian','1800888',1),(212,2,'1020453300','Cadavid Rojas Maria Virginia','1800888',1),(213,2,'1035875909','Silva Saldarriaga Manuel Alejandro','1800888',1),(214,2,'1117553876','Vargas Mahecha Juan David','1800888',1),(215,2,'1128427257','Murillo Castañeda Jhoan Camilo','1800888',1),(216,2,'1153460225','Urrea Quintero Sara Lizeth','1800888',1),(217,2,'1152714894','Rodelo Saenz Yesid de Jesus','1800888',1),(218,2,'1152715837','Betancur Gonzalez Brainer Esteban','1800888',1),(219,2,'1192895823','Villa Alzate Juan Jose ','1800888',1),(220,2,'1234990789','Higuita Osorio Jhon Davinson','1800888',1),(221,2,'98699456','Carmona Rivera Jose Anderson','1800888',1),(222,2,'1000566763','Perez Quiceno Jose Manuel','1800888',1),(223,2,'1000660457','Salas Vazquez Juan Pablo','1800888',1),(224,2,'1002566249','Quintero Ospina Maria Alejandra','1800888',1),(225,2,'1000088454','VILLA GALINDO DANIEL','1964321',1),(226,2,'1000190087','SERNA VELASCO JONATHAN ANDRES','1964321',1),(227,2,'1000193776','RAMIREZ MADRIGAL FEDER RAMSEY','1964321',1),(228,2,'1000565945','TOBON BUILES EDGAR DAVID','1964321',1),(229,2,'1000657310','ORREGO ATEHORTUA YADIRA ANDREA','1964321',1),(230,2,'1000888498','RENGIFO CARVAJAL ANNY CAROLINA','1964321',1),(231,2,'1000896722','UPEGUI ISAZA LESLY PAULINA','1964321',1),(232,2,'1001359301','PARRA ARANGO JUAN CAMILO','1964321',1),(233,2,'1001555296','MARTINEZ ESTRADA KATERIN','1964321',1),(234,2,'1007242664','MUNERA AGUDELO SANTIAGO','1964321',1),(235,2,'1007506019','VASQUEZ PINEDA ARLES OSWALDO','1964321',1),(236,2,'1017228450','AGUDELO HIGUITA DAVID ALEJANDRO','1964321',1),(237,2,'1017250539','ZAPATA CADENA DARWIN SMITH','1964321',1),(238,2,'1017264496','JIMENEZ ALZATE ANDRES FELIPE','1964321',1),(239,2,'1017264755','VILLEGAS GIRALDO SANTIAGO','1964321',1),(240,2,'1020477066','OSORIO URREGO YULISA','1964321',1),(241,2,'1020479314','OCHOA ALZATE JUAN PABLO','1964321',1),(242,2,'1020488407','MARULANDA RIVERA CRISTIAN CAMILO','1964321',1),(243,2,'1035441837','QUINTERO CAUCALI SEBASTIAN','1964321',1),(244,2,'1037659624','CASTAÑO SARIEGO YEIFER ANDRES','1964321',1),(245,2,'1128439705','VALETA SAENZ JEFERSON','1964321',1),(246,2,'1152708331','VELASCO DUQUE LEIDER DUBAN','1964321',1),(247,2,'1152711792','ALVAREZ ROJAS KATHERIN','1964321',1),(248,2,'1152712847','GIRALDO GIRALDO DANIEL','1964321',1),(249,2,'1193523821','MARTINEZ VALENCIA ALEJANDRO','1964321',1),(250,2,'1214741708','VELEZ RUA LUIS FERNANDO','1964321',1),(251,2,'1216729997','ZAPATA GALEANO JULIAN ESTIVEN','1964321',1),(252,2,'43909500','GIRALDO MARIN ERIKA ANDREA','1964321',1),(253,2,'71227477','GIRALDO HERNANDEZ SAMUEL ANDRES','1964321',1),(254,2,'98765899','RENTERIA BORJA EDWARD ANDRES','1964321',1),(255,2,'98772841','MUÑOZ CORREA JAILER','1964321',1),(256,2,'1007239705','CADAVID CADAVID SANTIAGO','1964343',1),(257,2,'1017170829','CASTAÑEDA FERNANDEZ JENNIFER PATRICIA','1964343',1),(258,2,'1017224525','GRAJALES ECHAVARRIA LAURA STEFANNY','1964343',1),(259,2,'1035864506','MARIN NARANJO JUAN SEBASTIAN','1964343',1),(260,2,'1036660621','RUIZ RUIZ DANIELA','1964343',1),(261,2,'1036664456','GUZMAN BOLIVAR BRAYAN FELIPE','1964343',1),(262,2,'1038805380','GALVIS MENA SAMI ALBERTO','1964343',1),(263,2,'1039705952','GONZALEZ CALDERON LEONARDO STIVEN','1964343',1),(264,2,'1128282395','MARTINEZ DUQUE DIANA MARIA','1964343',1),(265,2,'1152705953','SEPULVEDA MORALES JUAN DAVID','1964343',1),(266,2,'1216716846','BEDOYA ZAPATA JUAN ESTEBAN','1964343',1),(267,2,'32144273','AGUDELO HERNANDEZ LUZ ENITH','1964343',1),(268,2,'39359731','PABON ALVAREZ LUISA FERNANDA','1964343',1),(269,2,'42827604','MAZO URIBE MILDRED MAGALY','1964343',1),(270,2,'98603892','ALVAREZ GARCIA VICTOR HUGO','1964343',1),(271,2,'98772115','BELEÑO CASTRO JEISON DAVID','1964343',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'talleres'
--

--
-- Dumping routines for database 'talleres'
--
/*!50003 DROP PROCEDURE IF EXISTS `busqueda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `busqueda`(
in dato varchar(255)
)
BEGIN
-- Procedimiento almacenado para buscar un usuario en la lista de asistencia:
declare search varchar(100);
set search = concat('%',dato,'%');

select * from lista 
where nombres like search or ficha like search or nametaller like search or horaini like search or asiste like search; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `talleres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `talleres`(
in iduser varchar(45),
in taller int,
in accion varchar(45)
)
BEGIN
-- Procedimiento almacenado para inscribirse en un taller:
-- Variables:
set @rol = 2;
set @asiste = 0;

case 
-- guardar:
when accion = 'inscribir' then
insert into asistentes values (0, iduser, @rol, taller, @asiste);
-- mostramos el inscrito al taller:
select l.*  from lista l
inner join talleres t where t.idtalleres = taller;

-- Asistencia: 
when accion = 'asistencia' then
set @asiste = 1;
update asistentes
set asiste = @asiste
where idusuarios = iduser and idtalleres = taller;

-- Mostrar todos:
when accion = '' then
select * from lista;

end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `lista`
--

/*!50001 DROP VIEW IF EXISTS `lista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista` AS select `u`.`nombres` AS `nombres`,`u`.`ficha` AS `ficha`,`t`.`nametaller` AS `nametaller`,`t`.`horaini` AS `horaini`,`a`.`asiste` AS `asiste` from ((`usuarios` `u` join `asistentes` `a` on((`a`.`idusuarios` = `u`.`idusuarios`))) join `talleres` `t` on((`t`.`idtalleres` = `a`.`idtalleres`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10 20:34:04
