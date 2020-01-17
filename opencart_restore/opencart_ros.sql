-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: opencart_ros
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (1,1,'RCLL','User','','RoboCup','','RCLL','123456',81,1263,'{\"1\":\"E123\"}'),(2,2,'Spectator','Visitor','company','adress 1','','city','22222',81,1263,'[]');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','7v43MvjXl9b6q66TpIOlIvFarz6SOeO1CKgJEd7trMQBPSMYk5YD8Ky6xdmXANlldPHGbg1c82HAeDWygwh552grEnrwjGHQ08roRSXq3gNOLFqPZo9G4FjN9ckNIiv8P0ATApkQbZscGY9drCjNZisVfsc8yeuzCNDAR0xCWyxlssFkAReGVYtLWgRCY0IVffZudct7NXpcTwcTxl2HhM1OWrgLJ0YPTHG49MCDng6zisLMMuFOEk1sFc1Srews',1,'2017-04-27 21:35:15','2017-06-19 13:43:01');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (14,1,'127.0.0.1'),(15,1,'::1');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=223076 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (222641,1,'p92ldWaZIycNTttB25mAcgIkafBw9RdC','b2cit6k926c5qq7u7aa01acma8','','::1','2019-06-27 15:27:40','2019-06-27 15:27:40'),(222642,1,'uT3Xg67AbO7IymW5DydCd6FBXitczvXN','o6t00k1qpf98qse9efrmk3ggn9','','::1','2019-06-27 15:27:41','2019-06-27 15:27:41'),(222643,1,'5ocOqQd28bQiKBEanfTSGHKk95wqgj5Q','3hcmtkop01p8q8uqqns8r13lbv','','::1','2019-06-27 15:27:42','2019-06-27 15:27:42'),(222644,1,'XSETwF1r5NOVbPJTG31IPUK9BmmhcrJl','o3sop91okmun9st7bq44nb7jah','','::1','2019-06-27 15:27:43','2019-06-27 15:27:43'),(222645,1,'nx45Bz9BnIs7CB4ItefyySgVnrR5gDX3','0dk9eea70rrovb5u7cvgdkjciv','','::1','2019-06-27 15:27:44','2019-06-27 15:27:44'),(222646,1,'VbPdfH7slv0YYnjr56Dyp44p5RVsNJCM','lo4obpn1medg4fvvu6iekj93rv','','::1','2019-06-27 15:27:45','2019-06-27 15:27:45'),(222647,1,'WhcHEALgdsBYaRiGmMFnmHrMyD7Y0brr','6tbqilfkiet6vlmb26280ji3g7','','::1','2019-06-27 15:27:46','2019-06-27 15:27:46'),(222648,1,'XQRshF1EP5HOqtLwa4rek2UlxrGme6W9','ogenli83t51ljj8am1bftpt1qb','','::1','2019-06-27 15:27:47','2019-06-27 15:27:47'),(222649,1,'uw6C2uSYapzxRG4bRX26DNaXycyAwVQO','h64rdmhp8cfc0levblrcu1e0vu','','::1','2019-06-27 15:27:48','2019-06-27 15:27:48'),(222650,1,'AlN9TKY9geWbvIoIzpJ3IE8l1PhIll2r','fdr1rg7cs70pggg64hldchjvqg','','::1','2019-06-27 15:27:49','2019-06-27 15:27:49'),(222651,1,'WivXdyiPbrcPt7rtSCLaIEZkxySrqsiO','hslgt6jdsoosiok93c1bt4as1a','','::1','2019-06-27 15:27:50','2019-06-27 15:27:50'),(222652,1,'A8LqJvKnhYlrBRAffIhIoLehDQN5PSsc','ae1tl7p511oimfvh8piu7su3gg','','::1','2019-06-27 15:27:51','2019-06-27 15:27:51'),(222653,1,'iBOiov5XAnrnYoVn1OyEq0v09BsxYkCc','qhh42mdidt93gdneo5pgqgq0b5','','::1','2019-06-27 15:27:52','2019-06-27 15:27:52'),(222654,1,'YnjlxfxDdVO9N3mVg1P4fpGq82xYWdoK','02lp4g2sh2rcvr3anasngq3kor','','::1','2019-06-27 15:27:53','2019-06-27 15:27:53'),(222655,1,'GBEnRtUlUgrX7ry2G7rbNnm03C3BsTIe','p3lqf92ron2be1elm67abr6be2','','::1','2019-06-27 15:27:54','2019-06-27 15:27:54'),(222656,1,'wXeuc6G1gL7d8hIWbtFVpjiNrweo063N','cmg390tfibup7dq6e4e0k0vr0u','','::1','2019-06-27 15:27:55','2019-06-27 15:27:55'),(222657,1,'4slE2o8i0W8ivxvd3EHXnLbaFEh6O5lj','1iljmtone5jhat868apb35imaq','','::1','2019-06-27 15:27:56','2019-06-27 15:27:56'),(222658,1,'g4LrJkZFCdTJk66h9ntSbgoTx7iYOb2S','l7lvncg80aqankusn8as5amage','','::1','2019-06-27 15:27:57','2019-06-27 15:27:57'),(222659,1,'DuLIHZ1uCXQ6R4vAm1Y3zwrEJ1uVbCET','8tv0fp9bmbmrr881lhg93rhjhs','','::1','2019-06-27 15:27:58','2019-06-27 15:27:58'),(222504,1,'3SmYT0z41P3MyMsIGbHVKh8suSGgCQO2','nf8aslr6jobs1motnu4hoi4749','','::1','2019-06-27 15:25:23','2019-06-27 15:25:23'),(222503,1,'i2yYeBe0g3o35YNoLFktbW4IYIqcy0Lx','5qvgdbsr4ddag1utkalms7u0ck','','::1','2019-06-27 14:58:03','2019-06-27 14:58:03'),(222502,1,'rHM0AaREG6KFQP0t0G2M1nxpn0OIoE9n','fodpqgerbdaicp86hku6kd303l','','::1','2019-06-27 14:58:02','2019-06-27 14:58:02'),(222501,1,'DdOhxu1Wt5rpLkJMncjLMT2IjEJJESRl','ag19srjl8v5h9qkupk2hma53sl','','::1','2019-06-27 14:58:01','2019-06-27 14:58:01'),(222500,1,'XGD4UmPs2em1E2lnBwDH40kd2DS8omBp','q9itr98h10lk21cl2d71s6lsl3','','::1','2019-06-27 14:58:00','2019-06-27 14:58:00'),(222499,1,'auuz6qC2Uay1fn1GboC730FJn7KfZ5F6','70v2hn0jt7rka3o12uc92o9m5i','','::1','2019-06-27 14:57:59','2019-06-27 14:57:59'),(222498,1,'PieasxClI8EysMfgoUEsrK8yoTX6Xih0','0hdgm5vsmmv90ttlul1vjfgptf','','::1','2019-06-27 14:57:58','2019-06-27 14:57:58'),(222497,1,'qCjEwsRTs32lTVHbk9PzfsgFDOCd4nF8','i0q3l6q981bpldvnpr7kss70gs','','::1','2019-06-27 14:57:57','2019-06-27 14:57:57'),(222496,1,'Hj1K0DCDYuxPpkkRbFfjPa9SWg4GFt9C','g6lt0pigvvngdiij4fq4b4u2if','','::1','2019-06-27 14:57:56','2019-06-27 14:57:56'),(222495,1,'6N4m3aiImhC7dAwRDQS0cAsIwmivJOFj','92jcekbbq3ru4nm6e4koct2g09','','::1','2019-06-27 14:57:55','2019-06-27 14:57:55'),(222494,1,'jhRIrWZ2KsbW5ncUeLRdogDDNoZqq6Nh','cjbcp49vrq30f3kt81btcj7jl6','','::1','2019-06-27 14:57:54','2019-06-27 14:57:54'),(222493,1,'OTJzC8zVF4FTFUskPDZzgnTNmCrsGGA5','mt8e7tnkh34oes1tkaa161guhn','','::1','2019-06-27 14:57:53','2019-06-27 14:57:53'),(222492,1,'aqC2H8qeGNte3SMdMh8JcNee5TmewJBv','kiicrk0kll800hfned0biudif4','','::1','2019-06-27 14:57:52','2019-06-27 14:57:52'),(222491,1,'gVakJPvvD7IiJT4CJDEn9bTS6qwJinF3','5i2ruh933f3f4kfnuct8dmk49f','','::1','2019-06-27 14:57:51','2019-06-27 14:57:51'),(222490,1,'v2giDTNcb8fw6akXosIDXoZtll6Bknxa','pe3medbb7ta6d4ppb82kfi33ko','','::1','2019-06-27 14:57:50','2019-06-27 14:57:50'),(222489,1,'zrfql6fDbqmVF6XtD9MbO3CWXIcxV5bu','if8elsl4tu09iu179mlgq0vnct','','::1','2019-06-27 14:57:49','2019-06-27 14:57:49'),(222488,1,'Z0tKlHCFMrF9ShrGjGKR6B1TLLwZiN3o','jck8r8gil8v1ljuk8p1f9086og','','::1','2019-06-27 14:57:48','2019-06-27 14:57:48'),(222487,1,'GZY9NpRzuDYweF1iyzHioSmJWhBTLtiL','82jpqqpqdsgm1cvvouq5ikrn9d','','::1','2019-06-27 14:57:47','2019-06-27 14:57:47'),(222486,1,'sQiwOBk33ZhRxtcjEyBEAAyMhc58Bifg','hqomj14aoota3mu1m0v7nrvhgf','','::1','2019-06-27 14:57:46','2019-06-27 14:57:46'),(222485,1,'FamH0RWz0eH4E7ydsp18nPC8q0rCWues','88nopulp3mm28o4scuip83g6m0','','::1','2019-06-27 14:57:45','2019-06-27 14:57:45'),(222484,1,'acn4Oj6PnR68nUsPFoItPGklFR7Wh7Y9','f95lv0mo8eni96399if4j41805','','::1','2019-06-27 14:57:44','2019-06-27 14:57:44'),(222483,1,'4LsDmYf7H8g6mCTIsSBP8I2xXFKN9cR1','br36064uppc4ru0bke8gn1g303','','::1','2019-06-27 14:57:43','2019-06-27 14:57:43'),(222482,1,'gxjpRWhIn4IDmGP4iRkw0mu5AWhDuYqp','sbk515iu1lrfi99s5k6j9prfr5','','::1','2019-06-27 14:57:42','2019-06-27 14:57:42'),(222481,1,'u9RkYRo0XaEcYGtV4CneOvOVIu8VmKwR','ae3njg6gio9hrbb2gpc3oqjnkb','','::1','2019-06-27 14:57:41','2019-06-27 14:57:41'),(222480,1,'cDtcg7DDjFc94Kfcu6l1QrY7WD23RPY9','0f0cj6qvibisdqr66oc3f5fouj','','::1','2019-06-27 14:57:40','2019-06-27 14:57:40'),(222479,1,'j4ll38lYGt3eQWMmMEe2aoL5HrIY7mJ1','trjhl6v2tm0gi2jnaonceqt916','','::1','2019-06-27 14:57:39','2019-06-27 14:57:39'),(222478,1,'Ly7dTSVVZSHrOs84WaDAqLzQc5t9M5ad','95oqfivomtrp53g16uocvkh6qg','','::1','2019-06-27 14:57:38','2019-06-27 14:57:38'),(222477,1,'V2Lj0PM5fLWzCIlQ4I1cKE0HLKdLO2bz','rdbu9e6fr40rna5nhbsl2jhunj','','::1','2019-06-27 14:57:37','2019-06-27 14:57:37'),(222476,1,'YDLvdwfU3M9mBwA8gdiamTj6TYlgSfQg','uemnilci1vvioso8kqubt0t808','','::1','2019-06-27 14:57:36','2019-06-27 14:57:36'),(222475,1,'ecscs5W2XPJ5x1kGTpufMyW5f5a4qUyW','mhf500cg9ripi6ept7v66msivm','','::1','2019-06-27 14:57:35','2019-06-27 14:57:35'),(222474,1,'4aST2LC4QEdL1w9Uft5B4cU60XI5KmHa','mms2q8ppovbcm76pt9hkgduh61','','::1','2019-06-27 14:57:34','2019-06-27 14:57:34'),(222473,1,'ysle53LVHgGusfv3UkHDpfdG8Kk0U9F9','gkdne512k0c2kk00dco075l96d','','::1','2019-06-27 14:57:33','2019-06-27 14:57:34'),(222471,1,'Z1jZAWLV9Z5ErrLhXcwRAAD9AnbVYuLH','ubgq7ck5j1gunkladebc126g4p','','::1','2019-06-27 14:57:31','2019-06-27 14:57:31'),(222470,1,'hZa8QXWMBS1udDiZ7iBZJRqb3xASdkXV','f0i8ohcm05adjqprabvb3qqg68','','::1','2019-06-27 14:57:31','2019-06-27 14:57:31'),(222469,1,'hvHQ9kTqSHW2PnpkfmAMo4AZ4NVLc9R1','1cem18mj4vl2pth7qe0tkit2th','','::1','2019-06-27 14:57:30','2019-06-27 14:57:30'),(222468,1,'5kuoOcz3XbDy6HAhOj0zbsbpDAmADhd3','rtq9m1jhso2f1q6bg7hpin44nb','','::1','2019-06-27 14:57:29','2019-06-27 14:57:29'),(222467,1,'KANaU3iiWz73XQMX3llQLMBfACdHLOGz','128re163jeqnt3lvnqucl77mfi','','::1','2019-06-27 14:57:28','2019-06-27 14:57:28'),(222466,1,'rfCiw81SycsCIJccBRsNfA2KcaJDNfWO','j6d3rvkv71he4svbd98etaneck','','::1','2019-06-27 14:57:27','2019-06-27 14:57:27'),(222465,1,'7powfiBUuqWrKJU9lUnVg7B2EwT1h0Do','gsulg0bdrmhbdpcnlh478mhduq','','::1','2019-06-27 14:57:26','2019-06-27 14:57:26'),(222464,1,'6SbuO4fc3WkBCIXfljy2RFIooL7ccITA','ukaf4jnpsqcos936inhmpn2770','','::1','2019-06-27 14:57:25','2019-06-27 14:57:25'),(222463,1,'45oxUTzGRzVujaA6oZqMgMrH4Yn8vwot','jck7r209586s8cak8ql2i1mb01','','::1','2019-06-27 14:57:24','2019-06-27 14:57:24'),(222462,1,'4LD9p1mwqh7hqXesrQoz5y8svJ4vwWf2','5v3ueuubtppu792s95fk5hr6uu','','::1','2019-06-27 14:57:23','2019-06-27 14:57:23'),(222461,1,'MhN0fRpQegn3Hhj7rd6mgebjx9lAV4EJ','2se0v7jo8p1qvaql48r428p89d','','::1','2019-06-27 14:57:22','2019-06-27 14:57:22'),(222460,1,'MdgVC0hFQtsfjdZwT2uRTZAaV5IEkwvc','229537sdou7767mgq5vgl67aik','','::1','2019-06-27 14:57:21','2019-06-27 14:57:21'),(222459,1,'zVloTr9sCeIaHUYn2mLBYFFShiy5evzQ','22kp19uhpr44qhrqnvt2fv3mvg','','::1','2019-06-27 14:57:20','2019-06-27 14:57:20'),(222458,1,'SJddSBJQuR6vCmQrTIQ93O7ixlcAPuOv','77pf0b7h6ahktdpoe1fbhfc9vs','','::1','2019-06-27 14:57:19','2019-06-27 14:57:19'),(222457,1,'HucBs5UiQW49g1wmorYo7Zn9yxzSCFNd','e05qgcis30alkmukmo6dkf9all','','::1','2019-06-27 14:57:18','2019-06-27 14:57:18'),(222456,1,'DOfhitFR4OOLtWjC64qX5AcpslYZHPNi','rlft91glcevo701uul1bh4vv1e','','::1','2019-06-27 14:57:17','2019-06-27 14:57:17'),(222455,1,'2DAAAhyKjqui7lg8MibZBcV8ZrZ1JOa7','4ckstmsat90722jsbfod59sdu7','','::1','2019-06-27 14:57:16','2019-06-27 14:57:16'),(222454,1,'26Cibg3wRHWax974gR6hiOSxMSdk1Ocy','vfvr6494th4mhse11jgnlbfn62','','::1','2019-06-27 14:57:15','2019-06-27 14:57:15'),(222453,1,'0VJxhhWA868VBRc5SFA0IJPoYOBFHcsC','teb3qv8nugs050jjebpo07cd61','','::1','2019-06-27 14:57:14','2019-06-27 14:57:14'),(222452,1,'RDJXkD1HtqYH6sXsgs7xuF9onB7j13H1','503vdku9evnt7mht7h5q01jks5','','::1','2019-06-27 14:57:13','2019-06-27 14:57:13'),(222451,1,'sNGwgaWsoH2nGO6DNjSJIArXKaUuFBbk','fs5te7bfpgq6suq549l6nf6anm','','::1','2019-06-27 14:57:12','2019-06-27 14:57:12'),(222450,1,'2qL53tekVe7G3KLyjokQ2jBBAfTfeitl','ptklh2on2n2gkjl6o5g1v623t1','','::1','2019-06-27 14:57:11','2019-06-27 14:57:11'),(222449,1,'RfWDDVYHbAA0zjcsdF0CAyjM4POMtq98','78u6laatdf6quus8didpf4paek','','::1','2019-06-27 14:57:10','2019-06-27 14:57:10'),(222448,1,'t9otKlo9ynxMydaOqPe0Ko6e1WQLfn7n','g88q3tdsjkl0ecsjdncfpm3mpv','','::1','2019-06-27 14:57:09','2019-06-27 14:57:09'),(222447,1,'IeuScEPQHxNUMR2suj3jSH1b9aioB4o3','si9ctfk6u14rt37da7r28js5k3','','::1','2019-06-27 14:57:08','2019-06-27 14:57:08'),(222446,1,'UPs8iLAXXva0eJU5hruN2t3Shm4qbwJg','pcb5cb2ki7po66mgcuj4conjoe','','::1','2019-06-27 14:57:07','2019-06-27 14:57:07'),(222472,1,'kBr1YKqSFT0FmQini9Isz6cCtU8MzWPM','8nitml5m4n2pg89at5vpqcujtc','','::1','2019-06-27 14:57:33','2019-06-27 14:57:33'),(222438,1,'Tr8gigp92Frxrl5nerOrM194SntkYZ3g','ft5l86ovgknlgdhcq4c3opct4l','','::1','2019-06-27 14:56:59','2019-06-27 14:56:59'),(222439,1,'X7wQ7WVBLEIMEwzkyEPLFxeYLeWCgwwf','cqcpc17m2r8t1ked7i19bkk20l','','::1','2019-06-27 14:57:00','2019-06-27 14:57:00'),(222440,1,'1qxJuohaeM8ReyURDxkajGwN9BsWjcnH','j16pgnmgdnuker1oihn3eeprg9','','::1','2019-06-27 14:57:01','2019-06-27 14:57:01'),(222441,1,'NIrSRx60hxJA5geCtBKvppnKoDkuaHBW','9bl7jtsjrbf9ma03jh7c5ve8ub','','::1','2019-06-27 14:57:02','2019-06-27 14:57:02'),(222442,1,'Scy6vlGNbXNjkcWYksQbGuACeAUvrF8F','lpgjd0ear7obqnqqsftqch7npv','','::1','2019-06-27 14:57:03','2019-06-27 14:57:03'),(222443,1,'z9uHLttslHAE20GkfrlpY9wUkkUP78RR','5skvkjh6mva8e0e8lupvpmkv2r','','::1','2019-06-27 14:57:04','2019-06-27 14:57:04'),(222444,1,'uWNySnVWH7PpqdfVxYvLANX6ZcHVoxOg','v717skgat37srqcs6khp7q60n0','','::1','2019-06-27 14:57:05','2019-06-27 14:57:05'),(222445,1,'F0Z4hVlzjXPlpW3b7KCKNeKMPMIm7lJO','7eq75t0ijc5jf5s1isf503t9as','','::1','2019-06-27 14:57:06','2019-06-27 14:57:06'),(222570,1,'vLoe35V3tfZqNLcw3QFS5kvZoJWu52BS','e66fto4h6n9ef8f9qemcaau7ge','','::1','2019-06-27 15:26:29','2019-06-27 15:26:29'),(222571,1,'OFYopmLqVOCcb3JEs3REi2TZrufBjrL7','67af7b76kq9bslfifs21vaav5h','','::1','2019-06-27 15:26:30','2019-06-27 15:26:30'),(222660,1,'dvNZ3aDAhs2JH1BcqCZkUAjJpqbL7NS1','ehvufk9c1dsu5g4ic5o67b8v94','','::1','2019-06-27 15:27:59','2019-06-27 15:27:59'),(222693,1,'JtYDwrNU052AtuX4AX8gdGKVAHqKyJ0a','3d9c5pcao0nvl8boh8k6p1iait','','::1','2019-06-27 15:28:32','2019-06-27 15:28:32'),(222694,1,'AVHPhwMTDPM8CVBTge9Kw0bvOb4B5b27','bn58l6rbj11lda9g5ou7nm91sn','','::1','2019-06-27 15:28:33','2019-06-27 15:28:33'),(222695,1,'scWMe055isb003CqpELn0oH5mBeHirNC','9mhv2u1b0e35kma8uqfv6tk0mf','','::1','2019-06-27 15:28:34','2019-06-27 15:28:34'),(222696,1,'ZBauMG71Z4YqkF4HhH9LTNCKAymisAjX','furncnebga92etmf5iknqta3nh','','::1','2019-06-27 15:28:35','2019-06-27 15:28:35'),(222697,1,'2Gi1nV8kD4pyLVvRuHKN2tZwX9brVN2W','u3407jt41328165mlmj53tlgpm','','::1','2019-06-27 15:28:36','2019-06-27 15:28:36'),(222698,1,'6ufKnSR6fwB9Wbilwd04m9L53MUKeTM5','c0ivmc66li1jc0kdkipfb20h1r','','::1','2019-06-27 15:28:37','2019-06-27 15:28:37'),(222699,1,'dX578UFkDB6yrPXe7lalXtooSVccl0QY','lilkj6d7mdo8lrn6efg13ffumg','','::1','2019-06-27 15:28:38','2019-06-27 15:28:38'),(222700,1,'G5YSjHikZrOYGjiKycB6fUKvqE1Sz0w2','spadem98dqor0iodo7r1qnv2ed','','::1','2019-06-27 15:28:39','2019-06-27 15:28:39'),(222701,1,'hCOphulWRc44MXv0mvyZWMJjNlPTlCm4','rj7pqu6ahsbor9nsqsin8b01h5','','::1','2019-06-27 15:28:40','2019-06-27 15:28:40'),(222702,1,'wX9zeQFPlTKVIl9L668UOeQa0iTT6WPW','7c9hmm1kgvb86601a9ht30f8gs','','::1','2019-06-27 15:28:41','2019-06-27 15:28:41'),(222703,1,'KxADsSOWxdLpf8qjWZeb1eTTk2z2sADy','ehs77nvifdiqnjupfeep4la47v','','::1','2019-06-27 15:28:42','2019-06-27 15:28:42'),(222704,1,'Nb0Ey80Jg1QACBKk0cAFBGo5pTEUm1GO','14pob2m2sfuebsef3to31hmrlu','','::1','2019-06-27 15:28:43','2019-06-27 15:28:43'),(222705,1,'sMh4EpdqVmrZ7qRMZ9dEnXaqtWBzg5zj','agmtm7k6cmtksql8vdic5ecij1','','::1','2019-06-27 15:28:44','2019-06-27 15:28:44'),(222706,1,'8oXHxYCesAOkEhafxkX1hYBcxHKwQGqC','gvan2djdv3qmfrf6aan9l0odf2','','::1','2019-06-27 15:28:45','2019-06-27 15:28:45'),(222707,1,'oAYHXO1b7ktXi7hyIxhhDvRGawLnKNeZ','limcns6fhup47621lrgmsbttbc','','::1','2019-06-27 15:28:46','2019-06-27 15:28:46'),(222708,1,'sTpaaIkQHmOhL7ILNEk5IoJHJrBiIBnc','4qrncmedotskgo935adbmbl22t','','::1','2019-06-27 15:28:47','2019-06-27 15:28:47'),(222709,1,'y9uM9g1tSiah3vL6j64fTYcim8Q9iC2I','r86lbrl91bkqr7edk7cm3eg8vr','','::1','2019-06-27 15:28:48','2019-06-27 15:28:48'),(222710,1,'YR3XMqioGcXfGINUBQL5VvOoAou7bFvl','qhiuhaecaj79oeq7vikpo5j42k','','::1','2019-06-27 15:28:49','2019-06-27 15:28:49'),(222801,1,'AC2Eibeze7Mek23o2OPxAUNPDGPWQkhq','00nloueq5p4e6hph0v8643p4ur','','::1','2019-06-27 15:30:19','2019-06-27 15:30:19'),(222802,1,'vEDOSyH1I9fOkTZQ7FK0c3iVVbeBFTw3','lv0j8uo0gi2i2c48i55jdsj2me','','::1','2019-06-27 15:30:20','2019-06-27 15:30:20'),(222803,1,'eX0K3BzuZXNKWINikzHu70EPKXX5jjNt','vbj5v06ofvonit3se5goo2q35s','','::1','2019-06-27 15:30:21','2019-06-27 15:30:21'),(222804,1,'dxpGbBzhJEPQuqDpW5rUmN6RjyJZfDxY','joc2jdj0jr9f65embvfq3aklj9','','::1','2019-06-27 15:30:22','2019-06-27 15:30:22'),(222805,1,'uBKsJbeCYvnwYsM5L9hwN2dPrfgyf1b4','tmsbae51nilat145aua37m8m5v','','::1','2019-06-27 15:30:23','2019-06-27 15:30:23'),(222806,1,'DhD5Mrd8RpGZLBvngFC7J87b9H6QdSbw','65q1vinc63bakmeidqavd1cq3u','','::1','2019-06-27 15:30:24','2019-06-27 15:30:24'),(222807,1,'cKB0Hh825RY2b1MSVI3p85pWy5qc3EfW','20de5fnpu9im68rfo3pc85pt1l','','::1','2019-06-27 15:30:25','2019-06-27 15:30:25'),(222808,1,'9xhlhUwLQ2DagOQnxVq0tf3DINAQJ0U8','2e8kg4ueai3jmc20o7iv0pjo98','','::1','2019-06-27 15:30:26','2019-06-27 15:30:26'),(222809,1,'pKZLjsiuQYDRe9S6u9trbMOiKWXRdtKu','75andeqm9emud5clgooc0kgevb','','::1','2019-06-27 15:30:27','2019-06-27 15:30:27'),(222810,1,'PON2AfUHASkauCA84oZQEiM5sOikltJZ','u4rsvlgts63p1g2gprlhmjj6be','','::1','2019-06-27 15:30:28','2019-06-27 15:30:28'),(222811,1,'omCTKxye3r2BbCvzd9KBgyxb6cNLqbEd','9rjq48dv5465hrprp4rkfonf8l','','::1','2019-06-27 15:30:29','2019-06-27 15:30:29'),(222812,1,'QOPM5dP9Dc61IKYXBs5MuowDV01Y3ghX','p55iultocnihpmagutgbm35pf4','','::1','2019-06-27 15:30:30','2019-06-27 15:30:30'),(222813,1,'riUgMqVQWZLbFCr7WpX7aVMewPSnLRYD','es2ds5f3nmv06a264a58kbh0ke','','::1','2019-06-27 15:30:31','2019-06-27 15:30:31'),(222814,1,'UaHaoWkKv1E1jO65eNcitBmF5bdQywV2','dbvpernhlkb3d90ro5a8h77s1a','','::1','2019-06-27 15:30:32','2019-06-27 15:30:32'),(222815,1,'7uIgIDNqjrYzhoLtUllNFNNSjUpB3py3','8la599fkch1c6mj0jjhsknd7c8','','::1','2019-06-27 15:30:33','2019-06-27 15:30:33'),(222816,1,'TXu9Dgsg3qTET0M13p6pi6t3A8u9Fyi0','nvn4jjavoskl8kvm7r5lag0o75','','::1','2019-06-27 15:30:34','2019-06-27 15:30:34'),(222817,1,'DVdLAUTQwvUMsLqzJFcb2yGDs24YMjYr','421e4besjo4clr59p8baqf09f7','','::1','2019-06-27 15:30:35','2019-06-27 15:30:35'),(222818,1,'7C7J2ODQrgxH2dVCCCw3BmqB4Fw3P7kz','8s4ahd05u9rmvlcitpfc7i3sj7','','::1','2019-06-27 15:30:36','2019-06-27 15:30:36'),(222819,1,'xDl2G1fsHSQE4eroLpKlVz0OUR1qeNUQ','9hm3rcjqqfehk8tavolcto4v6v','','::1','2019-06-27 15:30:37','2019-06-27 15:30:37'),(222820,1,'0MMEngUsZ3baroGgzKGknR2h85Spip3p','dtda4ckma2i0h394qma145dk4v','','::1','2019-06-27 15:30:38','2019-06-27 15:30:38'),(222821,1,'aFhRcMYN59IKpSWmiNHa6PkUixpvktGF','odpu6nf1vko6i90vipocpkmk62','','::1','2019-06-27 15:30:39','2019-06-27 15:30:39'),(222822,1,'6hvPWIZzYGUQx8IQUgLBf0kI1g84Y7OS','h2lf5n4c4jm9pqodf2bsjnf8ji','','::1','2019-06-27 15:30:40','2019-06-27 15:30:40'),(222823,1,'sDxGa219Q7SFDMdYwAkkixsL3XOZpGaX','02pde4rvt33ana82nkhsaophq8','','::1','2019-06-27 15:30:41','2019-06-27 15:30:41'),(222824,1,'ur00Z40vMqbZXVBYvWTU8mkJASThPemo','pfjkphb3m1lmel7t6mvask65u6','','::1','2019-06-27 15:30:42','2019-06-27 15:30:42'),(222825,1,'XEZDHrRWbnfbQ4zCfVd8ISWyQkJKAYWN','886fb4hivlvshl4qv3986catuj','','::1','2019-06-27 15:30:43','2019-06-27 15:30:43'),(222826,1,'wBPOX6cEmfoa0VdleaHBzxPHsvB1KBvl','ic5kadlhmk9ebo2f116qvhtp80','','::1','2019-06-27 15:30:44','2019-06-27 15:30:44'),(222827,1,'0JD41ZdVorNr52ZI2x2fEiMkY3AgP4wJ','t6fgd4cglordasir76au5dlpmc','','::1','2019-06-27 15:30:45','2019-06-27 15:30:45'),(222828,1,'9kNrByQD85yRj8p6e9T8WuMz2TWBjGwi','eqhp1mb2k1ljbrc9hfjuucdno6','','::1','2019-06-27 15:30:46','2019-06-27 15:30:46'),(222829,1,'uzjD1BAkMzRX80IJIEgs6SK2g7Pp2zHN','eg1t1baombnecet8bhr2euru1q','','::1','2019-06-27 15:30:47','2019-06-27 15:30:47'),(222830,1,'4aFDOCXd3O0iqRtSaTLQReQkXnp2xumU','avu5eq6hlh750jpjb89ce3kmtb','','::1','2019-06-27 15:30:48','2019-06-27 15:30:48'),(222831,1,'extzlbmrN79PaPpWY8Jt4AYssr3AkoaL','roo1otptisrodk266shsgiqs7n','','::1','2019-06-27 15:30:49','2019-06-27 15:30:49'),(222832,1,'Ur015FrEBTVTTve7DPdD6I2vYfA6Lhvi','8r2dfl4tglh48rik6pt5uvgoo6','','::1','2019-06-27 15:30:50','2019-06-27 15:30:50'),(222833,1,'q141VH6F7w14JojtCd7fHwvb4VOucyqp','mge74kvigtml72u4q4229idhpf','','::1','2019-06-27 15:30:51','2019-06-27 15:30:51'),(222834,1,'SYJJVH2OtmIQENcq9xFUR48NTEtNDrm3','bebv3l6dosvh1rtuatcp08am1l','','::1','2019-06-27 15:30:52','2019-06-27 15:30:52'),(222835,1,'ENVm3KtiAFKzFjGZ3es52Ba8W5EsrDdm','t67ihcb9kchg9fbpaqmglinaak','','::1','2019-06-27 15:30:53','2019-06-27 15:30:53'),(222836,1,'871dHBu1FXl6yiXWOQK2aY4U5MpxaNQS','n97domcngm79d7cifikcua229p','','::1','2019-06-27 15:30:54','2019-06-27 15:30:54'),(222837,1,'2z7g4vWNgoxnkOm7ihGJ8pTo5UMgozlD','jsb8lv3u5gk04n1gmi5obo2r3f','','::1','2019-06-27 15:30:55','2019-06-27 15:30:55'),(222838,1,'WX9TGjFnYy3BqMt8MKO3DPuvvFJMp9pY','eemak6nosk7k5ql6vpcros3ul3','','::1','2019-06-27 15:30:56','2019-06-27 15:30:56'),(222839,1,'RvzgrnsmUGJUlQliRxhkTPSOGK0TidIY','a2u7772f79vai74pka2769o8fl','','::1','2019-06-27 15:30:57','2019-06-27 15:30:57'),(222840,1,'qIcCf81LsjUkTdd41bT55XfOwWhYwqCf','64egllnu6l24e90jcjjkaneoul','','::1','2019-06-27 15:30:58','2019-06-27 15:30:58'),(222841,1,'bP6jjDv7RVnja9B6XRTAsHKHw3TWhmYj','9lblkn9lul51rf9hbeevlpbuff','','::1','2019-06-27 15:30:59','2019-06-27 15:30:59'),(222842,1,'7QXCxhJ2RiEVfevord2tsoeDXmavR1ii','j0rutuefn2qpb4bldrdpaudq48','','::1','2019-06-27 15:31:00','2019-06-27 15:31:00'),(222843,1,'YPCCcxQd0d4JQGgnSqyvu1jrc4eLtpTt','4nna378mc5kvfqg0meo25oqa22','','::1','2019-06-27 15:31:01','2019-06-27 15:31:01'),(222844,1,'vlhDPLsZemIAKbQn80NptKHrawCMO51M','23ansacddklr4h57rq6nlpnj74','','::1','2019-06-27 15:31:02','2019-06-27 15:31:02'),(222845,1,'CaCbhrYPk6lz64Jvfl2ELLDDR0gCyyej','s1efnr3hc2pd70s8he83tc4i1a','','::1','2019-06-27 15:31:03','2019-06-27 15:31:03'),(222846,1,'qUxhMGiCseGoxIrnXFGhMra1NfCUT4Ao','0dq71qchaci7f640n76pn8gg4s','','::1','2019-06-27 15:31:04','2019-06-27 15:31:04'),(222847,1,'40QPDljwutw9pgMPLkOCX4b8qi5ymLCE','ctm04t74ei5c4553q55ne5ic8r','','::1','2019-06-27 15:31:05','2019-06-27 15:31:05'),(222848,1,'vBSETFxPPXW4DUkJPTefo21nZsEH4Yyr','sm9383lm0dj1guj4spqr9nkktp','','::1','2019-06-27 15:31:06','2019-06-27 15:31:06'),(222849,1,'uBy0S38xHoYoFDX6qKlLVgtIoWCiGl8S','rgvkbaaumbp94ruht0dnhqnmvi','','::1','2019-06-27 15:31:07','2019-06-27 15:31:07'),(222850,1,'E85wf15wJDxaaLxhuvNCDiasBErstzK0','ad9pkpqr6a0pjd7a2e9cp4b11u','','::1','2019-06-27 15:31:08','2019-06-27 15:31:08'),(222851,1,'kWZMZGMTBAX5MsW1SUOMFeR2kqXZw66w','k37e83edc4uju0vsfs7k93ad37','','::1','2019-06-27 15:31:09','2019-06-27 15:31:09'),(222852,1,'y0cAB3JWL0BISvPZ52tl0JTSZ3Hlwy6H','h8jb13bs7k7e1e58f78j9k436g','','::1','2019-06-27 15:31:10','2019-06-27 15:31:10'),(222853,1,'sco2yFQVNVIXMfVgY3PUJ6GlmJseXewz','vjfo35442n7qmmkm1i1k65gn53','','::1','2019-06-27 15:31:11','2019-06-27 15:31:11'),(222854,1,'aZNhIhWBiUtRgNT6ZaChxndt8mMHmnXN','8ena0ivfeb2o2g43710osa8tnk','','::1','2019-06-27 15:31:12','2019-06-27 15:31:12'),(222855,1,'5uzqKjYP0eDmh12uPnQubRAMHTj00aMf','p7i9o1pie148lfjt3d2tksp4mv','','::1','2019-06-27 15:31:13','2019-06-27 15:31:13'),(222856,1,'gMrtBBwrTf7JTxzFSRy8eW8IQ0v7iW4A','j2opj34ba0h2p0a5tda79gsca7','','::1','2019-06-27 15:31:14','2019-06-27 15:31:14'),(222857,1,'9Yk2gwAyeZXcboDoviopP9RQUu1GA2Vd','pgcmls9sejlbnvfe353rqc9dit','','::1','2019-06-27 15:31:15','2019-06-27 15:31:15'),(222858,1,'E1ae27u1IMiOLmfDutUHGKpWrUTOaPuB','s7oj765om9siakjm3lsv11e1pe','','::1','2019-06-27 15:31:16','2019-06-27 15:31:16'),(222859,1,'ATQU3DZ0ftmNxE974dzyuOM3mKeexh7g','0nbi8q6cfrgstgismf7g1kbu05','','::1','2019-06-27 15:31:17','2019-06-27 15:31:17'),(222860,1,'TKOIjZLkWzTbS3yzyzpcTmlmPF97Yy51','7o3uiat4q8sms59q7c4ocfupb6','','::1','2019-06-27 15:31:18','2019-06-27 15:31:18'),(222861,1,'XYzV3ggaMXRHSLV0ViJPlAbuZ3CJXEin','vl2l0cbob71b3mcsn6e9tuacj4','','::1','2019-06-27 15:31:19','2019-06-27 15:31:19'),(222862,1,'dlYosxeJtOwPd2OgNOsON8J9uRp44Ly2','3k0mq9p2p79o1rc8chu8kvdlsf','','::1','2019-06-27 15:31:20','2019-06-27 15:31:20'),(222863,1,'MDZXWCtfXoP5aLdh5UksXifuSUII9tpR','fp0hs4rs04omucchit8ctmap95','','::1','2019-06-27 15:31:21','2019-06-27 15:31:21'),(222864,1,'cuccsWP86R7LzTlxhEnN4PQsLrTWNghf','8avra8c2t9tfbvqfr8iiubedeh','','::1','2019-06-27 15:31:22','2019-06-27 15:31:22'),(222865,1,'0ZIhBFwWmbW7mRRIcAguaZbjEYJjVhrD','ohdcbb4lbfi4oskbsk9gksdq65','','::1','2019-06-27 15:31:23','2019-06-27 15:31:23'),(222866,1,'xbOZOqkpnqABFm6BEDLlLcPzRE5Egb2D','u4c79l4v9jcs6k6vgcjb2k8tdk','','::1','2019-06-27 15:31:24','2019-06-27 15:31:24'),(222867,1,'BEJ9eZ5ca572vol1BKld62rraG4mlu8O','2scihf4mubanv9amde0rfj9j9l','','::1','2019-06-27 15:31:25','2019-06-27 15:31:25'),(222868,1,'vD2bR4Z37HiZNoHPtgahgk1bbxQQYj75','n2p4mdpbv7je6lgek01j866kpi','','::1','2019-06-27 15:31:26','2019-06-27 15:31:26'),(222869,1,'AKp5HXktarTyPmEJbs6SnNEkWdxbU1eZ','2t8uhsn9p19pq7iapucmg4jlht','','::1','2019-06-27 15:31:27','2019-06-27 15:31:27'),(222870,1,'uDUzlvJ3TFVTYVGgdzmWfs7gyyvVwALC','00jbo79pim5rh8ff97q84d4ll9','','::1','2019-06-27 15:31:28','2019-06-27 15:31:28'),(222871,1,'EdEvUucw1LpfWCxtM5M9wqawugUknAV0','6p0uck35nkdi1l6ng06g698dpe','','::1','2019-06-27 15:31:29','2019-06-27 15:31:29'),(222872,1,'zPsheUQERtlSR5qAsKEYEeGwBdeHL0J5','5hsan0l3fbr1ldt5onuivdp1tc','','::1','2019-06-27 15:31:30','2019-06-27 15:31:30'),(222873,1,'M6fBIRJJvdqGKVWG55BzLt4LZhNeOKIh','nub37craj5op33s67r47vmt9ob','','::1','2019-06-27 15:31:31','2019-06-27 15:31:31'),(222874,1,'1cIUABRSfgllj80Yml5ZYOdVhxG6Q8ay','uq4i9he236aeg537vtsu785hc7','','::1','2019-06-27 15:31:32','2019-06-27 15:31:32'),(222875,1,'w9cZbBM5Z6u266DHciYm4dFde6wUMDvl','bd67to75qborn09h218hh498u5','','::1','2019-06-27 15:31:33','2019-06-27 15:31:33'),(222876,1,'HAbGKRuJkRIxgOlzRJdjUhPDjhAV5mt7','62amln20o717fpvg3on77peoas','','::1','2019-06-27 15:31:34','2019-06-27 15:31:34'),(222877,1,'J58eJ0HW4yUYGzfxGto21NDSr6r52VOm','kugc115ps1a3fqelltgv45rd3d','','::1','2019-06-27 15:31:35','2019-06-27 15:31:35'),(222878,1,'QOju9SZs08B9R2CfakGsWIm3pr5g8Qll','dqldc7n4j8ihufh4jat06h4m9i','','::1','2019-06-27 15:31:36','2019-06-27 15:31:36'),(222879,1,'ovDe5Js6K3bMJNQ6TUiTXHDwsKZHwUQV','khkphco1a1mmp77ap46vhe00kk','','::1','2019-06-27 15:31:37','2019-06-27 15:31:37'),(222880,1,'tCRsHcW3J3IzPpDiY1gn03vgy1Y6tMz3','9cpnb0jfl81f78mglhv3elj1r4','','::1','2019-06-27 15:31:38','2019-06-27 15:31:38'),(222881,1,'reLKcSz2R5YXQ1QFgIaiSnieSnlJXGk1','cm1cs8eli4cquvjef95m4iea1a','','::1','2019-06-27 15:31:39','2019-06-27 15:31:39'),(222882,1,'TAPZUVB4NRH5quEgPPaXwsMOU0pQagii','p88v9v2np0g7dc78api3parjsm','','::1','2019-06-27 15:31:40','2019-06-27 15:31:40'),(222883,1,'nf6NketzDBYogCFmkxc3TYPXiSuBFD6e','rjg0h7teu4tiifdkl6dbp0p51t','','::1','2019-06-27 15:31:41','2019-06-27 15:31:41'),(222884,1,'wVbDK2gpod21yjGkNNVloqtwJnQPV8JZ','572961o6qlb3hfhv70044aeom8','','::1','2019-06-27 15:31:42','2019-06-27 15:31:42'),(222885,1,'BbOfGA88BRNGSka2fdDJjnxMV9XnDDDt','mqpgv0ttb63fd1rf5r7m8suk23','','::1','2019-06-27 15:31:43','2019-06-27 15:31:43'),(222886,1,'WQdmWo00rzdrRqqBX1iHJSJf23rhwm3G','37hcrmtpji5tkkfnutdt8d64uf','','::1','2019-06-27 15:31:44','2019-06-27 15:31:44'),(222887,1,'kyTU9ne4XCvyfcrNwjWLnbcZ7rXV3QgX','c604dlhf6m6lobvf5i70cntcbh','','::1','2019-06-27 15:31:45','2019-06-27 15:31:45'),(222888,1,'2NjngBoaYzAtT4PDgLehsnVVZ9840ZTg','htcuo5l44gqoc5md7rk9fms2vo','','::1','2019-06-27 15:31:46','2019-06-27 15:31:46'),(222889,1,'IzlTCKeKWOrIL1WCsgL9NtWaauDkpt3p','81luii1j1hhsjvc7elf55tc3h4','','::1','2019-06-27 15:31:47','2019-06-27 15:31:47'),(222890,1,'AoGtbAPsUHzQCcDwQuzWccnX45If2FGh','qct5ic5m8hf8lbrs45vhbj01ec','','::1','2019-06-27 15:31:48','2019-06-27 15:31:48'),(222891,1,'1Ndj1MpT4jiQRnIlsPb2nMbLR7OrDARw','tjpgbql2aub94lisj65okplg15','','::1','2019-06-27 15:31:49','2019-06-27 15:31:49'),(222892,1,'Q5pjbt9MvwLWxXlX2vEut5ZbRTGWYv6d','f9ohgs11brb6v0iq63u97qsuii','','::1','2019-06-27 15:31:50','2019-06-27 15:31:50'),(222893,1,'fcKt7dT4wfu8uXWZrRiR3R4fedAi5aoW','4v86kijg1imrc8s1nodidracpv','','::1','2019-06-27 15:31:51','2019-06-27 15:31:51'),(222894,1,'xjj5P7JRxXaBhjgyYHTC9HIYuDkowBW9','s5rjr47uqg10j53u02b89r16s9','','::1','2019-06-27 15:31:52','2019-06-27 15:31:52'),(222895,1,'i3mVtmUSpoXtSLwU3Nl0Eeu9adhSooAG','o7arm7vmg26o1dadpqftt6ovmt','','::1','2019-06-27 15:31:53','2019-06-27 15:31:53'),(222896,1,'SgR1dNiAqOZFB2ikSRVytXNP9Bd2ah2n','7q3pf4k4elmc1o9t1r72205apk','','::1','2019-06-27 15:31:54','2019-06-27 15:31:54'),(222897,1,'9lvIrGElsXLmmR1KQNzzm51QWtq4bQ8u','nped5sja1nr4t7mhk0tth1rahs','','::1','2019-06-27 15:31:55','2019-06-27 15:31:55'),(222898,1,'ShpwVaNmdJnSDNNZ9wjiL1CPytdRawv7','6o7f4gemi7vt0qqvor3s8pvof3','','::1','2019-06-27 15:31:56','2019-06-27 15:31:56'),(222899,1,'dT27JUuGJg3liBiuT43xO25NUHxJdwW0','ia65o35pqap404jqeosmqo6i1i','','::1','2019-06-27 15:31:57','2019-06-27 15:31:57'),(222900,1,'kQRsDWW2WVMsBindogr846GQ5Qejb098','fsnahc2j9t63ro1aj3vluqpm0m','','::1','2019-06-27 15:31:58','2019-06-27 15:31:58'),(222901,1,'JIymeFKHkiYvOhIuOknvVQ4mUOShz8hL','uf1t414p067m0hrunke2n6qgtu','','::1','2019-06-27 15:31:59','2019-06-27 15:31:59'),(222902,1,'VxNqNEAcUfEjOpVeRbTI45e9pFakIe1y','41mbhg2vgnu3tafv7dlpi7jhmq','','::1','2019-06-27 15:32:00','2019-06-27 15:32:00'),(222903,1,'ABL7M1Clb7NCx7ZVmZbhsqZNQ3A5mTDh','qd2989g8dvnbtqv4ukpcobvbra','','::1','2019-06-27 15:32:01','2019-06-27 15:32:01'),(222904,1,'mRYztjQ9l5PZf036tYMwTjqQ2VEQscAH','rtf7g2ht9emgho93p4v78d69ho','','::1','2019-06-27 15:32:02','2019-06-27 15:32:02'),(222905,1,'5soDgjWCRhfnuPQblC7wV5HHETYJ77EY','k7vh0doftn20bq11oo44tu244r','','::1','2019-06-27 15:32:03','2019-06-27 15:32:03'),(222906,1,'BNUfZxzw0nnHDVfOVHKCXF9ipAR81E6n','ker8vbu6jrukli20f2foiij7gh','','::1','2019-06-27 15:32:04','2019-06-27 15:32:04'),(222907,1,'wmCx2FVYLkS9zCAyQY29K0SkGL9QXPXa','qr49qidahqe5rdia7ptm5tdvgs','','::1','2019-06-27 15:32:05','2019-06-27 15:32:05'),(222908,1,'uZl6h0eLrgcTZ5uTUZPTBoHpHzAe2nG0','lp61r8joavili02mm9jaabqmjb','','::1','2019-06-27 15:32:06','2019-06-27 15:32:06'),(222909,1,'uaSjKppOMZnGi7vaIfIQaXUXE6LICXam','1f94ril0hc3l59phooahs1covv','','::1','2019-06-27 15:32:07','2019-06-27 15:32:07'),(222910,1,'85Zn4k8eZdCwAotLytNNpFFzCIQpeUyX','udiha9p3c6f5dpf0j5jgmp3640','','::1','2019-06-27 15:32:08','2019-06-27 15:32:08'),(222911,1,'c52qLEmKFRkMARrkVmZnhRb0mmUc9oDj','a6vdai714cmn263oia8rdv4os8','','::1','2019-06-27 15:32:09','2019-06-27 15:32:09'),(222912,1,'4QplMuIYeruNCvO5nYD0dGMXuaUC7B7R','dki9dfn2mv1ob7at0l1rh6p7o9','','::1','2019-06-27 15:32:10','2019-06-27 15:32:10'),(222913,1,'2vedw25w2SW5Ia9TasOz9xtB4S7zd8Nz','kbodbsssq8tg9aim6d8kbp6oes','','::1','2019-06-27 15:32:11','2019-06-27 15:32:11'),(222914,1,'lIsAB4zySG7unGaDLhPOkaj7zWFiJR5X','98pgffhbml1gusednu2mj0s8fu','','::1','2019-06-27 15:32:12','2019-06-27 15:32:12'),(222915,1,'AaC8nYuwXl6Atlit0kl4f306BgLp4Nmb','klsr6tgrbuv1acuna6r3cfmmhi','','::1','2019-06-27 15:32:13','2019-06-27 15:32:13'),(222916,1,'9IpWc1g7ZPGY9RdLs2ty8Wy82jUl85Xm','gkml1u47q1sop6u3n10vosfkme','','::1','2019-06-27 15:32:14','2019-06-27 15:32:14'),(222917,1,'p3MEaC4tgT7DIlsr4qsyqNN4FM62D2XT','gjli8i1p6jigp5d405uls2c88h','','::1','2019-06-27 15:32:15','2019-06-27 15:32:15'),(222918,1,'fYcoFZ01sjon2d20vZd28jUjdIkjTzzO','bsl9il7uevboo05fnl78gdc5s6','','::1','2019-06-27 15:32:16','2019-06-27 15:32:16'),(222919,1,'lDvwjvCsd3LRltiZmWZgqUsdwehBWgsB','lmirpok3a3bmn6i24v0ktu6rh1','','::1','2019-06-27 15:32:17','2019-06-27 15:32:17'),(222920,1,'uauREAZtqZdwDBh34P9kEQRLsoTXcNZl','k465k7e5r96ianvh7n2ocn6rcg','','::1','2019-06-27 15:32:18','2019-06-27 15:32:18'),(222921,1,'nRUpt5VjjAq263BYGrB4VrRcmVWmeRvv','4210ls0upijatejm47vkpkecdo','','::1','2019-06-27 15:32:19','2019-06-27 15:32:19'),(222922,1,'kohPBZ18uUVOJ5utn4xdXWeYThyFt8if','d8jk42r42lcnph81ld3dle05mg','','::1','2019-06-27 15:32:20','2019-06-27 15:32:20'),(222923,1,'RGao7w0XXBatvqQkrDl0HAeUVy0ut8El','f8ml5hbl6u4fdsid303geg5uub','','::1','2019-06-27 15:32:21','2019-06-27 15:32:21'),(222924,1,'d1GMxof60vMiU8Iki9tjjmQRKDUrsByS','7hj1gjdiopq4o9ohljq4dd9epd','','::1','2019-06-27 15:32:22','2019-06-27 15:32:22'),(222925,1,'dsrFo8LJggWJfeYhIRZIsrOONywrTEdL','595ogoh4bh1mh3cs5l4v35bih9','','::1','2019-06-27 15:32:23','2019-06-27 15:32:23'),(222926,1,'lY8ONQKRpMF2OHzHmhRXCA7ZWVoq1it3','3h51vlqdrdsbf5ftr5i78inkm5','','::1','2019-06-27 15:32:24','2019-06-27 15:32:24'),(222927,1,'tr9XCoy5qGK0D6qql4WBs2CvsRYvfp8T','uks6uneuo3j2hlffnopol1fpe2','','::1','2019-06-27 15:32:25','2019-06-27 15:32:25'),(222928,1,'RWQHpLfNGMY3dAljsAAEdCHveWOMxZiO','a95ttcglhlb99ilmt089s6t5d8','','::1','2019-06-27 15:32:26','2019-06-27 15:32:26'),(222929,1,'THxLqnSkHGA7CSlzgbjMXqznkSWJryZG','8olpoagmfkba1uhodqu87t0gvv','','::1','2019-06-27 15:32:27','2019-06-27 15:32:27'),(222930,1,'aOnpL0vqZKzI16vK20MYtc3BtqkyA475','us5u2iofkbskkj07ne0ndgn747','','::1','2019-06-27 15:32:28','2019-06-27 15:32:28'),(222931,1,'TGKrRgUUw63cISJEY0gUulwCodWiTGjL','1t6uoms47obqdnan59feecba0p','','::1','2019-06-27 15:32:29','2019-06-27 15:32:29'),(222932,1,'PFPCkRCh7wyL7u7d9ayzJrbIVogcbgHJ','adghfcpt9jo7a171fa57f86868','','::1','2019-06-27 15:32:30','2019-06-27 15:32:30'),(222933,1,'aPqmZQpcQsaldTKXEyOEne9VSkWVvbkr','4lmksa859c2i2cagdvq58s43m3','','::1','2019-06-27 15:32:31','2019-06-27 15:32:31'),(222934,1,'4NLFt7fMuoFKVaT7of7ghDF5DI1Artd4','69qog4auhub2coglpt00k1i2iv','','::1','2019-06-27 15:32:32','2019-06-27 15:32:32'),(222935,1,'knXT78fnwNfzpZvY3gftfFdFTCeOBGMU','4ibp6defa5e80bp2hnp6fm0ek6','','::1','2019-06-27 15:32:33','2019-06-27 15:32:33'),(222936,1,'6bxuEBfThvRghhnHXk5nXz8G7yYS0ldQ','3s5g5ra8rrjk7smihidnmmcjdl','','::1','2019-06-27 15:32:34','2019-06-27 15:32:34'),(222937,1,'Kq5A73mfoqI51TGnbIDhAWGppeHFOopN','vp3o6dkhpkktnu30hdeahd1pne','','::1','2019-06-27 15:32:35','2019-06-27 15:32:35'),(222938,1,'W6IxCPxdr6RahAKvWTvIESGr9jvU6h2y','a947dn9uhni19vcdv7ui1qqh8r','','::1','2019-06-27 15:32:36','2019-06-27 15:32:36'),(222939,1,'WVmXtLfCeyQwFrseKewzzL8WcqknNxZ3','mqesf40adk5r7urmt957buht2m','','::1','2019-06-27 15:32:37','2019-06-27 15:32:37'),(222940,1,'AKUIrp9v2zFOu3qBLOrv2Qj6jP2H5hGR','rrt1j69vphp6jqm33lgt80178e','','::1','2019-06-27 15:32:38','2019-06-27 15:32:38'),(222941,1,'LIu1a5oMOMLgTMs9W0KaP4sPISvKvaXB','152l3nn23ipggnrpggol3vq18u','','::1','2019-06-27 15:32:39','2019-06-27 15:32:39'),(222942,1,'Hwcbce6jdbswS1ae5M4DIISg5gezup8w','96pbf2vnon4g19kpehlbtkvr9s','','::1','2019-06-27 15:32:40','2019-06-27 15:32:40'),(222943,1,'NOeNQAL5qPTi24J2Na1S9FhvqqyH8FnR','5npcon7u51a4t2lollfauikes6','','::1','2019-06-27 15:32:41','2019-06-27 15:32:41'),(222944,1,'4PybwmhqfskGYJNc64bBJqZS0qKHDpqq','s1pacvnc0es3k0kpmvvk82f6o4','','::1','2019-06-27 15:32:42','2019-06-27 15:32:42'),(222945,1,'HJuT8dNXNTDS9Y8W6b2IvfZe5mQpPqJ0','bfgjskq6i244u9qdg1pdmg1v78','','::1','2019-06-27 15:32:43','2019-06-27 15:32:43'),(222946,1,'hbUvfPyp52xkrwSztU9t7jAZqlkoMt4v','puj3plk3vbn5k68t8noj9umc5p','','::1','2019-06-27 15:32:44','2019-06-27 15:32:44'),(222947,1,'5puUDeCZdEJHgOq2qb0Ppybnz7AmOwem','452kn9m9isd1c5tcncu4pr6ee0','','::1','2019-06-27 15:32:45','2019-06-27 15:32:45'),(222948,1,'INt95AfUqqKdcoWMs3dRwDg1dxt1RZFn','rr96e5r9s0rcem2ufujg3jvdoa','','::1','2019-06-27 15:32:46','2019-06-27 15:32:46'),(222949,1,'8OP3YFxBVZQ1j9WZFkLs5OZGm7SVgznd','eh567mm96kogsla1hl1pi1vc7m','','::1','2019-06-27 15:32:47','2019-06-27 15:32:47'),(222950,1,'1FYvqgkkDVOZ0MsPr9PSQUe4NDogIydq','59fuhmfbkpcpjp0njak7jp75no','','::1','2019-06-27 15:32:48','2019-06-27 15:32:48'),(222951,1,'LyTqcaF19wrbtU11TXomE9XaNazPpmV0','09a1974a6gujjvsctihcpeq4bv','','::1','2019-06-27 15:32:49','2019-06-27 15:32:49'),(222952,1,'UYMagmL3nkxrlZdfx2OnnCLVVulroxzf','7ab0icme0icd83aadrtaaopiqp','','::1','2019-06-27 15:32:50','2019-06-27 15:32:50'),(222953,1,'JONTF14VkHi0kXpHHDuduZELhVy6PFp4','n8h8lfagt07kmuoieglgjd07jl','','::1','2019-06-27 15:32:51','2019-06-27 15:32:51'),(222954,1,'DtHfieGjYCnDOuPrZLjGMbm3rC2YkZ5I','u8r4a6u3ccbv3dvsrfc8bj3r3a','','::1','2019-06-27 15:32:52','2019-06-27 15:32:52'),(222955,1,'dUi3yd5Tjm5Dce2ePOi20xonzTSv15ZE','r5a8o1lc4kritjiq6k5sdtkg0l','','::1','2019-06-27 15:32:53','2019-06-27 15:32:53'),(222956,1,'qyNQIfvJXAuEP7JpgMEwpzktePDTigSl','ht7avu8a785jq5php8eo9vodrg','','::1','2019-06-27 15:32:54','2019-06-27 15:32:54'),(222957,1,'k0wagRqUK5oEzNgxyNFWj8roquXAuEw6','8osqq6uetvg7ils5uj07jvaphs','','::1','2019-06-27 15:32:55','2019-06-27 15:32:55'),(222958,1,'eGJ0VO1HZPmLHzIzeAf6yQPa77k2bKo8','0se2m2mdmcd866qm199f4sr2e6','','::1','2019-06-27 15:32:56','2019-06-27 15:32:56'),(222959,1,'piFCD3ksVHrgfWaNZTL5GQiuf0lo2p3S','1r0d3rapd5l9g0j9eorr30mlp6','','::1','2019-06-27 15:32:57','2019-06-27 15:32:57'),(222960,1,'8uZNyA747IYpo14hoUaE5cAbKo3x6Ozk','7pebdf3bd8ffpm52gu2v82lbmb','','::1','2019-06-27 15:32:58','2019-06-27 15:32:58'),(222961,1,'kUdd1edOgLuV1XueIO8r6StnyuvxhCEz','gtqfu9t4rf9bpo2p89o7rkn2jr','','::1','2019-06-27 15:32:59','2019-06-27 15:32:59'),(222962,1,'Jp5T5NRsn08BqShlUVB9UF2mTamdCRTt','m61gs5ac6lnd9tfodcaf6n2pp6','','::1','2019-06-27 15:33:00','2019-06-27 15:33:00'),(222963,1,'YsvNwnmQfuGF8pBMtJH7elznpNIP6fCA','7615nceq1jvmf2do4dhn1l3r5t','','::1','2019-06-27 15:33:01','2019-06-27 15:33:01'),(222964,1,'n3esa3goR1kvu3a0v7yn0vOWyp604OL8','5a9506f90qms1qkp889p316j86','','::1','2019-06-27 15:33:02','2019-06-27 15:33:02'),(222965,1,'77wixRcekBSW1ClzqP62U3xkWpc4mdpO','e5pmc6pco6ndc6m3seli5kkvd6','','::1','2019-06-27 15:33:03','2019-06-27 15:33:03'),(222966,1,'0REYpVi54tytmvwSdi3PQLWa1SMBROLC','hsg6lb5qc4ap7vfv7fiac1s8m1','','::1','2019-06-27 15:33:04','2019-06-27 15:33:04'),(222967,1,'TTYorRoB8QZc8eAoJUJOuf2K3yNWJVTq','h2nic4m6rrpkcgugm9kvhu3ngv','','::1','2019-06-27 15:33:05','2019-06-27 15:33:05'),(222968,1,'WRmuNIkbwWNSc6UJZuczD9T2bk5FWZxD','3rbvlk1lbanme7f6rl5pmjuum6','','::1','2019-06-27 15:33:06','2019-06-27 15:33:06'),(222969,1,'sdcvqoIlNMzuO8kxsnVyYSRx8etniXHM','8j5rn1jle1jr3v9inushvvs22t','','::1','2019-06-27 15:33:07','2019-06-27 15:33:07'),(222970,1,'OwWB3jI8t5HY9wzhpPQqzim25afGTo4v','4eksngj7s6244cq215l9bakiqg','','::1','2019-06-27 15:33:08','2019-06-27 15:33:08'),(222971,1,'OjzrnfgGV0bLyov6LwuxhKqWrNT8hKUf','kba97e4gd41kn5usj7rc2g3v8l','','::1','2019-06-27 15:33:09','2019-06-27 15:33:09'),(222972,1,'m7Z1rESG0XDaAhZ79DgznWwoIitaXqTI','knoe4qtgttg2f5lmas65qqiqo1','','::1','2019-06-27 15:33:10','2019-06-27 15:33:10'),(222973,1,'LXMZHTk2JMeSFvGBVB4yH4Nj8vzb0NWm','2ehet3t7hbd1eh04699ssa43q3','','::1','2019-06-27 15:33:11','2019-06-27 15:33:11'),(222974,1,'dRR4XnbtnL7gCNjykI1d1OJHt1x3jcGx','o1q0gboeb0cjblfed297fq1ehg','','::1','2019-06-27 15:33:12','2019-06-27 15:33:12'),(222975,1,'rfGjwehKxFUnxqLLl0UruIH3u3sFQgf7','vd18kf1v7c483k08k4o40pqasm','','::1','2019-06-27 15:33:13','2019-06-27 15:33:13'),(222976,1,'ZOYY1fUMn0LiNjSpkfCHA0SCjSnMAStI','lhdqdjp92e9ej9ts0nljk12cea','','::1','2019-06-27 15:33:14','2019-06-27 15:33:14'),(222977,1,'P9U4ViZFJXu8XdF12lpBfZpc2RJACLuO','9145h5r4fnehko1saleb0t2j77','','::1','2019-06-27 15:33:15','2019-06-27 15:33:15'),(222978,1,'7JSYCWnV3KDN0gcqBAsC9iRJmFajood9','h66f6r877rsg464ntf97ih3lsj','','::1','2019-06-27 15:33:16','2019-06-27 15:33:16'),(222979,1,'Ve1Si9gKepMlRxMqGuLHuXqtcu6prYPP','pnsaio4sju1qkia3bp9qcqpma7','','::1','2019-06-27 15:33:17','2019-06-27 15:33:17'),(222980,1,'0hbqlQbFTBoQ8SPt2MEjlDIMV4E2vf2S','pb5nv2f58khdiajcsca27bsaqt','','::1','2019-06-27 15:33:18','2019-06-27 15:33:18'),(222981,1,'hK86u9Senjka8ajs7oq537WYSCdhcGKp','7npu5h9uala1i651rfnq53qdah','','::1','2019-06-27 15:33:19','2019-06-27 15:33:19'),(222982,1,'OiEzTEep2dfZEVkcl7Eqoax5buPX5l08','g2dnmmo27bdo95q79rmh85kbbf','','::1','2019-06-27 15:33:20','2019-06-27 15:33:20'),(222983,1,'5XtTE8tvpGUWp2si7H0yVsvij649dIFG','eel7dpait122rgjmvqpbi6ud3q','','::1','2019-06-27 15:33:21','2019-06-27 15:33:21'),(222984,1,'XXpACz9BhCpbrxsgSnICuxAhRMzQC82D','1u2h9525jdss7hnms7stoai8js','','::1','2019-06-27 15:33:22','2019-06-27 15:33:22'),(222985,1,'CsY09AtJdoPcRcLJHItbHsRgNY1M0di0','1p01h4g6lacjnjemr61mqaaupu','','::1','2019-06-27 15:33:23','2019-06-27 15:33:23'),(222986,1,'ky25iKqv8Ef0I2FsUysNdnUYywLOCqB2','rtb7t6pbibn7od1kffll6afcje','','::1','2019-06-27 15:33:24','2019-06-27 15:33:24'),(222987,1,'CL0NvIW8dBKOs5gpuDcc5CTbv5bfp2Lv','svc22opugif9is6vccc5raoo2k','','::1','2019-06-27 15:33:25','2019-06-27 15:33:25'),(222988,1,'CMKWBtrhhNfsYgQYVwDCKApMTPR8mWJB','ivlo55pj1bfo3mch72ui950774','','::1','2019-06-27 15:33:26','2019-06-27 15:33:26'),(222989,1,'spmfqONg3baIbVZUyKuWIbnauKWiEAuW','agfjoudmb554n040ijhgq58pnd','','::1','2019-06-27 15:33:27','2019-06-27 15:33:27'),(222990,1,'rvSE6nu6v3e2MUlYioC3VtEwJXy0pHQD','jso1voa9601adi7nkqpv1vei9a','','::1','2019-06-27 15:33:28','2019-06-27 15:33:28'),(222991,1,'f3xrYGopKt6nnh5fjMXi9jrro2MqNZlN','kfibuh8bvn458ulndenid1grj5','','::1','2019-06-27 15:33:29','2019-06-27 15:33:29'),(222992,1,'0KGsEVp7gM5yBxy17T4WSD8n0F3eeZ8d','i4vc1qbprfssu2it7hf9sraufg','','::1','2019-06-27 15:33:30','2019-06-27 15:33:30'),(222993,1,'99wY3yJ1WRcYSJ76tKtoz9Lj9ivC8BAJ','800p6ri5b87g6bpjpjofjm7vic','','::1','2019-06-27 15:33:31','2019-06-27 15:33:31'),(222994,1,'oKtpbZzfgdGBFpF42vv32mdS4aFh1Hnq','iqoqu76jgrdltm4blbc0hb245s','','::1','2019-06-27 15:33:32','2019-06-27 15:33:32'),(222995,1,'M95lUNTaX0usTx5FNcp7FRFvlZ4k0Fa2','sj7r1c0256d2i38qtver8d6vqb','','::1','2019-06-27 15:33:33','2019-06-27 15:33:33'),(222996,1,'iIaZ7hM5pf5DMY0FHFbqVhCyvRh2RLyC','i7r9ofppm21jiuqvj003sjon3t','','::1','2019-06-27 15:33:34','2019-06-27 15:33:34'),(222997,1,'MhrAa2eLHzETX9tajT8YFSKePtbwvetq','qtaofk7jhgkte55tjmuhc90bo1','','::1','2019-06-27 15:33:35','2019-06-27 15:33:35'),(222998,1,'l8WmLZzEIQ8CQJKBhoPj6b6yaxRL1ijf','5mi7d7uh2m9kuqrahbc4irn3p7','','::1','2019-06-27 15:33:36','2019-06-27 15:33:36'),(222999,1,'Thiq80kQFWjpvnMkQnPbP29FNu52E2jF','ac3g05dq2iu65s3cp6a83rue2q','','::1','2019-06-27 15:33:37','2019-06-27 15:33:37'),(223000,1,'0imThSVziHHTheRwZCpii5WM2xRxcNAT','of5nrnk2u0ja1rstccsghob52p','','::1','2019-06-27 15:33:38','2019-06-27 15:33:38'),(223001,1,'QgmS4XxTSCVU9D1Ph0jt3uQRAucJIELC','5cvrclvd0iehb7bhl4dh7dhlme','','::1','2019-06-27 15:33:39','2019-06-27 15:33:39'),(223002,1,'VRe68ftxe62EXLh35Y2o9D9tuW9G35Lw','bu9knf42amcnn8pvipk675e0dl','','::1','2019-06-27 15:33:40','2019-06-27 15:33:40'),(223003,1,'L3L9REB2KIijFmx06Ir3rqPBtH1gATyp','24j16rqlvq2hfrtnk7p98pehd0','','::1','2019-06-27 15:33:41','2019-06-27 15:33:41'),(223004,1,'w2WM2Ukn7vVhmaWzWn5pSM4vKOFayiW1','8p07mlt7q383t4sgleebp1ldok','','::1','2019-06-27 15:33:42','2019-06-27 15:33:42'),(223005,1,'Kvy1V5qX5KYSGTNpd5kyKCVpNy7qMq0a','n94eehc2q3tpoc26dccbs3h3jt','','::1','2019-06-27 15:33:43','2019-06-27 15:33:43'),(223006,1,'gQxXVoZo2OKa4p2uDzQDI85quzdYhIXo','04ms782fipgo25g8sb745lto8m','','::1','2019-06-27 15:33:44','2019-06-27 15:33:44'),(223007,1,'LpZgSDZMkuESzlxE4dB7gu7cXToQBBEy','lbto1ln8frc0ebribt563p5236','','::1','2019-06-27 15:33:45','2019-06-27 15:33:45'),(223008,1,'GHNF76SDfNGBdAtvngzAbvPzpWrZg8Ti','depea9uargdib47tnpumhc4dip','','::1','2019-06-27 15:33:46','2019-06-27 15:33:46'),(223009,1,'ZbwBLqSttiAyX6MMK41JXtRTqunj0mZo','t6i69rh00vv3sfs6m2k4qa1u7p','','::1','2019-06-27 15:33:47','2019-06-27 15:33:47'),(223010,1,'z7oEkOvsAPGRUGhFV3AEKyHtrsca0qh0','8j1tj67bevt05f8mjto5d65k5j','','::1','2019-06-27 15:33:48','2019-06-27 15:33:48'),(223011,1,'fSI3OXRMSLpn9NxlgDB8YCrmsihLfzU7','r791uhnpn1pm44jq95qrkiucqo','','::1','2019-06-27 15:33:49','2019-06-27 15:33:49'),(223012,1,'NIuHNtqnBDG5qsE8OcNNU6mwVVmGXd8u','hsbqc2buce4ng031sc05ehs77d','','::1','2019-06-27 15:33:50','2019-06-27 15:33:50'),(223013,1,'nf3F8nK0s1e1jRd25xrYNS98lq5jDjYf','r3q8b9psb30j8lol3gb21656jp','','::1','2019-06-27 15:33:51','2019-06-27 15:33:51'),(223014,1,'1g4nmzwwJJl2rmB3X1vgGggnc52XJCsz','ssme52m88tsajsul4tus8oefss','','::1','2019-06-27 15:33:52','2019-06-27 15:33:52'),(223015,1,'tLb0dxk48GiAj6rCtHO9PicuCmURw2QV','hgk8mcf7udamvqntnkeq2spm08','','::1','2019-06-27 15:33:53','2019-06-27 15:33:53'),(223016,1,'z8xYB4RdHW5foUOSVhvxdzLQplqXeWJ1','iljhg4gto00qfqv7q5r8lm65ca','','::1','2019-06-27 15:33:54','2019-06-27 15:33:54'),(223017,1,'wsJXAd1qvYQ7i3wRrYe0ADSWvra6IZbP','1mkn4pgmefb1e49u7msbhi7mjb','','::1','2019-06-27 15:33:55','2019-06-27 15:33:55'),(223018,1,'aUKtVeAxMe5c11vbr5lAFRibCSkcEaze','4m06e2eia1rvo772uqsgq90im8','','::1','2019-06-27 15:33:56','2019-06-27 15:33:56'),(223019,1,'fAn0gpCU1j0dyOWonUYIo0hAaIqb2EiF','q20fjg8ijo1c18rfg7rrd82m30','','::1','2019-06-27 15:33:57','2019-06-27 15:33:57'),(223020,1,'0EvOKkouu5n8hyLyijyMcxpbYt0q3PtA','a365boj56b5mea1njlfcj73e8d','','::1','2019-06-27 15:33:58','2019-06-27 15:33:58'),(223021,1,'EhtcZRxk7sUefIDQuCbyDRL547MnPZix','hvkah8ngsc288tph71j6isfvhd','','::1','2019-06-27 15:33:59','2019-06-27 15:33:59'),(223022,1,'LV2p3MjtrQVsUQwy2Z8VXKhIEHpO5clX','ep2pq9hneks2mdiob34l6gjjr8','','::1','2019-06-27 15:34:00','2019-06-27 15:34:00'),(223023,1,'zez4FtnwbfSi9oTzhCHNeFRBTPz9gLRC','nedkm2bh327hu6lunk7mg01q2p','','::1','2019-06-27 15:34:01','2019-06-27 15:34:01'),(223024,1,'GWjEEBrVSqNsuy5wTBfSdVFMX78cIefu','6rq169dcrg91l147tbhgacs10g','','::1','2019-06-27 15:34:02','2019-06-27 15:34:02'),(223025,1,'ubiDFgUb9auS4gPRiMNQqLBjYsefEncx','3cnn0nelpdlr7420tskeofft81','','::1','2019-06-27 15:34:03','2019-06-27 15:34:03'),(223026,1,'Br4M54ZLFwN0eiSe6MKXDU60GtrZA48a','hke3n86e3dpfbtuo8ek5vl85di','','::1','2019-06-27 15:34:04','2019-06-27 15:34:04'),(223027,1,'ZKdiR9qhwsIJigdMPlm42MTI57X9tles','dfbg85rm8kat6glmshhjqg7v9n','','::1','2019-06-27 15:34:05','2019-06-27 15:34:05'),(223028,1,'ad5ooLdkmuNt2GKUswSRbeed0nL09yFQ','1018o65m7oq4l8ksok85qj9qff','','::1','2019-06-27 15:34:06','2019-06-27 15:34:06'),(223029,1,'c0lAW4JaRV6WdMCqSbD3ZBLDdBVj0D6G','rg16ovvuc2tml3uc6ukf6t7irq','','::1','2019-06-27 15:34:07','2019-06-27 15:34:07'),(223030,1,'Zwin0jUJJeJxcWQ4Ot1IGaIxr3kAVgbq','fsrqfsrb8iuh923q6mdbsmbdoj','','::1','2019-06-27 15:34:08','2019-06-27 15:34:08'),(223031,1,'AhR6KuDbYQgPzhqR3ZXSs0e4U8ltZSsy','av5kd306esu4d9pdhdkcvtbv54','','::1','2019-06-27 15:34:09','2019-06-27 15:34:09'),(223032,1,'Gm6sJ1ZZnn0Eq0KHxMHOwVilG3uoXVbz','b9l0l3ajbmer2a4g4ahah6i310','','::1','2019-06-27 15:34:10','2019-06-27 15:34:10'),(223033,1,'hk7QXZ5u40OClENVhAdpT43OtyjilvJT','p8ep4r4jub2ivaguillre60reh','','::1','2019-06-27 15:34:11','2019-06-27 15:34:11'),(223034,1,'041GSmHA0TGiLzC2FU8U4lYO4hJp0Zdk','aq84v31n84ikqlme2aen43btij','','::1','2019-06-27 15:34:12','2019-06-27 15:34:12'),(223035,1,'7kirfBug7L91wMEk5NtQXScjOiGWWuJS','852u7ldakk5b48kup343t82a75','','::1','2019-06-27 15:34:13','2019-06-27 15:34:13'),(223036,1,'rjhtIrKNOT3tt4DQPuUoQFYQDB7sju3n','ftcqs8uu5qhmqeagrjmidi38s3','','::1','2019-06-27 15:34:14','2019-06-27 15:34:14'),(223037,1,'Ab9ain4miEOfU0hDekRpncPXVEWoUXAu','dl4atr85h23i1frlh8b6etqsm3','','::1','2019-06-27 15:34:15','2019-06-27 15:34:15'),(223038,1,'Ocqt0nHNtcayKTRVzjMfB7PxLhyOIPKW','4sfdocosdivtd4kjektcp6pfup','','::1','2019-06-27 15:34:16','2019-06-27 15:34:16'),(223039,1,'mlv7Wtdj7p099a4Edln8xvBd0uzkV8LR','986i70eqhev8719s6sds0r13g8','','::1','2019-06-27 15:34:17','2019-06-27 15:34:17'),(223040,1,'OqWXO3AsgPbhLQqg8lW7iFqARMwOAMCc','rlqpiuft199tv5aji9gt1v3q57','','::1','2019-06-27 15:34:18','2019-06-27 15:34:18'),(223041,1,'SaaIwFNV8449NVPcMtpjnr7Ck5fp8POj','ls2hk2hdc1ipfuuq4rc5okg0jf','','::1','2019-06-27 15:34:19','2019-06-27 15:34:19'),(223042,1,'IT8WBFnpMWlMP0qPkRZ0jH1G9o9eKTY4','khde10qfsb6bjbjrk14vm87vhq','','::1','2019-06-27 15:34:20','2019-06-27 15:34:20'),(223043,1,'OnAzKUqXi2vxzbgwlUqc9zT7ZRtMTOaq','b5f8sq58d43lumktnimm78n68h','','::1','2019-06-27 15:34:21','2019-06-27 15:34:21'),(223044,1,'FbtwVX7kyGjGGRhhNIkw5ZQyrU44uk2y','8kf4sk457em0grtqlkib83knfn','','::1','2019-06-27 15:34:22','2019-06-27 15:34:22'),(223045,1,'MHl7g5h3RsbYP7kxw9r6Az9J3AqHDd3L','kiufd184h0nbj0sh2mjklhscsh','','::1','2019-06-27 15:34:23','2019-06-27 15:34:23'),(223046,1,'9PrmxHhwYlvC6pEFLEjU9YYCOOouGt0V','gj3e2td19j30bsankfqrlpehek','','::1','2019-06-27 15:34:24','2019-06-27 15:34:24'),(223047,1,'FlYHgaCIVEMk9DuPK5FwxJAh3lpGMTKZ','2vmjtoj5pr6i81bee4f18rilu0','','::1','2019-06-27 15:34:25','2019-06-27 15:34:25'),(223048,1,'B1CMHFjRzL7eNd3Dskc8IE6bHIzrXTML','mfmbja7f08as337fk1mkp9d1oc','','::1','2019-06-27 15:34:26','2019-06-27 15:34:26'),(223049,1,'XNfCyXccEWrkvxqvBhquWZZlHSIYDSkc','4hmcg15jpinp3gc6n8m6t2r6sd','','::1','2019-06-27 15:34:27','2019-06-27 15:34:27'),(223050,1,'npe9GaAhmahd8KLkmgAcBpflZ0n7lMAR','n6qkmf80hg0h8mhdjf2tcqm2j7','','::1','2019-06-27 15:34:28','2019-06-27 15:34:28'),(223051,1,'GQYKFYGIDeWac33ET3pUDYx3QAiqQ73y','0nad0l3anh31j7libp3h3e34dc','','::1','2019-06-27 15:34:29','2019-06-27 15:34:29'),(223052,1,'z495bg2b775jMdwZuOzqmwLVkXlVhSgz','j349gg76s840u9oen05j4jak2u','','::1','2019-06-27 15:34:30','2019-06-27 15:34:30'),(223053,1,'mzo1hpULEicdYyuNF2R4DQb91HzdrMWa','9ja74gialhjve5r1lpipkabebg','','::1','2019-06-27 15:34:31','2019-06-27 15:34:31'),(223054,1,'nCsTjQgnEGP66Hcxsbq8B77D77fWuaOX','cvpf4213clb3dtcrm06peuincv','','::1','2019-06-27 15:34:32','2019-06-27 15:34:32'),(223055,1,'1zJelEqKsFNpyBRkfe6Dnm5k8EMBuIu0','f31dkrbjh8hdkfit93filemi8p','','::1','2019-06-27 15:34:33','2019-06-27 15:34:33'),(223056,1,'VguGIzZXRyHpzbQAWE9EvtRMmqbX4SIW','o3oo4p5e46310l8ibl8t4oov4a','','::1','2019-06-27 15:34:34','2019-06-27 15:34:34'),(223057,1,'HyMRwwjn7WHbLGEyG0f5Wv8FznoNSu81','6l7t22t8vno9fkr82cqg6fa2tu','','::1','2019-06-27 15:34:35','2019-06-27 15:34:35'),(223058,1,'52zl3pqhJGekQKVugo5ndvyeH6aH095L','76ftk999fgrcjhtb9ghnhj8530','','::1','2019-06-27 15:34:36','2019-06-27 15:34:36'),(223059,1,'ZKnlUxXli757rtaYSc0chjfqrmjmJfx4','slmfv8psfoq0pp6a878nu220io','','::1','2019-06-27 15:34:37','2019-06-27 15:34:37'),(223060,1,'XL04wwu9tnqrvxkeEi5MfSytOqRVnJwL','6cu5k7et5cfo0q38puhqk4bade','','::1','2019-06-27 15:34:38','2019-06-27 15:34:38'),(223061,1,'M1KeqZSXzMzyXBWwNNN9VLXiMohtIzE9','ea280r91dop9v4gb2d1netjse5','','::1','2019-06-27 15:34:39','2019-06-27 15:34:39'),(223062,1,'q04zGXHBvx19sf4AHGGCvpU3Br1YvwFV','6aci8d19befs3ksqqsq7rp5opq','','::1','2019-06-27 15:34:40','2019-06-27 15:34:40'),(223063,1,'PdTsPxyeLomLJ4LGDaVZG35sOV6HdDI8','quhb4r47is1s4t36nri4ulh0hc','','::1','2019-06-27 15:34:41','2019-06-27 15:34:41'),(223064,1,'csP3MEEaMgjLjwlUyKs2zNuqlzWrJE4v','m3r880rfmfme43dcqikqu1dlbv','','::1','2019-06-27 15:34:42','2019-06-27 15:34:42'),(223065,1,'1Zl2ykwbhOw7xN5hPqASiC0OXlNca4e3','d9sdhu5pto0vvqu9tljf7jkt4j','','::1','2019-06-27 15:34:43','2019-06-27 15:34:43'),(223066,1,'tCm8IBT6qvtwiov1O0wGTbUNawSX5ouF','m2s7af5sbe04c296c4q8ho92gu','','::1','2019-06-27 15:34:44','2019-06-27 15:34:44'),(223067,1,'BugSVRZFrJ00ahldV8VnNG8lj9ECV3lv','f03l4li18snntendduk0uke5u4','','::1','2019-06-27 15:34:45','2019-06-27 15:34:45'),(223068,1,'TI6v0tGFFH8fRdh3kyCiuzUIXlFo75GU','0f70g3v9v76mcuc265b9he1a05','','::1','2019-06-27 15:34:46','2019-06-27 15:34:46'),(223069,1,'G0s90VDySeaRFeakSrWvR8tBAOZEVXCW','eulf383v09gd4nt4nr5jbblv68','','::1','2019-06-27 15:34:47','2019-06-27 15:34:47'),(223070,1,'S0O2OPUT6MpLLYRs1W3Jmt7hQSBKQlKG','l44rh43ussgrq55fl7lihhtfrg','','::1','2019-06-27 15:34:48','2019-06-27 15:34:48'),(223071,1,'96l4hExGd2GspHervtvmuZLrBDicLopz','n9u5eekgk08acrqkcebc4ik3c0','','::1','2019-06-27 15:34:49','2019-06-27 15:34:49'),(223072,1,'T6sTTOuPfwmdVEoRMmb9Oaxc2heFI3g0','b5mp57c60k1jvbfbscgrbmspac','','::1','2019-06-27 15:34:50','2019-06-27 15:34:50'),(223073,1,'M6heCAveY1DVGDVposUP01qWNRhSOEt0','63roovvfbrpnlv8v1n8hkbf6tm','','::1','2019-06-27 15:34:51','2019-06-27 15:34:51'),(223074,1,'DZ52DM7EVi8Hh2fS1hzdylDlVQYOFNr6','qbmhupolti6dscv7ao0ofooid9','','::1','2019-06-27 15:34:52','2019-06-27 15:34:52'),(223075,1,'cA3uZ2kFxJsrjSJ5R3x4fhNyqVC0KHt7','7a4ab2njholmfjji7ku199uvmf','','::1','2019-06-27 15:34:53','2019-06-27 15:34:53'),(222622,1,'sNqcYYLqDuTPMjhEMQHmgqwfGwvcaQqs','v8de9hrjrrvav5qns5sek9mtcj','','::1','2019-06-27 15:27:21','2019-06-27 15:27:21'),(222623,1,'ZmAH6YAZOUEvFZ0LxqE6MGRig3OAknfV','aq2cqh5qtqke701khqf00at7k2','','::1','2019-06-27 15:27:22','2019-06-27 15:27:22'),(222624,1,'LdGGAxdRImvl9krmSRmV8b47zY4ijxkI','7kkapv63u1umvnl3qe2t4l27ql','','::1','2019-06-27 15:27:23','2019-06-27 15:27:23'),(222625,1,'yfeuPiCbfB9zUUcFu3fq8vBiwfqbdW2h','fr5vjknjmjvogfta1p3ki4od03','','::1','2019-06-27 15:27:24','2019-06-27 15:27:24'),(222626,1,'UUypwK21qKkcOsrrN5C9BaqAhRGeFNyW','f2memjltolpv3khrh19b9ficcq','','::1','2019-06-27 15:27:25','2019-06-27 15:27:25'),(222627,1,'RzsJhvc2Q8Y0REDo06pJG88Os8FCKUf5','1ujkvhfq16ch4cqdl8c64appsi','','::1','2019-06-27 15:27:26','2019-06-27 15:27:26'),(222628,1,'pMGrE0nh2F8a8zz1Xt7g4PX4r7A7nkMX','m5ned38n98nfsggsj7orb5d2gm','','::1','2019-06-27 15:27:27','2019-06-27 15:27:27'),(222629,1,'7lfvCdv1HXpRc0jH6I1UkgUncdRmstoJ','5f66064qo2ub08idk1imnp0trp','','::1','2019-06-27 15:27:28','2019-06-27 15:27:28'),(222630,1,'XAjxPCNUbRbYZbG8NcRr6r0HCy2ciH51','3efsh76qveet4rh47js9r6gj0o','','::1','2019-06-27 15:27:29','2019-06-27 15:27:29'),(222631,1,'67ZMAfeRz5rDAI9KZ4ne3HIuaySODQlr','me5r9bck7fpmrbdh4rmtkskn9l','','::1','2019-06-27 15:27:30','2019-06-27 15:27:30'),(222632,1,'YvCkwhMQhEDXwqUnuKJyzRsXhJPYYBpW','tq9hagkqtj1d1s80i855oe23ke','','::1','2019-06-27 15:27:31','2019-06-27 15:27:31'),(222633,1,'jozG7PmlouuG8hfqluDevVAgptqVUfj9','usvpog1rasqg49rqosq21cd7s5','','::1','2019-06-27 15:27:32','2019-06-27 15:27:32'),(222634,1,'WHu6pvhadYYNpgDnJ6eQ689Jc6XnUnWq','26aks5isml6qrfc4oe732t5ivp','','::1','2019-06-27 15:27:33','2019-06-27 15:27:33'),(222635,1,'VsGPAOnFrrbJKR5gYCLCuwhw1n4JhLs6','3te2oqcmo9egntm79lhtnddqrn','','::1','2019-06-27 15:27:34','2019-06-27 15:27:34'),(222636,1,'TnYkmqOgoGSOJIuJcuFlzmzPTcDSjcPj','3i0k7837u8fdnt8kee1ef5lk1f','','::1','2019-06-27 15:27:35','2019-06-27 15:27:35'),(222637,1,'NKLkYE0RVGJzIb6xTCn8hslX00HpQ9r3','8194gr10e1068samjb00mmpsdn','','::1','2019-06-27 15:27:36','2019-06-27 15:27:36'),(222638,1,'9PEjHeJ0oETCcp9k7oGOrGCqM4yZYXHZ','bdar4qub3f0jqbitl489e8c154','','::1','2019-06-27 15:27:37','2019-06-27 15:27:37'),(222639,1,'XR8IxgsR3Wrfcu8DsowLhSSeBr9UCbpH','c518rlqitjac41b1cdbv8v78qi','','::1','2019-06-27 15:27:38','2019-06-27 15:27:38'),(222640,1,'eAw3XcXizONF9nuHIcqHFrjR8sWiCenK','07js475hv5jshhivdvct34np6d','','::1','2019-06-27 15:27:39','2019-06-27 15:27:39'),(222621,1,'WdQc1jmxdvAYcwHeNkOWWWvK7GXU85xC','tqjtvcvvtlhssfg24bd1rqcgcs','','::1','2019-06-27 15:27:20','2019-06-27 15:27:20'),(222620,1,'S35yUXiWPCr1BGvDeFkOGDIlYo0YVwNv','b9ja6d09f6tjq737cj4kj5nfvc','','::1','2019-06-27 15:27:19','2019-06-27 15:27:19'),(222619,1,'3OSBAVf658pscqxtLezIZvoLSxQxqntW','afks0g5kfum9k1ia8vh8rrltsk','','::1','2019-06-27 15:27:18','2019-06-27 15:27:18'),(222618,1,'NdXRzwNqRitpFIXo7pxfasLfpyf5CrG7','qmk6spi0t2805bu0tt3pic180v','','::1','2019-06-27 15:27:17','2019-06-27 15:27:17'),(222617,1,'lOcai823KjlVK1XgUXHd99JATZGY2xt4','cfon95vk72fr667rj1l0gcht79','','::1','2019-06-27 15:27:16','2019-06-27 15:27:16'),(222616,1,'XyMmSFRwQ1v2cr3mJRr2cuTZfkl0ur8S','8k74b8bd78nvktiqb79hesp5ad','','::1','2019-06-27 15:27:15','2019-06-27 15:27:15'),(222615,1,'HhLFLAFOjnb4PL08CbmTdRyJeMiPPWgo','8h0uc6tjhigik8a7t1d3gnkukk','','::1','2019-06-27 15:27:14','2019-06-27 15:27:14'),(222614,1,'KtTWXMAd5vngocTqM46v1Oz5YuyKhs8y','v0ipqd2n83uh6osh1vpvbrd9mj','','::1','2019-06-27 15:27:13','2019-06-27 15:27:13'),(222613,1,'GFK0KOVr5rpKsV1Qyq36oTNATbRB2AZc','l3f4tjpmngfgval9qobvrrd6qb','','::1','2019-06-27 15:27:12','2019-06-27 15:27:12'),(222612,1,'hBabttMhMY94D3VkNnjUpaBv36oiDIvy','jn34s0qdc8itsi14bjokb7hgvf','','::1','2019-06-27 15:27:11','2019-06-27 15:27:11'),(222611,1,'zu17tTHrNMnIrtLviUZgH5sqhg5dDFoO','upvst90a8s5srk6ji3iatdmlbq','','::1','2019-06-27 15:27:10','2019-06-27 15:27:10'),(222610,1,'EKMhE7u5UU998cEsI8EURic6XHz719JH','4gob6kh39h0m8h7jc6pjinuvsm','','::1','2019-06-27 15:27:09','2019-06-27 15:27:09'),(222609,1,'aeYXmSOwDkiAkkCzsUsNoCT36PhSNZ4u','m80mopptcold2el78huohifpma','','::1','2019-06-27 15:27:08','2019-06-27 15:27:08'),(222608,1,'gdaRhrCtSXqVwqRKR7psEzcGTLQOUCP3','hj8t1ncqn25uurhnhfeep393u0','','::1','2019-06-27 15:27:07','2019-06-27 15:27:07'),(222607,1,'0t2kRZ38Fr5ZMkxEoP5KLWt3ZhlgAT6R','dr75skm91nnh0mktiv3h1le8ik','','::1','2019-06-27 15:27:06','2019-06-27 15:27:06'),(222606,1,'YHhByn1Tps9NFvRALOqAoXB3yAKM805q','gt52ndbp2lf4tsjmmv2ogngg5h','','::1','2019-06-27 15:27:05','2019-06-27 15:27:05'),(222605,1,'vmaoi6bpX9TpawgF1FWgdZjIvwmpmNZb','rkt44vj27c3c80qegka6nhf9t7','','::1','2019-06-27 15:27:04','2019-06-27 15:27:04'),(222604,1,'R3ffWSeHtwmD9jHgI6aIWB7Jm7eW6led','b5084rqttl4ep3h3cl6ebaufsr','','::1','2019-06-27 15:27:03','2019-06-27 15:27:03'),(222603,1,'MBCLiNME5K2hcXrglIbuuUy0hzH2WLxU','kfc847lg8va873ndekcuref02o','','::1','2019-06-27 15:27:02','2019-06-27 15:27:02'),(222602,1,'ReMLotASBtX9o1LNtFUwfJRQKrFQf7du','uqe68mv446os3n4upmaamgjhdu','','::1','2019-06-27 15:27:01','2019-06-27 15:27:01'),(222601,1,'uWRP6qMu7mqRgc3Iucj4WxowOzv8qDjF','ickujiv83q48f8bkn1amohm6s4','','::1','2019-06-27 15:27:00','2019-06-27 15:27:00'),(222600,1,'0yahnJM3lAsXQxopxZQfva423rGJXtnW','375ph7kiljc7uet31kiev6l93p','','::1','2019-06-27 15:26:59','2019-06-27 15:26:59'),(222599,1,'PBWn2xh91LwOSI20qhwaKLf50FnCEkin','2ukuuklan1s7bbe8t6uir98b2s','','::1','2019-06-27 15:26:58','2019-06-27 15:26:58'),(222598,1,'mneAYWyCn8mIbqfYZ5zHfoIZ3ENN6u4W','1st3j8sl1fsavvjqhg4cimnl6g','','::1','2019-06-27 15:26:57','2019-06-27 15:26:57'),(222597,1,'HHtrgj138yNgRZydEsFxmQhK5RfEhhk3','9muve1j3l7hiftcr0m8dt08bqd','','::1','2019-06-27 15:26:56','2019-06-27 15:26:56'),(222596,1,'XhCL7uTSzyQAD5NioienDl4o1sISRW6J','l3nafng31pbraqa4ecph6he8mc','','::1','2019-06-27 15:26:55','2019-06-27 15:26:55'),(222595,1,'PJigEZ54EkRJAB39TMCY3Aubj71nS36c','kijcc4rjes916vjbg4rgm3tcpo','','::1','2019-06-27 15:26:54','2019-06-27 15:26:54'),(222594,1,'1PG1Iy6Hss78JtWM7fGktbbWkgVXNABE','tprnpak0u3hrgm9dbogh2on2jr','','::1','2019-06-27 15:26:53','2019-06-27 15:26:53'),(222593,1,'HpBURtIWygtYfMTXJb0w1l6T6Z3cbbbR','lnvnf62lvld1ncf87cerlovsfn','','::1','2019-06-27 15:26:52','2019-06-27 15:26:52'),(222592,1,'zcZGlDcqtAeyi5UxVZoToFZqPwHvVj7h','m11dpqk836elnt3jmtptqbaeg8','','::1','2019-06-27 15:26:51','2019-06-27 15:26:51'),(222591,1,'zGOOKPIu0jGYGC1qGr8v8fLvnh9oovpt','pr5r7cbn7jcsjl5dlrofotog42','','::1','2019-06-27 15:26:50','2019-06-27 15:26:50'),(222590,1,'vm7QWi7g1FzxNojYwMz95YwIuUv23us3','fbpd13a3m0g9rmsafhru41888q','','::1','2019-06-27 15:26:49','2019-06-27 15:26:49'),(222589,1,'inFBSuRpT6nnz6Fcgy0f5Wa7Go7SUydL','uv7jg4kgmi38kafb1r4h8qp5ot','','::1','2019-06-27 15:26:48','2019-06-27 15:26:48'),(222588,1,'SiyVqGkNNXX3Viho4VZbdnspc9FCzldO','ajd0vtduo2994grvio2msdcjq0','','::1','2019-06-27 15:26:47','2019-06-27 15:26:47'),(222587,1,'sHu5CWTFlNlD9Wtje0TTQ0pSLbKpTBMp','5s5rin0rfpdpap9d8c075hhec8','','::1','2019-06-27 15:26:46','2019-06-27 15:26:46'),(222586,1,'l6hxXKJdLT2g771T7qyuTpPDrVwrfIx8','6omgvr95h0bhf4duehdlq76jme','','::1','2019-06-27 15:26:45','2019-06-27 15:26:45'),(222585,1,'ooy6lYLFwW3hn2KKwd9jCvAizZSt2EOc','8sij8vm3tha1lq2bg0p0a5o2ec','','::1','2019-06-27 15:26:44','2019-06-27 15:26:44'),(222584,1,'ZVFctYeLFes95MnfYoXL0rgpV0IVdW57','qaca2if1l4bsl7l83mbkk8iu5n','','::1','2019-06-27 15:26:43','2019-06-27 15:26:43'),(222583,1,'NbVPXas2QwLNeKitwuqNJzQTIQTemWAX','n63dsbi3j5hf3d5uf5t9sumer0','','::1','2019-06-27 15:26:42','2019-06-27 15:26:42'),(222582,1,'JFHNIFFalEMpUNhJBXRPGdrhzxCwfyKn','77f7j7tk4a6ncrruudqbhcuk6l','','::1','2019-06-27 15:26:41','2019-06-27 15:26:41'),(222581,1,'NeevBlXnFOlrJeFgXfybleriCQx94yAA','v3i53gpe2qpu7142hhstj16rv7','','::1','2019-06-27 15:26:40','2019-06-27 15:26:40'),(222580,1,'kqNjZ8wX3xUbS6GuiMwPQv897Ntw8QEV','7hu06gqog2j3fh291rjqsen8hp','','::1','2019-06-27 15:26:39','2019-06-27 15:26:39'),(222579,1,'8WsE63vXhfxG2DNYoleAI4eSOQ3sq3m7','v4l7l96aj449j6vrv16e76uflj','','::1','2019-06-27 15:26:38','2019-06-27 15:26:38'),(222578,1,'8aa7bv73eguHO6145b2gBWdw5hVmYmrJ','vvsdjrm1palk92er7tttsa9jbr','','::1','2019-06-27 15:26:37','2019-06-27 15:26:37'),(222577,1,'ReLDYmSjGZUHoXJZSidVQbx4J8tbuLNY','9p0ihsec1copmestj9maoir6nk','','::1','2019-06-27 15:26:36','2019-06-27 15:26:36'),(222576,1,'uEFi4ptVcD7JMG8ZywIR8o4KjH65TwZN','puemehq21bu3dccfh8gdj8l9s5','','::1','2019-06-27 15:26:35','2019-06-27 15:26:35'),(222575,1,'m88t25GH3XviZKB9HBAk7r0AFiLykwtL','hgsbe5gabd3hgi15iiq9dt1pfh','','::1','2019-06-27 15:26:34','2019-06-27 15:26:34'),(222574,1,'FEIf3mrMVDXjSEl0LbQRZGFyXpDse8Gl','e3orhu2bcrg904p1eb3qjuvuc2','','::1','2019-06-27 15:26:33','2019-06-27 15:26:33'),(222572,1,'W9CqDAWy4NsUa5SNb1fv5omAmOhdYkXy','rc2gma2j96ejuntd0age3q4ek0','','::1','2019-06-27 15:26:31','2019-06-27 15:26:31'),(222573,1,'RFId5KDSATPgWIOVM9iN2kZ5cCbHXSpa','pg7dktfgsivm6jvk40n30ik99q','','::1','2019-06-27 15:26:32','2019-06-27 15:26:32'),(222569,1,'1dUOAWIfIgSMRes69VEglQd4s5vcaKkc','tt5nttbtjpk09h451ab4cs08f5','','::1','2019-06-27 15:26:28','2019-06-27 15:26:28'),(222661,1,'kkWJOYmyn1QH0sMXxOgAxpEjaRIl12Qb','gkkjah4gg9e703inb0t83b75kp','','::1','2019-06-27 15:28:00','2019-06-27 15:28:00'),(222662,1,'7dpDd5l0h4Wbuh9Ew7co62kgY8dteg2N','bt2ecsntslmoaihism8ffuremb','','::1','2019-06-27 15:28:01','2019-06-27 15:28:01'),(222663,1,'ivqd28pGAN1uFrSWlTLxdb8MA8Msyg5f','ngcpt64278hg10gn7rnp9par6s','','::1','2019-06-27 15:28:02','2019-06-27 15:28:02'),(222664,1,'xgCTw7ssSiRzGQQyT3wAWt1rSd2yiFDY','148en5cmqet7r8ou90bg6ps336','','::1','2019-06-27 15:28:03','2019-06-27 15:28:03'),(222665,1,'gorJkptmhyAimsz7VpczUJrtym1FRKcs','30emh27vafaj53qj0usmjtrire','','::1','2019-06-27 15:28:04','2019-06-27 15:28:04'),(222666,1,'ZPnUTzzY8zPYXMx2tx6UrYeJCyVAIUIu','um1dbgesto5nbm8honm9qrpop2','','::1','2019-06-27 15:28:05','2019-06-27 15:28:05'),(222667,1,'t2oYehYGryGOL5PuayRyJRJYh6BhDAtz','54avi11rguvg8e0pvjiac75bnt','','::1','2019-06-27 15:28:06','2019-06-27 15:28:06'),(222668,1,'KbRLcMBq96DeTx62dTC3yBc6J4D04Z1G','jgpd0hpfque95dt40rr02j5jtb','','::1','2019-06-27 15:28:07','2019-06-27 15:28:07'),(222669,1,'O3zETgOY2hLjRWh2I3QeOrgS8IYcxTNY','c665s0mfgnit4n76ccvgj39aeq','','::1','2019-06-27 15:28:08','2019-06-27 15:28:08'),(222670,1,'vsOopAbPSm9GQKaBY3sPMZiPmOkhh8e2','tr29opt0jqta8gbpr2igaji4h2','','::1','2019-06-27 15:28:09','2019-06-27 15:28:09'),(222671,1,'Glxywd4DDkXPhvWiyXUAvQuw7fJ0uJME','2n5qg2klmqmgmq6lprnhh2nm8k','','::1','2019-06-27 15:28:10','2019-06-27 15:28:10'),(222672,1,'ceiQFm5bVaXtbVkUcEJNVa3xJ43h5XfI','4padmv2q8l2fhed17ksrufajn5','','::1','2019-06-27 15:28:11','2019-06-27 15:28:11'),(222673,1,'WBAy6Mw5RWxbbNh41UDNOjyFJoEfPvMS','fbu2otulua950etl0cut5012m3','','::1','2019-06-27 15:28:12','2019-06-27 15:28:12'),(222674,1,'1QYzSVyLs7RPk7EfmKveqQ115fDx5t6A','0unqjsl181il0kmkd3rd4velm0','','::1','2019-06-27 15:28:13','2019-06-27 15:28:13'),(222675,1,'KeutlLfg7Pk0QyLmTS5xnuwF1RgvYf9L','i3667i3h5ig07fvp2lblr86urp','','::1','2019-06-27 15:28:14','2019-06-27 15:28:14'),(222676,1,'37boYXOOKICDlwHgSu2GCKmiLLiBJd1e','3c4063sa723vppbkl180f5pce9','','::1','2019-06-27 15:28:15','2019-06-27 15:28:15'),(222677,1,'VApPfQ8NvJaVMtXRhN3SOxbGRP4A0Iy9','agjk5kv9ljahh8qb8ip3mqk29u','','::1','2019-06-27 15:28:16','2019-06-27 15:28:16'),(222678,1,'JMzMwGz0LsVvK2GSzDcpE0uI5gUjBXEm','a0vjlfa8vfa0onf26dd7p586l7','','::1','2019-06-27 15:28:17','2019-06-27 15:28:17'),(222679,1,'UGcXrsgR6qvqJ3SUbvy7y9pk2ND9kqKi','blumionrl89hnkad0h75ql38s1','','::1','2019-06-27 15:28:18','2019-06-27 15:28:18'),(222680,1,'mmAwI9OTq2VbjFxhQAygXNu58nrXDbFY','too86i8spltecjnpgbj8r2r2ka','','::1','2019-06-27 15:28:19','2019-06-27 15:28:19'),(222681,1,'vjM7Xq4i7Pw514d4UdJttxalOG08BtIm','qpig9hl0f2q7cmq2dolh0v8kl4','','::1','2019-06-27 15:28:20','2019-06-27 15:28:20'),(222682,1,'EcX2Np6CTTtB3onUL9keBfQSreZdQGL0','ahc9113nj0m9qqkbp2ir5d59hv','','::1','2019-06-27 15:28:21','2019-06-27 15:28:21'),(222683,1,'HPQiIlKJvxAsUcqAHoGZVPrwgZKkTt4T','l7ps2pn6en5e84188c3s0jl5rf','','::1','2019-06-27 15:28:22','2019-06-27 15:28:22'),(222684,1,'PH57RYyl0e2NUdqutZU9tX1xrMzzSmLw','0ie4va1tcceiqo9ae004vqncm1','','::1','2019-06-27 15:28:23','2019-06-27 15:28:23'),(222685,1,'eSqqR31wLQrSS7tHUxxs9dSaHMwl1WWF','n1c6n8sgt9dv8fdeqo699pd644','','::1','2019-06-27 15:28:24','2019-06-27 15:28:24'),(222686,1,'tFJ5jmMhYGUdx3AjSYWZOz2TwiEoL5jX','2r32v53i0enn880vf438nknt9n','','::1','2019-06-27 15:28:25','2019-06-27 15:28:25'),(222687,1,'wNSBvbkc0vZaPOWNTozY0neASa9O7Nxj','1fvkkdfhc1a8qp44mocfrk24s4','','::1','2019-06-27 15:28:26','2019-06-27 15:28:26'),(222688,1,'A8MVS3XJCNNn9o7x59aKij5V7wa4vaBX','vqt28lsg0arkq4qu2ta284q9ag','','::1','2019-06-27 15:28:27','2019-06-27 15:28:27'),(222689,1,'YR4Ifxq3PukVaAeYfSmHeFIwXLoF3ORx','jdc3vnnvjfrjulvqsmbg3593sv','','::1','2019-06-27 15:28:28','2019-06-27 15:28:28'),(222690,1,'pgKq06QEoO4YeAvICArhr1I4YHo3Zud6','somdkfosek8hgltkspko3pgqt5','','::1','2019-06-27 15:28:29','2019-06-27 15:28:29'),(222691,1,'u90U8kkYSBPK0UjXyxAI0libsFN3sYx0','reksv5nbia92gnvtfhubnotijl','','::1','2019-06-27 15:28:30','2019-06-27 15:28:30'),(222692,1,'vNMBzZnRql3zSZFFROps34ymhcdWXdt7','jarb3c3mhton30oc5njtgdk2qj','','::1','2019-06-27 15:28:31','2019-06-27 15:28:31'),(222711,1,'OAq2Tojz0bsGfEefIQRczxiXqS4XmLfR','1pqe754t8g1jpaai0b04c3kvb6','','::1','2019-06-27 15:28:50','2019-06-27 15:28:50'),(222712,1,'BeuMxLDAnM3ZnTWAHYN8iccmFwkeBbOJ','patrk6l4hub3t86a7ica43shgg','','::1','2019-06-27 15:28:51','2019-06-27 15:28:51'),(222713,1,'Iq7XDa9BQy5zDlljQF5tF5UwrKQDnb03','cm2115p54icjkc12flbhlavjaj','','::1','2019-06-27 15:28:52','2019-06-27 15:28:52'),(222714,1,'hZVpmZzvHZfvepkZZjJELVxHqD941PvF','vvikq1fvk3l5fv958ejv5n9tkv','','::1','2019-06-27 15:28:53','2019-06-27 15:28:53'),(222715,1,'4BYH4E1bWud5eFTBynx04lBg2X2QigXK','nlabadcbq58t7lsllq68mqo3v8','','::1','2019-06-27 15:28:54','2019-06-27 15:28:54'),(222716,1,'Rf7vNZDtOv2y8VubTHJT0b0jlwgKNNzo','vbase66ccd2uaekr3442kvgnhu','','::1','2019-06-27 15:28:55','2019-06-27 15:28:55'),(222717,1,'OqQzwLYbERBqD6yVlF5cwQwrw98ufQ98','89dj55a4qorl6lqtbkd5a0h2mp','','::1','2019-06-27 15:28:56','2019-06-27 15:28:56'),(222718,1,'zE2tTGHQG6bmO0p0hXWRBi4KOq0MBwV6','ggq42oif50rami5dfsrrtmkbk1','','::1','2019-06-27 15:28:57','2019-06-27 15:28:57'),(222719,1,'oAQ13QovMM0TeEwFv5ioD22NTDO3SQzz','2ig5qfv5vb7kf9m8spll15lu66','','::1','2019-06-27 15:28:58','2019-06-27 15:28:58'),(222720,1,'jKDJ28qtTkJOmxtKyDjm72QntP5qObNd','67ec2rle48qeh3jt6ve17km75i','','::1','2019-06-27 15:28:59','2019-06-27 15:28:59'),(222721,1,'3JbhOlGYWS2s2tnFiLu6SoX1CzUhAy07','uo76kdn2ts78dg3ksp7ldnt3tr','','::1','2019-06-27 15:29:00','2019-06-27 15:29:00'),(222723,1,'DxlujreXdqfEn2BhSnQuJidbuVp3CC3J','8fonmldnu8smcqjhqp065baf21','','::1','2019-06-27 15:29:02','2019-06-27 15:29:02'),(222722,1,'Jzqsa47tiVcvt8jxRFyQpZ74Ajcacmf7','dra16n6qgu8g97bchbbdec8lpr','','::1','2019-06-27 15:29:01','2019-06-27 15:29:01'),(222725,1,'mAEYkJwIgXRe0pBlTVKY7oD9LXOnuWeM','uqftajubg1d6aefo2go0a8bvud','','::1','2019-06-27 15:29:04','2019-06-27 15:29:04'),(222724,1,'SEyZ4F6dmQl9eM1BWJS1u9J03g8LfY8Q','d0allv3nim7i8rcvj74i9kkllt','','::1','2019-06-27 15:29:03','2019-06-27 15:29:03'),(222726,1,'rBGNe9I8Tvaa1wNJ9dxalRcnJWE3Scc1','k61a5f114l7fvaj30d4r4qib9k','','::1','2019-06-27 15:29:05','2019-06-27 15:29:05'),(222727,1,'bQi77ICyhZJOHWPPVvsBiylmvsb16YE6','3ubkf36gdpt1c1g6flsc72vhtc','','::1','2019-06-27 15:29:06','2019-06-27 15:29:06'),(222728,1,'z1HxIHY589FIektRfbgk1S1tR3CJKicI','sfj1fo8ki8bl06udk7i985ugnv','','::1','2019-06-27 15:29:07','2019-06-27 15:29:07'),(222729,1,'IfA5IWaabp88LUSUIGbTm9K3vLQzdWv2','ne4kukijm7lv13gh49ik8ji9sc','','::1','2019-06-27 15:29:08','2019-06-27 15:29:08'),(222730,1,'sqFB2DQyVDrqzuw74is43tRYYRh3n1no','7hsnitthe30lb93607e13r0mu3','','::1','2019-06-27 15:29:09','2019-06-27 15:29:09'),(222731,1,'Y6IGEraL7WzK9lRrERBau2r6MsOWeDOC','rjbb8erf27jhvkju8tigku4taa','','::1','2019-06-27 15:29:10','2019-06-27 15:29:10'),(222732,1,'yKIRqdvCHqpQesxE4rX4WCluaUqZWIPt','fhfas6efi56spdghor921vde6h','','::1','2019-06-27 15:29:11','2019-06-27 15:29:11'),(222733,1,'OH5FCtwlppEmtVhVpknFyNs3MxEzSP8p','p98slovm3u129iesd2l275ohve','','::1','2019-06-27 15:29:12','2019-06-27 15:29:12'),(222734,1,'18og4AXTJqA5kf3LelEYXgiFpPvdX5ep','2rr4jagio4tsevm1kkcd6i8qku','','::1','2019-06-27 15:29:13','2019-06-27 15:29:13'),(222735,1,'VsGNHGJfcT4BrRvJ50n3q3SxtsNk2AXE','pq5u1vt19pe11pk1mrvaoa8mi0','','::1','2019-06-27 15:29:14','2019-06-27 15:29:14'),(222736,1,'Z7cq08uMtuWaWu0Yk26jkQ9Z8RxWGuJn','pc5hiovhqml033vuop0c3matot','','::1','2019-06-27 15:29:15','2019-06-27 15:29:15'),(222737,1,'GUedhamK470OzEUjDa7J8oojNjNnj2FQ','8m9v0fekrmbh7nlutjo10mnqpd','','::1','2019-06-27 15:29:16','2019-06-27 15:29:16'),(222738,1,'ftSD0RvSFeRDHJLp0q3bf3xDetGyJ64Y','bq9qbjq63umiohvp2u54r407rs','','::1','2019-06-27 15:29:17','2019-06-27 15:29:17'),(222739,1,'23kkIF6aUMpHH4OlL1lWDuZQ8Sm7gz0j','tscqekui6b7tddvmkb980psh0i','','::1','2019-06-27 15:29:18','2019-06-27 15:29:18'),(222740,1,'BaZJLPdO3A0tbagPCl2xQcjtM6Alzcxq','ejtpqjvevgm3k9hmsmq4mqaiev','','::1','2019-06-27 15:29:19','2019-06-27 15:29:19'),(222741,1,'trRPRuxhhrcmwJaVDeChuxpqgeEpRv5K','1n6l5d5vlk617vfc3lqkmj9v3u','','::1','2019-06-27 15:29:20','2019-06-27 15:29:20'),(222742,1,'nAdNJBZeetQqbgGBLqRa9pTt3GNRgo4W','5uvn9i2vlb4lmeb7pdncn9b3fc','','::1','2019-06-27 15:29:21','2019-06-27 15:29:21'),(222743,1,'IdtOCCDayWr9lLhnNIm935XEx4Si9orW','ej4n6296108uuocqibaa6e26q8','','::1','2019-06-27 15:29:22','2019-06-27 15:29:22'),(222744,1,'M2OZL6IcbhuRLTVEho5HafSnrwQai17b','2qa402t1tip2vgpplueava6e3f','','::1','2019-06-27 15:29:23','2019-06-27 15:29:23'),(222745,1,'3iY9qVLJoltKawhPVesMa1OC3KBLztKP','bgr0v8lgffj0gn31g1172uqm0m','','::1','2019-06-27 15:29:24','2019-06-27 15:29:24'),(222746,1,'Qd94JF1OWLooi39Hb9nU2hv3iT2lXZKp','heifs7d6hti29527kgj82r0c3h','','::1','2019-06-27 15:29:25','2019-06-27 15:29:25'),(222747,1,'snzIYcEChULmw0MmuhnCHav3ks10HFd7','plttma4stcpfuh9chofn2veq30','','::1','2019-06-27 15:29:26','2019-06-27 15:29:26'),(222748,1,'lIJWselDAAiAmGYvO4fKNeTw7jIZ6JxI','sp6ug1u54cvc1hn15adfn1f2av','','::1','2019-06-27 15:29:27','2019-06-27 15:29:27'),(222749,1,'aKf3CoHjxMDzqwtGEdbegACheWdzLryp','l6qb0r143t4cgg315m1n4043m2','','::1','2019-06-27 15:29:28','2019-06-27 15:29:28'),(222750,1,'reN3FqaPIGUiqsF2hZ9iMHZHyxIcXrdl','hgf02ev1lp2n409lp5fhgukb9e','','::1','2019-06-27 15:29:29','2019-06-27 15:29:29'),(222751,1,'ImQp4s8VTLl1vF6xn4IDY9Uo0NOnEaz7','puc9ujfnd36stoqnunl2fefoag','','::1','2019-06-27 15:29:30','2019-06-27 15:29:30'),(222753,1,'pXCyel6kWawxUgb0jxvkgDt96RxDpegZ','04t883mh13v7h2evk3jhc3a24k','','::1','2019-06-27 15:29:32','2019-06-27 15:29:32'),(222752,1,'Tcbn9ow2LkN7dhheFoSNBbUMOZxTIma7','5d97ish6uef7d6duivse687k73','','::1','2019-06-27 15:29:31','2019-06-27 15:29:31'),(222765,1,'sQCW2tNkTKhSIXqCiwKP8W6PBE0xN3Rv','uvtgnka4qcu03qr2rkink8ft89','','::1','2019-06-27 15:29:43','2019-06-27 15:29:43'),(222754,1,'OGqu8To7JLQJC65XrH3EGgwTMP5Xv9hC','h7co3kjh52uta79c4cpeep37cp','','::1','2019-06-27 15:29:33','2019-06-27 15:29:33'),(222755,1,'eBdX7etjefJkSO3Y2twztuImar5dTixc','igluhtjkl64v5jbe7470vel24m','','::1','2019-06-27 15:29:34','2019-06-27 15:29:34'),(222756,1,'LeamhySjAkR03BiDeD7yFCI1sNbn35cC','89fbq9tkg0bdebe28lupfmf68l','','::1','2019-06-27 15:29:35','2019-06-27 15:29:35'),(222757,1,'u6UuOE6b54EcJ9EhszITX0bgiVmqOIax','g8u6dglfrch0iq2uehappubhlj','','::1','2019-06-27 15:29:36','2019-06-27 15:29:36'),(222758,1,'oeWxmPLuiJGcMige2tRMfaAdcnVMdgZP','qp0mnacjfaqm3l37dd6ia1p0tj','','::1','2019-06-27 15:29:37','2019-06-27 15:29:37'),(222759,1,'KBXPLO2tdy2etQfREGaNOeDygou0hROF','105sir3ouudnjfir96nnuavjh9','','::1','2019-06-27 15:29:38','2019-06-27 15:29:38'),(222760,1,'cnEv9aoiqYiTgxbrjsbodT2yPDD9Z3Sd','rlvetq6rn3nfnvr5ca9acar10n','','::1','2019-06-27 15:29:39','2019-06-27 15:29:39'),(222761,1,'JWldWhDvb1WalRoHcq6vDDF3H7Bd9dko','dkqp0rugidqrfg4hi0825e8se1','','::1','2019-06-27 15:29:40','2019-06-27 15:29:40'),(222762,1,'qkOYv3AwxZboF3HSJ5jvvih044EvY6Df','d8dogsr0iacaa6ssh78bqf29a6','','::1','2019-06-27 15:29:41','2019-06-27 15:29:41'),(222763,1,'dLI3mxNMA5cnrFJM5ImG6NcqXr5r2rLy','9rl53v8cfmaeqoak4ibai4tv45','','::1','2019-06-27 15:29:42','2019-06-27 15:29:42'),(222764,1,'bPS2eh3Kd4QqlGsiuaaPiL9eQug0loR4','nsjvbliv4odu9d7jcvh6vohmht','','::1','2019-06-27 15:29:42','2019-06-27 15:29:42'),(222766,1,'cap8hiTMCoG2gLQOiAxi5taj4cTca4VJ','dtc4l35al9dbatnb7kget0v1l5','','::1','2019-06-27 15:29:44','2019-06-27 15:29:44'),(222767,1,'pLl90PXDMbbDRrIXpcm4xPSGOJ5otmpu','1tv0k35f97uei58htolhi4jmcm','','::1','2019-06-27 15:29:45','2019-06-27 15:29:45'),(222768,1,'lDcurxyBp33qM4pTCidsJIHwe0PPH2qI','lg0aci4ep2bm47iqinm3t3jf93','','::1','2019-06-27 15:29:46','2019-06-27 15:29:46'),(222769,1,'zdgLFaxbZXIq4xoi3mJQpt6XtDzvHqGj','3uulu7j7pvm84p2m9bdn9fgecu','','::1','2019-06-27 15:29:47','2019-06-27 15:29:47'),(222770,1,'tYcI8qt91CEuLxip9q8MkNpp9hE05P2v','4v1dv9plrs77p21ltjhj87htt9','','::1','2019-06-27 15:29:48','2019-06-27 15:29:48'),(222771,1,'HaOzadb0bVHFFtBVPijNjYNNfkSpOTTG','10ud15sck88fe5j8b53d0fiupo','','::1','2019-06-27 15:29:49','2019-06-27 15:29:49'),(222772,1,'BAzxseblX5GYoKdyhpNGtvest86AESM9','ree68bhl9seekfqjdgdb2o4jej','','::1','2019-06-27 15:29:50','2019-06-27 15:29:50'),(222773,1,'7WOyqqfhmQsJZSavkid7O9zTgIis5qAq','frrer7h119dtuohf44krl6i9kt','','::1','2019-06-27 15:29:51','2019-06-27 15:29:51'),(222774,1,'BwgRcvnmMIp3rY1ob8PAVHiF2kXTBKNw','9m08rlkogie32be01it6ctr8jg','','::1','2019-06-27 15:29:52','2019-06-27 15:29:52'),(222775,1,'CTVwzC5EtFHD5hPvsqSpFsCtBMagWJmv','ok341s2qorib15f0qbg94p00kb','','::1','2019-06-27 15:29:53','2019-06-27 15:29:53'),(222776,1,'Qeja1K2PVgo3dsp47TsxZhKeEFFU4lcl','e9n2cvkmbiv496gha3gbs94pn9','','::1','2019-06-27 15:29:54','2019-06-27 15:29:54'),(222777,1,'o2YA1DIjpxRxGn9qDHDCzL3wDd0mNFEr','sudn4988eicp6fjh3i4a2ku567','','::1','2019-06-27 15:29:55','2019-06-27 15:29:55'),(222778,1,'8hpVfJtIvQySfGEaq2dOPUcROzvdxcgu','47jb6dbsmt8gk2ipj28uta2asf','','::1','2019-06-27 15:29:56','2019-06-27 15:29:56'),(222779,1,'yyvuzv2Jxkmb0Gu1bQ4gOjQFKWSB1ieY','9pj42t6ddqvq4jlmb9cn4scn39','','::1','2019-06-27 15:29:57','2019-06-27 15:29:57'),(222780,1,'nn31jjLdHTl4j0EqD4jiCMCSmgVNAZml','l228a4airseqspd3lbg90bnp0f','','::1','2019-06-27 15:29:58','2019-06-27 15:29:58'),(222781,1,'QjKe1dnAiRvDvgEufQk2l2yO182EUZ0f','22st5436s0j6aok4114gebn809','','::1','2019-06-27 15:29:59','2019-06-27 15:29:59'),(222782,1,'O8qID7I17NtSns7BAGLLwosmtDlxqLNe','35gvkv9hfh78fqhcv0nvo24s17','','::1','2019-06-27 15:30:00','2019-06-27 15:30:00'),(222783,1,'bm0B8asFoAvtudWPkKplexO6ov4zZEiL','cuo83a803nttnf402l2as6md4r','','::1','2019-06-27 15:30:01','2019-06-27 15:30:01'),(222784,1,'oFSv3oyBK5OtdEHuj2sOyPXyORlQ4kTr','n5fl1ratvsv0jar5f9kjnp3025','','::1','2019-06-27 15:30:02','2019-06-27 15:30:02'),(222785,1,'zjVP4PIq0ylNGMnwnOk7pRw20hUY0R9j','l87cdchd0tumaf9bf77lltvi1p','','::1','2019-06-27 15:30:03','2019-06-27 15:30:03'),(222786,1,'pgajJlD4qt35qKjAmsrvFFnI7xqdcFmi','sjsa563mu2ogg5sk8mhr2h1pbi','','::1','2019-06-27 15:30:04','2019-06-27 15:30:04'),(222787,1,'C4oe5SxsANUYEpWSyIsXJpjGeLzLP5RN','ie17mp097cqjk3j6b2r83fsgh3','','::1','2019-06-27 15:30:05','2019-06-27 15:30:05'),(222788,1,'uGeRwWAapmrkD2PEtxIbPMyreH9Gpyk5','3tv22go39686lhuqi34gjqthu6','','::1','2019-06-27 15:30:06','2019-06-27 15:30:06'),(222789,1,'HUf6opFuVrMIUkijkLo1cpbzO0QJZk43','0em6egn19dh2df662hb72injeh','','::1','2019-06-27 15:30:07','2019-06-27 15:30:07'),(222790,1,'EJKWaqGpXQ3neBBuCsbHh4b0S6iJUY6t','j8c5p79j3pus794ipl7i2n4ikf','','::1','2019-06-27 15:30:08','2019-06-27 15:30:08'),(222791,1,'U2DfBm0mmvOtO96y9MxqX6DImL4R73hg','l9kjh88s0o2g897bch7rai0gdt','','::1','2019-06-27 15:30:09','2019-06-27 15:30:09'),(222792,1,'F29ciru3VI18J3yeWi1z2lKv87MPnIwM','q3c1rknnjhpthlatgfgqptark7','','::1','2019-06-27 15:30:10','2019-06-27 15:30:10'),(222793,1,'LC1MJm6iqocR3S0gfUusxAEYiNr4YV07','sq1slm5d0u388vt15othcue1jg','','::1','2019-06-27 15:30:11','2019-06-27 15:30:11'),(222794,1,'0oXy8rwu8BNrUdhRNosdYCOs3778NRRN','9ap7u80utbpsjouqddu9e8uafa','','::1','2019-06-27 15:30:12','2019-06-27 15:30:12'),(222795,1,'L4Su0KWiAGEuJlwSWTAjlMk6yzcrBHCE','o2n9p3ipkpamgjmqfmcva4r3o8','','::1','2019-06-27 15:30:13','2019-06-27 15:30:13'),(222796,1,'LJhJgrFg7akOc0dpqeEe44Rs6kipWyb5','ns2r6je9u37v6mk9ctmkonutm7','','::1','2019-06-27 15:30:14','2019-06-27 15:30:14'),(222797,1,'WHNvQzoUqCMZtsMxBobbcba0SdjNF0uM','jjaqjr8199lktmau2517242fri','','::1','2019-06-27 15:30:15','2019-06-27 15:30:15'),(222798,1,'K1EceMIvyEPGM69QgTakgZW77sPIHxzj','p81am15o00aa2i525f0uh6072o','','::1','2019-06-27 15:30:16','2019-06-27 15:30:16'),(222799,1,'U6l6Ha2b4LSiub7bleB844SWAdDZs2Fv','t9uqgpq7cpuj4tq1lad2trfcm2','','::1','2019-06-27 15:30:17','2019-06-27 15:30:17'),(222800,1,'kKwKvI0RHPbzDEcVwgER5ZtVd3Kl9NHW','hmg6u0dbnl0nit1v8c3gop3ssj','','::1','2019-06-27 15:30:18','2019-06-27 15:30:18'),(222436,1,'4bs4cJATuOeLLj0GJmk7EX2pVhSYr53n','t8p80fu4q87hk150g7ieq1fns8','','::1','2019-06-27 14:56:57','2019-06-27 14:56:57'),(222437,1,'WHGoFlvvqqA9Y8ZyYFB7vttR7B7RhcDT','37o6uu01fff8nugtjruqutrepr','','::1','2019-06-27 14:56:58','2019-06-27 14:56:58'),(222568,1,'Iwk8kdUaAOx4cobc0SDKqdQUvao6jXix','go8sq0mop0pnlqsfnmfi7k33re','','::1','2019-06-27 15:26:27','2019-06-27 15:26:27'),(222567,1,'u005hWYdjDEwa2I8kIHnALQJ5bkSmYDB','kn8o7g5lgugteup9h28kotb2v2','','::1','2019-06-27 15:26:26','2019-06-27 15:26:26'),(222566,1,'qCwrvL3cHgbAm8xm1gteELnSJ5HNRRdq','usie64e1nqek6q17k1n1m7lkjo','','::1','2019-06-27 15:26:25','2019-06-27 15:26:25'),(222565,1,'Bjgct1Cb02Mjz07h5yM6Da7ykQ8GKwPX','ivtcn7lrpmh9a1op3eiqtevnnm','','::1','2019-06-27 15:26:24','2019-06-27 15:26:24'),(222564,1,'XbvC47OM4nC3CraKD7sOJuaPpMeZ7QW4','200i17umibt0iv03l3ne6b46d7','','::1','2019-06-27 15:26:23','2019-06-27 15:26:23'),(222563,1,'gGP2OiupwRpUDQ8TwvddpzGcMUxexGKa','tl3ckmcmojihv4k4nve7b7p940','','::1','2019-06-27 15:26:22','2019-06-27 15:26:22'),(222562,1,'OlMZ8PqenrYNP1brbjcZrrZgCDTETZaN','q451iuqibsnf16glqgtl203bqh','','::1','2019-06-27 15:26:21','2019-06-27 15:26:21'),(222561,1,'olhELSXkmhV7Ha2pOSB6jivNn5T4JUi9','cdfll0vsp3ei09n3o8dau0pavi','','::1','2019-06-27 15:26:20','2019-06-27 15:26:20'),(222560,1,'MHxdTTzqCfVU9c7pNx8mMEwJwHiyRpQF','olspa4m7kf3s7be7mqoqs2kii1','','::1','2019-06-27 15:26:19','2019-06-27 15:26:19'),(222559,1,'724Q6rpanDUmVuCP0yrart9kbns245lk','att1vshg2li012544mmhj24tbg','','::1','2019-06-27 15:26:18','2019-06-27 15:26:18'),(222558,1,'i75sAd0vFqrdIKJCPg01wb6LioHTTf96','atlg9op2fmh24t2vg7p0oe5qop','','::1','2019-06-27 15:26:17','2019-06-27 15:26:17'),(222557,1,'qrwoKs5CYFMRzJAcCR0qLzCvtz5aAg7J','ji83iajr4aolcoejcog4l1buf5','','::1','2019-06-27 15:26:16','2019-06-27 15:26:16'),(222556,1,'rusrzVhlO954uU8ewNY7l6P3oQJRELAW','jhp67fme7f37vja90nta7tmgpb','','::1','2019-06-27 15:26:15','2019-06-27 15:26:15'),(222555,1,'xikiKYjvHfLSTczwCsCt0wLwDEU7dPQM','8c174h5mgk2di0l4qr5nu52cv1','','::1','2019-06-27 15:26:14','2019-06-27 15:26:14'),(222554,1,'QOh8QaTEpjJAnMM6LsW2Axrye1PmCLpp','bpllhvfp6sfvdsbofeg7p0ctbo','','::1','2019-06-27 15:26:13','2019-06-27 15:26:13'),(222553,1,'H22ANx8ONPjE8cOZrPasJjEixFRSjZe2','fkhjv8p4njd6471qs0ledpcke4','','::1','2019-06-27 15:26:12','2019-06-27 15:26:12'),(222552,1,'Fmq0awOpmZJlb90PA2zLobPToaLRTu95','7uvb35tl3j96p2spv1r31ugkfq','','::1','2019-06-27 15:26:11','2019-06-27 15:26:11'),(222551,1,'XgsfHEDkRDc8vZgdy2lSc7IM4nqeKtVg','lqdt667aqhkjavdbrdralhsq3j','','::1','2019-06-27 15:26:10','2019-06-27 15:26:10'),(222550,1,'OYJiyM7KDJ0YYKaa6DeFgTsJMdvPAYVB','g14c9v12vu61bsrrvhdhhp36mb','','::1','2019-06-27 15:26:09','2019-06-27 15:26:09'),(222549,1,'FK1ZQ9KWTI3ukPhbhGRxNFOn7jwm9Z8D','la18mf0oij3lqlbft3eq8p28kr','','::1','2019-06-27 15:26:08','2019-06-27 15:26:08'),(222548,1,'ged2vACfAh0t3wHwy5bTZDtZx7m7NEbD','n9v5pg4co82ljdna21cdljgupc','','::1','2019-06-27 15:26:07','2019-06-27 15:26:07'),(222547,1,'BceNx1bOAgoTTmekjivJlLMCPBay53Oc','e62jpiir28htscm0kqc3a60i5i','','::1','2019-06-27 15:26:06','2019-06-27 15:26:06'),(222546,1,'uFch0TI8UhTyE38huzsCWZ0nCoKtwjs8','9p7kvnetb2u5pggdh13lnsvjq9','','::1','2019-06-27 15:26:05','2019-06-27 15:26:05'),(222545,1,'ZCb2ku4H8kNqieoZLkrgOEuDchgnuvJ9','iiqavosehbsqtjkv1j9as1v72o','','::1','2019-06-27 15:26:04','2019-06-27 15:26:04'),(222544,1,'CKTzTJPJS7MYmMDHwlOhY3NKkjG7iii1','aahq2toa8n8imee3ah3rbud1qn','','::1','2019-06-27 15:26:03','2019-06-27 15:26:03'),(222543,1,'vhW8aA1LmeQt5grqzjPdh7FWKNwTP60Y','pj9619ntncrfvc1h5geackt5bn','','::1','2019-06-27 15:26:02','2019-06-27 15:26:02'),(222542,1,'1ZJhYpEhIDxqDJgRwzXN7hDpethNIPcs','ifh7u6r56feeqctd8ksvjqlvlp','','::1','2019-06-27 15:26:01','2019-06-27 15:26:01'),(222541,1,'vkQXW9AJGszph9WZTpCXjpAN34o46wsZ','6ak9klvn3bi4uemvs2nq3nc1oq','','::1','2019-06-27 15:26:00','2019-06-27 15:26:00'),(222540,1,'kOqupMkl1hoyvopCpkIm5RWNrvmER6OF','4fpmk9vsei94060lp5cu6tp9pl','','::1','2019-06-27 15:25:59','2019-06-27 15:25:59'),(222539,1,'u5Aty2DiPiVgYdZUlGZD78s4O97QTR75','5ocddonf9mp3rgkr26u0kl8jt1','','::1','2019-06-27 15:25:58','2019-06-27 15:25:58'),(222538,1,'ZavKcrmae6Z5ne6aZrBP6GuCIYaLiocr','e3rsbq68kn2f147r04430c18uu','','::1','2019-06-27 15:25:57','2019-06-27 15:25:57'),(222537,1,'EKbcfl3H5Wb2uRympx4qlVL8TM3Ejcey','31mlbcugl3lmvl3vshtv3qjcec','','::1','2019-06-27 15:25:56','2019-06-27 15:25:56'),(222536,1,'3UReMg5dFJIiDUWNg0C0hS5OqeCpXzdh','4umdur1t48bgv4p4diuujm82ks','','::1','2019-06-27 15:25:55','2019-06-27 15:25:55'),(222535,1,'JCA34WxPUyBmj0KtPZjcS0M8xiSmWA5E','mposveisjbr9rr3o8qn0a4plpj','','::1','2019-06-27 15:25:54','2019-06-27 15:25:54'),(222534,1,'olloLefO3hoMLxX5Era2EFE7YbRcOJeK','lmu6rkr2prh3qcdrvoas8sjmgv','','::1','2019-06-27 15:25:53','2019-06-27 15:25:53'),(222533,1,'qUvy2yRy4s6mu6EzHQk9OvTW3lKYeMxD','updt4nqqq2p60rineucruia5er','','::1','2019-06-27 15:25:52','2019-06-27 15:25:52'),(222532,1,'MUBQOLlN88yDDE2SAHBojpmgr63GKRfA','pbio1c1qqp7tfep6nqosfbd5a3','','::1','2019-06-27 15:25:51','2019-06-27 15:25:51'),(222531,1,'uahRorz2AjN1gKNruztYYB8WX2zgqpXB','ht3vdo5b5liclbj6o89g1eik9j','','::1','2019-06-27 15:25:50','2019-06-27 15:25:50'),(222530,1,'cJW7IdBDvRFUcWLBqznXEpAYL2m1S4F0','s6murckucndjqfdnh6bsuldjoj','','::1','2019-06-27 15:25:49','2019-06-27 15:25:49'),(222529,1,'iwyzjGjmA4qUMW1x8VY5mJD6jiqTC1F8','g3b8f8pdb6dl11eniogiko6e42','','::1','2019-06-27 15:25:48','2019-06-27 15:25:48'),(222528,1,'esnfJl7HBiwXhSeP5siaaZf38KQi3iSy','11menl84mas8l9c1nei5h9o307','','::1','2019-06-27 15:25:47','2019-06-27 15:25:47'),(222527,1,'cuc9gsrULUV1YdkgvxexX0O0THbDMNMt','hrgl0h62iq5lpkc9364dsq2g2d','','::1','2019-06-27 15:25:46','2019-06-27 15:25:46'),(222526,1,'b8AY7uebMsB1X5BzDwTwrGdeLE3gwRQD','idq8s7hkup07utk9ppk643ocv3','','::1','2019-06-27 15:25:45','2019-06-27 15:25:45'),(222525,1,'TLd4otK1H05KgzGxqMMjkb0MTV1oIr5H','opduqlj0umgk6ek0g6c5qc7jk9','','::1','2019-06-27 15:25:44','2019-06-27 15:25:44'),(222524,1,'p76vGnLHzguVD6MJplyrsdBj16KJCpcI','e40npb2ikosb338egb5a53v5mg','','::1','2019-06-27 15:25:43','2019-06-27 15:25:43'),(222523,1,'Hj5CXwdQzRwNpBnDGp9WO1yliGHX26fN','ifi7qtv8e3u9qupjkq3q4qp4on','','::1','2019-06-27 15:25:42','2019-06-27 15:25:42'),(222522,1,'DDPb14Gu8qC3IEX8kD2tNeJkOP4FD1FQ','5aii3kjo4u525rrss4r0v0il7a','','::1','2019-06-27 15:25:41','2019-06-27 15:25:41'),(222521,1,'VNuf2px4CnU81BqvPLJQW9G92Gcf3YCR','vmlg6jfti3b1r9hkolia6v2gv7','','::1','2019-06-27 15:25:40','2019-06-27 15:25:40'),(222520,1,'qfonCLfoobp8tLAreS7PEA4ikLq8av3Y','01pnlcpe0g91k4ccvbcvr4jbh8','','::1','2019-06-27 15:25:39','2019-06-27 15:25:39'),(222519,1,'VhSHIVSJqBlSpN1NJbh3O7KkPVQYV44u','tcm30tlhgiu75jf2n4d231ll2m','','::1','2019-06-27 15:25:38','2019-06-27 15:25:38'),(222518,1,'5lw17HQ3OPQPcUqViXKRlO4vSTCNSfBw','divicbjrsooqdhddsa1t44kfkk','','::1','2019-06-27 15:25:37','2019-06-27 15:25:37'),(222517,1,'JsmvrpNrxZl9FGJfXS2iUPBg2Zpi4yCs','r3ktnn0d3io8ke393kq0irtcor','','::1','2019-06-27 15:25:36','2019-06-27 15:25:36'),(222516,1,'wVKnD3sMqkc63OU6XU3mTDS6KV7HO0OJ','jfrk7i302nkg7hlrt18sd3gqo8','','::1','2019-06-27 15:25:35','2019-06-27 15:25:35'),(222515,1,'qrQwvVCoqunADTsg1WEVbYOWIlgyCar9','jki0ijomc63f0g8mfmal8tdc32','','::1','2019-06-27 15:25:34','2019-06-27 15:25:34'),(222514,1,'Cur2eCQj8kRq6Gm9zpHliIdePfYseX1y','c39809avg4a76no1gmb5etth1m','','::1','2019-06-27 15:25:33','2019-06-27 15:25:33'),(222513,1,'sodnrOLbTBbELnddggrNInVTIwnfgHzp','ifkp2bgpq6v4545pli409dhhfj','','::1','2019-06-27 15:25:32','2019-06-27 15:25:32'),(222512,1,'1zSxIfYRVhp2s3gF1siU98Wxk6KwzCHZ','3ts5hp1jlf6jf1vosaoermvbno','','::1','2019-06-27 15:25:31','2019-06-27 15:25:31'),(222511,1,'93qDd1KuIYJBH6tgffgkLk0bkhIJRkuW','hkvivg1guea4i4mu6vhchpsqcj','','::1','2019-06-27 15:25:30','2019-06-27 15:25:30'),(222510,1,'uj0y22BmMWlOTR8mMq8acD1CDxKyc9TC','erp8379fqp1780n15u2l6kokk7','','::1','2019-06-27 15:25:29','2019-06-27 15:25:29'),(222506,1,'pVXhUxCYgWnjiDPQhsf2q8E7aPwTHc2G','jtp80kjnae9s2ngmt4mjja236j','','::1','2019-06-27 15:25:25','2019-06-27 15:25:25'),(222507,1,'RehGY6WIhgYh3PGPdVrhJfpuYqrMmYLL','ss8uqhjna71tgeqobjc3tht1m6','','::1','2019-06-27 15:25:26','2019-06-27 15:25:26'),(222508,1,'rlkIqPksZ90N383HmvnpJHMMAQAOM6St','8lphirlm3ajvt2ajaah5dgtm4s','','::1','2019-06-27 15:25:27','2019-06-27 15:25:27'),(222509,1,'1sjrJrnbHi3C9fiKmQcefnQcDApW6MkE','76urrd6sjf4teqe4ljt9llgqkc','','::1','2019-06-27 15:25:28','2019-06-27 15:25:28'),(222505,1,'g06q6XKpVlgAqK1MbJnxetZrmkyIy2JP','no84vh5qmukrs1emh1qbrtd0au','','::1','2019-06-27 15:25:24','2019-06-27 15:25:24');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (9,'Produkte',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (102,9,1,'Kaffee','http://www.robo-cafe.gallax.de/Drinks?product_id=50','catalog/Kaffee.jpg',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (60,'',0,0,1,0,1,'2019-05-22 22:31:32','2019-05-22 22:32:12'),(61,'',0,0,1,0,1,'2019-05-22 22:31:56','2019-05-22 22:31:56'),(62,'',0,0,1,0,1,'2019-05-22 22:32:33','2019-05-22 22:32:33');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (60,1,'Base Parts','Base Parts&lt;br&gt;','Base','',''),(61,1,'Product Caps','&lt;p&gt;Product Caps&lt;br&gt;&lt;/p&gt;','Caps','',''),(62,1,'Product Rings','&lt;p&gt;Product Rings&lt;br&gt;&lt;/p&gt;','Rings','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (60,60,0),(61,61,0),(62,62,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (60,0,0),(61,0,0),(62,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (60,0),(61,0),(62,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.87570000,1,'2017-06-19 09:19:50'),(2,'US Dollar','USD','$','','2',1.11919999,1,'2017-06-19 09:19:50'),(3,'Euro','EUR','','€','2',1.00000000,1,'2019-06-27 05:57:02');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (1,1,0,1,'RCLL','User','spectator.audience@gmail.com','123456','','bf0345706e73e7b91572cf16fbc0dc3d2048ae52','KR7jTrHx1',NULL,NULL,0,1,'','149.201.28.136',1,1,0,'','','2017-05-08 15:47:32'),(2,1,0,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','d2dcdc16fcbdd6b9dfbcb368d834f57d79db5a20','uNvUjXrUB',NULL,NULL,0,2,'[]','127.0.0.1',1,1,0,'','','2019-05-22 20:29:48');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (1,1,'127.0.0.1','2017-05-08 15:47:32'),(2,1,'88.153.7.148','2017-06-15 13:15:15'),(3,1,'149.201.28.132','2017-06-16 13:28:00'),(4,1,'149.201.28.136','2017-06-19 09:17:27'),(5,2,'127.0.0.1','2019-05-22 20:29:48'),(6,2,'::1','2019-06-17 18:33:38');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (2,'admin','127.0.0.1',1,'2017-05-09 12:20:05','2017-05-09 12:20:05'),(3,'spectator.audience@gmail.com','127.0.0.1',1,'2017-05-09 12:20:22','2017-05-09 12:20:22');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
INSERT INTO `oc_customer_transaction` VALUES (1,2,0,'',0.0000,'2019-06-26 11:04:40');
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','theme_default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'module','html');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','',''),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (105,4,'category','content_top',1),(104,4,'account','content_top',0),(20,5,'0','column_left',2),(68,6,'account','column_right',1),(116,1,'html.32','content_top',0),(121,3,'featured.34','column_left',1),(120,3,'category','column_left',0),(115,1,'category','column_left',1),(114,1,'account','column_left',0),(117,1,'featured.34','content_bottom',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(72,3,0,'product/category'),(70,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(66,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu`
--

DROP TABLE IF EXISTS `oc_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu`
--

LOCK TABLES `oc_menu` WRITE;
/*!40000 ALTER TABLE `oc_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu_description`
--

DROP TABLE IF EXISTS `oc_menu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu_description`
--

LOCK TABLES `oc_menu_description` WRITE;
/*!40000 ALTER TABLE `oc_menu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_menu_module`
--

DROP TABLE IF EXISTS `oc_menu_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_module_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_menu_module`
--

LOCK TABLES `oc_menu_module` WRITE;
/*!40000 ALTER TABLE `oc_menu_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_menu_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (32,'Development Message','html','{\"name\":\"Development Message\",\"module_description\":{\"1\":{\"title\":\"logistics-league.ac\",\"description\":\"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\"}},\"status\":\"1\"}'),(34,'Product Parts','featured','{\"name\":\"Product Parts\",\"product_name\":\"\",\"product\":[\"64\",\"65\",\"66\",\"67\"],\"limit\":\"10\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'select',1),(14,'select',2),(15,'select',101),(16,'select',102),(17,'select',103);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(13,1,'BASE_COLOR'),(14,1,'CAP_COLOR'),(15,1,'RING_COLOR_C1'),(16,1,'RING_COLOR_C2'),(17,1,'RING_COLOR_C3');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(49,13,'',1),(50,13,'',1),(51,13,'',1),(52,14,'',1),(53,14,'',2),(57,15,'',4),(56,15,'',3),(55,15,'',2),(54,15,'',1),(61,16,'',4),(60,16,'',3),(59,16,'',2),(58,16,'',1),(62,17,'',1),(63,17,'',2),(64,17,'',3),(65,17,'',4);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small'),(49,1,13,'Red'),(50,1,13,'Black'),(51,1,13,'Silver'),(52,1,14,'Gray'),(53,1,14,'Black'),(57,1,15,'Yellow'),(56,1,15,'Orange'),(55,1,15,'Green'),(54,1,15,'Blue'),(61,1,16,'Yellow'),(60,1,16,'Orange'),(59,1,16,'Green'),(58,1,16,'Blue'),(62,1,17,'Blue'),(63,1,17,'Green'),(64,1,17,'Orange'),(65,1,17,'Yellow');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (209,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,5,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 08:11:33','2019-06-27 08:12:53'),(210,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,5,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 08:36:35','2019-06-27 08:40:07'),(211,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 09:28:55','2019-06-27 11:55:27'),(212,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 12:39:56','2019-06-27 12:39:58'),(213,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 13:15:19','2019-06-27 13:15:22'),(214,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 13:29:25','2019-06-27 13:29:27'),(215,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 13:40:21','2019-06-27 13:40:22'),(216,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'::1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 13:50:52','2019-06-27 13:50:54'),(217,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 14:28:57','2019-06-27 14:28:59'),(218,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 14:57:29','2019-06-27 14:57:31'),(219,0,'INV-2013-00',0,'Robocup Logistics League on Demand','http://localhost/opencart/',2,1,'Spectator','Audience','spectator.audience@gmail.com','12345678','','[]','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Cash On Delivery','cod','Spectator','Visitor','company','adress 1','','city','22222','Germany',81,'Nordrhein-Westfalen',1263,'{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,3,'EUR',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0','en-US,en;q=0.5','2019-06-27 15:29:38','2019-06-27 15:29:42');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=504 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (477,209,1,0,'','2019-06-27 08:11:34'),(478,209,2,0,'ROS-Update','2019-06-27 08:11:34'),(479,209,5,0,'ROS-Update','2019-06-27 08:12:53'),(480,210,1,0,'','2019-06-27 08:37:41'),(481,210,2,0,'ROS-Update','2019-06-27 08:37:41'),(482,210,5,0,'ROS-Update','2019-06-27 08:38:30'),(483,210,5,0,'ROS-Update','2019-06-27 08:40:07'),(484,211,1,0,'','2019-06-27 09:29:07'),(485,211,2,0,'ROS-Update','2019-06-27 09:29:08'),(486,211,5,0,'ROS-Update','2019-06-27 09:31:53'),(487,211,2,0,'ROS-Update','2019-06-27 11:55:27'),(488,212,1,0,'','2019-06-27 12:39:58'),(489,212,2,0,'ROS-Update','2019-06-27 12:39:58'),(490,213,1,0,'','2019-06-27 13:15:21'),(491,213,2,0,'ROS-Update','2019-06-27 13:15:22'),(492,214,1,0,'','2019-06-27 13:29:27'),(493,214,2,0,'ROS-Update','2019-06-27 13:29:27'),(494,215,1,0,'','2019-06-27 13:40:22'),(495,215,2,0,'ROS-Update','2019-06-27 13:40:22'),(496,216,1,0,'','2019-06-27 13:50:53'),(497,216,2,0,'ROS-Update','2019-06-27 13:50:54'),(498,217,1,0,'','2019-06-27 14:28:58'),(499,217,2,0,'ROS-Update','2019-06-27 14:28:59'),(500,218,1,0,'','2019-06-27 14:57:31'),(501,218,2,0,'ROS-Update','2019-06-27 14:57:32'),(502,219,1,0,'','2019-06-27 15:29:41'),(503,219,2,0,'ROS-Update','2019-06-27 15:29:42');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=523 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (491,209,228,232,32,'BASE_COLOR','Red','select'),(492,209,228,233,36,'CAP_COLOR','Gray','select'),(493,210,229,232,32,'BASE_COLOR','Red','select'),(494,210,229,233,36,'CAP_COLOR','Gray','select'),(495,210,230,232,33,'BASE_COLOR','Black','select'),(496,210,230,233,35,'CAP_COLOR','Black','select'),(497,211,231,232,32,'BASE_COLOR','Red','select'),(498,211,231,233,36,'CAP_COLOR','Gray','select'),(499,211,232,232,32,'BASE_COLOR','Red','select'),(500,211,232,233,35,'CAP_COLOR','Black','select'),(501,212,233,232,32,'BASE_COLOR','Red','select'),(502,212,233,233,36,'CAP_COLOR','Gray','select'),(503,213,234,232,33,'BASE_COLOR','Black','select'),(504,213,234,233,35,'CAP_COLOR','Black','select'),(505,214,235,232,32,'BASE_COLOR','Red','select'),(506,214,235,233,36,'CAP_COLOR','Gray','select'),(507,215,236,232,33,'BASE_COLOR','Black','select'),(508,215,236,233,35,'CAP_COLOR','Black','select'),(509,216,237,232,33,'BASE_COLOR','Black','select'),(510,216,237,233,35,'CAP_COLOR','Black','select'),(511,217,238,232,32,'BASE_COLOR','Red','select'),(512,217,238,233,36,'CAP_COLOR','Gray','select'),(513,218,239,232,32,'BASE_COLOR','Red','select'),(514,218,239,233,36,'CAP_COLOR','Gray','select'),(515,218,240,232,33,'BASE_COLOR','Black','select'),(516,218,240,233,35,'CAP_COLOR','Black','select'),(517,219,241,232,32,'BASE_COLOR','Red','select'),(518,219,241,233,36,'CAP_COLOR','Gray','select'),(519,219,242,237,48,'BASE_COLOR','Black','select'),(520,219,242,238,50,'CAP_COLOR','Black','select'),(521,219,242,239,51,'RING_COLOR_C1','Blue','select'),(522,219,242,240,56,'RING_COLOR_C2','Green','select');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (228,209,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(229,210,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(230,210,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(231,211,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(232,211,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(233,212,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(234,213,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(235,214,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(236,215,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(237,216,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(238,217,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(239,218,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(240,218,64,'C0 Product','C0',1,0.0000,0.0000,0.0000,0),(241,219,64,'C0 Product','C0',5,0.0000,0.0000,0.0000,0),(242,219,66,'C2 Product','C2',1,0.0000,0.0000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=652 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (619,209,'sub_total','Sub-Total',0.0000,1),(620,209,'shipping','Flat Shipping Rate',5.0000,3),(621,209,'total','Total',5.0000,9),(622,210,'sub_total','Sub-Total',0.0000,1),(623,210,'shipping','Flat Shipping Rate',5.0000,3),(624,210,'total','Total',5.0000,9),(625,211,'sub_total','Sub-Total',0.0000,1),(626,211,'shipping','Flat Shipping Rate',5.0000,3),(627,211,'total','Total',5.0000,9),(628,212,'sub_total','Sub-Total',0.0000,1),(629,212,'shipping','Flat Shipping Rate',5.0000,3),(630,212,'total','Total',5.0000,9),(631,213,'sub_total','Sub-Total',0.0000,1),(632,213,'shipping','Flat Shipping Rate',5.0000,3),(633,213,'total','Total',5.0000,9),(634,214,'sub_total','Sub-Total',0.0000,1),(635,214,'shipping','Flat Shipping Rate',5.0000,3),(636,214,'total','Total',5.0000,9),(637,215,'sub_total','Sub-Total',0.0000,1),(638,215,'shipping','Flat Shipping Rate',5.0000,3),(639,215,'total','Total',5.0000,9),(640,216,'sub_total','Sub-Total',0.0000,1),(641,216,'shipping','Flat Shipping Rate',5.0000,3),(642,216,'total','Total',5.0000,9),(643,217,'sub_total','Sub-Total',0.0000,1),(644,217,'shipping','Flat Shipping Rate',5.0000,3),(645,217,'total','Total',5.0000,9),(646,218,'sub_total','Sub-Total',0.0000,1),(647,218,'shipping','Flat Shipping Rate',5.0000,3),(648,218,'total','Total',5.0000,9),(649,219,'sub_total','Sub-Total',0.0000,1),(650,219,'shipping','Flat Shipping Rate',5.0000,3),(651,219,'total','Total',5.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (56,'RING_GREEN','','','','','','','',1,7,'catalog/ring_green.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,32,1,1,'2019-05-22 21:13:06','2019-05-31 15:45:23'),(57,'BASE_SILVER','','','','','','','',1,7,'catalog/base_silver.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,13,1,0,'2019-05-22 21:13:11','2019-05-31 15:38:51'),(52,'Ring','','','','','','','',1,7,'',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,3,0,3,'2019-05-22 18:42:45','2019-05-22 21:24:46'),(53,'Base','','','','','','','',1,7,'',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,4,'2019-05-22 18:43:18','2019-06-12 17:59:16'),(54,'Cap','','','','','','','',1,7,'',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,3,0,3,'2019-05-22 18:43:28','2019-05-22 21:25:13'),(55,'BASE_RED','','','','','','','',1,7,'catalog/base_red.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,11,1,0,'2019-05-22 21:12:36','2019-05-31 15:36:13'),(58,'CAP_BLACK','','','','','','','',1,7,'catalog/cap_black.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,21,1,0,'2019-05-22 21:16:35','2019-05-31 15:42:04'),(59,'CAP_GRAY','','','','','','','',1,7,'catalog/cap_gray.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,22,1,0,'2019-05-22 21:17:33','2019-05-31 15:41:51'),(60,'BASE_BLACK','','','','','','','',1,7,'catalog/base_black.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,12,1,3,'2019-05-22 21:18:46','2019-05-31 15:34:54'),(61,'RING_BLUE','','','','','','','',1,7,'catalog/ring_blue.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,31,1,0,'2019-05-22 21:19:40','2019-05-31 15:45:37'),(62,'RING_ORANGE','','','','','','','',1,7,'catalog/ring_orange.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,33,1,0,'2019-05-22 21:20:56','2019-05-31 15:45:09'),(63,'RING_YELLOW','','','','','','','',1,7,'catalog/ring_yellow.png-1.png',0,0,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,34,1,0,'2019-05-22 21:22:21','2019-05-31 15:44:56'),(64,'C0','','','','','','','',100,7,'catalog/c0_black_gray.png',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,164,'2019-06-12 20:14:44','2019-06-27 15:29:25'),(66,'C2','','','','','','','',100,7,'catalog/c2_silver_blue_green_black.png',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,7,'2019-06-12 22:10:30','2019-06-27 15:30:47'),(65,'C1','','','','','','','',100,7,'catalog/c1_red_blue_black.png',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,18,'2019-06-12 21:24:17','2019-06-27 15:30:31'),(67,'C3','','','','','','','',100,7,'catalog/c3_red_yellow_orange_green_gray.png',0,1,0.0000,0,0,'2019-05-22',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,29,'2019-06-12 22:12:02','2019-06-27 15:31:04');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (56,1,'Green Ring','&lt;p&gt;Green Ring&lt;br&gt;&lt;/p&gt;','','Green Ring','',''),(57,1,'Silver Base','&lt;p&gt;Silver Base&lt;br&gt;&lt;/p&gt;','','Silver Base','',''),(58,1,'Black Cap','&lt;p&gt;Black Cap&lt;br&gt;&lt;/p&gt;','','Black Cap','',''),(52,1,'Ring','&lt;p&gt;Product Base&lt;br&gt;&lt;/p&gt;','','Product Ring','',''),(53,1,'Base','&lt;p&gt;Product Base&lt;br&gt;&lt;/p&gt;','','Product Base','',''),(54,1,'Cap','&lt;p&gt;Product Cap&lt;br&gt;&lt;/p&gt;','','Product Cap','',''),(55,1,'Red Base','&lt;p&gt;Red Base&lt;br&gt;&lt;/p&gt;','','Red Base','',''),(59,1,'Gray Cap','&lt;p&gt;Gray Cap&lt;br&gt;&lt;/p&gt;','','Gray Cap','',''),(60,1,'Black Base','&lt;p&gt;Black Base&lt;br&gt;&lt;/p&gt;','','Black Base','',''),(61,1,'Blue Ring','&lt;p&gt;Blue Ring&lt;br&gt;&lt;/p&gt;','','Blue Ring','',''),(62,1,'Orange Ring','&lt;p&gt;Orange Ring&lt;br&gt;&lt;/p&gt;','','Orange Ring','',''),(63,1,'Yellow Ring','&lt;p&gt;Yellow Ring&lt;br&gt;&lt;/p&gt;','','Yellow Ring','',''),(64,1,'C0 Product','&lt;p&gt;Product with &lt;/p&gt;&lt;p&gt;1x Base&lt;br&gt;1x Cap&lt;br&gt;&lt;/p&gt;','','Product Base','',''),(65,1,'C1 Product','&lt;p&gt;Product with &lt;/p&gt;&lt;p&gt;1x Base&lt;br&gt;1x Ring&lt;br&gt;1x Cap&lt;br&gt;&lt;/p&gt;','','C1 Product','',''),(66,1,'C2 Product','&lt;p&gt;Product with &lt;/p&gt;&lt;p&gt;1x Base&lt;br&gt;2x Ring&lt;br&gt;1x Cap&lt;br&gt;&lt;/p&gt;','','C2 Product','',''),(67,1,'C3 Product','&lt;p&gt;Product with &lt;/p&gt;&lt;p&gt;1x Base&lt;br&gt;3x Ring&lt;br&gt;1x Cap&lt;br&gt;&lt;/p&gt;','','C3 Product','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (231,52,15,'',1),(228,53,13,'',1),(230,54,14,'',1),(232,64,13,'',1),(233,64,14,'',1),(236,65,15,'',1),(235,65,14,'',1),(234,65,13,'',1),(240,66,16,'',1),(237,66,13,'',1),(238,66,14,'',1),(239,66,15,'',1),(245,67,17,'',1),(241,67,15,'',1),(242,67,14,'',1),(243,67,13,'',1),(244,67,16,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (31,231,52,15,57,1,0,0.0000,'+',0,'+',0.00000000,'+'),(30,231,52,15,56,1,0,0.0000,'+',0,'+',0.00000000,'+'),(29,231,52,15,55,1,0,0.0000,'+',0,'+',0.00000000,'+'),(22,228,53,13,49,1,0,0.0000,'+',0,'+',0.00000000,'+'),(21,228,53,13,50,1,0,0.0000,'+',0,'+',0.00000000,'+'),(20,228,53,13,51,1,0,0.0000,'+',0,'+',0.00000000,'+'),(28,231,52,15,54,1,0,0.0000,'+',0,'+',0.00000000,'+'),(27,230,54,14,53,1,0,0.0000,'+',0,'+',0.00000000,'+'),(26,230,54,14,52,1,0,0.0000,'+',0,'+',0.00000000,'+'),(34,232,64,13,51,1,0,0.0000,'+',0,'+',0.00000000,'+'),(33,232,64,13,50,1,0,0.0000,'+',0,'+',0.00000000,'+'),(32,232,64,13,49,1,0,0.0000,'+',0,'+',0.00000000,'+'),(35,233,64,14,53,1,0,0.0000,'+',0,'+',0.00000000,'+'),(36,233,64,14,52,1,0,0.0000,'+',0,'+',0.00000000,'+'),(45,236,65,15,57,1,0,0.0000,'+',0,'+',0.00000000,'+'),(44,236,65,15,56,1,0,0.0000,'+',0,'+',0.00000000,'+'),(43,236,65,15,55,1,0,0.0000,'+',0,'+',0.00000000,'+'),(42,236,65,15,54,1,0,0.0000,'+',0,'+',0.00000000,'+'),(41,235,65,14,53,1,0,0.0000,'+',0,'+',0.00000000,'+'),(40,235,65,14,52,1,0,0.0000,'+',0,'+',0.00000000,'+'),(38,234,65,13,50,1,0,0.0000,'+',0,'+',0.00000000,'+'),(39,234,65,13,49,1,0,0.0000,'+',0,'+',0.00000000,'+'),(37,234,65,13,51,1,0,0.0000,'+',0,'+',0.00000000,'+'),(58,240,66,16,61,1,0,0.0000,'+',0,'+',0.00000000,'+'),(57,240,66,16,60,1,0,0.0000,'+',0,'+',0.00000000,'+'),(56,240,66,16,59,1,0,0.0000,'+',0,'+',0.00000000,'+'),(55,240,66,16,58,1,0,0.0000,'+',0,'+',0.00000000,'+'),(46,237,66,13,51,1,0,0.0000,'+',0,'+',0.00000000,'+'),(47,237,66,13,49,1,0,0.0000,'+',0,'+',0.00000000,'+'),(48,237,66,13,50,1,0,0.0000,'+',0,'+',0.00000000,'+'),(50,238,66,14,53,1,0,0.0000,'+',0,'+',0.00000000,'+'),(49,238,66,14,52,1,0,0.0000,'+',0,'+',0.00000000,'+'),(54,239,66,15,57,1,0,0.0000,'+',0,'+',0.00000000,'+'),(53,239,66,15,56,1,0,0.0000,'+',0,'+',0.00000000,'+'),(52,239,66,15,55,1,0,0.0000,'+',0,'+',0.00000000,'+'),(51,239,66,15,54,1,0,0.0000,'+',0,'+',0.00000000,'+'),(75,245,67,17,65,1,0,0.0000,'+',0,'+',0.00000000,'+'),(74,245,67,17,64,1,0,0.0000,'+',0,'+',0.00000000,'+'),(73,245,67,17,63,1,0,0.0000,'+',0,'+',0.00000000,'+'),(72,245,67,17,62,1,0,0.0000,'+',0,'+',0.00000000,'+'),(62,241,67,15,57,1,0,0.0000,'+',0,'+',0.00000000,'+'),(61,241,67,15,56,1,0,0.0000,'+',0,'+',0.00000000,'+'),(60,241,67,15,55,1,0,0.0000,'+',0,'+',0.00000000,'+'),(59,241,67,15,54,1,0,0.0000,'+',0,'+',0.00000000,'+'),(64,242,67,14,53,1,0,0.0000,'+',0,'+',0.00000000,'+'),(63,242,67,14,52,1,0,0.0000,'+',0,'+',0.00000000,'+'),(65,243,67,13,50,1,0,0.0000,'+',0,'+',0.00000000,'+'),(66,243,67,13,49,1,0,0.0000,'+',0,'+',0.00000000,'+'),(67,243,67,13,51,1,0,0.0000,'+',0,'+',0.00000000,'+'),(71,244,67,16,61,1,0,0.0000,'+',0,'+',0.00000000,'+'),(70,244,67,16,60,1,0,0.0000,'+',0,'+',0.00000000,'+'),(69,244,67,16,59,1,0,0.0000,'+',0,'+',0.00000000,'+'),(68,244,67,16,58,1,0,0.0000,'+',0,'+',0.00000000,'+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (55,60),(56,62),(57,60),(58,61),(59,61),(60,60),(61,62),(62,62),(63,62);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (56,0,0),(57,0,0),(52,0,0),(53,0,0),(54,0,0),(55,0,0),(58,0,0),(59,0,0),(60,0,0),(61,0,0),(62,0,0),(63,0,0),(64,0,0),(65,0,0),(66,0,0),(67,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2084 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (2083,0,'config','config_error_filename','error.log',0),(2078,0,'config','config_file_max_size','300000',0),(2079,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(2068,0,'config','config_mail_smtp_timeout','5',0),(2069,0,'config','config_mail_alert_email','',0),(2070,0,'config','config_maintenance','0',0),(2071,0,'config','config_seo_url','1',0),(2072,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(4,0,'voucher','voucher_sort_order','8',0),(5,0,'voucher','voucher_status','1',0),(2080,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(2081,0,'config','config_error_display','1',0),(2082,0,'config','config_error_log','1',0),(2073,0,'config','config_compression','0',0),(2074,0,'config','config_secure','0',0),(2075,0,'config','config_password','1',0),(2076,0,'config','config_shared','0',0),(2077,0,'config','config_encryption','OFH42KoDrX8dxTAe1OtNFIBh5JHvfaqOfQfnJvZq4D9ZT0LolMDs0whKvBIV7Mp4abkum2YWtwQIPVZ6jsXhRijFx7fkIqp8rQtmBzVPGsDsUXfqinIpUZSeO5ejsCwmJdLvWYT4obqJMkvkGBNDFUVcI8KcIIGUt9xEXP1iMsOcGuwloKwbeY0kVO3mDueh3MAPWrLi2HSd7fxekd4erKN1Vw7fexLvi00SKEwoLNPSttMJRpSsYyNbUq6dpA0i7utrJtGye9pqBlX8JxWK3bdU3eYoSwKtli9g78Mk6ZOH6fj0STesKguWSTgak3TVJ2toN8tZ1TiAIEIRYuOb8iWUsQWRVtKYOS3QopNdGS1WU6XFeqIKrR7IP1Z8YC8UZGte5ZrZvsjsnT8WBTmJ3jC5DeUk6FL57fm6U1HVGxRv5HZd96YYGxYccLs7ddHxSqMkLK805po710YZ8f7HM0iSxQpca7wkgSDpxmyqv4HRa8l7A2rTXW6Bi4bpi6xIwbeKZkAnfw01bkMJPhvKmqeHGTYcVEQ8iYCdDdy8yG9mg9V9sWzvAAMTyviYPK7c2i7fio1Zm3V5itD5hTYEhQpD1EkORK3e8EEGIMFF67Lo3c6c6jyrXJduJtNd8ytFWHxNSkxX2cAhpDsdaLGwCYoQax6vfxCHDldnB5bXrxEriAIhV1rKdAwxTrOQNocyum4xdnBnyftuQ4QSBEll1DnMpUZjWPtJ70Sp3N2tzuc6NCliYoREhKIiBPJTYDKfosJa4P9Fyc90WdmwuhgPAPiZeJW8uonyHuVBR3OvCvAmbrAgmOFpoeIiRNhSJsvM8a7e53Ij2ogl2Vth0GNIvssZr1BtxMbasewGc6g4IPbj9CsFynFFGRA7g9xFrtecAjxYy9aYGPCOjNohly21u8ZjDeqUKVUtGcVXpQmL0IbIQ5MlAdOBGl9BFqYFt63gy4t79zOlcaFAe5mmvmSr1VFsAqilJRWsy48RNbjWoxNeUHWIchGEJBtc7DY54rP0',0),(95,0,'free_checkout','free_checkout_status','1',0),(96,0,'free_checkout','free_checkout_order_status_id','1',0),(97,0,'shipping','shipping_sort_order','3',0),(98,0,'sub_total','sub_total_sort_order','1',0),(99,0,'sub_total','sub_total_status','1',0),(100,0,'tax','tax_status','1',0),(101,0,'total','total_sort_order','9',0),(102,0,'total','total_status','1',0),(103,0,'tax','tax_sort_order','5',0),(104,0,'free_checkout','free_checkout_sort_order','1',0),(105,0,'cod','cod_sort_order','5',0),(106,0,'cod','cod_total','0.01',0),(107,0,'cod','cod_order_status_id','1',0),(108,0,'cod','cod_geo_zone_id','0',0),(109,0,'cod','cod_status','1',0),(110,0,'shipping','shipping_status','1',0),(111,0,'shipping','shipping_estimator','1',0),(112,0,'coupon','coupon_sort_order','4',0),(113,0,'coupon','coupon_status','1',0),(114,0,'flat','flat_sort_order','1',0),(115,0,'flat','flat_status','1',0),(116,0,'flat','flat_geo_zone_id','0',0),(117,0,'flat','flat_tax_class_id','9',0),(118,0,'flat','flat_cost','5.00',0),(119,0,'credit','credit_sort_order','7',0),(120,0,'credit','credit_status','1',0),(121,0,'reward','reward_sort_order','2',0),(122,0,'reward','reward_status','1',0),(1178,0,'category','category_status','1',0),(124,0,'account','account_status','1',0),(126,0,'theme_default','theme_default_product_limit','15',0),(127,0,'theme_default','theme_default_product_description_length','100',0),(128,0,'theme_default','theme_default_image_thumb_width','228',0),(129,0,'theme_default','theme_default_image_thumb_height','228',0),(130,0,'theme_default','theme_default_image_popup_width','500',0),(131,0,'theme_default','theme_default_image_popup_height','500',0),(132,0,'theme_default','theme_default_image_category_width','80',0),(133,0,'theme_default','theme_default_image_category_height','80',0),(134,0,'theme_default','theme_default_image_product_width','228',0),(135,0,'theme_default','theme_default_image_product_height','228',0),(136,0,'theme_default','theme_default_image_additional_width','74',0),(137,0,'theme_default','theme_default_image_additional_height','74',0),(138,0,'theme_default','theme_default_image_related_width','200',0),(139,0,'theme_default','theme_default_image_related_height','200',0),(140,0,'theme_default','theme_default_image_compare_width','90',0),(141,0,'theme_default','theme_default_image_compare_height','90',0),(142,0,'theme_default','theme_default_image_wishlist_width','47',0),(143,0,'theme_default','theme_default_image_wishlist_height','47',0),(144,0,'theme_default','theme_default_image_cart_height','47',0),(145,0,'theme_default','theme_default_image_cart_width','47',0),(146,0,'theme_default','theme_default_image_location_height','50',0),(147,0,'theme_default','theme_default_image_location_width','268',0),(148,0,'theme_default','theme_default_directory','default',0),(149,0,'theme_default','theme_default_status','1',0),(150,0,'dashboard_activity','dashboard_activity_status','1',0),(151,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(152,0,'dashboard_sale','dashboard_sale_status','1',0),(153,0,'dashboard_sale','dashboard_sale_width','3',0),(154,0,'dashboard_chart','dashboard_chart_status','1',0),(155,0,'dashboard_chart','dashboard_chart_width','6',0),(156,0,'dashboard_customer','dashboard_customer_status','1',0),(157,0,'dashboard_customer','dashboard_customer_width','3',0),(158,0,'dashboard_map','dashboard_map_status','1',0),(159,0,'dashboard_map','dashboard_map_width','6',0),(160,0,'dashboard_online','dashboard_online_status','1',0),(161,0,'dashboard_online','dashboard_online_width','3',0),(162,0,'dashboard_order','dashboard_order_sort_order','1',0),(163,0,'dashboard_order','dashboard_order_status','1',0),(164,0,'dashboard_order','dashboard_order_width','3',0),(165,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(166,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(167,0,'dashboard_online','dashboard_online_sort_order','4',0),(168,0,'dashboard_map','dashboard_map_sort_order','5',0),(169,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(170,0,'dashboard_recent','dashboard_recent_status','1',0),(171,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(172,0,'dashboard_activity','dashboard_activity_width','4',0),(173,0,'dashboard_recent','dashboard_recent_width','8',0),(2067,0,'config','config_mail_smtp_port','465',0),(2066,0,'config','config_mail_smtp_password','rcll.demo',0),(2065,0,'config','config_mail_smtp_username','spectator.audience@gmail.com',0),(2064,0,'config','config_mail_smtp_hostname','ssl://smtp.googlemail.com',0),(2063,0,'config','config_mail_parameter','',0),(2062,0,'config','config_mail_protocol','smtp',0),(2061,0,'config','config_ftp_status','0',0),(2060,0,'config','config_ftp_root','',0),(2059,0,'config','config_ftp_password','',0),(2058,0,'config','config_ftp_username','',0),(2057,0,'config','config_ftp_port','21',0),(2056,0,'config','config_ftp_hostname','localhost',0),(2055,0,'config','config_icon','catalog/cart.png',0),(2054,0,'config','config_logo','catalog/fh-logo-left.png',0),(2053,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(2052,0,'config','config_captcha','',0),(2051,0,'config','config_return_status_id','2',0),(2050,0,'config','config_return_id','0',0),(2049,0,'config','config_affiliate_id','4',0),(2048,0,'config','config_affiliate_commission','5',0),(2047,0,'config','config_affiliate_auto','0',0),(2046,0,'config','config_affiliate_approval','0',0),(2045,0,'config','config_stock_checkout','0',0),(2044,0,'config','config_stock_warning','0',0),(2043,0,'config','config_stock_display','0',0),(2042,0,'config','config_api_id','1',0),(2041,0,'config','config_fraud_status_id','7',0),(2040,0,'config','config_complete_status','[\"5\",\"3\"]',1),(2039,0,'config','config_processing_status','[\"5\",\"1\",\"3\"]',1),(2038,0,'config','config_order_status_id','1',0),(2037,0,'config','config_checkout_id','0',0),(2036,0,'config','config_checkout_guest','0',0),(2035,0,'config','config_cart_weight','0',0),(2034,0,'config','config_invoice_prefix','INV-2013-00',0),(2033,0,'config','config_account_id','0',0),(2032,0,'config','config_login_attempts','5',0),(2030,0,'config','config_customer_group_display','[\"1\"]',1),(2031,0,'config','config_customer_price','0',0),(2028,0,'config','config_customer_search','0',0),(2029,0,'config','config_customer_group_id','1',0),(2027,0,'config','config_customer_activity','0',0),(2026,0,'config','config_customer_online','0',0),(2025,0,'config','config_tax_customer','shipping',0),(2023,0,'config','config_tax','1',0),(2024,0,'config','config_tax_default','shipping',0),(2022,0,'config','config_voucher_max','1000',0),(2021,0,'config','config_voucher_min','1',0),(2020,0,'config','config_review_guest','0',0),(2019,0,'config','config_review_status','0',0),(2018,0,'config','config_limit_admin','20',0),(2017,0,'config','config_product_count','1',0),(2016,0,'config','config_weight_class_id','1',0),(2015,0,'config','config_length_class_id','1',0),(2014,0,'config','config_currency_auto','1',0),(2013,0,'config','config_currency','EUR',0),(2012,0,'config','config_admin_language','en-gb',0),(2011,0,'config','config_language','en-gb',0),(2010,0,'config','config_zone_id','1263',0),(2009,0,'config','config_country_id','81',0),(2008,0,'config','config_comment','logistics-league-24.de',0),(2007,0,'config','config_open','',0),(2004,0,'config','config_telephone','123456789',0),(2005,0,'config','config_fax','',0),(2006,0,'config','config_image','catalog/fh-logo-left.png',0),(2003,0,'config','config_email','mario.claer@alumni.fh-aachen.de',0),(2002,0,'config','config_geocode','50.758766,6.082124',0),(2001,0,'config','config_address','Eupener Str. 70\r\n52066 Aachen',0),(2000,0,'config','config_owner','FH Aachen',0),(1999,0,'config','config_name','Robocup Logistics League on Demand',0),(1998,0,'config','config_layout_id','3',0),(1997,0,'config','config_theme','theme_default',0),(1996,0,'config','config_meta_keyword','',0),(1995,0,'config','config_meta_description','',0),(1994,0,'config','config_meta_title','Robocup Logistics League on Demand',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=849 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (772,'information_id=4','about_us'),(841,'information_id=6','delivery'),(842,'information_id=3','privacy'),(843,'information_id=5','terms'),(848,'category_id=62',''),(847,'category_id=61','');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','12ad367fd4bf076108de0bd74203f93f4e428aac','Yqpi6lOaE','Mario','Claer','mario.claer@alumni.fh-aachen.de','','','127.0.0.1',1,'2017-04-27 21:35:15');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/html\",\"extension\\/module\\/affiliate\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/html\",\"extension\\/module\\/affiliate\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Niederösterreich','NOS',1),(202,14,'Oberösterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-Württemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Thüringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Puducherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'Kalimantan Utara','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord-Brabant','NB',1),(2336,150,'Noord-Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid-Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'Gävleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'Jämtland','Z',1),(3080,203,'Jönköping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'Örebro','T',1),(3085,203,'Östergötland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'Södermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'Värmland','S',1),(3091,203,'Västerbotten','AC',1),(3092,203,'Västernorrland','Y',1),(3093,203,'Västmanland','U',1),(3094,203,'Västra Götaland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graubünden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Zürich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1),(4231,99,'Telangana','TS',1),(4232,44,'Qinghai','QH',1),(4233,100,'Papua Barat','PB',1),(4234,100,'Sulawesi Barat','SR',1),(4235,100,'Kepulauan Riau','KR',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-27 15:34:53
