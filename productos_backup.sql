-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dbListaProductos
-- ------------------------------------------------------
-- Server version	10.5.18-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_02_26_173150_create_productos_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Edgar Allan Poe','Libro de Edgar Allan Poe que recopia todos sus cuentos de terror.',560.00,'2023-02-27 02:08:24','2023-02-27 02:08:24'),(2,'Zombies','Libro que recopila diferentes cuentos de terror de zombies.',567.00,'2023-02-27 02:17:28','2023-02-27 02:17:28'),(3,'Jabon','Jabon para las manos',123.00,'2023-02-27 02:50:12','2023-02-27 02:50:12'),(4,'Motorola G20','Teléfono celular motorola G20',4500.00,'2023-02-27 03:08:51','2023-02-27 03:08:51'),(5,'Fuego & Sangre','Libro en el que se basó la popular serie House Of The Dragon, nos lleva a la historia de la antigua casa Targaryen.',899.00,'2023-02-27 04:17:45','2023-02-27 04:17:45'),(6,'Xiaomi M9','Teléfono celular Xiaomi M9 con 16gb de memorian ram y hasta 1TB de memoria expandible.',2566.00,'2023-02-27 04:21:07','2023-02-27 04:21:07'),(7,'iPhone 13','Smartphone de última generación',999.00,NULL,NULL),(8,'Samsung Galaxy Watch 4','Reloj inteligente con seguimiento de actividad',249.00,NULL,NULL),(9,'Sony WH-1000XM4','Auriculares inalámbricos con cancelación de ruido',349.00,NULL,NULL),(10,'Dell XPS 13','Portátil con procesador Intel Core i7',1199.00,NULL,NULL),(11,'LG OLED TV CX','Televisor con pantalla OLED de 55 pulgadas',1499.00,NULL,NULL),(12,'Apple iPad Pro','Tablet con pantalla Retina de 11 pulgadas',799.00,NULL,NULL),(13,'Nintendo Switch OLED','Consola de videojuegos portátil',349.00,NULL,NULL),(14,'Sonos One','Altavoz inteligente con asistente de voz',199.00,NULL,NULL),(15,'Fitbit Charge 5','Monitor de actividad física y sueño',179.00,NULL,NULL),(16,'Nest Hello','Timbre con cámara de seguridad para el hogar',229.00,NULL,NULL),(17,'GoPro HERO10','Cámara de acción de última generación',399.00,NULL,NULL),(18,'Philips Sonicare DiamondClean Smart','Cepillo de dientes eléctrico',229.00,NULL,NULL),(19,'Microsoft Surface Laptop 4','Portátil con procesador AMD Ryzen 5',999.00,NULL,NULL),(20,'Bose QuietComfort Earbuds','Auriculares inalámbricos con cancelación de ruido',279.00,NULL,NULL),(21,'Garmin Forerunner 945','Reloj deportivo con seguimiento GPS',599.00,NULL,NULL),(22,'Canon EOS R6','Cámara sin espejo de fotograma completo',2499.00,NULL,NULL),(23,'Razer Blade 15 Advanced Edition','Portátil para juegos con procesador Intel Core i7',2499.00,NULL,NULL),(24,'LG CX 48','Monitor para juegos con pantalla OLED',1499.00,NULL,NULL),(25,'Apple Watch Series 7','Reloj inteligente con seguimiento de actividad',399.00,NULL,NULL),(26,'Anova Precision Cooker','Sous vide para cocina de precisión',199.00,NULL,NULL),(27,'Bose SoundLink Revolve','Altavoz Bluetooth portátil',199.00,NULL,NULL),(28,'Philips Hue Lightstrip Plus','Tira de luz LED inteligente',79.00,NULL,NULL),(29,'DJI Mavic Air 2','Dron con cámara 4K',799.00,NULL,NULL),(30,'Samsung Galaxy S21','Smartphone con pantalla AMOLED de 6,2 pulgadas',799.00,NULL,NULL),(31,'Oculus Quest 2','Gafas de realidad virtual inalámbricas',299.00,NULL,NULL),(32,'JBL Flip 5','Altavoz Bluetooth portátil',119.00,NULL,NULL),(33,'Sony A7 III','Cámara sin espejo de fotograma completo',1999.00,NULL,NULL),(34,'Nest Learning Thermostat','Termostato inteligente para el hogar',249.00,NULL,NULL),(35,'Nintendo Switch Pro Controller','Controlador de videojuegos',69.00,NULL,NULL),(36,'Apple AirPods Max','Auriculares inalámbricos con cancelación de ruido',549.00,NULL,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-26 17:12:48
