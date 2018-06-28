/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1 - mysql
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : itp_trananh

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-06-28 18:42:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ht_tai_khoan
-- ----------------------------
DROP TABLE IF EXISTS `ht_tai_khoan`;
CREATE TABLE `ht_tai_khoan` (
  `id_tai_khoan` int(11) NOT NULL AUTO_INCREMENT,
  `tai_khoan` varchar(32) CHARACTER SET utf8 NOT NULL,
  `mat_khau` varchar(32) CHARACTER SET utf8 NOT NULL,
  `ngay_dang_ky` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `ho_ten` varchar(150) CHARACTER SET utf8 NOT NULL,
  `trang_thai` char(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  PRIMARY KEY (`id_tai_khoan`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ht_tai_khoan
-- ----------------------------
INSERT INTO `ht_tai_khoan` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, null, 'Administrator', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('2', 'giaovien', 'e10adc3949ba59abbe56e057f20f883e', null, null, 'Giao Vien', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('4', 'lannt', '123456', '2018-01-21 11:02:58', null, 'Nguyễn Thị Lan', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('5', 'buiduchieuvnu', '1234', '2018-01-21 14:04:47', null, 'Bùi Đức Hiếu', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('6', 'nhuynt', '123456', '2018-01-21 14:05:53', null, 'Nguyễn Như Ý', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('10', 'taikhoan', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-21 15:48:02', null, 'Tài khoản test 01', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('11', 'admin2', '123', '2018-04-05 19:25:20', null, 'Tran Van Nam', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('12', 'Nguyên Xuân B?c', '123456', '2018-04-05 19:26:00', null, 'Nguyên Xuân B?c', 'A');
INSERT INTO `ht_tai_khoan` VALUES ('13', 'LÃª Thá»‹ Thá»§y', '123', '2018-04-05 19:28:03', null, 'Le Thi Thuy', 'D');
INSERT INTO `ht_tai_khoan` VALUES ('14', 'admin03', '123', '2018-04-05 19:48:27', null, 'Quan tri noi dung 02', 'D');

-- ----------------------------
-- Table structure for ta_bai_viet
-- ----------------------------
DROP TABLE IF EXISTS `ta_bai_viet`;
CREATE TABLE `ta_bai_viet` (
  `id_bai_viet` int(11) NOT NULL AUTO_INCREMENT,
  `id_dm_bai_viet` int(11) NOT NULL,
  PRIMARY KEY (`id_bai_viet`),
  KEY `fk_ta_bai_viet_ta_dm_bai_viet1_idx` (`id_dm_bai_viet`),
  CONSTRAINT `fk_ta_bai_viet_ta_dm_bai_viet1` FOREIGN KEY (`id_dm_bai_viet`) REFERENCES `ta_dm_bai_viet` (`id_dm_bai_viet`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_bai_viet
-- ----------------------------

-- ----------------------------
-- Table structure for ta_cau_hinh
-- ----------------------------
DROP TABLE IF EXISTS `ta_cau_hinh`;
CREATE TABLE `ta_cau_hinh` (
  `id_cau_hinh` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_cau_hinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_cau_hinh
-- ----------------------------

-- ----------------------------
-- Table structure for ta_chuc_nang
-- ----------------------------
DROP TABLE IF EXISTS `ta_chuc_nang`;
CREATE TABLE `ta_chuc_nang` (
  `id_chuc_nang` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_chuc_nang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_chuc_nang
-- ----------------------------

-- ----------------------------
-- Table structure for ta_dm_bai_viet
-- ----------------------------
DROP TABLE IF EXISTS `ta_dm_bai_viet`;
CREATE TABLE `ta_dm_bai_viet` (
  `id_dm_bai_viet` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_dm_bai_viet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_dm_bai_viet
-- ----------------------------

-- ----------------------------
-- Table structure for ta_dm_chi_nhanh
-- ----------------------------
DROP TABLE IF EXISTS `ta_dm_chi_nhanh`;
CREATE TABLE `ta_dm_chi_nhanh` (
  `id_dm_chi_nhanh` int(11) NOT NULL AUTO_INCREMENT,
  `id_dm_tinh_thanh` int(11) NOT NULL,
  PRIMARY KEY (`id_dm_chi_nhanh`),
  KEY `fk_ta_dm_chi_nhanh_ta_dm_tinh_thanh1_idx` (`id_dm_tinh_thanh`),
  CONSTRAINT `fk_ta_dm_chi_nhanh_ta_dm_tinh_thanh1` FOREIGN KEY (`id_dm_tinh_thanh`) REFERENCES `ta_dm_tinh_thanh` (`id_dm_tinh_thanh`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_dm_chi_nhanh
-- ----------------------------

-- ----------------------------
-- Table structure for ta_dm_hang
-- ----------------------------
DROP TABLE IF EXISTS `ta_dm_hang`;
CREATE TABLE `ta_dm_hang` (
  `id_dm_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_dm_hang_cha` int(11) DEFAULT NULL,
  `ma_danh_muc` varchar(100) NOT NULL,
  `ten_danh_muc` varchar(300) DEFAULT NULL,
  `hinh_anh` varchar(500) DEFAULT NULL,
  `trang_thai` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_dm_hang`),
  KEY `fk_ta_dm_hang_ta_dm_hang1_idx` (`id_dm_hang_cha`),
  CONSTRAINT `fk_ta_dm_hang_ta_dm_hang1` FOREIGN KEY (`id_dm_hang_cha`) REFERENCES `ta_dm_hang` (`id_dm_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_dm_hang
-- ----------------------------
INSERT INTO `ta_dm_hang` VALUES ('1', null, 'DM_DIEN_LANH', 'Điện lạnh', 'dien_lanh.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('2', '1', 'DM_GIA_DUNG', 'Gia dụng ', 'gia_dung.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('4', '1', 'Test ma danh muc', 'Test ten danh muc', 'Test hinh anh', 'A');
INSERT INTO `ta_dm_hang` VALUES ('5', '1', 'Danh muc test 02', 'Danh má»¥c test 01', 'HÃ¬nh áº£nh test 01', 'A');
INSERT INTO `ta_dm_hang` VALUES ('6', '1', 'DANH_MUC_TEST_01', 'Danh má»¥c test 01', 'HÃ¬nh áº£nh test 01', 'A');
INSERT INTO `ta_dm_hang` VALUES ('7', '1', 'DANH_MUC_TEST_01', 'Danh má»¥c test 01', 'HÃ¬nh áº£nh test 01', 'A');
INSERT INTO `ta_dm_hang` VALUES ('8', '1', 'DANH_MUC_TEST_01', 'Danh má»¥c test 01', 'HÃ¬nh áº£nh test 01', 'A');
INSERT INTO `ta_dm_hang` VALUES ('9', '1', 'DANH_MUC_TEST_01', 'Danh má»¥c test 01', 'HÃ¬nh áº£nh test 01', 'A');
INSERT INTO `ta_dm_hang` VALUES ('10', '1', 'DANH_MUC_TEST_01', 'Danh má»¥c test 01', 'HÃ¬nh áº£nh test 01', 'A');
INSERT INTO `ta_dm_hang` VALUES ('12', null, 'TIVI', 'Ti vi', 'default.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('13', '12', 'TIVI_SONY', 'Ti vi Sony', 'default.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('14', '12', 'TIVI_LG', 'Ti vi LG', 'default.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('15', '12', 'TIVI_SAMSUNG', 'Ti vi Samsung', 'default.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('16', '12', 'TIVI_ANDROID', 'Ti vi Android', 'default.png', 'A');
INSERT INTO `ta_dm_hang` VALUES ('17', '12', 'TIVI_FULLHD', 'Ti vi Full HD', 'default.png', 'A');

-- ----------------------------
-- Table structure for ta_dm_nha_cung_cap
-- ----------------------------
DROP TABLE IF EXISTS `ta_dm_nha_cung_cap`;
CREATE TABLE `ta_dm_nha_cung_cap` (
  `id_dm_nha_cung_cap` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_dm_nha_cung_cap`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_dm_nha_cung_cap
-- ----------------------------
INSERT INTO `ta_dm_nha_cung_cap` VALUES ('1', 'Dai ly FPT Ha Noi');
INSERT INTO `ta_dm_nha_cung_cap` VALUES ('2', 'Nha phan phoi Samsung VietNam');
INSERT INTO `ta_dm_nha_cung_cap` VALUES ('3', 'Nha PP LG VietNam');
INSERT INTO `ta_dm_nha_cung_cap` VALUES ('4', 'Nha PP Panasonic Bac Ninh');

-- ----------------------------
-- Table structure for ta_dm_thuong_hieu
-- ----------------------------
DROP TABLE IF EXISTS `ta_dm_thuong_hieu`;
CREATE TABLE `ta_dm_thuong_hieu` (
  `id_dm_thuong_hieu` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_dm_thuong_hieu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_dm_thuong_hieu
-- ----------------------------
INSERT INTO `ta_dm_thuong_hieu` VALUES ('1', 'Samsung', 'samsung.png');
INSERT INTO `ta_dm_thuong_hieu` VALUES ('2', 'LG', 'lg.png');
INSERT INTO `ta_dm_thuong_hieu` VALUES ('3', 'Daikin', 'daikin.png');
INSERT INTO `ta_dm_thuong_hieu` VALUES ('4', 'Apple', 'apple.png');

-- ----------------------------
-- Table structure for ta_dm_tinh_thanh
-- ----------------------------
DROP TABLE IF EXISTS `ta_dm_tinh_thanh`;
CREATE TABLE `ta_dm_tinh_thanh` (
  `id_dm_tinh_thanh` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_dm_tinh_thanh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_dm_tinh_thanh
-- ----------------------------

-- ----------------------------
-- Table structure for ta_don_hang
-- ----------------------------
DROP TABLE IF EXISTS `ta_don_hang`;
CREATE TABLE `ta_don_hang` (
  `id_don_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_tai_khoan` int(11) NOT NULL,
  `ngay_dat` datetime DEFAULT NULL,
  `ngay_giao` datetime DEFAULT NULL,
  `trang_thai` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_don_hang`),
  KEY `fk_ta_don_hang_ta_tai_khoan1_idx` (`id_tai_khoan`),
  CONSTRAINT `fk_ta_don_hang_ta_tai_khoan1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `ta_tai_khoan` (`id_tai_khoan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_don_hang
-- ----------------------------

-- ----------------------------
-- Table structure for ta_khuyen_mai
-- ----------------------------
DROP TABLE IF EXISTS `ta_khuyen_mai`;
CREATE TABLE `ta_khuyen_mai` (
  `id_khuyen_mai` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_khuyen_mai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_khuyen_mai
-- ----------------------------

-- ----------------------------
-- Table structure for ta_menu
-- ----------------------------
DROP TABLE IF EXISTS `ta_menu`;
CREATE TABLE `ta_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu_cha` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `fk_ta_menu_ta_menu1_idx` (`id_menu_cha`),
  CONSTRAINT `fk_ta_menu_ta_menu1` FOREIGN KEY (`id_menu_cha`) REFERENCES `ta_menu` (`id_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ta_nhom_tai_khoan
-- ----------------------------
DROP TABLE IF EXISTS `ta_nhom_tai_khoan`;
CREATE TABLE `ta_nhom_tai_khoan` (
  `id_nhom_tai_khoan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_nhom_tai_khoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_nhom_tai_khoan
-- ----------------------------

-- ----------------------------
-- Table structure for ta_nhom_tai_khoan_chuc_nang_ct
-- ----------------------------
DROP TABLE IF EXISTS `ta_nhom_tai_khoan_chuc_nang_ct`;
CREATE TABLE `ta_nhom_tai_khoan_chuc_nang_ct` (
  `id_nhom_tai_khoan_chuc_nang_ct` int(11) NOT NULL AUTO_INCREMENT,
  `id_nhom_tai_khoan` int(11) NOT NULL,
  `id_chuc_nang` int(11) NOT NULL,
  PRIMARY KEY (`id_nhom_tai_khoan_chuc_nang_ct`),
  KEY `fk_ta_nhom_tai_khoan_chuc_nang_ct_ta_nhom_tai_khoan1_idx` (`id_nhom_tai_khoan`),
  KEY `fk_ta_nhom_tai_khoan_chuc_nang_ct_ta_chuc_nang1_idx` (`id_chuc_nang`),
  CONSTRAINT `fk_ta_nhom_tai_khoan_chuc_nang_ct_ta_chuc_nang1` FOREIGN KEY (`id_chuc_nang`) REFERENCES `ta_chuc_nang` (`id_chuc_nang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_nhom_tai_khoan_chuc_nang_ct_ta_nhom_tai_khoan1` FOREIGN KEY (`id_nhom_tai_khoan`) REFERENCES `ta_nhom_tai_khoan` (`id_nhom_tai_khoan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_nhom_tai_khoan_chuc_nang_ct
-- ----------------------------

-- ----------------------------
-- Table structure for ta_phieu_nhap
-- ----------------------------
DROP TABLE IF EXISTS `ta_phieu_nhap`;
CREATE TABLE `ta_phieu_nhap` (
  `id_phieu_nhap` int(11) NOT NULL AUTO_INCREMENT,
  `id_tai_khoan` int(11) NOT NULL,
  PRIMARY KEY (`id_phieu_nhap`),
  KEY `fk_ta_phieu_nhap_ta_tai_khoan1_idx` (`id_tai_khoan`),
  CONSTRAINT `fk_ta_phieu_nhap_ta_tai_khoan1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `ta_tai_khoan` (`id_tai_khoan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_phieu_nhap
-- ----------------------------

-- ----------------------------
-- Table structure for ta_phieu_xuat
-- ----------------------------
DROP TABLE IF EXISTS `ta_phieu_xuat`;
CREATE TABLE `ta_phieu_xuat` (
  `id_phieu_xuat` int(11) NOT NULL AUTO_INCREMENT,
  `id_tai_khoan` int(11) NOT NULL,
  PRIMARY KEY (`id_phieu_xuat`),
  KEY `fk_ta_phieu_xuat_ta_tai_khoan1_idx` (`id_tai_khoan`),
  CONSTRAINT `fk_ta_phieu_xuat_ta_tai_khoan1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `ta_tai_khoan` (`id_tai_khoan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_phieu_xuat
-- ----------------------------

-- ----------------------------
-- Table structure for ta_quang_cao
-- ----------------------------
DROP TABLE IF EXISTS `ta_quang_cao`;
CREATE TABLE `ta_quang_cao` (
  `id_quang_cao` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_quang_cao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_quang_cao
-- ----------------------------

-- ----------------------------
-- Table structure for ta_san_pham
-- ----------------------------
DROP TABLE IF EXISTS `ta_san_pham`;
CREATE TABLE `ta_san_pham` (
  `id_san_pham` int(11) NOT NULL AUTO_INCREMENT,
  `id_dm_hang` int(11) NOT NULL,
  `ta_id_dm_nha_cung_cap` int(11) DEFAULT NULL,
  `ta_id_dm_thuong_hieu` int(11) DEFAULT NULL,
  `ma_san_phan` varchar(100) NOT NULL,
  `ten_san_pham` varchar(300) DEFAULT NULL,
  `gia_nhap` decimal(15,0) DEFAULT NULL,
  `gia_ban` decimal(15,0) DEFAULT NULL,
  `gia_khuyen_mai` decimal(15,0) DEFAULT NULL,
  `hinh_anh` varchar(500) DEFAULT NULL,
  `mo_ta_ngan` text,
  `mo_ta_chi_tiet` text,
  `thuoc_tinh` text,
  `trang_thai` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_san_pham`),
  KEY `fk_ta_san_pham_ta_dm_hang_idx` (`id_dm_hang`),
  KEY `fk_ta_san_pham_ta_dm_nha_cung_cap1_idx` (`ta_id_dm_nha_cung_cap`),
  KEY `fk_ta_san_pham_ta_dm_thuong_hieu1_idx` (`ta_id_dm_thuong_hieu`),
  CONSTRAINT `fk_ta_san_pham_ta_dm_hang` FOREIGN KEY (`id_dm_hang`) REFERENCES `ta_dm_hang` (`id_dm_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_san_pham_ta_dm_nha_cung_cap1` FOREIGN KEY (`ta_id_dm_nha_cung_cap`) REFERENCES `ta_dm_nha_cung_cap` (`id_dm_nha_cung_cap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_san_pham_ta_dm_thuong_hieu1` FOREIGN KEY (`ta_id_dm_thuong_hieu`) REFERENCES `ta_dm_thuong_hieu` (`id_dm_thuong_hieu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_san_pham
-- ----------------------------
INSERT INTO `ta_san_pham` VALUES ('2', '12', null, null, 'UA43M5500', 'Tivi Samsung 42 inch', null, '12390000', null, 'upload/images/sanpham/tivi_1.png', null, null, null, null);
INSERT INTO `ta_san_pham` VALUES ('3', '12', null, null, 'UA43M5500', 'Tivi Mart LG 50 inch', null, '25000000', null, 'upload/images/sanpham/tivi_1.png', null, null, null, null);
INSERT INTO `ta_san_pham` VALUES ('4', '12', null, null, 'UA43M5500', 'Tivi 003', null, '12390000', null, 'upload/images/sanpham/tivi_1.png', null, null, null, null);
INSERT INTO `ta_san_pham` VALUES ('5', '12', null, null, 'UA43M5500', 'Tivi 004', null, '12390000', null, 'upload/images/sanpham/tivi_1.png', null, null, null, null);

-- ----------------------------
-- Table structure for ta_san_pham_don_hang_ct
-- ----------------------------
DROP TABLE IF EXISTS `ta_san_pham_don_hang_ct`;
CREATE TABLE `ta_san_pham_don_hang_ct` (
  `id_san_pham_don_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_don_hang` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_san_pham_don_hang`),
  KEY `fk_ta_san_pham_don_hang_ct_ta_don_hang1_idx` (`id_don_hang`),
  KEY `fk_ta_san_pham_don_hang_ct_ta_san_pham1_idx` (`id_san_pham`),
  CONSTRAINT `fk_ta_san_pham_don_hang_ct_ta_don_hang1` FOREIGN KEY (`id_don_hang`) REFERENCES `ta_don_hang` (`id_don_hang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_san_pham_don_hang_ct_ta_san_pham1` FOREIGN KEY (`id_san_pham`) REFERENCES `ta_san_pham` (`id_san_pham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_san_pham_don_hang_ct
-- ----------------------------

-- ----------------------------
-- Table structure for ta_san_pham_khuyen_mai_ct
-- ----------------------------
DROP TABLE IF EXISTS `ta_san_pham_khuyen_mai_ct`;
CREATE TABLE `ta_san_pham_khuyen_mai_ct` (
  `id_san_pham_khuyen_mai_ct` int(11) NOT NULL,
  `id_khuyen_mai` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  PRIMARY KEY (`id_san_pham_khuyen_mai_ct`),
  KEY `fk_ta_san_pham_khuyen_mai_ct_ta_khuyen_mai1_idx` (`id_khuyen_mai`),
  KEY `fk_ta_san_pham_khuyen_mai_ct_ta_san_pham1_idx` (`id_san_pham`),
  CONSTRAINT `fk_ta_san_pham_khuyen_mai_ct_ta_khuyen_mai1` FOREIGN KEY (`id_khuyen_mai`) REFERENCES `ta_khuyen_mai` (`id_khuyen_mai`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_san_pham_khuyen_mai_ct_ta_san_pham1` FOREIGN KEY (`id_san_pham`) REFERENCES `ta_san_pham` (`id_san_pham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_san_pham_khuyen_mai_ct
-- ----------------------------

-- ----------------------------
-- Table structure for ta_san_pham_phieu_nhap_ct
-- ----------------------------
DROP TABLE IF EXISTS `ta_san_pham_phieu_nhap_ct`;
CREATE TABLE `ta_san_pham_phieu_nhap_ct` (
  `id_san_pham_phieu_nhap_ct` int(11) NOT NULL AUTO_INCREMENT,
  `id_san_pham` int(11) NOT NULL,
  `id_phieu_nhap` int(11) NOT NULL,
  PRIMARY KEY (`id_san_pham_phieu_nhap_ct`),
  KEY `fk_ta_san_pham_phieu_nhap_ct_ta_san_pham1_idx` (`id_san_pham`),
  KEY `fk_ta_san_pham_phieu_nhap_ct_ta_phieu_nhap1_idx` (`id_phieu_nhap`),
  CONSTRAINT `fk_ta_san_pham_phieu_nhap_ct_ta_phieu_nhap1` FOREIGN KEY (`id_phieu_nhap`) REFERENCES `ta_phieu_nhap` (`id_phieu_nhap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_san_pham_phieu_nhap_ct_ta_san_pham1` FOREIGN KEY (`id_san_pham`) REFERENCES `ta_san_pham` (`id_san_pham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_san_pham_phieu_nhap_ct
-- ----------------------------

-- ----------------------------
-- Table structure for ta_san_pham_phieu_xuat_ct
-- ----------------------------
DROP TABLE IF EXISTS `ta_san_pham_phieu_xuat_ct`;
CREATE TABLE `ta_san_pham_phieu_xuat_ct` (
  `id_san_pham_phieu_xuat` int(11) NOT NULL AUTO_INCREMENT,
  `id_san_pham` int(11) NOT NULL,
  `id_phieu_xuat` int(11) NOT NULL,
  PRIMARY KEY (`id_san_pham_phieu_xuat`),
  KEY `fk_ta_san_pham_phieu_xuat_ta_san_pham1_idx` (`id_san_pham`),
  KEY `fk_ta_san_pham_phieu_xuat_ta_phieu_xuat1_idx` (`id_phieu_xuat`),
  CONSTRAINT `fk_ta_san_pham_phieu_xuat_ta_phieu_xuat1` FOREIGN KEY (`id_phieu_xuat`) REFERENCES `ta_phieu_xuat` (`id_phieu_xuat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ta_san_pham_phieu_xuat_ta_san_pham1` FOREIGN KEY (`id_san_pham`) REFERENCES `ta_san_pham` (`id_san_pham`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_san_pham_phieu_xuat_ct
-- ----------------------------

-- ----------------------------
-- Table structure for ta_tai_khoan
-- ----------------------------
DROP TABLE IF EXISTS `ta_tai_khoan`;
CREATE TABLE `ta_tai_khoan` (
  `id_tai_khoan` int(11) NOT NULL AUTO_INCREMENT,
  `id_nhom_tai_khoan` int(11) NOT NULL,
  `ho_ten` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `so_dien_thoai` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `trang_thai` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_tai_khoan`),
  KEY `fk_ta_tai_khoan_ta_nhom_tai_khoan1_idx` (`id_nhom_tai_khoan`),
  CONSTRAINT `fk_ta_tai_khoan_ta_nhom_tai_khoan1` FOREIGN KEY (`id_nhom_tai_khoan`) REFERENCES `ta_nhom_tai_khoan` (`id_nhom_tai_khoan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_tai_khoan
-- ----------------------------

-- ----------------------------
-- Table structure for ta_ton_kho
-- ----------------------------
DROP TABLE IF EXISTS `ta_ton_kho`;
CREATE TABLE `ta_ton_kho` (
  `id_ton_kho` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ton_kho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_ton_kho
-- ----------------------------

-- ----------------------------
-- Table structure for test_sinh_vien
-- ----------------------------
DROP TABLE IF EXISTS `test_sinh_vien`;
CREATE TABLE `test_sinh_vien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test_sinh_vien
-- ----------------------------
INSERT INTO `test_sinh_vien` VALUES ('5', 'Tráº§n XuÃ¢n Trung 1', 'Trung@gmail.com');
INSERT INTO `test_sinh_vien` VALUES ('6', 'LÃª Thá»‹ Lan Há»“ng', 'lan@yahoo.com');
INSERT INTO `test_sinh_vien` VALUES ('9', 'Tráº§n Quá»‘c Tuáº¥n', 'tuan86@hotmail.com');
INSERT INTO `test_sinh_vien` VALUES ('11', 'VÅ© Trá»ng Phá»¥ng', 'phung@hotmail.com');
INSERT INTO `test_sinh_vien` VALUES ('13', 'Sinh viÃªn má»›i', 'svm@gmail.com');
INSERT INTO `test_sinh_vien` VALUES ('14', 'Sinh viÃªn 02', 'sv2@gmail.com');

-- ----------------------------
-- Procedure structure for dm_hang_khoa
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_khoa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_khoa`(`p_id_dm_hang` INT)
BEGIN
	update ta_dm_hang set
    trang_thai = 'D'
    where id_dm_hang = p_id_dm_hang;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_hang_mo_khoa
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_mo_khoa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_mo_khoa`(`p_id_dm_hang` INT)
BEGIN
	update ta_dm_hang set
    trang_thai = 'A'
    where id_dm_hang = p_id_dm_hang;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_hang_sua
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_sua`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_sua`(`p_id_dm_hang` INT, `p_id_dm_hang_cha` INT, `p_ma_danh_muc` VARCHAR(100), `p_ten_danh_muc` NVARCHAR(300), `p_hinh_anh` NVARCHAR(500), `p_trang_thai` CHAR(1))
BEGIN

	update ta_dm_hang set
    id_dm_hang_cha = p_id_dm_hang_cha,
    ma_danh_muc = p_ma_danh_muc,
    ten_danh_muc = p_ten_danh_muc,
    hinh_anh = p_hinh_anh,
    trang_thai = p_trang_thai
    where id_dm_hang = p_id_dm_hang;
    
    select 'Sửa thành công!' as ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_hang_them
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_them`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_them`(`p_id_dm_cha` INT, `p_ma_danh_muc` VARCHAR(100), `p_ten_danh_muc` NVARCHAR(300), `p_hinh_anh` NVARCHAR(500), `p_trang_thai` CHAR(1))
BEGIN
/*
	Thêm mới danh mục hàng
*/
	insert into ta_dm_hang(
		id_dm_hang_cha,
        ma_danh_muc,
        ten_danh_muc,
        hinh_anh,
        trang_thai
    )values(
		p_id_dm_cha,
        p_ma_danh_muc,
        p_ten_danh_muc,
        p_hinh_anh,
        p_trang_thai
    );
    
    select LAST_INSERT_ID();
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_hang_tim
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_tim`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_tim`()
BEGIN
	/*
		Lấy danh sách các sản phẩm 
    */
  SELECT * from ta_dm_hang a
	ORDER BY a.id_dm_hang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_hang_tim_theo_cha
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_tim_theo_cha`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_tim_theo_cha`(`p_id_dm_hang_cha` int)
BEGIN

	/*
		Lấy danh sách danh mục hàng con của danh mục cha theo id
    */
    select 
	* 
	from ta_dm_hang
	where id_dm_hang_cha=p_id_dm_hang_cha;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_hang_xoa
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_hang_xoa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_hang_xoa`(`p_id_dm_hang` INT)
BEGIN
	delete from ta_dm_hang
    where id_dm_hang = p_id_dm_hang;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_nha_cung_cap_tim
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_nha_cung_cap_tim`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_nha_cung_cap_tim`()
BEGIN
	/*
		Lấy danh sách các sản phẩm 
    */
  SELECT * from ta_dm_nha_cung_cap a
	ORDER BY a.id_dm_nha_cung_cap DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dm_thuong_hieu_tim
-- ----------------------------
DROP PROCEDURE IF EXISTS `dm_thuong_hieu_tim`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dm_thuong_hieu_tim`()
BEGIN
	/*
		Lấy danh sách các sản phẩm 
    */
  SELECT * from ta_dm_thuong_hieu a
	ORDER BY a.id_dm_thuong_hieu DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_tai_khoan_khoa
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_tai_khoan_khoa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ht_tai_khoan_khoa`(
	p_id_tai_khoan int,
	p_trang_thai char(1)
)
BEGIN
/*
	Sua thong tin tai khoan
*/

DECLARE ma CHAR(5) DEFAULT '00000';
DECLARE thong_bao TEXT;
DECLARE ket_qua TEXT;
	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	ROLLBACK;
	GET DIAGNOSTICS CONDITION 1
		ma = RETURNED_SQLSTATE, thong_bao = MESSAGE_TEXT;
	select ma, thong_bao, ket_qua;
END;

START TRANSACTION;

	UPDATE ht_tai_khoan SET 
		trang_thai = p_trang_thai
	WHERE id_tai_khoan = p_id_tai_khoan;
	
COMMIT;

	SET ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
	SET thong_bao = 'Cap nhat thành công!';
	select ma, thong_bao, ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_tai_khoan_lay
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_tai_khoan_lay`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ht_tai_khoan_lay`(
	p_id_tai_khoan int
)
BEGIN
	/*
		Lấy  tai khoan theo id_tai_khoan
    */
  SELECT
		*
	FROM 
		ht_tai_khoan a
	WHERE a.id_tai_khoan = p_id_tai_khoan;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_tai_khoan_sua
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_tai_khoan_sua`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ht_tai_khoan_sua`(p_id_tai_khoan int,
	p_ho_ten varchar(150),
	p_mat_khau varchar(32),
	p_trang_thai char(1))
BEGIN
/*
	Sua thong tin tai khoan
*/ 

DECLARE ma CHAR(5) DEFAULT '00000';
DECLARE thong_bao TEXT;
DECLARE ket_qua TEXT;
	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	ROLLBACK;
	GET DIAGNOSTICS CONDITION 1
		ma = RETURNED_SQLSTATE, thong_bao = MESSAGE_TEXT;
	select ma, thong_bao, ket_qua;
END;

START TRANSACTION;

	UPDATE ht_tai_khoan SET 
		ho_ten = p_ho_ten,
		mat_khau = p_mat_khau,
		trang_thai = p_trang_thai
	WHERE id_tai_khoan = p_id_tai_khoan;
	
COMMIT;

	SET ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
	SET thong_bao = 'Sửa thành công!';
	select ma, thong_bao, ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_tai_khoan_them
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_tai_khoan_them`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ht_tai_khoan_them`(p_tai_khoan varchar(32),
	p_mat_khau varchar(32),
	p_ho_ten varchar(150),
	p_trang_thai char(1))
BEGIN
/*    
	Thêm mới tai khoan
*/
DECLARE ma CHAR(5) DEFAULT '00000';
DECLARE thong_bao TEXT;
DECLARE ket_qua TEXT;
	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
  ROLLBACK;
  GET DIAGNOSTICS CONDITION 1
	ma = RETURNED_SQLSTATE, thong_bao = MESSAGE_TEXT;
END;
	
START TRANSACTION;

	insert into ht_tai_khoan(
		tai_khoan,
		mat_khau,
		ngay_dang_ky,
		ho_ten,
		trang_thai
  )values(
		p_tai_khoan,
		p_mat_khau,
		now(),
		p_ho_ten,
		p_trang_thai
   );
	
COMMIT;	
	SET ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
	SET thong_bao = 'Thêm thành công!';
	select ma, thong_bao, ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_tai_khoan_tim
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_tai_khoan_tim`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ht_tai_khoan_tim`()
BEGIN
	/*
		Lấy danh sách các sản phẩm 
    */
  SELECT
		a.id_tai_khoan,
		a.ho_ten,
		a.tai_khoan,
		a.ngay_dang_ky,
		a.trang_thai,
		a.last_login
	FROM 
		ht_tai_khoan a
	ORDER BY a.id_tai_khoan DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for san_pham_lay
-- ----------------------------
DROP PROCEDURE IF EXISTS `san_pham_lay`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `san_pham_lay`(p_id_tai_khoan int)
BEGIN 
	/*
		Lấy  tai khoan theo id_tai_khoan
    */
  SELECT
		a.id_tai_khoan,
		a.ho_ten,
		a.tai_khoan,
		a.ngay_dang_ky,
		a.trang_thai,
		a.last_login
	FROM 
		ht_tai_khoan a
	WHERE a.id_tai_khoan = p_id_tai_khoan;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for san_pham_tim
-- ----------------------------
DROP PROCEDURE IF EXISTS `san_pham_tim`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `san_pham_tim`()
BEGIN
	/*
		Lấy danh sách các sản phẩm 
    */
  SELECT
		a.*,
		b.ten_danh_muc
	FROM 
		ta_san_pham a INNER JOIN ta_dm_hang b ON a.id_dm_hang = b.id_dm_hang
	ORDER BY a.id_san_pham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for san_pham_tim_theo_dm
-- ----------------------------
DROP PROCEDURE IF EXISTS `san_pham_tim_theo_dm`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `san_pham_tim_theo_dm`(`p_id_dm_hang` int)
BEGIN

	/*
		Lấy danh sách các sản phẩm theo danh mục
    */
    select 
	* 
	from ta_san_pham
	where id_dm_hang=p_id_dm_hang
    limit 4;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ta_san_pham_sua
-- ----------------------------
DROP PROCEDURE IF EXISTS `ta_san_pham_sua`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ta_san_pham_sua`(
	p_id_san_pham int,
	p_id_dm_hang int,
	p_ta_id_dm_nha_cung_cap int,
	p_ta_id_dm_thuong_hieu int,
	p_ma_san_phan varchar(100),
	p_ten_san_pham varchar(300),
	p_gia_nhap decimal,
	p_gia_ban decimal,
	p_gia_khuyen_mai decimal,
	p_hinh_anh varchar(500),
	p_mo_ta_ngan text,
	p_mo_ta_chi_tiet text,
	p_thuoc_tinh text,
	p_trang_thai char(1)
)
BEGIN
/*
	Thêm mới sản phẩm
*/



DECLARE ma CHAR(5) DEFAULT '00000';
DECLARE thong_bao TEXT;
DECLARE ket_qua TEXT;
	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	ROLLBACK;
	GET DIAGNOSTICS CONDITION 1
		ma = RETURNED_SQLSTATE, thong_bao = MESSAGE_TEXT;
	select ma, thong_bao, ket_qua;
END;

START TRANSACTION;

	UPDATE ta_san_pham SET 
		id_dm_hang = p_id_dm_hang,
		ta_id_dm_nha_cung_cap = p_ta_id_dm_nha_cung_cap,
		ta_id_dm_thuong_hieu = p_ta_id_dm_thuong_hieu,
		ma_san_phan = p_ma_san_phan,
		ten_san_pham = p_ten_san_pham,
		gia_nhap = p_gia_nhap,
		gia_ban = p_gia_ban,
		gia_khuyen_mai = p_gia_khuyen_mai,
		hinh_anh = p_hinh_anh,
		mo_ta_ngan = p_mo_ta_ngan,
		mo_ta_chi_tiet = p_mo_ta_chi_tiet,
		thuoc_tinh = p_thuoc_tinh,
		trang_thai = p_trang_thai
	WHERE id_san_pham = p_id_san_pham;
	
COMMIT;

	SET ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
	SET thong_bao = 'Sửa thành công!';
	select ma, thong_bao, ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ta_san_pham_them
-- ----------------------------
DROP PROCEDURE IF EXISTS `ta_san_pham_them`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ta_san_pham_them`(
p_id_san_pham int,
p_id_dm_hang int,
p_ta_id_dm_nha_cung_cap int,
p_ta_id_dm_thuong_hieu int,
p_ma_san_phan varchar(100),
p_ten_san_pham varchar(300),
p_gia_nhap decimal,
p_gia_ban decimal,
p_gia_khuyen_mai decimal,
p_hinh_anh varchar(500),
p_mo_ta_ngan text,
p_mo_ta_chi_tiet text,
p_thuoc_tinh text,
p_trang_thai char(1)
)
BEGIN
/*
Thêm mới sản phẩm
*/
DECLARE ma CHAR(5) DEFAULT '00000';
DECLARE thong_bao TEXT;
DECLARE ket_qua TEXT;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
GET DIAGNOSTICS CONDITION 1
ma = RETURNED_SQLSTATE, thong_bao = MESSAGE_TEXT;
END;

insert into ta_san_pham(
id_dm_hang,
ta_id_dm_nha_cung_cap,
ta_id_dm_thuong_hieu,
ma_san_phan,
ten_san_pham,
gia_nhap,
gia_ban,
gia_khuyen_mai,
hinh_anh,
mo_ta_ngan,
mo_ta_chi_tiet,
thuoc_tinh,
trang_thai
)values(
p_id_dm_hang,
p_ta_id_dm_nha_cung_cap,
p_ta_id_dm_thuong_hieu,
p_ma_san_phan,
p_ten_san_pham,
p_gia_nhap,
p_gia_ban,
p_gia_khuyen_mai,
p_hinh_anh,
p_mo_ta_ngan,
p_mo_ta_chi_tiet,
p_thuoc_tinh,
p_trang_thai
);

SET ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET thong_bao = 'Thêm thành công!';
select ma, thong_bao, ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ta_san_pham_xoa
-- ----------------------------
DROP PROCEDURE IF EXISTS `ta_san_pham_xoa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ta_san_pham_xoa`(
	p_id_san_pham int
)
BEGIN
/*
	Thêm mới sản phẩm
*/



DECLARE ma CHAR(5) DEFAULT '00000';
DECLARE thong_bao TEXT;
DECLARE ket_qua TEXT;
	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
	ROLLBACK;
	GET DIAGNOSTICS CONDITION 1
		ma = RETURNED_SQLSTATE, thong_bao = MESSAGE_TEXT;
	select ma, thong_bao, ket_qua;
END;

START TRANSACTION;

	DELETE FROM ta_san_pham
	WHERE id_san_pham = p_id_san_pham;
	
COMMIT;

	SET ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
	SET thong_bao = 'Xóa thành công!';
	select ma, thong_bao, ket_qua;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_sinh_vien_lay_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_sinh_vien_lay_id`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_sinh_vien_lay_id`(
p_id int
)
BEGIN

SELECT * FROM test_sinh_vien
WHERE id=p_id;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_sinh_vien_sua
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_sinh_vien_sua`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_sinh_vien_sua`(
p_id int,
p_ho_ten nvarchar(100),
p_email varchar(100)
)
BEGIN

UPDATE test_sinh_vien SET 
	ho_ten = p_ho_ten,
	email = p_email
WHERE id = p_id;

SELECT 1 as ket_qua; -- 0: thất bại; 1: thành công
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_sinh_vien_them
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_sinh_vien_them`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_sinh_vien_them`(
	p_ho_ten nvarchar(100),
	p_email varchar(100)
)
BEGIN

	INSERT INTO test_sinh_vien(ho_ten,email)
	VALUES(p_ho_ten,p_email);
	
	SELECT 1 as ket_qua; -- 0: thất bại; 1: thành công
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_sinh_vien_tim
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_sinh_vien_tim`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_sinh_vien_tim`(
p_tu_khoa nvarchar(100)
)
BEGIN

SELECT * FROM test_sinh_vien
WHERE ho_ten like concat('%',p_tu_khoa,'%') OR email like concat('%', p_tu_khoa,'%');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_sinh_vien_xoa
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_sinh_vien_xoa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_sinh_vien_xoa`(
p_id int
)
BEGIN

DELETE FROM test_sinh_vien
WHERE id = p_id;

SELECT 1 as ket_qua; -- 0: thất bại; 1: thành công
END
;;
DELIMITER ;
