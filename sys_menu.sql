-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: shop-admin
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '父节点名称',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `type` varchar(20) DEFAULT NULL COMMENT '类型:菜单or功能',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `url` varchar(255) DEFAULT NULL,
  `perm_code` varchar(50) DEFAULT NULL COMMENT '菜单编码',
  `icon` varchar(255) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,NULL,'系统管理','F',1,'','','icon-standard-cog','',''),(2,1,'角色管理','F',3,'sys/role','','icon-hamburg-my-account','closed',''),(3,1,'用户管理','F',2,'sys/user','','icon-hamburg-user','closed',''),(4,2,'添加','O',NULL,'','sys:role:add','','','角色添加'),(5,2,'删除','O',NULL,'','sys:role:delete','','','角色删除'),(6,2,'修改','O',NULL,'','sys:role:update','','','角色修改'),(7,3,'添加','O',NULL,'','sys:user:add','','','用户添加'),(8,3,'删除','O',NULL,'','sys:user:delete','','','用户删除'),(12,1,'权限管理','F',5,'sys/permission','','icon-hamburg-login','closed',''),(14,15,'数据源监控','F',6,'druid','','icon-hamburg-database','',''),(15,NULL,'系统监控','F',5,'','','icon-hamburg-graphic','',''),(16,3,'修改','O',NULL,'','sys:user:update','','','用户修改'),(20,15,'日志管理','F',7,'sys/log','','icon-hamburg-archives','',''),(25,12,'添加','O',NULL,'','sys:perm:add','','','菜单添加'),(26,12,'修改','O',NULL,'','sys:perm:update','','','菜单修改'),(27,12,'删除','O',NULL,'','sys:perm:delete','','','菜单删除'),(28,2,'查看','O',NULL,'','sys:role:view','','','角色查看'),(29,3,'查看','O',NULL,'','sys:user:view','',NULL,'用户查看'),(30,12,'查看','O',NULL,'','sys:perm:view','',NULL,'权限查看'),(31,20,'删除','O',NULL,'','sys:log:delete','',NULL,'删除日志'),(32,20,'导出excel','O',NULL,'','sys:log:exportExcel','',NULL,'导出日志excel'),(33,3,'查看用户角色','O',NULL,'','sys:user:roleView','',NULL,'查看用户角色'),(34,2,'保存授权','O',NULL,'','sys:role:permUpd','',NULL,'保存修改的角色权限'),(35,3,'修改用户角色','O',NULL,'','sys:user:roleUpd','',NULL,'修改用户拥有的角色'),(36,2,'查看角色权限','O',NULL,'','sys:role:permView','',NULL,'查看角色拥有的权限'),(37,15,'定时任务管理','F',NULL,'system/scheduleJob','','icon-hamburg-full-time',NULL,'定时任务管理，支持集群'),(38,15,'cron表达式生成','F',NULL,'system/scheduleJob/quartzCron','','icon-hamburg-future',NULL,''),(39,1,'菜单管理','F',4,'system/permission/menu','','icon-hamburg-old-versions',NULL,''),(40,1,'字典管理','F',6,'system/dict',NULL,'icon-hamburg-address',NULL,'数据字典管理'),(45,39,'修改','O',NULL,'','sys:perm:update',NULL,NULL,'菜单管理'),(58,39,'添加','O',NULL,'','sys:perm:add',NULL,NULL,'菜单管理'),(59,39,'删除','O',NULL,'','sys:perm:delte',NULL,NULL,'菜单管理'),(61,40,'添加','O',NULL,'','sys:dict:add',NULL,NULL,'字典管理'),(62,40,'删除','O',NULL,'','sys:dict:delete',NULL,NULL,'字典管理'),(63,40,'修改','O',NULL,'','sys:dict:update',NULL,NULL,'字典管理'),(68,20,'查看','O',NULL,'','sys:log:view',NULL,NULL,'查看日志'),(69,40,'查看','O',NULL,'','sys:dict:view',NULL,NULL,'字典管理'),(70,39,'查看','O',NULL,'','sys:perm:menu:view',NULL,NULL,'菜单管理'),(71,NULL,'商店管理','F',6,'',NULL,'icon-hamburg-basket',NULL,'商店'),(72,71,'商品管理','F',NULL,'shop/goods',NULL,'icon-hamburg-product',NULL,'商品管理'),(73,71,'商品类型管理','F',NULL,'shop/goodsType',NULL,'icon-hamburg-milestone',NULL,'商品类型'),(74,1,'区域信息','F',7,'system/area',NULL,'icon-hamburg-world',NULL,'管理行政区划'),(75,1,'机构管理','F',8,'system/organization',NULL,'icon-cologne-home',NULL,'组织机构管理'),(76,3,'查看用户机构','O',NULL,'','sys:user:orgView',NULL,NULL,'查看用户机构'),(77,3,'修改用户机构','O',NULL,'','sys:user:orgUpd',NULL,NULL,'修改用户所在的机构'),(78,NULL,'微信管理','F',9,NULL,NULL,'weixin',NULL,NULL),(79,78,'微信粉丝信息','F',NULL,'wechat/userList',NULL,'User',NULL,NULL);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-03 22:22:33
