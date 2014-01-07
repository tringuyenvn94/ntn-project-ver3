/*
Navicat MySQL Data Transfer

Source Server         : LoginRoot
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : laptrinhweb

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2014-01-07 16:12:07
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lienhe
-- ----------------------------
INSERT INTO `lienhe` VALUES ('1', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'Anh Nu Giỏi VKL', '2013-12-19', '');
INSERT INTO `lienhe` VALUES ('2', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'hkhjkhjk', '2013-12-19', '');
INSERT INTO `lienhe` VALUES ('3', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'fsdffsadfasdfaaaaaaaaaaaaaaaaaaaaa', '2013-12-19', '');
INSERT INTO `lienhe` VALUES ('4', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'dong nai', 'Nông Lâm Súc', 'Liên hệ hợp tác', 'fdfdf', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('5', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'a', 'a', 'Góp ý xây dựng', 'a', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('6', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Báo lỗi website', 'fff', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('7', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Báo lỗi website', 'fff', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('8', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'fff', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('9', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'fff', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('10', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'fff', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('11', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'nnn', '2013-12-30', '');
INSERT INTO `lienhe` VALUES ('12', 'Nguyễn Văn Chúc Ân', 'nv_ca@yahoo.com', '0972951554', 'Nông Lâm Tự', 'Nông Lâm Súc', 'Góp ý xây dựng', 'nnn', '2013-12-30', '');

-- ----------------------------
-- Table structure for `linhvuc`
-- ----------------------------
DROP TABLE IF EXISTS `linhvuc`;
CREATE TABLE `linhvuc` (
  `linhvuc` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`linhvuc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of linhvuc
-- ----------------------------
INSERT INTO `linhvuc` VALUES ('Cisco Lab');
INSERT INTO `linhvuc` VALUES ('Database');
INSERT INTO `linhvuc` VALUES ('Desktop');
INSERT INTO `linhvuc` VALUES ('DN giới thiệu');
INSERT INTO `linhvuc` VALUES ('Doanh nghiệp 2.0');
INSERT INTO `linhvuc` VALUES ('Doanh Nhân');
INSERT INTO `linhvuc` VALUES ('Đánh giá');
INSERT INTO `linhvuc` VALUES ('Đầu tư - cạnh tranh');
INSERT INTO `linhvuc` VALUES ('Giải pháp bảo mật');
INSERT INTO `linhvuc` VALUES ('Hacker');
INSERT INTO `linhvuc` VALUES ('Hướng dẫn');
INSERT INTO `linhvuc` VALUES ('Khởi nghiệp');
INSERT INTO `linhvuc` VALUES ('﻿Kiến thức cở bản');
INSERT INTO `linhvuc` VALUES ('LAN - WAN');
INSERT INTO `linhvuc` VALUES ('Laptop');
INSERT INTO `linhvuc` VALUES ('Linux-Unix');
INSERT INTO `linhvuc` VALUES ('Mac');
INSERT INTO `linhvuc` VALUES ('Mail Server');
INSERT INTO `linhvuc` VALUES ('Máy chủ');
INSERT INTO `linhvuc` VALUES ('Microsoft Lab');
INSERT INTO `linhvuc` VALUES ('Miễn phí giảm giá');
INSERT INTO `linhvuc` VALUES ('Quảng cáo trực tuyến');
INSERT INTO `linhvuc` VALUES ('Quốc tế');
INSERT INTO `linhvuc` VALUES ('Tablet');
INSERT INTO `linhvuc` VALUES ('Thiết bị - Linh kiện');
INSERT INTO `linhvuc` VALUES ('Thiết bị số');
INSERT INTO `linhvuc` VALUES ('Thiết kế - Đồ họa');
INSERT INTO `linhvuc` VALUES ('Thủ thuật');
INSERT INTO `linhvuc` VALUES ('Thương mại điện tử');
INSERT INTO `linhvuc` VALUES ('Tin bảo mật');
INSERT INTO `linhvuc` VALUES ('Tin học văn phòng');
INSERT INTO `linhvuc` VALUES ('Tin trong nước');
INSERT INTO `linhvuc` VALUES ('Tin tức');
INSERT INTO `linhvuc` VALUES ('Tư vấn');
INSERT INTO `linhvuc` VALUES ('Virus - Spyware');
INSERT INTO `linhvuc` VALUES ('Windows');

-- ----------------------------
-- Table structure for `main_menu`
-- ----------------------------
DROP TABLE IF EXISTS `main_menu`;
CREATE TABLE `main_menu` (
  `id_main_menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_main_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of main_menu
-- ----------------------------
INSERT INTO `main_menu` VALUES ('baomat', 'Bảo Mật');
INSERT INTO `main_menu` VALUES ('game', 'Game');
INSERT INTO `main_menu` VALUES ('hedieuhanh', 'Hệ Điều Hành');
INSERT INTO `main_menu` VALUES ('hoidap', 'Hỏi - Đáp');
INSERT INTO `main_menu` VALUES ('phancung', 'Phần Cứng');
INSERT INTO `main_menu` VALUES ('phanmem', 'Phần Mềm');
INSERT INTO `main_menu` VALUES ('thietbiso', 'Thiết Bị Số');
INSERT INTO `main_menu` VALUES ('thuthuattienit', 'Thủ Thuật - Tiện Ít');
INSERT INTO `main_menu` VALUES ('tintuccongnghe', 'Tin Tức Công Nghệ');
INSERT INTO `main_menu` VALUES ('trangchu', 'Trang Chủ');

-- ----------------------------
-- Table structure for `sub_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE `sub_menu` (
  `id_sub_menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_main_menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sub_menu`),
  KEY `id_main_menu_fk` (`id_main_menu`),
  CONSTRAINT `id_main_menu_fk` FOREIGN KEY (`id_main_menu`) REFERENCES `main_menu` (`id_main_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES ('danhgia', 'Đánh Giá', 'phanmem');
INSERT INTO `sub_menu` VALUES ('desktop', 'Desktop', 'phancung');
INSERT INTO `sub_menu` VALUES ('didong', 'Di Động', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('giaiphapbaomat', 'Giải Pháp Bảo Mật', 'baomat');
INSERT INTO `sub_menu` VALUES ('hacker', 'Hacker', 'baomat');
INSERT INTO `sub_menu` VALUES ('laptop', 'Laptop', 'phancung');
INSERT INTO `sub_menu` VALUES ('mac', 'Mac', 'hedieuhanh');
INSERT INTO `sub_menu` VALUES ('mayanh', 'Máy Ảnh', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('maynghenhac', 'Máy Nghe Nhạc', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('mayquay', 'Máy Quay', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('mienphigiamgia', 'Miễn Phí - Giảm Giá', 'phanmem');
INSERT INTO `sub_menu` VALUES ('phukien', 'Phụ Kiện', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('quocte', 'Quốc Tế', 'tintuccongnghe');
INSERT INTO `sub_menu` VALUES ('thietbigame', 'Thiết Bị Game', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('thietbikhac', 'Thiết Bị Khác', 'thietbiso');
INSERT INTO `sub_menu` VALUES ('thietbilinhkien', 'Thiết Bị - Linh Kiện', 'phancung');
INSERT INTO `sub_menu` VALUES ('tinbaomat', 'Tin Bảo Mật', 'baomat');
INSERT INTO `sub_menu` VALUES ('tinkhac', 'Tin Khác', 'tintuccongnghe');
INSERT INTO `sub_menu` VALUES ('tintuc', 'Tin Tức', 'phanmem');
INSERT INTO `sub_menu` VALUES ('trongnuoc', 'Trong Nước', 'tintuccongnghe');
INSERT INTO `sub_menu` VALUES ('tuvan', 'Tư Vấn', 'phancung');
INSERT INTO `sub_menu` VALUES ('unixlinux', 'Unit - Linux', 'hedieuhanh');
INSERT INTO `sub_menu` VALUES ('virus', 'Virus', 'baomat');
INSERT INTO `sub_menu` VALUES ('windows', 'Windows', 'hedieuhanh');

-- ----------------------------
-- Table structure for `temp`
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of temp
-- ----------------------------
INSERT INTO `temp` VALUES ('<p>Nguyá»n VÄn ch&uacute;c &Acirc;n</p>\r\n\r\n<p><em><u><s>Nguyá»n VÄn Ch&uacute;c &acirc;n</s></u></em></p>\r\n\r\n<p><strong>abc</strong></p>\r\n\r\n<p><strong><input name=\"check\" type=\"checkbox\" value=\"checked\" />&acirc;\\</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id_topic` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub_menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `stars` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`id_topic`),
  KEY `id_sub_menu_fk` (`id_sub_menu`),
  CONSTRAINT `id_sub_menu_fk` FOREIGN KEY (`id_sub_menu`) REFERENCES `sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of topic
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_entries` int(11) DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(4) NOT NULL,
  `is_male` bit(1) NOT NULL DEFAULT b'0' COMMENT '1: male, 0 famale',
  `is_receive_email` bit(1) DEFAULT b'0' COMMENT '1 yes 0 no',
  `is_show_email` bit(1) DEFAULT b'0',
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `is_admin` bit(1) NOT NULL DEFAULT b'0' COMMENT '1 admin, 0 normal user',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, 'nv_ca', 'a', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', '1993', '', '', '', '', '', '');
INSERT INTO `user` VALUES ('2', null, 'nguyenvanchucan', '6shbjp1', 'Nguyen Van Chuc An', 'nguyenvanchucan@gmail.com', '1993', '', '', '', '', '', 'dongnai');
INSERT INTO `user` VALUES ('3', null, 'abc', 'abcd', 'abc', '11130001@st.hcmuaf.edu.vn', '1993', '', '', '', '', '', 'tphcm');
