/*
Navicat MySQL Data Transfer

Source Server         : fanke
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fanke

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-06-15 21:33:36
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
INSERT INTO `shopcart` VALUES ('8', 'new3-1.jpg', 'T恤周南西毒白色衬衫', '中号', '60', '1', '1');
INSERT INTO `shopcart` VALUES ('3', 'shirt003.jpg', '恤 山鸟叔 广告位 白色衬衫', 'XXL', '38', '10', '12');
INSERT INTO `shopcart` VALUES ('5', 't-shirt005.jpg', '童装卫衣圆领熊本熊S6黑色衬衫', '中号', '138', '6', '1');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤山鸟叔鸟类学1白色衬衫', '中号', '38', '6', '23');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤山鸟叔鸟类学1白色衬衫', 'XL', '38', '9', '1');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤山鸟叔鸟类学1白色衬衫', '大号', '38', '4', '1');
INSERT INTO `shopcart` VALUES ('47', 'shirt003.jpg', '凡客衬衫吉国武免烫领尖扣4.2深蓝维系格衬衫', '小号', '715', '3', '1');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤山鸟叔鸟类学1白色衬衫', '小号', '38', '6', '23');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤山鸟叔鸟类学1白色衬衫', 'XL', '38', '2', '23');
INSERT INTO `shopcart` VALUES ('5', 't-shirt005.jpg', '童装卫衣圆领熊本熊S6黑色衬衫', '中号', '138', '7', '23');
INSERT INTO `shopcart` VALUES ('5', 't-shirt005.jpg', '童装卫衣圆领熊本熊S6黑色衬衫', '小号', '138', '2', '23');
INSERT INTO `shopcart` VALUES ('5', 't-shirt005.jpg', '童装卫衣圆领熊本熊S6黑色衬衫', '大号', '138', '2', '23');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤山鸟叔鸟类学1白色衬衫', '大号', '38', '2', '23');
INSERT INTO `shopcart` VALUES ('47', 'shirt003.jpg', '凡客衬衫吉国武免烫领尖扣4.2深蓝维系格衬衫', '中号', '715', '2', '1');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤 山鸟叔 鸟类学1 白色衬衫', 'S', '38', '2', '1');
INSERT INTO `shopcart` VALUES ('4', 't-shirt004.jpg', 'T恤 山鸟叔 鸟类学1 白色衬衫', 'L', '38', '1', '1');
INSERT INTO `shopcart` VALUES ('47', 'shirt003.jpg', '凡客衬衫吉国武免烫领尖扣4.2深蓝维系格衬衫', '大号', '715', '1', '1');
SET FOREIGN_KEY_CHECKS=1;
