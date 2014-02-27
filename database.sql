-- MySQL dump 10.13  Distrib 5.6.12, for Win32 (x86)
--
-- Host: localhost    Database: easyFuse
-- ------------------------------------------------------
-- Server version	5.6.12

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
-- Table structure for table `t_sys_functree`
--

DROP TABLE IF EXISTS `t_sys_functree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_functree` (
  `C_ID` varchar(32) NOT NULL,
  `C_CODE` varchar(45) DEFAULT NULL,
  `C_NAME` varchar(45) DEFAULT NULL,
  `C_URL` varchar(128) DEFAULT NULL,
  `C_TYPE` varchar(45) DEFAULT NULL,
  `C_PARENTID` varchar(32) DEFAULT NULL,
  `C_SORT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_functree`
--

LOCK TABLES `t_sys_functree` WRITE;
/*!40000 ALTER TABLE `t_sys_functree` DISABLE KEYS */;
INSERT INTO `t_sys_functree` VALUES ('402880ef4378f61b0143790144f90002','01','首页','/home','1','0','01-'),('402880ef4378f61b0143790182ae0003','02','人事管理','#','1','0','02-'),('402880ef4378f61b0143790519a00004','03','装修管理','#','1','0','03-'),('402880ef4378f61b01437905d4840005','custom','客户信息','/develop','1','402880ef4378f61b0143790519a00004','03-01-'),('402880ef4378f61b014379066fca0006','house','房屋管理','/develop','1','402880ef4378f61b0143790519a00004','03-02-'),('402880ef4378f61b01437906d9ee0007','project','装修项目','/develop','1','402880ef4378f61b0143790519a00004','03-03-'),('402880ef4378f61b01437907bfc90008','template','报价模板','/develop','1','402880ef4378f61b0143790519a00004','03-04-'),('402880ef4378f61b0143790839010009','04','资金管理','/develop','1','0','04-'),('402880ef4464558d01446458059d0000','org','组织机构','/org/listOrgs','1','402880ef4378f61b0143790182ae0003','02-01-'),('402880ef4464558d0144645864e40001','funcTree','功能管理','/functree/listFuncTrees','1','402880ef4378f61b0143790182ae0003','02-02-'),('402880ef4464558d01446458dfc10002','role','角色管理','/role/listRoles','1','402880ef4378f61b0143790182ae0003','02-03-'),('402880ef4464558d014464594e690003','staff','人员管理','/user/listUsers','1','402880ef4378f61b0143790182ae0003','02-04-'),('402880ef4464558d0144645a422f0004','satisfaction','客户满意度','/develop','1','402880ef4378f61b0143790182ae0003','02-05-'),('402880ef4464558d0144645d5386000a','quotation','报价','/develop','1','402880ef4378f61b0143790519a00004','03-05-'),('402880ef4464558d0144645da494000b','contract','合同签订','/develop','1','402880ef4378f61b0143790519a00004','03-06-'),('402880ef4464558d0144645f00c9000c','05','主材管理','/develop','1','0','05-'),('402880ef4464558d0144645f437f000d','06','统计报表','/develop','1','0','06-'),('402880ef4464558d0144645f9bd0000e','07','市场销售','#','1','0','07-'),('402880ef4464558d0144645feca0000f','activity','促销活动','/develop','1','402880ef4464558d0144645f9bd0000e','07-01-'),('402880ef4464558d014464607c9b0010','08','系统管理','#','1','0','08-'),('402880ef4464558d01446461163b0011','editProfile','编辑信息','/user/editUserProfile','1','402880ef4464558d014464607c9b0010','08-01-'),('402880ef4464558d014464615b140012','activeUsers','会话管理','/user/listActiveUsers','1','402880ef4464558d014464607c9b0010','08-02-'),('402880ef4464558d014464619e760013','logQuery','日志查询','/develop','1','402880ef4464558d014464607c9b0010','08-03-'),('402880ef4464558d01446461dac40014','sysConfig','系统配置','/develop','1','402880ef4464558d014464607c9b0010','08-04-'),('402880ef4464558d0144646244d80015','09','退出','/logout','1','0','09-');
/*!40000 ALTER TABLE `t_sys_functree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_org`
--

DROP TABLE IF EXISTS `t_sys_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_org` (
  `c_id` varchar(32) NOT NULL,
  `c_name` varchar(45) DEFAULT NULL,
  `c_code` varchar(45) DEFAULT NULL,
  `c_parentid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_org`
--

LOCK TABLES `t_sys_org` WRITE;
/*!40000 ALTER TABLE `t_sys_org` DISABLE KEYS */;
INSERT INTO `t_sys_org` VALUES ('402880ef436ca08701436cbb26480004','和平','10001','0'),('402880ef436ca08701436cbbaa8c0005','沈河','100002',''),('402880ef436eff0b01436f03dcee0000','铁西','10003','0'),('402880ef436eff0b01436f0989cf0001','皇姑','100004','0'),('402880ef436eff0b01436f0a65a80002','太原街','10000101','402880ef436ca08701436cbb26480004'),('402880ef4373d8e4014373db93c00000','苏家屯','11111','0'),('402880ef4373d8e40143740fd7730002','时装地下','11','402880ef436eff0b01436f0a65a80002'),('402880ef4374116901437413a6bb0000','地下一层','33','402880ef4373d8e40143740fd7730002'),('402880ef4374267601437432be630000','地下二层','0002','402880ef4373d8e40143740fd7730002'),('402880ef438bc56601438bed34080007','11','11','0');
/*!40000 ALTER TABLE `t_sys_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_role`
--

DROP TABLE IF EXISTS `t_sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_role` (
  `c_id` varchar(32) NOT NULL,
  `c_roleCode` varchar(45) DEFAULT NULL,
  `c_roleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_role`
--

LOCK TABLES `t_sys_role` WRITE;
/*!40000 ALTER TABLE `t_sys_role` DISABLE KEYS */;
INSERT INTO `t_sys_role` VALUES ('402880ef439d603701439d6230270000','role_admin','系统管理员'),('402880ef439d63df01439d65cdef0000','role_user','普通用户'),('402880ef439d63df01439d6614db0001','role_sys','超级用户'),('402880ef439d63df01439d66b8200002','role_temp','临时角色'),('402880ef439d63df01439d66b90a0003','aaa','22111'),('402880ef439d63df01439d66b9490004','1111','221'),('402880ef43a8f3dc0143a8f47ce80000','new_role','new_role'),('402880ef43a94fa20143a95059d00000','new','444');
/*!40000 ALTER TABLE `t_sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_role_functree`
--

DROP TABLE IF EXISTS `t_sys_role_functree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_role_functree` (
  `C_ID` varchar(32) NOT NULL,
  `C_ROLEID` varchar(32) DEFAULT NULL,
  `C_FUNCTREEID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_role_functree`
--

LOCK TABLES `t_sys_role_functree` WRITE;
/*!40000 ALTER TABLE `t_sys_role_functree` DISABLE KEYS */;
INSERT INTO `t_sys_role_functree` VALUES ('402880ef43bbf8130143bbfa5ed90000','402880ef439d603701439d6230270000','402880ef4378f61b0143790182ae0003'),('402880ef43bbf8130143bbfcd3150001','402880ef439d603701439d6230270000','402880ef4378f61b01437905d4840005'),('402880ef43bbf8130143bbfd131c0002','402880ef439d603701439d6230270000','402880ef4378f61b0143790519a00004'),('402880ef43bbf8130143bbfda51b0003','402880ef439d603701439d6230270000','402880ef4378f61b014379066fca0006'),('402880ef4433158a0144331bb8a00001','402880ef439d603701439d6230270000','0'),('402880ef4433158a0144331bc35e0002','402880ef439d603701439d6230270000','402880ef4378f61b0143790144f90002'),('402880ef4433158a0144331c052a0003','402880ef439d603701439d6230270000','402880ef4378f61b01437906d9ee0007'),('402880ef4433158a0144331c0dc50004','402880ef439d603701439d6230270000','402880ef4378f61b01437907bfc90008'),('402880ef4433158a0144331c1a960005','402880ef439d603701439d6230270000','402880ef4378f61b0143790839010009'),('402880ef4464558d0144645a9a800005','402880ef439d603701439d6230270000','402880ef4464558d01446458059d0000'),('402880ef4464558d0144645aa3b80006','402880ef439d603701439d6230270000','402880ef4464558d0144645864e40001'),('402880ef4464558d0144645ab0790007','402880ef439d603701439d6230270000','402880ef4464558d01446458dfc10002'),('402880ef4464558d0144645abec20008','402880ef439d603701439d6230270000','402880ef4464558d014464594e690003'),('402880ef4464558d0144645aca4b0009','402880ef439d603701439d6230270000','402880ef4464558d0144645a422f0004'),('402880ef4464558d01446462971e0016','402880ef439d603701439d6230270000','402880ef4464558d0144645d5386000a'),('402880ef4464558d01446462a22a0017','402880ef439d603701439d6230270000','402880ef4464558d0144645da494000b'),('402880ef4464558d01446462b9c90018','402880ef439d603701439d6230270000','402880ef4464558d0144645f00c9000c'),('402880ef4464558d01446462c7270019','402880ef439d603701439d6230270000','402880ef4464558d0144645f437f000d'),('402880ef4464558d01446462d291001a','402880ef439d603701439d6230270000','402880ef4464558d0144645f9bd0000e'),('402880ef4464558d01446462e0aa001b','402880ef439d603701439d6230270000','402880ef4464558d0144645feca0000f'),('402880ef4464558d01446462ee18001c','402880ef439d603701439d6230270000','402880ef4464558d014464607c9b0010'),('402880ef4464558d01446462fb76001d','402880ef439d603701439d6230270000','402880ef4464558d01446461163b0011'),('402880ef4464558d0144646308e3001e','402880ef439d603701439d6230270000','402880ef4464558d014464615b140012'),('402880ef4464558d0144646316fd001f','402880ef439d603701439d6230270000','402880ef4464558d014464619e760013'),('402880ef4464558d0144646323220020','402880ef439d603701439d6230270000','402880ef4464558d01446461dac40014'),('402880ef4464558d0144646331f70021','402880ef439d603701439d6230270000','402880ef4464558d0144646244d80015'),('402880ef446465fb01446469c1a70002','402880ef439d63df01439d65cdef0000','402880ef4378f61b0143790144f90002'),('402880ef446465fb01446469d0ca0003','402880ef439d63df01439d65cdef0000','402880ef4464558d0144646244d80015'),('402880ef446465fb01446469dd9b0004','402880ef439d63df01439d65cdef0000','402880ef4378f61b0143790182ae0003');
/*!40000 ALTER TABLE `t_sys_role_functree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_user`
--

DROP TABLE IF EXISTS `t_sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_user` (
  `C_ID` varchar(32) NOT NULL,
  `C_USERNAME` varchar(45) DEFAULT NULL,
  `C_PASSWORD` varchar(45) DEFAULT NULL,
  `C_EMAIL` varchar(45) DEFAULT NULL,
  `C_PHONENUMBER` varchar(45) DEFAULT NULL,
  `C_ACCOUNT_ENABLED` int(11) DEFAULT NULL,
  `C_ACCOUNT_EXPIRED` int(11) DEFAULT NULL,
  `C_ACCOUNT_LOCKED` int(11) DEFAULT NULL,
  `C_CREDENTIALS_EXPIRED` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_user`
--

LOCK TABLES `t_sys_user` WRITE;
/*!40000 ALTER TABLE `t_sys_user` DISABLE KEYS */;
INSERT INTO `t_sys_user` VALUES ('402880ef436ca08701436cb87baa0002','admin','admin','admin@163.com','15678945210',1,0,0,0),('402880ef436ca08701436cba36890003','卡耐基','admin','knj@163.com','13712345874',1,0,0,0),('402880ef436ccc1901436cce992a0000','user','admin','user@163.com','13745874589',1,0,0,0),('402880ef43a2a5690143a2ab10b30000','1','1','1','1',1,0,0,0),('402880ef43a2a5690143a2b1c0fb0001','1','1','1','1',1,0,0,0),('402880ef43a2a5690143a2b455ee0002','1','1','1','1',1,0,0,0),('402880ef43a2a5690143a2b75b4e0003','33','3','3','3',1,0,0,0),('402880ef43a2e7340143a2e84b520000','5','5','5','5',1,0,0,0),('402880ef43a7b7ca0143a7bc7a840000','55','55','55','55',1,0,0,0),('402880ef43a7b7ca0143a7bea64d0001','78','78','78','78',1,0,0,0),('402880ef43a7b7ca0143a7d2c1460003','66111','66','66222','66',1,0,0,0),('402880ef43a923260143a923b3840000','zhq','zhq','zhq','zhq',1,0,0,0),('402880ef43a92bde0143a92d90e80016','11','11','11','11',1,0,0,0),('402880ef43a92bde0143a930f88c001f','1','1','1','1',1,0,0,0);
/*!40000 ALTER TABLE `t_sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_user_role`
--

DROP TABLE IF EXISTS `t_sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_user_role` (
  `C_ID` varchar(32) DEFAULT NULL,
  `C_USERID` varchar(32) DEFAULT NULL,
  `C_ROLEID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_user_role`
--

LOCK TABLES `t_sys_user_role` WRITE;
/*!40000 ALTER TABLE `t_sys_user_role` DISABLE KEYS */;
INSERT INTO `t_sys_user_role` VALUES ('402880ef43a92bde0143a92d90e80017','402880ef43a92bde0143a92d90e80016','402880ef439d603701439d6230270000'),('402880ef43a92bde0143a930f88c0020','402880ef43a92bde0143a930f88c001f','402880ef439d603701439d6230270000'),('402880ef43a92bde0143a930f88c0021','402880ef43a92bde0143a930f88c001f','402880ef439d63df01439d65cdef0000'),('402880ef43a92bde0143a930f88c0022','402880ef43a92bde0143a930f88c001f','402880ef439d63df01439d6614db0001'),('402880ef43a92bde0143a930f88c0023','402880ef43a92bde0143a930f88c001f','402880ef439d63df01439d66b8200002'),('402880ef43a92bde0143a930f88c0024','402880ef43a92bde0143a930f88c001f','402880ef439d63df01439d66b90a0003'),('402880ef43a92bde0143a930f88c0025','402880ef43a92bde0143a930f88c001f','402880ef439d63df01439d66b9490004'),('402880ef43a92bde0143a930f88c0026','402880ef43a92bde0143a930f88c001f','402880ef43a8f3dc0143a8f47ce80000'),('402880ef4433158a0144331b7b390000','402880ef436ca08701436cb87baa0002','402880ef439d603701439d6230270000'),('402880ef446465fb0144646883f70000','402880ef43a923260143a923b3840000','402880ef439d63df01439d65cdef0000'),('402880ef446465fb0144646884060001','402880ef43a923260143a923b3840000','402880ef439d63df01439d66b8200002');
/*!40000 ALTER TABLE `t_sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-27 22:29:03
