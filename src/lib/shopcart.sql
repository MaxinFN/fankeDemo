/*
Navicat MySQL Data Transfer

Source Server         : fanke
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fanke

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-06-16 16:08:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `gid` int(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `num` int(50) DEFAULT NULL,
  `uid` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('999', '123', '123', '123', '999', '123', '123');
INSERT INTO `shopcart` VALUES ('123', '123', '123', '123', '123', '123', '111');
INSERT INTO `shopcart` VALUES ('333', '123', '123', '123', '123', '123', '11');
INSERT INTO `shopcart` VALUES ('444', '123', '123', '123', '123', '123', '101');
SET FOREIGN_KEY_CHECKS=1;
