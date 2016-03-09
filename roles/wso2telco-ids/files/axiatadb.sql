-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: axiatadb
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `endpointapps`
--
use axiatadb;

DROP TABLE IF EXISTS `endpointapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endpointapps` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `endpointid` int(11) DEFAULT NULL,
  `applicationid` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT '0',
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_apps_endpoint` (`endpointid`,`applicationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endpointapps`
--

LOCK TABLES `endpointapps` WRITE;
/*!40000 ALTER TABLE `endpointapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `endpointapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcc_number_ranges`
--

DROP TABLE IF EXISTS `mcc_number_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcc_number_ranges` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `mcccode` varchar(10) DEFAULT NULL,
  `rangefrom` decimal(20,0) DEFAULT NULL,
  `rangeto` decimal(20,0) DEFAULT NULL,
  `mnccode` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `isactive` int(2) DEFAULT '1',
  `note` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcc_number_ranges`
--

LOCK TABLES `mcc_number_ranges` WRITE;
/*!40000 ALTER TABLE `mcc_number_ranges` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcc_number_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchantopco_blacklist`
--

DROP TABLE IF EXISTS `merchantopco_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchantopco_blacklist` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `application_id` int(20) DEFAULT NULL,
  `operator_id` int(20) DEFAULT NULL,
  `subscriber` varchar(40) DEFAULT NULL,
  `merchant` varchar(255) DEFAULT NULL,
  `isactive` int(11) DEFAULT '1',
  `note` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `constr_ID` (`application_id`,`operator_id`,`subscriber`,`merchant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantopco_blacklist`
--

LOCK TABLES `merchantopco_blacklist` WRITE;
/*!40000 ALTER TABLE `merchantopco_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchantopco_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operatorapps`
--

DROP TABLE IF EXISTS `operatorapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operatorapps` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `applicationid` int(11) DEFAULT NULL,
  `operatorid` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operatorapps`
--

LOCK TABLES `operatorapps` WRITE;
/*!40000 ALTER TABLE `operatorapps` DISABLE KEYS */;
/*!40000 ALTER TABLE `operatorapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operatorendpoints`
--

DROP TABLE IF EXISTS `operatorendpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operatorendpoints` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `operatorid` int(11) DEFAULT NULL,
  `api` varchar(25) DEFAULT NULL,
  `isactive` int(11) DEFAULT '0',
  `endpoint` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operatorendpoints`
--

LOCK TABLES `operatorendpoints` WRITE;
/*!40000 ALTER TABLE `operatorendpoints` DISABLE KEYS */;
INSERT INTO `operatorendpoints` VALUES (1,1,'smsmessaging',1,'http://localhost:8081/mifesandbox/SandboxController/smsmessaging/1',NULL,'2014-03-04 06:06:23',NULL,NULL),(2,1,'payment',1,'http://localhost:8081/mifesandbox/SandboxController/payment/1',NULL,'2014-03-04 06:06:58',NULL,NULL),(3,3,'location',1,'http://localhost:8081/mifesandbox/SandboxController/location/1',NULL,'2014-10-02 05:03:41',NULL,NULL);
/*!40000 ALTER TABLE `operatorendpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `operatorname` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  `refreshtoken` varchar(255) DEFAULT NULL,
  `tokenvalidity` double DEFAULT NULL,
  `tokentime` double DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `tokenurl` varchar(255) DEFAULT NULL,
  `tokenauth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `operatorname` (`operatorname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES (1,'DIALOG','Dialog Opearator','axatauser',NULL,'axatauser',NULL,'gGgvUANAGhRUzWTyXwYoGuk3WzQa',157680000,1395135145139,'4fb164d70def9f37b2f8e2f1daf467','http://localhost:8281/token','Basic U1JObDQzXzRTVks5MjZaVnNteXExOU1JNVFRYTpEV1Flb2NDeUVyN0lHYk8zRHJxRDc5SmtzVFVh'),(2,'CELCOM','Celcom Opearator','axatauser',NULL,'axatauser',NULL,'gGgvUANAGhRUzWTyXwYoGuk3WzQa',157680000,1395135145139,'4fb164d70def9f37b2f8e2f1daf467','http://localhost:8281/token','Basic U1JObDQzXzRTVks5MjZaVnNteXExOU1JNVFRYTpEV1Flb2NDeUVyN0lHYk8zRHJxRDc5SmtzVFVh'),(3,'ROBI','Robi Opearator','axatauser',NULL,'axatauser',NULL,'gGgvUANAGhRUzWTyXwYoGuk3WzQa',157680000,1395135145139,'4fb164d70def9f37b2f8e2f1daf467','http://localhost:8281/token','Basic U1JObDQzXzRTVks5MjZaVnNteXExOU1JNVFRYTpEV1Flb2NDeUVyN0lHYk8zRHJxRDc5SmtzVFVh');
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operatorsubs`
--

DROP TABLE IF EXISTS `operatorsubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operatorsubs` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `axiataid` int(11) DEFAULT NULL,
  `domainurl` varchar(255) DEFAULT NULL,
  `operator` varchar(45) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operatorsubs`
--

LOCK TABLES `operatorsubs` WRITE;
/*!40000 ALTER TABLE `operatorsubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `operatorsubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendsms_reqid`
--

DROP TABLE IF EXISTS `sendsms_reqid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendsms_reqid` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `hub_requestid` varchar(255) DEFAULT NULL,
  `sender_address` varchar(40) DEFAULT NULL,
  `delivery_address` varchar(40) DEFAULT NULL,
  `plugin_requestid` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendsms_reqid`
--

LOCK TABLES `sendsms_reqid` WRITE;
/*!40000 ALTER TABLE `sendsms_reqid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendsms_reqid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_approval_operators`
--

DROP TABLE IF EXISTS `sub_approval_operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_approval_operators` (
  `API_NAME` varchar(200) NOT NULL DEFAULT '',
  `API_VERSION` varchar(30) NOT NULL DEFAULT '',
  `API_PROVIDER` varchar(200) NOT NULL DEFAULT '',
  `APP_ID` int(11) NOT NULL DEFAULT '0',
  `OPERATOR_LIST` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`API_NAME`,`API_VERSION`,`API_PROVIDER`,`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_approval_operators`
--

LOCK TABLES `sub_approval_operators` WRITE;
/*!40000 ALTER TABLE `sub_approval_operators` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_approval_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_validator`
--

DROP TABLE IF EXISTS `subscription_validator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_validator` (
  `application_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `validator_id` int(11) NOT NULL,
  PRIMARY KEY (`application_id`,`api_id`),
  KEY `validator_id` (`validator_id`),
  CONSTRAINT `subscription_validator_ibfk_1` FOREIGN KEY (`validator_id`) REFERENCES `validator` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_validator`
--

LOCK TABLES `subscription_validator` WRITE;
/*!40000 ALTER TABLE `subscription_validator` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_validator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `axiataid` int(11) DEFAULT NULL,
  `notifyurl` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ussd_request_entry`
--

DROP TABLE IF EXISTS `ussd_request_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ussd_request_entry` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `axiataid` int(11) DEFAULT NULL,
  `notifyurl` varchar(255) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ussd_request_entry`
--

LOCK TABLES `ussd_request_entry` WRITE;
/*!40000 ALTER TABLE `ussd_request_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ussd_request_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valid_payment_categories`
--

DROP TABLE IF EXISTS `valid_payment_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valid_payment_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `Note` varchar(255) NOT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valid_payment_categories`
--

LOCK TABLES `valid_payment_categories` WRITE;
/*!40000 ALTER TABLE `valid_payment_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `valid_payment_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validator`
--

DROP TABLE IF EXISTS `validator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validator`
--

LOCK TABLES `validator` WRITE;
/*!40000 ALTER TABLE `validator` DISABLE KEYS */;
INSERT INTO `validator` VALUES (1,'passthru','com.axiata.dialog.mife.validators.PassThroughValidator'),(2,'msisdn','com.axiata.dialog.mife.validators.MSISDNValidator');
/*!40000 ALTER TABLE `validator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_api_key_mappings`
--

DROP TABLE IF EXISTS `workflow_api_key_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_api_key_mappings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_NAME` varchar(200) NOT NULL,
  `API_KEY` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_api_key_mappings`
--

LOCK TABLES `workflow_api_key_mappings` WRITE;
/*!40000 ALTER TABLE `workflow_api_key_mappings` DISABLE KEYS */;
INSERT INTO `workflow_api_key_mappings` VALUES (1,'smsmessaging','sms'),(2,'payment','payment'),(3,'location','location');
/*!40000 ALTER TABLE `workflow_api_key_mappings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 14:13:44


-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ids_connectdb
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `authenticated_login`
--

use ids_connectdb;

DROP TABLE IF EXISTS `authenticated_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authenticated_login` (
  `tokenID` varchar(255) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(255) DEFAULT NULL,
  `response_type` varchar(255) DEFAULT '0',
  `scope` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `msisdn` varchar(255) DEFAULT NULL,
  `acr_value` int(11) NOT NULL DEFAULT '0',
  `state` varchar(255) DEFAULT NULL,
  `nonce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tokenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticated_login`
--

LOCK TABLES `authenticated_login` WRITE;
/*!40000 ALTER TABLE `authenticated_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `authenticated_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientstatus`
--

DROP TABLE IF EXISTS `clientstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientstatus` (
  `SessionID` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `pin` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientstatus`
--

LOCK TABLES `clientstatus` WRITE;
/*!40000 ALTER TABLE `clientstatus` DISABLE KEYS */;
INSERT INTO `clientstatus` VALUES ('0a663965-a496-4d61-8f68-cf16049dfd3d','EXPIRED','0');
/*!40000 ALTER TABLE `clientstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcx_cross_operator_transaction_log`
--

DROP TABLE IF EXISTS `mcx_cross_operator_transaction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcx_cross_operator_transaction_log` (
  `tx_id` varchar(200) NOT NULL,
  `tx_status` varchar(25) DEFAULT NULL,
  `batch_id` varchar(200) DEFAULT NULL,
  `api_id` varchar(25) DEFAULT NULL,
  `client_id` varchar(200) NOT NULL,
  `application_state` varchar(25) DEFAULT NULL,
  `sub_op_mcc` varchar(25) DEFAULT NULL,
  `sub_op_mnc` varchar(25) DEFAULT NULL,
  `timestamp_start` varchar(25) DEFAULT NULL,
  `timestamp_end` varchar(25) DEFAULT NULL,
  `exchange_response_code` int(25) DEFAULT NULL,
  PRIMARY KEY (`tx_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcx_cross_operator_transaction_log`
--

LOCK TABLES `mcx_cross_operator_transaction_log` WRITE;
/*!40000 ALTER TABLE `mcx_cross_operator_transaction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcx_cross_operator_transaction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mepin_accounts`
--

DROP TABLE IF EXISTS `mepin_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mepin_accounts` (
  `user_id` varchar(25) NOT NULL DEFAULT '',
  `mepin_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mepin_accounts`
--

LOCK TABLES `mepin_accounts` WRITE;
/*!40000 ALTER TABLE `mepin_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mepin_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mepin_transactions`
--

DROP TABLE IF EXISTS `mepin_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mepin_transactions` (
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `transaction_id` varchar(255) DEFAULT NULL,
  `mepin_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mepin_transactions`
--

LOCK TABLES `mepin_transactions` WRITE;
/*!40000 ALTER TABLE `mepin_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mepin_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiplepasswords`
--

DROP TABLE IF EXISTS `multiplepasswords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiplepasswords` (
  `username` varchar(255) NOT NULL,
  `pin` int(11) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiplepasswords`
--

LOCK TABLES `multiplepasswords` WRITE;
/*!40000 ALTER TABLE `multiplepasswords` DISABLE KEYS */;
/*!40000 ALTER TABLE `multiplepasswords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendingussd`
--

DROP TABLE IF EXISTS `pendingussd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pendingussd` (
  `msisdn` bigint(20) unsigned NOT NULL,
  `requesttype` int(1) NOT NULL COMMENT '1-register, 2-login, 3-pinreset',
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendingussd`
--

LOCK TABLES `pendingussd` WRITE;
/*!40000 ALTER TABLE `pendingussd` DISABLE KEYS */;
INSERT INTO `pendingussd` VALUES (913121224102,1);
/*!40000 ALTER TABLE `pendingussd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `PersonID` int(11) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin`
--

DROP TABLE IF EXISTS `pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin` (
  `username` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin`
--

LOCK TABLES `pin` WRITE;
/*!40000 ALTER TABLE `pin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regstatus`
--

DROP TABLE IF EXISTS `regstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regstatus` (
  `username` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pin` varchar(10) DEFAULT '0',
  `uuid` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regstatus`
--

LOCK TABLES `regstatus` WRITE;
/*!40000 ALTER TABLE `regstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `regstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_login_history`
--

DROP TABLE IF EXISTS `sp_login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_login_history` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `reqtype` varchar(20) DEFAULT NULL,
  `application_id` varchar(45) DEFAULT NULL,
  `authenticated_user` varchar(45) DEFAULT NULL,
  `isauthenticated` int(5) DEFAULT NULL,
  `authenticators` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `created` varchar(25) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `lastupdated` varchar(25) DEFAULT NULL,
  `lastupdated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_login_history`
--

LOCK TABLES `sp_login_history` WRITE;
/*!40000 ALTER TABLE `sp_login_history` DISABLE KEYS */;
INSERT INTO `sp_login_history` VALUES (1,'oidc','Dialog','913121224102',1,'[SelfAuthenticator]','127.0.0.1','authUser','2016-03-03 09:16:42',NULL,NULL),(2,'oidc','Dialog','913121224102',1,'[SelfAuthenticator]','127.0.0.1','authUser','2016-03-03 09:18:23',NULL,NULL),(3,'oidc','Dialog','913121224102',1,'[MSISDNAuthenticator, USSDAuthenticator]','127.0.0.1','authUser','2016-03-03 09:18:37',NULL,NULL);
/*!40000 ALTER TABLE `sp_login_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 14:19:03


-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ids_regdb
-- ------------------------------------------------------
-- Server version 5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `REG_ASSOCIATION`
--

use ids_regdb;

DROP TABLE IF EXISTS `REG_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_ASSOCIATION` (
  `REG_ASSOCIATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_SOURCEPATH` varchar(750) NOT NULL,
  `REG_TARGETPATH` varchar(750) NOT NULL,
  `REG_ASSOCIATION_TYPE` varchar(2000) NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ASSOCIATION_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_ASSOCIATION`
--

LOCK TABLES `REG_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `REG_ASSOCIATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CLUSTER_LOCK`
--

DROP TABLE IF EXISTS `REG_CLUSTER_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CLUSTER_LOCK` (
  `REG_LOCK_NAME` varchar(20) NOT NULL DEFAULT '',
  `REG_LOCK_STATUS` varchar(20) DEFAULT NULL,
  `REG_LOCKED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`REG_LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CLUSTER_LOCK`
--

LOCK TABLES `REG_CLUSTER_LOCK` WRITE;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_COMMENT`
--

DROP TABLE IF EXISTS `REG_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_COMMENT` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_COMMENT_TEXT` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_COMMENTED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_COMMENT`
--

LOCK TABLES `REG_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT`
--

DROP TABLE IF EXISTS `REG_CONTENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT` (
  `REG_CONTENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_CONTENT_DATA` longblob,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT`
--

LOCK TABLES `REG_CONTENT` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT` DISABLE KEYS */;
INSERT INTO `REG_CONTENT` VALUES (1,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"UTOverTransport\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:TransportBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:TransportToken>\n                        <wsp:Policy>\n                            <sp:HttpsToken RequireClientCertificate=\"false\"/>\n                        </wsp:Policy>\n                    </sp:TransportToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Lax/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                </wsp:Policy>\n            </sp:TransportBinding>\n            <sp:SignedSupportingTokens\n                    xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:UsernameToken\n                            sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\"/>\n                </wsp:Policy>\n            </sp:SignedSupportingTokens>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(2,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigOnly\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n           <sp:RequireThumbprintReference/> \n         <sp:WssX509V3Token10/>\n                                    <!-- sp:WssX509V3Token10/ -->\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n          <sp:RequireThumbprintReference/> \n         <sp:WssX509V3Token10/>\n                                    <!-- sp:WssX509V3Token10/ -->\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n\n            </sp:AsymmetricBinding>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(3,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SgnOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference/>\n                  <sp:WssX509V3Token10/>\n                </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n          <sp:RequireSignatureConfirmation/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>',-1234),(4,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"EncrOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference/>\n                  <sp:WssX509V3Token10/>\n                </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n            <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n          <sp:RequireSignatureConfirmation/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>',-1234),(5,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigEncr\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/> \n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n            </sp:AsymmetricBinding>\n            <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                    <sp:MustSupportRefThumbprint/>\n                    <sp:MustSupportRefEncryptedKey/>\n                    <sp:RequireSignatureConfirmation/>\n                </wsp:Policy>\n            </sp:Wss11>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:EncryptedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(6,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SgnEncrAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference/>\n                  <sp:WssX509V3Token10/>\n                </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n            <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n      <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n          <sp:RequireSignatureConfirmation/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>',-1234),(7,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"EncrOnlyUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference/>\n                  <sp:WssX509V3Token10/>\n                </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:SignedSupportingTokens>\n       <wsp:Policy>\n          <sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n            <wsp:Policy>\n              <sp:WssUsernameToken10/>\n            </wsp:Policy>\n         </sp:UsernameToken>\n       </wsp:Policy>\n     </sp:SignedSupportingTokens>\n      <sp:Wss11>\n                    <wsp:Policy>\n                          <sp:MustSupportRefKeyIdentifier/>\n                         <sp:MustSupportRefIssuerSerial/>\n                          <sp:MustSupportRefThumbprint/>\n                          <sp:MustSupportRefEncryptedKey/>\n                          <sp:RequireSignatureConfirmation/>\n                    </wsp:Policy>\n               </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(8,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SgnEncrUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference/>\n                  <sp:WssX509V3Token10/>\n                </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:SignedSupportingTokens>\n       <wsp:Policy>\n          <sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n            <wsp:Policy>\n              <sp:WssUsernameToken10/>\n            </wsp:Policy>\n         </sp:UsernameToken>\n       </wsp:Policy>\n     </sp:SignedSupportingTokens>\n      <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n          <sp:RequireSignatureConfirmation/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>',-1234),(9,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConSignOnly\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                      <wsp:Policy>\n                              <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <wsp:Policy>\n                                      <sp:InitiatorToken>\n                                         <wsp:Policy>\n                                              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                                  <wsp:Policy>\n                                                      <sp:RequireThumbprintReference/>\n                                                      <sp:WssX509V3Token10/>\n                                                  </wsp:Policy>\n                                             </sp:X509Token>\n                                         </wsp:Policy>\n                                     </sp:InitiatorToken>\n                                      <sp:RecipientToken>\n                                         <wsp:Policy>\n                                              <sp:X509Token\n                                                     sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                                  <wsp:Policy>\n                                                      <sp:RequireThumbprintReference/>\n                                                      <sp:WssX509V3Token10/>\n                                                  </wsp:Policy>\n                                             </sp:X509Token>\n                                         </wsp:Policy>\n                                     </sp:RecipientToken>\n                                      <sp:AlgorithmSuite>\n                                         <wsp:Policy>\n                                              <sp:Basic256/>\n                                          </wsp:Policy>\n                                     </sp:AlgorithmSuite>\n                                      <sp:Layout>\n                                         <wsp:Policy>\n                                              <sp:Strict/>\n                                          </wsp:Policy>\n                                     </sp:Layout>\n                                      <sp:IncludeTimestamp/>\n                                      <sp:OnlySignEntireHeadersAndBody/>\n                                  </wsp:Policy>\n                             </sp:AsymmetricBinding>\n                             <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <wsp:Policy>\n                                      <sp:MustSupportRefKeyIdentifier/>\n                                     <sp:MustSupportRefIssuerSerial/>\n                                  </wsp:Policy>\n                             </sp:Wss10>\n                             <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <sp:Body/>\n                              </sp:SignedParts>\n                             <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                 <sp:Body/>\n                              </sp:EncryptedParts>\n                      </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(10,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConEncrOnly\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                      <wsp:Policy>\n                              <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <wsp:Policy>\n                                      <sp:InitiatorToken>\n                                         <wsp:Policy>\n                                              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                                  <wsp:Policy>\n                                                      <sp:RequireThumbprintReference/>\n                                                      <sp:WssX509V3Token10/>\n                                                  </wsp:Policy>\n                                             </sp:X509Token>\n                                         </wsp:Policy>\n                                     </sp:InitiatorToken>\n                                      <sp:RecipientToken>\n                                         <wsp:Policy>\n                                              <sp:X509Token\n                                                     sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                                  <wsp:Policy>\n                                                      <sp:RequireThumbprintReference/>\n                                                      <sp:WssX509V3Token10/>\n                                                  </wsp:Policy>\n                                             </sp:X509Token>\n                                         </wsp:Policy>\n                                     </sp:RecipientToken>\n                                      <sp:AlgorithmSuite>\n                                         <wsp:Policy>\n                                              <sp:Basic256/>\n                                          </wsp:Policy>\n                                     </sp:AlgorithmSuite>\n                                      <sp:Layout>\n                                         <wsp:Policy>\n                                              <sp:Strict/>\n                                          </wsp:Policy>\n                                     </sp:Layout>\n                                      <sp:IncludeTimestamp/>\n                                      <sp:OnlySignEntireHeadersAndBody/>\n                                  </wsp:Policy>\n                             </sp:AsymmetricBinding>\n                             <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <wsp:Policy>\n                                      <sp:MustSupportRefKeyIdentifier/>\n                                     <sp:MustSupportRefIssuerSerial/>\n                                  </wsp:Policy>\n                             </sp:Wss10>\n                             <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <sp:Body/>\n                              </sp:SignedParts>\n                             <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                 <sp:Body/>\n                              </sp:EncryptedParts>\n                      </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(11,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n<wsp:Policy wsu:Id=\"SecConSgnEncr\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                      <wsp:Policy>\n                              <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <wsp:Policy>\n                                      <sp:InitiatorToken>\n                                         <wsp:Policy>\n                                              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                                  <wsp:Policy>\n                                                      <sp:RequireThumbprintReference/>                                         \n                                                 </wsp:Policy>\n                                             </sp:X509Token>\n                                         </wsp:Policy>\n                                     </sp:InitiatorToken>\n                                      <sp:RecipientToken>\n                                         <wsp:Policy>\n                                              <sp:X509Token\n                                                     sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                                  <wsp:Policy>\n                                                      <sp:RequireThumbprintReference/>                                                    \n                                                  </wsp:Policy>\n                                             </sp:X509Token>\n                                         </wsp:Policy>\n                                     </sp:RecipientToken>\n                                      <sp:AlgorithmSuite>\n                                         <wsp:Policy>\n                                              <sp:Basic256/>\n                                          </wsp:Policy>\n                                     </sp:AlgorithmSuite>\n                                      <sp:Layout>\n                                         <wsp:Policy>\n                                              <sp:Strict/>\n                                          </wsp:Policy>\n                                     </sp:Layout>\n                                      <sp:IncludeTimestamp/>\n                                      <sp:OnlySignEntireHeadersAndBody/>\n                                  </wsp:Policy>\n                             </sp:AsymmetricBinding>\n                             <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <wsp:Policy>\n                                      <sp:MustSupportRefKeyIdentifier/>\n                                     <sp:MustSupportRefIssuerSerial/>\n                                  </wsp:Policy>\n                             </sp:Wss10>\n                             <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                  <sp:Body/>\n                              </sp:SignedParts>\n                             <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                                 <sp:Body/>\n                              </sp:EncryptedParts>\n                      </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(12,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConSignOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                    <wsp:Policy>\n                      <sp:SymmetricBinding>\n                       <wsp:Policy>\n                          <sp:ProtectionToken>\n                            <wsp:Policy>\n                              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                  <sp:RequireThumbprintReference/>\n                                  <sp:WssX509V3Token10/>\n                                </wsp:Policy>\n                             </sp:X509Token>\n                           </wsp:Policy>\n                         </sp:ProtectionToken>\n                         <sp:AlgorithmSuite>\n                           <wsp:Policy>\n                              <sp:Basic256/>\n                            </wsp:Policy>\n                         </sp:AlgorithmSuite>\n                          <sp:Layout>\n                           <wsp:Policy>\n                              <sp:Lax/>\n                           </wsp:Policy>\n                         </sp:Layout>\n                          <sp:IncludeTimestamp/>\n                          <sp:OnlySignEntireHeadersAndBody/>\n                        </wsp:Policy>\n                     </sp:SymmetricBinding>\n                      <sp:SignedParts>\n                        <sp:Body/>\n                      </sp:SignedParts>\n                           <sp:EncryptedParts>\n                               <sp:Body/>\n                            </sp:EncryptedParts>\n                      <sp:Wss11>\n                        <wsp:Policy>\n                          <sp:MustSupportRefKeyIdentifier/>\n                         <sp:MustSupportRefIssuerSerial/>\n                          <sp:MustSupportRefThumbprint/>\n                          <sp:MustSupportRefEncryptedKey/>\n                          <sp:RequireSignatureConfirmation/>\n                        </wsp:Policy>\n                     </sp:Wss11>\n                     <sp:Trust10>\n                        <wsp:Policy>\n                          <sp:MustSupportIssuedTokens/>\n                         <sp:RequireClientEntropy/>\n                          <sp:RequireServerEntropy/>\n                        </wsp:Policy>\n                     </sp:Trust10>\n                   </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(13,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConEncrOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                    <wsp:Policy>\n                      <sp:SymmetricBinding>\n                       <wsp:Policy>\n                          <sp:ProtectionToken>\n                            <wsp:Policy>\n                              <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                  <sp:RequireThumbprintReference/>\n                                  <sp:WssX509V3Token10/>\n                                </wsp:Policy>\n                             </sp:X509Token>\n                           </wsp:Policy>\n                         </sp:ProtectionToken>\n                         <sp:AlgorithmSuite>\n                           <wsp:Policy>\n                              <sp:Basic256/>\n                            </wsp:Policy>\n                         </sp:AlgorithmSuite>\n                          <sp:Layout>\n                           <wsp:Policy>\n                              <sp:Lax/>\n                           </wsp:Policy>\n                         </sp:Layout>\n                          <sp:IncludeTimestamp/>\n                          <sp:OnlySignEntireHeadersAndBody/>\n                        </wsp:Policy>\n                     </sp:SymmetricBinding>\n                      <sp:SignedParts>\n                        <sp:Body/>\n                      </sp:SignedParts>\n                           <sp:EncryptedParts>\n                               <sp:Body/>\n                            </sp:EncryptedParts>\n                      <sp:Wss11>\n                        <wsp:Policy>\n                          <sp:MustSupportRefKeyIdentifier/>\n                         <sp:MustSupportRefIssuerSerial/>\n                          <sp:MustSupportRefThumbprint/>\n                          <sp:MustSupportRefEncryptedKey/>\n                          <sp:RequireSignatureConfirmation/>\n                        </wsp:Policy>\n                     </sp:Wss11>\n                     <sp:Trust10>\n                        <wsp:Policy>\n                          <sp:MustSupportIssuedTokens/>\n                         <sp:RequireClientEntropy/>\n                          <sp:RequireServerEntropy/>\n                        </wsp:Policy>\n                     </sp:Trust10>\n                   </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(14,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConEncrUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                      <wsp:Policy>\n                        <sp:SymmetricBinding>\n                         <wsp:Policy>\n                            <sp:ProtectionToken>\n                              <wsp:Policy>\n                                <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                  <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                    <sp:WssX509V3Token10/>\n                                  </wsp:Policy>\n                               </sp:X509Token>\n                             </wsp:Policy>\n                           </sp:ProtectionToken>\n                           <sp:AlgorithmSuite>\n                             <wsp:Policy>\n                                <sp:Basic256/>\n                              </wsp:Policy>\n                           </sp:AlgorithmSuite>\n                            <sp:Layout>\n                             <wsp:Policy>\n                                <sp:Lax/>\n                             </wsp:Policy>\n                           </sp:Layout>\n                            <sp:IncludeTimestamp/>\n                            <sp:OnlySignEntireHeadersAndBody/>\n                          </wsp:Policy>\n                       </sp:SymmetricBinding>\n                        <sp:SignedParts>\n                          <sp:Body/>\n                        </sp:SignedParts>\n                       <sp:EncryptedParts>\n                                 <sp:Body/>\n                              </sp:EncryptedParts>\n                        <sp:SignedSupportingTokens>\n                         <wsp:Policy>\n                            <sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                              <wsp:Policy>\n                                <sp:WssUsernameToken10/>\n                              </wsp:Policy>\n                           </sp:UsernameToken>\n                         </wsp:Policy>\n                       </sp:SignedSupportingTokens>\n                        <sp:Wss11>\n                          <wsp:Policy>\n                            <sp:MustSupportRefKeyIdentifier/>\n                           <sp:MustSupportRefIssuerSerial/>\n                            <sp:MustSupportRefThumbprint/>\n                            <sp:MustSupportRefEncryptedKey/>\n                            <sp:RequireSignatureConfirmation/>\n                          </wsp:Policy>\n                       </sp:Wss11>\n                       <sp:Trust10>\n                          <wsp:Policy>\n                            <sp:MustSupportIssuedTokens/>\n                           <sp:RequireClientEntropy/>\n                            <sp:RequireServerEntropy/>\n                          </wsp:Policy>\n                       </sp:Trust10>\n                     </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(15,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConSgnEncrUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:SymmetricBinding>\n       <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n                  <sp:BootstrapPolicy>\n                      <wsp:Policy>\n                        <sp:SymmetricBinding>\n                         <wsp:Policy>\n                            <sp:ProtectionToken>\n                              <wsp:Policy>\n                                <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                  <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                    <sp:WssX509V3Token10/>\n                                  </wsp:Policy>\n                               </sp:X509Token>\n                             </wsp:Policy>\n                           </sp:ProtectionToken>\n                           <sp:AlgorithmSuite>\n                             <wsp:Policy>\n                                <sp:Basic256/>\n                              </wsp:Policy>\n                           </sp:AlgorithmSuite>\n                            <sp:Layout>\n                             <wsp:Policy>\n                                <sp:Lax/>\n                             </wsp:Policy>\n                           </sp:Layout>\n                            <sp:IncludeTimestamp/>\n                            <sp:OnlySignEntireHeadersAndBody/>\n                          </wsp:Policy>\n                       </sp:SymmetricBinding>\n                        <sp:SignedParts>\n                          <sp:Body/>\n                        </sp:SignedParts>\n                       <sp:EncryptedParts>\n                                 <sp:Body/>\n                              </sp:EncryptedParts>\n                        <sp:SignedSupportingTokens>\n                         <wsp:Policy>\n                            <sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                              <wsp:Policy>\n                                <sp:WssUsernameToken10/>\n                              </wsp:Policy>\n                           </sp:UsernameToken>\n                         </wsp:Policy>\n                       </sp:SignedSupportingTokens>\n                        <sp:Wss11>\n                          <wsp:Policy>\n                            <sp:MustSupportRefKeyIdentifier/>\n                           <sp:MustSupportRefIssuerSerial/>\n                            <sp:MustSupportRefThumbprint/>\n                            <sp:MustSupportRefEncryptedKey/>\n                            <sp:RequireSignatureConfirmation/>\n                          </wsp:Policy>\n                       </sp:Wss11>\n                       <sp:Trust10>\n                          <wsp:Policy>\n                            <sp:MustSupportIssuedTokens/>\n                           <sp:RequireClientEntropy/>\n                            <sp:RequireServerEntropy/>\n                          </wsp:Policy>\n                       </sp:Trust10>\n                     </wsp:Policy>\n                 </sp:BootstrapPolicy>\n               </wsp:Policy>\n             </sp:SecureConversationToken>\n           </wsp:Policy>\n         </sp:ProtectionToken>\n         <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Lax/>\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n     </sp:SymmetricBinding>\n      <sp:SignedParts>\n        <sp:Body/>\n      </sp:SignedParts>\n     <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n     <sp:Wss11>\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n         <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n          <sp:MustSupportRefEncryptedKey/>\n        </wsp:Policy>\n     </sp:Wss11>\n     <sp:Trust10>\n        <wsp:Policy>\n          <sp:MustSupportIssuedTokens/>\n         <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n        </wsp:Policy>\n     </sp:Trust10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(16,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n<wsp:Policy wsu:Id=\"kerberossignandencrypt\"\n  xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n      <sp:SymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:KerberosToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n\n                  <sp:WssKerberosV5ApReqToken11/>\n                </wsp:Policy>\n              </sp:KerberosToken>\n            </wsp:Policy>\n          </sp:ProtectionToken>\n          <sp:AlgorithmSuite>\n            <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n\n          </sp:AlgorithmSuite>\n          <sp:Layout>\n            <wsp:Policy>\n              <sp:Lax/>\n            </wsp:Policy>\n          </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n\n      </sp:SymmetricBinding>\n      <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <sp:Body/>\n      </sp:SignedParts>\n      <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <sp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n          <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n\n          <sp:RequireSignatureConfirmation/>\n        </sp:Policy>\n      </sp:Wss11>\n      <sp:Trust10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n          <sp:MustSupportIssuedTokens/>\n        </wsp:Policy>\n      </sp:Trust10>\n    </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(17,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SAML2HoKProtection31\"\n  xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n  xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\">\n <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:AsymmetricBinding\n       xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:InitiatorToken>\n           <wsp:Policy>\n              <sp:IssuedToken\n               sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <sp:Issuer>\n                 <Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts\n                  </Address>\n                </sp:Issuer>\n                <sp:RequestSecurityTokenTemplate>\n                 <t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">urn:oasis:names:tc:SAML:2.0:assertion</t:TokenType>\n                  <t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey\n                 </t:KeyType>\n                  <t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n                </sp:RequestSecurityTokenTemplate>\n                <wsp:Policy>\n                  <sp:RequireInternalReference />\n               </wsp:Policy>\n             </sp:IssuedToken>\n           </wsp:Policy>\n         </sp:InitiatorToken>\n          <sp:RecipientToken>\n           <wsp:Policy>\n              <sp:X509Token\n               sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference />\n               </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:RecipientToken>\n          <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256 />\n           </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Strict />\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp />\n         <sp:OnlySignEntireHeadersAndBody />\n       </wsp:Policy>\n     </sp:AsymmetricBinding>\n     <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier />\n          <sp:MustSupportRefIssuerSerial />\n         <sp:MustSupportRefThumbprint />\n         <sp:MustSupportRefEncryptedKey />\n         <sp:RequireSignatureConfirmation />\n       </wsp:Policy>\n     </sp:Wss11>\n     <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier />\n          <sp:MustSupportRefIssuerSerial />\n       </wsp:Policy>\n     </sp:Wss10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>',-1234),(18,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SAML11HoKProtection32\"\n  xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n  xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\">\n <wsp:ExactlyOne>\n    <wsp:All>\n     <sp:AsymmetricBinding\n       xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:InitiatorToken>\n           <wsp:Policy>\n              <sp:IssuedToken\n               sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <sp:Issuer>\n                 <Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts\n                  </Address>\n                </sp:Issuer>\n                <sp:RequestSecurityTokenTemplate>\n                 <t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1</t:TokenType>\n                 <t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey\n                 </t:KeyType>\n                  <t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n                </sp:RequestSecurityTokenTemplate>\n                <wsp:Policy>\n                  <sp:RequireInternalReference />\n               </wsp:Policy>\n             </sp:IssuedToken>\n           </wsp:Policy>\n         </sp:InitiatorToken>\n          <sp:RecipientToken>\n           <wsp:Policy>\n              <sp:X509Token\n               sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                <wsp:Policy>\n                  <sp:RequireThumbprintReference />\n               </wsp:Policy>\n             </sp:X509Token>\n           </wsp:Policy>\n         </sp:RecipientToken>\n          <sp:AlgorithmSuite>\n           <wsp:Policy>\n              <sp:Basic256 />\n           </wsp:Policy>\n         </sp:AlgorithmSuite>\n          <sp:Layout>\n           <wsp:Policy>\n              <sp:Strict />\n           </wsp:Policy>\n         </sp:Layout>\n          <sp:IncludeTimestamp />\n         <sp:OnlySignEntireHeadersAndBody />\n       </wsp:Policy>\n     </sp:AsymmetricBinding>\n     <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier />\n          <sp:MustSupportRefIssuerSerial />\n         <sp:MustSupportRefThumbprint />\n         <sp:MustSupportRefEncryptedKey />\n         <sp:RequireSignatureConfirmation />\n       </wsp:Policy>\n     </sp:Wss11>\n     <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:MustSupportRefKeyIdentifier />\n          <sp:MustSupportRefIssuerSerial />\n       </wsp:Policy>\n     </sp:Wss10>\n   </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>',-1234),(19,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigEncrSAML20Supporting33\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/> \n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n            </sp:AsymmetricBinding>\n            <sp:SupportingTokens xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:IssuedToken\n                            sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                        <sp:Issuer>\n                            <Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts</Address>\n                        </sp:Issuer>\n                        <sp:RequestSecurityTokenTemplate>\n                            <t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">urn:oasis:names:tc:SAML:2.0:assertion</t:TokenType>\n                            <t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey</t:KeyType>\n                            <t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n                        </sp:RequestSecurityTokenTemplate>\n                        <wsp:Policy>\n                            <sp:RequireInternalReference/>\n                        </wsp:Policy>\n                    </sp:IssuedToken>\n                </wsp:Policy>\n            </sp:SupportingTokens>\n            <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                    <sp:MustSupportRefThumbprint/>\n                    <sp:MustSupportRefEncryptedKey/>\n                    <sp:RequireSignatureConfirmation/>\n                </wsp:Policy>\n            </sp:Wss11>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:EncryptedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(20,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigEncrSAML11Supporting34\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/> \n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n            </sp:AsymmetricBinding>\n            <sp:SupportingTokens xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/seub {\n}\n\n/* -------------- child no-01 styles -------------- */\n\ndiv#menu ul.sub li.normal {\n\n}\n\ndiv#menu ul.sub li a.menu-default {\n}\n\n/* ----------- child no-01 (disabled) styles ------------------- */\n\ndiv#menu ul.sub li a.menu-disabled-link {\n  }\n\n div#menu ul.sub li a.menu-disabled-link:hover {\n }\n\n/* -------------- child no-02 styles -------------- */\n\ndiv#menu ul.sub li.normal ul.sub li a.menu-default {\n\n}\n\n/* -------------- child no-03 styles -------------- */\n\ndiv#menu ul.sub li.normal ul.sub li.normal ul.sub li a.menu-default {\n}\n\n/* ------------- footer styles -------------------- */\n\ndiv#footer-div div.footer-content div.poweredby {\n background-position: right top;\n}\n\n/* ---- login styles ----- */\n\n\n/* --------------- table styles -------------------- */\n\n.tableOddRow{background-color: white;}\n.tableEvenRow{background-color: #EFECF5;}\n\n.button:hover{\n}\n\n/* =============================================================================================================== */\n\n\n\n.cornerExpand {\n    position: relative;\n    top: 3px;\n    left: -12px;\n    cursor: pointer;\n}\n\n.cornerCollapse {\n    position: relative;\n    top: 3px;\n    left: -12px;\n    cursor: pointer;\n}\n\n/* chanaka */\n\n.form-table td{\n   padding-bottom:5px !important;\n   padding-left:5px !important;\n   padding-top:5px !important;\n   padding-right:10px !important;\n}\n.form-table td div.indented{\n    padding-left:7px !important;\n    color:#595959 !important;\n}\n.form-table-left{\nwidth:100px;\n}\n\n.longTextField{\nwidth:270px;\n}\n.rowAlone{\npadding-top:10px;\npadding-bottom:10px;\n}\n.tabedBox{\nborder:solid 1px #cccccc;\nmargin-left:10px;\npadding:10px;\nmargin-bottom:10px;\n}\n\na.fact-selector-icon-link {\n    background-repeat: no-repeat;\n    background-position: left top;\n    padding-left: 20px;\n    line-height: 17px;\n    height: 17px;\n    float: left;\n    position: relative;\n    margin-left: 10px;\n    margin-top: 5px;\n    margin-bottom: 3px;\n    white-space: nowrap;\n}\ntable#main-table td#middle-content {\nbackground-position: left top;\nbackground-repeat: repeat-y;\nbackground-color:#ffffff;\n}\ndiv#middle{\nbackground-color:#ffffff;   \n}\n\n/* new theme 01-07-2013 */\ntable#main-table td.vertical-menu-container { background-color:#444; padding-left: 5px; border-top:0px;}\ndiv.menu-panel-buttons { border-top-left-radius: 7px; border-bottom-left-radius: 7px;  border-top-right-radius: 0px; border-bottom-right-radius: 0px; padding: 15px 3px;}\ndiv.selected span { font-weight:bold; color:#ffffff; background-color:#555555; }\ndiv.menu-panel-buttons span {  }\ndiv.selected { border:0px; background-color:#555555; box-shadow:none; }\ndiv#middle h2{color:#444;}\ntable#main-table td#footer{background:#444;}\ndiv#menu ul.main li.menu-header img{\n    background: none repeat scroll 0 0 #EFEFEF;\n    border-radius:15px;\n}\n\n',-1234);
/*!40000 ALTER TABLE `REG_CONTENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT_HISTORY`
--

DROP TABLE IF EXISTS `REG_CONTENT_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT_HISTORY` (
  `REG_CONTENT_ID` int(11) NOT NULL,
  `REG_CONTENT_DATA` longblob,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT_HISTORY`
--

LOCK TABLES `REG_CONTENT_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_LOG`
--

DROP TABLE IF EXISTS `REG_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_LOG` (
  `REG_LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH` varchar(750) DEFAULT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_LOGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_ACTION` int(11) NOT NULL,
  `REG_ACTION_DATA` varchar(500) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_LOG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_LOG`
--

LOCK TABLES `REG_LOG` WRITE;
/*!40000 ALTER TABLE `REG_LOG` DISABLE KEYS */;
INSERT INTO `REG_LOG` VALUES (1,'/_system/config','wso2.system.user','2016-03-02 07:22:13',0,NULL,-1234),(2,'/_system/config/repository','wso2.system.user','2016-03-02 07:22:13',0,NULL,-1234),(3,'/_system/config','wso2.system.user','2016-03-02 07:22:13',7,NULL,-1234),(4,'/_system/config','wso2.system.user','2016-03-02 07:22:13',12,'gov;/_system/config',-1234),(5,'/_system/governance','wso2.system.user','2016-03-02 07:22:13',0,NULL,-1234),(6,'/_system/governance/repository','wso2.system.user','2016-03-02 07:22:13',0,NULL,-1234),(7,'/_system/governance','wso2.system.user','2016-03-02 07:22:13',7,NULL,-1234),(8,'/_system/governance','wso2.system.user','2016-03-02 07:22:13',12,'gov;/_system/governance',-1234),(9,'/_system/config','wso2.system.user','2016-03-02 07:22:48',0,NULL,-1234),(10,'/_system/config/repository','wso2.system.user','2016-03-02 07:22:48',0,NULL,-1234),(11,'/_system/config/repository/components','wso2.system.user','2016-03-02 07:22:48',0,NULL,-1234),(12,'/_system/config/repository/components/org.wso2.carbon.governance','wso2.system.user','2016-03-02 07:22:48',0,NULL,-1234),(13,'/_system/config/repository/components/org.wso2.carbon.governance/media-types','wso2.system.user','2016-03-02 07:22:48',0,NULL,-1234),(14,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index','wso2.system.user','2016-03-02 07:22:48',0,NULL,-1234),(15,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index/custom.ui','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(16,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index/collection','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(17,'/_system/config/users','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(18,'/_system/config/repository/components/org.wso2.carbon.governance/configuration','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(19,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(20,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services/service','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(21,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services/service-schema','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(22,'/_system/config/repository/components/org.wso2.carbon.identity.mgt','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(23,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(24,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question0','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(25,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question1','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(26,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question2','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(27,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question3','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(28,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question4','wso2.system.user','2016-03-02 07:22:50',0,NULL,-1234),(29,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question5','wso2.system.user','2016-03-02 07:22:51',0,NULL,-1234),(30,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question6','wso2.system.user','2016-03-02 07:22:51',0,NULL,-1234),(31,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question7','wso2.system.user','2016-03-02 07:22:51',0,NULL,-1234),(32,'/_system/config/repository/components/org.wso2.carbon.security.mgt','wso2.system.user','2016-03-02 07:22:51',0,NULL,-1234),(33,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(34,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario1','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(35,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario2','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(36,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario3','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(37,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario4','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(38,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario5','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(39,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario6','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(40,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario7','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(41,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario8','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(42,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario9','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(43,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario10','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(44,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario11','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(45,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario12','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(46,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario13','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(47,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario14','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(48,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario15','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(49,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario20','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(50,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario31','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(51,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario32','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(52,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario33','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(53,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario34','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(54,'/_system/governance','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(55,'/_system/governance/trunk','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(56,'/_system/governance/trunk/services','wso2.system.user','2016-03-02 07:22:49',0,NULL,-1234),(57,'/_system/governance/repository','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(58,'/_system/governance/repository/security','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(59,'/_system/governance/repository/security/key-stores','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(60,'/_system/governance/repository/security/key-stores/carbon-primary-ks','wso2.system.user','2016-03-02 07:22:52',0,NULL,-1234),(61,'/_system/governance/permission','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(62,'/_system/governance/permission/admin','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(63,'/_system/governance/permission/admin/login','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(64,'/_system/governance/permission/admin/configure','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(65,'/_system/governance/permission/admin/configure/security','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(66,'/_system/governance/permission/admin/configure/security/usermgt','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(67,'/_system/governance/permission/admin/configure/security/usermgt/profiles','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(68,'/_system/governance/permission/admin/configure/security/usermgt/users','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(69,'/_system/governance/permission/admin/configure/security/usermgt/passwords','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(70,'/_system/governance/permission/admin','wso2.system.user','2016-03-02 07:22:53',1,NULL,-1234),(71,'/_system/governance/permission/admin/manage','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(72,'/_system/governance/permission/admin/manage/modify','wso2.system.user','2016-03-02 07:22:53',0,NULL,-1234),(73,'/_system/governance/permission/admin/configure/security','wso2.system.user','2016-03-02 07:22:54',1,NULL,-1234),(74,'/_system/governance/permission','wso2.system.user','2016-03-02 07:22:54',1,NULL,-1234),(75,'/_system/governance/permission/protected','wso2.system.user','2016-03-02 07:22:54',0,NULL,-1234),(76,'/_system/governance/permission/admin/configure/security/usermgt','wso2.system.user','2016-03-02 07:22:54',1,NULL,-1234),(77,'/_system/governance/permission/admin/manage','wso2.system.user','2016-03-02 07:22:54',1,NULL,-1234),(78,'/_system/governance/permission/admin/configure','wso2.system.user','2016-03-02 07:22:54',1,NULL,-1234),(79,'/_system/governance/permission/admin/monitor','wso2.system.user','2016-03-02 07:22:54',0,NULL,-1234),(80,'/_system/governance/permission/admin/manage/add','wso2.system.user','2016-03-02 07:22:54',0,NULL,-1234),(81,'/_system/governance/permission/admin/manage/add/webapp','wso2.system.user','2016-03-02 07:22:54',0,NULL,-1234),(82,'/_system/governance/permission/admin/manage/modify/webapp','wso2.system.user','2016-03-02 07:22:54',0,NULL,-1234),(83,'/_system/governance/permission/admin/manage/attachment','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(84,'/_system/governance/permission/admin/monitor/attachment','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(85,'/_system/governance/permission/admin/manage/bpel','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(86,'/_system/governance/permission/admin/manage/bpel/processes','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(87,'/_system/governance/permission/admin/manage/bpel/instances','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(88,'/_system/governance/permission/admin/manage/bpel/packages','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(89,'/_system/governance/permission/admin/monitor/bpel','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(90,'/_system/governance/permission/admin/manage/bpel/add','wso2.system.user','2016-03-02 07:22:55',0,NULL,-1234),(91,'/_system/governance/permission/admin/manage/topic','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(92,'/_system/governance/permission/admin/manage/topic/addTopic','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(93,'/_system/governance/permission/admin/manage/topic/browseTopic','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(94,'/_system/governance/permission/admin/manage/topic/deleteTopic','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(95,'/_system/governance/permission/admin/manage/topic/purgeTopic','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(96,'/_system/governance/permission/protected/configure','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(97,'/_system/governance/permission/protected/configure/components','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(98,'/_system/governance/permission/admin/manage/humantask','wso2.system.user','2016-03-02 07:22:56',0,NULL,-1234),(99,'/_system/governance/permission/admin/manage/humantask/task','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(100,'/_system/governance/permission/admin/manage/humantask/packages','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(101,'/_system/governance/permission/admin/manage/humantask/viewtasks','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(102,'/_system/governance/permission/admin/manage/humantask/add','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(103,'/_system/governance/permission/applications','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(104,'/_system/governance/permission/admin/manage/identity','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(105,'/_system/governance/permission/admin/configure/entitlement','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(106,'/_system/governance/permission/admin/configure/entitlement/policy','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(107,'/_system/governance/permission/admin/configure/entitlement/policy/view','wso2.system.user','2016-03-02 07:22:57',0,NULL,-1234),(108,'/_system/governance/permission/admin/configure/entitlement/policy/publish','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(109,'/_system/governance/permission/admin/configure/entitlement/policy/manage','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(110,'/_system/governance/permission/admin/configure/entitlement/policy/manage/add','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(111,'/_system/governance/permission/admin/configure/entitlement/policy/manage/edit','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(112,'/_system/governance/permission/admin/configure/entitlement/policy/manage/delete','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(113,'/_system/governance/permission/admin/configure/entitlement/policy/manage/rollback','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(114,'/_system/governance/permission/admin/configure/entitlement/policy/manage/demote','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(115,'/_system/governance/permission/admin/configure/entitlement/policy/manage/order','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(116,'/_system/governance/permission/admin/configure/entitlement/policy/manage/enable','wso2.system.user','2016-03-02 07:22:58',0,NULL,-1234),(117,'/_system/governance/permission/admin/configure/entitlement/policy/manage/test','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(118,'/_system/governance/permission/admin/configure/entitlement/pdp','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(119,'/_system/governance/permission/admin/configure/entitlement/pdp/manage','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(120,'/_system/governance/permission/admin/configure/entitlement/pdp/view','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(121,'/_system/governance/permission/admin/manage/identity/pep','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(122,'/_system/governance/permission/admin/configure/security/usermgt/provisioning','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(123,'/_system/governance/permission/admin/manage/identity/user','wso2.system.user','2016-03-02 07:22:59',0,NULL,-1234),(124,'/_system/governance/permission/admin/manage/identity/user/association','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(125,'/_system/governance/permission/admin/manage/identity/user/association/create','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(126,'/_system/governance/permission/admin/manage/identity/user/association/view','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(127,'/_system/governance/permission/admin/manage/identity/user/association/update','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(128,'/_system/governance/permission/admin/manage/identity/user/association/delete','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(129,'/_system/governance/permission/admin/manage/modify/user-profile','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(130,'/_system/governance/permission/admin/manage/identity/workflow','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(131,'/_system/governance/permission/admin/manage/identity/workflow/profile','wso2.system.user','2016-03-02 07:23:00',0,NULL,-1234),(132,'/_system/governance/permission/admin/manage/identity/workflow/profile/create','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(133,'/_system/governance/permission/admin/manage/identity/workflow/profile/view','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(134,'/_system/governance/permission/admin/manage/identity/workflow/profile/update','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(135,'/_system/governance/permission/admin/manage/identity/workflow/profile/delete','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(136,'/_system/governance/permission/admin/manage/identity/workflow/definition','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(137,'/_system/governance/permission/admin/manage/identity/workflow/definition/create','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(138,'/_system/governance/permission/admin/manage/identity/workflow/definition/view','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(139,'/_system/governance/permission/admin/manage/identity/workflow/definition/update','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(140,'/_system/governance/permission/admin/manage/identity/workflow/definition/delete','wso2.system.user','2016-03-02 07:23:01',0,NULL,-1234),(141,'/_system/governance/permission/admin/manage/identity/workflow/association','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(142,'/_system/governance/permission/admin/manage/identity/workflow/association/create','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(143,'/_system/governance/permission/admin/manage/identity/workflow/association/view','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(144,'/_system/governance/permission/admin/manage/identity/workflow/association/update','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(145,'/_system/governance/permission/admin/manage/identity/workflow/association/delete','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(146,'/_system/governance/permission/admin/manage/identity/workflow/monitor','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(147,'/_system/governance/permission/admin/manage/identity/workflow/monitor/view','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(148,'/_system/governance/permission/admin/manage/identity/workflow/monitor/delete','wso2.system.user','2016-03-02 07:23:02',0,NULL,-1234),(149,'/_system/governance/permission/protected/configure/logging','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(150,'/_system/governance/permission/admin/monitor/logging','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(151,'/_system/governance/permission/admin/monitor/metrics','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(152,'/_system/governance/permission/admin/manage/modify/module','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(153,'/_system/governance/permission/admin/manage/add/module','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(154,'/_system/governance/permission/admin/configure/datasources','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(155,'/_system/governance/permission/admin/manage/resources','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(156,'/_system/governance/permission/admin/manage/resources/browse','wso2.system.user','2016-03-02 07:23:03',0,NULL,-1234),(157,'/_system/config/repository/transports','wso2.system.user','2016-03-02 07:23:06',0,NULL,-1234),(158,'/_system/config/repository/transports/https','wso2.system.user','2016-03-02 07:23:06',0,NULL,-1234),(159,'/_system/config/repository/transports/https/listener','wso2.system.user','2016-03-02 07:23:06',0,NULL,-1234),(160,'/_system/config/repository/transports/http','wso2.system.user','2016-03-02 07:23:06',0,NULL,-1234),(161,'/_system/config/repository/transports/http/listener','wso2.system.user','2016-03-02 07:23:06',0,NULL,-1234),(162,'/_system/config/repository/transports/local','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(163,'/_system/config/repository/transports/local/listener','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(164,'/_system/config/repository/transports/https/sender','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(165,'/_system/config/repository/transports/http/sender','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(166,'/_system/config/repository/transports/local/sender','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(167,'/_system/config/repository/connection','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(168,'/_system/config/repository/connection/props','wso2.system.user','2016-03-02 07:23:07',0,NULL,-1234),(169,'/_system/governance/permission/admin/manage/resources/notifications','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(170,'/_system/governance/permission/admin/manage/extensions','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(171,'/_system/governance/permission/admin/manage/extensions/add','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(172,'/_system/governance/permission/admin/manage/extensions/list','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(173,'/_system/governance/permission/admin/manage/search','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(174,'/_system/governance/permission/admin/manage/search/resources','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(175,'/_system/governance/permission/admin/manage/search/advanced-search','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(176,'/_system/governance/permission/protected/server-admin','wso2.system.user','2016-03-02 07:23:04',0,NULL,-1234),(177,'/_system/governance/permission/protected/server-admin/homepage','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(178,'/_system/governance/permission/admin/manage/add/service','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(179,'/_system/governance/permission/admin/manage/modify/service','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(180,'/_system/governance/permission/protected/manage','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(181,'/_system/governance/permission/protected/manage/monitor','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(182,'/_system/governance/permission/protected/manage/monitor/tenants','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(183,'/_system/governance/permission/protected/manage/modify','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(184,'/_system/governance/permission/protected/manage/modify/tenants','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(185,'/_system/governance/permission/protected/manage/monitor/tenants/list','wso2.system.user','2016-03-02 07:23:05',0,NULL,-1234),(186,'/_system/governance/permission/admin/configure/theme','wso2.system.user','2016-03-02 07:23:06',0,NULL,-1234),(187,'/_system/governance/repository/components','wso2.system.user','2016-03-02 07:23:11',0,NULL,-1234),(188,'/_system/governance/repository/components/org.wso2.carbon.user.mgt','wso2.system.user','2016-03-02 07:23:11',0,NULL,-1234),(189,'/_system/governance/repository/components/org.wso2.carbon.user.mgt/updatedTime','wso2.system.user','2016-03-02 07:23:12',0,NULL,-1234),(190,'/_system/governance/event','wso2.system.user','2016-03-02 07:23:12',0,NULL,-1234),(191,'/_system/governance/event/topics','wso2.system.user','2016-03-02 07:23:12',0,NULL,-1234),(192,'/_system/governance/event/topicIndex','wso2.system.user','2016-03-02 07:23:12',0,NULL,-1234),(193,'/_system/config/repository/components/org.wso2.carbon.logging','wso2.system.user','2016-03-02 07:23:14',0,NULL,-1234),(194,'/_system/config/repository/components/org.wso2.carbon.logging/log4j.file.not.found','wso2.system.user','2016-03-02 07:23:14',0,NULL,-1234),(195,'/_system/config/repository/components/org.wso2.carbon.logging/wso2carbon.system.log.last.modified','wso2.system.user','2016-03-02 07:23:14',0,NULL,-1234),(196,'/_system/governance/repository/components/org.wso2.carbon.all-themes','wso2.system.user','2016-03-02 07:23:28',0,NULL,-1234),(197,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-02 07:23:28',0,NULL,-1234),(198,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(199,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(200,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(201,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(202,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(203,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(204,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(205,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(206,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-02 07:23:29',0,NULL,-1234),(207,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-02 07:23:30',0,NULL,-1234),(208,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-02 07:23:30',0,NULL,-1234),(209,'/_system/config/repository','wso2.system.user','2016-03-02 09:05:00',0,NULL,-1234),(210,'/_system/governance/repository','wso2.system.user','2016-03-02 09:05:00',0,NULL,-1234),(211,'/_system/config/repository/connection/props','wso2.system.user','2016-03-02 09:05:08',1,NULL,-1234),(212,'/_system/config/repository/components/org.wso2.carbon.logging/wso2carbon.system.log.pattern','wso2.system.user','2016-03-02 09:05:12',0,NULL,-1234),(213,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-02 09:05:35',1,NULL,-1234),(214,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(215,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(216,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(217,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(218,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(219,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(220,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(221,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(222,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-02 09:05:36',1,NULL,-1234),(223,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-02 09:05:37',1,NULL,-1234),(224,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-02 09:05:37',1,NULL,-1234),(225,'/_system/config/repository/connection/props','wso2.system.user','2016-03-02 09:09:26',1,NULL,-1234),(226,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(227,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(228,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(229,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(230,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(231,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(232,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(233,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(234,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(235,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(236,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(237,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-02 09:09:42',1,NULL,-1234),(238,'/_system/config/repository/connection/props','wso2.system.user','2016-03-02 11:09:12',1,NULL,-1234),(239,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-02 11:09:31',1,NULL,-1234),(240,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-02 11:09:31',1,NULL,-1234),(241,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-02 11:09:31',1,NULL,-1234),(242,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-02 11:09:31',1,NULL,-1234),(243,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-02 11:09:31',1,NULL,-1234),(244,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-02 11:09:31',1,NULL,-1234),(245,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-02 11:09:32',1,NULL,-1234),(246,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-02 11:09:32',1,NULL,-1234),(247,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-02 11:09:32',1,NULL,-1234),(248,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-02 11:09:32',1,NULL,-1234),(249,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-02 11:09:32',1,NULL,-1234),(250,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-02 11:09:32',1,NULL,-1234),(251,'/_system/config/repository/connection/props','wso2.system.user','2016-03-03 04:16:05',1,NULL,-1234),(252,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-03 04:16:33',1,NULL,-1234),(253,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-03 04:16:33',1,NULL,-1234),(254,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-03 04:16:33',1,NULL,-1234),(255,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-03 04:16:33',1,NULL,-1234),(256,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-03 04:16:33',1,NULL,-1234),(257,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-03 04:16:33',1,NULL,-1234),(258,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-03 04:16:34',1,NULL,-1234),(259,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-03 04:16:34',1,NULL,-1234),(260,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-03 04:16:34',1,NULL,-1234),(261,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-03 04:16:34',1,NULL,-1234),(262,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-03 04:16:34',1,NULL,-1234),(263,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-03 04:16:34',1,NULL,-1234),(264,'/_system/config/repository/connection/props','wso2.system.user','2016-03-03 08:08:43',1,NULL,-1234),(265,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(266,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(267,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(268,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(269,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(270,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(271,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(272,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(273,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-03 08:09:01',1,NULL,-1234),(274,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-03 08:09:02',1,NULL,-1234),(275,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-03 08:09:02',1,NULL,-1234),(276,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-03 08:09:02',1,NULL,-1234),(277,'/_system/config/repository/connection/props','wso2.system.user','2016-03-03 08:24:06',1,NULL,-1234),(278,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-03 08:24:26',1,NULL,-1234),(279,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-03 08:24:26',1,NULL,-1234),(280,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(281,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(282,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(283,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(284,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(285,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(286,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(287,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(288,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(289,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-03 08:24:27',1,NULL,-1234),(290,'/_system/config/repository/connection/props','wso2.system.user','2016-03-03 08:34:03',1,NULL,-1234),(291,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-03 08:34:19',1,NULL,-1234),(292,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-03 08:34:19',1,NULL,-1234),(293,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-03 08:34:19',1,NULL,-1234),(294,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-03 08:34:19',1,NULL,-1234),(295,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-03 08:34:19',1,NULL,-1234),(296,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(297,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(298,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(299,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(300,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(301,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(302,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-03 08:34:20',1,NULL,-1234),(303,'/_system/config/repository/connection/props','wso2.system.user','2016-03-03 08:41:54',1,NULL,-1234),(304,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2016-03-03 08:42:10',1,NULL,-1234),(305,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(306,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(307,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(308,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(309,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(310,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(311,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(312,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(313,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(314,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2016-03-03 08:42:11',1,NULL,-1234),(315,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2016-03-03 08:42:12',1,NULL,-1234);
/*!40000 ALTER TABLE `REG_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PATH`
--

DROP TABLE IF EXISTS `REG_PATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PATH` (
  `REG_PATH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_VALUE` varchar(750) NOT NULL,
  `REG_PATH_PARENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_PATH_IND_BY_PATH_VALUE` (`REG_PATH_VALUE`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_PATH_IND_BY_PATH_PARENT_ID` (`REG_PATH_PARENT_ID`,`REG_TENANT_ID`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PATH`
--

LOCK TABLES `REG_PATH` WRITE;
/*!40000 ALTER TABLE `REG_PATH` DISABLE KEYS */;
INSERT INTO `REG_PATH` VALUES (1,'/',-1,-1234),(2,'/_system',1,-1234),(3,'/_system/config',2,-1234),(4,'/_system/config/repository',3,-1234),(5,'/_system/config/repository/components',4,-1234),(6,'/_system/config/repository/components/org.wso2.carbon.governance',5,-1234),(7,'/_system/config/repository/components/org.wso2.carbon.governance/media-types',6,-1234),(8,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index',7,-1234),(9,'/_system/config/users',3,-1234),(10,'/_system/governance',2,-1234),(11,'/_system/governance/trunk',10,-1234),(12,'/_system/governance/trunk/services',11,-1234),(13,'/_system/config/repository/components/org.wso2.carbon.governance/configuration',6,-1234),(14,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services',13,-1234),(15,'/_system/config/repository/components/org.wso2.carbon.identity.mgt',5,-1234),(16,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection',15,-1234),(17,'/_system/config/repository/components/org.wso2.carbon.security.mgt',5,-1234),(18,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy',17,-1234),(19,'/_system/governance/repository',10,-1234),(20,'/_system/governance/repository/security',19,-1234),(21,'/_system/governance/repository/security/key-stores',20,-1234),(22,'/_system/governance/permission',10,-1234),(23,'/_system/governance/permission/admin',22,-1234),(24,'/_system/governance/permission/admin/login',23,-1234),(25,'/_system/governance/permission/admin/configure',23,-1234),(26,'/_system/governance/permission/admin/configure/security',25,-1234),(27,'/_system/governance/permission/admin/configure/security/usermgt',26,-1234),(28,'/_system/governance/permission/admin/configure/security/usermgt/profiles',27,-1234),(29,'/_system/governance/permission/admin/configure/security/usermgt/users',27,-1234),(30,'/_system/governance/permission/admin/configure/security/usermgt/passwords',27,-1234),(31,'/_system/governance/permission/admin/manage',23,-1234),(32,'/_system/governance/permission/admin/manage/modify',31,-1234),(33,'/_system/governance/permission/protected',22,-1234),(34,'/_system/governance/permission/admin/monitor',23,-1234),(35,'/_system/governance/permission/admin/manage/add',31,-1234),(36,'/_system/governance/permission/admin/manage/add/webapp',35,-1234),(37,'/_system/governance/permission/admin/manage/modify/webapp',32,-1234),(38,'/_system/governance/permission/admin/manage/attachment',31,-1234),(39,'/_system/governance/permission/admin/monitor/attachment',34,-1234),(40,'/_system/governance/permission/admin/manage/bpel',31,-1234),(41,'/_system/governance/permission/admin/manage/bpel/processes',40,-1234),(42,'/_system/governance/permission/admin/manage/bpel/instances',40,-1234),(43,'/_system/governance/permission/admin/manage/bpel/packages',40,-1234),(44,'/_system/governance/permission/admin/monitor/bpel',34,-1234),(45,'/_system/governance/permission/admin/manage/bpel/add',40,-1234),(46,'/_system/governance/permission/admin/manage/topic',31,-1234),(47,'/_system/governance/permission/admin/manage/topic/addTopic',46,-1234),(48,'/_system/governance/permission/admin/manage/topic/browseTopic',46,-1234),(49,'/_system/governance/permission/admin/manage/topic/deleteTopic',46,-1234),(50,'/_system/governance/permission/admin/manage/topic/purgeTopic',46,-1234),(51,'/_system/governance/permission/protected/configure',33,-1234),(52,'/_system/governance/permission/protected/configure/components',51,-1234),(53,'/_system/governance/permission/admin/manage/humantask',31,-1234),(54,'/_system/governance/permission/admin/manage/humantask/task',53,-1234),(55,'/_system/governance/permission/admin/manage/humantask/packages',53,-1234),(56,'/_system/governance/permission/admin/manage/humantask/viewtasks',53,-1234),(57,'/_system/governance/permission/admin/manage/humantask/add',53,-1234),(58,'/_system/governance/permission/applications',22,-1234),(59,'/_system/governance/permission/admin/manage/identity',31,-1234),(60,'/_system/governance/permission/admin/configure/entitlement',25,-1234),(61,'/_system/governance/permission/admin/configure/entitlement/policy',60,-1234),(62,'/_system/governance/permission/admin/configure/entitlement/policy/view',61,-1234),(63,'/_system/governance/permission/admin/configure/entitlement/policy/publish',61,-1234),(64,'/_system/governance/permission/admin/configure/entitlement/policy/manage',61,-1234),(65,'/_system/governance/permission/admin/configure/entitlement/policy/manage/add',64,-1234),(66,'/_system/governance/permission/admin/configure/entitlement/policy/manage/edit',64,-1234),(67,'/_system/governance/permission/admin/configure/entitlement/policy/manage/delete',64,-1234),(68,'/_system/governance/permission/admin/configure/entitlement/policy/manage/rollback',64,-1234),(69,'/_system/governance/permission/admin/configure/entitlement/policy/manage/demote',64,-1234),(70,'/_system/governance/permission/admin/configure/entitlement/policy/manage/order',64,-1234),(71,'/_system/governance/permission/admin/configure/entitlement/policy/manage/enable',64,-1234),(72,'/_system/governance/permission/admin/configure/entitlement/policy/manage/test',64,-1234),(73,'/_system/governance/permission/admin/configure/entitlement/pdp',60,-1234),(74,'/_system/governance/permission/admin/configure/entitlement/pdp/manage',73,-1234),(75,'/_system/governance/permission/admin/configure/entitlement/pdp/view',73,-1234),(76,'/_system/governance/permission/admin/manage/identity/pep',59,-1234),(77,'/_system/governance/permission/admin/configure/security/usermgt/provisioning',27,-1234),(78,'/_system/governance/permission/admin/manage/identity/user',59,-1234),(79,'/_system/governance/permission/admin/manage/identity/user/association',78,-1234),(80,'/_system/governance/permission/admin/manage/identity/user/association/create',79,-1234),(81,'/_system/governance/permission/admin/manage/identity/user/association/view',79,-1234),(82,'/_system/governance/permission/admin/manage/identity/user/association/update',79,-1234),(83,'/_system/governance/permission/admin/manage/identity/user/association/delete',79,-1234),(84,'/_system/governance/permission/admin/manage/modify/user-profile',32,-1234),(85,'/_system/governance/permission/admin/manage/identity/workflow',59,-1234),(86,'/_system/governance/permission/admin/manage/identity/workflow/profile',85,-1234),(87,'/_system/governance/permission/admin/manage/identity/workflow/profile/create',86,-1234),(88,'/_system/governance/permission/admin/manage/identity/workflow/profile/view',86,-1234),(89,'/_system/governance/permission/admin/manage/identity/workflow/profile/update',86,-1234),(90,'/_system/governance/permission/admin/manage/identity/workflow/profile/delete',86,-1234),(91,'/_system/governance/permission/admin/manage/identity/workflow/definition',85,-1234),(92,'/_system/governance/permission/admin/manage/identity/workflow/definition/create',91,-1234),(93,'/_system/governance/permission/admin/manage/identity/workflow/definition/view',91,-1234),(94,'/_system/governance/permission/admin/manage/identity/workflow/definition/update',91,-1234),(95,'/_system/governance/permission/admin/manage/identity/workflow/definition/delete',91,-1234),(96,'/_system/governance/permission/admin/manage/identity/workflow/association',85,-1234),(97,'/_system/governance/permission/admin/manage/identity/workflow/association/create',96,-1234),(98,'/_system/governance/permission/admin/manage/identity/workflow/association/view',96,-1234),(99,'/_system/governance/permission/admin/manage/identity/workflow/association/update',96,-1234),(100,'/_system/governance/permission/admin/manage/identity/workflow/association/delete',96,-1234),(101,'/_system/governance/permission/admin/manage/identity/workflow/monitor',85,-1234),(102,'/_system/governance/permission/admin/manage/identity/workflow/monitor/view',101,-1234),(103,'/_system/governance/permission/admin/manage/identity/workflow/monitor/delete',101,-1234),(104,'/_system/governance/permission/protected/configure/logging',51,-1234),(105,'/_system/governance/permission/admin/monitor/logging',34,-1234),(106,'/_system/governance/permission/admin/monitor/metrics',34,-1234),(107,'/_system/governance/permission/admin/manage/modify/module',32,-1234),(108,'/_system/governance/permission/admin/manage/add/module',35,-1234),(109,'/_system/governance/permission/admin/configure/datasources',25,-1234),(110,'/_system/governance/permission/admin/manage/resources',31,-1234),(111,'/_system/governance/permission/admin/manage/resources/browse',110,-1234),(112,'/_system/governance/permission/admin/manage/resources/notifications',110,-1234),(113,'/_system/governance/permission/admin/manage/extensions',31,-1234),(114,'/_system/governance/permission/admin/manage/extensions/add',113,-1234),(115,'/_system/governance/permission/admin/manage/extensions/list',113,-1234),(116,'/_system/governance/permission/admin/manage/search',31,-1234),(117,'/_system/governance/permission/admin/manage/search/resources',116,-1234),(118,'/_system/governance/permission/admin/manage/search/advanced-search',116,-1234),(119,'/_system/governance/permission/protected/server-admin',33,-1234),(120,'/_system/governance/permission/protected/server-admin/homepage',119,-1234),(121,'/_system/governance/permission/admin/manage/add/service',35,-1234),(122,'/_system/governance/permission/admin/manage/modify/service',32,-1234),(123,'/_system/governance/permission/protected/manage',33,-1234),(124,'/_system/governance/permission/protected/manage/monitor',123,-1234),(125,'/_system/governance/permission/protected/manage/monitor/tenants',124,-1234),(126,'/_system/governance/permission/protected/manage/modify',123,-1234),(127,'/_system/governance/permission/protected/manage/modify/tenants',126,-1234),(128,'/_system/governance/permission/protected/manage/monitor/tenants/list',125,-1234),(129,'/_system/governance/permission/admin/configure/theme',25,-1234),(130,'/_system/config/repository/transports',4,-1234),(131,'/_system/config/repository/transports/https',130,-1234),(132,'/_system/config/repository/transports/http',130,-1234),(133,'/_system/config/repository/transports/local',130,-1234),(134,'/_system/config/repository/connection',4,-1234),(135,'/_system/governance/repository/components',19,-1234),(136,'/_system/governance/repository/components/org.wso2.carbon.user.mgt',135,-1234),(137,'/_system/governance/event',10,-1234),(138,'/_system/governance/event/topics',137,-1234),(139,'/_system/config/repository/components/org.wso2.carbon.logging',5,-1234),(140,'/_system/governance/repository/components/org.wso2.carbon.all-themes',135,-1234),(141,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default',140,-1234),(142,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images',141,-1234),(143,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin',141,-1234);
/*!40000 ALTER TABLE `REG_PATH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PROPERTY`
--

DROP TABLE IF EXISTS `REG_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PROPERTY` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_NAME` varchar(100) NOT NULL,
  `REG_VALUE` varchar(1000) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PROPERTY`
--

LOCK TABLES `REG_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_PROPERTY` DISABLE KEYS */;
INSERT INTO `REG_PROPERTY` VALUES (1,'vcs','text/x-vcalendar',-1234),(2,'ppm','image/x-portable-pixmap',-1234),(3,'cmdf','chemical/x-cmdf',-1234),(4,'class','application/java-vm',-1234),(5,'mesh','model/mesh',-1234),(6,'svg','image/svg+xml',-1234),(7,'323','text/h323',-1234),(8,'frame','application/x-maker',-1234),(9,'vcf','text/x-vcard',-1234),(10,'wmlsc','application/vnd.wap.wmlscriptc',-1234),(11,'hpp','text/x-c++hdr',-1234),(12,'vcd','application/x-cdlink',-1234),(13,'cpio','application/x-cpio',-1234),(14,'wz','application/x-wingz',-1234),(15,'pot','text/plain',-1234),(16,'bpel','application/vnd.wso2.bpel+xml',-1234),(17,'wm','video/x-ms-wm',-1234),(18,'wk','application/x-123',-1234),(19,'mif','application/x-mif',-1234),(20,'mid','audio/midi',-1234),(21,'iii','application/x-iphone',-1234),(22,'fch','chemical/x-gaussian-checkpoint',-1234),(23,'sty','text/x-tex',-1234),(24,'dot','application/msword',-1234),(25,'stw','application/vnd.sun.xml.writer.template',-1234),(26,'pnm','image/x-portable-anymap',-1234),(27,'stl','application/vnd.ms-pki.stl',-1234),(28,'ott','application/vnd.oasis.opendocument.text-template',-1234),(29,'ots','application/vnd.oasis.opendocument.spreadsheet-template',-1234),(30,'sti','application/vnd.sun.xml.impress.template',-1234),(31,'aif','audio/x-aiff',-1234),(32,'otp','application/vnd.oasis.opendocument.presentation-template',-1234),(33,'png','image/png',-1234),(34,'doc','application/msword',-1234),(35,'diff','text/plain',-1234),(36,'val','chemical/x-ncbi-asn1-binary',-1234),(37,'std','application/vnd.sun.xml.draw.template',-1234),(38,'ras','image/x-cmu-raster',-1234),(39,'stc','application/vnd.sun.xml.calc.template',-1234),(40,'rar','application/rar',-1234),(41,'oth','application/vnd.oasis.opendocument.text-web',-1234),(42,'otg','application/vnd.oasis.opendocument.graphics-template',-1234),(43,'xml','application/xml',-1234),(44,'cub','chemical/x-gaussian-cube',-1234),(45,'ram','audio/x-pn-realaudio',-1234),(46,'udeb','application/x-debian-package',-1234),(47,'csml','chemical/x-csml',-1234),(48,'ctx','chemical/x-ctx',-1234),(49,'jar','application/java-archive',-1234),(50,'wsc','text/scriptlet',-1234),(51,'svgz','image/svg+xml',-1234),(52,'torrent','application/x-bittorrent',-1234),(53,'igs','model/iges',-1234),(54,'xlt','application/vnd.ms-excel',-1234),(55,'xls','application/vnd.ms-excel',-1234),(56,'jad','text/vnd.sun.j2me.app-descriptor',-1234),(57,'bat','application/x-msdos-program',-1234),(58,'ksp','application/x-kspread',-1234),(59,'dms','application/x-dms',-1234),(60,'mmod','chemical/x-macromodel-input',-1234),(61,'wrl','x-world/x-vrml',-1234),(62,'bak','application/x-trash',-1234),(63,'xlb','application/vnd.ms-excel',-1234),(64,'pls','audio/x-scpls',-1234),(65,'csv','text/comma-separated-values',-1234),(66,'mopcrt','chemical/x-mopac-input',-1234),(67,'gsm','audio/x-gsm',-1234),(68,'ts','text/texmacs',-1234),(69,'css','text/css',-1234),(70,'tr','application/x-troff',-1234),(71,'rxt','application/vnd.wso2.registry-ext-type+xml',-1234),(72,'c++','text/x-c++src',-1234),(73,'dmg','application/x-apple-diskimage',-1234),(74,'gsf','application/x-font',-1234),(75,'tm','text/texmacs',-1234),(76,'csm','chemical/x-csml',-1234),(77,'tk','text/x-tcl',-1234),(78,'rxn','chemical/x-mdl-rxnfile',-1234),(79,'djvu','image/vnd.djvu',-1234),(80,'src','application/x-wais-source',-1234),(81,'csh','text/x-csh',-1234),(82,'csf','chemical/x-cache-csf',-1234),(83,'sw','chemical/x-swissprot',-1234),(84,'crt','application/x-x509-ca-cert',-1234),(85,'dll','application/x-msdos-program',-1234),(86,'m4a','audio/mpeg',-1234),(87,'sql','text/plain',-1234),(88,'crl','application/x-pkcs7-crl',-1234),(89,'wadl','application/vnd.sun.wadl+xml',-1234),(90,'cache','chemical/x-cache',-1234),(91,'sh','text/x-sh',-1234),(92,'m3u','audio/x-mpegurl',-1234),(93,'sd','chemical/x-mdl-sdfile',-1234),(94,'silo','model/mesh',-1234),(95,'ief','image/ief',-1234),(96,'pcf.Z','application/x-font',-1234),(97,'nwc','application/x-nwc',-1234),(98,'wpd','application/wordperfect',-1234),(99,'spl','application/x-futuresplash',-1234),(100,'rm','audio/x-pn-realaudio',-1234),(101,'spc','chemical/x-galactic-spc',-1234),(102,'kpt','application/x-kpresenter',-1234),(103,'bcpio','application/x-bcpio',-1234),(104,'kpr','application/x-kpresenter',-1234),(105,'mdb','application/msaccess',-1234),(106,'rd','chemical/x-mdl-rdfile',-1234),(107,'ra','audio/x-realaudio',-1234),(108,'php3p','application/x-httpd-php3-preprocessed',-1234),(109,'djv','image/vnd.djvu',-1234),(110,'gpt','chemical/x-mopac-graph',-1234),(111,'qt','video/quicktime',-1234),(112,'icz','text/calendar',-1234),(113,'cpt','image/x-corelphotopaint',-1234),(114,'tif','image/tiff',-1234),(115,'cpp','text/x-c++src',-1234),(116,'mcm','chemical/x-macmolecule',-1234),(117,'ics','text/calendar',-1234),(118,'xht','application/xhtml+xml',-1234),(119,'ico','image/x-icon',-1234),(120,'sv4crc','application/x-sv4crc',-1234),(121,'p7r','application/x-pkcs7-certreqresp',-1234),(122,'wp5','application/wordperfect5.1',-1234),(123,'cpa','chemical/x-compass',-1234),(124,'hin','chemical/x-hin',-1234),(125,'ice','x-conference/x-cooltalk',-1234),(126,'dir','application/x-director',-1234),(127,'ica','application/x-ica',-1234),(128,'py','text/x-python',-1234),(129,'jpeg','image/jpeg',-1234),(130,'pht','application/x-httpd-php',-1234),(131,'rtx','text/richtext',-1234),(132,'php','application/x-httpd-php',-1234),(133,'ps','application/postscript',-1234),(134,'dif','video/dv',-1234),(135,'lhs','text/x-literate-haskell',-1234),(136,'pm','text/x-perl',-1234),(137,'com','application/x-msdos-program',-1234),(138,'pl','text/x-perl',-1234),(139,'pk','application/x-tex-pk',-1234),(140,'snd','audio/basic',-1234),(141,'wmz','application/x-ms-wmz',-1234),(142,'smil','application/smil',-1234),(143,'tgz','application/x-gtar',-1234),(144,'wmx','video/x-ms-wmx',-1234),(145,'wmv','video/x-ms-wmv',-1234),(146,'cod','application/vnd.rim.cod',-1234),(147,'rtf','text/rtf',-1234),(148,'abw','application/x-abiword',-1234),(149,'lha','application/x-lha',-1234),(150,'wml','text/vnd.wap.wml',-1234),(151,'gamin','chemical/x-gamess-input',-1234),(152,'ctab','chemical/x-cactvs-binary',-1234),(153,'pgp','application/pgp-signature',-1234),(154,'tgf','chemical/x-mdl-tgf',-1234),(155,'xhtml','application/xhtml+xml',-1234),(156,'pgn','application/x-chess-pgn',-1234),(157,'wmd','application/x-ms-wmd',-1234),(158,'pgm','image/x-portable-graymap',-1234),(159,'man','application/x-troff-man',-1234),(160,'rss','application/rss+xml',-1234),(161,'wma','audio/x-ms-wma',-1234),(162,'smi','application/smil',-1234),(163,'smf','application/vnd.stardivision.math',-1234),(164,'vsd','application/vnd.visio',-1234),(165,'latex','application/x-latex',-1234),(166,'vrml','x-world/x-vrml',-1234),(167,'embl','chemical/x-embl-dl-nucleotide',-1234),(168,'cascii','chemical/x-cactvs-binary',-1234),(169,'vrm','x-world/x-vrml',-1234),(170,'cml','chemical/x-cml',-1234),(171,'iges','model/iges',-1234),(172,'tex','text/x-tex',-1234),(173,'pfb','application/x-font',-1234),(174,'pfa','application/x-font',-1234),(175,'nc','application/x-netcdf',-1234),(176,'nb','application/mathematica',-1234),(177,'mxu','video/vnd.mpegurl',-1234),(178,'old','application/x-trash',-1234),(179,'java','text/x-java',-1234),(180,'bsd','chemical/x-crossfire',-1234),(181,'skt','application/x-koan',-1234),(182,'skp','application/x-koan',-1234),(183,'cls','text/x-tex',-1234),(184,'ms','application/x-troff-ms',-1234),(185,'skm','application/x-koan',-1234),(186,'mpega','audio/mpeg',-1234),(187,'frm','application/x-maker',-1234),(188,'mm','application/x-freemind',-1234),(189,'skd','application/x-koan',-1234),(190,'me','application/x-troff-me',-1234),(191,'wbxml','application/vnd.wap.wbxml',-1234),(192,'exe','application/x-msdos-program',-1234),(193,'xslt','application/xml',-1234),(194,'deb','application/x-debian-package',-1234),(195,'pdf','application/pdf',-1234),(196,'rpm','application/x-redhat-package-manager',-1234),(197,'pdb','chemical/x-pdb',-1234),(198,'pcx','image/pcx',-1234),(199,'xcf','application/x-xcf',-1234),(200,'sit','application/x-stuffit',-1234),(201,'tcl','text/x-tcl',-1234),(202,'sis','application/vnd.symbian.install',-1234),(203,'vor','application/vnd.stardivision.writer',-1234),(204,'hdf','application/x-hdf',-1234),(205,'xtel','chemical/x-xtel',-1234),(206,'jnlp','application/x-java-jnlp-file',-1234),(207,'jpg','image/jpeg',-1234),(208,'ros','chemical/x-rosdal',-1234),(209,'sik','application/x-trash',-1234),(210,'jpe','image/jpeg',-1234),(211,'gjf','chemical/x-gaussian-input',-1234),(212,'mvb','chemical/x-mopac-vib',-1234),(213,'gjc','chemical/x-gaussian-input',-1234),(214,'pcf','application/x-font',-1234),(215,'sid','audio/prs.sid',-1234),(216,'xbm','image/x-xbitmap',-1234),(217,'kin','chemical/x-kinemage',-1234),(218,'kil','application/x-killustrator',-1234),(219,'dcr','application/x-director',-1234),(220,'avi','video/x-msvideo',-1234),(221,'js','application/x-javascript',-1234),(222,'pbm','image/x-portable-bitmap',-1234),(223,'gif','image/gif',-1234),(224,'cbin','chemical/x-cactvs-binary',-1234),(225,'xpdl','application/vnd.wso2.xpdl+xml',-1234),(226,'taz','application/x-gtar',-1234),(227,'boo','text/x-boo',-1234),(228,'cif','chemical/x-cif',-1234),(229,'zmt','chemical/x-mopac-input',-1234),(230,'wbmp','image/vnd.wap.wbmp',-1234),(231,'qtl','application/x-quicktimeplayer',-1234),(232,'tar','application/x-tar',-1234),(233,'lzx','application/x-lzx',-1234),(234,'gnumeric','application/x-gnumeric',-1234),(235,'xyz','chemical/x-xyz',-1234),(236,'vms','chemical/x-vamas-iso14976',-1234),(237,'pat','image/x-coreldrawpattern',-1234),(238,'pas','text/x-pascal',-1234),(239,'midi','audio/midi',-1234),(240,'maker','application/x-maker',-1234),(241,'etx','text/x-setext',-1234),(242,'jng','image/x-jng',-1234),(243,'sgl','application/vnd.stardivision.writer-global',-1234),(244,'chm','chemical/x-chemdraw',-1234),(245,'aiff','audio/x-aiff',-1234),(246,'lzh','application/x-lzh',-1234),(247,'sgf','application/x-go-sgf',-1234),(248,'vmd','chemical/x-vmd',-1234),(249,'aifc','audio/x-aiff',-1234),(250,'pac','application/x-ns-proxy-autoconfig',-1234),(251,'jmz','application/x-jmol',-1234),(252,'ogg','application/ogg',-1234),(253,'fbdoc','application/x-maker',-1234),(254,'dat','chemical/x-mopac-input',-1234),(255,'pyo','application/x-python-code',-1234),(256,'tiff','image/tiff',-1234),(257,'ist','chemical/x-isostar',-1234),(258,'msi','application/x-msi',-1234),(259,'hs','text/x-haskell',-1234),(260,'msh','model/mesh',-1234),(261,'isp','application/x-internet-signup',-1234),(262,'iso','application/x-iso9660-image',-1234),(263,'pyc','application/x-python-code',-1234),(264,'html','text/html',-1234),(265,'txt','text/plain',-1234),(266,'wsdl','application/wsdl+xml',-1234),(267,'asx','video/x-ms-asf',-1234),(268,'hh','text/x-c++hdr',-1234),(269,'bmp','image/x-ms-bmp',-1234),(270,'aso','chemical/x-ncbi-asn1-binary',-1234),(271,'asn','chemical/x-ncbi-asn1-spec',-1234),(272,'ser','application/java-serialized-object',-1234),(273,'chrt','application/x-kchart',-1234),(274,'asf','video/x-ms-asf',-1234),(275,'hxx','text/x-c++hdr',-1234),(276,'asc','text/plain',-1234),(277,'gl','video/gl',-1234),(278,'key','application/pgp-keys',-1234),(279,'fli','video/fli',-1234),(280,'gf','application/x-tex-gf',-1234),(281,'art','image/x-jg',-1234),(282,'xwd','image/x-xwindowdump',-1234),(283,'dxr','application/x-director',-1234),(284,'shtml','text/html',-1234),(285,'bpmn','application/vnd.wso2.bpmn+xml',-1234),(286,'sdw','application/vnd.stardivision.writer',-1234),(287,'mpga','audio/mpeg',-1234),(288,'gen','chemical/x-genbank',-1234),(289,'sdp','application/vnd.stardivision.impress',-1234),(290,'cer','chemical/x-cerius',-1234),(291,'odt','application/vnd.oasis.opendocument.text',-1234),(292,'ods','application/vnd.oasis.opendocument.spreadsheet',-1234),(293,'fm','application/x-maker',-1234),(294,'odp','application/vnd.oasis.opendocument.presentation',-1234),(295,'sdf','chemical/x-mdl-sdfile',-1234),(296,'odm','application/vnd.oasis.opendocument.text-master',-1234),(297,'sdd','application/vnd.stardivision.impress',-1234),(298,'sdc','application/vnd.stardivision.calc',-1234),(299,'cef','chemical/x-cxf',-1234),(300,'sda','application/vnd.stardivision.draw',-1234),(301,'odi','application/vnd.oasis.opendocument.image',-1234),(302,'odg','application/vnd.oasis.opendocument.graphics',-1234),(303,'fb','application/x-maker',-1234),(304,'odf','application/vnd.oasis.opendocument.formula',-1234),(305,'texinfo','application/x-texinfo',-1234),(306,'zip','application/zip',-1234),(307,'odc','application/vnd.oasis.opendocument.chart',-1234),(308,'odb','application/vnd.oasis.opendocument.database',-1234),(309,'oda','application/oda',-1234),(310,'ez','application/andrew-inset',-1234),(311,'sct','text/scriptlet',-1234),(312,'cdy','application/vnd.cinderella',-1234),(313,'cdx','chemical/x-cdx',-1234),(314,'cdt','image/x-coreldrawtemplate',-1234),(315,'c3d','chemical/x-chem3d',-1234),(316,'mpg','video/mpeg',-1234),(317,'cdr','image/x-coreldraw',-1234),(318,'mpe','video/mpeg',-1234),(319,'mpc','chemical/x-mopac-input',-1234),(320,'istr','chemical/x-isostar',-1234),(321,'eps','application/postscript',-1234),(322,'rhtml','application/x-httpd-eruby',-1234),(323,'xul','application/vnd.mozilla.xul+xml',-1234),(324,'cdf','application/x-cdf',-1234),(325,'mov','video/quicktime',-1234),(326,'mpeg','video/mpeg',-1234),(327,'mop','chemical/x-mopac-input',-1234),(328,'ustar','application/x-ustar',-1234),(329,'moo','chemical/x-mopac-out',-1234),(330,'dvi','application/x-dvi',-1234),(331,'roff','application/x-troff',-1234),(332,'dx','chemical/x-jcamp-dx',-1234),(333,'mol','chemical/x-mdl-molfile',-1234),(334,'dv','video/dv',-1234),(335,'sd2','audio/x-sd2',-1234),(336,'gcg','chemical/x-gcg8-sequence',-1234),(337,'gcf','application/x-graphing-calculator',-1234),(338,'moc','text/x-moc',-1234),(339,'gcd','text/x-pcs-gcd',-1234),(340,'dl','video/dl',-1234),(341,'fig','application/x-xfig',-1234),(342,'wax','audio/x-ms-wax',-1234),(343,'bin','application/octet-stream',-1234),(344,'wav','audio/x-wav',-1234),(345,'mol2','chemical/x-mol2',-1234),(346,'phps','application/x-httpd-php-source',-1234),(347,'mp4','video/mp4',-1234),(348,'~','application/x-trash',-1234),(349,'mp3','audio/mpeg',-1234),(350,'ltx','text/x-tex',-1234),(351,'mp2','audio/mpeg',-1234),(352,'bib','text/x-bibtex',-1234),(353,'fchk','chemical/x-gaussian-checkpoint',-1234),(354,'wmls','text/vnd.wap.wmlscript',-1234),(355,'cu','application/cu-seeme',-1234),(356,'ins','application/x-internet-signup',-1234),(357,'t','application/x-troff',-1234),(358,'mng','video/x-mng',-1234),(359,'inp','chemical/x-gamess-input',-1234),(360,'wad','application/x-doom',-1234),(361,'p','text/x-pascal',-1234),(362,'o','application/x-object',-1234),(363,'ent','chemical/x-pdb',-1234),(364,'tsv','text/tab-separated-values',-1234),(365,'flac','application/x-flac',-1234),(366,'sv4cpio','application/x-sv4cpio',-1234),(367,'xsl','application/xml',-1234),(368,'h','text/x-chdr',-1234),(369,'htm','text/html',-1234),(370,'wmlc','application/vnd.wap.wmlc',-1234),(371,'tsp','application/dsptype',-1234),(372,'kar','audio/midi',-1234),(373,'oza','application/x-oz-application',-1234),(374,'d','text/x-dsrc',-1234),(375,'cc','text/x-c++src',-1234),(376,'xsd','application/x-xsd+xml',-1234),(377,'c','text/x-csrc',-1234),(378,'b','chemical/x-molconn-Z',-1234),(379,'rgb','image/x-rgb',-1234),(380,'gau','chemical/x-gaussian-input',-1234),(381,'htc','text/x-component',-1234),(382,'lsx','video/x-la-asf',-1234),(383,'gar','application/vnd.wso2.governance-archive',-1234),(384,'hta','application/hta',-1234),(385,'mml','text/mathml',-1234),(386,'gam','chemical/x-gamess-input',-1234),(387,'book','application/x-maker',-1234),(388,'gal','chemical/x-gaussian-log',-1234),(389,'cat','application/vnd.ms-pki.seccat',-1234),(390,'uls','text/iuls',-1234),(391,'mmf','application/vnd.smaf',-1234),(392,'psd','image/x-photoshop',-1234),(393,'mmd','chemical/x-macromodel-input',-1234),(394,'h++','text/x-c++hdr',-1234),(395,'movie','video/x-sgi-movie',-1234),(396,'lsf','video/x-la-asf',-1234),(397,'text','text/plain',-1234),(398,'sxw','application/vnd.sun.xml.writer',-1234),(399,'jrxml','application/xml',-1234),(400,'cac','chemical/x-cache',-1234),(401,'prt','chemical/x-ncbi-asn1-ascii',-1234),(402,'php4','application/x-httpd-php4',-1234),(403,'phtml','application/x-httpd-php',-1234),(404,'php3','application/x-httpd-php3',-1234),(405,'shar','application/x-shar',-1234),(406,'texi','application/x-texinfo',-1234),(407,'mcif','chemical/x-mmcif',-1234),(408,'emb','chemical/x-embl-dl-nucleotide',-1234),(409,'sxm','application/vnd.sun.xml.math',-1234),(410,'sxi','application/vnd.sun.xml.impress',-1234),(411,'au','audio/basic',-1234),(412,'sxg','application/vnd.sun.xml.writer.global',-1234),(413,'swfl','application/x-shockwave-flash',-1234),(414,'prf','application/pics-rules',-1234),(415,'sxd','application/vnd.sun.xml.draw',-1234),(416,'sxc','application/vnd.sun.xml.calc',-1234),(417,'ai','application/postscript',-1234),(418,'%','application/x-trash',-1234),(419,'cxx','text/x-c++src',-1234),(420,'swf','application/x-shockwave-flash',-1234),(421,'alc','chemical/x-alchemy',-1234),(422,'hqx','application/mac-binhex40',-1234),(423,'gtar','application/x-gtar',-1234),(424,'wvx','video/x-ms-wvx',-1234),(425,'kwt','application/x-kword',-1234),(426,'cxf','chemical/x-cxf',-1234),(427,'xpm','image/x-xpixmap',-1234),(428,'xpi','application/x-xpinstall',-1234),(429,'jdx','chemical/x-jcamp-dx',-1234),(430,'rdf','application/rdf+xml',-1234),(431,'ppt','application/vnd.ms-powerpoint',-1234),(432,'pps','application/vnd.ms-powerpoint',-1234),(433,'kwd','application/x-kword',-1234),(434,'profiles','application/vnd.wso2-profiles+xml',-1234),(435,'question','City where you were born ?',-1234),(436,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(437,'isPromoteQuestion','true',-1234),(438,'question','Father\'s middle name ?',-1234),(439,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(440,'isPromoteQuestion','true',-1234),(441,'question','Favorite food ?',-1234),(442,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(443,'isPromoteQuestion','true',-1234),(444,'question','Favorite vacation location ?',-1234),(445,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(446,'isPromoteQuestion','true',-1234),(447,'question','Model of your first car ?',-1234),(448,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(449,'isPromoteQuestion','true',-1234),(450,'question','Name of the hospital where you were born ?',-1234),(451,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(452,'isPromoteQuestion','true',-1234),(453,'question','Name of your first pet ?',-1234),(454,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(455,'isPromoteQuestion','true',-1234),(456,'question','Favorite sport ?',-1234),(457,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(458,'isPromoteQuestion','true',-1234),(459,'name','Login',-1234),(460,'name','Profile Management',-1234),(461,'name','User Management',-1234),(462,'name','Password Management',-1234),(463,'name','Admin Permissions',-1234),(464,'name','Configure',-1234),(465,'name','Security',-1234),(466,'name','All Permissions',-1234),(467,'name','Super Admin Permissions',-1234),(468,'name','Identity Management',-1234),(469,'name','Manage',-1234),(470,'name','Configure',-1234),(471,'name','Monitor',-1234),(472,'name','Add',-1234),(473,'name','Webapps',-1234),(474,'name','Webapps',-1234),(475,'name','Attachment',-1234),(476,'name','Monitor BPEL',-1234),(477,'name','BPEL',-1234),(478,'name','Manage BPEL Processes',-1234),(479,'name','Manage BPEL Process Instances',-1234),(480,'name','Manage BPEL Packages',-1234),(481,'name','Monitor BPEL',-1234),(482,'name','Add BPEL',-1234),(483,'name','Topic',-1234),(484,'name','Add Topic/SubTopic',-1234),(485,'name','Browse Topic',-1234),(486,'name','Delete Topic',-1234),(487,'name','Purge Topic',-1234),(488,'name','Configure',-1234),(489,'name','Feature Management',-1234),(490,'name','HumanTask',-1234),(491,'name','Manage HumanTasks',-1234),(492,'name','Manage HumanTask Packages',-1234),(493,'name','View Task List',-1234),(494,'name','Add HumanTask',-1234),(495,'name','Applications',-1234),(496,'name','Identity',-1234),(497,'name','Entitlement',-1234),(498,'name','Policy',-1234),(499,'name','View',-1234),(500,'name','Publish',-1234),(501,'name','Manage',-1234),(502,'name','Add',-1234),(503,'name','Edit',-1234),(504,'name','Delete',-1234),(505,'name','Rollback',-1234),(506,'name','Demote',-1234),(507,'name','Order',-1234),(508,'name','Enable/Disable',-1234),(509,'name','Test',-1234),(510,'name','PDP',-1234),(511,'name','Manage',-1234),(512,'name','View',-1234),(513,'name','PEP',-1234),(514,'name','Identity Provisioning',-1234),(515,'name','User',-1234),(516,'name','Association',-1234),(517,'name','Create',-1234),(518,'name','View',-1234),(519,'name','Update',-1234),(520,'name','Delete',-1234),(521,'name','User Profile',-1234),(522,'name','Workflow Management',-1234),(523,'name','BPS Profiles',-1234),(524,'name','Create',-1234),(525,'name','View',-1234),(526,'name','Update',-1234),(527,'name','Delete',-1234),(528,'name','Workflows',-1234),(529,'name','Create',-1234),(530,'name','View',-1234),(531,'name','Update',-1234),(532,'name','Delete',-1234),(533,'name','Associations',-1234),(534,'name','Create',-1234),(535,'name','View',-1234),(536,'name','Update',-1234),(537,'name','Delete',-1234),(538,'name','Monitor',-1234),(539,'name','View',-1234),(540,'name','Delete',-1234),(541,'name','Logging',-1234),(542,'name','Logs',-1234),(543,'name','Metrics',-1234),(544,'name','Module',-1234),(545,'name','Module',-1234),(546,'name','Configure Data Sources',-1234),(547,'name','Resources',-1234),(548,'name','Browse',-1234),(549,'name','Notifications',-1234),(550,'name','Extensions',-1234),(551,'name','Add',-1234),(552,'name','List',-1234),(553,'name','Search',-1234),(554,'name','Basic',-1234),(555,'name','Advanced',-1234),(556,'name','Server Admin',-1234),(557,'name','Home Page',-1234),(558,'name','Services',-1234),(559,'name','Services',-1234),(560,'name','Manage',-1234),(561,'name','Monitor',-1234),(562,'name','Tenants',-1234),(563,'name','Modify',-1234),(564,'name','Tenants',-1234),(565,'name','List',-1234),(566,'name','Theme',-1234),(567,'Protocol.Name','https',-1234),(568,'Transport.Enabled','false',-1234),(569,'Protocol.Name','http',-1234),(570,'Transport.Enabled','false',-1234),(571,'Protocol.Name','local',-1234),(572,'Transport.Enabled','false',-1234),(573,'Protocol.Name','https',-1234),(574,'Transport.Enabled','false',-1234),(575,'Protocol.Name','http',-1234),(576,'Transport.Enabled','false',-1234),(577,'Protocol.Name','local',-1234),(578,'Transport.Enabled','false',-1234),(579,'bundleContext-root','/',-1234),(580,'host-name','localhost',-1234),(581,'service-path','services',-1234),(582,'timestamp','1456903391255',-1234),(583,'log4j.file.not.found','true',-1234),(584,'wso2carbon.system.log.last.modified','1456899070000',-1234),(585,'bundleContext-root','/',-1234),(586,'host-name','localhost',-1234),(587,'service-path','services',-1234),(588,'wso2carbon.system.log.pattern','[%d] %5p - %x %m {%c}%n',-1234),(589,'bundleContext-root','/',-1234),(590,'host-name','localhost',-1234),(591,'service-path','services',-1234),(592,'bundleContext-root','/',-1234),(593,'host-name','localhost',-1234),(594,'service-path','services',-1234),(595,'bundleContext-root','/',-1234),(596,'host-name','localhost',-1234),(597,'service-path','services',-1234),(598,'bundleContext-root','/',-1234),(599,'host-name','localhost',-1234),(600,'service-path','services',-1234),(601,'bundleContext-root','/',-1234),(602,'host-name','localhost',-1234),(603,'service-path','services',-1234),(604,'bundleContext-root','/',-1234),(605,'host-name','localhost',-1234),(606,'service-path','services',-1234),(607,'bundleContext-root','/',-1234),(608,'host-name','localhost',-1234),(609,'service-path','services',-1234);
/*!40000 ALTER TABLE `REG_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RATING`
--

DROP TABLE IF EXISTS `REG_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RATING` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_RATING` int(11) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_RATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RATING`
--

LOCK TABLES `REG_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE`
--

DROP TABLE IF EXISTS `REG_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL AUTO_INCREMENT,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_HISTORY_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE`
--

LOCK TABLES `REG_RESOURCE` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE` DISABLE KEYS */;
INSERT INTO `REG_RESOURCE` VALUES (1,NULL,1,NULL,'wso2.system.user','2016-03-02 07:22:47','wso2.system.user','2016-03-02 07:22:47',NULL,NULL,-1234,'a6cb04b3-6853-45c9-ac16-7830c338dcb7'),(2,NULL,2,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48',NULL,NULL,-1234,'9131d42a-14f6-4347-a69c-f96d2335a61a'),(3,NULL,3,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48',NULL,NULL,-1234,'0185cd8c-5c4f-4686-bc6d-b68f3007cf26'),(4,NULL,4,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48',NULL,NULL,-1234,'8317842c-19ec-4fd7-9b1d-00b2a7d92360'),(5,NULL,5,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48',NULL,NULL,-1234,'b8d5f389-75f1-4474-a2b1-8e9cfc49f591'),(6,NULL,6,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48',NULL,NULL,-1234,'784c3cb8-9b38-4dbc-9bf7-45dd66b90f70'),(7,NULL,7,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48','This collection lists the media types available on the Registry Server. Before changing an existing media type, please make sure to alter existing resources/collections and related configuration details.',NULL,-1234,'5249d9bc-e7cb-4e37-9bbc-2f532092841f'),(8,NULL,8,NULL,'wso2.system.user','2016-03-02 07:22:48','wso2.system.user','2016-03-02 07:22:48','This collection contains the media Types available for resources on the Registry. Add, Edit or Delete properties to Manage Media Types.',NULL,-1234,'61e09cd6-fc8f-4a8f-b369-17334f4752df'),(8,'custom.ui',9,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49','This resource contains the media Types associated with custom user interfaces on the Registry. Add, Edit or Delete properties to Manage Media Types.',NULL,-1234,'86a3070a-1f15-4ba6-aa20-a9e62d69bf09'),(8,'collection',10,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49','This resource contains the media Types associated with collections on the Registry. Add, Edit or Delete properties to Manage Media Types.',NULL,-1234,'571e6a05-d82e-4637-a1ab-5b923fc76825'),(9,NULL,11,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49','Collection which contains user-specific details.',NULL,-1234,'68a27c56-29b1-49ae-87a9-0e560df9e7a6'),(10,NULL,12,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49',NULL,NULL,-1234,'b4da934e-df06-4784-8a34-8c29bdf21a49'),(11,NULL,13,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49',NULL,NULL,-1234,'8d59d0ae-690c-4387-a89b-2cb08779398f'),(12,NULL,14,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49','Collection which contains all the Service information',NULL,-1234,'a85d577a-8a12-4ffe-bd95-a072eb27fe27'),(13,NULL,15,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49',NULL,NULL,-1234,'80c2e1b8-66bb-4611-ae35-c90d31b49faf'),(14,NULL,16,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49',NULL,NULL,-1234,'a3ff5c10-76f4-4351-a24a-ba3f858e506d'),(14,'service',17,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49',NULL,NULL,-1234,'3ea3c408-d030-4b0d-a8c1-2def31a3b458'),(14,'service-schema',18,NULL,'wso2.system.user','2016-03-02 07:22:49','wso2.system.user','2016-03-02 07:22:49',NULL,NULL,-1234,'aff978ef-f6a5-4255-8425-0f4bc372d63b'),(15,NULL,19,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'797faeb8-5a4d-426e-ba88-1c13c31bc9bf'),(16,NULL,20,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'15a6c72f-61d2-408b-8c8d-962203a3f8fd'),(16,'question0',21,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'814ed1a8-d130-4394-b4b7-74f7c0288180'),(16,'question1',22,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'ac08febc-168e-4494-b144-92432722f6a0'),(16,'question2',23,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'562633cd-719c-4bb4-bd21-172820178eee'),(16,'question3',24,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'f3cd48a6-7b2c-488a-8172-dc0e6ad84551'),(16,'question4',25,NULL,'wso2.system.user','2016-03-02 07:22:50','wso2.system.user','2016-03-02 07:22:50',NULL,NULL,-1234,'fabf532c-ea7d-4cdf-b099-f92c5d647907'),(16,'question5',26,NULL,'wso2.system.user','2016-03-02 07:22:51','wso2.system.user','2016-03-02 07:22:51',NULL,NULL,-1234,'821c2d32-e391-4e0d-8724-edb40f5d11e8'),(16,'question6',27,NULL,'wso2.system.user','2016-03-02 07:22:51','wso2.system.user','2016-03-02 07:22:51',NULL,NULL,-1234,'4add7ac3-f2ef-425e-93d2-cd56128732dc'),(16,'question7',28,NULL,'wso2.system.user','2016-03-02 07:22:51','wso2.system.user','2016-03-02 07:22:51',NULL,NULL,-1234,'0142f6a6-569b-4194-a702-24b6ec94cd84'),(17,NULL,29,NULL,'wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,NULL,-1234,'9d628f08-9b09-4ea2-b6d4-12e2273a0019'),(18,NULL,30,NULL,'wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,NULL,-1234,'e2feb6af-2ad0-4b50-8183-44e46d427ab6'),(18,'scenario1',31,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,1,-1234,'9a039d2d-b67a-4418-a02c-255f4a2a457b'),(18,'scenario2',32,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,2,-1234,'d3b9f888-b2fd-4e32-bef7-5ed06f536f77'),(18,'scenario3',33,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,3,-1234,'605ea258-07fd-44e3-b087-2c31b1adb5fe'),(18,'scenario4',34,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,4,-1234,'b4567540-acbb-4d5b-8928-bee27ee0ad38'),(18,'scenario5',35,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,5,-1234,'fa352fe4-1cfa-44a7-a06f-a02e08256b21'),(18,'scenario6',36,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,6,-1234,'35c7847a-ec37-4006-86f1-6538469e2dac'),(18,'scenario7',37,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,7,-1234,'17fefd23-00e0-4043-b72c-c93f1f0ac66e'),(18,'scenario8',38,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,8,-1234,'6ec9a9ac-7efc-4418-9208-57be17981c1d'),(18,'scenario9',39,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,9,-1234,'cb29d908-10ad-46a9-bb0f-b97a47281272'),(18,'scenario10',40,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,10,-1234,'31512c75-c792-4345-9e40-d43168ee2d04'),(18,'scenario11',41,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,11,-1234,'a5e0ca01-1f88-4c22-a876-e33fe86bc493'),(18,'scenario12',42,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,12,-1234,'d040f8a3-8a8e-4d66-bd74-81cd1f7da4a2'),(18,'scenario13',43,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,13,-1234,'4eeb65cc-a533-4284-9a97-84653e6f5894'),(18,'scenario14',44,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,14,-1234,'b7f09cf5-d838-47a8-9d45-358ecf2bc8ce'),(18,'scenario15',45,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,15,-1234,'436aae05-8fb2-427c-855c-56f552df2450'),(18,'scenario20',46,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,16,-1234,'e5dc062c-495d-4a6f-95f3-8a9dc20495ee'),(18,'scenario31',47,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,17,-1234,'fe583612-7f76-4abf-a9c7-8f2549aa710d'),(18,'scenario32',48,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,18,-1234,'efc1e481-2bf2-4e99-b196-065ec5ebe261'),(18,'scenario33',49,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,19,-1234,'9d0bc9fd-468a-4775-af64-81af456496db'),(18,'scenario34',50,'application/policy+xml','wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,20,-1234,'e4b2d36a-277e-401e-b452-7763b1e3bf52'),(19,NULL,51,NULL,'wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,NULL,-1234,'d1769aba-c970-42ae-90fd-1536c5e620b9'),(20,NULL,52,NULL,'wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,NULL,-1234,'3d8d560f-9857-4811-b8b9-82d20337c3ec'),(21,NULL,53,NULL,'wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,NULL,-1234,'ea34d825-88cc-484b-b10a-de13b685f3d0'),(21,'carbon-primary-ks',54,NULL,'wso2.system.user','2016-03-02 07:22:52','wso2.system.user','2016-03-02 07:22:52',NULL,NULL,-1234,'e41f363d-8671-4976-840d-1f87b7e63bc8'),(24,NULL,57,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:53',NULL,NULL,-1234,'80d54cc6-0c2b-4483-8f30-fddb01a9bb00'),(28,NULL,61,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:53',NULL,NULL,-1234,'b4d47955-71ca-41de-a5b8-762c9dfc1efe'),(29,NULL,62,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:53',NULL,NULL,-1234,'e99660eb-0fe2-4f70-876d-09b877be2eba'),(30,NULL,63,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:53',NULL,NULL,-1234,'492dbe78-1926-47aa-a89d-fa2c0a884905'),(23,NULL,64,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:53',NULL,NULL,-1234,'81f012bb-ca97-42ef-aaf6-b9ab45ba2d9f'),(32,NULL,66,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:53',NULL,NULL,-1234,'30e458bf-a02c-4b91-95ca-410eb8779b77'),(26,NULL,67,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'4ae86fca-5f81-45b7-a2ff-4b30540d7d75'),(22,NULL,68,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'648af40e-10fb-4a71-ad24-28ee97652967'),(33,NULL,69,NULL,'wso2.system.user','2016-03-02 07:22:54','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'bfbe393a-1f0d-48db-a0bd-15f9c57f4005'),(27,NULL,70,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'448326f1-4bcb-4802-b37d-fec4705edb0d'),(31,NULL,71,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'2296553b-2a87-4347-afcb-7fc94ce79618'),(25,NULL,72,NULL,'wso2.system.user','2016-03-02 07:22:53','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'f46b1b80-4bad-4a38-a73c-dfab6423275b'),(34,NULL,73,NULL,'wso2.system.user','2016-03-02 07:22:54','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'27eff97e-b1b9-4bec-a5c5-3ca7ed86dce6'),(35,NULL,74,NULL,'wso2.system.user','2016-03-02 07:22:54','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'ef342464-9d0f-409d-9752-34e096ae6acb'),(36,NULL,75,NULL,'wso2.system.user','2016-03-02 07:22:54','wso2.system.user','2016-03-02 07:22:54',NULL,NULL,-1234,'28a2114c-3c48-4ae0-836d-444d89a24f15'),(37,NULL,76,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'07810a95-00c8-451a-bb7f-3f1a56b030bb'),(38,NULL,77,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'ed80815d-2693-4121-ad58-fe983605edc4'),(39,NULL,78,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'631ec224-1fd0-4132-b0b8-599cd1a59324'),(40,NULL,79,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'78639348-d87c-41a7-8966-df172ab7106c'),(41,NULL,80,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'2eb5dff7-9fe0-4290-b79a-7eee6d80763a'),(42,NULL,81,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'2f4e2dfd-638f-48ba-8a95-f8604dd262fd'),(43,NULL,82,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'fbd1b303-3663-4b34-b492-5b9c2bee98c2'),(44,NULL,83,NULL,'wso2.system.user','2016-03-02 07:22:55','wso2.system.user','2016-03-02 07:22:55',NULL,NULL,-1234,'41854385-71b5-46c3-b33a-542f1e12ed0d'),(45,NULL,84,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'368bf99d-0423-410c-bae1-84931a36a1de'),(46,NULL,85,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'5b208ba2-6eeb-4a03-8d00-58b7eed14424'),(47,NULL,86,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'327c4fbf-4be9-470c-916e-c83e80db3941'),(48,NULL,87,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'601db89b-13a1-4d7a-827f-d1eaea5c2810'),(49,NULL,88,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'d1c31b36-eb9b-4b3b-9996-1c25f2ff3cad'),(50,NULL,89,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'4b76d61e-337b-4936-8ff3-466237b7db0a'),(51,NULL,90,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'993c656d-99a9-42ee-8612-7737a2f5389e'),(52,NULL,91,NULL,'wso2.system.user','2016-03-02 07:22:56','wso2.system.user','2016-03-02 07:22:56',NULL,NULL,-1234,'5252c094-e3a1-4b40-9697-f749138b8206'),(53,NULL,92,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'48addbe1-79e8-4717-a66b-12e35fd28629'),(54,NULL,93,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'9eabdbda-a126-4fb0-8acc-36ece995c8cc'),(55,NULL,94,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'9dddacbb-8dd5-41bc-97ea-3bd27a8c42d5'),(56,NULL,95,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'24d2696d-4742-4c6b-a925-dddc0433a215'),(57,NULL,96,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'e43b1e36-021b-4cc5-96fd-c436c5c499b8'),(58,NULL,97,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'1c4d2f72-20be-4e75-834d-149f8815331b'),(59,NULL,98,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'a49d4278-f88f-46f6-927a-d30bbc366ae7'),(60,NULL,99,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'ba584a57-e0be-4cd3-828f-4515856cd987'),(61,NULL,100,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'57921256-9fa9-42b5-b71e-c0844e7e46df'),(62,NULL,101,NULL,'wso2.system.user','2016-03-02 07:22:57','wso2.system.user','2016-03-02 07:22:57',NULL,NULL,-1234,'c00ab76a-980a-4485-9c20-9aa8d358c65e'),(63,NULL,102,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'0b5413c2-e973-4e6d-b3c9-fdc643463c6c'),(64,NULL,103,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'f960f0ef-4fd4-41f8-a676-e8cfdb30b01d'),(65,NULL,104,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'05f75cd7-0a89-4c44-915e-be2fa621fb7e'),(66,NULL,105,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'1a9c4899-5106-49a1-87ca-7d7507d4778e'),(67,NULL,106,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'f2754f66-f726-44eb-b055-99c87a3ab5c9'),(68,NULL,107,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'019f4af4-9ffa-48c8-8f0c-8ed01a0ba6ee'),(69,NULL,108,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'19017e29-7489-491d-9aa7-652883268627'),(70,NULL,109,NULL,'wso2.system.user','2016-03-02 07:22:58','wso2.system.user','2016-03-02 07:22:58',NULL,NULL,-1234,'b4d6d14c-d351-4240-87d7-bf3c3ecad072'),(71,NULL,110,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'47ef479f-6c1e-4ca2-8356-2c98db2ca21d'),(72,NULL,111,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'bd656735-f207-4d64-8c54-71b3aa8da96b'),(73,NULL,112,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'2c280855-aabf-4f5e-9380-29339dfd041b'),(74,NULL,113,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'4d56eba8-914f-4a26-b947-f31f7a3b1fed'),(75,NULL,114,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'4fd6726a-ca2c-4fef-b6d0-b80e2fbd5fcd'),(76,NULL,115,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'cb3cf80a-29f5-4dd3-b61d-5311d723492f'),(77,NULL,116,NULL,'wso2.system.user','2016-03-02 07:22:59','wso2.system.user','2016-03-02 07:22:59',NULL,NULL,-1234,'8d069bf0-eecf-4aa2-bd8e-f066648b1ed6'),(78,NULL,117,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'08f293a7-fac9-4bb4-bee0-a60e724e990c'),(79,NULL,118,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'54923eba-08b4-4c91-8b6d-094d93c57a57'),(80,NULL,119,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'0c4f0e51-91a5-4803-b254-765019bb0f02'),(81,NULL,120,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'b0f6c8e9-be9a-437c-a24c-5bf7f9a81916'),(82,NULL,121,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'6ccadd43-dbce-4b89-9664-9bceea105871'),(83,NULL,122,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'300d00c4-1aa8-4089-90e2-18c62387758b'),(84,NULL,123,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'f9a22fc8-4987-4b85-a121-59a3d2879ce1'),(85,NULL,124,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'d2e84ee4-37a1-4db8-a4fd-1c829955dfb5'),(86,NULL,125,NULL,'wso2.system.user','2016-03-02 07:23:00','wso2.system.user','2016-03-02 07:23:00',NULL,NULL,-1234,'2643e80d-b1e9-4134-9fdb-8712899454b3'),(87,NULL,126,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'1bf03be9-f4c5-4f5d-91a4-22df0af1d5a1'),(88,NULL,127,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'05912af6-1a7b-4774-bf43-8aa7a37c3eaa'),(89,NULL,128,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'bf3b5632-f7f8-442e-becb-7739a697dd14'),(90,NULL,129,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'33ad2277-57d0-4c3d-8933-fb3860650fe9'),(91,NULL,130,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'cd35ca5f-b5f2-48c4-b1db-98ca8243f83b'),(92,NULL,131,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'e71a3c0e-8cde-4466-b6d5-61fcdf3d13f4'),(93,NULL,132,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'d68a08ef-399f-4b3e-a62b-25dbd63e9369'),(94,NULL,133,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'4ef2d3cc-976f-47b4-bc6d-d29dd9e31879'),(95,NULL,134,NULL,'wso2.system.user','2016-03-02 07:23:01','wso2.system.user','2016-03-02 07:23:01',NULL,NULL,-1234,'93af1aa8-7315-48ac-8f1c-c91932c71ad9'),(96,NULL,135,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'52b65224-54e6-4b5e-8070-2ac7fd3f7969'),(97,NULL,136,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'10ad293c-3662-4b16-9d0c-72feeb06588b'),(98,NULL,137,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'234bd82c-37ea-458f-9a0b-1534132d8cd4'),(99,NULL,138,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'b6c0ac65-8eb0-46cd-8b43-a3ad18fb4af4'),(100,NULL,139,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'040ea9f3-b62f-4b97-97b8-fa96d1ed418f'),(101,NULL,140,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'8c1736cf-8f3d-4599-a3fd-b564c698aade'),(102,NULL,141,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'918964fa-107e-4a72-b272-4db6a16705b7'),(103,NULL,142,NULL,'wso2.system.user','2016-03-02 07:23:02','wso2.system.user','2016-03-02 07:23:02',NULL,NULL,-1234,'f452bbf2-72db-4e19-8ef9-df05d11fa7cd'),(104,NULL,143,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'e75c3560-a3dd-4b56-ae33-eaf7f47502d7'),(105,NULL,144,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'d126b0f1-1b19-4169-bed7-3fa44ca31fa4'),(106,NULL,145,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'8a3a4665-5a31-48f4-8498-d2d92e8750b1'),(107,NULL,146,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'164960cd-b08a-4188-9a63-3b85ffeea3d6'),(108,NULL,147,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'ebc0c244-1454-436f-8f2f-dcefc44b841f'),(109,NULL,148,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'c70bec11-06f3-4626-88c4-ef269e2179a1'),(110,NULL,149,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'93dbb969-9788-4bd1-891f-f3daf618621e'),(111,NULL,150,NULL,'wso2.system.user','2016-03-02 07:23:03','wso2.system.user','2016-03-02 07:23:03',NULL,NULL,-1234,'e4e8bcb2-968b-4a48-9ad8-5d57dbbe10a7'),(112,NULL,151,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'6b41be01-c8a1-4bf9-a500-39b79a3f8c3c'),(113,NULL,152,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'19c34501-2ab3-4eae-8b8b-4aa64dba7365'),(114,NULL,153,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'7831403d-db19-4260-ac8f-171f195bfed9'),(115,NULL,154,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'aa97c938-c928-479a-a997-4dbd69358943'),(116,NULL,155,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'fa44ea03-fd52-4c7c-becd-1613d20a25a9'),(117,NULL,156,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'525aa498-a061-4aca-93a3-fa4cc3aa12ee'),(118,NULL,157,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'5ae1faf7-c4d6-4318-a745-65f4d9cacae8'),(119,NULL,158,NULL,'wso2.system.user','2016-03-02 07:23:04','wso2.system.user','2016-03-02 07:23:04',NULL,NULL,-1234,'8fe45d85-2ad0-40f4-8133-e8695bf4f0c6'),(120,NULL,159,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'d0566297-d8c7-4a4f-964d-2f73e2eff078'),(121,NULL,160,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'c031403c-2803-41c6-8aaf-f2b0f26e6198'),(122,NULL,161,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'a43e8eb5-cee8-4fec-9ce1-5978c6fad905'),(123,NULL,162,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'32301fef-0e04-4824-8ef2-c9701884364d'),(124,NULL,163,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'78b72dfe-06ba-43ae-895d-da6ff0ddc55b'),(125,NULL,164,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'ceee9f9e-226f-4467-97fd-fadb6f34f39d'),(126,NULL,165,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'0d7b6754-73cc-430b-9115-da97ff0bae71'),(127,NULL,166,NULL,'wso2.system.user','2016-03-02 07:23:05','wso2.system.user','2016-03-02 07:23:05',NULL,NULL,-1234,'842b270d-2207-4d2e-a289-17c3024424a9'),(128,NULL,167,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,NULL,-1234,'c57ad86f-da9f-4c78-8cbd-8dad8f74a628'),(129,NULL,168,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,NULL,-1234,'745b23e7-1c15-48cb-a6d2-a3e2eba89e94'),(130,NULL,169,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,NULL,-1234,'3380c7d2-f167-4976-a63c-43d80ee55ab9'),(131,NULL,170,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,NULL,-1234,'ba204dd8-f68d-4e88-948f-606d969cd78a'),(131,'listener',171,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,21,-1234,'8135a888-bbf1-4032-9dd6-c319361e761b'),(132,NULL,172,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,NULL,-1234,'2febdd4e-2baa-48ba-a2d8-85f6a0ee12e6'),(132,'listener',173,NULL,'wso2.system.user','2016-03-02 07:23:06','wso2.system.user','2016-03-02 07:23:06',NULL,22,-1234,'75769e67-3c8e-4b78-97f9-0890f6e56bd2'),(133,NULL,174,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-02 07:23:07',NULL,NULL,-1234,'731d19e4-5370-4b72-b597-747200cd67dc'),(133,'listener',175,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-02 07:23:07',NULL,23,-1234,'8d15cfa8-eca9-4857-ab2b-1b6ca1b28c8d'),(131,'sender',176,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-02 07:23:07',NULL,24,-1234,'0db702ef-d1b2-4649-9b64-d2dbc13ca060'),(132,'sender',177,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-02 07:23:07',NULL,25,-1234,'14c677b4-0ca7-4048-a6fd-daa7557d2be3'),(133,'sender',178,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-02 07:23:07',NULL,26,-1234,'8f70afc2-7e2c-4547-817c-2713aa9aebc4'),(134,NULL,179,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-02 07:23:07',NULL,NULL,-1234,'3771425a-46ee-4d99-9781-cb8d14ba988b'),(135,NULL,181,NULL,'wso2.system.user','2016-03-02 07:23:11','wso2.system.user','2016-03-02 07:23:11',NULL,NULL,-1234,'680f5fb0-039e-4ec6-8625-d4793ed4eb0d'),(136,NULL,182,NULL,'wso2.system.user','2016-03-02 07:23:12','wso2.system.user','2016-03-02 07:23:12',NULL,NULL,-1234,'0466d2fc-8d74-4da3-8d4d-7b0c67b1a7be'),(136,'updatedTime',183,NULL,'wso2.system.user','2016-03-02 07:23:12','wso2.system.user','2016-03-02 07:23:12',NULL,NULL,-1234,'e9a53256-d19b-46cf-bc6c-ef7d7c83d9e9'),(137,NULL,184,NULL,'wso2.system.user','2016-03-02 07:23:12','wso2.system.user','2016-03-02 07:23:12',NULL,NULL,-1234,'bba75c46-63ff-4b0b-9e45-67683cb3878a'),(138,NULL,185,NULL,'wso2.system.user','2016-03-02 07:23:12','wso2.system.user','2016-03-02 07:23:12',NULL,NULL,-1234,'75622738-9d24-43b7-9be7-75bdf35f8574'),(137,'topicIndex',186,NULL,'wso2.system.user','2016-03-02 07:23:12','wso2.system.user','2016-03-02 07:23:12',NULL,NULL,-1234,'f0179653-771a-4f5c-8384-71fe285dfe2a'),(139,NULL,187,NULL,'wso2.system.user','2016-03-02 07:23:14','wso2.system.user','2016-03-02 07:23:14',NULL,NULL,-1234,'390ebcc6-3538-4747-a2ef-9c6744756a0d'),(139,'log4j.file.not.found',188,NULL,'wso2.system.user','2016-03-02 07:23:14','wso2.system.user','2016-03-02 07:23:14',NULL,NULL,-1234,'346d98c3-68a0-49fd-91af-1ec8eb72754d'),(139,'wso2carbon.system.log.last.modified',189,NULL,'wso2.system.user','2016-03-02 07:23:14','wso2.system.user','2016-03-02 07:23:14',NULL,NULL,-1234,'820eae04-f84a-44ea-8b29-0d87b5b64f94'),(140,NULL,190,NULL,'wso2.system.user','2016-03-02 07:23:28','wso2.system.user','2016-03-02 07:23:28',NULL,NULL,-1234,'226889de-9a00-4d90-aeaa-d9054792eeeb'),(139,'wso2carbon.system.log.pattern',204,NULL,'wso2.system.user','2016-03-02 09:05:12','wso2.system.user','2016-03-02 09:05:12',NULL,NULL,-1234,'b0a11842-8583-4e66-871a-1a1e059d4f8d'),(134,'props',295,NULL,'wso2.system.user','2016-03-02 07:23:07','wso2.system.user','2016-03-03 08:41:54',NULL,NULL,-1234,'b91faea1-8a0f-4d51-8d33-56bf2aa52990'),(141,NULL,296,NULL,'wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:10',NULL,NULL,-1234,'0159d095-31fa-457d-ad82-d62891ff21ef'),(142,NULL,297,NULL,'wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,NULL,-1234,'ceaa35da-14a0-49b3-a0f2-48547d16b5b7'),(142,'is-header-bg.png',298,'image/png','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,99,-1234,'6e4f3c28-a583-47e6-ace3-ed3675d51dea'),(142,'is-logo.png',299,'image/png','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,100,-1234,'e6849bf3-2f4a-4a89-8803-4c2b5dc46c84'),(142,'menu_header.gif',300,'image/gif','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,101,-1234,'805f36f0-421a-425f-b58e-3983affd6117'),(142,'right-links-bg.gif',301,'image/gif','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,102,-1234,'cf2b7f30-0445-4f79-9a3f-fe1a19fa43fa'),(142,'menu_header.png',302,'image/png','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,103,-1234,'430679db-4105-47fc-b0ae-465c47482cc7'),(142,'1px.gif',303,'image/gif','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,104,-1234,'72fa8082-60e7-40b4-83d9-fc2050bcbb4b'),(142,'back-repeat.png',304,'image/png','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,105,-1234,'824fdcfb-ce3b-427c-ad82-6f3a0ec771ec'),(142,'is-server-menu-header.png',305,'image/png','wso2.system.user','2016-03-02 07:23:29','wso2.system.user','2016-03-03 08:42:11',NULL,106,-1234,'fe897f35-996a-4bc8-bebe-e5473cf1b2fb'),(143,NULL,306,NULL,'wso2.system.user','2016-03-02 07:23:30','wso2.system.user','2016-03-03 08:42:11',NULL,NULL,-1234,'59b656ce-986a-4ba1-9c50-3400586d2f62'),(143,'main.css',307,'text/css','wso2.system.user','2016-03-02 07:23:30','wso2.system.user','2016-03-03 08:42:12',NULL,107,-1234,'e225f1ba-310f-4dfb-807f-b609dc36e148');
/*!40000 ALTER TABLE `REG_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_COMMENT`
--

DROP TABLE IF EXISTS `REG_RESOURCE_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_COMMENT` (
  `REG_COMMENT_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` (`REG_COMMENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_COMMENT_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` FOREIGN KEY (`REG_COMMENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_COMMENT` (`REG_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_COMMENT`
--

LOCK TABLES `REG_RESOURCE_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_HISTORY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_HISTORY` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_PATHID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HISTORY_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT_HISTORY` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_PATHID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_HISTORY`
--

LOCK TABLES `REG_RESOURCE_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_PROPERTY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_PROPERTY` (
  `REG_PROPERTY_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` (`REG_PROPERTY_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_PROPERTY_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` FOREIGN KEY (`REG_PROPERTY_ID`, `REG_TENANT_ID`) REFERENCES `REG_PROPERTY` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_PROPERTY`
--

LOCK TABLES `REG_RESOURCE_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` DISABLE KEYS */;
INSERT INTO `REG_RESOURCE_PROPERTY` VALUES (1,8,NULL,NULL,-1234),(2,8,NULL,NULL,-1234),(3,8,NULL,NULL,-1234),(4,8,NULL,NULL,-1234),(5,8,NULL,NULL,-1234),(6,8,NULL,NULL,-1234),(7,8,NULL,NULL,-1234),(8,8,NULL,NULL,-1234),(9,8,NULL,NULL,-1234),(10,8,NULL,NULL,-1234),(11,8,NULL,NULL,-1234),(12,8,NULL,NULL,-1234),(13,8,NULL,NULL,-1234),(14,8,NULL,NULL,-1234),(15,8,NULL,NULL,-1234),(16,8,NULL,NULL,-1234),(17,8,NULL,NULL,-1234),(18,8,NULL,NULL,-1234),(19,8,NULL,NULL,-1234),(20,8,NULL,NULL,-1234),(21,8,NULL,NULL,-1234),(22,8,NULL,NULL,-1234),(23,8,NULL,NULL,-1234),(24,8,NULL,NULL,-1234),(25,8,NULL,NULL,-1234),(26,8,NULL,NULL,-1234),(27,8,NULL,NULL,-1234),(28,8,NULL,NULL,-1234),(29,8,NULL,NULL,-1234),(30,8,NULL,NULL,-1234),(31,8,NULL,NULL,-1234),(32,8,NULL,NULL,-1234),(33,8,NULL,NULL,-1234),(34,8,NULL,NULL,-1234),(35,8,NULL,NULL,-1234),(36,8,NULL,NULL,-1234),(37,8,NULL,NULL,-1234),(38,8,NULL,NULL,-1234),(39,8,NULL,NULL,-1234),(40,8,NULL,NULL,-1234),(41,8,NULL,NULL,-1234),(42,8,NULL,NULL,-1234),(43,8,NULL,NULL,-1234),(44,8,NULL,NULL,-1234),(45,8,NULL,NULL,-1234),(46,8,NULL,NULL,-1234),(47,8,NULL,NULL,-1234),(48,8,NULL,NULL,-1234),(49,8,NULL,NULL,-1234),(50,8,NULL,NULL,-1234),(51,8,NULL,NULL,-1234),(52,8,NULL,NULL,-1234),(53,8,NULL,NULL,-1234),(54,8,NULL,NULL,-1234),(55,8,NULL,NULL,-1234),(56,8,NULL,NULL,-1234),(57,8,NULL,NULL,-1234),(58,8,NULL,NULL,-1234),(59,8,NULL,NULL,-1234),(60,8,NULL,NULL,-1234),(61,8,NULL,NULL,-1234),(62,8,NULL,NULL,-1234),(63,8,NULL,NULL,-1234),(64,8,NULL,NULL,-1234),(65,8,NULL,NULL,-1234),(66,8,NULL,NULL,-1234),(67,8,NULL,NULL,-1234),(68,8,NULL,NULL,-1234),(69,8,NULL,NULL,-1234),(70,8,NULL,NULL,-1234),(71,8,NULL,NULL,-1234),(72,8,NULL,NULL,-1234),(73,8,NULL,NULL,-1234),(74,8,NULL,NULL,-1234),(75,8,NULL,NULL,-1234),(76,8,NULL,NULL,-1234),(77,8,NULL,NULL,-1234),(78,8,NULL,NULL,-1234),(79,8,NULL,NULL,-1234),(80,8,NULL,NULL,-1234),(81,8,NULL,NULL,-1234),(82,8,NULL,NULL,-1234),(83,8,NULL,NULL,-1234),(84,8,NULL,NULL,-1234),(85,8,NULL,NULL,-1234),(86,8,NULL,NULL,-1234),(87,8,NULL,NULL,-1234),(88,8,NULL,NULL,-1234),(89,8,NULL,NULL,-1234),(90,8,NULL,NULL,-1234),(91,8,NULL,NULL,-1234),(92,8,NULL,NULL,-1234),(93,8,NULL,NULL,-1234),(94,8,NULL,NULL,-1234),(95,8,NULL,NULL,-1234),(96,8,NULL,NULL,-1234),(97,8,NULL,NULL,-1234),(98,8,NULL,NULL,-1234),(99,8,NULL,NULL,-1234),(100,8,NULL,NULL,-1234),(101,8,NULL,NULL,-1234),(102,8,NULL,NULL,-1234),(103,8,NULL,NULL,-1234),(104,8,NULL,NULL,-1234),(105,8,NULL,NULL,-1234),(106,8,NULL,NULL,-1234),(107,8,NULL,NULL,-1234),(108,8,NULL,NULL,-1234),(109,8,NULL,NULL,-1234),(110,8,NULL,NULL,-1234),(111,8,NULL,NULL,-1234),(112,8,NULL,NULL,-1234),(113,8,NULL,NULL,-1234),(114,8,NULL,NULL,-1234),(115,8,NULL,NULL,-1234),(116,8,NULL,NULL,-1234),(117,8,NULL,NULL,-1234),(118,8,NULL,NULL,-1234),(119,8,NULL,NULL,-1234),(120,8,NULL,NULL,-1234),(121,8,NULL,NULL,-1234),(122,8,NULL,NULL,-1234),(123,8,NULL,NULL,-1234),(124,8,NULL,NULL,-1234),(125,8,NULL,NULL,-1234),(126,8,NULL,NULL,-1234),(127,8,NULL,NULL,-1234),(128,8,NULL,NULL,-1234),(129,8,NULL,NULL,-1234),(130,8,NULL,NULL,-1234),(131,8,NULL,NULL,-1234),(132,8,NULL,NULL,-1234),(133,8,NULL,NULL,-1234),(134,8,NULL,NULL,-1234),(135,8,NULL,NULL,-1234),(136,8,NULL,NULL,-1234),(137,8,NULL,NULL,-1234),(138,8,NULL,NULL,-1234),(139,8,NULL,NULL,-1234),(140,8,NULL,NULL,-1234),(141,8,NULL,NULL,-1234),(142,8,NULL,NULL,-1234),(143,8,NULL,NULL,-1234),(144,8,NULL,NULL,-1234),(145,8,NULL,NULL,-1234),(146,8,NULL,NULL,-1234),(147,8,NULL,NULL,-1234),(148,8,NULL,NULL,-1234),(149,8,NULL,NULL,-1234),(150,8,NULL,NULL,-1234),(151,8,NULL,NULL,-1234),(152,8,NULL,NULL,-1234),(153,8,NULL,NULL,-1234),(154,8,NULL,NULL,-1234),(155,8,NULL,NULL,-1234),(156,8,NULL,NULL,-1234),(157,8,NULL,NULL,-1234),(158,8,NULL,NULL,-1234),(159,8,NULL,NULL,-1234),(160,8,NULL,NULL,-1234),(161,8,NULL,NULL,-1234),(162,8,NULL,NULL,-1234),(163,8,NULL,NULL,-1234),(164,8,NULL,NULL,-1234),(165,8,NULL,NULL,-1234),(166,8,NULL,NULL,-1234),(167,8,NULL,NULL,-1234),(168,8,NULL,NULL,-1234),(169,8,NULL,NULL,-1234),(170,8,NULL,NULL,-1234),(171,8,NULL,NULL,-1234),(172,8,NULL,NULL,-1234),(173,8,NULL,NULL,-1234),(174,8,NULL,NULL,-1234),(175,8,NULL,NULL,-1234),(176,8,NULL,NULL,-1234),(177,8,NULL,NULL,-1234),(178,8,NULL,NULL,-1234),(179,8,NULL,NULL,-1234),(180,8,NULL,NULL,-1234),(181,8,NULL,NULL,-1234),(182,8,NULL,NULL,-1234),(183,8,NULL,NULL,-1234),(184,8,NULL,NULL,-1234),(185,8,NULL,NULL,-1234),(186,8,NULL,NULL,-1234),(187,8,NULL,NULL,-1234),(188,8,NULL,NULL,-1234),(189,8,NULL,NULL,-1234),(190,8,NULL,NULL,-1234),(191,8,NULL,NULL,-1234),(192,8,NULL,NULL,-1234),(193,8,NULL,NULL,-1234),(194,8,NULL,NULL,-1234),(195,8,NULL,NULL,-1234),(196,8,NULL,NULL,-1234),(197,8,NULL,NULL,-1234),(198,8,NULL,NULL,-1234),(199,8,NULL,NULL,-1234),(200,8,NULL,NULL,-1234),(201,8,NULL,NULL,-1234),(202,8,NULL,NULL,-1234),(203,8,NULL,NULL,-1234),(204,8,NULL,NULL,-1234),(205,8,NULL,NULL,-1234),(206,8,NULL,NULL,-1234),(207,8,NULL,NULL,-1234),(208,8,NULL,NULL,-1234),(209,8,NULL,NULL,-1234),(210,8,NULL,NULL,-1234),(211,8,NULL,NULL,-1234),(212,8,NULL,NULL,-1234),(213,8,NULL,NULL,-1234),(214,8,NULL,NULL,-1234),(215,8,NULL,NULL,-1234),(216,8,NULL,NULL,-1234),(217,8,NULL,NULL,-1234),(218,8,NULL,NULL,-1234),(219,8,NULL,NULL,-1234),(220,8,NULL,NULL,-1234),(221,8,NULL,NULL,-1234),(222,8,NULL,NULL,-1234),(223,8,NULL,NULL,-1234),(224,8,NULL,NULL,-1234),(225,8,NULL,NULL,-1234),(226,8,NULL,NULL,-1234),(227,8,NULL,NULL,-1234),(228,8,NULL,NULL,-1234),(229,8,NULL,NULL,-1234),(230,8,NULL,NULL,-1234),(231,8,NULL,NULL,-1234),(232,8,NULL,NULL,-1234),(233,8,NULL,NULL,-1234),(234,8,NULL,NULL,-1234),(235,8,NULL,NULL,-1234),(236,8,NULL,NULL,-1234),(237,8,NULL,NULL,-1234),(238,8,NULL,NULL,-1234),(239,8,NULL,NULL,-1234),(240,8,NULL,NULL,-1234),(241,8,NULL,NULL,-1234),(242,8,NULL,NULL,-1234),(243,8,NULL,NULL,-1234),(244,8,NULL,NULL,-1234),(245,8,NULL,NULL,-1234),(246,8,NULL,NULL,-1234),(247,8,NULL,NULL,-1234),(248,8,NULL,NULL,-1234),(249,8,NULL,NULL,-1234),(250,8,NULL,NULL,-1234),(251,8,NULL,NULL,-1234),(252,8,NULL,NULL,-1234),(253,8,NULL,NULL,-1234),(254,8,NULL,NULL,-1234),(255,8,NULL,NULL,-1234),(256,8,NULL,NULL,-1234),(257,8,NULL,NULL,-1234),(258,8,NULL,NULL,-1234),(259,8,NULL,NULL,-1234),(260,8,NULL,NULL,-1234),(261,8,NULL,NULL,-1234),(262,8,NULL,NULL,-1234),(263,8,NULL,NULL,-1234),(264,8,NULL,NULL,-1234),(265,8,NULL,NULL,-1234),(266,8,NULL,NULL,-1234),(267,8,NULL,NULL,-1234),(268,8,NULL,NULL,-1234),(269,8,NULL,NULL,-1234),(270,8,NULL,NULL,-1234),(271,8,NULL,NULL,-1234),(272,8,NULL,NULL,-1234),(273,8,NULL,NULL,-1234),(274,8,NULL,NULL,-1234),(275,8,NULL,NULL,-1234),(276,8,NULL,NULL,-1234),(277,8,NULL,NULL,-1234),(278,8,NULL,NULL,-1234),(279,8,NULL,NULL,-1234),(280,8,NULL,NULL,-1234),(281,8,NULL,NULL,-1234),(282,8,NULL,NULL,-1234),(283,8,NULL,NULL,-1234),(284,8,NULL,NULL,-1234),(285,8,NULL,NULL,-1234),(286,8,NULL,NULL,-1234),(287,8,NULL,NULL,-1234),(288,8,NULL,NULL,-1234),(289,8,NULL,NULL,-1234),(290,8,NULL,NULL,-1234),(291,8,NULL,NULL,-1234),(292,8,NULL,NULL,-1234),(293,8,NULL,NULL,-1234),(294,8,NULL,NULL,-1234),(295,8,NULL,NULL,-1234),(296,8,NULL,NULL,-1234),(297,8,NULL,NULL,-1234),(298,8,NULL,NULL,-1234),(299,8,NULL,NULL,-1234),(300,8,NULL,NULL,-1234),(301,8,NULL,NULL,-1234),(302,8,NULL,NULL,-1234),(303,8,NULL,NULL,-1234),(304,8,NULL,NULL,-1234),(305,8,NULL,NULL,-1234),(306,8,NULL,NULL,-1234),(307,8,NULL,NULL,-1234),(308,8,NULL,NULL,-1234),(309,8,NULL,NULL,-1234),(310,8,NULL,NULL,-1234),(311,8,NULL,NULL,-1234),(312,8,NULL,NULL,-1234),(313,8,NULL,NULL,-1234),(314,8,NULL,NULL,-1234),(315,8,NULL,NULL,-1234),(316,8,NULL,NULL,-1234),(317,8,NULL,NULL,-1234),(318,8,NULL,NULL,-1234),(319,8,NULL,NULL,-1234),(320,8,NULL,NULL,-1234),(321,8,NULL,NULL,-1234),(322,8,NULL,NULL,-1234),(323,8,NULL,NULL,-1234),(324,8,NULL,NULL,-1234),(325,8,NULL,NULL,-1234),(326,8,NULL,NULL,-1234),(327,8,NULL,NULL,-1234),(328,8,NULL,NULL,-1234),(329,8,NULL,NULL,-1234),(330,8,NULL,NULL,-1234),(331,8,NULL,NULL,-1234),(332,8,NULL,NULL,-1234),(333,8,NULL,NULL,-1234),(334,8,NULL,NULL,-1234),(335,8,NULL,NULL,-1234),(336,8,NULL,NULL,-1234),(337,8,NULL,NULL,-1234),(338,8,NULL,NULL,-1234),(339,8,NULL,NULL,-1234),(340,8,NULL,NULL,-1234),(341,8,NULL,NULL,-1234),(342,8,NULL,NULL,-1234),(343,8,NULL,NULL,-1234),(344,8,NULL,NULL,-1234),(345,8,NULL,NULL,-1234),(346,8,NULL,NULL,-1234),(347,8,NULL,NULL,-1234),(348,8,NULL,NULL,-1234),(349,8,NULL,NULL,-1234),(350,8,NULL,NULL,-1234),(351,8,NULL,NULL,-1234),(352,8,NULL,NULL,-1234),(353,8,NULL,NULL,-1234),(354,8,NULL,NULL,-1234),(355,8,NULL,NULL,-1234),(356,8,NULL,NULL,-1234),(357,8,NULL,NULL,-1234),(358,8,NULL,NULL,-1234),(359,8,NULL,NULL,-1234),(360,8,NULL,NULL,-1234),(361,8,NULL,NULL,-1234),(362,8,NULL,NULL,-1234),(363,8,NULL,NULL,-1234),(364,8,NULL,NULL,-1234),(365,8,NULL,NULL,-1234),(366,8,NULL,NULL,-1234),(367,8,NULL,NULL,-1234),(368,8,NULL,NULL,-1234),(369,8,NULL,NULL,-1234),(370,8,NULL,NULL,-1234),(371,8,NULL,NULL,-1234),(372,8,NULL,NULL,-1234),(373,8,NULL,NULL,-1234),(374,8,NULL,NULL,-1234),(375,8,NULL,NULL,-1234),(376,8,NULL,NULL,-1234),(377,8,NULL,NULL,-1234),(378,8,NULL,NULL,-1234),(379,8,NULL,NULL,-1234),(380,8,NULL,NULL,-1234),(381,8,NULL,NULL,-1234),(382,8,NULL,NULL,-1234),(383,8,NULL,NULL,-1234),(384,8,NULL,NULL,-1234),(385,8,NULL,NULL,-1234),(386,8,NULL,NULL,-1234),(387,8,NULL,NULL,-1234),(388,8,NULL,NULL,-1234),(389,8,NULL,NULL,-1234),(390,8,NULL,NULL,-1234),(391,8,NULL,NULL,-1234),(392,8,NULL,NULL,-1234),(393,8,NULL,NULL,-1234),(394,8,NULL,NULL,-1234),(395,8,NULL,NULL,-1234),(396,8,NULL,NULL,-1234),(397,8,NULL,NULL,-1234),(398,8,NULL,NULL,-1234),(399,8,NULL,NULL,-1234),(400,8,NULL,NULL,-1234),(401,8,NULL,NULL,-1234),(402,8,NULL,NULL,-1234),(403,8,NULL,NULL,-1234),(404,8,NULL,NULL,-1234),(405,8,NULL,NULL,-1234),(406,8,NULL,NULL,-1234),(407,8,NULL,NULL,-1234),(408,8,NULL,NULL,-1234),(409,8,NULL,NULL,-1234),(410,8,NULL,NULL,-1234),(411,8,NULL,NULL,-1234),(412,8,NULL,NULL,-1234),(413,8,NULL,NULL,-1234),(414,8,NULL,NULL,-1234),(415,8,NULL,NULL,-1234),(416,8,NULL,NULL,-1234),(417,8,NULL,NULL,-1234),(418,8,NULL,NULL,-1234),(419,8,NULL,NULL,-1234),(420,8,NULL,NULL,-1234),(421,8,NULL,NULL,-1234),(422,8,NULL,NULL,-1234),(423,8,NULL,NULL,-1234),(424,8,NULL,NULL,-1234),(425,8,NULL,NULL,-1234),(426,8,NULL,NULL,-1234),(427,8,NULL,NULL,-1234),(428,8,NULL,NULL,-1234),(429,8,NULL,NULL,-1234),(430,8,NULL,NULL,-1234),(431,8,NULL,NULL,-1234),(432,8,NULL,NULL,-1234),(433,8,NULL,NULL,-1234),(434,9,NULL,NULL,-1234),(435,21,NULL,NULL,-1234),(436,21,NULL,NULL,-1234),(437,21,NULL,NULL,-1234),(438,22,NULL,NULL,-1234),(439,22,NULL,NULL,-1234),(440,22,NULL,NULL,-1234),(441,23,NULL,NULL,-1234),(442,23,NULL,NULL,-1234),(443,23,NULL,NULL,-1234),(444,24,NULL,NULL,-1234),(445,24,NULL,NULL,-1234),(446,24,NULL,NULL,-1234),(447,25,NULL,NULL,-1234),(448,25,NULL,NULL,-1234),(449,25,NULL,NULL,-1234),(450,26,NULL,NULL,-1234),(451,26,NULL,NULL,-1234),(452,26,NULL,NULL,-1234),(453,27,NULL,NULL,-1234),(454,27,NULL,NULL,-1234),(455,27,NULL,NULL,-1234),(456,28,NULL,NULL,-1234),(457,28,NULL,NULL,-1234),(458,28,NULL,NULL,-1234),(459,57,NULL,NULL,-1234),(460,61,NULL,NULL,-1234),(461,62,NULL,NULL,-1234),(462,63,NULL,NULL,-1234),(463,64,NULL,NULL,-1234),(464,66,NULL,NULL,-1234),(465,67,NULL,NULL,-1234),(466,68,NULL,NULL,-1234),(467,69,NULL,NULL,-1234),(468,70,NULL,NULL,-1234),(469,71,NULL,NULL,-1234),(470,72,NULL,NULL,-1234),(471,73,NULL,NULL,-1234),(472,74,NULL,NULL,-1234),(473,75,NULL,NULL,-1234),(474,76,NULL,NULL,-1234),(475,77,NULL,NULL,-1234),(476,78,NULL,NULL,-1234),(477,79,NULL,NULL,-1234),(478,80,NULL,NULL,-1234),(479,81,NULL,NULL,-1234),(480,82,NULL,NULL,-1234),(481,83,NULL,NULL,-1234),(482,84,NULL,NULL,-1234),(483,85,NULL,NULL,-1234),(484,86,NULL,NULL,-1234),(485,87,NULL,NULL,-1234),(486,88,NULL,NULL,-1234),(487,89,NULL,NULL,-1234),(488,90,NULL,NULL,-1234),(489,91,NULL,NULL,-1234),(490,92,NULL,NULL,-1234),(491,93,NULL,NULL,-1234),(492,94,NULL,NULL,-1234),(493,95,NULL,NULL,-1234),(494,96,NULL,NULL,-1234),(495,97,NULL,NULL,-1234),(496,98,NULL,NULL,-1234),(497,99,NULL,NULL,-1234),(498,100,NULL,NULL,-1234),(499,101,NULL,NULL,-1234),(500,102,NULL,NULL,-1234),(501,103,NULL,NULL,-1234),(502,104,NULL,NULL,-1234),(503,105,NULL,NULL,-1234),(504,106,NULL,NULL,-1234),(505,107,NULL,NULL,-1234),(506,108,NULL,NULL,-1234),(507,109,NULL,NULL,-1234),(508,110,NULL,NULL,-1234),(509,111,NULL,NULL,-1234),(510,112,NULL,NULL,-1234),(511,113,NULL,NULL,-1234),(512,114,NULL,NULL,-1234),(513,115,NULL,NULL,-1234),(514,116,NULL,NULL,-1234),(515,117,NULL,NULL,-1234),(516,118,NULL,NULL,-1234),(517,119,NULL,NULL,-1234),(518,120,NULL,NULL,-1234),(519,121,NULL,NULL,-1234),(520,122,NULL,NULL,-1234),(521,123,NULL,NULL,-1234),(522,124,NULL,NULL,-1234),(523,125,NULL,NULL,-1234),(524,126,NULL,NULL,-1234),(525,127,NULL,NULL,-1234),(526,128,NULL,NULL,-1234),(527,129,NULL,NULL,-1234),(528,130,NULL,NULL,-1234),(529,131,NULL,NULL,-1234),(530,132,NULL,NULL,-1234),(531,133,NULL,NULL,-1234),(532,134,NULL,NULL,-1234),(533,135,NULL,NULL,-1234),(534,136,NULL,NULL,-1234),(535,137,NULL,NULL,-1234),(536,138,NULL,NULL,-1234),(537,139,NULL,NULL,-1234),(538,140,NULL,NULL,-1234),(539,141,NULL,NULL,-1234),(540,142,NULL,NULL,-1234),(541,143,NULL,NULL,-1234),(542,144,NULL,NULL,-1234),(543,145,NULL,NULL,-1234),(544,146,NULL,NULL,-1234),(545,147,NULL,NULL,-1234),(546,148,NULL,NULL,-1234),(547,149,NULL,NULL,-1234),(548,150,NULL,NULL,-1234),(549,151,NULL,NULL,-1234),(550,152,NULL,NULL,-1234),(551,153,NULL,NULL,-1234),(552,154,NULL,NULL,-1234),(553,155,NULL,NULL,-1234),(554,156,NULL,NULL,-1234),(555,157,NULL,NULL,-1234),(556,158,NULL,NULL,-1234),(557,159,NULL,NULL,-1234),(558,160,NULL,NULL,-1234),(559,161,NULL,NULL,-1234),(560,162,NULL,NULL,-1234),(561,163,NULL,NULL,-1234),(562,164,NULL,NULL,-1234),(563,165,NULL,NULL,-1234),(564,166,NULL,NULL,-1234),(565,167,NULL,NULL,-1234),(566,168,NULL,NULL,-1234),(567,171,NULL,NULL,-1234),(568,171,NULL,NULL,-1234),(569,173,NULL,NULL,-1234),(570,173,NULL,NULL,-1234),(571,175,NULL,NULL,-1234),(572,175,NULL,NULL,-1234),(573,176,NULL,NULL,-1234),(574,176,NULL,NULL,-1234),(575,177,NULL,NULL,-1234),(576,177,NULL,NULL,-1234),(577,178,NULL,NULL,-1234),(578,178,NULL,NULL,-1234),(579,180,NULL,NULL,-1234),(580,180,NULL,NULL,-1234),(581,180,NULL,NULL,-1234),(582,183,NULL,NULL,-1234),(583,188,NULL,NULL,-1234),(584,189,NULL,NULL,-1234),(585,203,NULL,NULL,-1234),(586,203,NULL,NULL,-1234),(587,203,NULL,NULL,-1234),(588,204,NULL,NULL,-1234),(589,217,NULL,NULL,-1234),(590,217,NULL,NULL,-1234),(591,217,NULL,NULL,-1234),(592,230,NULL,NULL,-1234),(593,230,NULL,NULL,-1234),(594,230,NULL,NULL,-1234),(595,243,NULL,NULL,-1234),(596,243,NULL,NULL,-1234),(597,243,NULL,NULL,-1234),(598,256,NULL,NULL,-1234),(599,256,NULL,NULL,-1234),(600,256,NULL,NULL,-1234),(601,269,NULL,NULL,-1234),(602,269,NULL,NULL,-1234),(603,269,NULL,NULL,-1234),(604,282,NULL,NULL,-1234),(605,282,NULL,NULL,-1234),(606,282,NULL,NULL,-1234),(607,295,NULL,NULL,-1234),(608,295,NULL,NULL,-1234),(609,295,NULL,NULL,-1234);
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_RATING`
--

DROP TABLE IF EXISTS `REG_RESOURCE_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_RATING` (
  `REG_RATING_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_RATING_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_FK_BY_RATING_ID` (`REG_RATING_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_RATING_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_RATING_ID` FOREIGN KEY (`REG_RATING_ID`, `REG_TENANT_ID`) REFERENCES `REG_RATING` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_RATING`
--

LOCK TABLES `REG_RESOURCE_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_TAG`
--

DROP TABLE IF EXISTS `REG_RESOURCE_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_TAG` (
  `REG_TAG_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_TAG_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_FK_BY_TAG_ID` (`REG_TAG_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_TAG_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_TAG_ID` FOREIGN KEY (`REG_TAG_ID`, `REG_TENANT_ID`) REFERENCES `REG_TAG` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_TAG`
--

LOCK TABLES `REG_RESOURCE_TAG` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_SNAPSHOT`
--

DROP TABLE IF EXISTS `REG_SNAPSHOT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_SNAPSHOT` (
  `REG_SNAPSHOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_RESOURCE_NAME` varchar(255) DEFAULT NULL,
  `REG_RESOURCE_VIDS` longblob NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_SNAPSHOT_ID`,`REG_TENANT_ID`),
  KEY `REG_SNAPSHOT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_SNAPSHOT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  CONSTRAINT `REG_SNAPSHOT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_SNAPSHOT`
--

LOCK TABLES `REG_SNAPSHOT` WRITE;
/*!40000 ALTER TABLE `REG_SNAPSHOT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_SNAPSHOT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_TAG`
--

DROP TABLE IF EXISTS `REG_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_TAG` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_TAG_NAME` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_TAGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_TAG`
--

LOCK TABLES `REG_TAG` WRITE;
/*!40000 ALTER TABLE `REG_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ACCOUNT_MAPPING`
--

DROP TABLE IF EXISTS `UM_ACCOUNT_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ACCOUNT_MAPPING` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL,
  `UM_USER_STORE_DOMAIN` varchar(100) DEFAULT NULL,
  `UM_ACC_LINK_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`,`UM_USER_STORE_DOMAIN`,`UM_ACC_LINK_ID`),
  KEY `UM_TENANT_ID` (`UM_TENANT_ID`),
  CONSTRAINT `UM_ACCOUNT_MAPPING_ibfk_1` FOREIGN KEY (`UM_TENANT_ID`) REFERENCES `UM_TENANT` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ACCOUNT_MAPPING`
--

LOCK TABLES `UM_ACCOUNT_MAPPING` WRITE;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_CLAIM`
--

DROP TABLE IF EXISTS `UM_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_CLAIM` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_CLAIM_URI` varchar(255) NOT NULL,
  `UM_DISPLAY_TAG` varchar(255) DEFAULT NULL,
  `UM_DESCRIPTION` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE_DOMAIN` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE` varchar(255) DEFAULT NULL,
  `UM_REG_EX` varchar(255) DEFAULT NULL,
  `UM_SUPPORTED` smallint(6) DEFAULT NULL,
  `UM_REQUIRED` smallint(6) DEFAULT NULL,
  `UM_DISPLAY_ORDER` int(11) DEFAULT NULL,
  `UM_CHECKED_ATTRIBUTE` smallint(6) DEFAULT NULL,
  `UM_READ_ONLY` smallint(6) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_CLAIM_URI`,`UM_TENANT_ID`,`UM_MAPPED_ATTRIBUTE_DOMAIN`),
  KEY `UM_DIALECT_ID_2` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_CLAIM_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_CLAIM`
--

LOCK TABLES `UM_CLAIM` WRITE;
/*!40000 ALTER TABLE `UM_CLAIM` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DIALECT`
--

DROP TABLE IF EXISTS `UM_DIALECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DIALECT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_URI` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_URI` (`UM_DIALECT_URI`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DIALECT`
--

LOCK TABLES `UM_DIALECT` WRITE;
/*!40000 ALTER TABLE `UM_DIALECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_DIALECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DOMAIN`
--

DROP TABLE IF EXISTS `UM_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DOMAIN` (
  `UM_DOMAIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_DOMAIN_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DOMAIN`
--

LOCK TABLES `UM_DOMAIN` WRITE;
/*!40000 ALTER TABLE `UM_DOMAIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_REMEMBER_ME`
--

DROP TABLE IF EXISTS `UM_HYBRID_REMEMBER_ME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_REMEMBER_ME` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_COOKIE_VALUE` varchar(1024) DEFAULT NULL,
  `UM_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_REMEMBER_ME`
--

LOCK TABLES `UM_HYBRID_REMEMBER_ME` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_ROLE`
--

LOCK TABLES `UM_HYBRID_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_HYBRID_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_USER_ROLE`
--

LOCK TABLES `UM_HYBRID_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE`
--

DROP TABLE IF EXISTS `UM_MODULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_MODULE_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_MODULE_NAME` (`UM_MODULE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE`
--

LOCK TABLES `UM_MODULE` WRITE;
/*!40000 ALTER TABLE `UM_MODULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE_ACTIONS`
--

DROP TABLE IF EXISTS `UM_MODULE_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE_ACTIONS` (
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_MODULE_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ACTION`,`UM_MODULE_ID`),
  KEY `UM_MODULE_ID` (`UM_MODULE_ID`),
  CONSTRAINT `UM_MODULE_ACTIONS_ibfk_1` FOREIGN KEY (`UM_MODULE_ID`) REFERENCES `UM_MODULE` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE_ACTIONS`
--

LOCK TABLES `UM_MODULE_ACTIONS` WRITE;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PERMISSION`
--

DROP TABLE IF EXISTS `UM_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_RESOURCE_ID` varchar(255) NOT NULL,
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_MODULE_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `INDEX_UM_PERMISSION_UM_RESOURCE_ID_UM_ACTION` (`UM_RESOURCE_ID`,`UM_ACTION`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PERMISSION`
--

LOCK TABLES `UM_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PROFILE_CONFIG`
--

DROP TABLE IF EXISTS `UM_PROFILE_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PROFILE_CONFIG` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_PROFILE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_PROFILE_CONFIG_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PROFILE_CONFIG`
--

LOCK TABLES `UM_PROFILE_CONFIG` WRITE;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE`
--

DROP TABLE IF EXISTS `UM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_SHARED_ROLE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_ROLE_NAME` (`UM_ROLE_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE`
--

LOCK TABLES `UM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE_PERMISSION`
--

DROP TABLE IF EXISTS `UM_ROLE_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_ROLE_NAME`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_PERMISSION_ID_2` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE_PERMISSION`
--

LOCK TABLES `UM_ROLE_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SHARED_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SHARED_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SHARED_USER_ROLE` (
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_USER_TENANT_ID` int(11) NOT NULL,
  `UM_ROLE_TENANT_ID` int(11) NOT NULL,
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_USER_TENANT_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_USER_TENANT_ID`),
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_ROLE_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_USER_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SHARED_USER_ROLE`
--

LOCK TABLES `UM_SHARED_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_ROLE`
--

LOCK TABLES `UM_SYSTEM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER`
--

LOCK TABLES `UM_SYSTEM_USER` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SYSTEM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_SYSTEM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_SYSTEM_ROLE` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER_ROLE`
--

LOCK TABLES `UM_SYSTEM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_TENANT`
--

DROP TABLE IF EXISTS `UM_TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_TENANT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) NOT NULL,
  `UM_EMAIL` varchar(255) DEFAULT NULL,
  `UM_ACTIVE` tinyint(1) DEFAULT '0',
  `UM_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_USER_CONFIG` longblob,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`),
  UNIQUE KEY `INDEX_UM_TENANT_UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_TENANT`
--

LOCK TABLES `UM_TENANT` WRITE;
/*!40000 ALTER TABLE `UM_TENANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER`
--

DROP TABLE IF EXISTS `UM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER`
--

LOCK TABLES `UM_USER` WRITE;
/*!40000 ALTER TABLE `UM_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `UM_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ATTRIBUTE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ATTR_NAME` varchar(255) NOT NULL,
  `UM_ATTR_VALUE` varchar(1024) DEFAULT NULL,
  `UM_PROFILE_ID` varchar(255) DEFAULT NULL,
  `UM_USER_ID` int(11) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID` (`UM_USER_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ATTRIBUTE_ibfk_1` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ATTRIBUTE`
--

LOCK TABLES `UM_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_PERMISSION`
--

DROP TABLE IF EXISTS `UM_USER_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_PERMISSION`
--

LOCK TABLES `UM_USER_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ROLE`
--

LOCK TABLES `UM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 14:21:04

-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ids_userdb
-- ------------------------------------------------------
-- Server version 5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `REG_ASSOCIATION`
--
use ids_userdb;

DROP TABLE IF EXISTS `REG_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_ASSOCIATION` (
  `REG_ASSOCIATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_SOURCEPATH` varchar(750) NOT NULL,
  `REG_TARGETPATH` varchar(750) NOT NULL,
  `REG_ASSOCIATION_TYPE` varchar(2000) NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ASSOCIATION_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_ASSOCIATION`
--

LOCK TABLES `REG_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `REG_ASSOCIATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CLUSTER_LOCK`
--

DROP TABLE IF EXISTS `REG_CLUSTER_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CLUSTER_LOCK` (
  `REG_LOCK_NAME` varchar(20) NOT NULL DEFAULT '',
  `REG_LOCK_STATUS` varchar(20) DEFAULT NULL,
  `REG_LOCKED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`REG_LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CLUSTER_LOCK`
--

LOCK TABLES `REG_CLUSTER_LOCK` WRITE;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_COMMENT`
--

DROP TABLE IF EXISTS `REG_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_COMMENT` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_COMMENT_TEXT` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_COMMENTED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_COMMENT`
--

LOCK TABLES `REG_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT`
--

DROP TABLE IF EXISTS `REG_CONTENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT` (
  `REG_CONTENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_CONTENT_DATA` longblob,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT`
--

LOCK TABLES `REG_CONTENT` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CONTENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT_HISTORY`
--

DROP TABLE IF EXISTS `REG_CONTENT_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT_HISTORY` (
  `REG_CONTENT_ID` int(11) NOT NULL,
  `REG_CONTENT_DATA` longblob,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT_HISTORY`
--

LOCK TABLES `REG_CONTENT_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_LOG`
--

DROP TABLE IF EXISTS `REG_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_LOG` (
  `REG_LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH` varchar(750) DEFAULT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_LOGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_ACTION` int(11) NOT NULL,
  `REG_ACTION_DATA` varchar(500) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_LOG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_LOG`
--

LOCK TABLES `REG_LOG` WRITE;
/*!40000 ALTER TABLE `REG_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PATH`
--

DROP TABLE IF EXISTS `REG_PATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PATH` (
  `REG_PATH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_VALUE` varchar(750) NOT NULL,
  `REG_PATH_PARENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_PATH_IND_BY_PATH_VALUE` (`REG_PATH_VALUE`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_PATH_IND_BY_PATH_PARENT_ID` (`REG_PATH_PARENT_ID`,`REG_TENANT_ID`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PATH`
--

LOCK TABLES `REG_PATH` WRITE;
/*!40000 ALTER TABLE `REG_PATH` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_PATH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PROPERTY`
--

DROP TABLE IF EXISTS `REG_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PROPERTY` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_NAME` varchar(100) NOT NULL,
  `REG_VALUE` varchar(1000) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PROPERTY`
--

LOCK TABLES `REG_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_PROPERTY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RATING`
--

DROP TABLE IF EXISTS `REG_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RATING` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_RATING` int(11) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_RATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RATING`
--

LOCK TABLES `REG_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE`
--

DROP TABLE IF EXISTS `REG_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL AUTO_INCREMENT,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_HISTORY_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE`
--

LOCK TABLES `REG_RESOURCE` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_COMMENT`
--

DROP TABLE IF EXISTS `REG_RESOURCE_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_COMMENT` (
  `REG_COMMENT_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` (`REG_COMMENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_COMMENT_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` FOREIGN KEY (`REG_COMMENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_COMMENT` (`REG_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_COMMENT`
--

LOCK TABLES `REG_RESOURCE_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_HISTORY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_HISTORY` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_PATHID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HISTORY_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT_HISTORY` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_PATHID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_HISTORY`
--

LOCK TABLES `REG_RESOURCE_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_PROPERTY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_PROPERTY` (
  `REG_PROPERTY_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` (`REG_PROPERTY_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_PROPERTY_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` FOREIGN KEY (`REG_PROPERTY_ID`, `REG_TENANT_ID`) REFERENCES `REG_PROPERTY` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_PROPERTY`
--

LOCK TABLES `REG_RESOURCE_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_RATING`
--

DROP TABLE IF EXISTS `REG_RESOURCE_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_RATING` (
  `REG_RATING_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_RATING_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_FK_BY_RATING_ID` (`REG_RATING_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_RATING_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_RATING_ID` FOREIGN KEY (`REG_RATING_ID`, `REG_TENANT_ID`) REFERENCES `REG_RATING` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_RATING`
--

LOCK TABLES `REG_RESOURCE_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_TAG`
--

DROP TABLE IF EXISTS `REG_RESOURCE_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_TAG` (
  `REG_TAG_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_TAG_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_FK_BY_TAG_ID` (`REG_TAG_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_TAG_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_TAG_ID` FOREIGN KEY (`REG_TAG_ID`, `REG_TENANT_ID`) REFERENCES `REG_TAG` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_TAG`
--

LOCK TABLES `REG_RESOURCE_TAG` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_SNAPSHOT`
--

DROP TABLE IF EXISTS `REG_SNAPSHOT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_SNAPSHOT` (
  `REG_SNAPSHOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_RESOURCE_NAME` varchar(255) DEFAULT NULL,
  `REG_RESOURCE_VIDS` longblob NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_SNAPSHOT_ID`,`REG_TENANT_ID`),
  KEY `REG_SNAPSHOT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_SNAPSHOT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  CONSTRAINT `REG_SNAPSHOT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_SNAPSHOT`
--

LOCK TABLES `REG_SNAPSHOT` WRITE;
/*!40000 ALTER TABLE `REG_SNAPSHOT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_SNAPSHOT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_TAG`
--

DROP TABLE IF EXISTS `REG_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_TAG` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_TAG_NAME` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_TAGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_TAG`
--

LOCK TABLES `REG_TAG` WRITE;
/*!40000 ALTER TABLE `REG_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ACCOUNT_MAPPING`
--

DROP TABLE IF EXISTS `UM_ACCOUNT_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ACCOUNT_MAPPING` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL,
  `UM_USER_STORE_DOMAIN` varchar(100) DEFAULT NULL,
  `UM_ACC_LINK_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`,`UM_USER_STORE_DOMAIN`,`UM_ACC_LINK_ID`),
  KEY `UM_TENANT_ID` (`UM_TENANT_ID`),
  CONSTRAINT `UM_ACCOUNT_MAPPING_ibfk_1` FOREIGN KEY (`UM_TENANT_ID`) REFERENCES `UM_TENANT` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ACCOUNT_MAPPING`
--

LOCK TABLES `UM_ACCOUNT_MAPPING` WRITE;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_CLAIM`
--

DROP TABLE IF EXISTS `UM_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_CLAIM` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_CLAIM_URI` varchar(255) NOT NULL,
  `UM_DISPLAY_TAG` varchar(255) DEFAULT NULL,
  `UM_DESCRIPTION` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE_DOMAIN` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE` varchar(255) DEFAULT NULL,
  `UM_REG_EX` varchar(255) DEFAULT NULL,
  `UM_SUPPORTED` smallint(6) DEFAULT NULL,
  `UM_REQUIRED` smallint(6) DEFAULT NULL,
  `UM_DISPLAY_ORDER` int(11) DEFAULT NULL,
  `UM_CHECKED_ATTRIBUTE` smallint(6) DEFAULT NULL,
  `UM_READ_ONLY` smallint(6) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_CLAIM_URI`,`UM_TENANT_ID`,`UM_MAPPED_ATTRIBUTE_DOMAIN`),
  KEY `UM_DIALECT_ID_2` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_CLAIM_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_CLAIM`
--

LOCK TABLES `UM_CLAIM` WRITE;
/*!40000 ALTER TABLE `UM_CLAIM` DISABLE KEYS */;
INSERT INTO `UM_CLAIM` VALUES (1,1,'phone_number','Phone Number','End-User\'s preferred telephone number. For example, +1 (425) 555-1212 or +56 (2) 687 2400., +1 (604) 555-1234;ext=5678.',NULL,'telephoneNumber',NULL,0,0,0,0,0,-1234),(2,2,'http://wso2.org/claims/region','Region','Region',NULL,'region',NULL,0,0,0,0,0,-1234),(3,3,'urn:scim:schemas:core:1.0:ims','IMS','IM',NULL,'im',NULL,1,0,5,0,0,-1234),(5,2,'http://wso2.org/claims/fullname','Full Name','Full Name',NULL,'cn',NULL,0,0,0,0,0,-1234),(6,3,'urn:scim:schemas:core:1.0:active','Active','Active',NULL,'active',NULL,1,1,2,0,0,-1234),(7,2,'http://wso2.org/claims/gender','Gender','Gender',NULL,'gender',NULL,0,0,0,0,0,-1234),(8,4,'http://axschema.org/birthDate','DOB','Date of Birth',NULL,'dateOfBirth',NULL,1,0,0,0,0,-1234),(9,3,'urn:scim:schemas:core:1.0:emails.home','Emails - Home Email','Home Email',NULL,'homeEmail',NULL,1,0,5,0,0,-1234),(10,3,'urn:scim:schemas:core:1.0:id','Id','Id',NULL,'scimId',NULL,1,1,1,0,0,-1234),(11,3,'urn:scim:schemas:core:1.0:phoneNumbers','Phone Numbers','Phone Numbers',NULL,'phoneNumbers','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',1,1,3,0,0,-1234),(12,2,'http://wso2.org/claims/role','Role','Role',NULL,'role',NULL,1,0,0,0,1,-1234),(13,3,'urn:scim:schemas:core:1.0:phoneNumbers.home','Phone Numbers - Home Phone Number','Home Phone',NULL,'homePhone',NULL,1,0,5,0,0,-1234),(14,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/otherphone','Other Phone','Other Phone',NULL,'otherPhone',NULL,0,0,0,0,0,-1234),(15,6,'fullname','Full Name','Full Name',NULL,'cn',NULL,1,1,2,0,0,-1234),(16,3,'urn:scim:schemas:core:1.0:emails.other','Emails - Other Email','Other Email',NULL,'otherEmail',NULL,1,0,5,0,0,-1234),(17,1,'formatted','Address Formatted','Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines.',NULL,'formatted',NULL,0,0,0,0,0,-1234),(18,3,'urn:scim:schemas:core:1.0:local','Local','Local',NULL,'local',NULL,1,1,2,0,0,-1234),(19,1,'nickname','Nickname','Casual name of the End-User that may or may not be the same as the given_name. For instance, a nickname value of Mike might be returned alongside a given_name value of Michael.',NULL,'nickName',NULL,1,1,6,0,0,-1234),(20,3,'urn:scim:schemas:core:1.0:emails','Emails','Email Addresses',NULL,'mail','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',1,1,3,0,0,-1234),(21,1,'middle_name','Middle Name','Middle name(s) of the End-User. Note that in some cultures, people can have multiple middle names; all can be present, with the names being separated by space characters. Also note that in some cultures, middle names are not used.',NULL,'middleName',NULL,1,0,5,0,0,-1234),(22,1,'phone_number_verified','Phone Number Verified','True if the End-User\'s phone number has been verified; otherwise false.',NULL,'phoneVerififed',NULL,0,0,0,0,0,-1234),(23,3,'urn:scim:schemas:core:1.0:preferredLanguage','Preferred Language','Preferred Language',NULL,'preferredLanguage',NULL,1,1,2,0,0,-1234),(24,6,'postcode','Postalcode','Postalcode',NULL,'postalCode',NULL,1,0,4,0,0,-1234),(25,3,'urn:scim:schemas:core:1.0:userName','User Name','User Name',NULL,'uid',NULL,1,1,2,0,0,-1234),(27,3,'urn:scim:schemas:core:1.0:timeZone','Time Zone','Time Zone',NULL,'timeZone',NULL,1,1,2,0,0,-1234),(28,3,'urn:scim:schemas:core:1.0:addresses','Address','Address',NULL,'addresses',NULL,1,0,5,0,0,-1234),(29,4,'http://axschema.org/contact/postalCode/home','Postalcode','Postalcode',NULL,'postalCode',NULL,1,0,0,0,0,-1234),(30,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname','First Name','First Name',NULL,'givenName',NULL,1,1,0,0,0,-1234),(31,2,'http://wso2.org/claims/identity/accountLocked','Account Locked','Account Locked',NULL,'accountLock',NULL,0,0,0,0,0,-1234),(32,3,'urn:scim:schemas:core:1.0:addresses.formatted','Address - Formatted','Address - Formatted',NULL,'formattedAddress',NULL,1,0,5,0,0,-1234),(33,2,'http://wso2.org/claims/displayName','Display Name','Display Name',NULL,'displayName',NULL,0,0,0,0,0,-1234),(34,6,'language','Language','Language',NULL,'prefferedLanguage',NULL,1,0,7,0,0,-1234),(35,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress','Email','Email Address',NULL,'mail','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',1,1,0,0,0,-1234),(36,3,'urn:scim:schemas:core:1.0:addresses.country','Address - Country','Address - Country',NULL,'country',NULL,1,0,5,0,0,-1234),(37,2,'http://wso2.org/claims/organization','Organization','Organization',NULL,'organizationName',NULL,1,0,3,0,0,-1234),(38,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalcode','Postalcode','Postalcode',NULL,'postalCode',NULL,1,0,0,0,0,-1234),(39,2,'http://wso2.org/claims/dob','Birth Date','Birth Date',NULL,'dateOfBirth',NULL,0,0,0,0,0,-1234),(40,2,'http://wso2.org/claims/oneTimePassword','One Time Password','One Time Password',NULL,'oneTimePassword',NULL,0,0,0,0,0,-1234),(41,1,'region','One Time Password','State, province, prefecture, or region component.',NULL,'region',NULL,0,0,0,0,0,-1234),(42,1,'preferred_username','Preferred Username','Shorthand name by which the End-User wishes to be referred to at the RP, such as janedoe or j.doe.',NULL,'cn',NULL,1,0,7,0,0,-1234),(43,4,'http://axschema.org/pref/timezone','Time Zone','Time Zone',NULL,'timeZone',NULL,0,0,0,0,0,-1234),(44,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/homephone','Home Phone','Home Phone',NULL,'homePhone',NULL,1,0,0,0,0,-1234),(45,3,'urn:scim:schemas:core:1.0:userType','User Type','User Type',NULL,'userType',NULL,1,1,2,0,0,-1234),(46,2,'http://wso2.org/claims/primaryChallengeQuestion','Primary Challenge Question','Primary Challenge Question',NULL,'title',NULL,0,0,0,0,0,-1234),(47,3,'urn:scim:schemas:core:1.0:phoneNumbers.work','Phone Numbers - Work Phone Number','Work Phone',NULL,'workPhone',NULL,1,0,5,0,0,-1234),(48,2,'http://wso2.org/claims/nickname','Nick Name','Nick Name',NULL,'nickName',NULL,0,0,0,0,0,-1234),(49,3,'urn:scim:schemas:core:1.0:addresses.locality','Address - Locality','Address - Locality',NULL,'localityAddress',NULL,1,0,5,0,0,-1234),(50,3,'urn:scim:schemas:core:1.0:nickName','Nick Name','Nick Name',NULL,'nickName',NULL,1,1,2,0,0,-1234),(51,3,'urn:scim:schemas:core:1.0:photos','Photo','Photo',NULL,'photos',NULL,1,0,5,0,0,-1234),(52,2,'http://wso2.org/claims/identity/unlockTime','Unlock Time','Unlock Time',NULL,'unlockTime',NULL,0,0,0,0,0,-1234),(53,2,'http://wso2.org/claims/im','IM','IM',NULL,'im',NULL,1,0,9,0,0,-1234),(55,3,'urn:scim:schemas:core:1.0:phoneNumbers.mobile','Phone Numbers - Mobile Number','Mobile Number',NULL,'mobile',NULL,1,0,5,0,0,-1234),(56,3,'urn:scim:schemas:core:1.0:photos.thumbnail','Photo - Thumbnail','Photo - Thumbnail',NULL,'thumbnail',NULL,1,0,5,0,0,-1234),(57,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dateofbirth','DOB','Date of Birth',NULL,'dateOfBirth',NULL,0,0,0,0,0,-1234),(58,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/stateorprovince','State','State',NULL,'stateOrProvinceName',NULL,0,0,0,0,0,-1234),(59,3,'urn:scim:schemas:core:1.0:name.honorificSuffix','Name - Honoric Suffix','Honoric Suffix',NULL,'honoricSuffix',NULL,1,1,2,0,0,-1234),(60,6,'dob','DOB','Date of Birth',NULL,'dateOfBirth',NULL,1,0,6,0,0,-1234),(61,3,'urn:scim:schemas:core:1.0:addresses.region','Address - Region','Address - Region',NULL,'region',NULL,1,0,5,0,0,-1234),(62,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname','Last Name','Last Name',NULL,'sn',NULL,1,1,0,0,0,-1234),(63,3,'urn:scim:schemas:core:1.0:groups','Groups','Groups',NULL,'groups',NULL,1,0,5,0,0,-1234),(64,3,'urn:scim:schemas:core:1.0:phoneNumbers.other','Phone Numbers - Other','Other Phone Number',NULL,'otherPhoneNumber',NULL,1,0,5,0,0,-1234),(65,1,'zoneinfo','Zone Info','String from zoneinfo time zone database representing the End-User\'s time zone. For example, Europe/Paris or America/Los_Angeles.',NULL,'zone',NULL,0,0,0,0,0,-1234),(66,1,'email_verified','Email Verified','True if the End-User\'s e-mail address has been verified; otherwise false. ',NULL,'emailVerified',NULL,0,0,0,0,0,-1234),(67,3,'urn:scim:schemas:core:1.0:x509Certificates','X509Certificates','X509Certificates',NULL,'x509Certificates',NULL,1,0,5,0,0,-1234),(68,3,'urn:scim:schemas:core:1.0:meta.lastModified','Meta - Last Modified','Meta - Last Modified',NULL,'lastModifiedDate',NULL,1,1,1,0,0,-1234),(69,3,'urn:scim:schemas:core:1.0:phoneNumbers.pager','Phone Numbers - Pager Number','Pager Number',NULL,'pager',NULL,1,0,5,0,0,-1234),(70,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/locality','Locality','Locality',NULL,'localityName',NULL,0,0,0,0,0,-1234),(71,2,'http://wso2.org/claims/stateorprovince','State','State',NULL,'stateOrProvinceName',NULL,0,0,0,0,0,-1234),(72,4,'http://axschema.org/contact/country/home','Country','Country',NULL,'country',NULL,1,0,0,0,0,-1234),(73,6,'timezone','Time Zone','Time Zone',NULL,'timeZone',NULL,1,0,9,0,0,-1234),(74,1,'gender','Gender','End-User\'s gender. Values defined by this specification are female and male. Other values MAY be used when neither of the defined values are applicable.',NULL,'gender',NULL,1,0,0,0,1,-1234),(75,1,'family_name','Surname','Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have multiple family names or no family name; all can be present, with the names being separated by space characters.',NULL,'sn',NULL,1,0,4,0,0,-1234),(76,3,'urn:scim:schemas:core:1.0:addresses.streetAddress','Address - Street','Address - Street',NULL,'streetAddress',NULL,1,0,5,0,0,-1234),(77,3,'urn:scim:schemas:core:1.0:name.familyName','Name - Family Name','Family Name',NULL,'sn',NULL,1,1,2,0,0,-1234),(79,3,'urn:scim:schemas:core:1.0:externalId','External Id','External Id',NULL,'externalId',NULL,1,1,1,0,0,-1234),(81,3,'urn:scim:schemas:core:1.0:profileUrl','Profile URL','Profile URL',NULL,'url',NULL,1,1,2,0,0,-1234),(82,4,'http://axschema.org/person/gender','Gender','Gender',NULL,'gender',NULL,1,0,0,0,0,-1234),(83,2,'http://wso2.org/claims/locality','Locality','Locality',NULL,'localityName',NULL,0,0,0,0,0,-1234),(84,2,'http://wso2.org/claims/telephone','Telephone','Telephone',NULL,'telephoneNumber',NULL,1,0,7,0,0,-1234),(85,3,'urn:scim:schemas:core:1.0:ims.gtalk','IM - Gtalk','IM - Gtalk',NULL,'imGtalk',NULL,1,0,5,0,0,-1234),(86,3,'urn:scim:schemas:core:1.0:entitlements','Entitlements','Entitlements',NULL,'entitlements',NULL,1,0,5,0,0,-1234),(87,2,'http://wso2.org/claims/postalcode','Postal Code','Postal Code',NULL,'postalcode',NULL,0,0,0,0,0,-1234),(88,1,'country','Country','Country name component',NULL,'country',NULL,0,0,0,0,0,-1234),(89,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/privatepersonalidentifier',NULL,'PPID',NULL,'privatePersonalIdentifier',NULL,1,1,0,0,0,-1234),(90,1,'picture','Picture','URL of the End-User\'s profile picture. This URL MUST refer to an image file (for example, a PNG, JPEG, or GIF image file)',NULL,'image',NULL,1,0,9,0,0,-1234),(91,1,'updated_at','Updated At','Time the End-User\'s information was last updated. Its value is a JSON number representing the number of seconds from 1970-01-01T0:0:0Z as measured in UTC until the date/time.',NULL,'updated',NULL,0,0,0,0,0,-1234),(92,1,'email','Email','End-User\'s preferred e-mail address.',NULL,'mail',NULL,0,0,0,0,0,-1234),(93,2,'http://wso2.org/claims/challengeQuestionUris','Challenge Question','Challenge Question',NULL,'stateOrProvinceName',NULL,0,0,0,0,0,-1234),(95,1,'postal_code','Postal Code','Zip code or postal code component.',NULL,'postalcode',NULL,0,0,0,0,0,-1234),(96,3,'urn:scim:schemas:core:1.0:phoneNumbers.fax','Phone Numbers - Fax Number','Fax Number',NULL,'fax',NULL,1,0,5,0,0,-1234),(98,2,'http://wso2.org/claims/otherphone','Other Phone','Other Phone',NULL,'otherPhone',NULL,0,0,0,0,0,-1234),(99,1,'sub','Subject','Identifier for the End-User at the Issuer',NULL,'uid',NULL,1,1,1,0,0,-1234),(100,1,'locale','Locale','End-User\'s locale, For example, en-US or fr-CA, en_US',NULL,'locale',NULL,0,0,0,0,0,-1234),(101,3,'urn:scim:schemas:core:1.0:title','Title','Title',NULL,'title',NULL,1,1,2,0,0,-1234),(102,1,'given_name','Given Name','Given name(s) or first name(s) of the End-User. Note that in some cultures, people can have multiple given names; all can be present, with the names being separated by space characters.',NULL,'cn',NULL,1,0,3,0,0,-1234),(104,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country','Country','Country',NULL,'country',NULL,1,0,0,0,0,-1234),(105,1,'name','Full Name','End-User\'s full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the End-User\'s locale and preferences',NULL,'cn',NULL,1,1,2,0,0,-1234),(106,3,'urn:scim:schemas:core:1.0:name.honorificPrefix','Name - Honoric Prefix','Honoric Prefix',NULL,'honoricPrefix',NULL,1,1,2,0,0,-1234),(107,2,'http://wso2.org/claims/title','Title','Title',NULL,'title',NULL,0,0,0,0,0,-1234),(108,3,'urn:scim:schemas:core:1.0:ims.skype','IM - Skype','IM - Skype',NULL,'imSkype',NULL,1,0,5,0,0,-1234),(109,1,'birthdate','Birth Date','End-User\'s birthday, represented as an ISO 8601:2004 [ISO8601-2004] YYYY-MM-DD format. The year MAY be 0000, indicating that it is omitted. To represent only the year, YYYY format is allowed.',NULL,'birthDate',NULL,0,0,0,0,0,-1234),(110,3,'urn:scim:schemas:core:1.0:name.middleName','Name - Middle Name','Middle Name',NULL,'middleName',NULL,1,1,2,0,0,-1234),(112,4,'http://axschema.org/namePerson/last','Last Name','Last Name',NULL,'sn',NULL,1,1,0,0,0,-1234),(113,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nickname','Nick Name','Nick Name',NULL,'nickName',NULL,0,0,0,0,0,-1234),(114,1,'profile','Profile','URL of the End-User\'s profile page. The contents of this Web page SHOULD be about the End-User.',NULL,'url',NULL,1,0,8,0,0,-1234),(115,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/mobile','Mobile','Mobile',NULL,'mobile',NULL,0,0,0,0,0,-1234),(116,3,'urn:scim:schemas:core:1.0:name.formatted','Name - Formatted Name','Formatted Name',NULL,'formattedName',NULL,1,1,2,0,0,-1234),(117,2,'http://wso2.org/claims/username','Username','Username',NULL,'uid',NULL,0,0,0,0,0,-1234),(118,3,'urn:scim:schemas:core:1.0:addresses.postalCode','Address - Postal Code','Address - Postal Code',NULL,'postalCode',NULL,1,0,5,0,0,-1234),(119,1,'website','URL','URL of the End-User\'s Web page or blog. This Web page SHOULD contain information published by the End-User or an organization that the End-User is affiliated with.',NULL,'url',NULL,1,0,10,0,0,-1234),(120,4,'http://axschema.org/namePerson/first','Nick Name','Nick Name',NULL,'nickName',NULL,1,1,0,0,0,-1234),(121,3,'urn:scim:schemas:core:1.0:photos.photo','Photo','Photo',NULL,'photoUrl',NULL,1,0,5,0,0,-1234),(122,3,'urn:scim:schemas:core:1.0:emails.work','Emails - Work Email','Work Email',NULL,'workEmail',NULL,1,0,5,0,0,-1234),(123,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender','Gender','Gender',NULL,'gender',NULL,0,0,0,0,0,-1234),(124,3,'urn:scim:schemas:core:1.0:roles','Roles','Roles',NULL,'roles',NULL,1,0,5,0,0,-1234),(125,2,'http://wso2.org/claims/identity/failedLoginAttempts','Failed Login Attempts','Failed Login Attempts',NULL,'failedLoginAttempts',NULL,0,0,0,0,0,-1234),(126,1,'address','Address','True if the End-User\'s phone number has been verified; otherwise false. ',NULL,'address',NULL,0,0,0,0,0,-1234),(127,5,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/streetaddress','Street Address','Street Address',NULL,'streetAddress',NULL,0,0,0,0,0,-1234),(128,3,'urn:scim:schemas:core:1.0:meta.created','Meta - Created','Meta - Created',NULL,'createdDate',NULL,1,1,1,0,0,-1234),(129,1,'locality','Locality','City or locality component.',NULL,'localityName',NULL,0,0,0,0,0,-1234),(130,3,'urn:scim:schemas:core:1.0:name.givenName','Name - Given Name','Given Name',NULL,'givenName',NULL,1,1,1,0,0,-1234),(131,4,'http://axschema.org/contact/email','Email','Email Address',NULL,'mail','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',1,1,0,0,0,-1234),(132,3,'urn:scim:schemas:core:1.0:displayName','Display Name','Display Name',NULL,'displayName',NULL,1,1,2,0,0,-1234),(133,4,'http://axschema.org/pref/language','Language','Language',NULL,'prefferedLanguage',NULL,1,0,0,0,0,-1234),(134,1,'street_address','Street Address','Full street address component, which MAY include house number, street name, Post Office Box, and multi-line extended street address information.',NULL,'street',NULL,0,0,0,0,0,-1234),(135,3,'urn:scim:schemas:core:1.0:meta.location','Meta - Location','Meta - Location',NULL,'location',NULL,1,1,1,0,0,-1234),(136,2,'http://wso2.org/claims/challengeQuestion1','Challenge Question1','Challenge Question1',NULL,'gender','',0,0,2,0,0,-1234),(137,2,'http://wso2.org/claims/challengeQuestion2','Challenge Question2','Challenge Question2',NULL,'localityName','',0,0,3,0,0,-1234),(139,2,'http://wso2.org/claims/mobile','Mobile','Mobile',NULL,'mobile','',1,1,1,0,0,-1234),(141,2,'http://wso2.org/claims/givenname','First Name','First Name',NULL,'givenName','',0,1,1,0,0,-1234),(142,2,'http://wso2.org/claims/lastname','Last Name','Last Name',NULL,'sn','',0,1,2,0,0,-1234),(143,2,'http://wso2.org/claims/emailaddress','Email','Email Address',NULL,'mail','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',0,1,6,0,0,-1234),(144,2,'http://wso2.org/claims/country','Country','Country',NULL,'country','',0,0,5,0,0,-1234),(145,2,'http://wso2.org/claims/url','URL','URL',NULL,'url','',0,0,10,0,0,-1234),(146,2,'http://wso2.org/claims/streetaddress','Address','Address',NULL,'streetAddress','',0,0,4,0,0,-1234),(148,2,'http://wso2.org/claims/pin','pin','pin',NULL,'im','',1,1,0,0,0,-1234);
/*!40000 ALTER TABLE `UM_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DIALECT`
--

DROP TABLE IF EXISTS `UM_DIALECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DIALECT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_URI` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_URI` (`UM_DIALECT_URI`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DIALECT`
--

LOCK TABLES `UM_DIALECT` WRITE;
/*!40000 ALTER TABLE `UM_DIALECT` DISABLE KEYS */;
INSERT INTO `UM_DIALECT` VALUES (4,'http://axschema.org',-1234),(6,'http://schema.openid.net/2007/05/claims',-1234),(5,'http://schemas.xmlsoap.org/ws/2005/05/identity',-1234),(2,'http://wso2.org/claims',-1234),(1,'http://wso2.org/oidc/claim',-1234),(3,'urn:scim:schemas:core:1.0',-1234);
/*!40000 ALTER TABLE `UM_DIALECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DOMAIN`
--

DROP TABLE IF EXISTS `UM_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DOMAIN` (
  `UM_DOMAIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_DOMAIN_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DOMAIN`
--

LOCK TABLES `UM_DOMAIN` WRITE;
/*!40000 ALTER TABLE `UM_DOMAIN` DISABLE KEYS */;
INSERT INTO `UM_DOMAIN` VALUES (1,'PRIMARY',-1234),(2,'SYSTEM',-1234),(3,'INTERNAL',-1234),(4,'APPLICATION',-1234),(5,'WORKFLOW',-1234);
/*!40000 ALTER TABLE `UM_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_REMEMBER_ME`
--

DROP TABLE IF EXISTS `UM_HYBRID_REMEMBER_ME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_REMEMBER_ME` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_COOKIE_VALUE` varchar(1024) DEFAULT NULL,
  `UM_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_REMEMBER_ME`
--

LOCK TABLES `UM_HYBRID_REMEMBER_ME` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_ROLE`
--

LOCK TABLES `UM_HYBRID_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` DISABLE KEYS */;
INSERT INTO `UM_HYBRID_ROLE` VALUES (1,'everyone',-1234),(2,'Application/Dialog',-1234),(3,'Application/Mobitel',-1234),(4,'identity',-1234);
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_HYBRID_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_USER_ROLE`
--

LOCK TABLES `UM_HYBRID_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` DISABLE KEYS */;
INSERT INTO `UM_HYBRID_USER_ROLE` VALUES (6,'913121224102',4,-1234,1),(1,'admin',2,-1234,1),(2,'admin',3,-1234,1);
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE`
--

DROP TABLE IF EXISTS `UM_MODULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_MODULE_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_MODULE_NAME` (`UM_MODULE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE`
--

LOCK TABLES `UM_MODULE` WRITE;
/*!40000 ALTER TABLE `UM_MODULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE_ACTIONS`
--

DROP TABLE IF EXISTS `UM_MODULE_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE_ACTIONS` (
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_MODULE_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ACTION`,`UM_MODULE_ID`),
  KEY `UM_MODULE_ID` (`UM_MODULE_ID`),
  CONSTRAINT `UM_MODULE_ACTIONS_ibfk_1` FOREIGN KEY (`UM_MODULE_ID`) REFERENCES `UM_MODULE` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE_ACTIONS`
--

LOCK TABLES `UM_MODULE_ACTIONS` WRITE;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PERMISSION`
--

DROP TABLE IF EXISTS `UM_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_RESOURCE_ID` varchar(255) NOT NULL,
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_MODULE_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `INDEX_UM_PERMISSION_UM_RESOURCE_ID_UM_ACTION` (`UM_RESOURCE_ID`,`UM_ACTION`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PERMISSION`
--

LOCK TABLES `UM_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_PERMISSION` DISABLE KEYS */;
INSERT INTO `UM_PERMISSION` VALUES (1,'/permission','ui.execute',-1234,0),(2,'/','http://www.wso2.org/projects/registry/actions/get',-1234,0),(3,'/','http://www.wso2.org/projects/registry/actions/add',-1234,0),(4,'/','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(5,'/','authorize',-1234,0),(6,'/_system/config/repository/components/org.wso2.carbon.captcha-images','http://www.wso2.org/projects/registry/actions/get',-1234,0),(7,'/_system/config/repository/components/org.wso2.carbon.captcha-images','http://www.wso2.org/projects/registry/actions/add',-1234,0),(8,'/_system/config/repository/components/org.wso2.carbon.captcha-images','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(9,'/_system/config/repository/components/org.wso2.carbon.captcha-images','authorize',-1234,0),(10,'/_system/governance/repository/components/org.wso2.carbon.all-themes','http://www.wso2.org/projects/registry/actions/get',-1234,0),(11,'/_system/governance/repository/components/org.wso2.carbon.all-themes','http://www.wso2.org/projects/registry/actions/add',-1234,0),(12,'/_system/governance/repository/components/org.wso2.carbon.all-themes','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(13,'/_system/governance/repository/components/org.wso2.carbon.all-themes','authorize',-1234,0),(14,'/permission/admin/login','ui.execute',-1234,0);
/*!40000 ALTER TABLE `UM_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PROFILE_CONFIG`
--

DROP TABLE IF EXISTS `UM_PROFILE_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PROFILE_CONFIG` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_PROFILE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_PROFILE_CONFIG_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PROFILE_CONFIG`
--

LOCK TABLES `UM_PROFILE_CONFIG` WRITE;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE`
--

DROP TABLE IF EXISTS `UM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_SHARED_ROLE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_ROLE_NAME` (`UM_ROLE_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE`
--

LOCK TABLES `UM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_ROLE` DISABLE KEYS */;
INSERT INTO `UM_ROLE` VALUES (1,'admin',-1234,0);
/*!40000 ALTER TABLE `UM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE_PERMISSION`
--

DROP TABLE IF EXISTS `UM_ROLE_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_ROLE_NAME`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_PERMISSION_ID_2` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE_PERMISSION`
--

LOCK TABLES `UM_ROLE_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` DISABLE KEYS */;
INSERT INTO `UM_ROLE_PERMISSION` VALUES (1,1,'admin',1,-1234,1),(2,2,'admin',1,-1234,1),(3,3,'admin',1,-1234,1),(4,4,'admin',1,-1234,1),(5,5,'admin',1,-1234,1),(6,2,'everyone',1,-1234,3),(7,6,'wso2.anonymous.role',1,-1234,2),(8,7,'wso2.anonymous.role',0,-1234,2),(9,8,'wso2.anonymous.role',0,-1234,2),(10,9,'wso2.anonymous.role',0,-1234,2),(11,10,'wso2.anonymous.role',1,-1234,2),(12,11,'wso2.anonymous.role',0,-1234,2),(13,12,'wso2.anonymous.role',0,-1234,2),(14,13,'wso2.anonymous.role',0,-1234,2),(15,14,'identity',1,-1234,3);
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SHARED_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SHARED_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SHARED_USER_ROLE` (
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_USER_TENANT_ID` int(11) NOT NULL,
  `UM_ROLE_TENANT_ID` int(11) NOT NULL,
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_USER_TENANT_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_USER_TENANT_ID`),
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_ROLE_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_USER_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SHARED_USER_ROLE`
--

LOCK TABLES `UM_SHARED_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_ROLE`
--

LOCK TABLES `UM_SYSTEM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` DISABLE KEYS */;
INSERT INTO `UM_SYSTEM_ROLE` VALUES (1,'wso2.anonymous.role',-1234);
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER`
--

LOCK TABLES `UM_SYSTEM_USER` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER` DISABLE KEYS */;
INSERT INTO `UM_SYSTEM_USER` VALUES (1,'wso2.anonymous.user','k9LJNzLGQSPZkeQBhjd8+a4XLoyNNbKmJiMSvjqRpNI=','3ZO9XtuUqKObiQdCj6L7Zg==',0,'2016-03-02 07:22:12',-1234);
/*!40000 ALTER TABLE `UM_SYSTEM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_SYSTEM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_SYSTEM_ROLE` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER_ROLE`
--

LOCK TABLES `UM_SYSTEM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` DISABLE KEYS */;
INSERT INTO `UM_SYSTEM_USER_ROLE` VALUES (1,'wso2.anonymous.user',1,-1234);
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_TENANT`
--

DROP TABLE IF EXISTS `UM_TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_TENANT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) NOT NULL,
  `UM_EMAIL` varchar(255) DEFAULT NULL,
  `UM_ACTIVE` tinyint(1) DEFAULT '0',
  `UM_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_USER_CONFIG` longblob,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`),
  UNIQUE KEY `INDEX_UM_TENANT_UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_TENANT`
--

LOCK TABLES `UM_TENANT` WRITE;
/*!40000 ALTER TABLE `UM_TENANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER`
--

DROP TABLE IF EXISTS `UM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER`
--

LOCK TABLES `UM_USER` WRITE;
/*!40000 ALTER TABLE `UM_USER` DISABLE KEYS */;
INSERT INTO `UM_USER` VALUES (1,'admin','q9j4TSp68moyX25kKQyQNIJSZSWkBIe8sLvTOc0z/sI=','qJTUcHUzBO2CsXfYaazIqQ==',0,'2016-03-02 07:22:12',-1234),(5,'913121224102','ecAgv0337VZWwS7PLhw/dPfKExSBhiC2OKdDLePuNmI=','Wj4/Ozia3TPekNj+u7jCHw==',0,'2016-03-03 09:18:14',-1234);
/*!40000 ALTER TABLE `UM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `UM_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ATTRIBUTE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ATTR_NAME` varchar(255) NOT NULL,
  `UM_ATTR_VALUE` varchar(1024) DEFAULT NULL,
  `UM_PROFILE_ID` varchar(255) DEFAULT NULL,
  `UM_USER_ID` int(11) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID` (`UM_USER_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ATTRIBUTE_ibfk_1` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ATTRIBUTE`
--

LOCK TABLES `UM_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `UM_USER_ATTRIBUTE` VALUES (16,'im','null','default',5,-1234),(17,'mobile','913121224102','default',5,-1234),(18,'telephoneNumber','null','default',5,-1234),(19,'im','null','default',5,-1234),(20,'organizationName','null','default',5,-1234);
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_PERMISSION`
--

DROP TABLE IF EXISTS `UM_USER_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_PERMISSION`
--

LOCK TABLES `UM_USER_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ROLE`
--

LOCK TABLES `UM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ROLE` DISABLE KEYS */;
INSERT INTO `UM_USER_ROLE` VALUES (1,1,1,-1234);
/*!40000 ALTER TABLE `UM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 14:21:38

-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: statdb
-- ------------------------------------------------------
-- Server version 5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `admin_comments`
--

use statdb;

DROP TABLE IF EXISTS `admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_comments` (
  `TaskID` int(11) NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Description` varchar(1000) NOT NULL,
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_comments`
--

LOCK TABLES `admin_comments` WRITE;
/*!40000 ALTER TABLE `admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_approval_audit`
--

DROP TABLE IF EXISTS `app_approval_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_approval_audit` (
  `APP_APPROVAL_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `APP_NAME` varchar(100) DEFAULT NULL,
  `APP_CREATOR` varchar(50) DEFAULT NULL,
  `APP_STATUS` varchar(50) DEFAULT 'ON_HOLD',
  `APP_APPROVAL_TYPE` varchar(50) DEFAULT NULL,
  `COMPLETED_BY_ROLE` varchar(50) DEFAULT NULL,
  `COMPLETED_BY_USER` varchar(50) DEFAULT NULL,
  `COMPLETED_ON` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`APP_APPROVAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_approval_audit`
--

LOCK TABLES `app_approval_audit` WRITE;
/*!40000 ALTER TABLE `app_approval_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_approval_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklistmsisdn`
--

DROP TABLE IF EXISTS `blacklistmsisdn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklistmsisdn` (
  `Index` int(11) NOT NULL AUTO_INCREMENT,
  `MSISDN` varchar(45) NOT NULL,
  `API_ID` varchar(45) NOT NULL,
  `API_NAME` varchar(45) NOT NULL,
  `USER_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Index`),
  UNIQUE KEY `MSISDN` (`MSISDN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklistmsisdn`
--

LOCK TABLES `blacklistmsisdn` WRITE;
/*!40000 ALTER TABLE `blacklistmsisdn` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklistmsisdn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_approval_audit`
--

DROP TABLE IF EXISTS `sub_approval_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_approval_audit` (
  `API_PROVIDER` varchar(200) NOT NULL DEFAULT '',
  `API_NAME` varchar(200) NOT NULL DEFAULT '',
  `API_VERSION` varchar(30) NOT NULL DEFAULT '',
  `APP_ID` int(11) NOT NULL,
  `SUB_STATUS` varchar(50) DEFAULT 'ON_HOLD',
  `SUB_APPROVAL_TYPE` varchar(50) DEFAULT NULL,
  `COMPLETED_BY_ROLE` varchar(50) NOT NULL DEFAULT '',
  `COMPLETED_BY_USER` varchar(50) DEFAULT NULL,
  `COMPLETED_ON` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`APP_ID`,`API_PROVIDER`,`API_NAME`,`API_VERSION`,`COMPLETED_BY_ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_approval_audit`
--

LOCK TABLES `sub_approval_audit` WRITE;
/*!40000 ALTER TABLE `sub_approval_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_approval_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_WhiteList`
--

DROP TABLE IF EXISTS `subscription_WhiteList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_WhiteList` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `subscriptionID` varchar(45) NOT NULL,
  `msisdn` varchar(45) NOT NULL,
  `api_id` varchar(45) NOT NULL,
  `application_id` varchar(45) NOT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `msisdn` (`msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_WhiteList`
--

LOCK TABLES `subscription_WhiteList` WRITE;
/*!40000 ALTER TABLE `subscription_WhiteList` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_WhiteList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_comments`
--

DROP TABLE IF EXISTS `subscription_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_comments` (
  `TaskID` varchar(255) NOT NULL,
  `Comment` varchar(1024) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_comments`
--

LOCK TABLES `subscription_comments` WRITE;
/*!40000 ALTER TABLE `subscription_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_rates`
--

DROP TABLE IF EXISTS `subscription_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_rates` (
  `application_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `operator_name` varchar(45) NOT NULL,
  `rate_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`application_id`,`api_id`,`operator_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_rates`
--

LOCK TABLES `subscription_rates` WRITE;
/*!40000 ALTER TABLE `subscription_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_tax`
--

DROP TABLE IF EXISTS `subscription_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_tax` (
  `application_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `tax_type` varchar(25) NOT NULL,
  PRIMARY KEY (`application_id`,`api_id`,`tax_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_tax`
--

LOCK TABLES `subscription_tax` WRITE;
/*!40000 ALTER TABLE `subscription_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) NOT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `value` decimal(7,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax`
--

LOCK TABLES `tax` WRITE;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 14:22:08

