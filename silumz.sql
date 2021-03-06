/*
 Navicat Premium Data Transfer

 Source Server         : silumz
 Source Server Type    : MySQL
 Source Server Version : 50554
 Source Host           : 192.168.1.67:3306
 Source Schema         : silumz

 Target Server Type    : MySQL
 Target Server Version : 50554
 File Encoding         : 65001

 Date: 14/01/2019 18:07:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for images_image
-- ----------------------------
DROP TABLE IF EXISTS `images_image`;
CREATE TABLE `images_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageid` int(11) NOT NULL,
  `imageurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 190891 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for images_page
-- ----------------------------
DROP TABLE IF EXISTS `images_page`;
CREATE TABLE `images_page`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `sendtime` date NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstimg` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tagid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 52384 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for images_tag
-- ----------------------------
DROP TABLE IF EXISTS `images_tag`;
CREATE TABLE `images_tag`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3319 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for images_type
-- ----------------------------
DROP TABLE IF EXISTS `images_type`;
CREATE TABLE `images_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images_type
-- ----------------------------
INSERT INTO `images_type` VALUES (1, '性感美女');
INSERT INTO `images_type` VALUES (2, '靓丽腿模');
INSERT INTO `images_type` VALUES (3, '清纯美女');

SET FOREIGN_KEY_CHECKS = 1;
