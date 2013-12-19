/*
Navicat MySQL Data Transfer

Source Server         : LoginRoot
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : laptrinhweb

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2013-12-19 10:27:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lienhe`
-- ----------------------------
DROP TABLE IF EXISTS `lienhe`;
CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `read` bit(1) NOT NULL DEFAULT b'0' COMMENT '0: chua doc lien he, 1 da doc lien he roi',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lienhe
-- ----------------------------
INSERT INTO `lienhe` VALUES ('1', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'Anh Nu Giỏi VKL', '2013-12-19', '');
