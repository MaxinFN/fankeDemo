/*
Navicat MySQL Data Transfer

Source Server         : fanke
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fanke

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-06-12 21:28:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo` (
  `image` varchar(255) DEFAULT NULL,
  `colorcharge` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `nowprice` varchar(255) DEFAULT NULL,
  `recharge` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `store` int(11) DEFAULT NULL,
  `buy` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `gid` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsinfo
-- ----------------------------
INSERT INTO `goodsinfo` VALUES ('xianliang001.jpg&xianliang002.jpg', null, 'T恤 山鸟叔 键盘侠1 黑色', '118', '38', '19', '黑色&白色', 'S&L&XXL', '21', '1', '2', '6378888', '1');
INSERT INTO `goodsinfo` VALUES ('t-shirt002.jpg&t-shirt0021.jpg&t-shirt002color&t-shirt002color1', null, 'T恤 欧飞鸿 怒火街头1 黑色', '136', '38', '19', '黑色&白色', 'S&M&XL', '22', '1', '2', '6378889', '2');
INSERT INTO `goodsinfo` VALUES ('t-shirt003.jpg&t-shirt0031', null, 'T恤 山鸟叔 广告位 白色', '118', '38', '19', '黑色&白色', 'S&M&XL', '23', '1', '2', '6378890', '3');
INSERT INTO `goodsinfo` VALUES ('t-shirt004.jpg&t-shirt0041', null, 'T恤 山鸟叔 鸟类学1 白色', '118', '38', '19', '黑色&白色', 'S&M&XL', '24', '1', '2', '6378891', '4');
INSERT INTO `goodsinfo` VALUES ('t-shirt005.jpg&t-shirt0051', null, '童装卫衣 圆领 熊本熊 S6 黑色', '468', '138', '69', '黑色&白色', 'S&M&XL', '25', '1', '2', '6378892', '5');
INSERT INTO `goodsinfo` VALUES ('xp_01.jpg&show001.jpg&show0011.jpg', null, 'T恤 简鱼 牛肉干 白色', null, '58', null, '白色', 'S&M&XL', '26', '1', '3', '6378893', '6');
INSERT INTO `goodsinfo` VALUES ('xp_02.jpg&show001.jpg&show0011.jpg', null, 'T恤 欧飞鸿 文明的骨头1 白色', null, '59', null, '白色', 'S&M&XL', '27', '1', '4', '6378894', '7');
INSERT INTO `goodsinfo` VALUES ('xp_03.jpg&show001.jpg&show0011.jpg', null, 'T恤 周南 西毒 白色', null, '60', null, '白色', 'S&M&XL', '28', '1', '5', '6378895', '8');
INSERT INTO `goodsinfo` VALUES ('xp_04.jpg&show001.jpg&show0011.jpg', null, 'T恤 欧飞鸿 发横财 白色', null, '61', null, '白色', 'S&M&XL', '29', '2', '6', '6378896', '9');
INSERT INTO `goodsinfo` VALUES ('xp_03 (1).jpg', null, 'POLO衫 棉质干爽网眼 男款 花灰色', null, '198', '99', '花灰色', 'S&M&L&XL&XXL', '30', '2', '7', '6378897', '10');
INSERT INTO `goodsinfo` VALUES ('xp_05.jpg', null, '凡客衬衫 牛津纺 领尖扣 短袖 男款 天蓝白铅笔条', null, '198', '99', '天蓝色', 'S&M&L&XL&XXL', '31', '3', '8', '6378898', '11');
INSERT INTO `goodsinfo` VALUES ('xp_09.jpg&min1.jpg&min2.jpg&min3.jpg&min4.jpg', null, '凡客休闲凉鞋 男款 黑色', null, '258', '129', '黑色', '39&40&41&42&43&44', '32', '4', '9', '6378899', '12');
INSERT INTO `goodsinfo` VALUES ('xp_15.jpg', null, 'T恤 欧飞鸿 打字机 花灰色', null, '58', '29', '花灰色&黑色&白色', 'S&M&L&XL&XXL', '33', '4', '8', '6378900', '13');
INSERT INTO `goodsinfo` VALUES ('zpx_05.jpg&zpx_05min1.jpg&zpx_05min2.jpg', null, 'T恤 简鱼 可能性 白色', null, '58', '29', '白色&黑色', 'S&M&L&XL&XXL', '34', '5', '9', '6378901', '14');
INSERT INTO `goodsinfo` VALUES ('zpx_07.jpg&zpx_07min1.jpg&zpx_07min2.jpg', null, 'T恤 简鱼 选择困难 白色', null, '58', '29', '白色&黑色', 'S&M&L&XL&XXL', '35', '5', '10', '6378902', '15');
INSERT INTO `goodsinfo` VALUES ('zpx_13.jpg&zpx_13min1.jpg&zpx_13min2.jpg', null, 'T恤 本广 冲浪 白色', null, '58', '29', '白色&黑色', 'S&M&L&XL&XXL', '36', '6', '12', '6378903', '16');
INSERT INTO `goodsinfo` VALUES ('zpx_15.jpg', null, 'T恤 本广 埃菲尔铁塔 白色', null, '58', '29', '白色&黑色', 'S&M&L&XL&XXL', '37', '7', '12', '6378904', '17');
INSERT INTO `goodsinfo` VALUES ('big1.jpg&big1001.jpg&big1002.jpg&big1003.jpg', null, '4.0日式免烫衬衫&牛津纺衬衫&凡客新品&全棉舒适素色T', null, '62', null, '白色', 'S&M&XL', '30', '3', '7', '6378905', '18');
INSERT INTO `goodsinfo` VALUES ('big2.jpg&big2001.jpg&big2002.jpg&big2003.jpg', null, 'POLO 新品上市&第二件半价&沙滩裤&户外运动', null, '66', null, '白色', 'S&M&XL', '34', '7', '11', '6378906', '19');
INSERT INTO `goodsinfo` VALUES ('k1.jpg', null, '休闲裤', null, '79', null, '白色', 'S&M&XL', '38', '11', '15', '6378907', '20');
INSERT INTO `goodsinfo` VALUES ('k2.jpg', null, '牛仔裤', null, '69', null, '白色', 'S&M&XL', '39', '12', '16', '6378908', '21');
INSERT INTO `goodsinfo` VALUES ('k3.jpg', null, '低裆锥形', null, '99', null, '白色', 'S&M&XL', '40', '13', '17', '6378909', '22');
INSERT INTO `goodsinfo` VALUES ('k4.jpg', null, '窄脚休闲裤', null, '79', null, '白色', 'S&M&XL', '41', '14', '18', '6378910', '23');
INSERT INTO `goodsinfo` VALUES ('about1.jpg', null, null, null, '74', null, '白色', 'S&M&XL', '42', '15', '19', '6378911', '24');
INSERT INTO `goodsinfo` VALUES ('about2.jpg', null, null, null, '75', null, '白色', 'S&M&XL', '43', '16', '20', '6378912', '25');
INSERT INTO `goodsinfo` VALUES ('about3.jpg', null, null, null, '76', null, '白色', 'S&M&XL', '44', '17', '21', '6378913', '26');
INSERT INTO `goodsinfo` VALUES ('about4.jpg', null, null, null, '77', null, '白色', 'S&M&XL', '45', '18', '22', '6378914', '27');
INSERT INTO `goodsinfo` VALUES ('about5.jpg', null, null, null, '78', null, '白色', 'S&M&XL', '46', '19', '23', '6378915', '28');
INSERT INTO `goodsinfo` VALUES ('about6.jpg', null, null, null, '79', null, '白色', 'S&M&XL', '47', '20', '24', '6378916', '29');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.0 紫色条纹', null, '698', null, '蓝色&白色', 'S&M&L', '12', '97', '10', '6378917', '30');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.0 紫色方格', null, '699', null, '蓝色&白色', 'S&M&L', '13', '98', '13', '6378918', '31');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '700', null, '蓝色&白色', 'S&M&L', '14', '233', '12', '6378919', '32');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '701', null, '蓝色&白色', 'S&M&L', '15', '444', '11', '6378920', '33');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.0 浅紫', null, '702', null, '蓝色&白色', 'S&M&L', '16', '655', '13', '6378921', '34');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.0 深蓝维系格', null, '703', null, '蓝色&白色', 'S&M&L', '17', '866', '15', '6378922', '35');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.1 紫色条纹', null, '704', null, '蓝色&白色', 'S&M&L', '18', '1077', '17', '6378923', '36');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.1 紫色方格', null, '705', null, '蓝色&白色', 'S&M&L', '19', '1288', '19', '6378924', '37');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '706', null, '蓝色&白色', 'S&M&L', '20', '1499', '21', '6378925', '38');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '707', null, '蓝色&白色', 'S&M&L', '21', '1710', '23', '6378926', '39');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.1 浅紫', null, '708', null, '蓝色&白色', 'S&M&L', '22', '1921', '25', '6378927', '40');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.1 深蓝维系格', null, '709', null, '蓝色&白色', 'S&M&L', '23', '2132', '27', '6378928', '41');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.2 紫色条纹', null, '710', null, '蓝色&白色', 'S&M&L', '24', '2343', '29', '6378929', '42');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.2 紫色方格', null, '711', null, '蓝色&白色', 'S&M&L', '25', '2554', '31', '6378930', '43');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '712', null, '蓝色&白色', 'S&M&L', '26', '2765', '33', '6378931', '44');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '713', null, '蓝色&白色', 'S&M&L', '27', '2976', '35', '6378932', '45');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.2 浅紫', null, '714', null, '蓝色&白色', 'S&M&L', '28', '3187', '37', '6378933', '46');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.2 深蓝维系格', null, '715', null, '蓝色&白色', 'S&M&L', '29', '3398', '39', '6378934', '47');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.3 紫色条纹', null, '716', null, '蓝色&白色', 'S&M&L', '30', '3609', '41', '6378935', '48');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.3 紫色方格', null, '717', null, '蓝色&白色', 'S&M&L', '31', '3820', '43', '6378936', '49');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '718', null, '蓝色&白色', 'S&M&L', '32', '4031', '45', '6378937', '50');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '719', null, '蓝色&白色', 'S&M&L', '33', '4242', '47', '6378938', '51');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.3 浅紫', null, '720', null, '蓝色&白色', 'S&M&L', '34', '4453', '49', '6378939', '52');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.3 深蓝维系格', null, '721', null, '蓝色&白色', 'S&M&L', '35', '4664', '51', '6378940', '53');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.4 紫色条纹', null, '722', null, '蓝色&白色', 'S&M&L', '36', '4875', '53', '6378941', '54');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.4 紫色方格', null, '723', null, '蓝色&白色', 'S&M&L', '37', '5086', '55', '6378942', '55');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '724', null, '蓝色&白色', 'S&M&L', '38', '5297', '57', '6378943', '56');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '725', null, '蓝色&白色', 'S&M&L', '39', '5508', '59', '6378944', '57');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.4 浅紫', null, '726', null, '蓝色&白色', 'S&M&L', '40', '5719', '61', '6378945', '58');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.4 深蓝维系格', null, '727', null, '蓝色&白色', 'S&M&L', '41', '5930', '63', '6378946', '59');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.5 紫色条纹', null, '728', null, '蓝色&白色', 'S&M&L', '42', '6141', '65', '6378947', '60');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.5 紫色方格', null, '729', null, '蓝色&白色', 'S&M&L', '43', '6352', '67', '6378948', '61');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '730', null, '蓝色&白色', 'S&M&L', '44', '6563', '69', '6378949', '62');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '731', null, '蓝色&白色', 'S&M&L', '45', '6774', '71', '6378950', '63');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.5 浅紫', null, '732', null, '蓝色&白色', 'S&M&L', '46', '6985', '73', '6378951', '64');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.5 深蓝维系格', null, '733', null, '蓝色&白色', 'S&M&L', '47', '7196', '75', '6378952', '65');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.6 紫色条纹', null, '734', null, '蓝色&白色', 'S&M&L', '48', '7407', '77', '6378953', '66');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.6 紫色方格', null, '735', null, '蓝色&白色', 'S&M&L', '49', '7618', '79', '6378954', '67');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '736', null, '蓝色&白色', 'S&M&L', '50', '7829', '81', '6378955', '68');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '737', null, '蓝色&白色', 'S&M&L', '51', '8040', '83', '6378956', '69');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.6 浅紫', null, '738', null, '蓝色&白色', 'S&M&L', '52', '8251', '85', '6378957', '70');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.6 深蓝维系格', null, '739', null, '蓝色&白色', 'S&M&L', '53', '8462', '87', '6378958', '71');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.7 紫色条纹', null, '740', null, '蓝色&白色', 'S&M&L', '54', '8673', '89', '6378959', '72');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.7 紫色方格', null, '741', null, '蓝色&白色', 'S&M&L', '55', '8884', '91', '6378960', '73');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '742', null, '蓝色&白色', 'S&M&L', '56', '9095', '93', '6378961', '74');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '743', null, '蓝色&白色', 'S&M&L', '57', '9306', '95', '6378962', '75');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.7 浅紫', null, '744', null, '蓝色&白色', 'S&M&L', '58', '9517', '97', '6378963', '76');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.7 深蓝维系格', null, '745', null, '蓝色&白色', 'S&M&L', '59', '9728', '99', '6378964', '77');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.8 紫色条纹', null, '746', null, '蓝色&白色', 'S&M&L', '60', '9939', '101', '6378965', '78');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.8 紫色方格', null, '747', null, '蓝色&白色', 'S&M&L', '61', '10150', '103', '6378966', '79');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '748', null, '蓝色&白色', 'S&M&L', '62', '10361', '105', '6378967', '80');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '749', null, '蓝色&白色', 'S&M&L', '63', '10572', '107', '6378968', '81');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.8 浅紫', null, '750', null, '蓝色&白色', 'S&M&L', '64', '10783', '109', '6378969', '82');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.8 深蓝维系格', null, '751', null, '蓝色&白色', 'S&M&L', '65', '10994', '111', '6378970', '83');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.9 紫色条纹', null, '752', null, '蓝色&白色', 'S&M&L', '66', '11205', '113', '6378971', '84');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.9 紫色方格', null, '753', null, '蓝色&白色', 'S&M&L', '67', '11416', '115', '6378972', '85');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '754', null, '蓝色&白色', 'S&M&L', '68', '11627', '117', '6378973', '86');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '755', null, '蓝色&白色', 'S&M&L', '69', '11838', '119', '6378974', '87');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.9 浅紫', null, '756', null, '蓝色&白色', 'S&M&L', '70', '12049', '121', '6378975', '88');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.9 深蓝维系格', null, '757', null, '蓝色&白色', 'S&M&L', '71', '12260', '123', '6378976', '89');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.10 紫色条纹', null, '758', null, '蓝色&白色', 'S&M&L', '72', '12471', '125', '6378977', '90');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.10 紫色方格', null, '759', null, '蓝色&白色', 'S&M&L', '73', '12682', '127', '6378978', '91');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '760', null, '蓝色&白色', 'S&M&L', '74', '12893', '129', '6378979', '92');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '761', null, '蓝色&白色', 'S&M&L', '75', '13104', '131', '6378980', '93');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.10 浅紫', null, '762', null, '蓝色&白色', 'S&M&L', '76', '13315', '133', '6378981', '94');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.10 深蓝维系格', null, '763', null, '蓝色&白色', 'S&M&L', '77', '13526', '135', '6378982', '95');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.11 紫色条纹', null, '764', null, '蓝色&白色', 'S&M&L', '78', '13737', '137', '6378983', '96');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.11 紫色方格', null, '765', null, '蓝色&白色', 'S&M&L', '79', '13948', '139', '6378984', '97');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '766', null, '蓝色&白色', 'S&M&L', '80', '14159', '141', '6378985', '98');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '767', null, '蓝色&白色', 'S&M&L', '81', '14370', '143', '6378986', '99');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.11 浅紫', null, '768', null, '蓝色&白色', 'S&M&L', '82', '14581', '145', '6378987', '100');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.11 深蓝维系格', null, '769', null, '蓝色&白色', 'S&M&L', '83', '14792', '147', '6378988', '101');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.12 紫色条纹', null, '770', null, '蓝色&白色', 'S&M&L', '84', '15003', '149', '6378989', '102');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.12 紫色方格', null, '771', null, '蓝色&白色', 'S&M&L', '85', '15214', '151', '6378990', '103');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '772', null, '蓝色&白色', 'S&M&L', '86', '15425', '153', '6378991', '104');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '773', null, '蓝色&白色', 'S&M&L', '87', '15636', '155', '6378992', '105');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.12 浅紫', null, '774', null, '蓝色&白色', 'S&M&L', '88', '15847', '157', '6378993', '106');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.12 深蓝维系格', null, '775', null, '蓝色&白色', 'S&M&L', '89', '16058', '159', '6378994', '107');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.13 紫色条纹', null, '776', null, '蓝色&白色', 'S&M&L', '90', '16269', '161', '6378995', '108');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.13 紫色方格', null, '777', null, '蓝色&白色', 'S&M&L', '91', '16480', '163', '6378996', '109');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '778', null, '蓝色&白色', 'S&M&L', '92', '16691', '165', '6378997', '110');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '779', null, '蓝色&白色', 'S&M&L', '93', '16902', '167', '6378998', '111');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.13 浅紫', null, '780', null, '蓝色&白色', 'S&M&L', '94', '17113', '169', '6378999', '112');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.13 深蓝维系格', null, '781', null, '蓝色&白色', 'S&M&L', '95', '17324', '171', '6379000', '113');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.14 紫色条纹', null, '782', null, '蓝色&白色', 'S&M&L', '96', '17535', '173', '6379001', '114');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.14 紫色方格', null, '783', null, '蓝色&白色', 'S&M&L', '97', '17746', '175', '6379002', '115');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '784', null, '蓝色&白色', 'S&M&L', '98', '17957', '177', '6379003', '116');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '785', null, '蓝色&白色', 'S&M&L', '99', '18168', '179', '6379004', '117');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.14 浅紫', null, '786', null, '蓝色&白色', 'S&M&L', '100', '18379', '181', '6379005', '118');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.14 深蓝维系格', null, '787', null, '蓝色&白色', 'S&M&L', '101', '18590', '183', '6379006', '119');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.15 紫色条纹', null, '788', null, '蓝色&白色', 'S&M&L', '102', '18801', '185', '6379007', '120');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.15 紫色方格', null, '789', null, '蓝色&白色', 'S&M&L', '103', '19012', '187', '6379008', '121');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '790', null, '蓝色&白色', 'S&M&L', '104', '19223', '189', '6379009', '122');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '791', null, '蓝色&白色', 'S&M&L', '105', '19434', '191', '6379010', '123');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.15 浅紫', null, '792', null, '蓝色&白色', 'S&M&L', '106', '19645', '193', '6379011', '124');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.15 深蓝维系格', null, '793', null, '蓝色&白色', 'S&M&L', '107', '19856', '195', '6379012', '125');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.16 紫色条纹', null, '794', null, '蓝色&白色', 'S&M&L', '108', '20067', '197', '6379013', '126');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.16 紫色方格', null, '795', null, '蓝色&白色', 'S&M&L', '109', '20278', '199', '6379014', '127');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '796', null, '蓝色&白色', 'S&M&L', '110', '20489', '201', '6379015', '128');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '797', null, '蓝色&白色', 'S&M&L', '111', '20700', '203', '6379016', '129');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.16 浅紫', null, '798', null, '蓝色&白色', 'S&M&L', '112', '20911', '205', '6379017', '130');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.16 深蓝维系格', null, '799', null, '蓝色&白色', 'S&M&L', '113', '21122', '207', '6379018', '131');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.17 紫色条纹', null, '800', null, '蓝色&白色', 'S&M&L', '114', '21333', '209', '6379019', '132');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.17 紫色方格', null, '801', null, '蓝色&白色', 'S&M&L', '115', '21544', '211', '6379020', '133');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '802', null, '蓝色&白色', 'S&M&L', '116', '21755', '213', '6379021', '134');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '803', null, '蓝色&白色', 'S&M&L', '117', '21966', '215', '6379022', '135');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.17 浅紫', null, '804', null, '蓝色&白色', 'S&M&L', '118', '22177', '217', '6379023', '136');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.17 深蓝维系格', null, '805', null, '蓝色&白色', 'S&M&L', '119', '22388', '219', '6379024', '137');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.18 紫色条纹', null, '806', null, '蓝色&白色', 'S&M&L', '120', '22599', '221', '6379025', '138');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.18 紫色方格', null, '807', null, '蓝色&白色', 'S&M&L', '121', '22810', '223', '6379026', '139');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '808', null, '蓝色&白色', 'S&M&L', '122', '23021', '225', '6379027', '140');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '809', null, '蓝色&白色', 'S&M&L', '123', '23232', '227', '6379028', '141');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.18 浅紫', null, '810', null, '蓝色&白色', 'S&M&L', '124', '23443', '229', '6379029', '142');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.18 深蓝维系格', null, '811', null, '蓝色&白色', 'S&M&L', '125', '23654', '231', '6379030', '143');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.19 紫色条纹', null, '812', null, '蓝色&白色', 'S&M&L', '126', '23865', '233', '6379031', '144');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.19 紫色方格', null, '813', null, '蓝色&白色', 'S&M&L', '127', '24076', '235', '6379032', '145');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '814', null, '蓝色&白色', 'S&M&L', '128', '24287', '237', '6379033', '146');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '815', null, '蓝色&白色', 'S&M&L', '129', '24498', '239', '6379034', '147');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.19 浅紫', null, '816', null, '蓝色&白色', 'S&M&L', '130', '24709', '241', '6379035', '148');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.19 深蓝维系格', null, '817', null, '蓝色&白色', 'S&M&L', '131', '24920', '243', '6379036', '149');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.20 紫色条纹', null, '818', null, '蓝色&白色', 'S&M&L', '222', '25131', '245', '6379037', '150');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.20 紫色方格', null, '819', null, '蓝色&白色', 'S&M&L', '4457', '25342', '247', '6379038', '151');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '820', null, '蓝色&白色', 'S&M&L', '122', '25553', '249', '6379039', '152');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '821', null, '蓝色&白色', 'S&M&L', '124', '25764', '251', '6379040', '153');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.20 浅紫', null, '822', null, '蓝色&白色', 'S&M&L', '122', '25975', '253', '6379041', '154');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.20 深蓝维系格', null, '823', null, '蓝色&白色', 'S&M&L', '120', '26186', '255', '6379042', '155');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.21 紫色条纹', null, '824', null, '蓝色&白色', 'S&M&L', '118', '26397', '257', '6379043', '156');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.21 紫色方格', null, '825', null, '蓝色&白色', 'S&M&L', '116', '26608', '259', '6379044', '157');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '826', null, '蓝色&白色', 'S&M&L', '114', '26819', '261', '6379045', '158');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '827', null, '蓝色&白色', 'S&M&L', '112', '27030', '263', '6379046', '159');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.21 浅紫', null, '828', null, '蓝色&白色', 'S&M&L', '110', '27241', '265', '6379047', '160');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.21 深蓝维系格', null, '829', null, '蓝色&白色', 'S&M&L', '108', '27452', '267', '6379048', '161');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.22 紫色条纹', null, '830', null, '蓝色&白色', 'S&M&L', '106', '27663', '269', '6379049', '162');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.22 紫色方格', null, '831', null, '蓝色&白色', 'S&M&L', '104', '27874', '271', '6379050', '163');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '832', null, '蓝色&白色', 'S&M&L', '102', '28085', '273', '6379051', '164');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '833', null, '蓝色&白色', 'S&M&L', '100', '28296', '275', '6379052', '165');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.22 浅紫', null, '834', null, '蓝色&白色', 'S&M&L', '98', '28507', '277', '6379053', '166');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.22 深蓝维系格', null, '835', null, '蓝色&白色', 'S&M&L', '96', '28718', '279', '6379054', '167');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.23 紫色条纹', null, '836', null, '蓝色&白色', 'S&M&L', '94', '28929', '281', '6379055', '168');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.23 紫色方格', null, '837', null, '蓝色&白色', 'S&M&L', '92', '29140', '283', '6379056', '169');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '838', null, '蓝色&白色', 'S&M&L', '90', '29351', '285', '6379057', '170');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '839', null, '蓝色&白色', 'S&M&L', '88', '29562', '287', '6379058', '171');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.23 浅紫', null, '840', null, '蓝色&白色', 'S&M&L', '86', '29773', '289', '6379059', '172');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.23 深蓝维系格', null, '841', null, '蓝色&白色', 'S&M&L', '84', '29984', '291', '6379060', '173');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 异色领100支 4.24 紫色条纹', null, '842', null, '蓝色&白色', 'S&M&L', '82', '30195', '293', '6379061', '174');
INSERT INTO `goodsinfo` VALUES ('shirt005.jpg&shirt0051.jpg&shirt00511.jpg', 'shirt00521.jpg', '凡客衬衫 吉国武 免烫 温莎领 4.24 紫色方格', null, '843', null, '蓝色&白色', 'S&M&L', '80', '30406', '295', '6379062', '175');
INSERT INTO `goodsinfo` VALUES ('shirt001.jpg&shirt0011.jpg&shirt00111.jpg', 'shirt0012.jpg&shirt00121.jpg&shirt00122.jpg&shirt00123.jpg&shirt00124.jpg', '衬衫 易打理 短袖 领尖扣 男款 白色', null, '844', null, '蓝色&白色', 'S&M&L', '78', '30617', '297', '6379063', '176');
INSERT INTO `goodsinfo` VALUES ('shirt002.jpg&shirt00211.jpg&shirt002111.jpg&shirt0021111.jpg', 'shirt00221.jpg&shirt00222.jpg&shirt00223.jpg&shirt00124.jpg', '凡客衬衫 吉国武 易整理 领尖扣 灰色方格', null, '845', null, '蓝色&白色', 'S&M&L', '76', '30828', '299', '6379064', '177');
INSERT INTO `goodsinfo` VALUES ('shirt003.jpg&shirt0031.jpg&shirt00311.jpg&shirt003111.jpg', 'shirt00321.jpg&shirt00322.jpg&shirt00323.jpg&shirt00123.jpg&shirt00124.jpg', '凡客衬衫 吉国武 免烫 领尖扣 3.24 浅紫', null, '846', null, '蓝色&白色', 'S&M&L', '74', '31039', '301', '6379065', '178');
INSERT INTO `goodsinfo` VALUES ('shirt004.jpg&shirt0041.jpg&shirt00411.jpg', 'shirt00421.jpg&shirt00422.jpg&shirt00423.jpg', '凡客衬衫 吉国武 免烫 领尖扣 4.24 深蓝维系格', null, '847', null, '蓝色&白色', 'S&M&L', '72', '31250', '303', '6379066', '179');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `phone` varchar(16) NOT NULL,
  `psw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
SET FOREIGN_KEY_CHECKS=1;
