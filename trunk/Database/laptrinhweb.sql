/*
Navicat MySQL Data Transfer

Source Server         : LoginRoot
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : laptrinhweb

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2014-01-09 15:20:46
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
  `name_main_menu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_main_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of main_menu
-- ----------------------------
INSERT INTO `main_menu` VALUES ('baomat', 'Bảo Mật', 'baomat.jsp');
INSERT INTO `main_menu` VALUES ('game', 'Game', 'game.jsp');
INSERT INTO `main_menu` VALUES ('hedieuhanh', 'Hệ Điều Hành', 'hedieuhanh.jsp');
INSERT INTO `main_menu` VALUES ('hoidap', 'Hỏi - Đáp', 'hoidap.jsp');
INSERT INTO `main_menu` VALUES ('phancung', 'Phần Cứng', 'phancung.jsp');
INSERT INTO `main_menu` VALUES ('phanmem', 'Phần Mềm', 'phanmem.jsp');
INSERT INTO `main_menu` VALUES ('thietbiso', 'Thiết Bị Số', 'thietbiso.jsp');
INSERT INTO `main_menu` VALUES ('thuthuattienit', 'Thủ Thuật - Tiện Ít', 'thuthuattienich.jsp');
INSERT INTO `main_menu` VALUES ('tintuccongnghe', 'Tin Tức Công Nghệ', 'tintuccongnghe.jsp');
INSERT INTO `main_menu` VALUES ('trangchu', 'Trang Chủ', 'tranchu.jsp');

-- ----------------------------
-- Table structure for `sub_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE `sub_menu` (
  `id_sub_menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name_sub_menu` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_main_menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_sub_menu`),
  KEY `id_main_menu_fk` (`id_main_menu`),
  KEY `id_sub_menu` (`id_sub_menu`,`name_sub_menu`),
  KEY `name` (`name_sub_menu`),
  CONSTRAINT `id_main_menu_fk` FOREIGN KEY (`id_main_menu`) REFERENCES `main_menu` (`id_main_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES ('danhgia', 'Đánh Giá', 'phanmem', 'danhgia.jsp');
INSERT INTO `sub_menu` VALUES ('desktop', 'Desktop', 'phancung', 'desktop.jsp');
INSERT INTO `sub_menu` VALUES ('didong', 'Di Động', 'thietbiso', 'didong.jsp');
INSERT INTO `sub_menu` VALUES ('giaiphapbaomat', 'Giải Pháp Bảo Mật', 'baomat', 'giaiphapbaomat.jsp');
INSERT INTO `sub_menu` VALUES ('hacker', 'Hacker', 'baomat', 'hacker.jsp');
INSERT INTO `sub_menu` VALUES ('laptop', 'Laptop', 'phancung', 'laptop.jsp');
INSERT INTO `sub_menu` VALUES ('mac', 'Mac', 'hedieuhanh', 'mac.jsp');
INSERT INTO `sub_menu` VALUES ('mayanh', 'Máy Ảnh', 'thietbiso', 'mayanh.jsp');
INSERT INTO `sub_menu` VALUES ('maynghenhac', 'Máy Nghe Nhạc', 'thietbiso', 'maynghenhac.jsp');
INSERT INTO `sub_menu` VALUES ('mayquay', 'Máy Quay', 'thietbiso', 'mayquay.jsp');
INSERT INTO `sub_menu` VALUES ('mienphigiamgia', 'Miễn Phí - Giảm Giá', 'phanmem', 'mienphigiamgia.jsp');
INSERT INTO `sub_menu` VALUES ('phukien', 'Phụ Kiện', 'thietbiso', 'phukien.jsp');
INSERT INTO `sub_menu` VALUES ('quocte', 'Quốc Tế', 'tintuccongnghe', 'tinquocte.jsp');
INSERT INTO `sub_menu` VALUES ('thietbigame', 'Thiết Bị Game', 'thietbiso', 'thietbigame.jsp');
INSERT INTO `sub_menu` VALUES ('thietbikhac', 'Thiết Bị Khác', 'thietbiso', 'thietbikhac.jsp');
INSERT INTO `sub_menu` VALUES ('thietbilinhkien', 'Thiết Bị - Linh Kiện', 'phancung', 'thietbilinhkien.jsp');
INSERT INTO `sub_menu` VALUES ('tinbaomat', 'Tin Bảo Mật', 'baomat', 'tinbaomat.jsp');
INSERT INTO `sub_menu` VALUES ('tinkhac', 'Tin Khác', 'tintuccongnghe', 'tinkhac.jsp');
INSERT INTO `sub_menu` VALUES ('tintuc', 'Tin Tức', 'phanmem', 'tintuc.jsp');
INSERT INTO `sub_menu` VALUES ('trongnuoc', 'Trong Nước', 'tintuccongnghe', 'tintrongnuoc.jsp');
INSERT INTO `sub_menu` VALUES ('tuvan', 'Tư Vấn', 'phancung', 'tuvan.jsp');
INSERT INTO `sub_menu` VALUES ('unixlinux', 'Unit - Linux', 'hedieuhanh', 'unix-linux.jsp');
INSERT INTO `sub_menu` VALUES ('virus', 'Virus', 'baomat', 'virus.jsp');
INSERT INTO `sub_menu` VALUES ('windows', 'Windows', 'hedieuhanh', 'windows.jsp');

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_daidien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_sub_menu_fk` (`id_sub_menu`),
  CONSTRAINT `id_sub_menu_fk` FOREIGN KEY (`id_sub_menu`) REFERENCES `sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', 'desktop', '2014-01-09 11:14:15', '<p>test 1</p>\r\n', 'Test 1', '22A', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', null);
INSERT INTO `topic` VALUES ('2', 'thietbikhac', '2014-01-09 11:14:45', '<p>test2</p>\r\n', 'test2', '22A', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', null);
INSERT INTO `topic` VALUES ('3', 'virus', '2014-01-09 14:00:42', '<p>fsf</p>\r\n', 'tÃ©t vÃ­u', 'f', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', null);
INSERT INTO `topic` VALUES ('4', 'desktop', '2014-01-09 14:34:33', '<p>asdf</p>\r\n', 'desktop', '22A', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', null);
INSERT INTO `topic` VALUES ('5', 'didong', '2014-01-09 14:35:17', '<p>didong</p>\r\n', 'didong', 'f', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', 'http://images.tienphong.vn/Uploaded/Images/0/a73/0a7394dd24f0e019a7c91cff195ba0f5.jpg.ashx?w=660&h=371&crop=auto');
INSERT INTO `topic` VALUES ('6', 'trongnuoc', '2014-01-09 14:35:51', '<p>trong nuoc</p>\r\n', 'trong nuoc', 'a', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', null);
INSERT INTO `topic` VALUES ('7', 'desktop', '2014-01-09 15:10:04', '<p>a</p>\r\n', 'http://images.tienphong.vn/Uploaded/Images/0/a73/0a7394dd24f0e019a7c91cff195ba0f5.jpg.ashx?w=660&h=371&crop=auto', 'a', 'Nguyen Van Chuc An', 'nv_ca@yahoo.com', 'http://images.tienphong.vn/Uploaded/Images/0/a73/0a7394dd24f0e019a7c91cff195ba0f5.jpg.ashx?w=660&h=371&crop=auto');

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
