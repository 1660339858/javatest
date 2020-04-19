/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-19 22:35:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pt_business
-- ----------------------------
DROP TABLE IF EXISTS `pt_business`;
CREATE TABLE `pt_business` (
  `businessid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avaliable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`businessid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pt_business
-- ----------------------------
INSERT INTO `pt_business` VALUES ('1', 'ls', 'ls', '生鲜大佬', '4D83E07D18DC4223B658247B52FA0804.jpg', '12342321324', '河南', '1');
INSERT INTO `pt_business` VALUES ('2', 'hu', 'hu', '生鲜', null, null, 'qqq', null);

-- ----------------------------
-- Table structure for pt_order
-- ----------------------------
DROP TABLE IF EXISTS `pt_order`;
CREATE TABLE `pt_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `shopid` int DEFAULT NULL,
  `businessid` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `orderstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pt_order
-- ----------------------------
INSERT INTO `pt_order` VALUES ('39', '1', '7', '1', '1', '12.00', '12', '2020-04-16 19:42:30');
INSERT INTO `pt_order` VALUES ('42', '1', '14', '2', '1', '12.00', '12', '2020-04-17 09:23:19');
INSERT INTO `pt_order` VALUES ('43', '1', '6', '1', '1', '15.00', '15', '2020-04-17 09:23:21');
INSERT INTO `pt_order` VALUES ('46', '1', '9', '1', '2', '12.00', '24', '2020-04-17 09:55:09');
INSERT INTO `pt_order` VALUES ('50', '1', '8', '1', '1', '15.00', '15', '2020-04-17 20:16:32');
INSERT INTO `pt_order` VALUES ('51', '1', '3', '1', '3', '13.00', '39', '2020-04-19 21:10:36');

-- ----------------------------
-- Table structure for pt_shop
-- ----------------------------
DROP TABLE IF EXISTS `pt_shop`;
CREATE TABLE `pt_shop` (
  `shopid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `businessid` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  PRIMARY KEY (`shopid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pt_shop
-- ----------------------------
INSERT INTO `pt_shop` VALUES ('3', '精品橘子', 'juzi.jpg', '13.00', '北京', '1', '132');
INSERT INTO `pt_shop` VALUES ('4', '无公害韭黄', 'jiuhuang.jpg', '15.00', '河北', '1', '223');
INSERT INTO `pt_shop` VALUES ('5', '冬虫夏草', 'dongchong.jpg', '12.00', '北京', '1', '100');
INSERT INTO `pt_shop` VALUES ('6', '精品番茄', 'fanqie.jpg', '15.00', '河北', '1', '223');
INSERT INTO `pt_shop` VALUES ('7', '西湖龙井', 'longjing.jpg', '12.00', '北京', '1', '100');
INSERT INTO `pt_shop` VALUES ('8', '普尔红茶', 'puer.jpg', '15.00', '河北', '1', '223');
INSERT INTO `pt_shop` VALUES ('9', '精品苹果', 'pingguo.jpg', '12.00', '北京', '1', '100');
INSERT INTO `pt_shop` VALUES ('10', '天麻', 'tianma.jpg', '15.00', '河北', '1', '223');
INSERT INTO `pt_shop` VALUES ('14', '新鲜青菜', 'qingcai.jpg', '12.00', '北京', '2', '100');
INSERT INTO `pt_shop` VALUES ('15', '精选葡萄', 'putao.jpg', '12.00', '北京', '2', '100');
INSERT INTO `pt_shop` VALUES ('18', 'as', '88CD9947109B453CB3030D63599064F2.jpg', '12.00', 'as', '1', '26');
INSERT INTO `pt_shop` VALUES ('20', '2', '1D3BC3ADB6B1466CAEDD5FA5D1F02016.jpg', '2.00', '2', '1', '22');
INSERT INTO `pt_shop` VALUES ('21', '芝麻', 'D3CE34C55FC54390945750CF97D2957D.jpg', '15.00', '云南', '1', '200');

-- ----------------------------
-- Table structure for pt_shopcart
-- ----------------------------
DROP TABLE IF EXISTS `pt_shopcart`;
CREATE TABLE `pt_shopcart` (
  `ShopCartId` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `shopId` int NOT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `shopnum` int DEFAULT NULL,
  `userid` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `businessname` varchar(255) DEFAULT NULL,
  `businessid` int NOT NULL,
  `file` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ShopCartId`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_shopcart
-- ----------------------------
INSERT INTO `pt_shopcart` VALUES ('74', '5', '冬虫夏草', '3', '1', 'zs', 'ls', '1', 'dongchong.jpg', '12.00', '北京');
INSERT INTO `pt_shopcart` VALUES ('86', '18', 'as', '1', '1', 'zs', 'ls', '1', '88CD9947109B453CB3030D63599064F2.jpg', '12.00', 'as');
INSERT INTO `pt_shopcart` VALUES ('87', '15', '精选葡萄', '1', '1', 'zs', 'hu', '2', 'putao.jpg', '12.00', '北京');
INSERT INTO `pt_shopcart` VALUES ('88', '9', '精品苹果', '1', '1', 'zs', 'ls', '1', 'pingguo.jpg', '12.00', '北京');
INSERT INTO `pt_shopcart` VALUES ('89', '4', '无公害韭黄', '2', '1', 'zs', 'ls', '1', 'jiuhuang.jpg', '15.00', '河北');
INSERT INTO `pt_shopcart` VALUES ('90', '3', '精品橘子', '2', '1', 'zs', 'ls', '1', 'juzi.jpg', '13.00', '北京');

-- ----------------------------
-- Table structure for pt_talk
-- ----------------------------
DROP TABLE IF EXISTS `pt_talk`;
CREATE TABLE `pt_talk` (
  `talkid` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `shopid` int DEFAULT NULL,
  `businessid` int DEFAULT NULL,
  `creatdate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`talkid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_talk
-- ----------------------------
INSERT INTO `pt_talk` VALUES ('13', '1212', '1', '0', '0', '2020-04-19 21:30:12');
INSERT INTO `pt_talk` VALUES ('14', 'qwqeqeq', '1', '7', '1', '2020-04-19 21:31:54');
INSERT INTO `pt_talk` VALUES ('15', 'aaaaaaaaaa', '1', '4', '1', '2020-04-19 21:34:33');

-- ----------------------------
-- Table structure for pt_user
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES ('1', 'zs', 'zs', '张三', '12342321325', '上海', '1', null);
INSERT INTO `pt_user` VALUES ('6', 'LS', 'LS', '张三', '12342321325', '上海', '1', null);
INSERT INTO `pt_user` VALUES ('9', '6', 'qw', 'qw', 'zsd', '12121212', '1', null);
INSERT INTO `pt_user` VALUES ('10', 'ds', 'ds', null, null, null, '1', null);
INSERT INTO `pt_user` VALUES ('11', 'mei', 'mei', null, null, null, '1', null);
INSERT INTO `pt_user` VALUES ('12', 'admin', 'admin', 'admin', null, null, '3', null);
INSERT INTO `pt_user` VALUES ('13', '111', '11', null, null, null, '1', null);
