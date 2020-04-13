/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-13 08:05:03
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
INSERT INTO `pt_business` VALUES ('1', 'ls', 'ls', '生鲜大佬', 'shuiguo.jpg', '12342321322', '河南', '2');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pt_order
-- ----------------------------
INSERT INTO `pt_order` VALUES ('1', '1', '3', '1', '1', '12.00', '1', '2020-04-09 16:01:08');
INSERT INTO `pt_order` VALUES ('2', '1', '4', '1', '1', '12.00', '2', '2020-04-09 16:21:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
  PRIMARY KEY (`ShopCartId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pt_shopcart
-- ----------------------------
INSERT INTO `pt_shopcart` VALUES ('1', '1', '', '1', '1', null, null, '1');
INSERT INTO `pt_shopcart` VALUES ('2', '1', '1', '11', '11', '1', '1', '1');
INSERT INTO `pt_shopcart` VALUES ('3', '4', '无公害韭黄', '223', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('4', '5', '冬虫夏草', '100', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('5', '7', '西湖龙井', '100', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('6', '8', '普尔红茶', '223', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('7', '7', '西湖龙井', '100', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('8', '3', '精品橘子', '132', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('9', '4', '无公害韭黄', '223', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('10', '4', '无公害韭黄', '223', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('11', '4', '无公害韭黄', '223', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('12', '3', '精品橘子', '132', '1', 'zs', 'ls', '1');
INSERT INTO `pt_shopcart` VALUES ('13', '3', '精品橘子', '132', '1', 'zs', 'ls', '1');

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
