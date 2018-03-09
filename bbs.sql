/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-03 10:56:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_forum
-- ----------------------------
DROP TABLE IF EXISTS `t_forum`;
CREATE TABLE `t_forum` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_forum
-- ----------------------------
INSERT INTO `t_forum` VALUES ('1', 'Web开发', '讨论Web开发相关技术');
INSERT INTO `t_forum` VALUES ('2', 'Java论坛', '讨论Java相关技术');

-- ----------------------------
-- Table structure for t_post
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `tpid` int(11) DEFAULT NULL,
  `upid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKo0ap6hlxbhem421ijrs0xqxbs` (`tpid`),
  KEY `FK1w0xpfhjdgdyf5pgv4tp5dkhw` (`upid`),
  CONSTRAINT `FK1w0xpfhjdgdyf5pgv4tp5dkhw` FOREIGN KEY (`upid`) REFERENCES `t_user` (`uid`),
  CONSTRAINT `FKo0ap6hlxbhem421ijrs0xqxbs` FOREIGN KEY (`tpid`) REFERENCES `t_topic` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES ('1', '发一个测试的问题？？？？？', '2017-11-30 21:19:50', '3', '2');
INSERT INTO `t_post` VALUES ('2', '发一个测试的问题？？？？？', '2017-11-30 21:19:50', '3', '2');
INSERT INTO `t_post` VALUES ('3', 'Java eclipse问题求大神解答？？？？？', '2017-11-30 21:19:50', '3', '2');
INSERT INTO `t_post` VALUES ('4', '测试问题——————0', '2017-12-02 22:06:34', '3', '1');
INSERT INTO `t_post` VALUES ('5', '测试问题——————0', '2017-12-02 22:07:25', '3', '1');
INSERT INTO `t_post` VALUES ('6', '测试问题——————1', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('7', '测试问题——————2', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('8', '测试问题——————3', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('9', '测试问题——————4', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('10', '测试问题——————5', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('11', '测试问题——————6', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('12', '测试问题——————7', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('13', '测试问题——————8', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('14', '测试问题——————9', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('15', '测试问题——————10', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('16', '测试问题——————11', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('17', '测试问题——————12', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('18', '测试问题——————13', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('19', '测试问题——————14', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('20', '测试问题——————15', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('21', '测试问题——————16', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('22', '测试问题——————17', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('23', '测试问题——————18', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('24', '测试问题——————19', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('25', '测试问题——————20', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('26', '测试问题——————21', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('27', '测试问题——————22', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('28', '测试问题——————23', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('29', '测试问题——————24', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('30', '测试问题——————25', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('31', '测试问题——————26', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('32', '测试问题——————27', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('33', '测试问题——————28', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('34', '测试问题——————29', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('35', '测试问题——————30', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('36', '测试问题——————31', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('37', '测试问题——————32', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('38', '测试问题——————33', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('39', '测试问题——————34', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('40', '测试问题——————35', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('41', '测试问题——————36', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('42', '测试问题——————37', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('43', '测试问题——————38', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('44', '测试问题——————39', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('45', '测试问题——————40', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('46', '测试问题——————41', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('47', '测试问题——————42', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('48', '测试问题——————43', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('49', '测试问题——————44', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('50', '测试问题——————45', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('51', '测试问题——————46', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('52', '测试问题——————47', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('53', '测试问题——————48', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('54', '测试问题——————49', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('55', '测试问题——————50', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('56', '测试问题——————51', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('57', '测试问题——————52', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('58', '测试问题——————53', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('59', '测试问题——————54', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('60', '测试问题——————55', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('61', '测试问题——————56', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('62', '测试问题——————57', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('63', '测试问题——————58', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('64', '测试问题——————59', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('65', '测试问题——————60', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('66', '测试问题——————61', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('67', '测试问题——————62', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('68', '测试问题——————63', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('69', '测试问题——————64', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('70', '测试问题——————65', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('71', '测试问题——————66', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('72', '测试问题——————67', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('73', '测试问题——————68', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('74', '测试问题——————69', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('75', '测试问题——————70', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('76', '测试问题——————71', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('77', '测试问题——————72', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('78', '测试问题——————73', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('79', '测试问题——————74', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('80', '测试问题——————75', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('81', '测试问题——————76', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('82', '测试问题——————77', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('83', '测试问题——————78', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('84', '测试问题——————79', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('85', '测试问题——————80', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('86', '测试问题——————81', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('87', '测试问题——————82', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('88', '测试问题——————83', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('89', '测试问题——————84', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('90', '测试问题——————85', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('91', '测试问题——————86', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('92', '测试问题——————87', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('93', '测试问题——————88', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('94', '测试问题——————89', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('95', '测试问题——————90', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('96', '测试问题——————91', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('97', '测试问题——————92', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('98', '测试问题——————93', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('99', '测试问题——————94', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('100', '测试问题——————95', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('101', '测试问题——————96', '2017-12-02 22:07:26', '3', '1');
INSERT INTO `t_post` VALUES ('102', '测试问题——————97', '2017-12-02 22:07:26', '3', '2');
INSERT INTO `t_post` VALUES ('103', '测试问题——————98', '2017-12-02 22:07:26', '3', '3');
INSERT INTO `t_post` VALUES ('104', '测试问题——————99', '2017-12-02 22:07:26', '3', '4');
INSERT INTO `t_post` VALUES ('105', '测试问题——————0', '2017-12-02 22:08:13', '2', '1');
INSERT INTO `t_post` VALUES ('106', '测试问题——————1', '2017-12-02 22:08:13', '2', '2');
INSERT INTO `t_post` VALUES ('107', '测试问题——————2', '2017-12-02 22:08:13', '2', '3');
INSERT INTO `t_post` VALUES ('108', '测试问题——————3', '2017-12-02 22:08:13', '2', '4');
INSERT INTO `t_post` VALUES ('109', '测试问题——————4', '2017-12-02 22:08:13', '2', '1');
INSERT INTO `t_post` VALUES ('110', '测试问题——————5', '2017-12-02 22:08:13', '2', '2');
INSERT INTO `t_post` VALUES ('111', '测试问题——————6', '2017-12-02 22:08:13', '2', '3');
INSERT INTO `t_post` VALUES ('112', '测试问题——————7', '2017-12-02 22:08:13', '2', '4');
INSERT INTO `t_post` VALUES ('113', '测试问题——————8', '2017-12-02 22:08:13', '2', '1');
INSERT INTO `t_post` VALUES ('114', '测试问题——————9', '2017-12-02 22:08:13', '2', '2');

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `replyTime` datetime DEFAULT NULL,
  `urid` int(11) DEFAULT NULL,
  `prid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `FK2rg2t4irmql8jqo6bwbraktfu` (`urid`),
  KEY `FKlmc31s3ueshar0bbtgrd0uocn` (`prid`),
  CONSTRAINT `FK2rg2t4irmql8jqo6bwbraktfu` FOREIGN KEY (`urid`) REFERENCES `t_user` (`uid`),
  CONSTRAINT `FKlmc31s3ueshar0bbtgrd0uocn` FOREIGN KEY (`prid`) REFERENCES `t_post` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES ('1', '前排！！', '2017-11-30 21:27:33', '4', '3');
INSERT INTO `t_reply` VALUES ('2', '这个我也不会！！', '2017-11-30 21:33:57', '1', '3');

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `ftid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `FKqk9hoeqxydj473wkga8ywhp8g` (`ftid`),
  CONSTRAINT `FKqk9hoeqxydj473wkga8ywhp8g` FOREIGN KEY (`ftid`) REFERENCES `t_forum` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES ('1', 'Asp', 'Web 开发 ASP', '1');
INSERT INTO `t_topic` VALUES ('2', 'Ajax', 'Web 开发 Ajax', '1');
INSERT INTO `t_topic` VALUES ('3', 'Jsp', 'Web 开发 JSP', '1');
INSERT INTO `t_topic` VALUES ('4', 'html5+css3', 'Web 开发 HTML', '1');
INSERT INTO `t_topic` VALUES ('5', 'JavaScript', 'Web 开发 JavaScript', '1');
INSERT INTO `t_topic` VALUES ('7', 'XML', 'Web 开发 XML', '1');
INSERT INTO `t_topic` VALUES ('8', 'J2EE', 'Java 2 Platform Enterprise Edition', '2');
INSERT INTO `t_topic` VALUES ('9', 'Java SE', 'Web 开发 ASP', '2');
INSERT INTO `t_topic` VALUES ('10', 'J2ME', 'Java J2ME', '2');
INSERT INTO `t_topic` VALUES ('11', 'Eclipse', 'Java Eclipse', '2');
INSERT INTO `t_topic` VALUES ('12', 'JBoss', 'JBoss技术交流', '2');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `synopsis` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `usericon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '123', '4SDqKAqlBpPVVo0AcUVkYA==', '45@qq.ocm', '13245678965', '男', '这个人很懒，什么也没有留下！', '1', 'default.png');
INSERT INTO `t_user` VALUES ('2', '789', '9ZDgElQ6dLm7LncG3+SqqA==', '798456@qq.ocm', '15643278965', '男', '这个人很懒，什么也没有留下！', '1', 'default.png');
INSERT INTO `t_user` VALUES ('3', 'dfg', 'P8CnrPCH9UmsKyZrr5S4sQ==', 'qwer@qq.com', '15412345678', '女', '这个人很懒，什么也没有留下！', '2', 'default.png');
INSERT INTO `t_user` VALUES ('4', '123666', '4QrcOUm6Wau+VuBX8g+IPg==', '456@qq.com', '15233333333', '女', '这个人很懒，什么也没有留下！', '1', 'default.png');
SET FOREIGN_KEY_CHECKS=1;
