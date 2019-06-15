/*
Navicat MySQL Data Transfer

Source Server         : fanke
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fanke

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-06-15 21:33:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `phone` varchar(16) NOT NULL,
  `psw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '15627214523', '123123');
INSERT INTO `userinfo` VALUES ('2', '18927214524', '123123');
INSERT INTO `userinfo` VALUES ('3', '110120130', null);
INSERT INTO `userinfo` VALUES ('4', '15627214522', null);
INSERT INTO `userinfo` VALUES ('8', '13012341234', null);
INSERT INTO `userinfo` VALUES ('10', '15684949464', null);
INSERT INTO `userinfo` VALUES ('11', '12313131231', null);
INSERT INTO `userinfo` VALUES ('12', '12313131', null);
INSERT INTO `userinfo` VALUES ('13', '18946464646', null);
INSERT INTO `userinfo` VALUES ('14', '18927214523', null);
INSERT INTO `userinfo` VALUES ('15', '15627214524', null);
INSERT INTO `userinfo` VALUES ('16', '15627214532', null);
INSERT INTO `userinfo` VALUES ('17', '13818664331', null);
INSERT INTO `userinfo` VALUES ('18', '13618664331', null);
INSERT INTO `userinfo` VALUES ('19', '13352015201', null);
INSERT INTO `userinfo` VALUES ('20', '13425012501', null);
INSERT INTO `userinfo` VALUES ('21', '18725012501', null);
INSERT INTO `userinfo` VALUES ('22', '15623102310', null);
INSERT INTO `userinfo` VALUES ('23', '18689429781', '123123');
SET FOREIGN_KEY_CHECKS=1;
