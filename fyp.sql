-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fyp
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_api_keys_key` (`key`),
  KEY `idx_api_keys_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_audit_logs_user_id` (`user_id`),
  KEY `idx_audit_logs_entity` (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES ('84afd039-55b7-494e-85d7-6abc2c968cc8','4f3e078d-0aa9-4f27-b028-36fcf14f69bd','ROLE_CHANGE','USER','df75eb80-7fd2-4171-b8cd-d54b5978057b','{\"role\":\"admin\"}','{\"role\":\"user\"}','::1','Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.3624','2025-05-08 21:18:52');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `prompt_id` varchar(36) NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `idx_feedback_prompt_id` (`prompt_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`prompt_id`) REFERENCES `prompts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llm_provider_pricing`
--

DROP TABLE IF EXISTS `llm_provider_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llm_provider_pricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(36) NOT NULL,
  `per_token` decimal(10,8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `llm_provider_pricing_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `llm_providers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llm_provider_pricing`
--

LOCK TABLES `llm_provider_pricing` WRITE;
/*!40000 ALTER TABLE `llm_provider_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `llm_provider_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llm_providers`
--

DROP TABLE IF EXISTS `llm_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llm_providers` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_url` varchar(255) NOT NULL,
  `latency_score` float NOT NULL,
  `accuracy_rating` float NOT NULL,
  `privacy_score` float NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llm_providers`
--

LOCK TABLES `llm_providers` WRITE;
/*!40000 ALTER TABLE `llm_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `llm_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_code_suggestions`
--

DROP TABLE IF EXISTS `module_code_suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_code_suggestions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_id` varchar(36) NOT NULL,
  `suggestion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  CONSTRAINT `module_code_suggestions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_code_suggestions`
--

LOCK TABLES `module_code_suggestions` WRITE;
/*!40000 ALTER TABLE `module_code_suggestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_code_suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_vulnerability_values`
--

DROP TABLE IF EXISTS `module_vulnerability_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_vulnerability_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_id` varchar(36) NOT NULL,
  `security` float DEFAULT NULL,
  `performance` float DEFAULT NULL,
  `reliability` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  CONSTRAINT `module_vulnerability_values_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_vulnerability_values`
--

LOCK TABLES `module_vulnerability_values` WRITE;
/*!40000 ALTER TABLE `module_vulnerability_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_vulnerability_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `prompt_id` varchar(36) NOT NULL,
  `vulnerability_score` float DEFAULT '0',
  `value` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_modules_prompt_id` (`prompt_id`),
  KEY `idx_modules_user_id` (`user_id`),
  CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `modules_ibfk_2` FOREIGN KEY (`prompt_id`) REFERENCES `prompts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prompt_metrics`
--

DROP TABLE IF EXISTS `prompt_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prompt_metrics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prompt_id` varchar(36) NOT NULL,
  `accuracy_score` float DEFAULT NULL,
  `latency_ms` int DEFAULT NULL,
  `cost_usd` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prompt_id` (`prompt_id`),
  CONSTRAINT `prompt_metrics_ibfk_1` FOREIGN KEY (`prompt_id`) REFERENCES `prompts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prompt_metrics`
--

LOCK TABLES `prompt_metrics` WRITE;
/*!40000 ALTER TABLE `prompt_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `prompt_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prompts`
--

DROP TABLE IF EXISTS `prompts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prompts` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `text` text NOT NULL,
  `selected_llm` varchar(100) DEFAULT NULL,
  `response` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_prompts_user_id` (`user_id`),
  CONSTRAINT `prompts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prompts`
--

LOCK TABLES `prompts` WRITE;
/*!40000 ALTER TABLE `prompts` DISABLE KEYS */;
/*!40000 ALTER TABLE `prompts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT '',
  `address` text,
  `bio` text,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletion_requested` tinyint(1) DEFAULT '0',
  `deletion_requested_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('4f3e078d-0aa9-4f27-b028-36fcf14f69bd','Admin User','admin@example.com','$2b$10$RKUs2zo334Nylear4NbCF.NI90jv3hll0NawHs1W7EJMQgEHBJdD6','','','','admin','2025-05-08 21:16:24','2025-05-08 21:16:31',0,NULL);
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

-- Dump completed on 2025-05-09  2:37:18
