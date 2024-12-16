-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootg2p7x
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootg2p7x`
--

/*!40000 DROP DATABASE IF EXISTS `springbootg2p7x`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootg2p7x` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootg2p7x`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingjianxinxi`
--

DROP TABLE IF EXISTS `dingjianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `jianchaqingkuang` longtext NOT NULL COMMENT '检查情况',
  `jianchashijian` date DEFAULT NULL COMMENT '检查时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676984172885 DEFAULT CHARSET=utf8 COMMENT='定检信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingjianxinxi`
--

LOCK TABLES `dingjianxinxi` WRITE;
/*!40000 ALTER TABLE `dingjianxinxi` DISABLE KEYS */;
INSERT INTO `dingjianxinxi` VALUES (81,'2023-02-21 12:47:28','设备编号1','设备名称1','设备类型1','检查情况1','2023-02-21','工号1','姓名1'),(82,'2023-02-21 12:47:28','设备编号2','设备名称2','设备类型2','检查情况2','2023-02-21','工号2','姓名2'),(83,'2023-02-21 12:47:28','设备编号3','设备名称3','设备类型3','检查情况3','2023-02-21','工号3','姓名3'),(84,'2023-02-21 12:47:28','设备编号4','设备名称4','设备类型4','检查情况4','2023-02-21','工号4','姓名4'),(85,'2023-02-21 12:47:28','设备编号5','设备名称5','设备类型5','检查情况5','2023-02-21','工号5','姓名5'),(86,'2023-02-21 12:47:28','设备编号6','设备名称6','设备类型6','检查情况6','2023-02-21','工号6','姓名6'),(87,'2023-02-21 12:47:28','设备编号7','设备名称7','设备类型7','检查情况7','2023-02-21','工号7','姓名7'),(88,'2023-02-21 12:47:28','设备编号8','设备名称8','设备类型8','检查情况8','2023-02-21','工号8','姓名8'),(1676984172884,'2023-02-21 12:56:12','8','xx设备','xx设备','益定期进行检查','2023-02-21','2','王莉');
/*!40000 ALTER TABLE `dingjianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetongxinxi`
--

DROP TABLE IF EXISTS `hetongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `hetongmingcheng` varchar(200) NOT NULL COMMENT '合同名称',
  `jiafang` varchar(200) NOT NULL COMMENT '甲方',
  `yifang` varchar(200) NOT NULL COMMENT '乙方',
  `zonge` float DEFAULT NULL COMMENT '总额',
  `hetongwenjian` longtext NOT NULL COMMENT '合同文件',
  `qiandingriqi` date NOT NULL COMMENT '签订日期',
  `hetongneirong` longtext NOT NULL COMMENT '合同内容',
  `youxiaoqi` varchar(200) DEFAULT NULL COMMENT '有效期',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676984232737 DEFAULT CHARSET=utf8 COMMENT='合同信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetongxinxi`
--

LOCK TABLES `hetongxinxi` WRITE;
/*!40000 ALTER TABLE `hetongxinxi` DISABLE KEYS */;
INSERT INTO `hetongxinxi` VALUES (111,'2023-02-21 12:47:28','1111111111','合同名称1','甲方1','乙方1',1,'','2023-02-21','合同内容1','有效期1',1,1),(112,'2023-02-21 12:47:28','2222222222','合同名称2','甲方2','乙方2',2,'','2023-02-21','合同内容2','有效期2',2,2),(113,'2023-02-21 12:47:28','3333333333','合同名称3','甲方3','乙方3',3,'','2023-02-21','合同内容3','有效期3',3,3),(114,'2023-02-21 12:47:28','4444444444','合同名称4','甲方4','乙方4',4,'','2023-02-21','合同内容4','有效期4',4,4),(115,'2023-02-21 12:47:28','5555555555','合同名称5','甲方5','乙方5',5,'','2023-02-21','合同内容5','有效期5',5,5),(116,'2023-02-21 12:47:28','6666666666','合同名称6','甲方6','乙方6',6,'','2023-02-21','合同内容6','有效期6',6,6),(117,'2023-02-21 12:47:28','7777777777','合同名称7','甲方7','乙方7',7,'','2023-02-21','合同内容7','有效期7',7,7),(118,'2023-02-21 12:47:28','8888888888','合同名称8','甲方8','乙方8',8,'','2023-02-21','合同内容8','有效期8',8,8),(1676984232736,'2023-02-21 12:57:12','1676984209794','采购合同','xx公司','xx公司',1500,'upload/1676984231944.doc','2023-02-21','测试','一年',1,1676984189512);
/*!40000 ALTER TABLE `hetongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehuxinxi`
--

DROP TABLE IF EXISTS `kehuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehubianhao` varchar(200) NOT NULL COMMENT '客户编号',
  `gongsimingcheng` varchar(200) NOT NULL COMMENT '公司名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `caigoujiage` float NOT NULL COMMENT '采购价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehubianhao` (`kehubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676984087925 DEFAULT CHARSET=utf8 COMMENT='客户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehuxinxi`
--

LOCK TABLES `kehuxinxi` WRITE;
/*!40000 ALTER TABLE `kehuxinxi` DISABLE KEYS */;
INSERT INTO `kehuxinxi` VALUES (21,'2023-02-21 12:47:28','客户编号1','公司名称1','联系人1',1,'13823888881','773890001@qq.com','地址1','备注1'),(22,'2023-02-21 12:47:28','客户编号2','公司名称2','联系人2',2,'13823888882','773890002@qq.com','地址2','备注2'),(23,'2023-02-21 12:47:28','客户编号3','公司名称3','联系人3',3,'13823888883','773890003@qq.com','地址3','备注3'),(24,'2023-02-21 12:47:28','客户编号4','公司名称4','联系人4',4,'13823888884','773890004@qq.com','地址4','备注4'),(25,'2023-02-21 12:47:28','客户编号5','公司名称5','联系人5',5,'13823888885','773890005@qq.com','地址5','备注5'),(26,'2023-02-21 12:47:28','客户编号6','公司名称6','联系人6',6,'13823888886','773890006@qq.com','地址6','备注6'),(27,'2023-02-21 12:47:28','客户编号7','公司名称7','联系人7',7,'13823888887','773890007@qq.com','地址7','备注7'),(28,'2023-02-21 12:47:28','客户编号8','公司名称8','联系人8',8,'13823888888','773890008@qq.com','地址8','备注8'),(1676984087924,'2023-02-21 12:54:47','1','xx公司','张力',15,'15214121411','121212@12.com','xx地址','专门提供各种设备');
/*!40000 ALTER TABLE `kehuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peijiancaigou`
--

DROP TABLE IF EXISTS `peijiancaigou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peijiancaigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peijianmingcheng` varchar(200) DEFAULT NULL COMMENT '配件名称',
  `peijianleixing` varchar(200) DEFAULT NULL COMMENT '配件类型',
  `kehubianhao` varchar(200) NOT NULL COMMENT '客户编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `caigoujiage` float DEFAULT NULL COMMENT '采购价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zonge` varchar(200) NOT NULL COMMENT '总额',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676984189513 DEFAULT CHARSET=utf8 COMMENT='配件采购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peijiancaigou`
--

LOCK TABLES `peijiancaigou` WRITE;
/*!40000 ALTER TABLE `peijiancaigou` DISABLE KEYS */;
INSERT INTO `peijiancaigou` VALUES (101,'2023-02-21 12:47:28','配件名称1','配件类型1','客户编号1','公司名称1',1,1,'总额1','2023-02-21','工号1','姓名1'),(102,'2023-02-21 12:47:28','配件名称2','配件类型2','客户编号2','公司名称2',2,2,'总额2','2023-02-21','工号2','姓名2'),(103,'2023-02-21 12:47:28','配件名称3','配件类型3','客户编号3','公司名称3',3,3,'总额3','2023-02-21','工号3','姓名3'),(104,'2023-02-21 12:47:28','配件名称4','配件类型4','客户编号4','公司名称4',4,4,'总额4','2023-02-21','工号4','姓名4'),(105,'2023-02-21 12:47:28','配件名称5','配件类型5','客户编号5','公司名称5',5,5,'总额5','2023-02-21','工号5','姓名5'),(106,'2023-02-21 12:47:28','配件名称6','配件类型6','客户编号6','公司名称6',6,6,'总额6','2023-02-21','工号6','姓名6'),(107,'2023-02-21 12:47:28','配件名称7','配件类型7','客户编号7','公司名称7',7,7,'总额7','2023-02-21','工号7','姓名7'),(108,'2023-02-21 12:47:28','配件名称8','配件类型8','客户编号8','公司名称8',8,8,'总额8','2023-02-21','工号8','姓名8'),(1676984189512,'2023-02-21 12:56:29','xx配件','xx类型','1','xx公司',15,100,'1500','2023-02-21','2','王莉');
/*!40000 ALTER TABLE `peijiancaigou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peijianxinxi`
--

DROP TABLE IF EXISTS `peijianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peijianmingcheng` varchar(200) NOT NULL COMMENT '配件名称',
  `peijianleixing` varchar(200) NOT NULL COMMENT '配件类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `peijianjianjie` longtext NOT NULL COMMENT '配件简介',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='配件信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peijianxinxi`
--

LOCK TABLES `peijianxinxi` WRITE;
/*!40000 ALTER TABLE `peijianxinxi` DISABLE KEYS */;
INSERT INTO `peijianxinxi` VALUES (91,'2023-02-21 12:47:28','配件名称1','配件类型1',1,'生产商1','2023-02-21','配件简介1','2023-02-21'),(92,'2023-02-21 12:47:28','配件名称2','配件类型2',2,'生产商2','2023-02-21','配件简介2','2023-02-21'),(93,'2023-02-21 12:47:28','配件名称3','配件类型3',3,'生产商3','2023-02-21','配件简介3','2023-02-21'),(94,'2023-02-21 12:47:28','配件名称4','配件类型4',4,'生产商4','2023-02-21','配件简介4','2023-02-21'),(95,'2023-02-21 12:47:28','配件名称5','配件类型5',5,'生产商5','2023-02-21','配件简介5','2023-02-21'),(96,'2023-02-21 12:47:28','配件名称6','配件类型6',6,'生产商6','2023-02-21','配件简介6','2023-02-21'),(97,'2023-02-21 12:47:28','配件名称7','配件类型7',7,'生产商7','2023-02-21','配件简介7','2023-02-21'),(98,'2023-02-21 12:47:28','xx配件','xx类型',250,'xx产商','2023-02-21','配件简介8测试','2023-02-21');
/*!40000 ALTER TABLE `peijianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeibaoyang`
--

DROP TABLE IF EXISTS `shebeibaoyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeibaoyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `baoyangshuoming` longtext COMMENT '保养说明',
  `baoyangriqi` date DEFAULT NULL COMMENT '保养日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676984163968 DEFAULT CHARSET=utf8 COMMENT='设备保养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeibaoyang`
--

LOCK TABLES `shebeibaoyang` WRITE;
/*!40000 ALTER TABLE `shebeibaoyang` DISABLE KEYS */;
INSERT INTO `shebeibaoyang` VALUES (71,'2023-02-21 12:47:28','设备编号1','设备名称1','设备类型1','保养说明1','2023-02-21','工号1','姓名1'),(72,'2023-02-21 12:47:28','设备编号2','设备名称2','设备类型2','保养说明2','2023-02-21','工号2','姓名2'),(73,'2023-02-21 12:47:28','设备编号3','设备名称3','设备类型3','保养说明3','2023-02-21','工号3','姓名3'),(74,'2023-02-21 12:47:28','设备编号4','设备名称4','设备类型4','保养说明4','2023-02-21','工号4','姓名4'),(75,'2023-02-21 12:47:28','设备编号5','设备名称5','设备类型5','保养说明5','2023-02-21','工号5','姓名5'),(76,'2023-02-21 12:47:28','设备编号6','设备名称6','设备类型6','保养说明6','2023-02-21','工号6','姓名6'),(77,'2023-02-21 12:47:28','设备编号7','设备名称7','设备类型7','保养说明7','2023-02-21','工号7','姓名7'),(78,'2023-02-21 12:47:28','设备编号8','设备名称8','设备类型8','保养说明8','2023-02-21','工号8','姓名8'),(1676984163967,'2023-02-21 12:56:03','8','xx设备','xx设备','已进行保养 没啥问题','2023-02-21','2','王莉');
/*!40000 ALTER TABLE `shebeibaoyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeileixing`
--

DROP TABLE IF EXISTS `shebeileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeileixing` varchar(200) NOT NULL COMMENT '设备类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='设备类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeileixing`
--

LOCK TABLES `shebeileixing` WRITE;
/*!40000 ALTER TABLE `shebeileixing` DISABLE KEYS */;
INSERT INTO `shebeileixing` VALUES (31,'2023-02-21 12:47:28','设备类型1'),(32,'2023-02-21 12:47:28','设备类型2'),(33,'2023-02-21 12:47:28','设备类型3'),(34,'2023-02-21 12:47:28','设备类型4'),(35,'2023-02-21 12:47:28','设备类型5'),(36,'2023-02-21 12:47:28','设备类型6'),(37,'2023-02-21 12:47:28','设备类型7'),(38,'2023-02-21 12:47:28','xx设备');
/*!40000 ALTER TABLE `shebeileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeiweixiu`
--

DROP TABLE IF EXISTS `shebeiweixiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeiweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `weixiuneirong` longtext COMMENT '维修内容',
  `weixiuriqi` date DEFAULT NULL COMMENT '维修日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676984121985 DEFAULT CHARSET=utf8 COMMENT='设备维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeiweixiu`
--

LOCK TABLES `shebeiweixiu` WRITE;
/*!40000 ALTER TABLE `shebeiweixiu` DISABLE KEYS */;
INSERT INTO `shebeiweixiu` VALUES (61,'2023-02-21 12:47:28','设备编号1','设备名称1','设备类型1','维修内容1','2023-02-21','工号1','姓名1'),(62,'2023-02-21 12:47:28','设备编号2','设备名称2','设备类型2','维修内容2','2023-02-21','工号2','姓名2'),(63,'2023-02-21 12:47:28','设备编号3','设备名称3','设备类型3','维修内容3','2023-02-21','工号3','姓名3'),(64,'2023-02-21 12:47:28','设备编号4','设备名称4','设备类型4','维修内容4','2023-02-21','工号4','姓名4'),(65,'2023-02-21 12:47:28','设备编号5','设备名称5','设备类型5','维修内容5','2023-02-21','工号5','姓名5'),(66,'2023-02-21 12:47:28','设备编号6','设备名称6','设备类型6','维修内容6','2023-02-21','工号6','姓名6'),(67,'2023-02-21 12:47:28','设备编号7','设备名称7','设备类型7','维修内容7','2023-02-21','工号7','姓名7'),(68,'2023-02-21 12:47:28','设备编号8','设备名称8','设备类型8','维修内容8','2023-02-21','工号8','姓名8'),(1676984121984,'2023-02-21 12:55:21','8','xx设备','xx设备','已进行修理好了','2023-02-21','2','王莉');
/*!40000 ALTER TABLE `shebeiweixiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeixinghao`
--

DROP TABLE IF EXISTS `shebeixinghao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeixinghao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeixinghao` varchar(200) NOT NULL COMMENT '设备型号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='设备型号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeixinghao`
--

LOCK TABLES `shebeixinghao` WRITE;
/*!40000 ALTER TABLE `shebeixinghao` DISABLE KEYS */;
INSERT INTO `shebeixinghao` VALUES (41,'2023-02-21 12:47:28','设备型号1'),(42,'2023-02-21 12:47:28','设备型号2'),(43,'2023-02-21 12:47:28','设备型号3'),(44,'2023-02-21 12:47:28','设备型号4'),(45,'2023-02-21 12:47:28','设备型号5'),(46,'2023-02-21 12:47:28','设备型号6'),(47,'2023-02-21 12:47:28','设备型号7'),(48,'2023-02-21 12:47:28','xx型号');
/*!40000 ALTER TABLE `shebeixinghao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeixinxi`
--

DROP TABLE IF EXISTS `shebeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) NOT NULL COMMENT '设备类型',
  `shebeixinghao` varchar(200) NOT NULL COMMENT '设备型号',
  `baoyangriqi` date NOT NULL COMMENT '保养日期',
  `dingjianriqi` date DEFAULT NULL COMMENT '定检日期',
  `shebeijianjie` longtext NOT NULL COMMENT '设备简介',
  `shebeizhuangtai` varchar(200) DEFAULT NULL COMMENT '设备状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeixinxi`
--

LOCK TABLES `shebeixinxi` WRITE;
/*!40000 ALTER TABLE `shebeixinxi` DISABLE KEYS */;
INSERT INTO `shebeixinxi` VALUES (51,'2023-02-21 12:47:28','设备编号1','设备名称1','设备类型1','设备型号1','2023-02-21','2023-02-21','设备简介1','正常'),(52,'2023-02-21 12:47:28','设备编号2','设备名称2','设备类型2','设备型号2','2023-02-21','2023-02-21','设备简介2','正常'),(53,'2023-02-21 12:47:28','设备编号3','设备名称3','设备类型3','设备型号3','2023-02-21','2023-02-21','设备简介3','正常'),(54,'2023-02-21 12:47:28','设备编号4','设备名称4','设备类型4','设备型号4','2023-02-21','2023-02-21','设备简介4','正常'),(55,'2023-02-21 12:47:28','设备编号5','设备名称5','设备类型5','设备型号5','2023-02-21','2023-02-21','设备简介5','正常'),(56,'2023-02-21 12:47:28','设备编号6','设备名称6','设备类型6','设备型号6','2023-02-21','2023-02-21','设备简介6','正常'),(57,'2023-02-21 12:47:28','设备编号7','设备名称7','设备类型7','设备型号7','2023-02-21','2023-02-21','设备简介7','正常'),(58,'2023-02-21 12:47:28','8','xx设备','xx设备','xx型号','2023-02-21','2023-02-20','设备简介8测试','正常');
/*!40000 ALTER TABLE `shebeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','j36bgozvfobcx3ip3d0xdfir6bqlca3r','2023-02-21 12:49:20','2023-02-21 13:56:39'),(2,1676983852665,'2','yuangong','员工','32zyq1y2oqztuhmb7b2ntmhftvn7j6wf','2023-02-21 12:54:21','2023-02-21 13:54:21');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-21 12:47:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676983852666 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2023-02-21 12:47:28','工号1','123456','姓名1','男','部门1','职位1','13823888881'),(12,'2023-02-21 12:47:28','工号2','123456','姓名2','男','部门2','职位2','13823888882'),(13,'2023-02-21 12:47:28','工号3','123456','姓名3','男','部门3','职位3','13823888883'),(14,'2023-02-21 12:47:28','工号4','123456','姓名4','男','部门4','职位4','13823888884'),(15,'2023-02-21 12:47:28','工号5','123456','姓名5','男','部门5','职位5','13823888885'),(16,'2023-02-21 12:47:28','工号6','123456','姓名6','男','部门6','职位6','13823888886'),(17,'2023-02-21 12:47:28','工号7','123456','姓名7','男','部门7','职位7','13823888887'),(18,'2023-02-21 12:47:28','1','1','姓名8','男','部门8','职位8','13823888888'),(1676983852665,'2023-02-21 12:50:52','2','1','王莉','女','xx部门','员工','15214121411');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-05 21:04:09
