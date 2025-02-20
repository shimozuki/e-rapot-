/*
 Navicat Premium Data Transfer

 Source Server         : my_local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : e-rapot

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 20/02/2025 14:53:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_user_id_unique`(`user_id` ASC) USING BTREE,
  UNIQUE INDEX `admin_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `admin_nomor_hp_unique`(`nomor_hp` ASC) USING BTREE,
  CONSTRAINT `admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 1, 'ADMIN', 'L', '1998-05-30', 'admin@mail.com', '085232077932', 'profile_admin.jpg', '2021-10-29 10:27:37', '2022-01-06 18:05:20');
INSERT INTO `admin` VALUES (2, 2, 'Qkoh St', 'L', '2021-10-05', 'qkohst19@gmail.com', '0852312654021', 'default.png', '2021-10-31 16:30:07', '2021-10-31 16:30:07');

-- ----------------------------
-- Table structure for anggota_ekstrakulikuler
-- ----------------------------
DROP TABLE IF EXISTS `anggota_ekstrakulikuler`;
CREATE TABLE `anggota_ekstrakulikuler`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `ekstrakulikuler_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `anggota_ekstrakulikuler_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  INDEX `anggota_ekstrakulikuler_ekstrakulikuler_id_foreign`(`ekstrakulikuler_id` ASC) USING BTREE,
  CONSTRAINT `anggota_ekstrakulikuler_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `anggota_ekstrakulikuler_ekstrakulikuler_id_foreign` FOREIGN KEY (`ekstrakulikuler_id`) REFERENCES `ekstrakulikuler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota_ekstrakulikuler
-- ----------------------------
INSERT INTO `anggota_ekstrakulikuler` VALUES (119, 128, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (120, 129, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (121, 130, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (122, 131, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (123, 132, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (124, 133, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (125, 134, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (126, 135, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (127, 136, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (128, 137, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (129, 138, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (130, 139, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (131, 140, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (132, 141, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (133, 142, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (134, 143, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (135, 144, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (136, 145, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (137, 146, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (138, 147, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (139, 148, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (140, 149, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (141, 150, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (142, 151, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (143, 152, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (144, 153, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (145, 154, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (146, 70, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (147, 71, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (148, 72, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (149, 73, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (150, 74, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (151, 75, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (152, 76, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (153, 77, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (154, 78, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (155, 79, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (156, 80, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (157, 81, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (158, 82, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (159, 83, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (160, 84, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (161, 85, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (162, 86, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (163, 87, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (164, 88, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (165, 89, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (166, 90, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (167, 91, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (168, 92, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (169, 93, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (170, 94, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (171, 95, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (172, 96, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (173, 97, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (174, 98, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (175, 99, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (176, 100, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (177, 101, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (178, 102, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (179, 103, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (180, 104, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (181, 105, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (182, 106, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (183, 107, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (184, 108, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (185, 109, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (186, 110, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (187, 111, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (188, 112, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (189, 113, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (190, 114, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (191, 115, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (192, 116, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (193, 117, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (194, 118, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (195, 119, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (196, 120, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (197, 121, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (198, 122, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (199, 123, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (200, 124, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (201, 125, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (202, 126, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (203, 127, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (204, 128, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (205, 129, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (206, 130, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (207, 131, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (208, 132, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (209, 133, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (210, 134, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (211, 135, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (212, 136, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (213, 137, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (214, 138, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (215, 139, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (216, 140, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (217, 141, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (218, 142, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (219, 143, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (220, 144, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (221, 145, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (222, 146, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (223, 147, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (224, 148, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (225, 149, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (226, 150, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (227, 151, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (228, 152, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (229, 153, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (230, 154, 3, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (231, 126, 2, NULL, NULL);
INSERT INTO `anggota_ekstrakulikuler` VALUES (232, 127, 2, NULL, NULL);

-- ----------------------------
-- Table structure for anggota_kelas
-- ----------------------------
DROP TABLE IF EXISTS `anggota_kelas`;
CREATE TABLE `anggota_kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `pendaftaran` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `anggota_kelas_siswa_id_foreign`(`siswa_id` ASC) USING BTREE,
  INDEX `anggota_kelas_kelas_id_foreign`(`kelas_id` ASC) USING BTREE,
  CONSTRAINT `anggota_kelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `anggota_kelas_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anggota_kelas
-- ----------------------------
INSERT INTO `anggota_kelas` VALUES (70, 85, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (71, 86, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (72, 87, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (73, 88, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (74, 89, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (75, 90, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (76, 91, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (77, 92, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (78, 93, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (79, 95, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (80, 96, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (81, 97, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (82, 98, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (83, 99, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (84, 100, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (85, 101, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (86, 102, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (87, 104, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (88, 103, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (89, 105, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (90, 106, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (91, 107, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (92, 108, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (93, 109, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (94, 110, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (95, 111, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (96, 112, 9, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (97, 113, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (98, 114, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (99, 115, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (100, 116, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (101, 117, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (102, 118, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (103, 119, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (104, 120, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (105, 121, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (106, 122, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (107, 123, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (108, 124, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (109, 125, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (110, 126, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (111, 127, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (112, 128, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (113, 129, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (114, 130, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (115, 131, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (116, 132, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (117, 133, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (118, 134, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (119, 135, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (120, 136, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (121, 137, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (122, 138, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (123, 139, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (124, 140, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (125, 141, 10, '1', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (126, 272, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (127, 273, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (128, 274, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (129, 275, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (130, 276, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (131, 277, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (132, 278, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (133, 279, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (134, 280, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (135, 281, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (136, 261, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (137, 282, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (138, 283, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (139, 284, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (140, 286, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (141, 287, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (142, 288, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (143, 289, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (144, 290, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (145, 291, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (146, 248, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (147, 293, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (148, 294, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (149, 295, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (150, 296, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (151, 297, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (152, 298, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (153, 299, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (154, 300, 11, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (155, 230, 12, '3', NULL, NULL);
INSERT INTO `anggota_kelas` VALUES (156, 228, 12, '1', NULL, NULL);

-- ----------------------------
-- Table structure for catatan_wali_kelas
-- ----------------------------
DROP TABLE IF EXISTS `catatan_wali_kelas`;
CREATE TABLE `catatan_wali_kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `catatan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `catatan_wali_kelas_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `catatan_wali_kelas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catatan_wali_kelas
-- ----------------------------
INSERT INTO `catatan_wali_kelas` VALUES (1, 97, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:54', '2021-12-22 13:58:54');
INSERT INTO `catatan_wali_kelas` VALUES (2, 98, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:54', '2021-12-22 13:58:54');
INSERT INTO `catatan_wali_kelas` VALUES (3, 99, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:54', '2021-12-22 13:58:54');
INSERT INTO `catatan_wali_kelas` VALUES (4, 100, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:54', '2021-12-22 13:58:54');
INSERT INTO `catatan_wali_kelas` VALUES (5, 101, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:54', '2021-12-22 14:03:19');
INSERT INTO `catatan_wali_kelas` VALUES (6, 102, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:54', '2021-12-22 13:58:54');
INSERT INTO `catatan_wali_kelas` VALUES (7, 103, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (8, 104, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (9, 105, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (10, 106, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (11, 107, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (12, 108, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (13, 109, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (14, 110, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (15, 111, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (16, 112, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (17, 113, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (18, 114, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (19, 115, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (20, 116, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (21, 117, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (22, 118, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (23, 119, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (24, 120, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (25, 121, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (26, 122, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (27, 123, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (28, 124, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 13:58:55');
INSERT INTO `catatan_wali_kelas` VALUES (29, 125, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 13:58:55', '2021-12-22 14:03:05');

-- ----------------------------
-- Table structure for ch_favorites
-- ----------------------------
DROP TABLE IF EXISTS `ch_favorites`;
CREATE TABLE `ch_favorites`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ch_favorites
-- ----------------------------
INSERT INTO `ch_favorites` VALUES ('b2448e18-afaa-4abc-9cb1-fc6976b03230', 1, 98, '2025-02-20 12:34:18', '2025-02-20 12:34:18');

-- ----------------------------
-- Table structure for ch_messages
-- ----------------------------
DROP TABLE IF EXISTS `ch_messages`;
CREATE TABLE `ch_messages`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ch_messages
-- ----------------------------
INSERT INTO `ch_messages` VALUES ('03c72515-9976-400d-b387-c77fed3a4813', 1, 98, 'oi', NULL, 1, '2025-02-20 12:34:31', '2025-02-20 13:03:17');
INSERT INTO `ch_messages` VALUES ('21d824a9-15d9-40a7-8ec4-95838c095ec4', 1, 98, 'balas', NULL, 1, '2025-02-20 12:34:34', '2025-02-20 13:03:17');
INSERT INTO `ch_messages` VALUES ('27988f26-b1fa-4008-bbeb-f3b8c1453d56', 1, 98, 'p', NULL, 1, '2025-02-20 13:03:01', '2025-02-20 13:03:17');
INSERT INTO `ch_messages` VALUES ('70452c75-7185-4912-adbc-56ac63ed8819', 1, 98, 'testumpah darah', NULL, 1, '2025-02-20 12:32:54', '2025-02-20 13:03:17');
INSERT INTO `ch_messages` VALUES ('82b8333e-23a0-4b10-b1d9-420796c0e3b6', 1, 96, 'test', NULL, 0, '2025-02-20 12:22:39', '2025-02-20 12:22:39');

-- ----------------------------
-- Table structure for ekstrakulikuler
-- ----------------------------
DROP TABLE IF EXISTS `ekstrakulikuler`;
CREATE TABLE `ekstrakulikuler`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tapel_id` bigint UNSIGNED NOT NULL,
  `pembina_id` bigint UNSIGNED NOT NULL,
  `nama_ekstrakulikuler` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ekstrakulikuler_tapel_id_foreign`(`tapel_id` ASC) USING BTREE,
  INDEX `ekstrakulikuler_pembina_id_foreign`(`pembina_id` ASC) USING BTREE,
  CONSTRAINT `ekstrakulikuler_pembina_id_foreign` FOREIGN KEY (`pembina_id`) REFERENCES `guru` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ekstrakulikuler_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ekstrakulikuler
-- ----------------------------
INSERT INTO `ekstrakulikuler` VALUES (2, 1, 55, 'Komputer', '2021-11-14 02:27:26', '2021-11-14 02:27:26');
INSERT INTO `ekstrakulikuler` VALUES (3, 1, 56, 'Pramuka', '2021-11-14 02:28:58', '2022-01-02 16:35:27');

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gelar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nuptk` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `guru_user_id_unique`(`user_id` ASC) USING BTREE,
  UNIQUE INDEX `guru_nip_unique`(`nip` ASC) USING BTREE,
  UNIQUE INDEX `guru_nuptk_unique`(`nuptk` ASC) USING BTREE,
  CONSTRAINT `guru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (55, 86, 'KUKOH SANTOSO', 'S.Kom.', NULL, 'L', 'Tuban', '1998-05-30', NULL, 'Dikir Tambakboyo Tuban', 'default.png', '2021-11-02 23:06:34', '2021-11-02 23:06:34');
INSERT INTO `guru` VALUES (56, 87, 'ALI GHUFRON', 'S.Pd.', NULL, 'L', 'Tuban', '1982-06-20', NULL, 'Socorejo Jenu Tuban', 'default.png', '2021-11-02 23:06:34', '2021-11-02 23:06:34');
INSERT INTO `guru` VALUES (57, 88, 'DARMINI', 'S.Pd.', NULL, 'P', 'Tuban', '2021-11-02', NULL, 'Cokrowati Tambakboyo Tuban', 'default.png', '2021-11-02 23:09:00', '2021-11-02 23:09:00');
INSERT INTO `guru` VALUES (58, 92, 'HABIBUL LUBAB', 'S.Pd.', NULL, 'L', 'Tuban', '1988-08-08', '7140766667130133', 'Tambakboyo', 'default.png', '2021-11-06 21:50:01', '2021-11-06 21:50:01');
INSERT INTO `guru` VALUES (59, 93, 'HANA RATRI RAHAYU', 'S.Pd.', NULL, 'P', 'Tuban', '1989-02-10', '2433766667130342', 'Karangasem', 'default.png', '2021-11-06 21:50:01', '2021-11-06 21:50:01');
INSERT INTO `guru` VALUES (60, 94, 'HERLINAWATI', 'S.Pd.', NULL, 'P', 'TUBAN', '1984-11-15', '0447762663210083', 'TAMBAKBOYO', 'default.png', '2021-11-06 21:50:01', '2021-11-06 21:50:01');
INSERT INTO `guru` VALUES (61, 95, 'MOH. DARUL AFAN', 'S.Pd.', NULL, 'L', 'TUBAN', '1995-06-10', NULL, 'Margosuko', 'default.png', '2021-11-06 21:50:01', '2021-11-06 21:50:01');
INSERT INTO `guru` VALUES (62, 96, 'MUHAMMAD HASAN BISRI', 'S.Ag.', NULL, 'L', 'ARJAWINANGUN', '1986-07-22', '5054764665130143', 'PANGURAGAN KULON', 'default.png', '2021-11-06 21:50:01', '2021-11-06 21:50:01');
INSERT INTO `guru` VALUES (63, 97, 'RISA MAHMUDAH', 'S.Pd.', NULL, 'P', 'TUBAN', '1994-03-04', NULL, 'Ngampelrejo', 'profile_risa mahmudah.jfif', '2021-11-06 21:50:01', '2022-01-06 19:34:19');
INSERT INTO `guru` VALUES (64, 98, 'SEPTI ISNAYATI HIDAYAT', 'S.Pd.', NULL, 'P', 'Tuban', '1989-09-08', '0240767668220013', 'Merkawang', 'default.png', '2021-11-06 21:50:01', '2021-11-06 21:50:01');
INSERT INTO `guru` VALUES (65, 403, 'MOCH. MUNIR', 'S.E.', NULL, 'L', 'Tuban', '1970-11-17', NULL, 'Ds. Gadon Kec. Tambakboyo Kab. Tuban', 'default.png', '2021-11-24 17:53:20', '2021-11-24 17:53:20');
INSERT INTO `guru` VALUES (66, 404, 'SUWARDI', 'S.H.,M.A.', NULL, 'L', 'Tuban', '1965-11-10', NULL, 'Ds. Cokrowati Kec. Tambakboyo Kab. Tuban', 'default.png', '2021-11-24 17:54:30', '2021-11-24 17:54:30');

-- ----------------------------
-- Table structure for k13_butir_sikap
-- ----------------------------
DROP TABLE IF EXISTS `k13_butir_sikap`;
CREATE TABLE `k13_butir_sikap`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenis_kompetensi` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `butir_sikap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `k13_butir_sikap_kode_unique`(`kode` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_butir_sikap
-- ----------------------------
INSERT INTO `k13_butir_sikap` VALUES (1, '1', '1.1U', 'Berdoa', '2021-11-24 23:44:33', '2021-12-04 22:48:01');
INSERT INTO `k13_butir_sikap` VALUES (3, '1', '1.2U', 'Menjalankan Ibadah', '2021-11-25 11:26:30', '2021-11-25 11:26:30');
INSERT INTO `k13_butir_sikap` VALUES (4, '1', '1.3U', 'Memberi Salam', '2021-11-25 11:26:30', '2021-12-04 22:48:21');
INSERT INTO `k13_butir_sikap` VALUES (6, '2', '2.1U', 'Jujur', '2021-11-28 22:34:31', '2021-12-04 22:45:22');
INSERT INTO `k13_butir_sikap` VALUES (7, '2', '2.2U', 'Disiplin', '2021-12-04 22:47:28', '2021-12-04 22:47:28');
INSERT INTO `k13_butir_sikap` VALUES (8, '2', '2.3U', 'Tanggung Jawab', '2021-12-04 22:47:28', '2021-12-04 22:47:28');
INSERT INTO `k13_butir_sikap` VALUES (9, '2', '2.4U', 'Santun', '2021-12-04 22:47:28', '2021-12-04 22:47:28');
INSERT INTO `k13_butir_sikap` VALUES (10, '2', '2.5U', 'Percaya Diri', '2021-12-04 22:47:28', '2021-12-04 22:47:28');
INSERT INTO `k13_butir_sikap` VALUES (11, '2', '2.6U', 'Peduli', '2021-12-04 22:47:28', '2021-12-04 22:47:28');
INSERT INTO `k13_butir_sikap` VALUES (12, '1', '1.4U', 'Bersyukur atas nikmat & karunia Tuhan', '2021-12-04 22:48:56', '2021-12-04 22:48:56');
INSERT INTO `k13_butir_sikap` VALUES (13, '1', '1.5U', 'Mensyukuri kemampuan manusia dalam mengendalikan diri', '2021-12-04 22:49:31', '2021-12-04 22:49:31');

-- ----------------------------
-- Table structure for k13_deskripsi_nilai_siswa
-- ----------------------------
DROP TABLE IF EXISTS `k13_deskripsi_nilai_siswa`;
CREATE TABLE `k13_deskripsi_nilai_siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `k13_nilai_akhir_raport_id` bigint UNSIGNED NOT NULL,
  `deskripsi_pengetahuan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_keterampilan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_deskripsi_nilai_siswa_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_deskripsi_nilai_siswa_k13_nilai_akhir_raport_id_foreign`(`k13_nilai_akhir_raport_id` ASC) USING BTREE,
  CONSTRAINT `k13_deskripsi_nilai_siswa_k13_nilai_akhir_raport_id_foreign` FOREIGN KEY (`k13_nilai_akhir_raport_id`) REFERENCES `k13_nilai_akhir_raport` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_deskripsi_nilai_siswa_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_deskripsi_nilai_siswa
-- ----------------------------
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (1, 293, 519, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (2, 293, 520, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (3, 293, 521, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (4, 293, 522, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (5, 293, 523, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (6, 293, 524, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (7, 293, 525, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (8, 293, 526, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (9, 293, 527, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (10, 293, 528, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (11, 293, 529, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (12, 293, 530, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (13, 293, 531, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (14, 293, 532, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (15, 293, 533, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (16, 293, 534, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (17, 293, 535, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (18, 293, 536, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (19, 293, 537, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (20, 293, 538, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (21, 293, 539, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (22, 293, 540, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (23, 293, 541, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (24, 293, 542, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (25, 293, 543, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (26, 293, 544, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (27, 293, 545, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:03:13', '2021-12-21 01:03:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (28, 306, 546, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (29, 306, 547, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (30, 306, 548, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (31, 306, 549, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (32, 306, 550, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (33, 306, 551, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (34, 306, 552, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (35, 306, 553, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (36, 306, 554, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (37, 306, 555, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (38, 306, 556, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (39, 306, 557, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (40, 306, 558, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:06:48', '2021-12-21 01:06:48');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (41, 306, 559, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:06:48', '2021-12-21 01:06:48');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (42, 306, 560, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (43, 306, 561, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (44, 306, 562, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (45, 306, 563, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (46, 306, 564, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (47, 306, 565, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (48, 306, 566, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2021-12-21 01:06:48');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (49, 306, 567, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (50, 306, 568, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-21 01:06:48', '2021-12-21 01:06:48');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (51, 306, 569, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (52, 306, 570, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-21 01:06:48', '2021-12-21 01:06:48');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (53, 306, 571, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (54, 306, 572, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (55, 306, 573, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (56, 306, 574, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-21 01:06:48', '2022-01-07 19:46:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (57, 304, 575, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (58, 304, 576, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (59, 304, 577, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (60, 304, 578, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (61, 304, 579, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (62, 304, 580, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (63, 304, 581, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (64, 304, 582, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (65, 304, 583, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (66, 304, 584, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (67, 304, 585, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (68, 304, 586, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (69, 304, 587, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (70, 304, 588, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (71, 304, 589, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (72, 304, 590, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (73, 304, 591, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (74, 304, 592, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (75, 304, 593, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (76, 304, 594, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (77, 304, 595, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (78, 304, 596, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (79, 304, 597, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (80, 304, 598, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (81, 304, 599, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (82, 304, 600, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (83, 304, 601, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (84, 304, 602, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (85, 304, 603, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:34:45', '2021-12-23 18:34:45');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (86, 305, 604, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (87, 305, 605, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (88, 305, 606, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (89, 305, 607, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (90, 305, 608, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (91, 305, 609, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (92, 305, 610, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (93, 305, 611, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (94, 305, 612, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (95, 305, 613, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (96, 305, 614, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (97, 305, 615, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (98, 305, 616, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (99, 305, 617, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (100, 305, 618, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (101, 305, 619, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (102, 305, 620, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (103, 305, 621, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (104, 305, 622, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (105, 305, 623, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (106, 305, 624, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (107, 305, 625, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (108, 305, 626, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (109, 305, 627, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (110, 305, 628, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (111, 305, 629, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (112, 305, 630, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (113, 305, 631, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');
INSERT INTO `k13_deskripsi_nilai_siswa` VALUES (114, 305, 632, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:40:13', '2021-12-23 18:40:13');

-- ----------------------------
-- Table structure for k13_deskripsi_sikap_siswa
-- ----------------------------
DROP TABLE IF EXISTS `k13_deskripsi_sikap_siswa`;
CREATE TABLE `k13_deskripsi_sikap_siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai_spiritual` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_spiritual` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_sosial` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_sosial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_deskripsi_sikap_siswa_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_deskripsi_sikap_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_deskripsi_sikap_siswa
-- ----------------------------
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (1, 97, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:33:27');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (2, 98, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (3, 99, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (4, 100, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (5, 101, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (6, 102, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (7, 103, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (8, 104, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (9, 105, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (10, 106, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (11, 107, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (12, 108, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (13, 109, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (14, 110, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (15, 111, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (16, 112, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (17, 113, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (18, 114, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (19, 115, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (20, 116, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (21, 117, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:32:42');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (22, 118, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (23, 119, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (24, 120, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (25, 121, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (26, 122, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (27, 123, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (28, 124, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');
INSERT INTO `k13_deskripsi_sikap_siswa` VALUES (29, 125, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 21:18:59', '2021-12-30 21:18:59');

-- ----------------------------
-- Table structure for k13_kd_mapel
-- ----------------------------
DROP TABLE IF EXISTS `k13_kd_mapel`;
CREATE TABLE `k13_kd_mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `tingkatan_kelas` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kompetensi` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kompetensi_dasar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_kompetensi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_kd_mapel_mapel_id_foreign`(`mapel_id` ASC) USING BTREE,
  CONSTRAINT `k13_kd_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_kd_mapel
-- ----------------------------
INSERT INTO `k13_kd_mapel` VALUES (2, 43, '7', '3', '1', '3.10', 'Menganalisis Hubungan Antar Sudut', 'Menganalisis Hubungan Antar Sudut', '2021-11-25 14:42:22', '2021-11-26 20:01:18');
INSERT INTO `k13_kd_mapel` VALUES (3, 43, '7', '3', '1', '3.1', 'Menjelaskan dan Menentukan urutan bilangan', 'Menjelaskan dan Menentukan urutan bilangan', '2021-11-26 20:04:44', '2021-11-26 20:04:44');
INSERT INTO `k13_kd_mapel` VALUES (7, 42, '8', '3', '1', '3.1', 'Coba lagi masak ndak boleh', 'Coba lagi masak ndak boleh', '2021-11-29 17:17:11', '2021-11-29 17:17:11');
INSERT INTO `k13_kd_mapel` VALUES (9, 43, '8', '4', '1', '4.2', 'Menggambar gubahan flora dan fauna sertageometrik menjadi ragam hias', 'Menggambar gubahan flora dan fauna sertageometrik menjadi ragam hias', '2021-12-04 19:54:06', '2021-12-04 19:54:06');
INSERT INTO `k13_kd_mapel` VALUES (10, 43, '8', '4', '1', '4.1', 'Menggambar flora, fauna dan benda alam', 'Menggambar flora, fauna dan benda alam', '2021-12-04 19:59:02', '2021-12-04 19:59:02');
INSERT INTO `k13_kd_mapel` VALUES (11, 43, '8', '4', '1', '4.3', 'Menerapkan ragam hias pada kriya teksti', 'Menerapkan ragam hias pada kriya teksti', '2021-12-04 19:59:44', '2021-12-04 19:59:44');
INSERT INTO `k13_kd_mapel` VALUES (12, 43, '8', '4', '1', '4.4', 'Menerapkan ragam hias pada kriya kayu', 'Menerapkan ragam hias pada kriya kayu', '2021-12-04 19:59:44', '2021-12-04 19:59:44');
INSERT INTO `k13_kd_mapel` VALUES (13, 44, '7', '3', '1', '3.1', 'Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (14, 44, '7', '3', '1', '3.2', 'Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi dari masa lalu sampai sekarang', 'Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (15, 44, '7', '3', '1', '3.3', 'Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (16, 44, '7', '3', '1', '3.4', 'Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (17, 44, '7', '3', '1', '3.5', 'Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (18, 44, '7', '4', '1', '4.1', 'Mengaktifkan komputer sesuai prosedur', 'Mengaktifkan komputer sesuai prosedur', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (19, 44, '7', '4', '1', '4.2', 'Mematikan komputer sesuai prosedur', 'Mematikan komputer sesuai prosedur', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (20, 44, '7', '4', '1', '4.3', 'Melakukan operasi dasar pada operating system dengan sistematis', 'Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 13:04:24', '2021-12-20 13:04:24');
INSERT INTO `k13_kd_mapel` VALUES (21, 44, '8', '3', '1', '3.1', 'Mengidentifikasi menu dan ikon pada perangkat lunak pengolah kata', 'Mengidentifikasi menu dan ikon pada perangkat lunak pengolah kata', '2021-12-20 13:06:21', '2021-12-20 13:06:21');
INSERT INTO `k13_kd_mapel` VALUES (22, 44, '8', '3', '1', '3.2', 'Menjelaskan fungsi menu dan ikon pada perangkat lunak pengolah kata', 'Menjelaskan fungsi menu dan ikon pada perangkat lunak pengolah kata', '2021-12-20 13:06:21', '2021-12-20 13:06:21');
INSERT INTO `k13_kd_mapel` VALUES (23, 44, '8', '4', '1', '4.1', 'Menggunakan menu dan ikon pokok pada perangka lunak pengolah kata', 'Menggunakan menu dan ikon pokok pada perangka lunak pengolah kata', '2021-12-20 13:06:21', '2021-12-20 13:06:21');
INSERT INTO `k13_kd_mapel` VALUES (24, 44, '8', '4', '1', '4.2', 'Membuat dokumen pengolah kata sederhana', 'Membuat dokumen pengolah kata sederhana', '2021-12-20 13:06:21', '2021-12-20 13:06:21');
INSERT INTO `k13_kd_mapel` VALUES (25, 44, '9', '3', '1', '3.1', 'Menjelaskan pengertian internet / intranet', 'Menjelaskan pengertian internet / intranet', '2021-12-20 13:10:05', '2021-12-20 13:10:05');
INSERT INTO `k13_kd_mapel` VALUES (26, 44, '9', '3', '1', '3.2', 'Mendeskripsikan dasar-dasar sistem jaringan di internet / intranet', 'Mendeskripsikan dasar-dasar sistem jaringan di internet / intranet', '2021-12-20 13:10:05', '2021-12-20 13:10:05');
INSERT INTO `k13_kd_mapel` VALUES (27, 44, '9', '3', '1', '3.3', 'Mengenal ukuran kecepatan akses internet', 'Mengenal ukuran kecepatan akses internet', '2021-12-20 13:10:05', '2021-12-20 13:10:05');
INSERT INTO `k13_kd_mapel` VALUES (28, 44, '9', '4', '1', '4.1', 'Mengidentifikasi perangkat keras yang digunakan dalam akses internet & intranet', 'Mengidentifikasi perangkat keras yang digunakan dalam akses internet & intranet', '2021-12-20 13:10:05', '2021-12-20 13:10:05');
INSERT INTO `k13_kd_mapel` VALUES (29, 44, '9', '4', '1', '4.2', 'Melakukan berbagai cara untuk memperoleh sambungan internet', 'Melakukan berbagai cara untuk memperoleh sambungan internet', '2021-12-20 13:10:05', '2021-12-20 13:10:05');
INSERT INTO `k13_kd_mapel` VALUES (30, 42, '7', '3', '1', '3.1', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', '2021-12-23 18:04:10', '2021-12-23 18:04:10');
INSERT INTO `k13_kd_mapel` VALUES (31, 42, '7', '3', '1', '3.2', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', '2021-12-23 18:04:10', '2021-12-23 18:04:10');
INSERT INTO `k13_kd_mapel` VALUES (34, 43, '7', '4', '1', '4.1', 'mementaskan fragmen sesuai konsep, teknik, dan prosedur', 'mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 18:08:35', '2021-12-23 18:08:35');
INSERT INTO `k13_kd_mapel` VALUES (35, 43, '7', '4', '1', '4.2', 'mementaskan pantomim sesuai konsep, teknik, dan prosedur', 'mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 18:08:35', '2021-12-23 18:08:35');
INSERT INTO `k13_kd_mapel` VALUES (36, 42, '7', '4', '1', '4.1', 'mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', 'mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 18:09:25', '2021-12-23 18:09:25');
INSERT INTO `k13_kd_mapel` VALUES (37, 42, '7', '4', '1', '4.2', 'mempraktikkan budidaya (pembesaran) ikan hias', 'mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 18:09:25', '2021-12-23 18:09:25');

-- ----------------------------
-- Table structure for k13_kkm_mapel
-- ----------------------------
DROP TABLE IF EXISTS `k13_kkm_mapel`;
CREATE TABLE `k13_kkm_mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `kkm` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_kkm_mapel_mapel_id_foreign`(`mapel_id` ASC) USING BTREE,
  INDEX `k13_kkm_mapel_kelas_id_foreign`(`kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_kkm_mapel_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_kkm_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 521 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_kkm_mapel
-- ----------------------------
INSERT INTO `k13_kkm_mapel` VALUES (456, 32, 9, 70, '2021-12-03 21:00:36', '2021-12-09 00:27:10');
INSERT INTO `k13_kkm_mapel` VALUES (457, 44, 9, 70, '2021-12-03 21:00:36', '2021-12-20 15:19:13');
INSERT INTO `k13_kkm_mapel` VALUES (458, 43, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (459, 42, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (460, 41, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (461, 40, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (462, 39, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (463, 38, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (464, 37, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (465, 36, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (466, 35, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (467, 34, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (468, 33, 9, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (469, 40, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (470, 41, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (471, 42, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (472, 43, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (473, 44, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (474, 39, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (475, 38, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (476, 37, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (477, 36, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (478, 35, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (479, 34, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (480, 33, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (481, 32, 10, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (482, 40, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (483, 41, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (484, 42, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (485, 43, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (486, 44, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (487, 39, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (488, 38, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (489, 37, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (490, 36, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (491, 35, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (492, 34, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (493, 33, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (494, 32, 11, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (495, 40, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (496, 41, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (497, 42, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (498, 43, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (499, 44, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (500, 39, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (501, 38, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (502, 37, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (503, 36, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (504, 35, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (505, 34, 12, 70, '2021-12-03 21:00:36', '2021-12-03 21:00:36');
INSERT INTO `k13_kkm_mapel` VALUES (506, 33, 12, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (507, 32, 12, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (508, 39, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (509, 40, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (510, 41, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (511, 42, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (512, 43, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (513, 38, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (514, 37, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (515, 36, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (516, 35, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (517, 34, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (518, 33, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (519, 32, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');
INSERT INTO `k13_kkm_mapel` VALUES (520, 44, 13, 70, '2021-12-03 21:00:37', '2021-12-03 21:00:37');

-- ----------------------------
-- Table structure for k13_mapping_mapel
-- ----------------------------
DROP TABLE IF EXISTS `k13_mapping_mapel`;
CREATE TABLE `k13_mapping_mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `kelompok` enum('A','B') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_urut` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_mapping_mapel_mapel_id_foreign`(`mapel_id` ASC) USING BTREE,
  CONSTRAINT `k13_mapping_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_mapping_mapel
-- ----------------------------
INSERT INTO `k13_mapping_mapel` VALUES (27, 32, 'B', 12, '2021-11-28 21:14:10', '2021-11-28 21:14:10');
INSERT INTO `k13_mapping_mapel` VALUES (28, 33, 'A', 3, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (29, 34, 'A', 7, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (30, 35, 'B', 4, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (31, 36, 'A', 5, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (32, 37, 'A', 6, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (33, 38, 'A', 4, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (34, 39, 'A', 1, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (35, 40, 'B', 2, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (36, 41, 'A', 2, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (37, 42, 'B', 3, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (38, 43, 'B', 1, '2021-11-28 21:14:10', '2021-12-23 18:44:39');
INSERT INTO `k13_mapping_mapel` VALUES (39, 44, 'B', 5, '2021-11-28 21:14:10', '2021-12-23 18:44:39');

-- ----------------------------
-- Table structure for k13_nilai_akhir_raport
-- ----------------------------
DROP TABLE IF EXISTS `k13_nilai_akhir_raport`;
CREATE TABLE `k13_nilai_akhir_raport`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `kkm` int NOT NULL,
  `nilai_pengetahuan` int NOT NULL,
  `predikat_pengetahuan` enum('A','B','C','D') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_keterampilan` int NOT NULL,
  `predikat_keterampilan` enum('A','B','C','D') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_spiritual` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_sosial` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_nilai_akhir_raport_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_nilai_akhir_raport_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_nilai_akhir_raport_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_nilai_akhir_raport_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 633 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_nilai_akhir_raport
-- ----------------------------
INSERT INTO `k13_nilai_akhir_raport` VALUES (519, 293, 70, 70, 90, 'A', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (520, 293, 71, 70, 79, 'C', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (521, 293, 72, 70, 82, 'B', 81, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (522, 293, 73, 70, 81, 'B', 82, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (523, 293, 74, 70, 82, 'B', 82, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (524, 293, 75, 70, 80, 'B', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (525, 293, 76, 70, 79, 'C', 81, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (526, 293, 77, 70, 76, 'C', 82, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (527, 293, 78, 70, 76, 'C', 82, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (528, 293, 79, 70, 76, 'C', 81, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (529, 293, 80, 70, 81, 'B', 78, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (530, 293, 81, 70, 81, 'B', 77, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (531, 293, 82, 70, 81, 'B', 77, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (532, 293, 83, 70, 83, 'B', 78, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (533, 293, 84, 70, 82, 'B', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (534, 293, 85, 70, 81, 'B', 79, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (535, 293, 86, 70, 80, 'B', 79, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (536, 293, 87, 70, 78, 'C', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (537, 293, 88, 70, 80, 'B', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (538, 293, 89, 70, 80, 'B', 78, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (539, 293, 90, 70, 86, 'B', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (540, 293, 91, 70, 88, 'B', 82, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (541, 293, 92, 70, 83, 'B', 77, 'C', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (542, 293, 93, 70, 82, 'B', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (543, 293, 94, 70, 82, 'B', 81, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (544, 293, 95, 70, 78, 'C', 82, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (545, 293, 96, 70, 81, 'B', 80, 'B', '3', '3', '2021-12-20 22:51:12', '2021-12-28 20:19:24');
INSERT INTO `k13_nilai_akhir_raport` VALUES (546, 306, 97, 70, 80, 'B', 88, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (547, 306, 98, 70, 80, 'B', 91, 'A', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (548, 306, 99, 70, 80, 'B', 87, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (549, 306, 100, 70, 80, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (550, 306, 101, 70, 80, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (551, 306, 102, 70, 82, 'B', 83, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (552, 306, 103, 70, 82, 'B', 87, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (553, 306, 104, 70, 83, 'B', 84, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (554, 306, 105, 70, 82, 'B', 91, 'A', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (555, 306, 106, 70, 83, 'B', 88, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (556, 306, 107, 70, 83, 'B', 91, 'A', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (557, 306, 108, 70, 82, 'B', 87, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (558, 306, 109, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (559, 306, 110, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (560, 306, 111, 70, 84, 'B', 83, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (561, 306, 112, 70, 84, 'B', 87, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (562, 306, 113, 70, 85, 'B', 84, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (563, 306, 114, 70, 84, 'B', 91, 'A', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (564, 306, 115, 70, 84, 'B', 88, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (565, 306, 116, 70, 84, 'B', 91, 'A', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (566, 306, 117, 70, 84, 'B', 87, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (567, 306, 118, 70, 84, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (568, 306, 119, 70, 84, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (569, 306, 120, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (570, 306, 121, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (571, 306, 122, 70, 83, 'B', 83, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (572, 306, 123, 70, 84, 'B', 87, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (573, 306, 124, 70, 84, 'B', 84, 'B', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (574, 306, 125, 70, 84, 'B', 91, 'A', '4', '4', '2021-12-20 23:24:20', '2022-01-07 19:44:59');
INSERT INTO `k13_nilai_akhir_raport` VALUES (575, 304, 97, 70, 90, 'A', 98, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (576, 304, 98, 70, 90, 'A', 92, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (577, 304, 99, 70, 89, 'B', 91, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (578, 304, 100, 70, 90, 'A', 93, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (579, 304, 101, 70, 88, 'B', 92, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (580, 304, 102, 70, 90, 'A', 91, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (581, 304, 103, 70, 86, 'B', 91, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (582, 304, 104, 70, 88, 'B', 90, 'A', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (583, 304, 105, 70, 90, 'A', 89, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (584, 304, 106, 70, 90, 'A', 89, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (585, 304, 107, 70, 87, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (586, 304, 108, 70, 92, 'A', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (587, 304, 109, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (588, 304, 110, 70, 89, 'B', 86, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (589, 304, 111, 70, 88, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (590, 304, 112, 70, 88, 'B', 83, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (591, 304, 113, 70, 86, 'B', 88, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (592, 304, 114, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (593, 304, 115, 70, 85, 'B', 82, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (594, 304, 116, 70, 84, 'B', 82, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (595, 304, 117, 70, 85, 'B', 82, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (596, 304, 118, 70, 84, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (597, 304, 119, 70, 84, 'B', 86, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (598, 304, 120, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (599, 304, 121, 70, 91, 'A', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (600, 304, 122, 70, 87, 'B', 84, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (601, 304, 123, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (602, 304, 124, 70, 86, 'B', 86, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (603, 304, 125, 70, 91, 'A', 82, 'B', '3', '3', '2021-12-23 18:34:13', '2021-12-28 20:10:26');
INSERT INTO `k13_nilai_akhir_raport` VALUES (604, 305, 97, 70, 94, 'A', 97, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (605, 305, 98, 70, 92, 'A', 87, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (606, 305, 99, 70, 92, 'A', 92, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (607, 305, 100, 70, 90, 'A', 93, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (608, 305, 101, 70, 87, 'B', 94, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (609, 305, 102, 70, 87, 'B', 95, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (610, 305, 103, 70, 86, 'B', 94, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (611, 305, 104, 70, 85, 'B', 96, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (612, 305, 105, 70, 87, 'B', 86, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (613, 305, 106, 70, 88, 'B', 84, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (614, 305, 107, 70, 89, 'B', 86, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (615, 305, 108, 70, 89, 'B', 85, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (616, 305, 109, 70, 90, 'A', 86, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (617, 305, 110, 70, 88, 'B', 87, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (618, 305, 111, 70, 92, 'A', 88, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (619, 305, 112, 70, 87, 'B', 95, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (620, 305, 113, 70, 89, 'B', 96, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (621, 305, 114, 70, 88, 'B', 96, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:40');
INSERT INTO `k13_nilai_akhir_raport` VALUES (622, 305, 115, 70, 87, 'B', 97, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (623, 305, 116, 70, 88, 'B', 87, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (624, 305, 117, 70, 90, 'A', 92, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (625, 305, 118, 70, 88, 'B', 89, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (626, 305, 119, 70, 92, 'A', 91, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (627, 305, 120, 70, 89, 'B', 90, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (628, 305, 121, 70, 87, 'B', 81, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (629, 305, 122, 70, 92, 'A', 89, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (630, 305, 123, 70, 93, 'A', 90, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (631, 305, 124, 70, 93, 'A', 90, 'A', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');
INSERT INTO `k13_nilai_akhir_raport` VALUES (632, 305, 125, 70, 91, 'A', 84, 'B', '3', '3', '2021-12-23 18:34:27', '2021-12-28 20:10:41');

-- ----------------------------
-- Table structure for k13_nilai_keterampilan
-- ----------------------------
DROP TABLE IF EXISTS `k13_nilai_keterampilan`;
CREATE TABLE `k13_nilai_keterampilan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `k13_rencana_nilai_keterampilan_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_nilai_keterampilan_k13_rencana_nilai_keterampilan_id_foreign`(`k13_rencana_nilai_keterampilan_id` ASC) USING BTREE,
  INDEX `k13_nilai_keterampilan_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_nilai_keterampilan_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_nilai_keterampilan_k13_rencana_nilai_keterampilan_id_foreign` FOREIGN KEY (`k13_rencana_nilai_keterampilan_id`) REFERENCES `k13_rencana_nilai_keterampilan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 376 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_nilai_keterampilan
-- ----------------------------
INSERT INTO `k13_nilai_keterampilan` VALUES (1, 17, 126, 70, '2021-12-19 22:30:14', '2021-12-19 22:33:58');
INSERT INTO `k13_nilai_keterampilan` VALUES (2, 17, 127, 88, '2021-12-19 22:30:14', '2021-12-19 22:33:58');
INSERT INTO `k13_nilai_keterampilan` VALUES (3, 17, 128, 74, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (4, 17, 129, 75, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (5, 17, 130, 76, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (6, 17, 131, 74, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (7, 17, 132, 77, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (8, 17, 133, 78, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (9, 17, 134, 79, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (10, 17, 135, 78, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (11, 17, 136, 87, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (12, 17, 137, 85, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (13, 17, 138, 82, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (14, 17, 139, 86, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (15, 17, 140, 84, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (16, 17, 141, 85, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (17, 17, 142, 87, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (18, 17, 143, 89, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (19, 17, 144, 88, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (20, 17, 145, 77, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (21, 17, 146, 71, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (22, 17, 147, 85, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (23, 17, 148, 78, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (24, 17, 149, 75, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (25, 17, 150, 74, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (26, 17, 151, 76, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (27, 17, 152, 75, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (28, 17, 153, 72, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (29, 17, 154, 76, '2021-12-19 22:30:14', '2021-12-19 22:30:14');
INSERT INTO `k13_nilai_keterampilan` VALUES (30, 21, 70, 70, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (31, 21, 71, 71, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (32, 21, 72, 75, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (33, 21, 73, 75, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (34, 21, 74, 76, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (35, 21, 75, 72, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (36, 21, 76, 74, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (37, 21, 77, 73, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (38, 21, 78, 75, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (39, 21, 79, 75, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (40, 21, 80, 75, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (41, 21, 81, 74, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (42, 21, 82, 74, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (43, 21, 83, 75, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (44, 21, 84, 82, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (45, 21, 85, 81, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (46, 21, 86, 80, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (47, 21, 87, 83, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (48, 21, 88, 84, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (49, 21, 89, 81, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (50, 21, 90, 82, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (51, 21, 91, 86, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (52, 21, 92, 81, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (53, 21, 93, 82, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (54, 21, 94, 84, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (55, 21, 95, 83, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (56, 21, 96, 80, '2021-12-20 13:31:05', '2021-12-20 13:31:05');
INSERT INTO `k13_nilai_keterampilan` VALUES (57, 22, 70, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (58, 22, 71, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (59, 22, 72, 85, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (60, 22, 73, 86, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (61, 22, 74, 87, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (62, 22, 75, 85, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (63, 22, 76, 85, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (64, 22, 77, 86, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (65, 22, 78, 86, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (66, 22, 79, 85, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (67, 22, 80, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (68, 22, 81, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (69, 22, 82, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (70, 22, 83, 83, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (71, 22, 84, 84, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (72, 22, 85, 81, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (73, 22, 86, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (74, 22, 87, 83, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (75, 22, 88, 80, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (76, 22, 89, 82, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (77, 22, 90, 83, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (78, 22, 91, 86, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (79, 22, 92, 81, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (80, 22, 93, 81, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (81, 22, 94, 80, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (82, 22, 95, 88, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (83, 22, 96, 87, '2021-12-20 13:31:51', '2021-12-20 13:31:51');
INSERT INTO `k13_nilai_keterampilan` VALUES (84, 23, 70, 88, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (85, 23, 71, 87, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (86, 23, 72, 84, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (87, 23, 73, 85, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (88, 23, 74, 84, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (89, 23, 75, 84, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (90, 23, 76, 85, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (91, 23, 77, 86, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (92, 23, 78, 85, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (93, 23, 79, 82, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (94, 23, 80, 78, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (95, 23, 81, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (96, 23, 82, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (97, 23, 83, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (98, 23, 84, 74, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (99, 23, 85, 74, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (100, 23, 86, 74, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (101, 23, 87, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (102, 23, 88, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (103, 23, 89, 70, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (104, 23, 90, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (105, 23, 91, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (106, 23, 92, 70, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (107, 23, 93, 76, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (108, 23, 94, 79, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (109, 23, 95, 75, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (110, 23, 96, 72, '2021-12-20 13:32:31', '2021-12-20 13:32:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (111, 24, 97, 85, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (112, 24, 98, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (113, 24, 99, 85, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (114, 24, 100, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (115, 24, 101, 93, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (116, 24, 102, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (117, 24, 103, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (118, 24, 104, 81, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (119, 24, 105, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:07');
INSERT INTO `k13_nilai_keterampilan` VALUES (120, 24, 106, 85, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (121, 24, 107, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (122, 24, 108, 85, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (123, 24, 109, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (124, 24, 110, 93, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (125, 24, 111, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (126, 24, 112, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (127, 24, 113, 81, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (128, 24, 114, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (129, 24, 115, 85, '2021-12-20 13:34:09', '2021-12-20 13:34:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (130, 24, 116, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (131, 24, 117, 85, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (132, 24, 118, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (133, 24, 119, 93, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (134, 24, 120, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (135, 24, 121, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (136, 24, 122, 81, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (137, 24, 123, 82, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (138, 24, 124, 85, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (139, 24, 125, 96, '2021-12-20 13:34:09', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (140, 25, 97, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (141, 25, 98, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (142, 25, 99, 93, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (143, 25, 100, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (144, 25, 101, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (145, 25, 102, 81, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (146, 25, 103, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (147, 25, 104, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (148, 25, 105, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (149, 25, 106, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (150, 25, 107, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (151, 25, 108, 93, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (152, 25, 109, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (153, 25, 110, 82, '2021-12-20 13:35:06', '2021-12-20 13:35:06');
INSERT INTO `k13_nilai_keterampilan` VALUES (154, 25, 111, 81, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (155, 25, 112, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (156, 25, 113, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (157, 25, 114, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (158, 25, 115, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (159, 25, 116, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (160, 25, 117, 93, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (161, 25, 118, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (162, 25, 119, 82, '2021-12-20 13:35:06', '2021-12-20 13:35:06');
INSERT INTO `k13_nilai_keterampilan` VALUES (163, 25, 120, 81, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (164, 25, 121, 82, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (165, 25, 122, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (166, 25, 123, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (167, 25, 124, 85, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (168, 25, 125, 96, '2021-12-20 13:35:06', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (169, 26, 97, 93, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (170, 26, 98, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (171, 26, 99, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (172, 26, 100, 81, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (173, 26, 101, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (174, 26, 102, 85, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (175, 26, 103, 96, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (176, 26, 104, 85, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (177, 26, 105, 96, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (178, 26, 106, 93, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (179, 26, 107, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (180, 26, 108, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (181, 26, 109, 81, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (182, 26, 110, 82, '2021-12-20 13:35:44', '2021-12-20 13:35:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (183, 26, 111, 85, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (184, 26, 112, 96, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (185, 26, 113, 85, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (186, 26, 114, 96, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (187, 26, 115, 93, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (188, 26, 116, 82, '2021-12-20 13:35:44', '2021-12-20 13:35:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (189, 26, 117, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (190, 26, 118, 81, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (191, 26, 119, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (192, 26, 120, 96, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (193, 26, 121, 93, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (194, 26, 122, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (195, 26, 123, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (196, 26, 124, 81, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (197, 26, 125, 82, '2021-12-20 13:35:44', '2022-01-07 17:25:09');
INSERT INTO `k13_nilai_keterampilan` VALUES (198, 27, 126, 78, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (199, 27, 127, 89, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (200, 27, 128, 85, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (201, 27, 129, 84, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (202, 27, 130, 85, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (203, 27, 131, 86, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (204, 27, 132, 86, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (205, 27, 133, 89, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (206, 27, 134, 85, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (207, 27, 135, 84, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (208, 27, 136, 85, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (209, 27, 137, 86, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (210, 27, 138, 86, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (211, 27, 139, 82, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (212, 27, 140, 81, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (213, 27, 141, 80, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (214, 27, 142, 80, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (215, 27, 143, 83, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (216, 27, 144, 86, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (217, 27, 145, 86, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (218, 27, 146, 80, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (219, 27, 147, 82, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (220, 27, 148, 80, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (221, 27, 149, 83, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (222, 27, 150, 83, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (223, 27, 151, 82, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (224, 27, 152, 85, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (225, 27, 153, 84, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (226, 27, 154, 85, '2021-12-20 13:36:20', '2021-12-20 13:36:20');
INSERT INTO `k13_nilai_keterampilan` VALUES (227, 28, 126, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (228, 28, 127, 84, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (229, 28, 128, 85, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (230, 28, 129, 86, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (231, 28, 130, 87, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (232, 28, 131, 88, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (233, 28, 132, 98, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (234, 28, 133, 85, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (235, 28, 134, 85, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (236, 28, 135, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (237, 28, 136, 83, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (238, 28, 137, 83, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (239, 28, 138, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (240, 28, 139, 81, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (241, 28, 140, 80, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (242, 28, 141, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (243, 28, 142, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (244, 28, 143, 84, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (245, 28, 144, 85, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (246, 28, 145, 85, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (247, 28, 146, 86, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (248, 28, 147, 86, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (249, 28, 148, 83, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (250, 28, 149, 83, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (251, 28, 150, 80, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (252, 28, 151, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (253, 28, 152, 82, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (254, 28, 153, 80, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (255, 28, 154, 80, '2021-12-20 13:37:01', '2021-12-20 13:37:01');
INSERT INTO `k13_nilai_keterampilan` VALUES (256, 33, 97, 98, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (257, 33, 98, 87, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (258, 33, 99, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (259, 33, 100, 88, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (260, 33, 101, 98, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (261, 33, 102, 96, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (262, 33, 103, 95, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (263, 33, 104, 94, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (264, 33, 105, 96, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (265, 33, 106, 96, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (266, 33, 107, 87, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (267, 33, 108, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (268, 33, 109, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (269, 33, 110, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (270, 33, 111, 87, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (271, 33, 112, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (272, 33, 113, 86, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (273, 33, 114, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (274, 33, 115, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (275, 33, 116, 86, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (276, 33, 117, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (277, 33, 118, 84, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (278, 33, 119, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (279, 33, 120, 86, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (280, 33, 121, 86, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (281, 33, 122, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (282, 33, 123, 84, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (283, 33, 124, 85, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (284, 33, 125, 82, '2021-12-23 18:16:08', '2021-12-23 18:16:08');
INSERT INTO `k13_nilai_keterampilan` VALUES (285, 34, 97, 98, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (286, 34, 98, 96, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (287, 34, 99, 96, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (288, 34, 100, 97, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (289, 34, 101, 85, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (290, 34, 102, 85, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (291, 34, 103, 86, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (292, 34, 104, 85, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (293, 34, 105, 82, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (294, 34, 106, 82, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (295, 34, 107, 82, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (296, 34, 108, 84, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (297, 34, 109, 85, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (298, 34, 110, 86, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (299, 34, 111, 83, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (300, 34, 112, 81, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (301, 34, 113, 89, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (302, 34, 114, 85, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (303, 34, 115, 78, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (304, 34, 116, 78, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (305, 34, 117, 79, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (306, 34, 118, 85, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (307, 34, 119, 86, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (308, 34, 120, 83, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (309, 34, 121, 84, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (310, 34, 122, 82, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (311, 34, 123, 86, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (312, 34, 124, 86, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (313, 34, 125, 81, '2021-12-23 18:16:50', '2021-12-23 18:16:50');
INSERT INTO `k13_nilai_keterampilan` VALUES (314, 37, 97, 98, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (315, 37, 98, 78, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (316, 37, 99, 89, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (317, 37, 100, 89, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (318, 37, 101, 96, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (319, 37, 102, 96, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (320, 37, 103, 98, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (321, 37, 104, 98, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (322, 37, 105, 78, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (323, 37, 106, 75, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (324, 37, 107, 75, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (325, 37, 108, 74, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (326, 37, 109, 75, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (327, 37, 110, 78, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (328, 37, 111, 78, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (329, 37, 112, 95, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (330, 37, 113, 96, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (331, 37, 114, 96, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (332, 37, 115, 98, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (333, 37, 116, 78, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (334, 37, 117, 85, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (335, 37, 118, 82, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (336, 37, 119, 86, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (337, 37, 120, 84, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (338, 37, 121, 83, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (339, 37, 122, 82, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (340, 37, 123, 84, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (341, 37, 124, 85, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (342, 37, 125, 89, '2021-12-23 18:17:44', '2021-12-23 18:17:44');
INSERT INTO `k13_nilai_keterampilan` VALUES (343, 38, 97, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (344, 38, 98, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (345, 38, 99, 94, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (346, 38, 100, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (347, 38, 101, 92, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (348, 38, 102, 93, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (349, 38, 103, 90, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (350, 38, 104, 93, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (351, 38, 105, 93, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (352, 38, 106, 92, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (353, 38, 107, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (354, 38, 108, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (355, 38, 109, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (356, 38, 110, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (357, 38, 111, 98, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (358, 38, 112, 94, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (359, 38, 113, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (360, 38, 114, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (361, 38, 115, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (362, 38, 116, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (363, 38, 117, 98, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (364, 38, 118, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (365, 38, 119, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (366, 38, 120, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (367, 38, 121, 78, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (368, 38, 122, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (369, 38, 123, 96, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (370, 38, 124, 95, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (371, 38, 125, 78, '2021-12-23 18:18:18', '2021-12-23 18:18:18');
INSERT INTO `k13_nilai_keterampilan` VALUES (372, 29, 155, 80, '2022-01-07 17:26:30', '2022-01-07 17:26:30');
INSERT INTO `k13_nilai_keterampilan` VALUES (373, 29, 156, 78, '2022-01-07 17:26:30', '2022-01-07 17:26:30');
INSERT INTO `k13_nilai_keterampilan` VALUES (374, 30, 155, 85, '2022-01-07 17:26:31', '2022-01-07 17:26:31');
INSERT INTO `k13_nilai_keterampilan` VALUES (375, 30, 156, 86, '2022-01-07 17:26:31', '2022-01-07 17:26:31');

-- ----------------------------
-- Table structure for k13_nilai_pengetahuan
-- ----------------------------
DROP TABLE IF EXISTS `k13_nilai_pengetahuan`;
CREATE TABLE `k13_nilai_pengetahuan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `k13_rencana_nilai_pengetahuan_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_nilai_pengetahuan_k13_rencana_nilai_pengetahuan_id_foreign`(`k13_rencana_nilai_pengetahuan_id` ASC) USING BTREE,
  INDEX `k13_nilai_pengetahuan_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_nilai_pengetahuan_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_nilai_pengetahuan_k13_rencana_nilai_pengetahuan_id_foreign` FOREIGN KEY (`k13_rencana_nilai_pengetahuan_id`) REFERENCES `k13_rencana_nilai_pengetahuan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 628 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_nilai_pengetahuan
-- ----------------------------
INSERT INTO `k13_nilai_pengetahuan` VALUES (1, 45, 126, 80, '2021-12-19 21:32:16', '2021-12-19 21:37:03');
INSERT INTO `k13_nilai_pengetahuan` VALUES (2, 45, 127, 70, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (3, 45, 128, 78, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (4, 45, 129, 80, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (5, 45, 130, 81, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (6, 45, 131, 82, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (7, 45, 132, 85, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (8, 45, 133, 84, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (9, 45, 134, 85, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (10, 45, 135, 87, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (11, 45, 136, 86, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (12, 45, 137, 89, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (13, 45, 138, 85, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (14, 45, 139, 75, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (15, 45, 140, 74, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (16, 45, 141, 75, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (17, 45, 142, 87, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (18, 45, 143, 76, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (19, 45, 144, 75, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (20, 45, 145, 78, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (21, 45, 146, 74, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (22, 45, 147, 78, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (23, 45, 148, 98, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (24, 45, 149, 78, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (25, 45, 150, 72, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (26, 45, 151, 71, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (27, 45, 152, 73, '2021-12-19 21:32:16', '2021-12-19 21:32:16');
INSERT INTO `k13_nilai_pengetahuan` VALUES (28, 45, 153, 82, '2021-12-19 21:32:16', '2021-12-19 22:15:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (29, 45, 154, 80, '2021-12-19 21:32:16', '2021-12-19 21:35:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (30, 46, 126, 85, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (31, 46, 127, 87, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (32, 46, 128, 84, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (33, 46, 129, 86, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (34, 46, 130, 89, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (35, 46, 131, 87, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (36, 46, 132, 86, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (37, 46, 133, 82, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (38, 46, 134, 86, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (39, 46, 135, 84, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (40, 46, 136, 83, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (41, 46, 137, 89, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (42, 46, 138, 84, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (43, 46, 139, 82, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (44, 46, 140, 87, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (45, 46, 141, 83, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (46, 46, 142, 82, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (47, 46, 143, 86, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (48, 46, 144, 83, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (49, 46, 145, 84, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (50, 46, 146, 82, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (51, 46, 147, 83, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (52, 46, 148, 86, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (53, 46, 149, 89, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (54, 46, 150, 85, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (55, 46, 151, 86, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (56, 46, 152, 84, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (57, 46, 153, 85, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (58, 46, 154, 83, '2021-12-19 21:38:33', '2021-12-19 21:38:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (59, 38, 70, 80, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (60, 39, 70, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (61, 38, 71, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (62, 39, 71, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (63, 38, 72, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (64, 39, 72, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (65, 38, 73, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (66, 39, 73, 84, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (67, 38, 74, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (68, 39, 74, 87, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (69, 38, 75, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (70, 39, 75, 78, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (71, 38, 76, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (72, 39, 76, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (73, 38, 77, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (74, 39, 77, 89, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (75, 38, 78, 89, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (76, 39, 78, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (77, 38, 79, 84, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (78, 39, 79, 87, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (79, 38, 80, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (80, 39, 80, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (81, 38, 81, 81, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (82, 39, 81, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (83, 38, 82, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (84, 39, 82, 80, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (85, 38, 83, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (86, 39, 83, 84, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (87, 38, 84, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (88, 39, 84, 87, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (89, 38, 85, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (90, 39, 85, 89, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (91, 38, 86, 89, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (92, 39, 86, 87, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (93, 38, 87, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (94, 39, 87, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (95, 38, 88, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (96, 39, 88, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (97, 38, 89, 86, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (98, 39, 89, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (99, 38, 90, 84, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (100, 39, 90, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (101, 38, 91, 85, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (102, 39, 91, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (103, 38, 92, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (104, 39, 92, 82, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (105, 38, 93, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (106, 39, 93, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (107, 38, 94, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (108, 39, 94, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (109, 38, 95, 83, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (110, 39, 95, 70, '2021-12-19 22:17:08', '2021-12-19 22:17:26');
INSERT INTO `k13_nilai_pengetahuan` VALUES (111, 38, 96, 70, '2021-12-19 22:17:08', '2021-12-19 22:17:26');
INSERT INTO `k13_nilai_pengetahuan` VALUES (112, 39, 96, 75, '2021-12-19 22:17:08', '2021-12-19 22:17:08');
INSERT INTO `k13_nilai_pengetahuan` VALUES (113, 47, 70, 82, '2021-12-20 13:20:20', '2021-12-21 17:35:41');
INSERT INTO `k13_nilai_pengetahuan` VALUES (114, 47, 71, 70, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (115, 47, 72, 77, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (116, 47, 73, 75, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (117, 47, 74, 75, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (118, 47, 75, 74, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (119, 47, 76, 74, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (120, 47, 77, 75, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (121, 47, 78, 76, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (122, 47, 79, 85, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (123, 47, 80, 85, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (124, 47, 81, 76, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (125, 47, 82, 78, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (126, 47, 83, 87, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (127, 47, 84, 70, '2021-12-20 13:20:20', '2021-12-21 17:35:41');
INSERT INTO `k13_nilai_pengetahuan` VALUES (128, 47, 85, 78, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (129, 47, 86, 78, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (130, 47, 87, 75, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (131, 47, 88, 85, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (132, 47, 89, 82, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (133, 47, 90, 82, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (134, 47, 91, 86, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (135, 47, 92, 89, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (136, 47, 93, 86, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (137, 47, 94, 85, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (138, 47, 95, 86, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (139, 47, 96, 86, '2021-12-20 13:20:20', '2021-12-20 13:20:20');
INSERT INTO `k13_nilai_pengetahuan` VALUES (140, 48, 70, 83, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (141, 48, 71, 80, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (142, 48, 72, 81, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (143, 48, 73, 84, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (144, 48, 74, 87, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (145, 48, 75, 80, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (146, 48, 76, 77, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (147, 48, 77, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (148, 48, 78, 78, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (149, 48, 79, 74, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (150, 48, 80, 74, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (151, 48, 81, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (152, 48, 82, 76, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (153, 48, 83, 78, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (154, 48, 84, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (155, 48, 85, 72, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (156, 48, 86, 72, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (157, 48, 87, 72, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (158, 48, 88, 74, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (159, 48, 89, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (160, 48, 90, 72, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (161, 48, 91, 84, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (162, 48, 92, 78, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (163, 48, 93, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (164, 48, 94, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (165, 48, 95, 75, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (166, 48, 96, 72, '2021-12-20 13:21:11', '2021-12-20 13:21:11');
INSERT INTO `k13_nilai_pengetahuan` VALUES (167, 49, 70, 82, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (168, 49, 71, 78, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (169, 49, 72, 77, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (170, 49, 73, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (171, 49, 74, 74, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (172, 49, 75, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (173, 49, 76, 76, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (174, 49, 77, 72, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (175, 49, 78, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (176, 49, 79, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (177, 49, 80, 78, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (178, 49, 81, 85, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (179, 49, 82, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (180, 49, 83, 76, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (181, 49, 84, 79, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (182, 49, 85, 78, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (183, 49, 86, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (184, 49, 87, 74, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (185, 49, 88, 75, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (186, 49, 89, 78, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (187, 49, 90, 87, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (188, 49, 91, 84, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (189, 49, 92, 85, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (190, 49, 93, 74, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (191, 49, 94, 78, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (192, 49, 95, 70, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (193, 49, 96, 72, '2021-12-20 13:22:07', '2021-12-20 13:22:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (194, 50, 70, 78, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (195, 50, 71, 78, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (196, 50, 72, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (197, 50, 73, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (198, 50, 74, 76, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (199, 50, 75, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (200, 50, 76, 74, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (201, 50, 77, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (202, 50, 78, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (203, 50, 79, 72, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (204, 50, 80, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (205, 50, 81, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (206, 50, 82, 76, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (207, 50, 83, 78, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (208, 50, 84, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (209, 50, 85, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (210, 50, 86, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (211, 50, 87, 74, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (212, 50, 88, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (213, 50, 89, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (214, 50, 90, 72, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (215, 50, 91, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (216, 50, 92, 76, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (217, 50, 93, 78, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (218, 50, 94, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (219, 50, 95, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (220, 50, 96, 75, '2021-12-20 13:22:48', '2021-12-20 13:22:48');
INSERT INTO `k13_nilai_pengetahuan` VALUES (221, 51, 70, 77, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (222, 51, 71, 75, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (223, 51, 72, 75, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (224, 51, 73, 74, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (225, 51, 74, 75, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (226, 51, 75, 76, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (227, 51, 76, 85, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (228, 51, 77, 78, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (229, 51, 78, 85, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (230, 51, 79, 78, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (231, 51, 80, 85, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (232, 51, 81, 85, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (233, 51, 82, 85, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (234, 51, 83, 86, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (235, 51, 84, 81, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (236, 51, 85, 83, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (237, 51, 86, 83, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (238, 51, 87, 82, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (239, 51, 88, 82, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (240, 51, 89, 86, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (241, 51, 90, 85, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (242, 51, 91, 80, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (243, 51, 92, 80, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (244, 51, 93, 81, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (245, 51, 94, 82, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (246, 51, 95, 83, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (247, 51, 96, 84, '2021-12-20 13:23:33', '2021-12-20 13:23:33');
INSERT INTO `k13_nilai_pengetahuan` VALUES (248, 52, 97, 71, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (249, 52, 98, 70, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (250, 52, 99, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (251, 52, 100, 74, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (252, 52, 101, 72, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (253, 52, 102, 76, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (254, 52, 103, 71, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (255, 52, 104, 72, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (256, 52, 105, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (257, 52, 106, 84, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (258, 52, 107, 85, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (259, 52, 108, 72, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (260, 52, 109, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (261, 52, 110, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (262, 52, 111, 76, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (263, 52, 112, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (264, 52, 113, 78, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (265, 52, 114, 78, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (266, 52, 115, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (267, 52, 116, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (268, 52, 117, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (269, 52, 118, 74, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (270, 52, 119, 74, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (271, 52, 120, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (272, 52, 121, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (273, 52, 122, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (274, 52, 123, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (275, 52, 124, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (276, 52, 125, 75, '2021-12-20 13:24:40', '2021-12-20 13:24:40');
INSERT INTO `k13_nilai_pengetahuan` VALUES (277, 53, 97, 70, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (278, 53, 98, 72, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (279, 53, 99, 71, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (280, 53, 100, 74, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (281, 53, 101, 75, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (282, 53, 102, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (283, 53, 103, 78, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (284, 53, 104, 82, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (285, 53, 105, 78, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (286, 53, 106, 84, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (287, 53, 107, 82, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (288, 53, 108, 84, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (289, 53, 109, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (290, 53, 110, 86, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (291, 53, 111, 86, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (292, 53, 112, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (293, 53, 113, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (294, 53, 114, 84, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (295, 53, 115, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (296, 53, 116, 82, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (297, 53, 117, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (298, 53, 118, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (299, 53, 119, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (300, 53, 120, 84, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (301, 53, 121, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (302, 53, 122, 84, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (303, 53, 123, 86, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (304, 53, 124, 85, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (305, 53, 125, 86, '2021-12-20 13:25:28', '2021-12-20 13:25:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (306, 54, 97, 78, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (307, 54, 98, 78, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (308, 54, 99, 74, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (309, 54, 100, 75, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (310, 54, 101, 75, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (311, 54, 102, 76, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (312, 54, 103, 77, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (313, 54, 104, 74, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (314, 54, 105, 75, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (315, 54, 106, 71, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (316, 54, 107, 72, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (317, 54, 108, 75, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (318, 54, 109, 75, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (319, 54, 110, 75, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (320, 54, 111, 85, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (321, 54, 112, 85, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (322, 54, 113, 87, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (323, 54, 114, 83, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (324, 54, 115, 85, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (325, 54, 116, 82, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (326, 54, 117, 83, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (327, 54, 118, 83, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (328, 54, 119, 85, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (329, 54, 120, 82, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (330, 54, 121, 82, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (331, 54, 122, 82, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (332, 54, 123, 82, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (333, 54, 124, 86, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (334, 54, 125, 82, '2021-12-20 13:26:14', '2021-12-20 13:26:14');
INSERT INTO `k13_nilai_pengetahuan` VALUES (335, 55, 97, 75, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (336, 55, 98, 74, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (337, 55, 99, 72, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (338, 55, 100, 73, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (339, 55, 101, 73, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (340, 55, 102, 75, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (341, 55, 103, 78, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (342, 55, 104, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (343, 55, 105, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (344, 55, 106, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (345, 55, 107, 86, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (346, 55, 108, 84, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (347, 55, 109, 87, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (348, 55, 110, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (349, 55, 111, 82, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (350, 55, 112, 86, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (351, 55, 113, 89, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (352, 55, 114, 86, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (353, 55, 115, 86, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (354, 55, 116, 86, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (355, 55, 117, 84, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (356, 55, 118, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (357, 55, 119, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (358, 55, 120, 82, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (359, 55, 121, 82, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (360, 55, 122, 84, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (361, 55, 123, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (362, 55, 124, 85, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (363, 55, 125, 86, '2021-12-20 13:27:07', '2021-12-20 13:27:07');
INSERT INTO `k13_nilai_pengetahuan` VALUES (364, 56, 97, 78, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (365, 56, 98, 74, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (366, 56, 99, 85, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (367, 56, 100, 78, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (368, 56, 101, 82, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (369, 56, 102, 84, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (370, 56, 103, 85, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (371, 56, 104, 86, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (372, 56, 105, 84, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (373, 56, 106, 82, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (374, 56, 107, 81, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (375, 56, 108, 80, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (376, 56, 109, 82, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (377, 56, 110, 82, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (378, 56, 111, 85, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (379, 56, 112, 85, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (380, 56, 113, 85, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (381, 56, 114, 86, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (382, 56, 115, 84, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (383, 56, 116, 85, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (384, 56, 117, 82, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (385, 56, 118, 81, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (386, 56, 119, 81, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (387, 56, 120, 80, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (388, 56, 121, 80, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (389, 56, 122, 80, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (390, 56, 123, 86, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (391, 56, 124, 80, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (392, 56, 125, 87, '2021-12-20 13:27:53', '2021-12-20 13:27:53');
INSERT INTO `k13_nilai_pengetahuan` VALUES (393, 57, 126, 70, '2021-12-20 13:28:38', '2022-01-07 17:00:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (394, 57, 127, 75, '2021-12-20 13:28:38', '2022-01-07 17:00:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (395, 57, 128, 85, '2021-12-20 13:28:38', '2022-01-07 17:00:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (396, 57, 129, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (397, 57, 130, 70, '2021-12-20 13:28:38', '2022-01-07 17:00:28');
INSERT INTO `k13_nilai_pengetahuan` VALUES (398, 57, 131, 75, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (399, 57, 132, 85, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (400, 57, 133, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (401, 57, 134, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (402, 57, 135, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (403, 57, 136, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (404, 57, 137, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (405, 57, 138, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (406, 57, 139, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (407, 57, 140, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (408, 57, 141, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (409, 57, 142, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (410, 57, 143, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (411, 57, 144, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (412, 57, 145, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (413, 57, 146, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (414, 57, 147, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (415, 57, 148, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (416, 57, 149, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (417, 57, 150, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (418, 57, 151, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (419, 57, 152, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (420, 57, 153, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (421, 57, 154, 86, '2021-12-20 13:28:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (422, 58, 126, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (423, 58, 127, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (424, 58, 128, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (425, 58, 129, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:29');
INSERT INTO `k13_nilai_pengetahuan` VALUES (426, 58, 130, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (427, 58, 131, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (428, 58, 132, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (429, 58, 133, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (430, 58, 134, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (431, 58, 135, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (432, 58, 136, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (433, 58, 137, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (434, 58, 138, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (435, 58, 139, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (436, 58, 140, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (437, 58, 141, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (438, 58, 142, 86, '2021-12-20 13:29:38', '2021-12-20 13:29:38');
INSERT INTO `k13_nilai_pengetahuan` VALUES (439, 58, 143, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (440, 58, 144, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (441, 58, 145, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (442, 58, 146, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (443, 58, 147, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (444, 58, 148, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (445, 58, 149, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (446, 58, 150, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (447, 58, 151, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (448, 58, 152, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (449, 58, 153, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (450, 58, 154, 86, '2021-12-20 13:29:38', '2022-01-07 17:00:30');
INSERT INTO `k13_nilai_pengetahuan` VALUES (454, 62, 97, 98, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (455, 62, 98, 92, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (456, 62, 99, 93, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (457, 62, 100, 96, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (458, 62, 101, 94, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (459, 62, 102, 96, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (460, 62, 103, 93, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (461, 62, 104, 93, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (462, 62, 105, 92, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (463, 62, 106, 92, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (464, 62, 107, 85, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (465, 62, 108, 86, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (466, 62, 109, 87, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (467, 62, 110, 98, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (468, 62, 111, 96, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (469, 62, 112, 95, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (470, 62, 113, 87, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (471, 62, 114, 85, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (472, 62, 115, 86, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (473, 62, 116, 78, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (474, 62, 117, 85, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (475, 62, 118, 82, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (476, 62, 119, 83, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (477, 62, 120, 86, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (478, 62, 121, 85, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (479, 62, 122, 89, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (480, 62, 123, 85, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (481, 62, 124, 85, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (482, 62, 125, 83, '2021-12-23 18:12:15', '2021-12-23 18:12:15');
INSERT INTO `k13_nilai_pengetahuan` VALUES (483, 63, 97, 95, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (484, 63, 98, 94, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (485, 63, 99, 92, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (486, 63, 100, 93, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (487, 63, 101, 90, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (488, 63, 102, 92, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (489, 63, 103, 78, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (490, 63, 104, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (491, 63, 105, 86, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (492, 63, 106, 98, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (493, 63, 107, 89, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (494, 63, 108, 86, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (495, 63, 109, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (496, 63, 110, 82, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (497, 63, 111, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (498, 63, 112, 84, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (499, 63, 113, 86, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (500, 63, 114, 86, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (501, 63, 115, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (502, 63, 116, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (503, 63, 117, 82, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (504, 63, 118, 81, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (505, 63, 119, 83, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (506, 63, 120, 86, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (507, 63, 121, 84, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (508, 63, 122, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (509, 63, 123, 87, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (510, 63, 124, 85, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (511, 63, 125, 89, '2021-12-23 18:12:58', '2021-12-23 18:12:58');
INSERT INTO `k13_nilai_pengetahuan` VALUES (512, 41, 97, 98, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (513, 41, 98, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (514, 41, 99, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (515, 41, 100, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (516, 41, 101, 94, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (517, 41, 102, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (518, 41, 103, 92, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (519, 41, 104, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (520, 41, 105, 89, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (521, 41, 106, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (522, 41, 107, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (523, 41, 108, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (524, 41, 109, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (525, 41, 110, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (526, 41, 111, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (527, 41, 112, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (528, 41, 113, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (529, 41, 114, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (530, 41, 115, 97, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (531, 41, 116, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (532, 41, 117, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (533, 41, 118, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (534, 41, 119, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (535, 41, 120, 98, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (536, 41, 121, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (537, 41, 122, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (538, 41, 123, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (539, 41, 124, 95, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (540, 41, 125, 96, '2021-12-23 18:13:39', '2021-12-23 18:13:39');
INSERT INTO `k13_nilai_pengetahuan` VALUES (541, 42, 97, 87, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (542, 42, 98, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (543, 42, 99, 89, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (544, 42, 100, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (545, 42, 101, 82, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (546, 42, 102, 86, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (547, 42, 103, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (548, 42, 104, 87, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (549, 42, 105, 98, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (550, 42, 106, 96, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (551, 42, 107, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (552, 42, 108, 86, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (553, 42, 109, 87, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (554, 42, 110, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (555, 42, 111, 89, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (556, 42, 112, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (557, 42, 113, 98, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (558, 42, 114, 96, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (559, 42, 115, 87, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (560, 42, 116, 85, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (561, 42, 117, 98, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (562, 42, 118, 96, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (563, 42, 119, 96, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (564, 42, 120, 98, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (565, 42, 121, 95, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (566, 42, 122, 95, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (567, 42, 123, 95, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (568, 42, 124, 96, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (569, 42, 125, 87, '2021-12-23 18:14:24', '2021-12-23 18:14:24');
INSERT INTO `k13_nilai_pengetahuan` VALUES (570, 43, 97, 87, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (571, 44, 97, 89, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (572, 43, 98, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (573, 44, 98, 86, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (574, 43, 99, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (575, 44, 99, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (576, 43, 100, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (577, 44, 100, 86, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (578, 43, 101, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (579, 44, 101, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (580, 43, 102, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (581, 44, 102, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (582, 43, 103, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (583, 44, 103, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (584, 43, 104, 86, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (585, 44, 104, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (586, 43, 105, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (587, 44, 105, 84, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (588, 43, 106, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (589, 44, 106, 89, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (590, 43, 107, 98, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (591, 44, 107, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (592, 43, 108, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (593, 44, 108, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (594, 43, 109, 98, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (595, 44, 109, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (596, 43, 110, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (597, 44, 110, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (598, 43, 111, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (599, 44, 111, 87, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (600, 43, 112, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (601, 44, 112, 89, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (602, 43, 113, 88, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (603, 44, 113, 87, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (604, 43, 114, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (605, 44, 114, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (606, 43, 115, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (607, 44, 115, 89, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (608, 43, 116, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (609, 44, 116, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (610, 43, 117, 96, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (611, 44, 117, 87, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (612, 43, 118, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (613, 44, 118, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (614, 43, 119, 89, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (615, 44, 119, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (616, 43, 120, 83, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (617, 44, 120, 82, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (618, 43, 121, 82, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (619, 44, 121, 82, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (620, 43, 122, 82, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (621, 44, 122, 89, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (622, 43, 123, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (623, 44, 123, 86, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (624, 43, 124, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (625, 44, 124, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (626, 43, 125, 86, '2021-12-23 18:15:21', '2021-12-23 18:15:21');
INSERT INTO `k13_nilai_pengetahuan` VALUES (627, 44, 125, 85, '2021-12-23 18:15:21', '2021-12-23 18:15:21');

-- ----------------------------
-- Table structure for k13_nilai_pts_pas
-- ----------------------------
DROP TABLE IF EXISTS `k13_nilai_pts_pas`;
CREATE TABLE `k13_nilai_pts_pas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai_pts` int NOT NULL,
  `nilai_pas` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_nilai_pts_pas_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_nilai_pts_pas_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_nilai_pts_pas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_nilai_pts_pas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_nilai_pts_pas
-- ----------------------------
INSERT INTO `k13_nilai_pts_pas` VALUES (1, 293, 70, 100, 100, '2021-12-20 22:04:46', '2021-12-20 22:44:32');
INSERT INTO `k13_nilai_pts_pas` VALUES (2, 293, 71, 78, 85, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (3, 293, 72, 87, 85, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (4, 293, 73, 84, 85, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (5, 293, 74, 86, 86, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (6, 293, 75, 87, 82, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (7, 293, 76, 82, 80, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (8, 293, 77, 78, 75, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (9, 293, 78, 74, 75, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (10, 293, 79, 76, 76, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (11, 293, 80, 85, 82, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (12, 293, 81, 82, 82, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (13, 293, 82, 83, 86, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (14, 293, 83, 85, 86, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (15, 293, 84, 89, 87, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (16, 293, 85, 85, 85, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (17, 293, 86, 82, 83, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (18, 293, 87, 81, 82, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (19, 293, 88, 83, 82, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (20, 293, 89, 84, 78, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (21, 293, 90, 87, 98, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (22, 293, 91, 95, 93, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (23, 293, 92, 84, 85, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (24, 293, 93, 76, 96, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (25, 293, 94, 85, 85, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (26, 293, 95, 78, 78, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (27, 293, 96, 85, 82, '2021-12-20 22:04:46', '2021-12-20 22:04:46');
INSERT INTO `k13_nilai_pts_pas` VALUES (28, 306, 97, 85, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:40');
INSERT INTO `k13_nilai_pts_pas` VALUES (29, 306, 98, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:40');
INSERT INTO `k13_nilai_pts_pas` VALUES (30, 306, 99, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:40');
INSERT INTO `k13_nilai_pts_pas` VALUES (31, 306, 100, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:40');
INSERT INTO `k13_nilai_pts_pas` VALUES (32, 306, 101, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:40');
INSERT INTO `k13_nilai_pts_pas` VALUES (33, 306, 102, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (34, 306, 103, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (35, 306, 104, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (36, 306, 105, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (37, 306, 106, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (38, 306, 107, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (39, 306, 108, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (40, 306, 109, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (41, 306, 110, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (42, 306, 111, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (43, 306, 112, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (44, 306, 113, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (45, 306, 114, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (46, 306, 115, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (47, 306, 116, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (48, 306, 117, 85, 86, '2021-12-20 22:05:52', '2021-12-20 22:05:52');
INSERT INTO `k13_nilai_pts_pas` VALUES (49, 306, 118, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (50, 306, 119, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (51, 306, 120, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (52, 306, 121, 86, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (53, 306, 122, 85, 86, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (54, 306, 123, 86, 85, '2021-12-20 22:05:52', '2022-01-07 19:42:41');
INSERT INTO `k13_nilai_pts_pas` VALUES (55, 306, 124, 85, 86, '2021-12-20 22:05:52', '2021-12-20 22:05:52');
INSERT INTO `k13_nilai_pts_pas` VALUES (56, 306, 125, 85, 85, '2021-12-20 22:05:52', '2021-12-20 22:05:52');
INSERT INTO `k13_nilai_pts_pas` VALUES (57, 304, 97, 80, 88, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (58, 304, 98, 89, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (59, 304, 99, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (60, 304, 100, 87, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (61, 304, 101, 84, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (62, 304, 102, 86, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (63, 304, 103, 85, 89, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (64, 304, 104, 85, 89, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (65, 304, 105, 98, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (66, 304, 106, 85, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (67, 304, 107, 86, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (68, 304, 108, 98, 98, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (69, 304, 109, 87, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (70, 304, 110, 89, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (71, 304, 111, 86, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (72, 304, 112, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (73, 304, 113, 86, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (74, 304, 114, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (75, 304, 115, 82, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (76, 304, 116, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (77, 304, 117, 86, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (78, 304, 118, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (79, 304, 119, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (80, 304, 120, 85, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (81, 304, 121, 98, 98, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (82, 304, 122, 87, 85, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (83, 304, 123, 85, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (84, 304, 124, 86, 86, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (85, 304, 125, 98, 95, '2021-12-23 18:32:38', '2021-12-23 18:32:38');
INSERT INTO `k13_nilai_pts_pas` VALUES (86, 305, 97, 98, 99, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (87, 305, 98, 96, 96, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (88, 305, 99, 96, 95, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (89, 305, 100, 96, 90, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (90, 305, 101, 88, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (91, 305, 102, 86, 86, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (92, 305, 103, 85, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (93, 305, 104, 82, 82, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (94, 305, 105, 83, 86, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (95, 305, 106, 85, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (96, 305, 107, 84, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (97, 305, 108, 85, 86, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (98, 305, 109, 85, 86, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (99, 305, 110, 85, 82, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (100, 305, 111, 88, 96, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (101, 305, 112, 87, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (102, 305, 113, 85, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (103, 305, 114, 86, 86, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (104, 305, 115, 85, 82, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (105, 305, 116, 81, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (106, 305, 117, 86, 87, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (107, 305, 118, 85, 87, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (108, 305, 119, 98, 87, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (109, 305, 120, 85, 89, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (110, 305, 121, 87, 85, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (111, 305, 122, 87, 98, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (112, 305, 123, 96, 96, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (113, 305, 124, 95, 96, '2021-12-23 18:33:47', '2021-12-23 18:33:47');
INSERT INTO `k13_nilai_pts_pas` VALUES (114, 305, 125, 92, 93, '2021-12-23 18:33:47', '2021-12-23 18:33:47');

-- ----------------------------
-- Table structure for k13_nilai_sosial
-- ----------------------------
DROP TABLE IF EXISTS `k13_nilai_sosial`;
CREATE TABLE `k13_nilai_sosial`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `k13_rencana_nilai_sosial_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_nilai_sosial_k13_rencana_nilai_sosial_id_foreign`(`k13_rencana_nilai_sosial_id` ASC) USING BTREE,
  INDEX `k13_nilai_sosial_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_nilai_sosial_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_nilai_sosial_k13_rencana_nilai_sosial_id_foreign` FOREIGN KEY (`k13_rencana_nilai_sosial_id`) REFERENCES `k13_rencana_nilai_sosial` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1330 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_nilai_sosial
-- ----------------------------
INSERT INTO `k13_nilai_sosial` VALUES (762, 17, 70, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (763, 18, 70, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (764, 19, 70, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (765, 20, 70, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (766, 21, 70, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (767, 22, 70, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (768, 17, 71, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (769, 18, 71, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (770, 19, 71, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (771, 20, 71, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (772, 21, 71, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (773, 22, 71, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (774, 17, 72, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (775, 18, 72, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (776, 19, 72, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (777, 20, 72, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (778, 21, 72, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (779, 22, 72, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (780, 17, 73, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (781, 18, 73, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (782, 19, 73, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (783, 20, 73, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (784, 21, 73, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (785, 22, 73, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (786, 17, 74, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (787, 18, 74, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (788, 19, 74, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (789, 20, 74, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (790, 21, 74, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (791, 22, 74, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (792, 17, 75, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (793, 18, 75, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (794, 19, 75, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (795, 20, 75, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (796, 21, 75, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (797, 22, 75, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (798, 17, 76, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (799, 18, 76, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (800, 19, 76, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (801, 20, 76, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (802, 21, 76, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (803, 22, 76, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (804, 17, 77, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (805, 18, 77, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (806, 19, 77, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (807, 20, 77, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (808, 21, 77, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (809, 22, 77, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (810, 17, 78, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (811, 18, 78, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (812, 19, 78, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (813, 20, 78, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (814, 21, 78, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (815, 22, 78, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (816, 17, 79, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (817, 18, 79, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (818, 19, 79, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (819, 20, 79, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (820, 21, 79, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (821, 22, 79, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (822, 17, 80, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (823, 18, 80, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (824, 19, 80, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (825, 20, 80, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (826, 21, 80, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (827, 22, 80, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (828, 17, 81, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (829, 18, 81, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (830, 19, 81, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (831, 20, 81, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (832, 21, 81, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (833, 22, 81, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (834, 17, 82, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (835, 18, 82, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (836, 19, 82, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (837, 20, 82, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (838, 21, 82, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (839, 22, 82, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (840, 17, 83, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (841, 18, 83, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (842, 19, 83, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (843, 20, 83, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (844, 21, 83, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (845, 22, 83, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (846, 17, 84, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (847, 18, 84, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (848, 19, 84, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (849, 20, 84, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (850, 21, 84, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (851, 22, 84, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (852, 17, 85, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (853, 18, 85, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (854, 19, 85, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (855, 20, 85, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (856, 21, 85, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (857, 22, 85, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (858, 17, 86, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (859, 18, 86, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (860, 19, 86, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (861, 20, 86, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (862, 21, 86, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (863, 22, 86, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (864, 17, 87, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (865, 18, 87, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (866, 19, 87, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (867, 20, 87, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (868, 21, 87, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (869, 22, 87, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (870, 17, 88, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (871, 18, 88, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (872, 19, 88, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (873, 20, 88, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (874, 21, 88, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (875, 22, 88, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (876, 17, 89, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (877, 18, 89, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (878, 19, 89, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (879, 20, 89, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (880, 21, 89, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (881, 22, 89, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (882, 17, 90, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (883, 18, 90, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (884, 19, 90, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (885, 20, 90, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (886, 21, 90, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (887, 22, 90, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (888, 17, 91, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (889, 18, 91, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (890, 19, 91, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (891, 20, 91, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (892, 21, 91, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (893, 22, 91, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (894, 17, 92, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (895, 18, 92, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (896, 19, 92, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (897, 20, 92, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (898, 21, 92, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (899, 22, 92, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (900, 17, 93, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (901, 18, 93, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (902, 19, 93, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (903, 20, 93, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (904, 21, 93, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (905, 22, 93, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (906, 17, 94, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (907, 18, 94, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (908, 19, 94, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (909, 20, 94, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (910, 21, 94, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (911, 22, 94, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (912, 17, 95, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (913, 18, 95, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (914, 19, 95, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (915, 20, 95, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (916, 21, 95, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (917, 22, 95, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (918, 17, 96, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (919, 18, 96, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (920, 19, 96, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (921, 20, 96, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (922, 21, 96, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (923, 22, 96, '3', '2021-12-20 16:59:13', '2021-12-20 16:59:13');
INSERT INTO `k13_nilai_sosial` VALUES (924, 23, 97, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (925, 24, 97, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (926, 25, 97, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (927, 26, 97, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (928, 27, 97, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (929, 28, 97, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (930, 23, 98, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (931, 24, 98, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (932, 25, 98, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (933, 26, 98, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (934, 27, 98, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (935, 28, 98, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (936, 23, 99, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (937, 24, 99, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (938, 25, 99, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (939, 26, 99, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (940, 27, 99, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (941, 28, 99, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (942, 23, 100, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (943, 24, 100, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (944, 25, 100, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (945, 26, 100, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (946, 27, 100, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (947, 28, 100, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (948, 23, 101, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (949, 24, 101, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (950, 25, 101, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (951, 26, 101, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (952, 27, 101, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (953, 28, 101, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (954, 23, 102, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (955, 24, 102, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (956, 25, 102, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (957, 26, 102, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (958, 27, 102, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (959, 28, 102, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (960, 23, 103, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (961, 24, 103, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (962, 25, 103, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (963, 26, 103, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (964, 27, 103, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (965, 28, 103, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (966, 23, 104, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (967, 24, 104, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (968, 25, 104, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (969, 26, 104, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (970, 27, 104, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (971, 28, 104, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (972, 23, 105, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (973, 24, 105, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (974, 25, 105, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (975, 26, 105, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (976, 27, 105, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (977, 28, 105, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (978, 23, 106, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (979, 24, 106, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (980, 25, 106, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (981, 26, 106, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (982, 27, 106, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (983, 28, 106, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (984, 23, 107, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (985, 24, 107, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (986, 25, 107, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (987, 26, 107, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (988, 27, 107, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (989, 28, 107, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (990, 23, 108, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (991, 24, 108, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (992, 25, 108, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (993, 26, 108, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (994, 27, 108, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (995, 28, 108, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (996, 23, 109, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (997, 24, 109, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (998, 25, 109, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (999, 26, 109, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1000, 27, 109, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1001, 28, 109, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1002, 23, 110, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1003, 24, 110, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1004, 25, 110, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1005, 26, 110, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1006, 27, 110, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1007, 28, 110, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1008, 23, 111, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1009, 24, 111, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1010, 25, 111, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1011, 26, 111, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1012, 27, 111, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1013, 28, 111, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1014, 23, 112, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1015, 24, 112, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1016, 25, 112, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1017, 26, 112, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1018, 27, 112, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1019, 28, 112, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1020, 23, 113, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1021, 24, 113, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1022, 25, 113, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1023, 26, 113, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1024, 27, 113, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1025, 28, 113, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1026, 23, 114, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1027, 24, 114, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1028, 25, 114, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1029, 26, 114, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1030, 27, 114, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1031, 28, 114, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1032, 23, 115, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1033, 24, 115, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1034, 25, 115, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1035, 26, 115, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1036, 27, 115, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1037, 28, 115, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1038, 23, 116, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1039, 24, 116, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1040, 25, 116, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1041, 26, 116, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1042, 27, 116, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1043, 28, 116, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1044, 23, 117, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1045, 24, 117, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1046, 25, 117, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1047, 26, 117, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1048, 27, 117, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1049, 28, 117, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1050, 23, 118, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1051, 24, 118, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1052, 25, 118, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1053, 26, 118, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1054, 27, 118, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1055, 28, 118, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1056, 23, 119, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1057, 24, 119, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1058, 25, 119, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1059, 26, 119, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1060, 27, 119, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1061, 28, 119, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1062, 23, 120, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1063, 24, 120, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1064, 25, 120, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1065, 26, 120, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1066, 27, 120, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1067, 28, 120, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1068, 23, 121, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1069, 24, 121, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1070, 25, 121, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1071, 26, 121, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1072, 27, 121, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1073, 28, 121, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1074, 23, 122, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1075, 24, 122, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1076, 25, 122, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1077, 26, 122, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1078, 27, 122, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1079, 28, 122, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1080, 23, 123, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1081, 24, 123, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1082, 25, 123, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1083, 26, 123, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1084, 27, 123, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1085, 28, 123, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1086, 23, 124, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1087, 24, 124, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1088, 25, 124, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1089, 26, 124, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1090, 27, 124, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1091, 28, 124, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1092, 23, 125, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:32');
INSERT INTO `k13_nilai_sosial` VALUES (1093, 24, 125, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1094, 25, 125, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1095, 26, 125, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:33');
INSERT INTO `k13_nilai_sosial` VALUES (1096, 27, 125, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1097, 28, 125, '4', '2021-12-20 19:43:29', '2022-01-07 18:36:34');
INSERT INTO `k13_nilai_sosial` VALUES (1098, 9, 97, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1099, 10, 97, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1100, 11, 97, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1101, 12, 97, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1102, 9, 98, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1103, 10, 98, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1104, 11, 98, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1105, 12, 98, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1106, 9, 99, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1107, 10, 99, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1108, 11, 99, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1109, 12, 99, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1110, 9, 100, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1111, 10, 100, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1112, 11, 100, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1113, 12, 100, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1114, 9, 101, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1115, 10, 101, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1116, 11, 101, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1117, 12, 101, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1118, 9, 102, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1119, 10, 102, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1120, 11, 102, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1121, 12, 102, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1122, 9, 103, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1123, 10, 103, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1124, 11, 103, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1125, 12, 103, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1126, 9, 104, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1127, 10, 104, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1128, 11, 104, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1129, 12, 104, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1130, 9, 105, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1131, 10, 105, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1132, 11, 105, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1133, 12, 105, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1134, 9, 106, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1135, 10, 106, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1136, 11, 106, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1137, 12, 106, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1138, 9, 107, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1139, 10, 107, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1140, 11, 107, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1141, 12, 107, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1142, 9, 108, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1143, 10, 108, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1144, 11, 108, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1145, 12, 108, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1146, 9, 109, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1147, 10, 109, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1148, 11, 109, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1149, 12, 109, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1150, 9, 110, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1151, 10, 110, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1152, 11, 110, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1153, 12, 110, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1154, 9, 111, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1155, 10, 111, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1156, 11, 111, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1157, 12, 111, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1158, 9, 112, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1159, 10, 112, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1160, 11, 112, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1161, 12, 112, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1162, 9, 113, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1163, 10, 113, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1164, 11, 113, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1165, 12, 113, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1166, 9, 114, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1167, 10, 114, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1168, 11, 114, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1169, 12, 114, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1170, 9, 115, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1171, 10, 115, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1172, 11, 115, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1173, 12, 115, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1174, 9, 116, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1175, 10, 116, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1176, 11, 116, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1177, 12, 116, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1178, 9, 117, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1179, 10, 117, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1180, 11, 117, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1181, 12, 117, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1182, 9, 118, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1183, 10, 118, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1184, 11, 118, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1185, 12, 118, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1186, 9, 119, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1187, 10, 119, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1188, 11, 119, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1189, 12, 119, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1190, 9, 120, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1191, 10, 120, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1192, 11, 120, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1193, 12, 120, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1194, 9, 121, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1195, 10, 121, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1196, 11, 121, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1197, 12, 121, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1198, 9, 122, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1199, 10, 122, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1200, 11, 122, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1201, 12, 122, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1202, 9, 123, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1203, 10, 123, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1204, 11, 123, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1205, 12, 123, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1206, 9, 124, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1207, 10, 124, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1208, 11, 124, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1209, 12, 124, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1210, 9, 125, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1211, 10, 125, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1212, 11, 125, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1213, 12, 125, '3', '2021-12-23 18:30:04', '2021-12-23 18:30:04');
INSERT INTO `k13_nilai_sosial` VALUES (1214, 55, 97, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1215, 56, 97, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1216, 57, 97, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1217, 58, 97, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1218, 55, 98, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1219, 56, 98, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1220, 57, 98, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1221, 58, 98, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1222, 55, 99, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1223, 56, 99, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1224, 57, 99, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1225, 58, 99, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1226, 55, 100, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1227, 56, 100, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1228, 57, 100, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1229, 58, 100, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1230, 55, 101, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1231, 56, 101, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1232, 57, 101, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1233, 58, 101, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1234, 55, 102, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1235, 56, 102, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1236, 57, 102, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1237, 58, 102, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1238, 55, 103, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1239, 56, 103, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1240, 57, 103, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1241, 58, 103, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1242, 55, 104, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1243, 56, 104, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1244, 57, 104, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1245, 58, 104, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1246, 55, 105, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1247, 56, 105, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1248, 57, 105, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1249, 58, 105, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1250, 55, 106, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1251, 56, 106, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1252, 57, 106, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1253, 58, 106, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1254, 55, 107, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1255, 56, 107, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1256, 57, 107, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1257, 58, 107, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1258, 55, 108, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1259, 56, 108, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1260, 57, 108, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1261, 58, 108, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1262, 55, 109, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1263, 56, 109, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1264, 57, 109, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1265, 58, 109, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1266, 55, 110, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1267, 56, 110, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1268, 57, 110, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1269, 58, 110, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1270, 55, 111, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1271, 56, 111, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1272, 57, 111, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1273, 58, 111, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1274, 55, 112, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1275, 56, 112, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1276, 57, 112, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1277, 58, 112, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1278, 55, 113, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1279, 56, 113, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1280, 57, 113, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1281, 58, 113, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1282, 55, 114, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1283, 56, 114, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1284, 57, 114, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1285, 58, 114, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1286, 55, 115, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1287, 56, 115, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1288, 57, 115, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1289, 58, 115, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1290, 55, 116, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1291, 56, 116, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1292, 57, 116, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1293, 58, 116, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1294, 55, 117, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1295, 56, 117, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1296, 57, 117, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1297, 58, 117, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1298, 55, 118, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1299, 56, 118, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1300, 57, 118, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1301, 58, 118, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1302, 55, 119, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1303, 56, 119, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1304, 57, 119, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1305, 58, 119, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1306, 55, 120, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1307, 56, 120, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1308, 57, 120, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1309, 58, 120, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1310, 55, 121, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1311, 56, 121, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1312, 57, 121, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1313, 58, 121, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1314, 55, 122, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1315, 56, 122, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1316, 57, 122, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1317, 58, 122, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1318, 55, 123, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1319, 56, 123, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1320, 57, 123, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1321, 58, 123, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1322, 55, 124, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1323, 56, 124, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1324, 57, 124, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1325, 58, 124, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1326, 55, 125, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1327, 56, 125, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1328, 57, 125, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');
INSERT INTO `k13_nilai_sosial` VALUES (1329, 58, 125, '3', '2021-12-23 18:30:16', '2021-12-23 18:30:16');

-- ----------------------------
-- Table structure for k13_nilai_spiritual
-- ----------------------------
DROP TABLE IF EXISTS `k13_nilai_spiritual`;
CREATE TABLE `k13_nilai_spiritual`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `k13_rencana_nilai_spiritual_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_nilai_spiritual_k13_rencana_nilai_spiritual_id_foreign`(`k13_rencana_nilai_spiritual_id` ASC) USING BTREE,
  INDEX `k13_nilai_spiritual_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `k13_nilai_spiritual_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_nilai_spiritual_k13_rencana_nilai_spiritual_id_foreign` FOREIGN KEY (`k13_rencana_nilai_spiritual_id`) REFERENCES `k13_rencana_nilai_spiritual` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1577 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_nilai_spiritual
-- ----------------------------
INSERT INTO `k13_nilai_spiritual` VALUES (648, 17, 70, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (649, 18, 70, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (650, 19, 70, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (651, 20, 70, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (652, 21, 70, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (653, 17, 71, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (654, 18, 71, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (655, 19, 71, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (656, 20, 71, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (657, 21, 71, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (658, 17, 72, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (659, 18, 72, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (660, 19, 72, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (661, 20, 72, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (662, 21, 72, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (663, 17, 73, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (664, 18, 73, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (665, 19, 73, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (666, 20, 73, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (667, 21, 73, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (668, 17, 74, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (669, 18, 74, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (670, 19, 74, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (671, 20, 74, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (672, 21, 74, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (673, 17, 75, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (674, 18, 75, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (675, 19, 75, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (676, 20, 75, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (677, 21, 75, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (678, 17, 76, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (679, 18, 76, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (680, 19, 76, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (681, 20, 76, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (682, 21, 76, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (683, 17, 77, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (684, 18, 77, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (685, 19, 77, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (686, 20, 77, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (687, 21, 77, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (688, 17, 78, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (689, 18, 78, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (690, 19, 78, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (691, 20, 78, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (692, 21, 78, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (693, 17, 79, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (694, 18, 79, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (695, 19, 79, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (696, 20, 79, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (697, 21, 79, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (698, 17, 80, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (699, 18, 80, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (700, 19, 80, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (701, 20, 80, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (702, 21, 80, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (703, 17, 81, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (704, 18, 81, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (705, 19, 81, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (706, 20, 81, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (707, 21, 81, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (708, 17, 82, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (709, 18, 82, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (710, 19, 82, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (711, 20, 82, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (712, 21, 82, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (713, 17, 83, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (714, 18, 83, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (715, 19, 83, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (716, 20, 83, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (717, 21, 83, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (718, 17, 84, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (719, 18, 84, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (720, 19, 84, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (721, 20, 84, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (722, 21, 84, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (723, 17, 85, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (724, 18, 85, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (725, 19, 85, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (726, 20, 85, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (727, 21, 85, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (728, 17, 86, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (729, 18, 86, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (730, 19, 86, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (731, 20, 86, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (732, 21, 86, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (733, 17, 87, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (734, 18, 87, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (735, 19, 87, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (736, 20, 87, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (737, 21, 87, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (738, 17, 88, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (739, 18, 88, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (740, 19, 88, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (741, 20, 88, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (742, 21, 88, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (743, 17, 89, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (744, 18, 89, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (745, 19, 89, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (746, 20, 89, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (747, 21, 89, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (748, 17, 90, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (749, 18, 90, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (750, 19, 90, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (751, 20, 90, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (752, 21, 90, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (753, 17, 91, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (754, 18, 91, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (755, 19, 91, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (756, 20, 91, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (757, 21, 91, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (758, 17, 92, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (759, 18, 92, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (760, 19, 92, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (761, 20, 92, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (762, 21, 92, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (763, 17, 93, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (764, 18, 93, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (765, 19, 93, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (766, 20, 93, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (767, 21, 93, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (768, 17, 94, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (769, 18, 94, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (770, 19, 94, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (771, 20, 94, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (772, 21, 94, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (773, 17, 95, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (774, 18, 95, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (775, 19, 95, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (776, 20, 95, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (777, 21, 95, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (778, 17, 96, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (779, 18, 96, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (780, 19, 96, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (781, 20, 96, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (782, 21, 96, '3', '2021-12-20 16:56:01', '2021-12-20 16:56:01');
INSERT INTO `k13_nilai_spiritual` VALUES (783, 22, 97, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (784, 23, 97, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (785, 24, 97, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (786, 25, 97, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (787, 26, 97, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (788, 22, 98, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (789, 23, 98, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (790, 24, 98, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (791, 25, 98, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (792, 26, 98, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (793, 22, 99, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (794, 23, 99, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (795, 24, 99, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (796, 25, 99, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (797, 26, 99, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (798, 22, 100, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (799, 23, 100, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (800, 24, 100, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (801, 25, 100, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (802, 26, 100, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (803, 22, 101, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (804, 23, 101, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (805, 24, 101, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (806, 25, 101, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (807, 26, 101, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (808, 22, 102, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (809, 23, 102, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (810, 24, 102, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (811, 25, 102, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (812, 26, 102, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (813, 22, 103, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (814, 23, 103, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (815, 24, 103, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (816, 25, 103, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (817, 26, 103, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (818, 22, 104, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (819, 23, 104, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (820, 24, 104, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (821, 25, 104, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (822, 26, 104, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (823, 22, 105, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (824, 23, 105, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (825, 24, 105, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (826, 25, 105, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (827, 26, 105, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (828, 22, 106, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (829, 23, 106, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (830, 24, 106, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (831, 25, 106, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (832, 26, 106, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (833, 22, 107, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (834, 23, 107, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (835, 24, 107, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (836, 25, 107, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (837, 26, 107, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (838, 22, 108, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (839, 23, 108, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (840, 24, 108, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (841, 25, 108, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (842, 26, 108, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (843, 22, 109, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (844, 23, 109, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (845, 24, 109, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (846, 25, 109, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (847, 26, 109, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (848, 22, 110, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (849, 23, 110, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (850, 24, 110, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (851, 25, 110, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (852, 26, 110, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (853, 22, 111, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (854, 23, 111, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (855, 24, 111, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (856, 25, 111, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (857, 26, 111, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (858, 22, 112, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (859, 23, 112, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (860, 24, 112, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (861, 25, 112, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (862, 26, 112, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (863, 22, 113, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (864, 23, 113, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (865, 24, 113, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (866, 25, 113, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (867, 26, 113, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (868, 22, 114, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (869, 23, 114, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (870, 24, 114, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (871, 25, 114, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (872, 26, 114, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (873, 22, 115, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (874, 23, 115, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (875, 24, 115, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (876, 25, 115, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (877, 26, 115, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (878, 22, 116, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (879, 23, 116, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (880, 24, 116, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (881, 25, 116, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (882, 26, 116, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (883, 22, 117, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (884, 23, 117, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (885, 24, 117, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (886, 25, 117, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (887, 26, 117, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (888, 22, 118, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (889, 23, 118, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (890, 24, 118, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (891, 25, 118, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (892, 26, 118, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (893, 22, 119, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (894, 23, 119, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (895, 24, 119, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (896, 25, 119, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (897, 26, 119, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (898, 22, 120, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (899, 23, 120, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (900, 24, 120, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (901, 25, 120, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (902, 26, 120, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (903, 22, 121, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (904, 23, 121, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (905, 24, 121, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (906, 25, 121, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (907, 26, 121, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (908, 22, 122, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (909, 23, 122, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (910, 24, 122, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (911, 25, 122, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (912, 26, 122, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (913, 22, 123, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (914, 23, 123, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (915, 24, 123, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (916, 25, 123, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (917, 26, 123, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (918, 22, 124, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (919, 23, 124, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (920, 24, 124, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (921, 25, 124, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (922, 26, 124, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (923, 22, 125, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:16');
INSERT INTO `k13_nilai_spiritual` VALUES (924, 23, 125, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (925, 24, 125, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:17');
INSERT INTO `k13_nilai_spiritual` VALUES (926, 25, 125, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (927, 26, 125, '4', '2021-12-20 19:42:59', '2022-01-07 18:20:18');
INSERT INTO `k13_nilai_spiritual` VALUES (928, 9, 70, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (929, 10, 70, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (930, 11, 70, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (931, 12, 70, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (932, 13, 70, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (933, 9, 71, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (934, 10, 71, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (935, 11, 71, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (936, 12, 71, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (937, 13, 71, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (938, 9, 72, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (939, 10, 72, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (940, 11, 72, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (941, 12, 72, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (942, 13, 72, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (943, 9, 73, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (944, 10, 73, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (945, 11, 73, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (946, 12, 73, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (947, 13, 73, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (948, 9, 74, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (949, 10, 74, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (950, 11, 74, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (951, 12, 74, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (952, 13, 74, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (953, 9, 75, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (954, 10, 75, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (955, 11, 75, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (956, 12, 75, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (957, 13, 75, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (958, 9, 76, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (959, 10, 76, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (960, 11, 76, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (961, 12, 76, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (962, 13, 76, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (963, 9, 77, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (964, 10, 77, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (965, 11, 77, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (966, 12, 77, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (967, 13, 77, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (968, 9, 78, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (969, 10, 78, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (970, 11, 78, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (971, 12, 78, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (972, 13, 78, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (973, 9, 79, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (974, 10, 79, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (975, 11, 79, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (976, 12, 79, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (977, 13, 79, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (978, 9, 80, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (979, 10, 80, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (980, 11, 80, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (981, 12, 80, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (982, 13, 80, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (983, 9, 81, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (984, 10, 81, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (985, 11, 81, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (986, 12, 81, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (987, 13, 81, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (988, 9, 82, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (989, 10, 82, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (990, 11, 82, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (991, 12, 82, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (992, 13, 82, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (993, 9, 83, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (994, 10, 83, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (995, 11, 83, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (996, 12, 83, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (997, 13, 83, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (998, 9, 84, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (999, 10, 84, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1000, 11, 84, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1001, 12, 84, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1002, 13, 84, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1003, 9, 85, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1004, 10, 85, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1005, 11, 85, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1006, 12, 85, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1007, 13, 85, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1008, 9, 86, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1009, 10, 86, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1010, 11, 86, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1011, 12, 86, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1012, 13, 86, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1013, 9, 88, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1014, 10, 88, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1015, 11, 88, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1016, 12, 88, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1017, 13, 88, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1018, 9, 87, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1019, 10, 87, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1020, 11, 87, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1021, 12, 87, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1022, 13, 87, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1023, 9, 89, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1024, 10, 89, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1025, 11, 89, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1026, 12, 89, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1027, 13, 89, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1028, 9, 90, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1029, 10, 90, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1030, 11, 90, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1031, 12, 90, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1032, 13, 90, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1033, 9, 91, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1034, 10, 91, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1035, 11, 91, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1036, 12, 91, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1037, 13, 91, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1038, 9, 92, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1039, 10, 92, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1040, 11, 92, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1041, 12, 92, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1042, 13, 92, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1043, 9, 93, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1044, 10, 93, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1045, 11, 93, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1046, 12, 93, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1047, 13, 93, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1048, 9, 94, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1049, 10, 94, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1050, 11, 94, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1051, 12, 94, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1052, 13, 94, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1053, 9, 95, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1054, 10, 95, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1055, 11, 95, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1056, 12, 95, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1057, 13, 95, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1058, 9, 96, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1059, 10, 96, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1060, 11, 96, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1061, 12, 96, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1062, 13, 96, '3', '2021-12-23 18:22:56', '2021-12-23 18:22:56');
INSERT INTO `k13_nilai_spiritual` VALUES (1063, 14, 97, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1064, 15, 97, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1065, 16, 97, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1066, 14, 98, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1067, 15, 98, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1068, 16, 98, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1069, 14, 99, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1070, 15, 99, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1071, 16, 99, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1072, 14, 100, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1073, 15, 100, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1074, 16, 100, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1075, 14, 101, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1076, 15, 101, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1077, 16, 101, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1078, 14, 102, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1079, 15, 102, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1080, 16, 102, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1081, 14, 103, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1082, 15, 103, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1083, 16, 103, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1084, 14, 104, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1085, 15, 104, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1086, 16, 104, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1087, 14, 105, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1088, 15, 105, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1089, 16, 105, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1090, 14, 106, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1091, 15, 106, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1092, 16, 106, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1093, 14, 107, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1094, 15, 107, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1095, 16, 107, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1096, 14, 108, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1097, 15, 108, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1098, 16, 108, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1099, 14, 109, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1100, 15, 109, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1101, 16, 109, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1102, 14, 110, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1103, 15, 110, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1104, 16, 110, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1105, 14, 111, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1106, 15, 111, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1107, 16, 111, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1108, 14, 112, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1109, 15, 112, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1110, 16, 112, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1111, 14, 113, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1112, 15, 113, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1113, 16, 113, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1114, 14, 114, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1115, 15, 114, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1116, 16, 114, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1117, 14, 115, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1118, 15, 115, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1119, 16, 115, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1120, 14, 116, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1121, 15, 116, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1122, 16, 116, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1123, 14, 117, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1124, 15, 117, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1125, 16, 117, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1126, 14, 118, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1127, 15, 118, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1128, 16, 118, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1129, 14, 119, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1130, 15, 119, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1131, 16, 119, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1132, 14, 120, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1133, 15, 120, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1134, 16, 120, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1135, 14, 121, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1136, 15, 121, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1137, 16, 121, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1138, 14, 122, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1139, 15, 122, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1140, 16, 122, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1141, 14, 123, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1142, 15, 123, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1143, 16, 123, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1144, 14, 124, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1145, 15, 124, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1146, 16, 124, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1147, 14, 125, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1148, 15, 125, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1149, 16, 125, '3', '2021-12-23 18:23:06', '2021-12-23 18:23:06');
INSERT INTO `k13_nilai_spiritual` VALUES (1150, 37, 126, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1151, 38, 126, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1152, 39, 126, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1153, 37, 127, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1154, 38, 127, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1155, 39, 127, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1156, 37, 128, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1157, 38, 128, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1158, 39, 128, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1159, 37, 129, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1160, 38, 129, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1161, 39, 129, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1162, 37, 130, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1163, 38, 130, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1164, 39, 130, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1165, 37, 131, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1166, 38, 131, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1167, 39, 131, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1168, 37, 132, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1169, 38, 132, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1170, 39, 132, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1171, 37, 133, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1172, 38, 133, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1173, 39, 133, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1174, 37, 134, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1175, 38, 134, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1176, 39, 134, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1177, 37, 135, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1178, 38, 135, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1179, 39, 135, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1180, 37, 137, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1181, 38, 137, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1182, 39, 137, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1183, 37, 138, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1184, 38, 138, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1185, 39, 138, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1186, 37, 139, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1187, 38, 139, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1188, 39, 139, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1189, 37, 140, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1190, 38, 140, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1191, 39, 140, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1192, 37, 141, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1193, 38, 141, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1194, 39, 141, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1195, 37, 142, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1196, 38, 142, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1197, 39, 142, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1198, 37, 143, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1199, 38, 143, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1200, 39, 143, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1201, 37, 144, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1202, 38, 144, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1203, 39, 144, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1204, 37, 136, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1205, 38, 136, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1206, 39, 136, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1207, 37, 145, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1208, 38, 145, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1209, 39, 145, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1210, 37, 147, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1211, 38, 147, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1212, 39, 147, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1213, 37, 148, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1214, 38, 148, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1215, 39, 148, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1216, 37, 149, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1217, 38, 149, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1218, 39, 149, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1219, 37, 150, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1220, 38, 150, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1221, 39, 150, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1222, 37, 151, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1223, 38, 151, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1224, 39, 151, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1225, 37, 146, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1226, 38, 146, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1227, 39, 146, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1228, 37, 152, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1229, 38, 152, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1230, 39, 152, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1231, 37, 153, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1232, 38, 153, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1233, 39, 153, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1234, 37, 154, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1235, 38, 154, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1236, 39, 154, '3', '2021-12-23 18:23:17', '2021-12-23 18:23:17');
INSERT INTO `k13_nilai_spiritual` VALUES (1237, 47, 70, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1238, 48, 70, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1239, 49, 70, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1240, 50, 70, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1241, 47, 71, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1242, 48, 71, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1243, 49, 71, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1244, 50, 71, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1245, 47, 72, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1246, 48, 72, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1247, 49, 72, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1248, 50, 72, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1249, 47, 73, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1250, 48, 73, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1251, 49, 73, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1252, 50, 73, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1253, 47, 74, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1254, 48, 74, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1255, 49, 74, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1256, 50, 74, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1257, 47, 75, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1258, 48, 75, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1259, 49, 75, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1260, 50, 75, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1261, 47, 76, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1262, 48, 76, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1263, 49, 76, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1264, 50, 76, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1265, 47, 77, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1266, 48, 77, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1267, 49, 77, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1268, 50, 77, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1269, 47, 78, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1270, 48, 78, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1271, 49, 78, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1272, 50, 78, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1273, 47, 79, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1274, 48, 79, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1275, 49, 79, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1276, 50, 79, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1277, 47, 80, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1278, 48, 80, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1279, 49, 80, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1280, 50, 80, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1281, 47, 81, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1282, 48, 81, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1283, 49, 81, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1284, 50, 81, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1285, 47, 82, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1286, 48, 82, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1287, 49, 82, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1288, 50, 82, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1289, 47, 83, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1290, 48, 83, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1291, 49, 83, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1292, 50, 83, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1293, 47, 84, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1294, 48, 84, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1295, 49, 84, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1296, 50, 84, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1297, 47, 85, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1298, 48, 85, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1299, 49, 85, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1300, 50, 85, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1301, 47, 86, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1302, 48, 86, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1303, 49, 86, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1304, 50, 86, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1305, 47, 88, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1306, 48, 88, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1307, 49, 88, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1308, 50, 88, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1309, 47, 87, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1310, 48, 87, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1311, 49, 87, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1312, 50, 87, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1313, 47, 89, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1314, 48, 89, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1315, 49, 89, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1316, 50, 89, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1317, 47, 90, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1318, 48, 90, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1319, 49, 90, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1320, 50, 90, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1321, 47, 91, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1322, 48, 91, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1323, 49, 91, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1324, 50, 91, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1325, 47, 92, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1326, 48, 92, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1327, 49, 92, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1328, 50, 92, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1329, 47, 93, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1330, 48, 93, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1331, 49, 93, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1332, 50, 93, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1333, 47, 94, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1334, 48, 94, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1335, 49, 94, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1336, 50, 94, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1337, 47, 95, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1338, 48, 95, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1339, 49, 95, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1340, 50, 95, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1341, 47, 96, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1342, 48, 96, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1343, 49, 96, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1344, 50, 96, '3', '2021-12-23 18:29:23', '2021-12-23 18:29:23');
INSERT INTO `k13_nilai_spiritual` VALUES (1345, 51, 97, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1346, 52, 97, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1347, 53, 97, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1348, 54, 97, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1349, 51, 98, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1350, 52, 98, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1351, 53, 98, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1352, 54, 98, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1353, 51, 99, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1354, 52, 99, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1355, 53, 99, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1356, 54, 99, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1357, 51, 100, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1358, 52, 100, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1359, 53, 100, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1360, 54, 100, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1361, 51, 101, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1362, 52, 101, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1363, 53, 101, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1364, 54, 101, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1365, 51, 102, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1366, 52, 102, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1367, 53, 102, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1368, 54, 102, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1369, 51, 103, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1370, 52, 103, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1371, 53, 103, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1372, 54, 103, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1373, 51, 104, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1374, 52, 104, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1375, 53, 104, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1376, 54, 104, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1377, 51, 105, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1378, 52, 105, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1379, 53, 105, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1380, 54, 105, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1381, 51, 106, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1382, 52, 106, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1383, 53, 106, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1384, 54, 106, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1385, 51, 107, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1386, 52, 107, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1387, 53, 107, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1388, 54, 107, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1389, 51, 108, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1390, 52, 108, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1391, 53, 108, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1392, 54, 108, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1393, 51, 109, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1394, 52, 109, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1395, 53, 109, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1396, 54, 109, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1397, 51, 110, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1398, 52, 110, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1399, 53, 110, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1400, 54, 110, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1401, 51, 111, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1402, 52, 111, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1403, 53, 111, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1404, 54, 111, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1405, 51, 112, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1406, 52, 112, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1407, 53, 112, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1408, 54, 112, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1409, 51, 113, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1410, 52, 113, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1411, 53, 113, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1412, 54, 113, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1413, 51, 114, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1414, 52, 114, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1415, 53, 114, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1416, 54, 114, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1417, 51, 115, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1418, 52, 115, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1419, 53, 115, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1420, 54, 115, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1421, 51, 116, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1422, 52, 116, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1423, 53, 116, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1424, 54, 116, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1425, 51, 117, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1426, 52, 117, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1427, 53, 117, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1428, 54, 117, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1429, 51, 118, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1430, 52, 118, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1431, 53, 118, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1432, 54, 118, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1433, 51, 119, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1434, 52, 119, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1435, 53, 119, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1436, 54, 119, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1437, 51, 120, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1438, 52, 120, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1439, 53, 120, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1440, 54, 120, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1441, 51, 121, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1442, 52, 121, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1443, 53, 121, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1444, 54, 121, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1445, 51, 122, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1446, 52, 122, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1447, 53, 122, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1448, 54, 122, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1449, 51, 123, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1450, 52, 123, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1451, 53, 123, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1452, 54, 123, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1453, 51, 124, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1454, 52, 124, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1455, 53, 124, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1456, 54, 124, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1457, 51, 125, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1458, 52, 125, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1459, 53, 125, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1460, 54, 125, '3', '2021-12-23 18:29:34', '2021-12-23 18:29:34');
INSERT INTO `k13_nilai_spiritual` VALUES (1461, 55, 126, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1462, 56, 126, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1463, 57, 126, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1464, 58, 126, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1465, 55, 127, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1466, 56, 127, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1467, 57, 127, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1468, 58, 127, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1469, 55, 128, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1470, 56, 128, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1471, 57, 128, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1472, 58, 128, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1473, 55, 129, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1474, 56, 129, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1475, 57, 129, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1476, 58, 129, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1477, 55, 130, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1478, 56, 130, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1479, 57, 130, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1480, 58, 130, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1481, 55, 131, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1482, 56, 131, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1483, 57, 131, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1484, 58, 131, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1485, 55, 132, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1486, 56, 132, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1487, 57, 132, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1488, 58, 132, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1489, 55, 133, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1490, 56, 133, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1491, 57, 133, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1492, 58, 133, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1493, 55, 134, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1494, 56, 134, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1495, 57, 134, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1496, 58, 134, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1497, 55, 135, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1498, 56, 135, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1499, 57, 135, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1500, 58, 135, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1501, 55, 137, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1502, 56, 137, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1503, 57, 137, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1504, 58, 137, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1505, 55, 138, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1506, 56, 138, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1507, 57, 138, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1508, 58, 138, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1509, 55, 139, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1510, 56, 139, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1511, 57, 139, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1512, 58, 139, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1513, 55, 140, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1514, 56, 140, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1515, 57, 140, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1516, 58, 140, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1517, 55, 141, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1518, 56, 141, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1519, 57, 141, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1520, 58, 141, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1521, 55, 142, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1522, 56, 142, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1523, 57, 142, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1524, 58, 142, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1525, 55, 143, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1526, 56, 143, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1527, 57, 143, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1528, 58, 143, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1529, 55, 144, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1530, 56, 144, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1531, 57, 144, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1532, 58, 144, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1533, 55, 136, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1534, 56, 136, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1535, 57, 136, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1536, 58, 136, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1537, 55, 145, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1538, 56, 145, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1539, 57, 145, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1540, 58, 145, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1541, 55, 147, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1542, 56, 147, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1543, 57, 147, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1544, 58, 147, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1545, 55, 148, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1546, 56, 148, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1547, 57, 148, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1548, 58, 148, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1549, 55, 149, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1550, 56, 149, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1551, 57, 149, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1552, 58, 149, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1553, 55, 150, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1554, 56, 150, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1555, 57, 150, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1556, 58, 150, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1557, 55, 151, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1558, 56, 151, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1559, 57, 151, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1560, 58, 151, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1561, 55, 146, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1562, 56, 146, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1563, 57, 146, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1564, 58, 146, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1565, 55, 152, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1566, 56, 152, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1567, 57, 152, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1568, 58, 152, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1569, 55, 153, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1570, 56, 153, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1571, 57, 153, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1572, 58, 153, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1573, 55, 154, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1574, 56, 154, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1575, 57, 154, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');
INSERT INTO `k13_nilai_spiritual` VALUES (1576, 58, 154, '3', '2021-12-23 18:29:48', '2021-12-23 18:29:48');

-- ----------------------------
-- Table structure for k13_rencana_bobot_penilaian
-- ----------------------------
DROP TABLE IF EXISTS `k13_rencana_bobot_penilaian`;
CREATE TABLE `k13_rencana_bobot_penilaian`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `bobot_ph` int NOT NULL,
  `bobot_pts` int NOT NULL,
  `bobot_pas` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_rencana_bobot_penilaian_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  CONSTRAINT `k13_rencana_bobot_penilaian_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_rencana_bobot_penilaian
-- ----------------------------
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (1, 291, 2, 1, 1, '2021-12-05 02:31:29', '2021-12-05 02:31:29');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (2, 304, 2, 1, 1, '2021-12-05 02:31:39', '2021-12-05 02:38:45');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (3, 317, 1, 1, 1, '2021-12-05 02:38:54', '2021-12-05 02:39:43');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (4, 330, 2, 1, 1, '2021-12-05 02:39:10', '2021-12-05 02:39:10');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (5, 357, 2, 1, 1, '2021-12-05 02:39:26', '2021-12-05 02:39:26');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (6, 292, 2, 1, 1, '2021-12-05 02:39:34', '2021-12-05 02:39:34');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (7, 293, 2, 1, 1, '2021-12-20 13:19:11', '2021-12-20 13:19:11');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (8, 306, 2, 1, 1, '2021-12-20 13:19:17', '2021-12-20 13:19:17');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (9, 319, 2, 1, 1, '2021-12-20 13:19:24', '2021-12-20 13:19:24');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (10, 332, 2, 1, 1, '2021-12-20 13:19:31', '2021-12-20 13:19:31');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (11, 305, 2, 1, 1, '2021-12-23 18:30:48', '2021-12-23 18:30:48');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (12, 318, 2, 1, 1, '2021-12-23 18:30:55', '2021-12-23 18:30:55');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (13, 331, 2, 1, 1, '2021-12-23 18:31:02', '2021-12-23 18:31:02');
INSERT INTO `k13_rencana_bobot_penilaian` VALUES (14, 358, 2, 1, 1, '2021-12-23 18:31:09', '2021-12-23 18:31:09');

-- ----------------------------
-- Table structure for k13_rencana_nilai_keterampilan
-- ----------------------------
DROP TABLE IF EXISTS `k13_rencana_nilai_keterampilan`;
CREATE TABLE `k13_rencana_nilai_keterampilan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `k13_kd_mapel_id` bigint UNSIGNED NOT NULL,
  `kode_penilaian` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknik_penilaian` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_rencana_nilai_keterampilan_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_rencana_nilai_keterampilan_k13_kd_mapel_id_foreign`(`k13_kd_mapel_id` ASC) USING BTREE,
  CONSTRAINT `k13_rencana_nilai_keterampilan_k13_kd_mapel_id_foreign` FOREIGN KEY (`k13_kd_mapel_id`) REFERENCES `k13_kd_mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_rencana_nilai_keterampilan_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_rencana_nilai_keterampilan
-- ----------------------------
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (17, 318, 10, 'P1', '1', '2021-12-15 20:38:19', '2021-12-15 20:38:19');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (18, 318, 9, 'P2', '2', '2021-12-15 20:38:19', '2021-12-15 20:38:19');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (19, 318, 11, 'P2', '2', '2021-12-15 20:38:19', '2021-12-15 20:38:19');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (20, 318, 12, 'P2', '2', '2021-12-15 20:38:19', '2021-12-15 20:38:19');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (21, 293, 18, 'P1', '1', '2021-12-20 13:15:28', '2021-12-20 13:15:28');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (22, 293, 19, 'P2', '1', '2021-12-20 13:15:28', '2021-12-20 13:15:28');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (23, 293, 20, 'P3', '1', '2021-12-20 13:15:28', '2021-12-20 13:15:28');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (24, 306, 18, 'P1', '1', '2021-12-20 13:15:54', '2021-12-20 13:15:54');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (25, 306, 19, 'P2', '1', '2021-12-20 13:15:54', '2021-12-20 13:15:54');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (26, 306, 20, 'P3', '1', '2021-12-20 13:15:54', '2021-12-20 13:15:54');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (27, 319, 23, 'P1', '1', '2021-12-20 13:16:12', '2021-12-20 13:16:12');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (28, 319, 24, 'P2', '1', '2021-12-20 13:16:12', '2021-12-20 13:16:12');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (29, 332, 28, 'P1', '1', '2021-12-20 13:16:37', '2021-12-20 13:16:37');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (30, 332, 29, 'P2', '1', '2021-12-20 13:16:37', '2021-12-20 13:16:37');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (31, 291, 36, 'P1', '1', '2021-12-23 18:10:24', '2021-12-23 18:10:24');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (32, 291, 37, 'P2', '1', '2021-12-23 18:10:24', '2021-12-23 18:10:24');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (33, 304, 36, 'P1', '1', '2021-12-23 18:10:41', '2021-12-23 18:10:41');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (34, 304, 37, 'P2', '1', '2021-12-23 18:10:41', '2021-12-23 18:10:41');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (35, 292, 34, 'P1', '1', '2021-12-23 18:11:02', '2021-12-23 18:11:02');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (36, 292, 35, 'P2', '1', '2021-12-23 18:11:02', '2021-12-23 18:11:02');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (37, 305, 34, 'P1', '1', '2021-12-23 18:11:21', '2021-12-23 18:11:21');
INSERT INTO `k13_rencana_nilai_keterampilan` VALUES (38, 305, 35, 'P2', '1', '2021-12-23 18:11:21', '2021-12-23 18:11:21');

-- ----------------------------
-- Table structure for k13_rencana_nilai_pengetahuan
-- ----------------------------
DROP TABLE IF EXISTS `k13_rencana_nilai_pengetahuan`;
CREATE TABLE `k13_rencana_nilai_pengetahuan`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `k13_kd_mapel_id` bigint UNSIGNED NOT NULL,
  `kode_penilaian` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknik_penilaian` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot_teknik_penilaian` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_rencana_nilai_pengetahuan_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_rencana_nilai_pengetahuan_k13_kd_mapel_id_foreign`(`k13_kd_mapel_id` ASC) USING BTREE,
  CONSTRAINT `k13_rencana_nilai_pengetahuan_k13_kd_mapel_id_foreign` FOREIGN KEY (`k13_kd_mapel_id`) REFERENCES `k13_kd_mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_rencana_nilai_pengetahuan_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_rencana_nilai_pengetahuan
-- ----------------------------
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (37, 292, 3, 'P1', '1', 1, '2021-12-03 22:20:40', '2021-12-03 22:20:40');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (38, 292, 3, 'P2', '2', 1, '2021-12-03 22:20:40', '2021-12-03 22:20:40');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (39, 292, 2, 'P2', '2', 1, '2021-12-03 22:20:40', '2021-12-03 22:20:40');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (40, 292, 2, 'P3', '3', 1, '2021-12-03 22:20:40', '2021-12-03 22:20:40');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (41, 305, 3, 'P1', '2', 1, '2021-12-03 22:22:29', '2021-12-03 22:22:29');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (42, 305, 2, 'P2', '1', 1, '2021-12-03 22:22:29', '2021-12-03 22:22:29');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (43, 305, 3, 'P3', '3', 1, '2021-12-03 22:22:29', '2021-12-03 22:22:29');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (44, 305, 2, 'P3', '3', 1, '2021-12-03 22:22:29', '2021-12-03 22:22:29');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (45, 317, 7, 'P1', '2', 1, '2021-12-03 22:25:40', '2021-12-03 22:25:40');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (46, 317, 7, 'P2', '1', 1, '2021-12-03 22:25:40', '2021-12-03 22:25:40');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (47, 293, 13, 'P1', '3', 1, '2021-12-20 13:11:58', '2021-12-20 13:11:58');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (48, 293, 14, 'P2', '1', 1, '2021-12-20 13:11:58', '2021-12-20 13:11:58');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (49, 293, 15, 'P3', '2', 1, '2021-12-20 13:11:58', '2021-12-20 13:11:58');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (50, 293, 16, 'P4', '1', 1, '2021-12-20 13:11:58', '2021-12-20 13:11:58');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (51, 293, 17, 'P5', '1', 1, '2021-12-20 13:11:58', '2021-12-20 13:11:58');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (52, 306, 13, 'P1', '1', 1, '2021-12-20 13:12:53', '2021-12-20 13:12:53');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (53, 306, 14, 'P2', '1', 1, '2021-12-20 13:12:53', '2021-12-20 13:12:53');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (54, 306, 15, 'P3', '2', 1, '2021-12-20 13:12:53', '2021-12-20 13:12:53');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (55, 306, 16, 'P4', '1', 1, '2021-12-20 13:12:53', '2021-12-20 13:12:53');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (56, 306, 17, 'P5', '1', 1, '2021-12-20 13:12:53', '2021-12-20 13:12:53');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (57, 319, 21, 'P1', '1', 1, '2021-12-20 13:13:29', '2021-12-20 13:13:29');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (58, 319, 22, 'P2', '2', 1, '2021-12-20 13:13:29', '2021-12-20 13:13:29');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (59, 332, 25, 'P1', '2', 1, '2021-12-20 13:14:06', '2021-12-20 13:14:06');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (60, 332, 26, 'P2', '1', 1, '2021-12-20 13:14:06', '2021-12-20 13:14:06');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (61, 332, 27, 'P3', '1', 1, '2021-12-20 13:14:06', '2021-12-20 13:14:06');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (62, 304, 30, 'P1', '1', 1, '2021-12-23 18:06:00', '2021-12-23 18:06:00');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (63, 304, 31, 'P2', '1', 1, '2021-12-23 18:06:00', '2021-12-23 18:06:00');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (64, 291, 30, 'P1', '1', 1, '2021-12-23 18:06:20', '2021-12-23 18:06:20');
INSERT INTO `k13_rencana_nilai_pengetahuan` VALUES (65, 291, 31, 'P2', '1', 1, '2021-12-23 18:06:20', '2021-12-23 18:06:20');

-- ----------------------------
-- Table structure for k13_rencana_nilai_sosial
-- ----------------------------
DROP TABLE IF EXISTS `k13_rencana_nilai_sosial`;
CREATE TABLE `k13_rencana_nilai_sosial`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `k13_butir_sikap_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_rencana_nilai_sosial_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_rencana_nilai_sosial_k13_butir_sikap_id_foreign`(`k13_butir_sikap_id` ASC) USING BTREE,
  CONSTRAINT `k13_rencana_nilai_sosial_k13_butir_sikap_id_foreign` FOREIGN KEY (`k13_butir_sikap_id`) REFERENCES `k13_butir_sikap` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_rencana_nilai_sosial_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_rencana_nilai_sosial
-- ----------------------------
INSERT INTO `k13_rencana_nilai_sosial` VALUES (4, 291, 6, '2021-12-05 01:02:50', '2021-12-05 01:02:50');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (5, 291, 7, '2021-12-05 01:02:50', '2021-12-05 01:02:50');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (6, 291, 8, '2021-12-05 01:02:50', '2021-12-05 01:02:50');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (7, 291, 10, '2021-12-05 01:02:50', '2021-12-05 01:02:50');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (8, 291, 11, '2021-12-05 01:02:50', '2021-12-05 01:02:50');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (9, 304, 6, '2021-12-05 01:03:30', '2021-12-05 01:03:30');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (10, 304, 7, '2021-12-05 01:03:30', '2021-12-05 01:03:30');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (11, 304, 8, '2021-12-05 01:03:30', '2021-12-05 01:03:30');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (12, 304, 10, '2021-12-05 01:03:30', '2021-12-05 01:03:30');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (13, 317, 6, '2021-12-16 00:19:12', '2021-12-16 00:19:12');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (14, 317, 7, '2021-12-16 00:19:12', '2021-12-16 00:19:12');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (15, 317, 8, '2021-12-16 00:19:12', '2021-12-16 00:19:12');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (16, 317, 9, '2021-12-16 00:19:12', '2021-12-16 00:19:12');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (17, 293, 6, '2021-12-20 13:18:06', '2021-12-20 13:18:06');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (18, 293, 7, '2021-12-20 13:18:06', '2021-12-20 13:18:06');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (19, 293, 8, '2021-12-20 13:18:06', '2021-12-20 13:18:06');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (20, 293, 9, '2021-12-20 13:18:06', '2021-12-20 13:18:06');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (21, 293, 10, '2021-12-20 13:18:06', '2021-12-20 13:18:06');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (22, 293, 11, '2021-12-20 13:18:06', '2021-12-20 13:18:06');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (23, 306, 6, '2021-12-20 13:18:20', '2021-12-20 13:18:20');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (24, 306, 7, '2021-12-20 13:18:20', '2021-12-20 13:18:20');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (25, 306, 8, '2021-12-20 13:18:20', '2021-12-20 13:18:20');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (26, 306, 9, '2021-12-20 13:18:20', '2021-12-20 13:18:20');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (27, 306, 10, '2021-12-20 13:18:20', '2021-12-20 13:18:20');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (28, 306, 11, '2021-12-20 13:18:20', '2021-12-20 13:18:20');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (29, 319, 6, '2021-12-20 13:18:34', '2021-12-20 13:18:34');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (30, 319, 7, '2021-12-20 13:18:34', '2021-12-20 13:18:34');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (31, 319, 8, '2021-12-20 13:18:34', '2021-12-20 13:18:34');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (32, 319, 9, '2021-12-20 13:18:34', '2021-12-20 13:18:34');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (33, 319, 10, '2021-12-20 13:18:34', '2021-12-20 13:18:34');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (34, 319, 11, '2021-12-20 13:18:34', '2021-12-20 13:18:34');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (35, 332, 6, '2021-12-20 13:18:53', '2021-12-20 13:18:53');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (36, 332, 7, '2021-12-20 13:18:53', '2021-12-20 13:18:53');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (37, 332, 8, '2021-12-20 13:18:53', '2021-12-20 13:18:53');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (38, 332, 9, '2021-12-20 13:18:53', '2021-12-20 13:18:53');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (39, 332, 10, '2021-12-20 13:18:53', '2021-12-20 13:18:53');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (40, 332, 11, '2021-12-20 13:18:53', '2021-12-20 13:18:53');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (41, 330, 6, '2021-12-23 18:21:13', '2021-12-23 18:21:13');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (42, 330, 7, '2021-12-23 18:21:13', '2021-12-23 18:21:13');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (43, 330, 9, '2021-12-23 18:21:13', '2021-12-23 18:21:13');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (44, 357, 6, '2021-12-23 18:21:28', '2021-12-23 18:21:28');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (45, 357, 7, '2021-12-23 18:21:28', '2021-12-23 18:21:28');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (46, 357, 8, '2021-12-23 18:21:28', '2021-12-23 18:21:28');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (47, 357, 9, '2021-12-23 18:21:28', '2021-12-23 18:21:28');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (48, 357, 10, '2021-12-23 18:21:28', '2021-12-23 18:21:28');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (49, 357, 11, '2021-12-23 18:21:28', '2021-12-23 18:21:28');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (50, 292, 6, '2021-12-23 18:21:42', '2021-12-23 18:21:42');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (51, 292, 7, '2021-12-23 18:21:42', '2021-12-23 18:21:42');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (52, 292, 9, '2021-12-23 18:21:42', '2021-12-23 18:21:42');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (53, 292, 10, '2021-12-23 18:21:42', '2021-12-23 18:21:42');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (54, 292, 11, '2021-12-23 18:21:42', '2021-12-23 18:21:42');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (55, 305, 6, '2021-12-23 18:21:55', '2021-12-23 18:21:55');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (56, 305, 7, '2021-12-23 18:21:55', '2021-12-23 18:21:55');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (57, 305, 8, '2021-12-23 18:21:55', '2021-12-23 18:21:55');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (58, 305, 10, '2021-12-23 18:21:55', '2021-12-23 18:21:55');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (59, 318, 6, '2021-12-23 18:22:07', '2021-12-23 18:22:07');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (60, 318, 8, '2021-12-23 18:22:07', '2021-12-23 18:22:07');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (61, 318, 9, '2021-12-23 18:22:07', '2021-12-23 18:22:07');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (62, 331, 6, '2021-12-23 18:22:21', '2021-12-23 18:22:21');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (63, 331, 8, '2021-12-23 18:22:21', '2021-12-23 18:22:21');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (64, 331, 9, '2021-12-23 18:22:21', '2021-12-23 18:22:21');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (65, 331, 10, '2021-12-23 18:22:21', '2021-12-23 18:22:21');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (66, 358, 6, '2021-12-23 18:22:35', '2021-12-23 18:22:35');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (67, 358, 7, '2021-12-23 18:22:35', '2021-12-23 18:22:35');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (68, 358, 9, '2021-12-23 18:22:35', '2021-12-23 18:22:35');
INSERT INTO `k13_rencana_nilai_sosial` VALUES (69, 358, 10, '2021-12-23 18:22:35', '2021-12-23 18:22:35');

-- ----------------------------
-- Table structure for k13_rencana_nilai_spiritual
-- ----------------------------
DROP TABLE IF EXISTS `k13_rencana_nilai_spiritual`;
CREATE TABLE `k13_rencana_nilai_spiritual`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `k13_butir_sikap_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `k13_rencana_nilai_spiritual_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `k13_rencana_nilai_spiritual_k13_butir_sikap_id_foreign`(`k13_butir_sikap_id` ASC) USING BTREE,
  CONSTRAINT `k13_rencana_nilai_spiritual_k13_butir_sikap_id_foreign` FOREIGN KEY (`k13_butir_sikap_id`) REFERENCES `k13_butir_sikap` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `k13_rencana_nilai_spiritual_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_rencana_nilai_spiritual
-- ----------------------------
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (9, 291, 1, '2021-12-05 00:33:38', '2021-12-05 00:33:38');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (10, 291, 3, '2021-12-05 00:33:38', '2021-12-05 00:33:38');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (11, 291, 4, '2021-12-05 00:33:38', '2021-12-05 00:33:38');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (12, 291, 12, '2021-12-05 00:33:38', '2021-12-05 00:33:38');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (13, 291, 13, '2021-12-05 00:33:38', '2021-12-05 00:33:38');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (14, 304, 1, '2021-12-05 00:33:58', '2021-12-05 00:33:58');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (15, 304, 3, '2021-12-05 00:33:58', '2021-12-05 00:33:58');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (16, 304, 4, '2021-12-05 00:33:58', '2021-12-05 00:33:58');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (17, 293, 1, '2021-12-20 13:17:11', '2021-12-20 13:17:11');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (18, 293, 3, '2021-12-20 13:17:11', '2021-12-20 13:17:11');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (19, 293, 4, '2021-12-20 13:17:11', '2021-12-20 13:17:11');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (20, 293, 12, '2021-12-20 13:17:11', '2021-12-20 13:17:11');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (21, 293, 13, '2021-12-20 13:17:11', '2021-12-20 13:17:11');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (22, 306, 1, '2021-12-20 13:17:25', '2021-12-20 13:17:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (23, 306, 3, '2021-12-20 13:17:25', '2021-12-20 13:17:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (24, 306, 4, '2021-12-20 13:17:25', '2021-12-20 13:17:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (25, 306, 12, '2021-12-20 13:17:25', '2021-12-20 13:17:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (26, 306, 13, '2021-12-20 13:17:25', '2021-12-20 13:17:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (27, 319, 1, '2021-12-20 13:17:36', '2021-12-20 13:17:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (28, 319, 3, '2021-12-20 13:17:36', '2021-12-20 13:17:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (29, 319, 4, '2021-12-20 13:17:36', '2021-12-20 13:17:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (30, 319, 12, '2021-12-20 13:17:36', '2021-12-20 13:17:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (31, 319, 13, '2021-12-20 13:17:36', '2021-12-20 13:17:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (32, 332, 1, '2021-12-20 13:17:47', '2021-12-20 13:17:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (33, 332, 3, '2021-12-20 13:17:47', '2021-12-20 13:17:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (34, 332, 4, '2021-12-20 13:17:47', '2021-12-20 13:17:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (35, 332, 12, '2021-12-20 13:17:47', '2021-12-20 13:17:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (36, 332, 13, '2021-12-20 13:17:47', '2021-12-20 13:17:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (37, 317, 1, '2021-12-23 18:19:25', '2021-12-23 18:19:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (38, 317, 3, '2021-12-23 18:19:25', '2021-12-23 18:19:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (39, 317, 4, '2021-12-23 18:19:25', '2021-12-23 18:19:25');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (40, 330, 3, '2021-12-23 18:19:36', '2021-12-23 18:19:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (41, 330, 4, '2021-12-23 18:19:36', '2021-12-23 18:19:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (42, 330, 12, '2021-12-23 18:19:36', '2021-12-23 18:19:36');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (43, 357, 1, '2021-12-23 18:19:47', '2021-12-23 18:19:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (44, 357, 3, '2021-12-23 18:19:47', '2021-12-23 18:19:47');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (45, 357, 12, '2021-12-23 18:19:47', '2021-12-23 18:19:48');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (46, 357, 13, '2021-12-23 18:19:48', '2021-12-23 18:19:48');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (47, 292, 1, '2021-12-23 18:20:01', '2021-12-23 18:20:01');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (48, 292, 4, '2021-12-23 18:20:01', '2021-12-23 18:20:01');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (49, 292, 12, '2021-12-23 18:20:01', '2021-12-23 18:20:01');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (50, 292, 13, '2021-12-23 18:20:01', '2021-12-23 18:20:01');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (51, 305, 1, '2021-12-23 18:20:16', '2021-12-23 18:20:16');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (52, 305, 3, '2021-12-23 18:20:16', '2021-12-23 18:20:16');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (53, 305, 12, '2021-12-23 18:20:16', '2021-12-23 18:20:16');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (54, 305, 13, '2021-12-23 18:20:16', '2021-12-23 18:20:16');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (55, 318, 1, '2021-12-23 18:20:27', '2021-12-23 18:20:27');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (56, 318, 3, '2021-12-23 18:20:27', '2021-12-23 18:20:27');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (57, 318, 4, '2021-12-23 18:20:27', '2021-12-23 18:20:27');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (58, 318, 12, '2021-12-23 18:20:27', '2021-12-23 18:20:27');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (59, 331, 1, '2021-12-23 18:20:39', '2021-12-23 18:20:39');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (60, 331, 3, '2021-12-23 18:20:39', '2021-12-23 18:20:39');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (61, 331, 4, '2021-12-23 18:20:39', '2021-12-23 18:20:39');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (62, 331, 13, '2021-12-23 18:20:39', '2021-12-23 18:20:39');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (63, 358, 1, '2021-12-23 18:20:51', '2021-12-23 18:20:51');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (64, 358, 4, '2021-12-23 18:20:51', '2021-12-23 18:20:51');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (65, 358, 12, '2021-12-23 18:20:51', '2021-12-23 18:20:51');
INSERT INTO `k13_rencana_nilai_spiritual` VALUES (66, 358, 13, '2021-12-23 18:20:51', '2021-12-23 18:20:51');

-- ----------------------------
-- Table structure for k13_tgl_raport
-- ----------------------------
DROP TABLE IF EXISTS `k13_tgl_raport`;
CREATE TABLE `k13_tgl_raport`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tapel_id` bigint UNSIGNED NOT NULL,
  `tempat_penerbitan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembagian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `k13_tgl_raport_tapel_id_unique`(`tapel_id` ASC) USING BTREE,
  CONSTRAINT `k13_tgl_raport_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of k13_tgl_raport
-- ----------------------------
INSERT INTO `k13_tgl_raport` VALUES (4, 1, 'Tambakboyo', '2021-12-23', '2022-01-01 17:08:08', '2022-01-01 17:08:26');

-- ----------------------------
-- Table structure for kehadiran_siswa
-- ----------------------------
DROP TABLE IF EXISTS `kehadiran_siswa`;
CREATE TABLE `kehadiran_siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `sakit` int NOT NULL,
  `izin` int NOT NULL,
  `tanpa_keterangan` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kehadiran_siswa_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `kehadiran_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kehadiran_siswa
-- ----------------------------
INSERT INTO `kehadiran_siswa` VALUES (1, 97, 2, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:48:09');
INSERT INTO `kehadiran_siswa` VALUES (2, 98, 2, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:48:09');
INSERT INTO `kehadiran_siswa` VALUES (3, 99, 0, 1, 0, '2021-12-22 02:43:55', '2021-12-22 02:48:09');
INSERT INTO `kehadiran_siswa` VALUES (4, 100, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (5, 101, 0, 2, 0, '2021-12-22 02:43:55', '2021-12-22 02:48:09');
INSERT INTO `kehadiran_siswa` VALUES (6, 102, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (7, 103, 0, 0, 3, '2021-12-22 02:43:55', '2021-12-22 02:48:09');
INSERT INTO `kehadiran_siswa` VALUES (8, 104, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (9, 105, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (10, 106, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (11, 107, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (12, 108, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (13, 109, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (14, 110, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (15, 111, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (16, 112, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (17, 113, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (18, 114, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (19, 115, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (20, 116, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (21, 117, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (22, 118, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (23, 119, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (24, 120, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (25, 121, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (26, 122, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (27, 123, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (28, 124, 0, 0, 0, '2021-12-22 02:43:55', '2021-12-22 02:43:55');
INSERT INTO `kehadiran_siswa` VALUES (29, 125, 0, 0, 5, '2021-12-22 02:43:55', '2021-12-22 02:48:09');

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tapel_id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `tingkatan_kelas` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kelas_tapel_id_foreign`(`tapel_id` ASC) USING BTREE,
  INDEX `kelas_guru_id_foreign`(`guru_id` ASC) USING BTREE,
  CONSTRAINT `kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kelas_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (9, 1, 61, '7', 'VII-A', '2021-11-13 22:22:20', '2021-11-15 20:48:33');
INSERT INTO `kelas` VALUES (10, 1, 63, '7', 'VII-B', '2021-11-13 22:22:33', '2021-11-15 20:48:49');
INSERT INTO `kelas` VALUES (11, 1, 64, '8', 'VIII', '2021-11-13 22:22:44', '2021-11-15 20:49:00');
INSERT INTO `kelas` VALUES (12, 1, 58, '9', 'IX A', '2021-11-13 22:23:02', '2021-11-15 20:49:15');
INSERT INTO `kelas` VALUES (13, 1, 57, '9', 'IX-B', '2021-11-13 22:23:15', '2021-11-15 20:49:26');

-- ----------------------------
-- Table structure for kenaikan_kelas
-- ----------------------------
DROP TABLE IF EXISTS `kenaikan_kelas`;
CREATE TABLE `kenaikan_kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `keputusan` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_tujuan` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kenaikan_kelas_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `kenaikan_kelas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kenaikan_kelas
-- ----------------------------

-- ----------------------------
-- Table structure for ktsp_bobot_penilaian
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_bobot_penilaian`;
CREATE TABLE `ktsp_bobot_penilaian`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `bobot_tugas` int NOT NULL,
  `bobot_uh` int NOT NULL,
  `bobot_uts` int NOT NULL,
  `bobot_uas` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_bobot_penilaian_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_bobot_penilaian_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_bobot_penilaian
-- ----------------------------
INSERT INTO `ktsp_bobot_penilaian` VALUES (1, 293, 1, 2, 1, 1, '2022-01-03 20:29:42', '2022-01-03 20:33:16');
INSERT INTO `ktsp_bobot_penilaian` VALUES (2, 306, 1, 2, 1, 1, '2022-01-03 20:30:53', '2022-01-03 20:30:53');
INSERT INTO `ktsp_bobot_penilaian` VALUES (3, 319, 1, 2, 1, 1, '2022-01-03 20:44:05', '2022-01-03 20:44:05');
INSERT INTO `ktsp_bobot_penilaian` VALUES (4, 332, 1, 2, 1, 1, '2022-01-03 20:44:10', '2022-01-03 20:44:10');
INSERT INTO `ktsp_bobot_penilaian` VALUES (5, 304, 1, 2, 1, 1, '2022-01-04 13:17:34', '2022-01-04 13:17:34');
INSERT INTO `ktsp_bobot_penilaian` VALUES (6, 305, 1, 2, 1, 1, '2022-01-04 13:17:42', '2022-01-04 13:17:42');
INSERT INTO `ktsp_bobot_penilaian` VALUES (7, 296, 1, 2, 1, 1, '2022-01-04 14:05:50', '2022-01-04 14:05:50');
INSERT INTO `ktsp_bobot_penilaian` VALUES (8, 294, 1, 2, 1, 1, '2022-01-04 14:22:08', '2022-01-04 14:22:08');
INSERT INTO `ktsp_bobot_penilaian` VALUES (9, 297, 1, 2, 1, 1, '2022-01-04 14:22:16', '2022-01-04 14:22:16');
INSERT INTO `ktsp_bobot_penilaian` VALUES (10, 291, 1, 2, 1, 1, '2022-01-07 20:55:08', '2022-01-07 20:55:08');

-- ----------------------------
-- Table structure for ktsp_deskripsi_nilai_siswa
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_deskripsi_nilai_siswa`;
CREATE TABLE `ktsp_deskripsi_nilai_siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `ktsp_nilai_akhir_raport_id` bigint UNSIGNED NOT NULL,
  `deskripsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_deskripsi_nilai_siswa_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `ktsp_deskripsi_nilai_siswa_ktsp_nilai_akhir_raport_id_foreign`(`ktsp_nilai_akhir_raport_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_deskripsi_nilai_siswa_ktsp_nilai_akhir_raport_id_foreign` FOREIGN KEY (`ktsp_nilai_akhir_raport_id`) REFERENCES `ktsp_nilai_akhir_raport` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ktsp_deskripsi_nilai_siswa_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_deskripsi_nilai_siswa
-- ----------------------------
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (1, 293, 1, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (2, 293, 2, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (3, 293, 3, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (4, 293, 4, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (5, 293, 5, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (6, 293, 6, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (7, 293, 7, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (8, 293, 8, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (9, 293, 9, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (10, 293, 10, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (11, 293, 11, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (12, 293, 12, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (13, 293, 13, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (14, 293, 14, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (15, 293, 15, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (16, 293, 16, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (17, 293, 17, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (18, 293, 18, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (19, 293, 19, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (20, 293, 20, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (21, 293, 21, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (22, 293, 22, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (23, 293, 23, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (24, 293, 24, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (25, 293, 25, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (26, 293, 26, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:39:25');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (27, 293, 27, 'Lulus', '2022-01-04 00:39:25', '2022-01-04 00:40:55');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (28, 306, 28, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (29, 306, 29, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (30, 306, 30, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (31, 306, 31, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (32, 306, 32, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (33, 306, 33, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (34, 306, 34, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (35, 306, 35, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (36, 306, 36, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (37, 306, 37, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (38, 306, 38, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (39, 306, 39, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (40, 306, 40, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (41, 306, 41, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (42, 306, 42, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (43, 306, 43, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (44, 306, 44, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (45, 306, 45, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (46, 306, 46, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (47, 306, 47, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (48, 306, 48, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (49, 306, 49, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (50, 306, 50, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (51, 306, 51, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (52, 306, 52, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (53, 306, 53, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (54, 306, 54, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (55, 306, 55, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (56, 306, 56, 'Tuntas', '2022-01-04 13:16:37', '2022-01-04 13:16:37');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (57, 304, 57, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (58, 304, 58, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (59, 304, 59, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (60, 304, 60, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (61, 304, 61, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (62, 304, 62, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (63, 304, 63, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (64, 304, 64, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (65, 304, 65, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (66, 304, 66, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (67, 304, 67, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (68, 304, 68, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (69, 304, 69, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (70, 304, 70, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (71, 304, 71, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (72, 304, 72, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (73, 304, 73, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (74, 304, 74, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (75, 304, 75, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (76, 304, 76, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (77, 304, 77, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (78, 304, 78, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (79, 304, 79, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (80, 304, 80, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (81, 304, 81, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (82, 304, 82, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (83, 304, 83, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (84, 304, 84, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (85, 304, 85, 'Lulus', '2022-01-04 13:24:36', '2022-01-04 13:24:36');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (86, 305, 86, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (87, 305, 87, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (88, 305, 88, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (89, 305, 89, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (90, 305, 90, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (91, 305, 91, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (92, 305, 92, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (93, 305, 93, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (94, 305, 94, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (95, 305, 95, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (96, 305, 96, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (97, 305, 97, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (98, 305, 98, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (99, 305, 99, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (100, 305, 100, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (101, 305, 101, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (102, 305, 102, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (103, 305, 103, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (104, 305, 104, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (105, 305, 105, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (106, 305, 106, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (107, 305, 107, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (108, 305, 108, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (109, 305, 109, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (110, 305, 110, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (111, 305, 111, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (112, 305, 112, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (113, 305, 113, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (114, 305, 114, 'Lulus', '2022-01-04 13:25:15', '2022-01-04 13:25:15');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (115, 296, 115, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (116, 296, 116, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (117, 296, 117, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (118, 296, 118, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (119, 296, 119, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (120, 296, 120, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (121, 296, 121, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (122, 296, 122, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (123, 296, 123, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (124, 296, 124, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (125, 296, 125, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (126, 296, 126, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (127, 296, 127, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (128, 296, 128, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (129, 296, 129, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (130, 296, 130, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (131, 296, 131, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (132, 296, 132, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (133, 296, 133, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (134, 296, 134, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (135, 296, 135, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (136, 296, 136, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (137, 296, 137, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (138, 296, 138, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (139, 296, 139, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (140, 296, 140, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (141, 296, 141, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (142, 296, 142, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (143, 296, 143, 'Tuntas', '2022-01-04 14:17:27', '2022-01-04 14:17:27');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (144, 294, 144, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (145, 294, 145, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (146, 294, 146, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (147, 294, 147, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (148, 294, 148, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (149, 294, 149, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (150, 294, 150, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (151, 294, 151, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (152, 294, 152, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (153, 294, 153, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (154, 294, 154, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (155, 294, 155, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (156, 294, 156, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (157, 294, 157, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (158, 294, 158, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (159, 294, 159, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (160, 294, 160, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (161, 294, 161, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (162, 294, 162, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (163, 294, 163, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (164, 294, 164, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (165, 294, 165, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (166, 294, 166, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (167, 294, 167, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (168, 294, 168, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (169, 294, 169, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (170, 294, 170, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (171, 294, 171, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (172, 294, 172, 'Lulus', '2022-01-04 14:28:11', '2022-01-04 14:28:11');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (173, 297, 173, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (174, 297, 174, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (175, 297, 175, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (176, 297, 176, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (177, 297, 177, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (178, 297, 178, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (179, 297, 179, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (180, 297, 180, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (181, 297, 181, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (182, 297, 182, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (183, 297, 183, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (184, 297, 184, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (185, 297, 185, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (186, 297, 186, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (187, 297, 187, 'Tuntas', '2022-01-04 14:28:50', '2022-01-04 14:28:50');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (188, 297, 188, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (189, 297, 189, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (190, 297, 190, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (191, 297, 191, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (192, 297, 192, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (193, 297, 193, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (194, 297, 194, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (195, 297, 195, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (196, 297, 196, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (197, 297, 197, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (198, 297, 198, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (199, 297, 199, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (200, 297, 200, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (201, 297, 201, 'Tuntas', '2022-01-04 14:28:51', '2022-01-04 14:28:51');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (202, 291, 202, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (203, 291, 203, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (204, 291, 204, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (205, 291, 205, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (206, 291, 206, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (207, 291, 207, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (208, 291, 208, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (209, 291, 209, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (210, 291, 210, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (211, 291, 211, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (212, 291, 212, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (213, 291, 213, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (214, 291, 214, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (215, 291, 215, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (216, 291, 216, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (217, 291, 217, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (218, 291, 218, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (219, 291, 219, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (220, 291, 220, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (221, 291, 221, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (222, 291, 222, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (223, 291, 223, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (224, 291, 224, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (225, 291, 225, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (226, 291, 226, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (227, 291, 227, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');
INSERT INTO `ktsp_deskripsi_nilai_siswa` VALUES (228, 291, 228, 'Lulus', '2022-01-07 20:55:52', '2022-01-07 20:55:52');

-- ----------------------------
-- Table structure for ktsp_kkm_mapel
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_kkm_mapel`;
CREATE TABLE `ktsp_kkm_mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `kkm` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_kkm_mapel_mapel_id_foreign`(`mapel_id` ASC) USING BTREE,
  INDEX `ktsp_kkm_mapel_kelas_id_foreign`(`kelas_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_kkm_mapel_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ktsp_kkm_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_kkm_mapel
-- ----------------------------
INSERT INTO `ktsp_kkm_mapel` VALUES (3, 32, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (4, 44, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (5, 43, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (6, 42, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (7, 41, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (8, 40, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (9, 39, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (10, 38, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (11, 37, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (12, 36, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (13, 35, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (14, 34, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (15, 33, 9, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (16, 40, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (17, 41, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (18, 42, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (19, 43, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (20, 44, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (21, 39, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (22, 38, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (23, 37, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (24, 36, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (25, 35, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (26, 34, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (27, 33, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (28, 32, 10, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (29, 40, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (30, 41, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (31, 42, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (32, 44, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (33, 39, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (34, 38, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (35, 37, 11, 70, '2022-01-02 21:03:59', '2022-01-02 21:03:59');
INSERT INTO `ktsp_kkm_mapel` VALUES (36, 36, 11, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (37, 35, 11, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (38, 34, 11, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (39, 33, 11, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (40, 32, 11, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (41, 40, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (42, 41, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (43, 42, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (44, 43, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (45, 44, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (46, 39, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (47, 38, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (48, 37, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (49, 36, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (50, 35, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (51, 34, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (52, 33, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (53, 32, 12, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (54, 39, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (55, 40, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (56, 41, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (57, 42, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (58, 43, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (59, 38, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (60, 37, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (61, 36, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (62, 35, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (63, 34, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (64, 33, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (65, 32, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (66, 44, 13, 70, '2022-01-02 21:04:00', '2022-01-02 21:04:00');
INSERT INTO `ktsp_kkm_mapel` VALUES (67, 43, 11, 70, '2022-01-03 18:57:09', '2022-01-03 18:57:09');

-- ----------------------------
-- Table structure for ktsp_mapping_mapel
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_mapping_mapel`;
CREATE TABLE `ktsp_mapping_mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `kelompok` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_urut` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_mapping_mapel_mapel_id_foreign`(`mapel_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_mapping_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_mapping_mapel
-- ----------------------------
INSERT INTO `ktsp_mapping_mapel` VALUES (1, 32, '3', 2, '2022-01-02 20:33:27', '2022-01-04 14:30:51');
INSERT INTO `ktsp_mapping_mapel` VALUES (2, 33, '1', 3, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (3, 34, '1', 4, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (4, 35, '3', 1, '2022-01-02 20:33:27', '2022-01-04 14:30:33');
INSERT INTO `ktsp_mapping_mapel` VALUES (5, 36, '1', 5, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (6, 37, '1', 6, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (7, 38, '1', 7, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (8, 39, '1', 1, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (9, 40, '1', 8, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (10, 41, '1', 2, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (11, 42, '1', 9, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (12, 43, '1', 10, '2022-01-02 20:33:27', '2022-01-02 20:33:27');
INSERT INTO `ktsp_mapping_mapel` VALUES (13, 44, '2', 1, '2022-01-02 20:33:27', '2022-01-02 20:33:57');

-- ----------------------------
-- Table structure for ktsp_nilai_akhir_raport
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_nilai_akhir_raport`;
CREATE TABLE `ktsp_nilai_akhir_raport`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `kkm` int NOT NULL,
  `nilai_akhir` int NOT NULL,
  `predikat` enum('A','B','C','D') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_nilai_akhir_raport_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `ktsp_nilai_akhir_raport_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_nilai_akhir_raport_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ktsp_nilai_akhir_raport_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_nilai_akhir_raport
-- ----------------------------
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (1, 293, 70, 70, 80, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (2, 293, 71, 70, 82, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (3, 293, 72, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (4, 293, 73, 70, 82, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (5, 293, 74, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (6, 293, 75, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (7, 293, 76, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (8, 293, 77, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (9, 293, 78, 70, 87, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (10, 293, 79, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (11, 293, 80, 70, 86, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (12, 293, 81, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (13, 293, 82, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (14, 293, 83, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (15, 293, 84, 70, 87, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (16, 293, 85, 70, 88, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (17, 293, 86, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (18, 293, 88, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (19, 293, 87, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (20, 293, 89, 70, 86, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (21, 293, 90, 70, 87, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (22, 293, 91, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (23, 293, 92, 70, 84, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (24, 293, 93, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (25, 293, 94, 70, 84, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (26, 293, 95, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (27, 293, 96, 70, 85, 'B', '2022-01-03 23:57:37', '2022-01-03 23:57:37');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (28, 306, 97, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (29, 306, 98, 70, 82, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (30, 306, 99, 70, 80, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (31, 306, 100, 70, 85, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (32, 306, 101, 70, 84, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (33, 306, 102, 70, 89, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (34, 306, 103, 70, 85, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (35, 306, 104, 70, 83, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (36, 306, 105, 70, 83, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (37, 306, 106, 70, 84, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (38, 306, 107, 70, 84, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (39, 306, 108, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (40, 306, 109, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (41, 306, 110, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (42, 306, 111, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (43, 306, 112, 70, 84, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (44, 306, 113, 70, 83, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (45, 306, 114, 70, 81, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (46, 306, 115, 70, 83, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (47, 306, 116, 70, 87, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (48, 306, 117, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (49, 306, 118, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (50, 306, 119, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (51, 306, 120, 70, 85, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (52, 306, 121, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (53, 306, 122, 70, 85, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (54, 306, 123, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (55, 306, 124, 70, 85, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (56, 306, 125, 70, 86, 'B', '2022-01-04 00:39:47', '2022-01-04 00:39:47');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (57, 304, 97, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 13:23:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (58, 304, 98, 70, 77, 'C', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (59, 304, 99, 70, 90, 'A', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (60, 304, 100, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 13:23:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (61, 304, 101, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (62, 304, 102, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (63, 304, 103, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 13:23:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (64, 304, 104, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (65, 304, 105, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (66, 304, 106, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:08');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (67, 304, 107, 70, 87, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (68, 304, 108, 70, 88, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (69, 304, 109, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (70, 304, 110, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (71, 304, 111, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (72, 304, 112, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (73, 304, 113, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (74, 304, 114, 70, 84, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (75, 304, 115, 70, 82, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (76, 304, 116, 70, 87, 'B', '2022-01-04 13:23:09', '2022-01-04 13:23:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (77, 304, 117, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (78, 304, 118, 70, 83, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (79, 304, 119, 70, 84, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (80, 304, 120, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (81, 304, 121, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 13:23:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (82, 304, 122, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 13:23:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (83, 304, 123, 70, 85, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (84, 304, 124, 70, 86, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (85, 304, 125, 70, 87, 'B', '2022-01-04 13:23:09', '2022-01-04 14:19:09');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (86, 305, 97, 70, 89, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (87, 305, 98, 70, 83, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (88, 305, 99, 70, 86, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (89, 305, 100, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 13:23:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (90, 305, 101, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (91, 305, 102, 70, 86, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (92, 305, 103, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 13:23:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (93, 305, 104, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (94, 305, 105, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (95, 305, 106, 70, 86, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (96, 305, 107, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (97, 305, 108, 70, 86, 'B', '2022-01-04 13:23:41', '2022-01-04 13:23:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (98, 305, 109, 70, 85, 'B', '2022-01-04 13:23:41', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (99, 305, 110, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (100, 305, 111, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (101, 305, 112, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (102, 305, 113, 70, 84, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (103, 305, 114, 70, 86, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (104, 305, 115, 70, 87, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (105, 305, 116, 70, 81, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (106, 305, 117, 70, 81, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (107, 305, 118, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (108, 305, 119, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (109, 305, 120, 70, 86, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (110, 305, 121, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (111, 305, 122, 70, 84, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (112, 305, 123, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (113, 305, 124, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 13:23:42');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (114, 305, 125, 70, 85, 'B', '2022-01-04 13:23:42', '2022-01-04 14:19:41');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (115, 296, 97, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (116, 296, 98, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (117, 296, 99, 70, 74, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (118, 296, 100, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (119, 296, 101, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (120, 296, 102, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (121, 296, 103, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (122, 296, 104, 70, 74, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (123, 296, 105, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (124, 296, 106, 70, 74, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (125, 296, 107, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (126, 296, 108, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (127, 296, 109, 70, 71, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (128, 296, 110, 70, 71, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (129, 296, 111, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (130, 296, 112, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (131, 296, 113, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (132, 296, 114, 70, 74, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (133, 296, 115, 70, 74, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (134, 296, 116, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (135, 296, 117, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (136, 296, 118, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (137, 296, 119, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (138, 296, 120, 70, 72, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (139, 296, 121, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (140, 296, 122, 70, 74, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (141, 296, 123, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (142, 296, 124, 70, 73, 'C', '2022-01-04 14:16:14', '2022-01-04 14:16:14');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (143, 296, 125, 70, 75, 'C', '2022-01-04 14:16:15', '2022-01-04 14:16:15');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (144, 294, 97, 70, 77, 'C', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (145, 294, 98, 70, 79, 'C', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (146, 294, 99, 70, 77, 'C', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (147, 294, 100, 70, 80, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (148, 294, 101, 70, 79, 'C', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (149, 294, 102, 70, 82, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (150, 294, 103, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (151, 294, 104, 70, 84, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (152, 294, 105, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (153, 294, 106, 70, 86, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (154, 294, 107, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (155, 294, 108, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (156, 294, 109, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (157, 294, 110, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (158, 294, 111, 70, 86, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (159, 294, 112, 70, 83, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (160, 294, 113, 70, 87, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (161, 294, 114, 70, 88, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (162, 294, 115, 70, 81, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (163, 294, 116, 70, 81, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (164, 294, 117, 70, 86, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (165, 294, 118, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (166, 294, 119, 70, 86, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (167, 294, 120, 70, 85, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (168, 294, 121, 70, 86, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (169, 294, 122, 70, 84, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (170, 294, 123, 70, 83, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (171, 294, 124, 70, 82, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (172, 294, 125, 70, 86, 'B', '2022-01-04 14:27:20', '2022-01-04 14:27:20');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (173, 297, 97, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (174, 297, 98, 70, 82, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (175, 297, 99, 70, 82, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (176, 297, 100, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (177, 297, 101, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (178, 297, 102, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (179, 297, 103, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (180, 297, 104, 70, 80, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (181, 297, 105, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (182, 297, 106, 70, 77, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (183, 297, 107, 70, 76, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (184, 297, 108, 70, 77, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (185, 297, 109, 70, 79, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (186, 297, 110, 70, 82, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (187, 297, 111, 70, 83, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (188, 297, 112, 70, 84, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (189, 297, 113, 70, 85, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (190, 297, 114, 70, 85, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (191, 297, 115, 70, 87, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (192, 297, 116, 70, 86, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (193, 297, 117, 70, 85, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (194, 297, 118, 70, 83, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (195, 297, 119, 70, 81, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (196, 297, 120, 70, 78, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (197, 297, 121, 70, 78, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (198, 297, 122, 70, 79, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (199, 297, 123, 70, 79, 'C', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (200, 297, 124, 70, 87, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (201, 297, 125, 70, 82, 'B', '2022-01-04 14:27:32', '2022-01-04 14:27:32');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (202, 291, 70, 70, 80, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (203, 291, 71, 70, 84, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (204, 291, 72, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (205, 291, 73, 70, 89, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (206, 291, 74, 70, 82, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (207, 291, 75, 70, 86, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (208, 291, 76, 70, 84, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (209, 291, 77, 70, 87, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (210, 291, 78, 70, 79, 'C', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (211, 291, 79, 70, 87, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (212, 291, 80, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (213, 291, 81, 70, 86, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (214, 291, 82, 70, 82, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (215, 291, 83, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (216, 291, 84, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (217, 291, 85, 70, 89, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (218, 291, 86, 70, 82, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (219, 291, 88, 70, 84, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (220, 291, 87, 70, 83, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (221, 291, 89, 70, 89, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (222, 291, 90, 70, 86, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (223, 291, 91, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (224, 291, 92, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (225, 291, 93, 70, 89, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (226, 291, 94, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (227, 291, 95, 70, 85, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');
INSERT INTO `ktsp_nilai_akhir_raport` VALUES (228, 291, 96, 70, 88, 'B', '2022-01-07 20:55:31', '2022-01-07 20:55:31');

-- ----------------------------
-- Table structure for ktsp_nilai_tugas
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_nilai_tugas`;
CREATE TABLE `ktsp_nilai_tugas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_nilai_tugas_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `ktsp_nilai_tugas_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_nilai_tugas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ktsp_nilai_tugas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 258 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_nilai_tugas
-- ----------------------------
INSERT INTO `ktsp_nilai_tugas` VALUES (1, 293, 70, 80, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (2, 293, 71, 70, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (3, 293, 72, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (4, 293, 73, 86, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (5, 293, 74, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (6, 293, 75, 86, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (7, 293, 76, 95, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (8, 293, 77, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (9, 293, 78, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (10, 293, 79, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (11, 293, 80, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (12, 293, 81, 86, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (13, 293, 82, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (14, 293, 83, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (15, 293, 84, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (16, 293, 85, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (17, 293, 86, 84, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (18, 293, 88, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (19, 293, 87, 86, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (20, 293, 89, 86, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (21, 293, 90, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (22, 293, 91, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (23, 293, 92, 78, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (24, 293, 93, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (25, 293, 94, 79, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (26, 293, 95, 85, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (27, 293, 96, 96, '2022-01-03 21:11:41', '2022-01-03 21:11:41');
INSERT INTO `ktsp_nilai_tugas` VALUES (28, 306, 97, 78, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (29, 306, 98, 79, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (30, 306, 99, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (31, 306, 100, 95, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (32, 306, 101, 96, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (33, 306, 102, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (34, 306, 103, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (35, 306, 104, 78, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (36, 306, 105, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (37, 306, 106, 78, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (38, 306, 107, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (39, 306, 108, 87, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (40, 306, 109, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (41, 306, 110, 89, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (42, 306, 111, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (43, 306, 112, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (44, 306, 113, 86, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (45, 306, 114, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (46, 306, 115, 84, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (47, 306, 116, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (48, 306, 117, 86, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (49, 306, 118, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (50, 306, 119, 98, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (51, 306, 120, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (52, 306, 121, 86, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (53, 306, 122, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (54, 306, 123, 86, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (55, 306, 124, 85, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (56, 306, 125, 86, '2022-01-03 21:12:31', '2022-01-03 21:12:31');
INSERT INTO `ktsp_nilai_tugas` VALUES (57, 304, 97, 75, '2022-01-04 13:18:45', '2022-01-04 14:01:49');
INSERT INTO `ktsp_nilai_tugas` VALUES (58, 304, 98, 76, '2022-01-04 13:18:45', '2022-01-04 14:01:49');
INSERT INTO `ktsp_nilai_tugas` VALUES (59, 304, 99, 87, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (60, 304, 100, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (61, 304, 101, 86, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (62, 304, 102, 89, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (63, 304, 103, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (64, 304, 104, 87, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (65, 304, 105, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (66, 304, 106, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (67, 304, 107, 96, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (68, 304, 108, 95, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (69, 304, 109, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (70, 304, 110, 82, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (71, 304, 111, 83, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (72, 304, 112, 86, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (73, 304, 113, 84, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (74, 304, 114, 75, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (75, 304, 115, 75, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (76, 304, 116, 84, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (77, 304, 117, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (78, 304, 118, 86, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (79, 304, 119, 78, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (80, 304, 120, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (81, 304, 121, 89, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (82, 304, 122, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (83, 304, 123, 86, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (84, 304, 124, 85, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (85, 304, 125, 86, '2022-01-04 13:18:45', '2022-01-04 13:18:45');
INSERT INTO `ktsp_nilai_tugas` VALUES (86, 305, 97, 75, '2022-01-04 13:19:21', '2022-01-04 14:03:23');
INSERT INTO `ktsp_nilai_tugas` VALUES (87, 305, 98, 74, '2022-01-04 13:19:21', '2022-01-04 14:03:23');
INSERT INTO `ktsp_nilai_tugas` VALUES (88, 305, 99, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (89, 305, 100, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (90, 305, 101, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (91, 305, 102, 87, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (92, 305, 103, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (93, 305, 104, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (94, 305, 105, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (95, 305, 106, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (96, 305, 107, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (97, 305, 108, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (98, 305, 109, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (99, 305, 110, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (100, 305, 111, 84, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (101, 305, 112, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (102, 305, 113, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (103, 305, 114, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (104, 305, 115, 89, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (105, 305, 116, 78, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (106, 305, 117, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (107, 305, 118, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (108, 305, 119, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (109, 305, 120, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (110, 305, 121, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (111, 305, 122, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (112, 305, 123, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (113, 305, 124, 86, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (114, 305, 125, 85, '2022-01-04 13:19:21', '2022-01-04 13:19:21');
INSERT INTO `ktsp_nilai_tugas` VALUES (115, 296, 97, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (116, 296, 98, 74, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (117, 296, 99, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (118, 296, 100, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (119, 296, 101, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (120, 296, 102, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (121, 296, 103, 70, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (122, 296, 104, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (123, 296, 105, 74, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (124, 296, 106, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (125, 296, 107, 74, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (126, 296, 108, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (127, 296, 109, 71, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (128, 296, 110, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (129, 296, 111, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (130, 296, 112, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (131, 296, 113, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (132, 296, 114, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (133, 296, 115, 76, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (134, 296, 116, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (135, 296, 117, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (136, 296, 118, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (137, 296, 119, 71, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (138, 296, 120, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (139, 296, 121, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (140, 296, 122, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (141, 296, 123, 71, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (142, 296, 124, 72, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (143, 296, 125, 75, '2022-01-04 14:06:33', '2022-01-04 14:06:33');
INSERT INTO `ktsp_nilai_tugas` VALUES (144, 294, 97, 75, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (145, 294, 98, 75, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (146, 294, 99, 74, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (147, 294, 100, 75, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (148, 294, 101, 74, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (149, 294, 102, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (150, 294, 103, 84, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (151, 294, 104, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (152, 294, 105, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (153, 294, 106, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (154, 294, 107, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (155, 294, 108, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (156, 294, 109, 84, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (157, 294, 110, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (158, 294, 111, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (159, 294, 112, 82, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (160, 294, 113, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (161, 294, 114, 87, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (162, 294, 115, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (163, 294, 116, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (164, 294, 117, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (165, 294, 118, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (166, 294, 119, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (167, 294, 120, 84, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (168, 294, 121, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (169, 294, 122, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (170, 294, 123, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (171, 294, 124, 86, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (172, 294, 125, 85, '2022-01-04 14:22:51', '2022-01-04 14:22:51');
INSERT INTO `ktsp_nilai_tugas` VALUES (173, 297, 97, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (174, 297, 98, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (175, 297, 99, 89, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (176, 297, 100, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (177, 297, 101, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (178, 297, 102, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (179, 297, 103, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (180, 297, 104, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (181, 297, 105, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (182, 297, 106, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (183, 297, 107, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (184, 297, 108, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (185, 297, 109, 95, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (186, 297, 110, 96, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (187, 297, 111, 96, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (188, 297, 112, 95, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (189, 297, 113, 96, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (190, 297, 114, 96, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (191, 297, 115, 96, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (192, 297, 116, 95, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (193, 297, 117, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (194, 297, 118, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (195, 297, 119, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (196, 297, 120, 75, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (197, 297, 121, 78, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (198, 297, 122, 75, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (199, 297, 123, 78, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (200, 297, 124, 85, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (201, 297, 125, 86, '2022-01-04 14:23:26', '2022-01-04 14:23:26');
INSERT INTO `ktsp_nilai_tugas` VALUES (202, 317, 126, 70, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (203, 317, 127, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (204, 317, 128, 96, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (205, 317, 129, 78, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (206, 317, 130, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (207, 317, 131, 82, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (208, 317, 132, 70, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (209, 317, 133, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (210, 317, 134, 96, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (211, 317, 135, 78, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (212, 317, 137, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (213, 317, 138, 82, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (214, 317, 139, 70, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (215, 317, 140, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (216, 317, 141, 96, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (217, 317, 142, 78, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (218, 317, 143, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (219, 317, 144, 82, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (220, 317, 136, 70, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (221, 317, 145, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (222, 317, 147, 96, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (223, 317, 148, 78, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (224, 317, 149, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (225, 317, 150, 82, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (226, 317, 151, 96, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (227, 317, 146, 78, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (228, 317, 152, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (229, 317, 153, 82, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (230, 317, 154, 85, '2022-01-07 20:17:36', '2022-01-07 20:17:36');
INSERT INTO `ktsp_nilai_tugas` VALUES (231, 291, 70, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (232, 291, 71, 86, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (233, 291, 72, 84, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (234, 291, 73, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (235, 291, 74, 86, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (236, 291, 75, 87, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (237, 291, 76, 78, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (238, 291, 77, 78, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (239, 291, 78, 75, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (240, 291, 79, 86, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (241, 291, 80, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (242, 291, 81, 84, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (243, 291, 82, 86, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (244, 291, 83, 84, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (245, 291, 84, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (246, 291, 85, 86, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (247, 291, 86, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (248, 291, 88, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (249, 291, 87, 78, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (250, 291, 89, 78, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (251, 291, 90, 95, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (252, 291, 91, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (253, 291, 92, 84, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (254, 291, 93, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (255, 291, 94, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (256, 291, 95, 85, '2022-01-07 20:54:55', '2022-01-07 20:54:55');
INSERT INTO `ktsp_nilai_tugas` VALUES (257, 291, 96, 84, '2022-01-07 20:54:55', '2022-01-07 20:54:55');

-- ----------------------------
-- Table structure for ktsp_nilai_uh
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_nilai_uh`;
CREATE TABLE `ktsp_nilai_uh`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_nilai_uh_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `ktsp_nilai_uh_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_nilai_uh_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ktsp_nilai_uh_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_nilai_uh
-- ----------------------------
INSERT INTO `ktsp_nilai_uh` VALUES (1, 293, 70, 78, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (2, 293, 71, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (3, 293, 72, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (4, 293, 73, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (5, 293, 74, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (6, 293, 75, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (7, 293, 76, 89, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (8, 293, 77, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (9, 293, 78, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (10, 293, 79, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (11, 293, 80, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (12, 293, 81, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (13, 293, 82, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (14, 293, 83, 87, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (15, 293, 84, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (16, 293, 85, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (17, 293, 86, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (18, 293, 88, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (19, 293, 87, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (20, 293, 89, 86, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (21, 293, 90, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (22, 293, 91, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (23, 293, 92, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (24, 293, 93, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (25, 293, 94, 85, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (26, 293, 95, 89, '2022-01-03 21:48:18', '2022-01-03 21:52:36');
INSERT INTO `ktsp_nilai_uh` VALUES (27, 293, 96, 74, '2022-01-03 21:48:18', '2022-01-03 21:48:18');
INSERT INTO `ktsp_nilai_uh` VALUES (28, 306, 97, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (29, 306, 98, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (30, 306, 99, 84, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (31, 306, 100, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (32, 306, 101, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (33, 306, 102, 95, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (34, 306, 103, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (35, 306, 104, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (36, 306, 105, 84, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (37, 306, 106, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (38, 306, 107, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (39, 306, 108, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (40, 306, 109, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (41, 306, 110, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (42, 306, 111, 87, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (43, 306, 112, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (44, 306, 113, 78, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (45, 306, 114, 78, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (46, 306, 115, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (47, 306, 116, 89, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (48, 306, 117, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (49, 306, 118, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (50, 306, 119, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (51, 306, 120, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (52, 306, 121, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (53, 306, 122, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (54, 306, 123, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (55, 306, 124, 85, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (56, 306, 125, 86, '2022-01-03 21:53:16', '2022-01-03 21:53:16');
INSERT INTO `ktsp_nilai_uh` VALUES (57, 304, 97, 96, '2022-01-04 13:19:55', '2022-01-04 14:02:15');
INSERT INTO `ktsp_nilai_uh` VALUES (58, 304, 98, 75, '2022-01-04 13:19:55', '2022-01-04 14:02:15');
INSERT INTO `ktsp_nilai_uh` VALUES (59, 304, 99, 96, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (60, 304, 100, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (61, 304, 101, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (62, 304, 102, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (63, 304, 103, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (64, 304, 104, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (65, 304, 105, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (66, 304, 106, 84, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (67, 304, 107, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (68, 304, 108, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (69, 304, 109, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (70, 304, 110, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (71, 304, 111, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (72, 304, 112, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (73, 304, 113, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (74, 304, 114, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (75, 304, 115, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (76, 304, 116, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (77, 304, 117, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (78, 304, 118, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (79, 304, 119, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (80, 304, 120, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (81, 304, 121, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (82, 304, 122, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (83, 304, 123, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (84, 304, 124, 86, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (85, 304, 125, 85, '2022-01-04 13:19:55', '2022-01-04 13:19:55');
INSERT INTO `ktsp_nilai_uh` VALUES (86, 305, 97, 98, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (87, 305, 98, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (88, 305, 99, 86, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (89, 305, 100, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (90, 305, 101, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (91, 305, 102, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (92, 305, 103, 84, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (93, 305, 104, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (94, 305, 105, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (95, 305, 106, 86, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (96, 305, 107, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (97, 305, 108, 87, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (98, 305, 109, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (99, 305, 110, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (100, 305, 111, 86, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (101, 305, 112, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (102, 305, 113, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (103, 305, 114, 86, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (104, 305, 115, 87, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (105, 305, 116, 78, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (106, 305, 117, 74, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (107, 305, 118, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (108, 305, 119, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (109, 305, 120, 86, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (110, 305, 121, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (111, 305, 122, 86, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (112, 305, 123, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (113, 305, 124, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (114, 305, 125, 85, '2022-01-04 13:20:30', '2022-01-04 13:20:30');
INSERT INTO `ktsp_nilai_uh` VALUES (115, 296, 97, 70, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (116, 296, 98, 71, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (117, 296, 99, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (118, 296, 100, 71, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (119, 296, 101, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (120, 296, 102, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (121, 296, 103, 76, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (122, 296, 104, 74, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (123, 296, 105, 71, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (124, 296, 106, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (125, 296, 107, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (126, 296, 108, 71, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (127, 296, 109, 70, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (128, 296, 110, 70, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (129, 296, 111, 71, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (130, 296, 112, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (131, 296, 113, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (132, 296, 114, 76, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (133, 296, 115, 75, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (134, 296, 116, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (135, 296, 117, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (136, 296, 118, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (137, 296, 119, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (138, 296, 120, 71, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (139, 296, 121, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (140, 296, 122, 73, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (141, 296, 123, 73, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (142, 296, 124, 72, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (143, 296, 125, 75, '2022-01-04 14:07:09', '2022-01-04 14:07:09');
INSERT INTO `ktsp_nilai_uh` VALUES (144, 294, 97, 78, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (145, 294, 98, 75, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (146, 294, 99, 75, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (147, 294, 100, 76, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (148, 294, 101, 75, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (149, 294, 102, 76, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (150, 294, 103, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (151, 294, 104, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (152, 294, 105, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (153, 294, 106, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (154, 294, 107, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (155, 294, 108, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (156, 294, 109, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (157, 294, 110, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (158, 294, 111, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (159, 294, 112, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (160, 294, 113, 84, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (161, 294, 114, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (162, 294, 115, 75, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (163, 294, 116, 78, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (164, 294, 117, 89, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (165, 294, 118, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (166, 294, 119, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (167, 294, 120, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (168, 294, 121, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (169, 294, 122, 85, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (170, 294, 123, 82, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (171, 294, 124, 82, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (172, 294, 125, 86, '2022-01-04 14:24:25', '2022-01-04 14:24:25');
INSERT INTO `ktsp_nilai_uh` VALUES (173, 297, 97, 78, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (174, 297, 98, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (175, 297, 99, 74, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (176, 297, 100, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (177, 297, 101, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (178, 297, 102, 78, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (179, 297, 103, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (180, 297, 104, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (181, 297, 105, 74, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (182, 297, 106, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (183, 297, 107, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (184, 297, 108, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (185, 297, 109, 75, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (186, 297, 110, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (187, 297, 111, 86, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (188, 297, 112, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (189, 297, 113, 84, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (190, 297, 114, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (191, 297, 115, 86, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (192, 297, 116, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (193, 297, 117, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (194, 297, 118, 87, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (195, 297, 119, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (196, 297, 120, 84, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (197, 297, 121, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (198, 297, 122, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (199, 297, 123, 86, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (200, 297, 124, 85, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (201, 297, 125, 86, '2022-01-04 14:25:01', '2022-01-04 14:25:01');
INSERT INTO `ktsp_nilai_uh` VALUES (202, 291, 70, 78, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (203, 291, 71, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (204, 291, 72, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (205, 291, 73, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (206, 291, 74, 78, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (207, 291, 75, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (208, 291, 76, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (209, 291, 77, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (210, 291, 78, 78, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (211, 291, 79, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (212, 291, 80, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (213, 291, 81, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (214, 291, 82, 78, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (215, 291, 83, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (216, 291, 84, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (217, 291, 85, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (218, 291, 86, 78, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (219, 291, 88, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (220, 291, 87, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (221, 291, 89, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (222, 291, 90, 78, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (223, 291, 91, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (224, 291, 92, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (225, 291, 93, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (226, 291, 94, 85, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (227, 291, 95, 86, '2022-01-07 20:32:14', '2022-01-07 20:32:14');
INSERT INTO `ktsp_nilai_uh` VALUES (228, 291, 96, 95, '2022-01-07 20:32:14', '2022-01-07 20:32:14');

-- ----------------------------
-- Table structure for ktsp_nilai_uts_uas
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_nilai_uts_uas`;
CREATE TABLE `ktsp_nilai_uts_uas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pembelajaran_id` bigint UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `nilai_uts` int NOT NULL,
  `nilai_uas` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ktsp_nilai_uts_uas_pembelajaran_id_foreign`(`pembelajaran_id` ASC) USING BTREE,
  INDEX `ktsp_nilai_uts_uas_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_nilai_uts_uas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ktsp_nilai_uts_uas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_nilai_uts_uas
-- ----------------------------
INSERT INTO `ktsp_nilai_uts_uas` VALUES (1, 293, 70, 78, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (2, 293, 71, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (3, 293, 72, 86, 98, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (4, 293, 73, 78, 78, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (5, 293, 74, 85, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (6, 293, 75, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (7, 293, 76, 84, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (8, 293, 77, 87, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (9, 293, 78, 89, 87, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (10, 293, 79, 85, 89, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (11, 293, 80, 85, 86, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (12, 293, 81, 85, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (13, 293, 82, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (14, 293, 83, 84, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (15, 293, 84, 85, 86, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (16, 293, 85, 85, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (17, 293, 86, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (18, 293, 88, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (19, 293, 87, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (20, 293, 89, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (21, 293, 90, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (22, 293, 91, 85, 86, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (23, 293, 92, 85, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (24, 293, 93, 86, 85, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (25, 293, 94, 85, 86, '2022-01-03 22:17:14', '2022-01-03 22:17:14');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (26, 293, 95, 75, 86, '2022-01-03 22:17:14', '2022-01-03 22:22:36');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (27, 293, 96, 95, 85, '2022-01-03 22:17:14', '2022-01-03 22:22:36');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (28, 306, 97, 85, 98, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (29, 306, 98, 75, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (30, 306, 99, 74, 75, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (31, 306, 100, 76, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (32, 306, 101, 78, 74, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (33, 306, 102, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (34, 306, 103, 85, 84, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (35, 306, 104, 78, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (36, 306, 105, 85, 76, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (37, 306, 106, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (38, 306, 107, 85, 78, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (39, 306, 108, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (40, 306, 109, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (41, 306, 110, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (42, 306, 111, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (43, 306, 112, 85, 82, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (44, 306, 113, 86, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (45, 306, 114, 78, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (46, 306, 115, 78, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (47, 306, 116, 89, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (48, 306, 117, 89, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (49, 306, 118, 86, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (50, 306, 119, 86, 78, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (51, 306, 120, 85, 87, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (52, 306, 121, 85, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (53, 306, 122, 86, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (54, 306, 123, 87, 85, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (55, 306, 124, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (56, 306, 125, 85, 86, '2022-01-03 22:23:40', '2022-01-03 22:23:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (57, 304, 97, 75, 89, '2022-01-04 13:21:25', '2022-01-04 14:02:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (58, 304, 98, 85, 75, '2022-01-04 13:21:25', '2022-01-04 14:02:40');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (59, 304, 99, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (60, 304, 100, 85, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (61, 304, 101, 84, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (62, 304, 102, 86, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (63, 304, 103, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (64, 304, 104, 85, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (65, 304, 105, 86, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (66, 304, 106, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (67, 304, 107, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (68, 304, 108, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (69, 304, 109, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (70, 304, 110, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (71, 304, 111, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (72, 304, 112, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (73, 304, 113, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (74, 304, 114, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (75, 304, 115, 87, 78, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (76, 304, 116, 85, 95, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (77, 304, 117, 85, 84, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (78, 304, 118, 85, 75, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (79, 304, 119, 86, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (80, 304, 120, 86, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (81, 304, 121, 85, 86, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (82, 304, 122, 85, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (83, 304, 123, 86, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (84, 304, 124, 86, 85, '2022-01-04 13:21:25', '2022-01-04 13:21:25');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (85, 304, 125, 85, 92, '2022-01-04 13:21:25', '2022-01-04 13:21:42');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (86, 305, 97, 89, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (87, 305, 98, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (88, 305, 99, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (89, 305, 100, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (90, 305, 101, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (91, 305, 102, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (92, 305, 103, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (93, 305, 104, 86, 84, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (94, 305, 105, 87, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (95, 305, 106, 85, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (96, 305, 107, 85, 82, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (97, 305, 108, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (98, 305, 109, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (99, 305, 110, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (100, 305, 111, 84, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (101, 305, 112, 87, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (102, 305, 113, 78, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (103, 305, 114, 85, 89, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (104, 305, 115, 85, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (105, 305, 116, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (106, 305, 117, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (107, 305, 118, 86, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (108, 305, 119, 85, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (109, 305, 120, 85, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (110, 305, 121, 85, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (111, 305, 122, 78, 85, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (112, 305, 123, 85, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (113, 305, 124, 85, 86, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (114, 305, 125, 85, 87, '2022-01-04 13:22:44', '2022-01-04 13:22:44');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (115, 296, 97, 75, 74, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (116, 296, 98, 75, 76, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (117, 296, 99, 75, 74, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (118, 296, 100, 75, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (119, 296, 101, 71, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (120, 296, 102, 76, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (121, 296, 103, 71, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (122, 296, 104, 76, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (123, 296, 105, 75, 76, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (124, 296, 106, 74, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (125, 296, 107, 72, 71, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (126, 296, 108, 72, 73, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (127, 296, 109, 72, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (128, 296, 110, 71, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (129, 296, 111, 75, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (130, 296, 112, 72, 71, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (131, 296, 113, 72, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (132, 296, 114, 72, 73, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (133, 296, 115, 72, 73, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (134, 296, 116, 72, 73, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (135, 296, 117, 72, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (136, 296, 118, 73, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (137, 296, 119, 72, 71, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (138, 296, 120, 72, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (139, 296, 121, 72, 72, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (140, 296, 122, 75, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (141, 296, 123, 75, 74, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (142, 296, 124, 75, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (143, 296, 125, 74, 75, '2022-01-04 14:07:59', '2022-01-04 14:07:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (144, 294, 97, 78, 75, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (145, 294, 98, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (146, 294, 99, 78, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (147, 294, 100, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (148, 294, 101, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (149, 294, 102, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (150, 294, 103, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (151, 294, 104, 85, 78, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (152, 294, 105, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (153, 294, 106, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (154, 294, 107, 84, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (155, 294, 108, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (156, 294, 109, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (157, 294, 110, 86, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (158, 294, 111, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (159, 294, 112, 85, 78, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (160, 294, 113, 85, 95, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (161, 294, 114, 96, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (162, 294, 115, 84, 85, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (163, 294, 116, 78, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (164, 294, 117, 85, 84, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (165, 294, 118, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (166, 294, 119, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (167, 294, 120, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (168, 294, 121, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (169, 294, 122, 85, 78, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (170, 294, 123, 78, 89, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (171, 294, 124, 80, 78, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (172, 294, 125, 85, 86, '2022-01-04 14:25:59', '2022-01-04 14:25:59');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (173, 297, 97, 78, 85, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (174, 297, 98, 85, 89, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (175, 297, 99, 85, 87, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (176, 297, 100, 85, 86, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (177, 297, 101, 85, 84, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (178, 297, 102, 85, 78, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (179, 297, 103, 87, 82, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (180, 297, 104, 86, 78, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (181, 297, 105, 87, 85, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (182, 297, 106, 78, 70, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (183, 297, 107, 72, 71, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (184, 297, 108, 73, 75, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (185, 297, 109, 74, 76, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (186, 297, 110, 71, 72, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (187, 297, 111, 73, 75, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (188, 297, 112, 78, 78, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (189, 297, 113, 85, 74, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (190, 297, 114, 85, 76, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (191, 297, 115, 85, 84, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (192, 297, 116, 82, 83, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (193, 297, 117, 85, 86, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (194, 297, 118, 75, 78, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (195, 297, 119, 74, 75, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (196, 297, 120, 74, 75, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (197, 297, 121, 71, 72, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (198, 297, 122, 75, 75, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (199, 297, 123, 70, 76, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (200, 297, 124, 85, 95, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (201, 297, 125, 75, 75, '2022-01-04 14:27:02', '2022-01-04 14:27:02');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (202, 291, 70, 75, 85, '2022-01-07 20:46:55', '2022-01-07 20:46:55');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (203, 291, 71, 82, 84, '2022-01-07 20:46:55', '2022-01-07 20:46:55');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (204, 291, 72, 86, 82, '2022-01-07 20:46:55', '2022-01-07 20:46:55');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (205, 291, 73, 84, 86, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (206, 291, 74, 85, 84, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (207, 291, 75, 86, 85, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (208, 291, 76, 82, 86, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (209, 291, 77, 83, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (210, 291, 78, 82, 83, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (211, 291, 79, 95, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (212, 291, 80, 75, 95, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (213, 291, 81, 82, 75, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (214, 291, 82, 86, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (215, 291, 83, 84, 86, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (216, 291, 84, 85, 84, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (217, 291, 85, 86, 85, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (218, 291, 86, 82, 86, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (219, 291, 88, 83, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (220, 291, 87, 82, 83, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (221, 291, 89, 95, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (222, 291, 90, 82, 95, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (223, 291, 91, 86, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (224, 291, 92, 84, 86, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (225, 291, 93, 85, 84, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (226, 291, 94, 86, 85, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (227, 291, 95, 82, 86, '2022-01-07 20:46:56', '2022-01-07 20:46:56');
INSERT INTO `ktsp_nilai_uts_uas` VALUES (228, 291, 96, 83, 82, '2022-01-07 20:46:56', '2022-01-07 20:46:56');

-- ----------------------------
-- Table structure for ktsp_tgl_raport
-- ----------------------------
DROP TABLE IF EXISTS `ktsp_tgl_raport`;
CREATE TABLE `ktsp_tgl_raport`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tapel_id` bigint UNSIGNED NOT NULL,
  `tempat_penerbitan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembagian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ktsp_tgl_raport_tapel_id_unique`(`tapel_id` ASC) USING BTREE,
  CONSTRAINT `ktsp_tgl_raport_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ktsp_tgl_raport
-- ----------------------------
INSERT INTO `ktsp_tgl_raport` VALUES (2, 1, 'Tambakboyo', '2022-01-03', '2022-01-02 21:24:31', '2022-01-02 21:24:31');

-- ----------------------------
-- Table structure for mapel
-- ----------------------------
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tapel_id` bigint UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_mapel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mapel_tapel_id_foreign`(`tapel_id` ASC) USING BTREE,
  CONSTRAINT `mapel_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mapel
-- ----------------------------
INSERT INTO `mapel` VALUES (32, 1, 'Aswaja', 'Aswaja', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (33, 1, 'Bahasa Indnesia', 'BIN', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (34, 1, 'Bahasa Inggris', 'BING', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (35, 1, 'Bahasa Jawa', 'B. Jawa', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (36, 1, 'Ilmu Pengetahuan Alam', 'IPA', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (37, 1, 'Ilmu Pengetahuan Sosial', 'IPS', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (38, 1, 'Matematika', 'MTK', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (39, 1, 'Pendidikan Agama Islam dan Budi Pekerti', 'PAI', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (40, 1, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'PJOK', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (41, 1, 'Pendidikan Pancasila dan Kewarganegaraan', 'PKN', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (42, 1, 'Prakarya', 'PKR', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (43, 1, 'Seni dan Budaya', 'SB', '2021-11-13 22:15:56', '2021-11-13 22:15:56');
INSERT INTO `mapel` VALUES (44, 1, 'Teknologi Informasi dan Komunikasi', 'TIK', '2021-11-13 22:15:56', '2021-11-13 22:15:56');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (8, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_10_29_091435_create_admins_table', 1);
INSERT INTO `migrations` VALUES (10, '2021_10_29_092124_create_riwayat_logins_table', 1);
INSERT INTO `migrations` VALUES (11, '2021_10_31_172054_create_sekolahs_table', 2);
INSERT INTO `migrations` VALUES (13, '2021_11_01_221101_create_gurus_table', 3);
INSERT INTO `migrations` VALUES (14, '2021_11_03_201640_create_tapels_table', 4);
INSERT INTO `migrations` VALUES (16, '2021_11_03_214835_create_kelas_table', 5);
INSERT INTO `migrations` VALUES (18, '2021_11_03_224912_create_siswas_table', 6);
INSERT INTO `migrations` VALUES (19, '2021_11_04_161114_create_anggota_kelas_table', 7);
INSERT INTO `migrations` VALUES (21, '2021_11_07_002948_create_siswa_keluars_table', 8);
INSERT INTO `migrations` VALUES (22, '2021_11_07_144659_create_mapels_table', 9);
INSERT INTO `migrations` VALUES (24, '2021_11_07_182449_create_pembelajarans_table', 10);
INSERT INTO `migrations` VALUES (25, '2021_11_14_004515_create_ekstrakulikulers_table', 11);
INSERT INTO `migrations` VALUES (26, '2021_11_15_201349_create_anggota_ekstrakulikulers_table', 12);
INSERT INTO `migrations` VALUES (27, '2021_11_16_192257_create_k13_mapping_mapels_table', 13);
INSERT INTO `migrations` VALUES (28, '2021_11_17_203756_create_k13_kkm_mapels_table', 14);
INSERT INTO `migrations` VALUES (29, '2021_11_24_220603_create_k13_butir_sikaps_table', 15);
INSERT INTO `migrations` VALUES (30, '2021_11_25_103930_create_k13_kd_mapels_table', 16);
INSERT INTO `migrations` VALUES (31, '2021_11_26_191840_create_k13_tgl_raports_table', 17);
INSERT INTO `migrations` VALUES (32, '2021_11_29_173200_create_k13_rencana_nilai_pengetahuans_table', 18);
INSERT INTO `migrations` VALUES (33, '2021_12_03_213422_create_k13_rencana_nilai_keterampilans_table', 19);
INSERT INTO `migrations` VALUES (34, '2021_12_04_215127_create_k13_rencana_nilai_spirituals_table', 20);
INSERT INTO `migrations` VALUES (35, '2021_12_04_233904_create_k13_rencana_nilai_sosials_table', 21);
INSERT INTO `migrations` VALUES (36, '2021_12_05_001248_create_k13_rencana_bobot_penilaians_table', 22);
INSERT INTO `migrations` VALUES (43, '2021_12_05_093648_create_k13_nilai_pengetahuans_table', 23);
INSERT INTO `migrations` VALUES (44, '2021_12_15_170021_create_k13_nilai_keterampilans_table', 23);
INSERT INTO `migrations` VALUES (45, '2021_12_15_203751_create_k13_nilai_spirituals_table', 23);
INSERT INTO `migrations` VALUES (46, '2021_12_15_224616_create_k13_nilai_sosials_table', 23);
INSERT INTO `migrations` VALUES (50, '2021_12_16_124730_create_k13_nilai_pts_pas_table', 24);
INSERT INTO `migrations` VALUES (52, '2021_12_20_203638_create_k13_nilai_akhir_raports_table', 25);
INSERT INTO `migrations` VALUES (53, '2021_12_20_234314_create_k13_deskripsi_nilai_siswas_table', 26);
INSERT INTO `migrations` VALUES (54, '2021_11_15_201349_create_anggota_ekstrakulikulers_table_lama', 27);
INSERT INTO `migrations` VALUES (55, '2021_12_21_125021_create_anggota_ekstrakulikulers_table', 28);
INSERT INTO `migrations` VALUES (57, '2021_12_21_184803_create_nilai_ekstrakulikulers_table', 29);
INSERT INTO `migrations` VALUES (58, '2021_12_22_013547_create_kehadiran_siswas_table', 30);
INSERT INTO `migrations` VALUES (59, '2021_12_22_015626_create_prestasi_siswas_table', 31);
INSERT INTO `migrations` VALUES (60, '2021_12_22_124942_create_catatan_wali_kelas_table', 32);
INSERT INTO `migrations` VALUES (61, '2021_12_30_200405_create_k13_deskripsi_sikap_siswas_table', 33);
INSERT INTO `migrations` VALUES (62, '2022_01_02_185835_create_ktsp_mapping_mapels_table', 34);
INSERT INTO `migrations` VALUES (63, '2022_01_02_194411_create_ktsp_kkm_mapels_table', 35);
INSERT INTO `migrations` VALUES (64, '2022_01_02_201458_create_ktsp_tgl_raports_table', 36);
INSERT INTO `migrations` VALUES (65, '2022_01_03_190838_create_ktsp_bobot_penilaians_table', 37);
INSERT INTO `migrations` VALUES (66, '2022_01_03_195440_create_ktsp_nilai_tugas_table', 38);
INSERT INTO `migrations` VALUES (67, '2022_01_03_203404_create_ktsp_nilai_uhs_table', 39);
INSERT INTO `migrations` VALUES (68, '2022_01_03_210334_create_ktsp_nilai_uts_uas_table', 40);
INSERT INTO `migrations` VALUES (69, '2022_01_03_225023_create_ktsp_nilai_akhir_raports_table', 41);
INSERT INTO `migrations` VALUES (70, '2022_01_03_232637_create_ktsp_deskripsi_nilai_siswas_table', 42);
INSERT INTO `migrations` VALUES (71, '2022_01_07_101419_create_pengumumen_table', 43);
INSERT INTO `migrations` VALUES (79, '2022_01_08_220617_create_kenaikan_kelas_table', 44);
INSERT INTO `migrations` VALUES (80, '2025_02_20_999999_add_active_status_to_users', 44);
INSERT INTO `migrations` VALUES (81, '2025_02_20_999999_add_avatar_to_users', 44);
INSERT INTO `migrations` VALUES (82, '2025_02_20_999999_add_dark_mode_to_users', 44);
INSERT INTO `migrations` VALUES (83, '2025_02_20_999999_add_messenger_color_to_users', 44);
INSERT INTO `migrations` VALUES (84, '2025_02_20_999999_create_chatify_favorites_table', 44);
INSERT INTO `migrations` VALUES (85, '2025_02_20_999999_create_chatify_messages_table', 44);

-- ----------------------------
-- Table structure for nilai_ekstrakulikuler
-- ----------------------------
DROP TABLE IF EXISTS `nilai_ekstrakulikuler`;
CREATE TABLE `nilai_ekstrakulikuler`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ekstrakulikuler_id` bigint UNSIGNED NOT NULL,
  `anggota_ekstrakulikuler_id` bigint UNSIGNED NOT NULL,
  `nilai` enum('4','3','2','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nilai_ekstrakulikuler_ekstrakulikuler_id_foreign`(`ekstrakulikuler_id` ASC) USING BTREE,
  INDEX `nilai_ekstrakulikuler_anggota_ekstrakulikuler_id_foreign`(`anggota_ekstrakulikuler_id` ASC) USING BTREE,
  CONSTRAINT `nilai_ekstrakulikuler_anggota_ekstrakulikuler_id_foreign` FOREIGN KEY (`anggota_ekstrakulikuler_id`) REFERENCES `anggota_ekstrakulikuler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nilai_ekstrakulikuler_ekstrakulikuler_id_foreign` FOREIGN KEY (`ekstrakulikuler_id`) REFERENCES `ekstrakulikuler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nilai_ekstrakulikuler
-- ----------------------------
INSERT INTO `nilai_ekstrakulikuler` VALUES (59, 3, 173, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (60, 3, 174, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (61, 3, 175, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (62, 3, 176, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (63, 3, 177, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (64, 3, 178, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (65, 3, 179, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:50', '2021-12-21 23:08:50');
INSERT INTO `nilai_ekstrakulikuler` VALUES (66, 3, 180, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (67, 3, 181, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (68, 3, 182, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (69, 3, 183, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (70, 3, 184, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (71, 3, 185, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (72, 3, 186, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (73, 3, 187, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (74, 3, 188, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (75, 3, 189, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (76, 3, 190, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (77, 3, 191, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (78, 3, 192, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (79, 3, 193, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (80, 3, 194, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (81, 3, 195, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (82, 3, 196, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (83, 3, 197, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (84, 3, 198, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (85, 3, 199, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:09:49');
INSERT INTO `nilai_ekstrakulikuler` VALUES (86, 3, 200, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:09:26');
INSERT INTO `nilai_ekstrakulikuler` VALUES (87, 3, 201, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:08:51', '2021-12-21 23:08:51');
INSERT INTO `nilai_ekstrakulikuler` VALUES (88, 2, 231, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (89, 2, 232, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (90, 2, 119, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (91, 2, 120, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (92, 2, 121, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (93, 2, 122, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (94, 2, 123, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (95, 2, 124, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (96, 2, 125, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (97, 2, 126, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (98, 2, 128, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (99, 2, 129, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (100, 2, 130, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (101, 2, 131, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (102, 2, 132, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (103, 2, 133, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (104, 2, 134, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (105, 2, 135, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (106, 2, 127, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (107, 2, 136, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (108, 2, 138, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (109, 2, 139, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (110, 2, 140, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (111, 2, 141, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (112, 2, 142, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (113, 2, 137, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (114, 2, 143, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (115, 2, 144, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (116, 2, 145, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 23:12:04', '2021-12-21 23:12:04');
INSERT INTO `nilai_ekstrakulikuler` VALUES (117, 3, 146, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (118, 3, 147, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (119, 3, 148, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (120, 3, 149, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (121, 3, 150, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (122, 3, 151, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (123, 3, 152, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (124, 3, 153, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (125, 3, 154, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (126, 3, 155, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (127, 3, 156, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (128, 3, 157, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (129, 3, 158, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (130, 3, 159, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (131, 3, 160, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (132, 3, 161, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (133, 3, 162, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (134, 3, 164, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (135, 3, 163, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (136, 3, 165, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (137, 3, 166, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (138, 3, 167, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (139, 3, 168, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (140, 3, 169, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (141, 3, 170, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (142, 3, 171, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (143, 3, 172, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:14:32', '2021-12-21 23:14:32');
INSERT INTO `nilai_ekstrakulikuler` VALUES (144, 3, 202, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (145, 3, 203, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (146, 3, 204, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (147, 3, 205, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (148, 3, 206, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (149, 3, 207, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (150, 3, 208, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (151, 3, 209, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (152, 3, 210, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (153, 3, 211, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (154, 3, 213, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (155, 3, 214, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (156, 3, 215, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (157, 3, 216, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (158, 3, 217, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (159, 3, 218, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (160, 3, 219, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (161, 3, 220, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (162, 3, 212, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (163, 3, 221, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (164, 3, 223, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (165, 3, 224, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (166, 3, 225, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (167, 3, 226, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (168, 3, 227, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (169, 3, 222, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (170, 3, 228, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (171, 3, 229, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');
INSERT INTO `nilai_ekstrakulikuler` VALUES (172, 3, 230, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 23:15:25', '2021-12-21 23:15:25');

-- ----------------------------
-- Table structure for pembelajaran
-- ----------------------------
DROP TABLE IF EXISTS `pembelajaran`;
CREATE TABLE `pembelajaran`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint UNSIGNED NOT NULL,
  `mapel_id` bigint UNSIGNED NOT NULL,
  `guru_id` bigint UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pembelajaran_kelas_id_foreign`(`kelas_id` ASC) USING BTREE,
  INDEX `pembelajaran_mapel_id_foreign`(`mapel_id` ASC) USING BTREE,
  INDEX `pembelajaran_guru_id_foreign`(`guru_id` ASC) USING BTREE,
  CONSTRAINT `pembelajaran_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pembelajaran_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pembelajaran_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 360 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembelajaran
-- ----------------------------
INSERT INTO `pembelajaran` VALUES (281, 9, 32, 65, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (282, 9, 33, 59, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (283, 9, 34, 58, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (284, 9, 35, 65, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (285, 9, 36, 57, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (286, 9, 37, 56, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (287, 9, 38, 64, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (288, 9, 39, 62, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (289, 9, 40, 61, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (290, 9, 41, 66, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (291, 9, 42, 63, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (292, 9, 43, 63, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (293, 9, 44, 55, 1, '2021-11-29 12:23:47', '2021-11-29 12:23:47');
INSERT INTO `pembelajaran` VALUES (294, 10, 32, 65, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (295, 10, 33, 59, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (296, 10, 34, 58, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (297, 10, 35, 65, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (298, 10, 36, 57, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (299, 10, 37, 56, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (300, 10, 38, 64, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (301, 10, 39, 62, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (302, 10, 40, 61, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (303, 10, 41, 66, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (304, 10, 42, 63, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (305, 10, 43, 63, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (306, 10, 44, 55, 1, '2021-11-29 12:27:24', '2021-11-29 12:27:24');
INSERT INTO `pembelajaran` VALUES (307, 11, 32, 65, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (308, 11, 33, 59, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (309, 11, 34, 58, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (310, 11, 35, 65, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (311, 11, 36, 57, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (312, 11, 37, 56, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (313, 11, 38, 64, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (314, 11, 39, 62, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (315, 11, 40, 61, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (316, 11, 41, 66, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (317, 11, 42, 63, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (318, 11, 43, 63, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (319, 11, 44, 55, 1, '2021-11-29 15:14:56', '2021-11-29 15:14:56');
INSERT INTO `pembelajaran` VALUES (320, 12, 32, 65, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (321, 12, 33, 59, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (322, 12, 34, 58, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (323, 12, 35, 65, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (324, 12, 36, 57, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (325, 12, 37, 56, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (326, 12, 38, 64, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (327, 12, 39, 62, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (328, 12, 40, 61, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (329, 12, 41, 66, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (330, 12, 42, 63, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (331, 12, 43, 63, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (332, 12, 44, 55, 1, '2021-11-29 15:16:42', '2021-11-29 15:16:42');
INSERT INTO `pembelajaran` VALUES (347, 13, 32, 65, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (348, 13, 33, 59, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (349, 13, 34, 58, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (350, 13, 35, 65, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (351, 13, 36, 57, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (352, 13, 37, 56, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (353, 13, 38, 64, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (354, 13, 39, 62, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (355, 13, 40, 61, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (356, 13, 41, 66, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (357, 13, 42, 63, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (358, 13, 43, 63, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');
INSERT INTO `pembelajaran` VALUES (359, 13, 44, 55, 1, '2021-11-29 15:42:28', '2021-11-29 15:42:28');

-- ----------------------------
-- Table structure for pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pengumuman_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `pengumuman_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengumuman
-- ----------------------------
INSERT INTO `pengumuman` VALUES (5, 1, 'Ganti Password', '<p>Demi keamanan data, diharapkan kepada semua user untuk segera melakukan penggantian password.</p><p>Data pada akun anda sepenuhnya menjadi tanggung jawab anda.</p>', '2022-01-07 12:49:31', '2022-01-07 14:15:09');

-- ----------------------------
-- Table structure for prestasi_siswa
-- ----------------------------
DROP TABLE IF EXISTS `prestasi_siswa`;
CREATE TABLE `prestasi_siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `anggota_kelas_id` bigint UNSIGNED NOT NULL,
  `jenis_prestasi` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `prestasi_siswa_anggota_kelas_id_foreign`(`anggota_kelas_id` ASC) USING BTREE,
  CONSTRAINT `prestasi_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prestasi_siswa
-- ----------------------------
INSERT INTO `prestasi_siswa` VALUES (1, 97, '1', 'The next generation of the web’s favorite icon library + toolkit is now available as a Beta release! Try out the Free version. Subscribe to Font Awesome Pro to get even more!', '2021-12-22 03:38:54', '2021-12-22 03:38:54');
INSERT INTO `prestasi_siswa` VALUES (4, 100, '2', 'Layanan gratis Google secara instan menerjemahkan kata, frasa, dan halaman web antara bahasa Inggris dan lebih dari 100 bahasa lainnya.', '2021-12-22 13:28:11', '2021-12-22 13:28:11');
INSERT INTO `prestasi_siswa` VALUES (5, 98, '2', 'Menerjemahkan ucapan hampir secara real-time dan berkelanjutan. Dapatkan di Google Play · Tersedia di App Store. Bicara dengan dunia. Terhubung dengan', '2021-12-22 13:28:42', '2021-12-22 13:28:42');
INSERT INTO `prestasi_siswa` VALUES (6, 97, '2', 'I need to repeat the header of the invoice template when multiple pages are available ... If it is done in HTML you must put an id in the header and footer.', '2021-12-31 22:49:50', '2021-12-31 22:49:50');

-- ----------------------------
-- Table structure for riwayat_login
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_login`;
CREATE TABLE `riwayat_login`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_login` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `riwayat_login_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `riwayat_login_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of riwayat_login
-- ----------------------------
INSERT INTO `riwayat_login` VALUES (1, 1, 1, '2021-10-29 18:26:46', '2025-02-20 12:37:40');
INSERT INTO `riwayat_login` VALUES (2, 2, 0, '2021-10-31 16:30:43', '2022-01-07 12:14:01');
INSERT INTO `riwayat_login` VALUES (3, 87, 0, '2021-11-29 00:18:11', '2021-11-29 15:00:54');
INSERT INTO `riwayat_login` VALUES (4, 86, 0, '2021-11-29 15:01:08', '2022-01-07 19:46:24');
INSERT INTO `riwayat_login` VALUES (5, 97, 0, '2021-11-29 15:48:12', '2022-01-09 00:15:24');
INSERT INTO `riwayat_login` VALUES (6, 92, 0, '2021-12-22 14:03:40', '2022-01-08 23:30:39');
INSERT INTO `riwayat_login` VALUES (7, 88, 0, '2021-12-24 01:07:02', '2021-12-24 01:08:23');
INSERT INTO `riwayat_login` VALUES (8, 184, 0, '2022-01-02 05:11:48', '2022-01-07 21:17:01');
INSERT INTO `riwayat_login` VALUES (9, 374, 0, '2022-01-02 16:33:32', '2022-01-02 16:51:47');
INSERT INTO `riwayat_login` VALUES (10, 212, 0, '2022-01-02 16:52:04', '2022-01-02 18:38:23');
INSERT INTO `riwayat_login` VALUES (11, 352, 0, '2022-01-02 18:38:34', '2022-01-06 20:09:55');
INSERT INTO `riwayat_login` VALUES (12, 211, 0, '2022-01-02 18:39:55', '2022-01-06 15:32:40');
INSERT INTO `riwayat_login` VALUES (13, 362, 0, '2022-01-02 18:51:13', '2022-01-02 18:56:28');
INSERT INTO `riwayat_login` VALUES (14, 403, 0, '2022-01-04 14:21:48', '2022-01-04 14:28:57');
INSERT INTO `riwayat_login` VALUES (15, 354, 0, '2022-01-06 15:31:56', '2022-01-06 15:32:12');
INSERT INTO `riwayat_login` VALUES (16, 98, 1, '2022-01-08 23:53:21', '2025-02-20 13:02:42');

-- ----------------------------
-- Table structure for sekolah
-- ----------------------------
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nss` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_pos` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telpon` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepala_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_kepala_sekolah` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sekolah
-- ----------------------------
INSERT INTO `sekolah` VALUES (1, 'SMP 1 MOYO HULU', '69830085', '123654698654987', '62353', '085232077932', 'Jln. Lintas Sumbawa-Lunyuk Kec. Moyo Hulu.', NULL, 'sekolahindonesia@mail.com', 'logo.png', 'MOCH. MUNIR, S.E.', '300519986532365987', '2021-10-31 18:33:30', '2024-12-22 10:51:57');

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `kelas_id` bigint UNSIGNED NULL DEFAULT NULL,
  `jenis_pendaftaran` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` enum('1','2','3','4','5','6','7') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_dalam_keluarga` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pekerjaan_wali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `siswa_user_id_unique`(`user_id` ASC) USING BTREE,
  UNIQUE INDEX `siswa_nis_unique`(`nis` ASC) USING BTREE,
  UNIQUE INDEX `siswa_nisn_unique`(`nisn` ASC) USING BTREE,
  UNIQUE INDEX `siswa_nomor_hp_unique`(`nomor_hp` ASC) USING BTREE,
  INDEX `siswa_kelas_id_foreign`(`kelas_id` ASC) USING BTREE,
  CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 303 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (85, 183, 9, '1', '310', '0084692742', 'A. RIFQI KHILMI', 'Tuban', '2008-08-08', 'L', '1', '1', '1', 'Dasin', NULL, 'ROHMAD', 'SHOFI\'UL NASAROH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:03', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (86, 184, 9, '1', '311', '0099050329', 'ACHMAD FAHRI ALI KAFABY', 'Tuban', '2009-02-23', 'L', '1', '1', '1', 'Mander', NULL, 'Durjamid', 'Khoirom', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (87, 185, 9, '1', '312', '0096538165', 'AHMAD AKHABBANI MUKHITH', 'Tuban', '2009-02-19', 'L', '1', '1', '4', 'Dasin', NULL, 'BASARUDDIN', 'NGATEMI', 'Pedagang Kecil', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (88, 186, 9, '1', '313', '0088667972', 'AHMADA ROMADLONANSYAH WAFA', 'Tuban', '2008-09-14', 'L', '1', '1', '1', 'Merkawang', NULL, 'BASAR', 'RIWAYATI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (89, 187, 9, '1', '314', '0097638568', 'ALVAN ULIL ABSHOR', 'Tuban', '2009-01-17', 'L', '1', '1', '2', 'Dasin', NULL, 'KHAMDANI', 'SRI SULISTIYOWATI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (90, 188, 9, '1', '318', '0093180560', 'ATIK SOIMATUL AULIYA', 'Tuban', '2009-08-24', 'P', '1', '1', '1', 'Dasin', NULL, 'WAWAN EKO DIYANTO', 'SITI WAHYUNI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (91, 189, 9, '1', '319', '0091052558', 'DAFFA KURNIAWAN', 'Jakarta', '2009-04-20', 'L', '1', '1', '2', 'Bogorejo', NULL, 'Rahmat Setiaji', 'Desi Kurniawati', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (92, 190, 9, '1', '322', '0081366086', 'ERDIVA BERLIANA PUTRI', 'TUBAN', '2008-08-24', 'P', '1', '1', '1', 'SAWIR', NULL, 'MULYADI', 'ISMIYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (93, 191, 9, '1', '323', '0081791744', 'EUIS LUTHFIANA ISTIQOMAH', 'Tuban', '2008-12-27', 'P', '1', '1', '1', 'Bancar', NULL, 'SAEFULLOH', 'ARSALAH HIBDIYAH', 'Karyawan Swasta', 'Karyawan Swasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:04', '2021-11-15 20:51:20');
INSERT INTO `siswa` VALUES (94, 192, NULL, '1', '001', '3087484193', 'FACHREZA IFNU REFANDI', 'TUBAN', '2008-11-19', 'L', '1', '1', '1', 'SAWIR', NULL, 'SLAMET WINARDI', 'SOLIKATUN', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '2', '2021-11-06 22:36:05', '2021-11-07 15:39:42');
INSERT INTO `siswa` VALUES (95, 193, 9, '1', '324', '0089275532', 'FAIZATUN MAQFUROH', 'Tuban', '2008-01-02', 'P', '1', '1', '3', 'Mander', NULL, 'Kurdi', 'Aminah', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:05', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (96, 194, 9, '1', '327', '0095407122', 'FINA NAILATUL IZAH', 'Tuban', '2009-01-24', 'P', '1', '1', '1', 'Dasin', NULL, 'TAMZIDUN', 'SITI ROATUL IZAH', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:05', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (97, 195, 9, '1', '331', '0096456062', 'JHOHANDA HILWA KIWAMIL BAHRI', 'Tuban', '2009-02-13', 'L', '1', '1', '2', 'Margosuko', NULL, 'Saiful Bakri', 'Hartatik', 'PNS/TNI/Polri', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:05', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (98, 196, 9, '1', '332', '0083429609', 'KHULAFAUR ROSYIDIN', 'Tuban', '2008-09-01', 'L', '1', '1', '2', 'Merkawang', NULL, 'KUSAERI', 'SRI NANIK', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:05', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (99, 197, 9, '1', '334', '0092885435', 'LUKMAN ARDIANSYAH ROMADHONI', 'Tuban', '2009-09-11', 'L', '1', '1', '1', 'Pulogede', NULL, 'KUSAERI', 'LASMINI', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:05', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (100, 198, 9, '1', '335', '0088639939', 'LUKMAN DIYANTO', 'Tuban', '2008-03-27', 'L', '1', '1', '4', 'Mander', NULL, 'Darkum', 'Sunarsi', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:05', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (101, 199, 9, '1', '337', '0082288885', 'M.SHIHABUDDIN AL MUSAHHALI', 'TUBAN', '2008-05-12', 'L', '1', '1', '2', 'DASIN', NULL, 'KISBU WAHUDAH', 'SITI ROHMAH', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (102, 200, 9, '1', '339', '0091117221', 'MIZTA ILMA AMELIYA', 'TUBAN', '2009-01-01', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'WARSONO', 'ENIK PUJIATI', 'Wiraswasta', 'Tidak dapat diterapkan', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (103, 201, 9, '1', '340', '0097556883', 'MOCH. ALVANSYAH', 'Tuban', '2009-10-06', 'L', '1', '1', '1', 'SOTANG', NULL, 'SAHLAN', 'MARLIK', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:54:11');
INSERT INTO `siswa` VALUES (104, 202, 9, '1', '342', '0089312800', 'MONICA ARTHA ZHARANI', 'Tuban', '2008-10-20', 'P', '1', '1', '1', 'Dasin', NULL, 'JANUAR PRIBADI', 'DARWATI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:52:35');
INSERT INTO `siswa` VALUES (105, 203, 9, '1', '347', '3099025171', 'NABILA NAURA HARTANTO', 'Tuban', '2009-04-08', 'P', '1', '1', '1', 'Kebonsari', NULL, 'IWAN HARTANTO', 'LUSMIANA', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (106, 204, 9, '1', '348', '0085759334', 'NADHIFA NINA OKTAFIA', 'Tuban', '2008-10-09', 'P', '1', '1', '3', 'Sokogunung', NULL, 'Suyono', 'Siti Sopiyatun', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (107, 205, 9, '1', '349', '3086594378', 'NADINA KHAESWAROH OLIVIA', 'Tuban', '2008-06-20', 'P', '1', '1', '1', 'Pabeyan', NULL, 'MUHAJIRIN', 'ATIK ROSIDAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (108, 206, 9, '1', '350', '0096821665', 'NANDA BAKTIAR PRATAMA', 'Tuban', '2009-10-08', 'L', '1', '1', '1', 'SOTANG', NULL, 'DAMUJI', 'YUYUN NURLAELA', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:06', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (109, 207, 9, '1', '354', '0099013780', 'NUR RIFKI ALI MUBAROK', 'Tuban', '2009-07-08', 'L', '1', '1', '1', 'Cokrowati', NULL, 'DASMO PRIYADI', 'SULASTRI', 'Lainnya', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (110, 208, 9, '1', '355', '0088892184', 'PAMA NAISILA OKTAVIANI', 'Tuban', '2008-10-12', 'P', '1', '1', '2', 'Merkawang', NULL, 'KUSAERI', 'SAMONAH', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (111, 209, 9, '1', '362', '0098363297', 'THORIQUL ILMI SHOFIANADZIR', 'Tuban', '2009-01-22', 'L', '1', '1', '1', 'Merkawang', NULL, 'JAYADI', 'SUSANAH', 'Karyawan Swasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (112, 210, 9, '1', '364', '3082355717', 'WASIYAT', 'Tuban', '2008-06-18', 'L', '1', '1', '1', 'Sawir', NULL, 'KUSAERI', 'TUNTUM', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:55:20');
INSERT INTO `siswa` VALUES (113, 211, 10, '1', '315', '0097720825', 'ALVIN ULIL ALBAB', 'Tuban', '2009-01-17', 'L', '1', '1', '3', 'Dasin', NULL, 'KHAMDANI', 'SRI SULISTIYOWATI', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (114, 212, 10, '1', '316', '0081102132', 'AMALIA', 'Tuban', '2008-12-13', 'P', '1', '1', '2', 'Dasin', NULL, 'WARSADI', 'MASRINGAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (115, 213, 10, '1', '317', '0089198651', 'ANDIKA LESTARI', 'TUBAN', '2008-08-05', 'L', '1', '1', '1', 'PLAJAN', NULL, 'KUSTARI', 'TRI SULASIH', 'Petani', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (116, 214, 10, '1', '320', '0091799882', 'DENDI NAUFAL AL AZIZ', 'Tuban', '2009-01-08', 'L', '1', '1', '1', 'Cokrowati', NULL, 'BAKIR', 'SRIYANA', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (117, 215, 10, '1', '321', '0092667144', 'DHEA FANY ANDRIANI', 'Tuban', '2009-07-08', 'P', '1', '1', '1', 'Margosuko', NULL, 'Suparno', 'Siti Askolati', 'Petani', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:07', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (118, 216, 10, '1', '325', '0082658373', 'FARIH FAKRIYAN AKMAL', 'Tuban', '2008-04-28', 'L', '1', '1', '2', 'Dasin', NULL, 'MASNUR', 'DZINNURIN NAFI AH', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (119, 217, 10, '1', '326', '0086756265', 'FERI AHMAD GHUFRON', 'Tuban', '2008-12-11', 'L', '1', '1', '2', 'Merkawang', NULL, 'KUSAERI', 'SITI RATMIATUN', 'Karyawan Swasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (120, 218, 10, '1', '328', '0096172235', 'GUSTIN EVELLYNA CAHYANI', 'Tuban', '2009-02-21', 'P', '1', '1', '2', 'Margosuko', NULL, 'Ramuji', 'Melip', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (121, 219, 10, '1', '329', '0093048022', 'HELLEN ISSA ARIYANIT', 'Tuban', '2009-01-12', 'P', '1', '1', '2', 'Socorejo', NULL, 'Samid', 'Siti Aisyah', 'Nelayan', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (122, 220, 10, '1', '330', '0092056639', 'IRFA ALIFIA', 'Tuban', '2009-06-20', 'P', '1', '1', '1', 'Dasin', NULL, 'ABDUL ZAENI', 'SITI LATIFAH', 'Wiraswasta', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:56:58');
INSERT INTO `siswa` VALUES (123, 221, 10, '1', '333', '0084953920', 'LINA WATI SAYLINNIKMA', 'TUBAN', '2008-06-01', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'AGUS SUTRISNO', 'SOLIKAH', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (124, 222, 10, '1', '336', '0091113408', 'LUKMAN HIDAYATULLAH', 'Tuban', '2009-02-20', 'L', '1', '1', '1', 'SOTANG', NULL, 'ACHMAD BADRUS', 'DARMINI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (125, 223, 10, '1', '338', '0096484188', 'MIFTAQUR ROUF BILIMMAH', 'Tuban', '2009-07-03', 'L', '1', '1', '1', 'Socorejo', NULL, 'Ta\'lim', 'Khusnul Khotimah', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:08', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (126, 224, 10, '1', '341', NULL, 'MOHAMMAD NI\'AM SAIFULLAH', 'Tuban', '2008-03-02', 'L', '1', '1', '1', 'Sotang', NULL, 'MARJUKI', 'SAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (127, 225, 10, '1', '343', '0093369391', 'MUHAMMAD JIBRAN IRFANI', 'Tuban', '2009-05-04', 'L', '1', '1', '1', 'Socorejo', NULL, 'Muhyidin', 'Wiwin Windarti', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (128, 226, 10, '1', '344', '0085396771', 'MUHAMMAD NOR ROHMAN', 'TUBAN', '2008-08-07', 'L', '1', '1', '1', 'GADON', NULL, 'ECHWAN ISNANTO', 'ELA TEJAWATI', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (129, 227, 10, '1', '345', '0093826376', 'MUHAMMAD RIZKY ADITYA', 'Tuban', '2009-03-15', 'L', '1', '1', '1', 'Dasin', NULL, 'SLAMET', 'RUKAMAH', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (130, 228, 10, '1', '346', '0087592278', 'NABIGHOTUL HUSNIYAH', 'REMBANG', '2008-06-17', 'P', '1', '1', '2', 'SAWIR', NULL, 'MASRUHAN AZ\'AFI', 'INDASAH', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (131, 229, 10, '1', '351', '0087968270', 'NELI ALFI MUTMAINAH', 'Bojonegoro', '2008-06-16', 'P', '1', '1', '3', 'Asemrowo', NULL, 'Saliman', 'Sukarsiningsih', 'Petani', 'Buruh', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (132, 230, 10, '1', '352', '0088965490', 'NOVITA SELVI INDRIYANI', 'Tuban', '2008-11-01', 'P', '1', '1', '1', 'Margosuko', NULL, 'M. Nurul Anwar', 'Awini', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 20:58:27');
INSERT INTO `siswa` VALUES (133, 231, 10, '1', '353', '0086884735', 'NUR AISSYAH', 'Tuban', '2008-11-17', 'P', '1', '1', '2', 'Cokrowati', NULL, 'SUKARMIN', 'RUSMIATI', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:09', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (134, 232, 10, '1', '356', '0097166427', 'RAFIUDDIN ATHAR', 'Tuban', '2009-03-24', 'L', '1', '1', '1', 'Bancar', NULL, 'ATHAR NASIR', 'MUHAYATI', 'Karyawan Swasta', 'Karyawan Swasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (135, 233, 10, '1', '357', '0095551885', 'RIZKY ARIF AFANDI', 'Tuban', '2009-02-28', 'L', '1', '1', '1', 'Mander', NULL, 'Kastono', 'Rusmiati', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (136, 234, 10, '1', '358', '0083469761', 'ROHMATUL BAIM', 'Tuban', '2008-08-31', 'L', '1', '1', '1', 'Dasin', NULL, 'SALIKUN', 'UMASAROH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (137, 235, 10, '1', '359', '0088098912', 'ROSYIDATUL MAHMUDAH', 'TUBAN', '2008-05-31', 'P', '1', '1', '1', 'DASIN', NULL, 'MOH. KHOIRUL ROZIKIN', 'ROCHMAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (138, 236, 10, '1', '360', '0086427009', 'SHELFI OCTAVIA ROESDAH', 'LEBAK', '2008-10-26', 'P', '1', '1', '1', 'BELIKANGET', NULL, 'SUPRIYADI', 'HERLINA DARNIATI', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (139, 237, 10, '1', '361', '3088352695', 'SUSI ARINI', 'Tuban', '2008-10-17', 'P', '1', '1', '1', 'Margosuko', NULL, 'SUWONO', 'CARMI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (140, 238, 10, '1', '363', '0091003580', 'TIYO ALDYYANSAH', 'Tuban', '2009-04-18', 'L', '1', '1', '1', 'Dasin', NULL, 'TARMIJAN', 'KASINI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (141, 239, 10, '1', '365', '3086082338', 'YOGI OKTA MAHENDRA', 'Tuban', '2008-10-10', 'L', '1', '1', '1', 'Margosuko', NULL, 'KUSAERI', 'NINA INDRAWATI', 'Petani', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:36:10', '2021-11-15 21:00:16');
INSERT INTO `siswa` VALUES (228, 329, 12, '2', '235', '0067570625', 'ACHMAD FAIQ MUZAKKIY', 'Tuban', '2006-12-28', 'L', '1', '1', '1', 'Pabeyan', NULL, 'KUSNAN', 'LUDFIYAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-12-21 16:07:50');
INSERT INTO `siswa` VALUES (229, 330, NULL, '2', '237', '0063339111', 'AHMAD SYAIFUDDIN', 'Tuban', '2006-10-17', 'L', '1', '1', '1', 'Tambakboyo', NULL, 'WAKIRAN', 'LASTATIK', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (230, 331, 12, '2', '238', '0068730623', 'AMELIA RAHAYU', 'Tuban', '2006-12-15', 'P', '1', '1', '1', 'Margosuko', NULL, 'Marwan', 'Tiyah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-12-21 16:07:38');
INSERT INTO `siswa` VALUES (231, 332, NULL, '2', '240', '0068609189', 'ARBI FADILLA MUHSAN', 'Tuban', '2006-11-08', 'L', '1', '1', '1', 'Gadon', NULL, 'MUHSIN', 'ANISAH', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (232, 333, NULL, '2', '241', '0069584088', 'ARDHYANTO PRATAMA', 'Nganjuk', '2006-11-12', 'L', '1', '1', '1', 'Gemulung', NULL, 'Sudarmanto', 'Laswati', 'Pedagang Kecil', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (233, 334, NULL, '2', '242', '0056479277', 'AZKA SYARAFINA', 'TUBAN', '2005-11-14', 'P', '1', '1', '1', 'Dasin', NULL, 'NUR CHOLID', 'HIMMATUL HUSNA', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (234, 335, NULL, '2', '244', '0074107388', 'DAFFA MUSTAQIM', 'Tuban', '2007-01-12', 'L', '1', '1', '1', 'Mander', NULL, 'Danuri', 'Jumirah', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (235, 336, NULL, '2', '245', '0065889238', 'DIFANA SALSABILA', 'Tuban', '2006-10-02', 'P', '1', '1', '1', 'Sawir', NULL, 'YANTO SUSILO', 'KUSMIATUN', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:40', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (236, 337, NULL, '2', '246', '3061685791', 'EKARIA ZULSILIS DELIMA NUR HIDAYAH', 'Tuban', '2006-12-05', 'P', '1', '1', '1', 'Pabeyan', NULL, 'WARSAM', 'LILIS RETNO WATI', 'Buruh', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (237, 338, NULL, '2', '252', '0061606985', 'JULIANSAH KHOIRUL UMAM', 'Tuban', '2006-07-19', 'L', '1', '1', '2', 'Mander', NULL, 'Rokim', 'Umayah', 'Wiraswasta', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (238, 339, NULL, '2', '254', '0079264175', 'M. WAHYU REZA AULA FIRDAUS', 'Tuban', '2007-03-03', 'L', '1', '1', '1', 'socorejo', NULL, 'Lasmijan Al Parizi', 'Supriyatin', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (239, 340, NULL, '2', '282', '0067007455', 'MUHAMMAD ZAINUL AZZAN', 'TUBAN', '2006-10-17', 'L', '1', '1', '1', 'SAWIR', NULL, 'MASYHUDI', 'LAS INDAYATI', 'Pedagang Kecil', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (240, 341, NULL, '2', '259', '0066979722', 'NAELATUL MUNA', 'Tuban', '2006-07-03', 'P', '1', '1', '2', 'Sobontoro', NULL, 'Mukhlis', 'Siti Munawaroh', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (241, 342, NULL, '2', '260', '0069534558', 'NANDA DIFA PRATAMA', 'Tuban', '2006-12-22', 'L', '1', '1', '1', 'Merkawang', NULL, 'BUDI UTOMO', 'TUNAFLIFAH', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (242, 343, NULL, '2', '263', '0077498152', 'NUR FAIZATUN NISA', 'TUBAN', '2006-12-11', 'P', '1', '1', '2', 'KRADENAN', NULL, 'WARDJI', 'MARDIYAH', 'Buruh', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (243, 344, NULL, '2', '265', '0064982542', 'NURUL ISTIANAH', 'TUBAN', '2006-08-07', 'P', '1', '1', '1', 'DASIN', NULL, 'JUMALI', 'SITI ZUBAIDAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:41', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (244, 345, NULL, '2', '266', '0071845030', 'PUTRI AMEYLA SARI', 'TUBAN', '2007-05-25', 'P', '1', '1', '1', 'KRADENAN', NULL, 'KARTONO', 'HARTATIK', 'Buruh', 'Buruh', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (245, 346, NULL, '2', '269', '0068636596', 'RIFKA MAULIDA', 'Tuban', '2006-03-29', 'P', '1', '1', '2', 'Kenanti', NULL, 'Kacung Suwasono', 'Wantutik', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (246, 347, NULL, '2', '272', '0061572256', 'ROFII QOTUZ ZULFA', 'Tuban', '2006-06-15', 'P', '1', '1', '1', 'Sobontoro', NULL, 'LASTO', 'DUROH ZULIANA', 'Buruh', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (247, 348, NULL, '2', '275', '0068007916', 'SINTIA RAHMA SAYILA NOVA', 'Tuban', '2006-11-30', 'P', '1', '1', '2', 'Klutuk', NULL, 'Ciptoroso', 'Istiqomah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (248, 349, 11, '2', '276', '0073557892', 'SINTYA NABILA RAHMAWATI', 'Tuban', '2007-03-05', 'P', '1', '1', '1', 'Margosuko', NULL, 'Sempuk Adi Saputro', 'Endang Susilowati', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (249, 350, NULL, '2', '278', '0072206518', 'SRI MU AWANAH', 'TUBAN', '2007-04-25', 'P', '1', '1', '2', 'Dasin', NULL, 'SRIYADI', 'MU AKHIROTUN', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (250, 351, NULL, '2', '280', '0136360617', 'ZAHRA KHOIRUN NISA', 'TUBAN', '2006-12-03', 'P', '1', '1', '1', 'Pulogede', NULL, 'Kholidin', 'MUNIK ASIYAH', 'Karyawan Swasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:42', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (251, 352, NULL, '2', '236', '0068586426', 'AHMAD RAFIUD DAROJAT', 'Tuban', '2006-10-11', 'L', '1', '1', '1', 'Dasin', NULL, 'SAEKON', 'LISIANA', 'Wiraswasta', 'Lainnya', NULL, NULL, 'profile_ahmad rafiud darojat.jpg', '1', '2021-11-06 22:47:42', '2022-01-06 20:05:27');
INSERT INTO `siswa` VALUES (252, 353, NULL, '2', '239', '0068500375', 'ANISA NURUL ALFIYAH', 'Tuban', '2006-09-17', 'P', '1', '1', '1', 'Mander', NULL, 'Suripno', 'Hetty Mursiah', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (253, 354, NULL, '2', '283', '0054128141', 'BENI SANTOSO', 'REMBANG', '2005-02-09', 'L', '1', '1', '3', 'Ds. TAMBAKBOYO', NULL, 'SUNGEDI', 'SITI MUKIAYATUN', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (254, 355, NULL, '2', '243', '0071167688', 'CITRA ARIHA ZAHRA MANANTA', 'Tuban', '2007-01-12', 'P', '1', '1', '1', 'Klutuk', NULL, 'Abdul Manan', 'Roihanah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (255, 356, NULL, '2', '247', '0063192439', 'HENKY GUSFAHDLI', 'Tuban', '2006-08-03', 'L', '1', '1', '1', 'Gemulung', NULL, 'Didik Herwanto', 'Suci Indriyani', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (256, 357, NULL, '2', '248', '0067702592', 'IFSYA ULFAIDAH', 'Tuban', '2006-09-14', 'P', '1', '1', '1', 'Dasin', NULL, 'TARMUDI', 'KAYATUN', 'Karyawan Swasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (257, 358, NULL, '2', '250', '0066311876', 'IZZATUL NURATHIYAH', 'Tuban', '2006-12-01', 'P', '1', '1', '1', 'Pabeyan', NULL, 'MUNAWAR', 'MASATIN', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (258, 359, NULL, '2', '251', '0066072331', 'JIHAN ALFIA NURAINI', 'Tuban', '2006-01-06', 'P', '1', '1', '1', 'Sotang', NULL, 'Sumiran', 'Ririn Iswati', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (259, 360, NULL, '2', '255', '0074953372', 'MARTA VIVI IFRIKA', 'TUBAN', '2007-03-25', 'P', '1', '1', '1', 'DASIN', NULL, 'TAMU', 'SRI WAHYUNI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:43', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (260, 361, NULL, '2', '257', '0071047031', 'MOHAMAD RIFQI MUKAFFA', 'Tuban', '2007-07-25', 'L', '1', '1', '2', 'Merkawang', NULL, 'KASTUR', 'JUMINI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (261, 362, 11, '2', '258', '0063420344', 'MUHAMMAD YUSUF MAULANA', 'Tuban', '2006-06-25', 'L', '1', '1', '1', 'Pabeyan', NULL, 'ZAENURI', 'ROFIUL INAYAH', 'Buruh', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (262, 363, NULL, '2', '261', '0075420522', 'NILNA MINAHAZZAHROH', 'TUBAN', '2007-05-01', 'P', '1', '1', '1', 'Dasin', NULL, 'LASMUJI', 'MASLUROH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (263, 364, NULL, '2', '262', '0065308881', 'NUNGKI WIDIYANTO', 'Tuban', '2006-07-26', 'L', '1', '1', '2', 'Klutuk', NULL, 'KUSTONO', 'YULIYANTO', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (264, 365, NULL, '2', '267', '0064466847', 'RAUDHATUL JANNAH', 'KOTABARU', '2006-12-24', 'P', '1', '1', '2', 'Sukadamai', NULL, 'M. BISRUL', 'SAIMI', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (265, 366, NULL, '2', '268', '0067766770', 'RIANA SHOVI AFIDA', 'Tuban', '2006-12-21', 'P', '1', '1', '1', 'Dasin', NULL, 'TARNO', 'NURWATIN', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (266, 367, NULL, '2', '270', '0073484580', 'RISMA AMELIA', 'Tuban', '2007-04-06', 'P', '1', '1', '1', 'Klutuk', NULL, 'AINUR ROFIK', 'TIN MARPUAH', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (267, 368, NULL, '2', '271', '0061446644', 'RIZKI RIANSYAH', 'Tuban', '2006-12-09', 'L', '1', '1', '1', 'Gemulung', NULL, 'Samuri', 'Kunanik', 'PNS/TNI/Polri', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:44', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (268, 369, NULL, '2', '273', '0076817435', 'SALSA NUR AFIFAH', 'TUBAN', '2007-04-19', 'P', '1', '1', '1', 'DASIN', NULL, 'SOLIKIN', 'SITI N.', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (269, 370, NULL, '2', '274', '0075583524', 'SILVIYYA WARDATIN', 'TUBAN', '2007-06-14', 'P', '1', '1', '1', 'Dasin', NULL, 'TASMIN', 'UMILAILA', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (270, 371, NULL, '2', '277', '0068608517', 'SITI LAILY ZAKIYAH', 'TUBAN', '2006-12-14', 'P', '1', '1', '1', 'DASIN', NULL, 'TASIRUN', 'DJASMI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (271, 372, NULL, '2', '279', '0064981547', 'YUNI MIFTAKHUL KHOLIFAH', 'TUBAN', '2006-08-01', 'P', '1', '1', '2', 'Mander', NULL, 'DARSAM', 'SULIMAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (272, 373, 11, '2', '366', '0085824374', 'AHMAD IQBAL BAIHAQI', 'Tuban', '2008-07-21', 'L', '1', '1', '1', 'Pabeyan', NULL, 'KASDAR', 'CHUROTUL WIDAT', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (273, 374, 11, '2', '284', '0073611986', 'AHSANUL MUJAHIDIN', 'TUBAN', '2007-09-05', 'L', '1', '1', '1', 'Margosuko', NULL, 'MUZAID', 'KUSMIATI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (274, 375, 11, '2', '285', '0078468402', 'ANDI MATHLABIL HIKAM', 'Tuban', '2007-11-14', 'L', '1', '1', '1', 'Merkawang', NULL, 'MUHAMMAD NURI ECHSAN', 'SITI MASKHANAH ', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (275, 376, 11, '2', '286', '0089137461', 'DITA HENDRA PRATAMA', 'TUBAN', '2008-08-27', 'L', '1', '1', '1', 'GEMULUNG', NULL, 'DARYONO', 'KASTI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (276, 377, 11, '2', '287', '0071193863', 'DIVA SANDRA ABELLIA PUTRI', 'Tuban', '2007-12-14', 'P', '1', '1', '1', 'Cokrowati', NULL, 'Hadi', 'Dina Astutik', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:45', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (277, 378, 11, '2', '288', '0082864344', 'ESTY AININ NADZIROH', 'Tuban', '2008-01-30', 'P', '1', '1', '1', 'Margosuko', NULL, 'Edi Priyono', 'Siti Asiyah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (278, 379, 11, '2', '289', '0086384426', 'FERLITA SARIFATUN NIKMAH', 'Tuban', '2008-02-06', 'P', '1', '1', '1', 'Margosuko', NULL, 'Ramuji', 'Melip', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (279, 380, 11, '2', '290', '0074256091', 'FIDIA ANAIDA', 'TUBAN', '2007-04-01', 'P', '1', '1', '2', 'Belikanget', NULL, 'DASUM', 'YASMI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (280, 381, 11, '2', '291', '0076554168', 'FILHA DINI ASMARANI', 'Tuban', '2007-11-06', 'P', '1', '1', '1', 'DASIN', NULL, 'MOCH AINUR ROFIQ', 'MUNTIKAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (281, 382, 11, '2', '292', '0083818653', 'HELVI IZZA APRILIA', 'TUBAN', '2008-04-12', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'PRIYADI', 'RUKINAH', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:02:37');
INSERT INTO `siswa` VALUES (282, 383, 11, '2', '293', '0078546004', 'KHOIRUT TAMAM', 'TUBAN', '2007-07-28', 'L', '1', '1', '1', 'Dasin', NULL, 'TAMSU', 'KHOTIMAH', 'Sudah Meninggal', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (283, 384, 11, '2', '367', '0076593298', 'M. ASHROF MAZID FURQONI', 'Tuban', '2007-12-28', 'L', '1', '1', '1', 'Pabeyan', NULL, 'NUR CAHAYA', 'KHALIMATUS SA\'ADAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:46', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (284, 385, 11, '2', '368', '0074063223', 'M. CHABIBUL LATIF', 'Tuban', '2007-11-15', 'L', '1', '1', '1', 'Pabeyan', NULL, 'NASIKIN', 'SULIYATI', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (285, 386, NULL, '2', '294', '0084644199', 'MAULANA EKCEL ERSULA UTAMA', 'Tuban', '2008-03-18', 'L', '1', '1', '1', 'Socorejo', NULL, 'Sulaiman', 'Ernawati', 'Karyawan Swasta', 'Karyawan Swasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (286, 387, 11, '2', '295', '0076622716', 'MOHAMAD RIFQI ABDILLAH', 'Tuban', '2007-02-26', 'L', '1', '1', '1', 'Margosuko', NULL, 'Sodikun', 'Enik Purwati', 'Nelayan', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (287, 388, 11, '2', '296', '0087359337', 'MUHAMMAD AQIM YAMIN SIMAL', 'TUBAN', '2008-04-14', 'L', '1', '1', '2', 'GADON', NULL, 'MUHAMMAD HADI SUTIKNO', 'MUKHOLIFAH', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (288, 389, 11, '2', '297', '0078178085', 'MUHAMMAD HILAL RIDHO', 'Tuban', '2007-04-19', 'L', '1', '1', '1', 'Pulogede', NULL, 'Ikhwan', 'Nurhidayatin', 'PNS/TNI/Polri', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (289, 390, 11, '2', '298', '0061626567', 'MUHAMMAD NUR ROHMAN', 'TUBAN', '2007-01-25', 'L', '1', '1', '1', 'Merkawang', NULL, 'KUSAERI', 'SRI NANIK', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (290, 391, 11, '2', '299', '0088334793', 'MUHAMMAD RIFQI SAPUTRA', 'TUBAN', '2008-03-08', 'L', '1', '1', '2', 'GLONDONGGEDE', NULL, 'RIDWAN', 'RUKHAYAH', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (291, 392, 11, '2', '300', '0072043755', 'MUHAMMAD ZAKKA ADLY FAIRUZH', 'Tuban', '2007-10-30', 'L', '1', '1', '1', 'Karangasem', NULL, 'Ahmad Nuri', 'Sumarni', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:47', '2021-11-15 21:03:57');
INSERT INTO `siswa` VALUES (292, 393, NULL, '2', '301', '3076280716', 'NABILA HIMAYA MILLATI', 'TUBAN', '2007-11-27', 'P', '1', '1', '2', 'KENANTI', NULL, 'MUNAJI', 'SUYATI', 'Nelayan', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-07 01:07:01');
INSERT INTO `siswa` VALUES (293, 394, 11, '2', '302', '0083022551', 'NADYA SAFWAH NAJLATUN NAQIYYAH', 'Tuban', '2008-06-06', 'P', '1', '1', '1', 'Margosuko', NULL, 'Zainul', 'Siti Rofi ah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (294, 395, 11, '2', '303', '0071297839', 'NURIL LATIFAH', 'TUBAN', '2007-05-21', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'PRIYADI', 'SITI WAKURANAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (295, 396, 11, '2', '304', '0085561201', 'ROGHIBUR ROHMAN', 'TUBAN', '2008-03-29', 'L', '1', '1', '1', 'Dasin', NULL, 'KASNARI', 'SOFI\'AH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (296, 397, 11, '2', '305', '0083461721', 'SELVIRA ANINDYA LABIBAH', 'TUBAN', '2008-07-13', 'P', '1', '1', '2', 'Pulogede', NULL, 'IMAM', 'CARMI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (297, 398, 11, '2', '306', '0084751537', 'SILVIA CHOIRUN NIHAYAH', 'TUBAN', '2008-02-11', 'P', '1', '1', '2', 'SOBONTORO', NULL, 'SUWARDI', 'ALIF FATU\'AH', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (298, 399, 11, '2', '307', '0087363754', 'SITI KHOIRUN NISA', 'Tuban', '2008-01-22', 'P', '1', '1', '1', 'Dasin', NULL, 'AHMAD RAEHAN', 'RASMUTI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (299, 400, 11, '2', '369', '0081600941', 'SYAIFUDDIN ZUHRI', 'Tuban', '2008-05-23', 'L', '1', '1', '1', 'Pabeyan', NULL, 'MASNURI', 'SITI MAKRIFAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (300, 401, 11, '2', '308', '0086330248', 'SYITA AZZAHRA', 'Tuban', '2008-01-30', 'P', '1', '1', '1', 'Sobontoro', NULL, 'Moh. Arif Efendy', 'Clara Wanalita', 'Karyawan Swasta', 'PNS/TNI/Polri', NULL, NULL, 'default.png', '1', '2021-11-06 22:47:48', '2021-11-15 21:09:48');
INSERT INTO `siswa` VALUES (301, 402, NULL, '1', '002', NULL, 'NUR AINI', 'Tuban', '2021-10-31', 'P', '1', '1', '2', 'Dikir', NULL, 'Wasono', 'Darmini', 'Petani', 'IRT', NULL, NULL, 'default.png', '2', '2021-11-07 15:01:32', '2021-11-07 15:28:47');

-- ----------------------------
-- Table structure for siswa_keluar
-- ----------------------------
DROP TABLE IF EXISTS `siswa_keluar`;
CREATE TABLE `siswa_keluar`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `keluar_karena` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `alasan_keluar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `siswa_keluar_siswa_id_unique`(`siswa_id` ASC) USING BTREE,
  CONSTRAINT `siswa_keluar_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa_keluar
-- ----------------------------
INSERT INTO `siswa_keluar` VALUES (4, 301, 'Mutasi', '2021-11-07', 'Percobaan', '2021-11-07 15:28:47', '2021-11-07 15:28:47');
INSERT INTO `siswa_keluar` VALUES (5, 94, 'Mutasi', '2021-10-31', 'Tanpa Keterangan', '2021-11-07 15:39:42', '2021-11-07 15:39:42');

-- ----------------------------
-- Table structure for tapel
-- ----------------------------
DROP TABLE IF EXISTS `tapel`;
CREATE TABLE `tapel`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tahun_pelajaran` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tapel
-- ----------------------------
INSERT INTO `tapel` VALUES (1, '2020/2021', '1', '2021-11-03 21:33:39', '2021-11-03 21:33:39');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_username_unique`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 406 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2y$10$LxLtowUzFJLPeH1pPSCbCOOQJI7Rfsn7Z27FgBPTfkxJ171bLK7JS', '1', 1, NULL, '2021-10-29 10:27:37', '2025-02-20 13:18:36', 1, 'avatar.png', 0, NULL, 'admin');
INSERT INTO `user` VALUES (2, 'qkohst', '$2y$10$aAZEBNC2u6yz69MyzmsjWesy5.i9isEC5wcFQEjtqz2vNgjxXOoUy', '1', 1, NULL, '2021-10-31 16:30:07', '2021-10-31 16:30:07', 0, 'avatar.png', 0, NULL, 'qkohst');
INSERT INTO `user` VALUES (86, 'kukohsantoso', '$2y$10$L7nBsWRDS/thIiVifkpbeuA3IR7EWm7TlNPIsHYgzy6OqKPM3Ffxy', '2', 1, NULL, '2021-11-02 23:06:34', '2021-11-02 23:06:34', 0, 'avatar.png', 0, NULL, 'kukohsantoso');
INSERT INTO `user` VALUES (87, 'alighufron', '$2y$10$63YqJA64B7FpUZ.ImwruVeza5nZZBFej2FjRNNgCwtQxFAST2JqWW', '2', 1, NULL, '2021-11-02 23:06:34', '2021-11-02 23:06:34', 0, 'avatar.png', 0, NULL, 'alighufron');
INSERT INTO `user` VALUES (88, 'darmini', '$2y$10$Ws/AWguLlCj3b4cdTzB/3uOa5csvmuxirxvKA3hhK/ZQUVb8.Z1V.', '2', 1, NULL, '2021-11-02 23:09:00', '2021-11-02 23:09:00', 0, 'avatar.png', 0, NULL, 'darmini');
INSERT INTO `user` VALUES (92, 'habibullubab', '$2y$10$teG7X4PBm56wQF4wlIHPE.PHLWuSr3UT2ZyEmV32Hi6lHySoCb5KO', '2', 1, NULL, '2021-11-06 21:50:01', '2021-11-06 21:50:01', 0, 'avatar.png', 0, NULL, 'habibullubab');
INSERT INTO `user` VALUES (93, 'hanaratrirahayu', '$2y$10$efcqz9D0Wcxc7enzYuH8Fu6QaPMNpu4r8bUlsHCPbMhNSupLJHFsO', '2', 1, NULL, '2021-11-06 21:50:01', '2021-11-06 21:50:01', 0, 'avatar.png', 0, NULL, 'hanaratrirahayu');
INSERT INTO `user` VALUES (94, 'herlinawati', '$2y$10$65S0hwTEPer9FFbuyJ9AOOeD7.Us5xaNtxEdFc0/4ftPGiYTlIGY6', '2', 1, NULL, '2021-11-06 21:50:01', '2021-11-06 21:50:01', 0, 'avatar.png', 0, NULL, 'herlinawati');
INSERT INTO `user` VALUES (95, 'moh.darulafan', '$2y$10$s89wbraaKLqPBab4c47sDundCetrAAk.SkSW.3ypE.PuLrcgLjsaC', '2', 1, NULL, '2021-11-06 21:50:01', '2021-11-06 21:50:01', 0, 'avatar.png', 0, NULL, 'moh.darulafan');
INSERT INTO `user` VALUES (96, 'muhammadhasanbisri', '$2y$10$PkaOGyFwTSXzFwlSEa03Ru8WXlxx/NUHCKlxaxSLrzf1hWyZEdUy.', '2', 1, NULL, '2021-11-06 21:50:01', '2021-11-06 21:50:01', 0, 'avatar.png', 0, NULL, 'muhammadhasanbisri');
INSERT INTO `user` VALUES (97, 'risamahmudah', '$2y$10$9K7yGU.hnmJ7YaEx.EyBzOmxYNFygcDW631PQJby4Md3ywe2XJnlm', '2', 1, NULL, '2021-11-06 21:50:01', '2022-01-06 15:55:13', 0, 'avatar.png', 0, NULL, 'risamahmudah');
INSERT INTO `user` VALUES (98, 'septiisnayatihidayat', '$2y$10$KWTxjpUtZyALcwiLEh1lweh7kzYAfghqT7OUAPWp2I2oweOeW19dm', '2', 1, NULL, '2021-11-06 21:50:01', '2025-02-20 13:13:02', 1, 'avatar.png', 0, NULL, 'septiisnayatihidayat');
INSERT INTO `user` VALUES (183, 'a.rifqikhilmi', '$2y$10$bw82a8kbYVIUodfCN6XjK.p/jxpl86J0He6aPc0qQqThquKVuFWZK', '3', 1, NULL, '2021-11-06 22:36:03', '2021-11-06 22:36:03', 0, 'avatar.png', 0, NULL, 'a.rifqikhilmi');
INSERT INTO `user` VALUES (184, 'achmadfahrialikafaby', '$2y$10$tHBRPvXMuhmrMGG3w0cbpek5tppq0jjlsHQkChttn7GrNP6g/ujrq', '3', 1, NULL, '2021-11-06 22:36:04', '2022-01-06 15:56:45', 0, 'avatar.png', 0, NULL, 'achmadfahrialikafaby');
INSERT INTO `user` VALUES (185, 'ahmadakhabbanimukhith', '$2y$10$4fwUVX1RK8Ed840QwcVl1OKsnmRniRisxcGUPUes..xvwp3P9wto6', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'ahmadakhabbanimukhith');
INSERT INTO `user` VALUES (186, 'ahmadaromadlonansyahwafa', '$2y$10$8s3OTRvUX5W54V4UUK8NTur17lOou8FIuFi6KgE.Y1PeN2rKYNbja', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'ahmadaromadlonansyahwafa');
INSERT INTO `user` VALUES (187, 'alvanulilabshor', '$2y$10$CgGryHCtRua2xuy64YpxGuRJg3CB8Ck9YTEcWJsxj5/vHyyRHN4f.', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'alvanulilabshor');
INSERT INTO `user` VALUES (188, 'atiksoimatulauliya', '$2y$10$okXLKUhEJHQ5DbRySzdRN.omfV/pGskLG8i8I1n3Q87jDBOZDNIgm', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'atiksoimatulauliya');
INSERT INTO `user` VALUES (189, 'daffakurniawan', '$2y$10$o/T2JsWaOoO0QbZakSfY7udl7RML4CeRnWA3yPdbVTZrmI8v5geJW', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'daffakurniawan');
INSERT INTO `user` VALUES (190, 'erdivaberlianaputri', '$2y$10$QjjDLcbzEFUZxQ.akOu2r.gBEVZSWqd5gS3yFR6vbKYeInln3xNRS', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'erdivaberlianaputri');
INSERT INTO `user` VALUES (191, 'euisluthfianaistiqomah', '$2y$10$p4MOSanY3Loz0ZtfXVau4O8X0Kxsw8TzZES40gGHdmU0sOycx.Dye', '3', 1, NULL, '2021-11-06 22:36:04', '2021-11-06 22:36:04', 0, 'avatar.png', 0, NULL, 'euisluthfianaistiqomah');
INSERT INTO `user` VALUES (192, 'fachrezaifnurefandi', '$2y$10$ULxZRMKqH9w2SJ3.I3m/FO52bE7q8tPpkH.mg.0unxYCHLIZz0DKO', '3', 1, NULL, '2021-11-06 22:36:05', '2022-01-06 15:39:30', 0, 'avatar.png', 0, NULL, 'fachrezaifnurefandi');
INSERT INTO `user` VALUES (193, 'faizatunmaqfuroh', '$2y$10$RpF4kXk6ht80LuQ53GFZgeCfCDMkDfgZprpZ.IfsUtUmK8pWwzirW', '3', 1, NULL, '2021-11-06 22:36:05', '2021-11-06 22:36:05', 0, 'avatar.png', 0, NULL, 'faizatunmaqfuroh');
INSERT INTO `user` VALUES (194, 'finanailatulizah', '$2y$10$dMu3DQNRVGMMOQdNHWE8vO24hDMj91cuB3AFVgV4HIU8sEb.fGu36', '3', 1, NULL, '2021-11-06 22:36:05', '2021-11-06 22:36:05', 0, 'avatar.png', 0, NULL, 'finanailatulizah');
INSERT INTO `user` VALUES (195, 'jhohandahilwakiwamilbahri', '$2y$10$yCE2z8D.jXLWD9RfYMjQn.wCLgY74Ve.NsLL074dK//SQ0SNArseW', '3', 1, NULL, '2021-11-06 22:36:05', '2021-11-06 22:36:05', 0, 'avatar.png', 0, NULL, 'jhohandahilwakiwamilbahri');
INSERT INTO `user` VALUES (196, 'khulafaurrosyidin', '$2y$10$yRoCJlxaRRXjp717u9y39OfDPDwlds3UXOJS6bQ49fo9fGUqsESuq', '3', 1, NULL, '2021-11-06 22:36:05', '2021-11-06 22:36:05', 0, 'avatar.png', 0, NULL, 'khulafaurrosyidin');
INSERT INTO `user` VALUES (197, 'lukmanardiansyahromadhoni', '$2y$10$GLpgDwiNAHZ4JEDhD7eS0OizbXsmUaeJx5te2oDuvVre5VwLZaieG', '3', 1, NULL, '2021-11-06 22:36:05', '2021-11-06 22:36:05', 0, 'avatar.png', 0, NULL, 'lukmanardiansyahromadhoni');
INSERT INTO `user` VALUES (198, 'lukmandiyanto', '$2y$10$mVIdIaRCjugFY8/HVB89BuEMnxUlsD.HqUopwZ1gJcgGvZqddogSa', '3', 1, NULL, '2021-11-06 22:36:05', '2021-11-06 22:36:05', 0, 'avatar.png', 0, NULL, 'lukmandiyanto');
INSERT INTO `user` VALUES (199, 'm.shihabuddinalmusahhali', '$2y$10$d4Zwpyf/lylQLR1PnRRfK.reQtJzhPqGKH5gfSae2VlJOvCdAhHeC', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'm.shihabuddinalmusahhali');
INSERT INTO `user` VALUES (200, 'miztailmaameliya', '$2y$10$j/Al0mt78j8bY/K0jwbFNOFk1l54Ri1Zu9LAocBMaihkSLc5UXT26', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'miztailmaameliya');
INSERT INTO `user` VALUES (201, 'moch.alvansyah', '$2y$10$DK3.1fOUIXATobaEW5MlSO66Ro0l1WWmHPFkuTEiGFxCUNykNR/rq', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'moch.alvansyah');
INSERT INTO `user` VALUES (202, 'monicaarthazharani', '$2y$10$VMoF8FOWoEvPFICx2QEhEO4nRVzUK0VRgma0ZiMV06FQhVsGS5vZ2', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'monicaarthazharani');
INSERT INTO `user` VALUES (203, 'nabilanaurahartanto', '$2y$10$4aV5qvGtCbRvjYNstOPr2eymyeiBUohDYnEqrqawv8nw2vsg9JlpO', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'nabilanaurahartanto');
INSERT INTO `user` VALUES (204, 'nadhifaninaoktafia', '$2y$10$5WtKNn2IhpxtKXQWgOv0e.3F1F7Zc5qR6rnSfDzq83Rxziv7EA09.', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'nadhifaninaoktafia');
INSERT INTO `user` VALUES (205, 'nadinakhaeswaroholivia', '$2y$10$A41WzDEuPEs6JtsUoxO9UemFZQC92dIDDdZmfDFLOiAgTw4gIfE1y', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'nadinakhaeswaroholivia');
INSERT INTO `user` VALUES (206, 'nandabaktiarpratama', '$2y$10$LV4E0w0/z.sOr/5sSVMi7uysqxa3zEFEZqwxam/TDo8K0NAP67tRC', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'nandabaktiarpratama');
INSERT INTO `user` VALUES (207, 'nurrifkialimubarok', '$2y$10$F4jYuCFwZUPnO3o/cvXg4uAsZkFUHwuMIBVxV36kIFB4hFsPLpKCK', '3', 1, NULL, '2021-11-06 22:36:06', '2021-11-06 22:36:06', 0, 'avatar.png', 0, NULL, 'nurrifkialimubarok');
INSERT INTO `user` VALUES (208, 'pamanaisilaoktaviani', '$2y$10$lLaagY3Xe1xzk23mfBX8..rxd7QPmkpoTBdPOqp2kZ0t0NT9P.n0i', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'pamanaisilaoktaviani');
INSERT INTO `user` VALUES (209, 'thoriqulilmishofianadzir', '$2y$10$st8xAOSbQeqHRQeBJ.t/gupv3meR8aRqaJb40yj0r7JQjrEVBTIyW', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'thoriqulilmishofianadzir');
INSERT INTO `user` VALUES (210, 'wasiyat', '$2y$10$gMS1i7Fj2uS2V46yB040CuCeu4mgC6ZKpuSTK/slX1LqA1deaGfNK', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'wasiyat');
INSERT INTO `user` VALUES (211, 'alvinulilalbab', '$2y$10$t2hxzhduy2fw3UhLPodZcO6uOtyyLxJiZwH4rb5G/PznZ4uJ7eDyu', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'alvinulilalbab');
INSERT INTO `user` VALUES (212, 'amalia', '$2y$10$1DtU1HLIjH1nXKkVURM5Z.l22AQ9tkra7T8zOd3pOwn7YAPoFeKGC', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'amalia');
INSERT INTO `user` VALUES (213, 'andikalestari', '$2y$10$K00hdYvlwAr4zL7X.dmBIOrBUXepvNUhRWc5a/tELpDDGA74Xjiye', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'andikalestari');
INSERT INTO `user` VALUES (214, 'dendinaufalalaziz', '$2y$10$3Zb4LO93YSQKcLAqyxhN4updKSyqqlaVCe3acNofanrsm4jJnczMa', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'dendinaufalalaziz');
INSERT INTO `user` VALUES (215, 'dheafanyandriani', '$2y$10$c308N/hjNMeXeqMk0ApPXe7DfE2vMWMM4rKq16xvO1x.JHZ9fmS4O', '3', 1, NULL, '2021-11-06 22:36:07', '2021-11-06 22:36:07', 0, 'avatar.png', 0, NULL, 'dheafanyandriani');
INSERT INTO `user` VALUES (216, 'farihfakriyanakmal', '$2y$10$lKWV3G9.77Uj6HoC5K6XBumwUnmQY4aO/dZMR2zJumI07vax1yKdG', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'farihfakriyanakmal');
INSERT INTO `user` VALUES (217, 'feriahmadghufron', '$2y$10$eN9Ug8be4dmJ0mPE0GWoJOfVkxQoUUsNyPGYDdfVvjM781edkz0ra', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'feriahmadghufron');
INSERT INTO `user` VALUES (218, 'gustinevellynacahyani', '$2y$10$fsrnIrQ31DiEAJ3OQ8ziduNvAChqVXnlsQrD1lcDo7g9fJwGIpyQq', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'gustinevellynacahyani');
INSERT INTO `user` VALUES (219, 'hellenissaariyanit', '$2y$10$ZVXMJd4g6bnazmKa7SpnDunthUmhBaX.hvjkDATcojdEeNYygmwgy', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'hellenissaariyanit');
INSERT INTO `user` VALUES (220, 'irfaalifia', '$2y$10$J5ElqBIrPtE.jKNMtY53JeTiZb8ojxauWK2GNixAgCSbGnxxeID6C', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'irfaalifia');
INSERT INTO `user` VALUES (221, 'linawatisaylinnikma', '$2y$10$XtNsAAc4Bo67ltQ/sB0Yw.rimWe1ZkAkCFE1MyqikuIpohr1l/Cyi', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'linawatisaylinnikma');
INSERT INTO `user` VALUES (222, 'lukmanhidayatullah', '$2y$10$.qiX6aKpEgZB/0CVSLyEVePAN4CMilUfz2KeR/zF72aNHLe.8J8eG', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'lukmanhidayatullah');
INSERT INTO `user` VALUES (223, 'miftaqurroufbilimmah', '$2y$10$kMDQ1AcIJSG9mEYyWq7JKuXI/kCjqZdRnao3uiRs11lM1.CYtEASi', '3', 1, NULL, '2021-11-06 22:36:08', '2021-11-06 22:36:08', 0, 'avatar.png', 0, NULL, 'miftaqurroufbilimmah');
INSERT INTO `user` VALUES (224, 'mohammadni\'amsaifullah', '$2y$10$me.csLKBllhz6DJs5iJtx.ZO95gelpMiA4y4Y3Kfy1DUlYXQ6SSn.', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'mohammadni\'amsaifullah');
INSERT INTO `user` VALUES (225, 'muhammadjibranirfani', '$2y$10$cLYRvw9OAh3fnLZ3GgVDjOdCXCzAHf902kghNAqiAi5Ox9CaAJQXS', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'muhammadjibranirfani');
INSERT INTO `user` VALUES (226, 'muhammadnorrohman', '$2y$10$yF00ml628jHfHLIXmJtnWurNz/qUUQORNh7OsG4/Ph7YTk44Y4T/2', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'muhammadnorrohman');
INSERT INTO `user` VALUES (227, 'muhammadrizkyaditya', '$2y$10$kL9YzZdVACUhQeFo7Hb74OaJyqtdaW7rkaR7J7HFEPJ9FYIW1Zofa', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'muhammadrizkyaditya');
INSERT INTO `user` VALUES (228, 'nabighotulhusniyah', '$2y$10$FuKjDJeJdQSX0lNkTVVIouNnSZTZi5Tlnm3akBTLPwPzWivKQQsMm', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'nabighotulhusniyah');
INSERT INTO `user` VALUES (229, 'nelialfimutmainah', '$2y$10$lbqIw2awQ91YCQCRTGPLU.ihgeAPYZzfFEGmGEMu.j2iLa39.F28C', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'nelialfimutmainah');
INSERT INTO `user` VALUES (230, 'novitaselviindriyani', '$2y$10$Kxt.yNz5JfzFSFWKn5Z.ZusG2ZAzr7oVxSRsA0RGSuhAwCYExuxxy', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'novitaselviindriyani');
INSERT INTO `user` VALUES (231, 'nuraissyah', '$2y$10$mkPKOrXlbz0zVldiZYxqhOf2qA7f1Cl4rfehfI1XeppKifyb0Lqaq', '3', 1, NULL, '2021-11-06 22:36:09', '2021-11-06 22:36:09', 0, 'avatar.png', 0, NULL, 'nuraissyah');
INSERT INTO `user` VALUES (232, 'rafiuddinathar', '$2y$10$SdEPSc.5FHukiyQoAVfQCOrVF.Iqi1Uz5aeXMx7BG6AOfXSOci6qm', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'rafiuddinathar');
INSERT INTO `user` VALUES (233, 'rizkyarifafandi', '$2y$10$KsTNQTFne3QaRSh4fXFtNOFRbEio8jCTL.4cgMitKSDUkLmfsuxWi', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'rizkyarifafandi');
INSERT INTO `user` VALUES (234, 'rohmatulbaim', '$2y$10$xfTDbosS.9ClaVCdOI.eAeE1VyScki3Q9OE3MzOVGvceH6fvuYO3e', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'rohmatulbaim');
INSERT INTO `user` VALUES (235, 'rosyidatulmahmudah', '$2y$10$jW0C8WqcYEREsEzJcd3GPeb8XWftiR6G1RY0gif/0XLYgaSCSXBsa', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'rosyidatulmahmudah');
INSERT INTO `user` VALUES (236, 'shelfioctaviaroesdah', '$2y$10$5E1uUlPG2Exh6yCwwfUmvudRFtSFYE5A3KBPwNVXOWmKy4X5ei/LO', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'shelfioctaviaroesdah');
INSERT INTO `user` VALUES (237, 'susiarini', '$2y$10$e/v9S8S5duakESZsYCkQg.ZRxRvapVrN4/zY12x5TpCSjnzVuolbK', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'susiarini');
INSERT INTO `user` VALUES (238, 'tiyoaldyyansah', '$2y$10$fcYVf.TmdKDHJt35RiL3V.vjItDwCBIdKzVWwMDklvRAdOJ0qCKpi', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'tiyoaldyyansah');
INSERT INTO `user` VALUES (239, 'yogioktamahendra', '$2y$10$wYFrkX3R29uvtuThXSez3ecjMYABGiWtkAwejdZ9wezLkaHDc6sX.', '3', 1, NULL, '2021-11-06 22:36:10', '2021-11-06 22:36:10', 0, 'avatar.png', 0, NULL, 'yogioktamahendra');
INSERT INTO `user` VALUES (329, 'achmadfaiqmuzakkiy', '$2y$10$yZnMYQEmvwolos9Q2iEDl.M7xds7z7JcsvPVqrxBZ5NP86ukEXE5y', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'achmadfaiqmuzakkiy');
INSERT INTO `user` VALUES (330, 'ahmadsyaifuddin', '$2y$10$kgKXkxbKE2RR2/IYSuPryOZmcr/0zW6IsT8gVkJJhP3JUxxwG9.Vm', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'ahmadsyaifuddin');
INSERT INTO `user` VALUES (331, 'ameliarahayu', '$2y$10$0de5N1Y6kLpikR.cmStdxe1OIqMtFSPL7IZD0MTRzov587LA521vO', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'ameliarahayu');
INSERT INTO `user` VALUES (332, 'arbifadillamuhsan', '$2y$10$H63vYLj2hjXgQHk6Rj1XCOZiQLkBNYDS5tU8.yM705PacK2EJvaXm', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'arbifadillamuhsan');
INSERT INTO `user` VALUES (333, 'ardhyantopratama', '$2y$10$cKI8FYbbCZVkw584R33ZNujsbLy7EdrXdrNuPn2h1Jp9MMyKUb4dq', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'ardhyantopratama');
INSERT INTO `user` VALUES (334, 'azkasyarafina', '$2y$10$7RqpaezuKv642YspEjIdteaxrFTyQQ46m6KMTu0V7ffHIQwzSw46q', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'azkasyarafina');
INSERT INTO `user` VALUES (335, 'daffamustaqim', '$2y$10$iKXe4q6l.4LBkfUe3DmPEuFNbeZ7V9Jo4iuTydShWLWt1HtrFooLW', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'daffamustaqim');
INSERT INTO `user` VALUES (336, 'difanasalsabila', '$2y$10$VwKS89rROsOCHfClM9duUerAvlmqTlQ/RwRtJsIMXO3qtwOYSkUxm', '3', 1, NULL, '2021-11-06 22:47:40', '2021-11-06 22:47:40', 0, 'avatar.png', 0, NULL, 'difanasalsabila');
INSERT INTO `user` VALUES (337, 'ekariazulsilisdelimanurhidayah', '$2y$10$/ZQLABZUXM830GnrQw5Bo.mGZjbHzLrc8Kh0YV.dNayBC4J4E05Ha', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'ekariazulsilisdelimanurhidayah');
INSERT INTO `user` VALUES (338, 'juliansahkhoirulumam', '$2y$10$X5YBg9TEpUsrFRrt.SaxQuot11VnzEyd9BdgcFjXP/94DitBgiHb.', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'juliansahkhoirulumam');
INSERT INTO `user` VALUES (339, 'm.wahyurezaaulafirdaus', '$2y$10$J15xbBTwQDske.fSiMkp/Os2QceyL2/iHj58.OKmCnj0vkEQLklU.', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'm.wahyurezaaulafirdaus');
INSERT INTO `user` VALUES (340, 'muhammadzainulazzan', '$2y$10$DjqrK6ckQ0vV83oD6y/slOB/5VhFJsa5d/6rsjyR3bfC4v66htMOe', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'muhammadzainulazzan');
INSERT INTO `user` VALUES (341, 'naelatulmuna', '$2y$10$TDykiV/C2o4gyckcEqIXS.5MBqZXj1p17tb8Ap2EjTcAcD8GLFYO.', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'naelatulmuna');
INSERT INTO `user` VALUES (342, 'nandadifapratama', '$2y$10$7cPIvW7nSer6v5J6JBcwMOExgarKANNH3XUP2SLmE/yghslgaZ1We', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'nandadifapratama');
INSERT INTO `user` VALUES (343, 'nurfaizatunnisa', '$2y$10$eG8xWJFv0ntybSisuZk7UuCMMOTq30wnh27Xe8223K4eShg3ok9Ui', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'nurfaizatunnisa');
INSERT INTO `user` VALUES (344, 'nurulistianah', '$2y$10$/OIsNnN.gLyxZTQNFjy9e.vnyLsjhC0Br8hRAlwwylTGAd71XaWIy', '3', 1, NULL, '2021-11-06 22:47:41', '2021-11-06 22:47:41', 0, 'avatar.png', 0, NULL, 'nurulistianah');
INSERT INTO `user` VALUES (345, 'putriameylasari', '$2y$10$LQlT7lvZPWDpHKnftlwOtOp7pESmxlwhWJGx2cjgnOu5g0hRRWsY2', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'putriameylasari');
INSERT INTO `user` VALUES (346, 'rifkamaulida', '$2y$10$FthljzzGOlImrh.5S/7q3O2g3ParYgZut3PY/UoTB/xuPHqFvMh56', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'rifkamaulida');
INSERT INTO `user` VALUES (347, 'rofiiqotuzzulfa', '$2y$10$IkoiFEDTua4lxFSODdzL1OfSi9eU/hldWYVP.Au46AM1QundcTaFS', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'rofiiqotuzzulfa');
INSERT INTO `user` VALUES (348, 'sintiarahmasayilanova', '$2y$10$9AkE6qrrZK/kLne/uDmz3.ShUbuf8/BSSTH5AQaTZSZhCS4Ro81qm', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'sintiarahmasayilanova');
INSERT INTO `user` VALUES (349, 'sintyanabilarahmawati', '$2y$10$rLOlpPhZXnMDZ5j20BpJuO1NlUvN.ruTCllwDySOSr3YLHuSP9sAa', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'sintyanabilarahmawati');
INSERT INTO `user` VALUES (350, 'srimuawanah', '$2y$10$0iCpnvzmXNgNXd3k7LJQnOwRqg.LpCY4OCUwVA7IivKG29yiCMf2a', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'srimuawanah');
INSERT INTO `user` VALUES (351, 'zahrakhoirunnisa', '$2y$10$KRkuQsI2bYWvXxf6PK7qUOuJim084MT6qy27nOMD4l.eZdC/qsPAq', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'zahrakhoirunnisa');
INSERT INTO `user` VALUES (352, 'ahmadrafiuddarojat', '$2y$10$CVQFWAVmvKCUbrKeZZH9Uebe/h7bFf16gxqWAwBawr1ORL2FjPu8.', '3', 1, NULL, '2021-11-06 22:47:42', '2021-11-06 22:47:42', 0, 'avatar.png', 0, NULL, 'ahmadrafiuddarojat');
INSERT INTO `user` VALUES (353, 'anisanurulalfiyah', '$2y$10$MYeAHc8ASVUI4yDnuFCIw.OiSgDSxpTlykMOoTK.zl8MFpPABZIaC', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'anisanurulalfiyah');
INSERT INTO `user` VALUES (354, 'benisantoso', '$2y$10$mJE81bGYk6YM9EqHMlFLbufJdNosUWgEAYY7ihb/g.gLBZhSJNlkW', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'benisantoso');
INSERT INTO `user` VALUES (355, 'citraarihazahramananta', '$2y$10$L8FkQlPYvCI51ZPQDRsV.ewWPxtTC1HZztgP9VaFNLSal/ynKLqMe', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'citraarihazahramananta');
INSERT INTO `user` VALUES (356, 'henkygusfahdli', '$2y$10$1K07fPvC4Kgud0cwBQQTcOV35cdpxU3F7hFu1Nabqxiu40OSQ/sLm', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'henkygusfahdli');
INSERT INTO `user` VALUES (357, 'ifsyaulfaidah', '$2y$10$p5URFYF3gV/QtI0sn6NbzeXo1HxSbKEK.SVKs89kkAvdmDcCZtxD6', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'ifsyaulfaidah');
INSERT INTO `user` VALUES (358, 'izzatulnurathiyah', '$2y$10$8w49xAh7.M50T9htvL7Bdu9ZUy0uJ8.i3jVUzX.aQOIFeVeeYV292', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'izzatulnurathiyah');
INSERT INTO `user` VALUES (359, 'jihanalfianuraini', '$2y$10$l26XodSAbqttezLaubSyi.PRlHvhLL07rclWx5gEBrvQbCHzJq9iW', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'jihanalfianuraini');
INSERT INTO `user` VALUES (360, 'martaviviifrika', '$2y$10$AAVX72vQlWHe2nz/Lih9X.OJbXglhkXD.A1/pHkouxz2IJ/2o1rkW', '3', 1, NULL, '2021-11-06 22:47:43', '2021-11-06 22:47:43', 0, 'avatar.png', 0, NULL, 'martaviviifrika');
INSERT INTO `user` VALUES (361, 'mohamadrifqimukaffa', '$2y$10$DTM0UdwkNJ7d3pd8f/P7LettfvYaK6h4BT8ct1Q5JFVjz8OMjDN1W', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'mohamadrifqimukaffa');
INSERT INTO `user` VALUES (362, 'muhammadyusufmaulana', '$2y$10$ZrWZ3kXl0iwm3VH2V7O3fO9h6UWI7FILGHt34gIYj3W7UoTLrInPi', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'muhammadyusufmaulana');
INSERT INTO `user` VALUES (363, 'nilnaminahazzahroh', '$2y$10$c0beCNKSYOW/I0iiEMRjkON2nzvFjbppsAedsuyaAl4S63.FYGvJy', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'nilnaminahazzahroh');
INSERT INTO `user` VALUES (364, 'nungkiwidiyanto', '$2y$10$wT7wOALbmTzcJl4lUYr40uMNY7zY5IJBAIt5kcu9h5N9LZaO.u01C', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'nungkiwidiyanto');
INSERT INTO `user` VALUES (365, 'raudhatuljannah', '$2y$10$nIRsOZ.0BU9pr1CeKio.n.nWWd9gUUhaW8czU4Q/N30mm26V.09PO', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'raudhatuljannah');
INSERT INTO `user` VALUES (366, 'rianashoviafida', '$2y$10$8UXl2q1kjL1JnFJ22aFC8uDA4Y0Hjvzk3kVhhsC/Hi8mROxR1kDQy', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'rianashoviafida');
INSERT INTO `user` VALUES (367, 'rismaamelia', '$2y$10$Efo.zgSN5RXMb.pNOwTf5O8u6jHlld1AIOfbSA3DMulx7BpN3XJ9y', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'rismaamelia');
INSERT INTO `user` VALUES (368, 'rizkiriansyah', '$2y$10$GipVRE7I4xoo44Ewk9J9gOHjnJljiL.v.FzhwpHzKwc00G2k4O9Iq', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'rizkiriansyah');
INSERT INTO `user` VALUES (369, 'salsanurafifah', '$2y$10$jghC9TsgxmZJ/j6LqIosJ.zLcL8IPOdk7Y0YxT2GvLnoisjigvgdu', '3', 1, NULL, '2021-11-06 22:47:44', '2021-11-06 22:47:44', 0, 'avatar.png', 0, NULL, 'salsanurafifah');
INSERT INTO `user` VALUES (370, 'silviyyawardatin', '$2y$10$ajpijaI7utX5IdlVyNw8Jex/Z5NpWi4dOAcPbTyT1qK2FnPC8KNPK', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'silviyyawardatin');
INSERT INTO `user` VALUES (371, 'sitilailyzakiyah', '$2y$10$3Uvz8wHPWlKqZkdJagrG8u9Zt0aBd.HnaZJqMWJsF1owW5./Fz6Am', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'sitilailyzakiyah');
INSERT INTO `user` VALUES (372, 'yunimiftakhulkholifah', '$2y$10$ysQNraMjMmE/qTV.pnoVROA25VClmHH7rA.cbrjE4rYXdqGkR2jWq', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'yunimiftakhulkholifah');
INSERT INTO `user` VALUES (373, 'ahmadiqbalbaihaqi', '$2y$10$FrEsxiHMFCdRhD1x3SCQr.t5.Y/gcckWyma.7FQwwkz8Tout0ryJa', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'ahmadiqbalbaihaqi');
INSERT INTO `user` VALUES (374, 'ahsanulmujahidin', '$2y$10$M/7jQzDF0yH.OCWPyhnVfew4jabiMKh7RL9hOhbl7wB.N4Ymix/gq', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'ahsanulmujahidin');
INSERT INTO `user` VALUES (375, 'andimathlabilhikam', '$2y$10$WwQqC5jODFAF48BaN9ulQePfoKCqzwxO0dOm6k.lUVZx.w.oQbJyK', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'andimathlabilhikam');
INSERT INTO `user` VALUES (376, 'ditahendrapratama', '$2y$10$Eof2Y49v/Rh8UTc2/uMdR.lurCrjBUd8GdL7qroozpKbNfIhXPAjG', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'ditahendrapratama');
INSERT INTO `user` VALUES (377, 'divasandraabelliaputri', '$2y$10$.kGdNwp4ZuH36luLkkPDWuaI1VdfAltVJlwk7mYO8ExLloeIbPwIO', '3', 1, NULL, '2021-11-06 22:47:45', '2021-11-06 22:47:45', 0, 'avatar.png', 0, NULL, 'divasandraabelliaputri');
INSERT INTO `user` VALUES (378, 'estyaininnadziroh', '$2y$10$/dg/1FpUZZwH5khECoZZMeF0FDwNchCBs9Hru7M6YmHEXaoPqp/8e', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'estyaininnadziroh');
INSERT INTO `user` VALUES (379, 'ferlitasarifatunnikmah', '$2y$10$QqlcaUBCvSmlO0eA85h0hOxIPxiwzRrzXkucMD80l7TeGC74soDhW', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'ferlitasarifatunnikmah');
INSERT INTO `user` VALUES (380, 'fidiaanaida', '$2y$10$Fmb0IxzmMPel1nS9auq7PuRZmId.kPs7XpLJ5G/Jl1fIKgZ5953Qe', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'fidiaanaida');
INSERT INTO `user` VALUES (381, 'filhadiniasmarani', '$2y$10$rtBA3TxENPBIkAt4ytM3wOXrRig0J61WmUcQsgSDY/A1W/owVC9fe', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'filhadiniasmarani');
INSERT INTO `user` VALUES (382, 'helviizzaaprilia', '$2y$10$G6jtvXPXuvTtHbmx10GJuun0VVzcq7w6UKmL6wJTWqpfO1IWOMPzu', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'helviizzaaprilia');
INSERT INTO `user` VALUES (383, 'khoiruttamam', '$2y$10$xWjTai1Vn2zh6QINYQrXOuqYWgB40BN0cACWJ9LBg8YVSoWTJVsjO', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'khoiruttamam');
INSERT INTO `user` VALUES (384, 'm.ashrofmazidfurqoni', '$2y$10$gGJRjNiTy2GnVzKk8oDi5uyYwRsBFMxIdzMRWat48fykErV3KDrvq', '3', 1, NULL, '2021-11-06 22:47:46', '2021-11-06 22:47:46', 0, 'avatar.png', 0, NULL, 'm.ashrofmazidfurqoni');
INSERT INTO `user` VALUES (385, 'm.chabibullatif', '$2y$10$/uWsxfpc959e9Pk.Gdd3ru/.RbPHOM.vw2XUfcvEV5aRJX/YwE8ye', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'm.chabibullatif');
INSERT INTO `user` VALUES (386, 'maulanaekcelersulautama', '$2y$10$x9n8WsrBGnX6YUHILzJdCOfVvdHMK0H.QAOjcHnqp.OHoJSrWbiWG', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'maulanaekcelersulautama');
INSERT INTO `user` VALUES (387, 'mohamadrifqiabdillah', '$2y$10$dpj86KTQAjtmYxA64VYV4uaIH6c4nsN2YEv/LjJVn5UcT/ds2hl6a', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'mohamadrifqiabdillah');
INSERT INTO `user` VALUES (388, 'muhammadaqimyaminsimal', '$2y$10$tLVEuN9NhTQQR8kCBLt53.DEZXkM7ilKT0TXt5C0gu3CdP2XV4/R6', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'muhammadaqimyaminsimal');
INSERT INTO `user` VALUES (389, 'muhammadhilalridho', '$2y$10$sIUmLqkW55fipug0JzJHO.dNMsRiwYgFohZfCRWCFgUULudbfWBpa', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'muhammadhilalridho');
INSERT INTO `user` VALUES (390, 'muhammadnurrohman', '$2y$10$g100vM1hE8su/Hn3TDc7j.kSVDPoDMwVshUnWn9jGCb2iY3iNJJwO', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'muhammadnurrohman');
INSERT INTO `user` VALUES (391, 'muhammadrifqisaputra', '$2y$10$5HDAIvvK1jLnP5JQawA1te9kujkAup8bpKkMyNhbFFyJ3CmeIEXtC', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'muhammadrifqisaputra');
INSERT INTO `user` VALUES (392, 'muhammadzakkaadlyfairuzh', '$2y$10$2T2S2tBhaEB1NTad4H9r1O19QsxgTYLT0tDqYqVP1xAV4ahFSYKVS', '3', 1, NULL, '2021-11-06 22:47:47', '2021-11-06 22:47:47', 0, 'avatar.png', 0, NULL, 'muhammadzakkaadlyfairuzh');
INSERT INTO `user` VALUES (393, 'nabilahimayamillati', '$2y$10$o28WggKNpHv46ay65vTh9.2O0gLg17Rqr7pv8UBnGJks3e4UNzibq', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'nabilahimayamillati');
INSERT INTO `user` VALUES (394, 'nadyasafwahnajlatunnaqiyyah', '$2y$10$RjT/ooyKGfbgMr31kzrtXuTmGqpk1ZHkgp9UlUoddMa8RU4xX3U52', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'nadyasafwahnajlatunnaqiyyah');
INSERT INTO `user` VALUES (395, 'nurillatifah', '$2y$10$NWFEEc5J54InCf6XCx2zROGu3JJ5C/Z4FFcRWwp3SYHGmNo2H4qdO', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'nurillatifah');
INSERT INTO `user` VALUES (396, 'roghiburrohman', '$2y$10$6.fOJC/H75FHGj2kPGm1EOehfdoYcu/NXFE0S3BCgEweeWg8.I3W2', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'roghiburrohman');
INSERT INTO `user` VALUES (397, 'selviraanindyalabibah', '$2y$10$lmr7vRpTfen6eZo5c64dkuh.Pnw7TUDhcJIjf0ymeJk2P.5LP.wXq', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'selviraanindyalabibah');
INSERT INTO `user` VALUES (398, 'silviachoirunnihayah', '$2y$10$1jGO9rdDZds0xi3MUo3g3eVCBZ5fWkdOqTC24drWTpJcb9rFXQmSe', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'silviachoirunnihayah');
INSERT INTO `user` VALUES (399, 'sitikhoirunnisa', '$2y$10$hzEWPNB48gqIpbuya7lhTeChC.Q9i1VRnScXZFQTxpC4E2iykC1JO', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'sitikhoirunnisa');
INSERT INTO `user` VALUES (400, 'syaifuddinzuhri', '$2y$10$EWpP1csFGu7e9L9XdgWbWuzkSTZBWyHgsNGtUBp8hjGa2Smt932Fe', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'syaifuddinzuhri');
INSERT INTO `user` VALUES (401, 'syitaazzahra', '$2y$10$OssJQ2SPAI6dmDLxuK8Rfe/EcDhLTaL/iJKI3F1WtTKFkndTvptQ6', '3', 1, NULL, '2021-11-06 22:47:48', '2021-11-06 22:47:48', 0, 'avatar.png', 0, NULL, 'syitaazzahra');
INSERT INTO `user` VALUES (402, 'nuraini', '$2y$10$gek8OTkJLVOQC.T0gTQsn.lqrKmagYRubyIzuBXzKyjyZWZGX3aqG', '3', 0, NULL, '2021-11-07 15:01:32', '2021-11-07 15:28:47', 0, 'avatar.png', 0, NULL, 'nuraini');
INSERT INTO `user` VALUES (403, 'moch.munir', '$2y$10$NqbzbbIs9Fnznsj2C3yG0.jwE0lha/cRycEk3BmQpwsf.jqf9jLoG', '2', 1, NULL, '2021-11-24 17:53:20', '2021-11-24 17:53:20', 0, 'avatar.png', 0, NULL, 'moch.munir');
INSERT INTO `user` VALUES (404, 'suwardi', '$2y$10$4QmkuiGdjONRsb3/xdHhgOk1XSF7VInbAlM/xdEBmN0qmlLf6mGDa', '2', 1, NULL, '2021-11-24 17:54:30', '2021-11-24 17:54:30', 0, 'avatar.png', 0, NULL, 'suwardi');

SET FOREIGN_KEY_CHECKS = 1;
