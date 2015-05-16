-- MySQL dump 10.13  Distrib 5.6.19, for osx10.9 (x86_64)
--
-- Host: localhost    Database: tpsampleapp
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `iresources`
--

DROP TABLE IF EXISTS `iresources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iresources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` int(11) DEFAULT NULL,
  `result_uri` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `contextid` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iresources`
--

LOCK TABLES `iresources` WRITE;
/*!40000 ALTER TABLE `iresources` DISABLE KEYS */;
/*!40000 ALTER TABLE `iresources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti2_tp_registrations`
--

DROP TABLE IF EXISTS `lti2_tp_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti2_tp_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(255) DEFAULT NULL,
  `tenant_basename` varchar(255) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `reg_key` varchar(255) DEFAULT NULL,
  `reg_password` varchar(255) DEFAULT NULL,
  `tc_oauth_half_secret` text,
  `tc_profile_url` varchar(255) DEFAULT NULL,
  `launch_presentation_return_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `message_type` varchar(255) DEFAULT NULL,
  `tool_consumer_profile_json` text,
  `tool_profile_json` text,
  `tool_proxy_json` text,
  `proposed_tool_proxy_json` text,
  `tool_id` int(11) DEFAULT NULL,
  `lti_version` varchar(32) DEFAULT NULL,
  `end_registration_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti2_tp_registrations`
--

LOCK TABLES `lti2_tp_registrations` WRITE;
/*!40000 ALTER TABLE `lti2_tp_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lti2_tp_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti2_tp_registries`
--

DROP TABLE IF EXISTS `lti2_tp_registries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti2_tp_registries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti2_tp_registries`
--

LOCK TABLES `lti2_tp_registries` WRITE;
/*!40000 ALTER TABLE `lti2_tp_registries` DISABLE KEYS */;
INSERT INTO `lti2_tp_registries` VALUES (1,'tp_deployment_url','http://rails.kinexis.com:5000','2013-01-13 20:12:10','2013-01-13 20:12:10'),(2,'security_contract_template','{ \"shared_secret\" : \"{aSecret}\",\n  \"tool_service\" : [ { \n	\"@id\": \":ToolProxy.collection\",\n	\"@type\" : \"RestServiceProfile\",\n        \"action\" : \"POST\",\n        \"service\" : \"http://lms.example.com/profile/b6ffa601-ce1d-4549-9ccf-145670a964d4#ToolProxy.collection\"\n      },\n      { \n	\"@id\": \":ToolProxy.item\",\n	\"@type\" : \"RestServiceProfile\",\n        \"action\" : [ \"GET\",\n            \"PUT\"\n          ],\n        \"service\" : \"http://lms.example.com/profile/b6ffa601-ce1d-4549-9ccf-145670a964d4#ToolProxy.item\"\n      },\n      { \n	\"@id\": \":ToolProxy.collection\",\n	\"@type\" : \"RestService\",\n        \"action\" : [ \"GET\",\n            \"PUT\"\n          ],\n        \"service\" : \"http://lms.example.com/profile/b6ffa601-ce1d-4549-9ccf-145670a964d4#Result.item\"\n      }\n    ]\n}','2013-01-13 20:12:10','2013-01-13 20:12:10'),(3,'relaxed_oauth_check','false','2013-01-13 20:12:10','2013-01-13 20:12:10'),(4,'result_template','{\n  \"@context\" : \"http://www.imsglobal.org/imspurl/lis/v2/ctx/Result\",\n  \"@type\" : \"Result\",\n  \"resultScore\" : {\n    \"@type\" : \"decimal\",\n    \"@value\"  : {value}\n  }\n}\n','2013-01-13 20:12:10','2013-01-13 20:12:10'),(5,'tool_provider_name','Fabericious','2013-01-13 20:12:10','2013-01-13 20:12:10'),(6,'wirelog_filename','/tmp/wirelog.html','2014-04-22 00:00:00','2014-04-22 00:00:00');
/*!40000 ALTER TABLE `lti2_tp_registries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti2_tp_tools`
--

DROP TABLE IF EXISTS `lti2_tp_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti2_tp_tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(255) DEFAULT NULL,
  `tool_profile_template` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti2_tp_tools`
--

LOCK TABLES `lti2_tp_tools` WRITE;
/*!40000 ALTER TABLE `lti2_tp_tools` DISABLE KEYS */;
INSERT INTO `lti2_tp_tools` VALUES (2,'LTI2 BookTools','{\n    \"base_url_choice\": [\n        {\n            \"default_base_url\": \"{tp_deployment_url}\",\n            \"selector\": {\n                \"applies_to\": [\n                    \"IconEndpoint\",\n                    \"MessageHandler\"\n                ]\n            }\n        }\n    ],\n    \"lti_version\": \"LTI-2p0\",\n    \"message\": [\n        {\n            \"message_type\": [\n                \"ToolProxyRegistrationRequest\",\n                \"ToolProxyReregistrationRequest\"\n            ],\n            \"parameter\": [\n                {\n                    \"name\": \"tc_profile_url\",\n                    \"variable\": \"ToolConsumerProfile.url\"\n                }\n            ],\n            \"path\": \"{tp_deployment_url}/lti2_tp/reregistrations\"\n        }\n    ],\n    \"product_instance\": {\n        \"guid\": \"fd75124a-140e-470f-944c-114d2d92bb40\",\n        \"product_info\": {\n            \"description\": {\n                \"default_value\": \"Fabericious reflowable ePub3 Textbook\",\n                \"key\": \"tool.description\"\n            },\n            \"product_family\": {\n                \"code\": \"assessment-tool\",\n                \"vendor\": {\n                    \"code\": \"fabericious.org\",\n                    \"contact\": {\n                        \"email\": \"info@fabericious.com\"\n                    },\n                    \"description\": {\n                        \"default_value\": \"Fabericious is a leading provider of interactive tools for education\",\n                        \"key\": \"tool.vendor.description\"\n                    },\n                    \"vendor_name\": {\n                        \"default_value\": \"Fab\",\n                        \"key\": \"tool.vendor.name\"\n                    },\n                    \"timestamp\": \"2012-04-05T09:08:16-04:00\",\n                    \"website\": \"{{tp_deployment_url}}\"\n                }\n            },\n            \"product_name\": {\n                \"default_value\": \"LTI2 BookTools\",\n                \"key\": \"tool.name\"\n            },\n            \"product_version\": \"10.3\",\n            \"technical_description\": {\n                \"default_value\": \"Support provided for all LTI 1 extensions as well as LTI 2\",\n                \"key\": \"tool.technical\"\n            }\n        },\n        \"service_provider\": {\n            \"description\": {\n                \"default_value\": \"Provider of high performance managed hosting environments\",\n                \"key\": \"service_provider.description\"\n            },\n            \"guid\": \"18e7ea50-3d6d-4f6b-aff2-ed3ab577716c\",\n            \"service_provider_name\": {\n                \"default_value\": \"Amazon Cloud\",\n                \"key\": \"service_provider.name\"\n            },\n            \"support\": {\n                \"email\": \"support@ec2.fabericious.com\"\n            },\n            \"timestamp\": \"2012-04-05T09:08:16-04:00\"\n        },\n        \"support\": {\n            \"email\": \"helpdesk@fabericious.com\"\n        }\n    },\n    \"resource_handler\": [\n        {\n            \"description\": {\n                \"default_value\": \"Settings service\",\n                \"key\": \"resource.description\"\n            },\n            \"message\": [\n                {\n                    \"message_type\": \"basic-lti-launch-request\",\n                    \"parameter\": [\n                        {\n                            \"name\": \"tool_proxy_custom_url\",\n                            \"variable\": \"ToolProxy.custom.url\"\n                        },\n                        {\n                            \"name\": \"tool_proxy_binding_custom_url\",\n                            \"variable\": \"ToolProxyBinding.custom.url\"\n                        },\n                        {\n                            \"name\": \"lti_link_custom_url\",\n                            \"variable\": \"LtiLink.custom.url\"\n                        }\n                    ],\n					\"enabled_capability\": [\n						\"User.id\",\n						\"Context.id\",\n						\"CourseSection.label\",\n						\"CourseSection.title\",\n						\"Person.name.family\",\n						\"Person.name.given\",\n						\"Person.email.primary\",\n						\"ToolProxy.custom.url\",\n						\"ToolProxyBinding.custom.url\",\n						\"LtiLink.custom.url\"\n					],\n                    \"path\": \"/settings\"\n                }\n            ],\n            \"resource_name\": {\n                \"default_value\": \"Settings\",\n                \"key\": \"resource.name\"\n            },\n            \"resource_type\": {\n                \"code\": \"setting\"\n            }\n        },\n        {\n            \"description\": {\n                \"default_value\": \"Echo service\",\n                \"key\": \"resource.description\"\n            },\n            \"message\": [\n                {\n                    \"message_type\": \"basic-lti-launch-request\",\n                    \"parameter\": [\n                        {\n                            \"fixed\": \"Narcissus\",\n                            \"name\": \"referrer\"\n                        },\n                        {\n                            \"fixed\": \"3.14159\",\n                            \"name\": \"pi\"\n                        },\n                        {\n                            \"name\": \"user_primary_email\",\n                            \"variable\": \"Person.email.primary\"\n                        },\n                        {\n                            \"name\": \"discipline\",\n                            \"variable\": \"CourseOffering.label\"\n                        }\n                    ],\n					\"enabled_capability\": [\n						\"User.id\",\n						\"Context.id\",\n						\"CourseSection.label\",\n						\"CourseSection.title\",\n						\"Person.name.family\",\n						\"Person.name.given\",\n						\"Person.email.primary\"\n					],\n\n                    \"path\": \"/echoes\"\n                }\n            ],\n            \"resource_name\": {\n                \"default_value\": \"Echo\",\n                \"key\": \"resource.name\"\n            },\n            \"resource_type\": {\n                \"code\": \"echo\"\n            }\n        },\n        {\n            \"description\": {\n                \"default_value\": \"Interactive resource\",\n                \"key\": \"resource.description\"\n            },\n            \"message\": [\n                {\n                    \"message_type\": \"basic-lti-launch-request\",\n                    \"parameter\": [\n                        {\n                            \"name\": \"vbid\"\n                        },\n                        {\n                            \"name\": \"result_uri\",\n                            \"variable\": \"Result.uri\"\n                        }\n                    ],\n					\"enabled_capability\": [\n						\"User.id\",\n						\"Context.id\",\n						\"CourseSection.label\",\n						\"CourseSection.title\",\n						\"Person.name.family\",\n						\"Person.name.given\",\n						\"Person.email.primary\",\n						\"Result.autocreate\"\n					],\n                    \"path\": \"/iresources\"\n                }\n            ],\n            \"resource_name\": {\n                \"default_value\": \"InteractiveResource\",\n                \"key\": \"resource.name\"\n            },\n            \"resource_type\": {\n                \"code\": \"iresource\"\n            }\n        }\n    ],\n    \"service_offered\": [\n        {\n            \"@id\": \"{tp_deployment_url}/lti2_tp/ToolProxy.collection\",\n            \"@type\": \"RestService\",\n            \"action\": [\n                \"PUT\"\n            ],\n            \"endpoint\": \"{tp_deployment_url}/lti2_tp/tool_proxies\",\n            \"format\": [\n                \"\"\n            ]\n        }\n    ]\n}\n','2013-01-13 20:12:10','2013-01-13 20:12:10');
/*!40000 ALTER TABLE `lti2_tp_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti_registration_wips`
--

DROP TABLE IF EXISTS `lti_registration_wips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti_registration_wips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(255) DEFAULT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `lti_version` varchar(255) DEFAULT NULL,
  `tool_consumer_profile` text,
  `tool_profile` text,
  `registration_return_url` varchar(255) DEFAULT NULL,
  `message_type` varchar(255) DEFAULT NULL,
  `tool_proxy` text,
  `state` varchar(255) DEFAULT NULL,
  `result_status` int(11) DEFAULT NULL,
  `result_message` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti_registration_wips`
--

LOCK TABLES `lti_registration_wips` WRITE;
/*!40000 ALTER TABLE `lti_registration_wips` DISABLE KEYS */;
/*!40000 ALTER TABLE `lti_registration_wips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150505214009'),('20150505214019');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_users`
--

DROP TABLE IF EXISTS `tenant_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_users`
--

LOCK TABLES `tenant_users` WRITE;
/*!40000 ALTER TABLE `tenant_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_key` varchar(255) DEFAULT NULL,
  `secret` text,
  `tenant_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-11  7:33:41
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.9 (x86_64)
--
-- Host: localhost    Database: tpsampleapp
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `iresources`
--

DROP TABLE IF EXISTS `iresources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iresources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` int(11) DEFAULT NULL,
  `result_uri` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `contextid` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iresources`
--

LOCK TABLES `iresources` WRITE;
/*!40000 ALTER TABLE `iresources` DISABLE KEYS */;
/*!40000 ALTER TABLE `iresources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti2_tp_registrations`
--

DROP TABLE IF EXISTS `lti2_tp_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti2_tp_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(255) DEFAULT NULL,
  `tenant_basename` varchar(255) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `reg_key` varchar(255) DEFAULT NULL,
  `reg_password` varchar(255) DEFAULT NULL,
  `tc_oauth_half_secret` text,
  `tc_profile_url` varchar(255) DEFAULT NULL,
  `launch_presentation_return_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `message_type` varchar(255) DEFAULT NULL,
  `tool_consumer_profile_json` text,
  `tool_profile_json` text,
  `tool_proxy_json` text,
  `proposed_tool_proxy_json` text,
  `tool_id` int(11) DEFAULT NULL,
  `lti_version` varchar(32) DEFAULT NULL,
  `end_registration_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti2_tp_registrations`
--

LOCK TABLES `lti2_tp_registrations` WRITE;
/*!40000 ALTER TABLE `lti2_tp_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lti2_tp_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti2_tp_registries`
--

DROP TABLE IF EXISTS `lti2_tp_registries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti2_tp_registries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti2_tp_registries`
--

LOCK TABLES `lti2_tp_registries` WRITE;
/*!40000 ALTER TABLE `lti2_tp_registries` DISABLE KEYS */;
INSERT INTO `lti2_tp_registries` VALUES (1,'tp_deployment_url','http://rails.kinexis.com:5000','2013-01-13 20:12:10','2013-01-13 20:12:10'),(2,'security_contract_template','{ \"shared_secret\" : \"{aSecret}\",\n  \"tool_service\" : [ { \n	\"@id\": \":ToolProxy.collection\",\n	\"@type\" : \"RestServiceProfile\",\n        \"action\" : \"POST\",\n        \"service\" : \"http://lms.example.com/profile/b6ffa601-ce1d-4549-9ccf-145670a964d4#ToolProxy.collection\"\n      },\n      { \n	\"@id\": \":ToolProxy.item\",\n	\"@type\" : \"RestServiceProfile\",\n        \"action\" : [ \"GET\",\n            \"PUT\"\n          ],\n        \"service\" : \"http://lms.example.com/profile/b6ffa601-ce1d-4549-9ccf-145670a964d4#ToolProxy.item\"\n      },\n      { \n	\"@id\": \":ToolProxy.collection\",\n	\"@type\" : \"RestService\",\n        \"action\" : [ \"GET\",\n            \"PUT\"\n          ],\n        \"service\" : \"http://lms.example.com/profile/b6ffa601-ce1d-4549-9ccf-145670a964d4#Result.item\"\n      }\n    ]\n}','2013-01-13 20:12:10','2013-01-13 20:12:10'),(3,'relaxed_oauth_check','false','2013-01-13 20:12:10','2013-01-13 20:12:10'),(4,'result_template','{\n  \"@context\" : \"http://www.imsglobal.org/imspurl/lis/v2/ctx/Result\",\n  \"@type\" : \"Result\",\n  \"resultScore\" : {\n    \"@type\" : \"decimal\",\n    \"@value\"  : {value}\n  }\n}\n','2013-01-13 20:12:10','2013-01-13 20:12:10'),(5,'tool_provider_name','Fabericious','2013-01-13 20:12:10','2013-01-13 20:12:10'),(6,'wirelog_filename','/tmp/wirelog.html','2014-04-22 00:00:00','2014-04-22 00:00:00');
/*!40000 ALTER TABLE `lti2_tp_registries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti2_tp_tools`
--

DROP TABLE IF EXISTS `lti2_tp_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti2_tp_tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(255) DEFAULT NULL,
  `tool_profile_template` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti2_tp_tools`
--

LOCK TABLES `lti2_tp_tools` WRITE;
/*!40000 ALTER TABLE `lti2_tp_tools` DISABLE KEYS */;
INSERT INTO `lti2_tp_tools` VALUES (2,'LTI2 BookTools','{\n    \"base_url_choice\": [\n        {\n            \"default_base_url\": \"{tp_deployment_url}\",\n            \"selector\": {\n                \"applies_to\": [\n                    \"IconEndpoint\",\n                    \"MessageHandler\"\n                ]\n            }\n        }\n    ],\n    \"lti_version\": \"LTI-2p0\",\n    \"message\": [\n        {\n            \"message_type\": [\n                \"ToolProxyRegistrationRequest\",\n                \"ToolProxyReregistrationRequest\"\n            ],\n            \"parameter\": [\n                {\n                    \"name\": \"tc_profile_url\",\n                    \"variable\": \"ToolConsumerProfile.url\"\n                }\n            ],\n            \"path\": \"{tp_deployment_url}/lti2_tp/reregistrations\"\n        }\n    ],\n    \"product_instance\": {\n        \"guid\": \"fd75124a-140e-470f-944c-114d2d92bb40\",\n        \"product_info\": {\n            \"description\": {\n                \"default_value\": \"Fabericious reflowable ePub3 Textbook\",\n                \"key\": \"tool.description\"\n            },\n            \"product_family\": {\n                \"code\": \"assessment-tool\",\n                \"vendor\": {\n                    \"code\": \"fabericious.org\",\n                    \"contact\": {\n                        \"email\": \"info@fabericious.com\"\n                    },\n                    \"description\": {\n                        \"default_value\": \"Fabericious is a leading provider of interactive tools for education\",\n                        \"key\": \"tool.vendor.description\"\n                    },\n                    \"vendor_name\": {\n                        \"default_value\": \"Fab\",\n                        \"key\": \"tool.vendor.name\"\n                    },\n                    \"timestamp\": \"2012-04-05T09:08:16-04:00\",\n                    \"website\": \"{{tp_deployment_url}}\"\n                }\n            },\n            \"product_name\": {\n                \"default_value\": \"LTI2 BookTools\",\n                \"key\": \"tool.name\"\n            },\n            \"product_version\": \"10.3\",\n            \"technical_description\": {\n                \"default_value\": \"Support provided for all LTI 1 extensions as well as LTI 2\",\n                \"key\": \"tool.technical\"\n            }\n        },\n        \"service_provider\": {\n            \"description\": {\n                \"default_value\": \"Provider of high performance managed hosting environments\",\n                \"key\": \"service_provider.description\"\n            },\n            \"guid\": \"18e7ea50-3d6d-4f6b-aff2-ed3ab577716c\",\n            \"service_provider_name\": {\n                \"default_value\": \"Amazon Cloud\",\n                \"key\": \"service_provider.name\"\n            },\n            \"support\": {\n                \"email\": \"support@ec2.fabericious.com\"\n            },\n            \"timestamp\": \"2012-04-05T09:08:16-04:00\"\n        },\n        \"support\": {\n            \"email\": \"helpdesk@fabericious.com\"\n        }\n    },\n    \"resource_handler\": [\n        {\n            \"description\": {\n                \"default_value\": \"Settings service\",\n                \"key\": \"resource.description\"\n            },\n            \"message\": [\n                {\n                    \"message_type\": \"basic-lti-launch-request\",\n                    \"parameter\": [\n                        {\n                            \"name\": \"tool_proxy_custom_url\",\n                            \"variable\": \"ToolProxy.custom.url\"\n                        },\n                        {\n                            \"name\": \"tool_proxy_binding_custom_url\",\n                            \"variable\": \"ToolProxyBinding.custom.url\"\n                        },\n                        {\n                            \"name\": \"lti_link_custom_url\",\n                            \"variable\": \"LtiLink.custom.url\"\n                        }\n                    ],\n					\"enabled_capability\": [\n						\"User.id\",\n						\"Context.id\",\n						\"CourseSection.label\",\n						\"CourseSection.title\",\n						\"Person.name.family\",\n						\"Person.name.given\",\n						\"Person.email.primary\",\n						\"ToolProxy.custom.url\",\n						\"ToolProxyBinding.custom.url\",\n						\"LtiLink.custom.url\"\n					],\n                    \"path\": \"/settings\"\n                }\n            ],\n            \"resource_name\": {\n                \"default_value\": \"Settings\",\n                \"key\": \"resource.name\"\n            },\n            \"resource_type\": {\n                \"code\": \"setting\"\n            }\n        },\n        {\n            \"description\": {\n                \"default_value\": \"Echo service\",\n                \"key\": \"resource.description\"\n            },\n            \"message\": [\n                {\n                    \"message_type\": \"basic-lti-launch-request\",\n                    \"parameter\": [\n                        {\n                            \"fixed\": \"Narcissus\",\n                            \"name\": \"referrer\"\n                        },\n                        {\n                            \"fixed\": \"3.14159\",\n                            \"name\": \"pi\"\n                        },\n                        {\n                            \"name\": \"user_primary_email\",\n                            \"variable\": \"Person.email.primary\"\n                        },\n                        {\n                            \"name\": \"discipline\",\n                            \"variable\": \"CourseOffering.label\"\n                        }\n                    ],\n					\"enabled_capability\": [\n						\"User.id\",\n						\"Context.id\",\n						\"CourseSection.label\",\n						\"CourseSection.title\",\n						\"Person.name.family\",\n						\"Person.name.given\",\n						\"Person.email.primary\"\n					],\n\n                    \"path\": \"/echoes\"\n                }\n            ],\n            \"resource_name\": {\n                \"default_value\": \"Echo\",\n                \"key\": \"resource.name\"\n            },\n            \"resource_type\": {\n                \"code\": \"echo\"\n            }\n        },\n        {\n            \"description\": {\n                \"default_value\": \"Interactive resource\",\n                \"key\": \"resource.description\"\n            },\n            \"message\": [\n                {\n                    \"message_type\": \"basic-lti-launch-request\",\n                    \"parameter\": [\n                        {\n                            \"name\": \"vbid\"\n                        },\n                        {\n                            \"name\": \"result_uri\",\n                            \"variable\": \"Result.uri\"\n                        }\n                    ],\n					\"enabled_capability\": [\n						\"User.id\",\n						\"Context.id\",\n						\"CourseSection.label\",\n						\"CourseSection.title\",\n						\"Person.name.family\",\n						\"Person.name.given\",\n						\"Person.email.primary\",\n						\"Result.autocreate\"\n					],\n                    \"path\": \"/iresources\"\n                }\n            ],\n            \"resource_name\": {\n                \"default_value\": \"InteractiveResource\",\n                \"key\": \"resource.name\"\n            },\n            \"resource_type\": {\n                \"code\": \"iresource\"\n            }\n        }\n    ],\n    \"service_offered\": [\n        {\n            \"@id\": \"{tp_deployment_url}/lti2_tp/ToolProxy.collection\",\n            \"@type\": \"RestService\",\n            \"action\": [\n                \"PUT\"\n            ],\n            \"endpoint\": \"{tp_deployment_url}/lti2_tp/tool_proxies\",\n            \"format\": [\n                \"\"\n            ]\n        }\n    ]\n}\n','2013-01-13 20:12:10','2013-01-13 20:12:10');
/*!40000 ALTER TABLE `lti2_tp_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lti_registration_wips`
--

DROP TABLE IF EXISTS `lti_registration_wips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lti_registration_wips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(255) DEFAULT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `lti_version` varchar(255) DEFAULT NULL,
  `tool_consumer_profile` text,
  `tool_profile` text,
  `registration_return_url` varchar(255) DEFAULT NULL,
  `message_type` varchar(255) DEFAULT NULL,
  `tool_proxy` text,
  `state` varchar(255) DEFAULT NULL,
  `result_status` int(11) DEFAULT NULL,
  `result_message` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lti_registration_wips`
--

LOCK TABLES `lti_registration_wips` WRITE;
/*!40000 ALTER TABLE `lti_registration_wips` DISABLE KEYS */;
/*!40000 ALTER TABLE `lti_registration_wips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150505214009'),('20150505214019');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_users`
--

DROP TABLE IF EXISTS `tenant_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_users`
--

LOCK TABLES `tenant_users` WRITE;
/*!40000 ALTER TABLE `tenant_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_key` varchar(255) DEFAULT NULL,
  `secret` text,
  `tenant_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-11  7:35:00
