/*
 Navicat Premium Data Transfer

 Source Server         : testyuanchen
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : 106.12.85.53:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 09/04/2020 21:10:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pt_business
-- ----------------------------
DROP TABLE IF EXISTS `pt_business`;
CREATE TABLE `pt_business`  (
  `businessid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avaliable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`businessid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pt_business
-- ----------------------------
INSERT INTO `pt_business` VALUES (1, 'ls', 'ls', '李四', '2020-04-09/F2B474B74F9A47BCA056F92D743CDCF5.jpg_temp', '12342321322', '河北', '2');

-- ----------------------------
-- Table structure for pt_order
-- ----------------------------
DROP TABLE IF EXISTS `pt_order`;
CREATE TABLE `pt_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `orderstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pt_order
-- ----------------------------
INSERT INTO `pt_order` VALUES (1, 1, 3, 1, 1, 12.00, '1', '2020-04-09 16:01:08');
INSERT INTO `pt_order` VALUES (2, 1, 4, 1, 1, 12.00, '2', '2020-04-09 16:21:13');

-- ----------------------------
-- Table structure for pt_shop
-- ----------------------------
DROP TABLE IF EXISTS `pt_shop`;
CREATE TABLE `pt_shop`  (
  `shopid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `businessid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`shopid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pt_shop
-- ----------------------------
INSERT INTO `pt_shop` VALUES (3, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (4, '花西子雕花口红/浮雕唇膏女半哑光', '2020-04-09/DA0A6B0C880046C5BDA9C0A64D8085C8.jpg_temp', 15.00, '河北', 1, 223);
INSERT INTO `pt_shop` VALUES (5, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (6, '花西子雕花口红/浮雕唇膏女半哑光', '2020-04-09/DA0A6B0C880046C5BDA9C0A64D8085C8.jpg_temp', 15.00, '河北', 1, 223);
INSERT INTO `pt_shop` VALUES (7, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (8, '花西子雕花口红/浮雕唇膏女半哑光', '2020-04-09/DA0A6B0C880046C5BDA9C0A64D8085C8.jpg_temp', 15.00, '河北', 1, 223);
INSERT INTO `pt_shop` VALUES (9, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (10, '花西子雕花口红/浮雕唇膏女半哑光', '2020-04-09/DA0A6B0C880046C5BDA9C0A64D8085C8.jpg_temp', 15.00, '河北', 1, 223);
INSERT INTO `pt_shop` VALUES (11, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (12, '花西子雕花口红/浮雕唇膏女半哑光', '2020-04-09/DA0A6B0C880046C5BDA9C0A64D8085C8.jpg_temp', 15.00, '河北', 1, 223);
INSERT INTO `pt_shop` VALUES (13, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (14, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (15, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);
INSERT INTO `pt_shop` VALUES (16, '大码女装200斤胖mm秋季新款简约', '2020-04-09/224FB4D5787D4D28B038C67B8ABE14D1.jpg_temp', 12.00, '北京', 1, 100);

-- ----------------------------
-- Table structure for pt_user
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES (1, 'zs', 'zs', '张三', '12342321322', '上海', '1', NULL);

SET FOREIGN_KEY_CHECKS = 1;
