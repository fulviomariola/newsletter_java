-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: newsletter
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `gruppo`
--

DROP TABLE IF EXISTS `gruppo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gruppo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_roman_ci NOT NULL,
  `cognome` varchar(45) COLLATE utf8_roman_ci DEFAULT NULL,
  `gruppo` varchar(45) COLLATE utf8_roman_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_roman_ci NOT NULL,
  `invio` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_roman_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruppo`
--

LOCK TABLES `gruppo` WRITE;
/*!40000 ALTER TABLE `gruppo` DISABLE KEYS */;
INSERT INTO `gruppo` VALUES (2,'Carlo','Mariola','Java_base','fulvio.mariola@gmail.com',1),(3,'Info','Sub','Professore','infosubnetting@gmail.com',1),(4,'Francesca','Rossi','Java_base','valerio.feltrini@gmail.com',1),(5,'Gabriele','Garucci','CCNA','ggarucci@gmail.com',1),(8,'Andrea','Sita','Java_base','a.sita@outlook.it',1),(27,'Emanuele','Verticilo','Java_base','emanuele.verticilo@gmail.com',1),(28,'Fabio','Fava','Java_base','fabiofava31@gmail.com',1),(30,'Luca','Sgambo','Java_base','lucasgambo90@gmail.com',1),(33,'Stefano','Di Carlo','Java_base','ste.dicarlo79@gmail.com',1),(35,'Ufficio','Tecnico','Java_base','ufficiotecnicosbcr@gmail.com',1),(36,'C','Di Giovanni','Java_base','c.digiovanni77@gmail.com',1),(37,'Dregons','Gp','Java_base','dregons.gp@gmail.com',1),(38,'Gabriele','Bentrovato','Java_base','gab.bentrovato@gmail.com',1),(39,'Marcus','2592','Java_base','marcus2592@gmail.com',1),(40,'Kembo','Ruta','Java_base','kemboruta@gmail.com',1),(41,'Giacomo','NN','Java_base','giacomo@amarulasolutions.com',1),(42,'Marco','Capocefalo','Java_base','marco.capocefalo@aubay.it',1),(43,'Stefano','Pantaleo','Java_base','stefano.pantaleo.78@gmail.com',1),(44,'Riccardo','D amico','Java_base','riccardo.damico92@gmail.com',1),(45,'Ivan','95','Java_base','ivan95i@libero.it',1),(46,'Mattia','Francardi','Java_base','mattiafrancardi@gmail.com',1),(47,'Federico','Rz','Java_base','federico_rz@yahoo.it',1),(48,'Marco','Thomas','Java_base','marcuzzothomas@gmail.com',1),(49,'Alessio','Creo','Java_base','alessio.creo@gmail.com',1),(50,'Ecm','Dekas','Java_base','ecmdekas@yahoo.it',1),(51,'R','Giovannelli','Java_base','r.giovannelli@intersistemi.it',1),(52,'M','Moretti','Java_base','m.moretti@intersistemi.it',1),(53,'Simo','Dx','Java_base','simo.dx@gmail.com',1),(54,'Fiffy','PinkSoPunk','Java_base','fiffypynksopunk4@hotmail.it',1),(55,'I','Bisceglia','Java_base','l.bisceglia@intersistemi.it',1),(56,'Stefania','Bolla','Java_base','stefania.bolla@gmail.com',1),(57,'Vito','Mussuto','Java_base','vitomussuto@inwind.it',1),(58,'Matteo','Mura','Java_base','muramatteo@gmail.com',1),(59,'Marilisa','3','Java_base','marilisa3@gmail.com',1),(60,'Betty','Mendosa','Java_base','betty_mendosa@hotmail.it',1),(61,'Auro','ARch','Java_base','arch.auro@hotmail.it',1),(62,'Claudia','C','Java_base','claudia-c@hotmail.it',1),(63,'Michela','Cavalli','Java_base','michela.cavalli97@gmail.com',1),(64,'Carlotta','Nepitali','Java_base','carlotta.nepitali@gmail.com',1),(66,'A','Torrisi','Java_base','atorrisi87@gmail.com',1),(67,'Chiara','Brunamonti','Java_base','chiarabrunamonti@live.it',1),(68,'Walter','Fasan','Java_base','walter.fasan@yahoo.it',1),(69,'M','Perpetuini','Java_base','mperpetuini@dongnocchi.it',1),(70,'Michela','Salvato','Java_base','michelasalvato@hotmail.com',1),(71,'Federico','Baldacci','Java_base','federico.baldacci1995@gmail.com',1),(74,'Francesco','Zapparrata','doposcuola','zapparrata.franc@gmail.com',1),(75,'Enrico','Riga','ccna','enrico.riga7@outlook.it',1),(76,'Luca','Di Giorgio','ccna','lucadigiorgio.ldg@gmail.com',1),(77,'Marco','Joelife','ccna','marcojoelife@gmail.com',1),(78,'Andrea','Michelini','ccna','michelini.andrea@gmail.com',1),(79,'Alessandro','Scarfone','ccna','scarfone.alessandro@gmail.com',1),(80,'Alessio','Gentilezza','ccna','alessio.gentilezza@gmail.com',1),(81,'Ale','Bcn','ccna','alebcn018@gmail.com',1),(82,'Marino','Designer','ccna','marinodesigner@gmail.com',1),(84,'Alessandro','Lillo','ccna','lillo.alessandro.1992@gmail.com',1),(85,'Andrea','Belloni','ccna','andrea.belloni.t@gmail.com',1),(86,'Riccardo','Baio','ccna','riccaromabaio@gmail.com',1),(87,'Tiziano','Navarra','ccna','tizianonavarra@gmail.com',1),(88,'Armando','Ceracchi','ccna','cennakkio@gmail.com',1),(89,'Marco','Baldini','ccna','marcobaldininew@gmail.com',1),(90,'Andrea','Tomassini','ccna','andrea.tomassini1996@gmail.com',1),(91,'Irene','Valeri','ccna','irene.valeri08@gmail.com',1),(93,'Ivan','Trabucco','ccna','ivan.trabucco@yahoo.it',1),(94,'Michelangelo','Lattanzio','ccna','michelangelolattanzio@gmail.com',1),(95,'Martina','Montanaro','ccna','martina.montanaro@libero.it',1),(96,'Francesco','Pallagrosi','ccna','francesco.pallagrosi@yahoo.it',1),(98,'Davide','Di Palma','ccna','davide.dipalma@icloud.com',1),(99,'Valeria','Aurilio','ccna','vale.aurilio@gmail.com',1),(100,'Valentina','Buti','ccna','valentinab3@gmail.com',1),(101,'David','Hamidy','ccna','david.hamidy90@gmail.com',1),(102,'Ursus','none','ccna','ursus963@gmail.com',1),(103,'Fabrizio','Gianluca','ccna','fabrizigianluca@gmail.com',1),(104,'Vic','Zagranowski','ccna','zagranowski@gmail.com',1),(105,'Fulvio','CCNA','ccna','fulvio.ccna@gmail.com',1),(106,'Vite','Mode','ccna','vite3modeer@gmail.com',1),(107,'Lorenzo','Nardelli','ccna','lorenzonardelli85@gmail.com',1),(108,'Michele','Valenza','ccna','michele.valenza@mail.com',1),(109,'Bruno','Marco','ccna','brunovittoriomarco@hotmail.com',1),(110,'NN','Gentili','ccna','gentili1511@gmail.com',1),(111,'NN','NN','ccna','icenteraltamura@gmail.com',1),(112,'Alexio','Biagini','ccna','alexio.biagini@libero.it',1),(113,'Alex','Po','ccna','alexpo2001@gmail.com',1),(114,'Alex','Vescovi','ccna','vescovialex@gmail.com',NULL);
/*!40000 ALTER TABLE `gruppo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-15 18:00:40
