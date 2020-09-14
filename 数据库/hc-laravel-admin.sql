/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : hc-laravel-admin

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 14/09/2020 11:38:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(0) NOT NULL DEFAULT 0,
  `order` int(0) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-23 10:24:12', '2020-04-23 10:24:12');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 01:00:51', '2020-04-24 01:00:51');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:00:56', '2020-04-24 01:00:56');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 01:01:05', '2020-04-24 01:01:05');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:35:08', '2020-04-24 09:35:08');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:35:11', '2020-04-24 09:35:11');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:36:04', '2020-04-24 09:36:04');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:36:06', '2020-04-24 09:36:06');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:30', '2020-04-24 09:36:30');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:30', '2020-04-24 09:36:30');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:31', '2020-04-24 09:36:31');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:33', '2020-04-24 09:36:33');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:35', '2020-04-24 09:36:35');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:36', '2020-04-24 09:36:36');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:36:36', '2020-04-24 09:36:36');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-24 09:37:47', '2020-04-24 09:37:47');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-24 09:37:50', '2020-04-24 09:37:50');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:37:52', '2020-04-24 09:37:52');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:37:53', '2020-04-24 09:37:53');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:38:05', '2020-04-24 09:38:05');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:45:54', '2020-04-24 09:45:54');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:45:58', '2020-04-24 09:45:58');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:46:02', '2020-04-24 09:46:02');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:50:47', '2020-04-24 09:50:47');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-24 09:51:35', '2020-04-24 09:51:35');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-24 09:51:47', '2020-04-24 09:51:47');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 02:13:24', '2020-05-27 02:13:24');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:33', '2020-05-27 02:13:33');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:34', '2020-05-27 02:13:34');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:39', '2020-05-27 02:13:39');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-27 02:13:39', '2020-05-27 02:13:39');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 02:19:42', '2020-05-27 02:19:42');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 02:20:54', '2020-05-27 02:20:54');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-27 03:17:46', '2020-05-27 03:17:46');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-14 02:45:09', '2020-09-14 02:45:09');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-14 02:45:18', '2020-09-14 02:45:18');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(0) NOT NULL,
  `menu_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-04-23 10:15:26', '2020-04-23 10:15:26');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$SBVpof2a76O.jm5yIIU9tuNYsmr2Pvwz9qcOVzGOc6XbPkVTMRORW', 'Administrator', NULL, '24QAgYoJpOuC4aBZg6UFOJnsVh70SL6pLeGaPr6qAmw3kyfGFo1TrOYTYOQ5', '2020-04-23 10:15:26', '2020-04-23 10:15:26');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `uid` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户邮箱',
  `ipAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `articles_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `articles_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 'Nolan Schiller4IMel', 'CwwFRIuTuX@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (2, 'Dr. Eveline Steuber Jr.IdKmn', 'zBrX9Qki8b@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (3, 'Virginia Hillbb2pj', 'DmtsSFxGUw@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (4, 'Allen RunteZNpfU', 'Cx5Buk1YmZ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (5, 'Russell Fahey PhDLaGvK', 'dLk1Cfhbef@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (6, 'Prof. Remington MoorelnWRi', 'WoAUDnk37N@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (7, 'Mrs. Lizeth Auerp2kWJ', '8gDiZhrPB4@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (8, 'Mariah Kuvalisf13vO', 'D7LkubujHl@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (9, 'Dr. Lisa EmardCc5Ba', 'GGuE8FXLJQ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (10, 'Dr. Salvador DibbertbW2Bk', '7twTicHVgv@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (11, 'Mr. Norris Schmidt Jr.72gps', 'MBG7r8AgqJ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (12, 'Karina GutmannLIGrV', 'dIxKL2VoIk@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (13, 'Marley Barton6CSqf', 'FEgemz7vtr@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (14, 'Rodolfo GutmanngnZBM', 'rb3MtSHYJ5@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (15, 'Zena Farrell88tKr', 'YfaAp155MJ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (16, 'Vilma Hettinger4Oq0X', 'jmaHXHX7n8@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (17, 'Nakia KohlerO1F4k', 'E6mcXWGaLK@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (18, 'Miss Esta Friesen PhDmw4Tn', 'xdTD31rba9@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (19, 'Murphy Hartmann DVMcexAE', 'nlPU5WCUWm@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (20, 'Kali DenesikmRVLS', '3Fj1nqmaG8@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (21, 'Dr. Brooke Kunze IIImPVBO', 'F6ie7LJ0MN@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (22, 'Eliza HerzogfQ6Sg', 'djNpjzx5T6@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (23, 'Nat Gloverq0v7y', 'HFFbbBnauF@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (24, 'Keith Reichel1DZ0i', 'RH2YbIo1xs@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (25, 'Mia KesslerqbjOK', 'GJpCLqhrRE@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (26, 'Mia RolfsoncaRMl', 'Mxl8TYyo6X@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (27, 'Juanita O\'ConnerEqEEe', '5a7e4qg03f@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (28, 'Callie Thielx0src', 'RqBCXSkPvp@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (29, 'Avis Jacobs6D3vl', 'LUTdD2DJYN@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (30, 'Emmalee MosciskizFVDV', 'Ci7YYci7QP@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (31, 'Sabryna KesslerKsH3e', 'kKUfnmj1Sp@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (32, 'Arnulfo PollichyR9nd', 'hgh9MdoBeC@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (33, 'Corene Rogahn I4t1Yd', 'JRAHMm8162@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (34, 'Daija Cormier VTGO5q', 'h0wlI9SVtG@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (35, 'Jarrell SchmelerNgIi0', 'zGwnrQBLbE@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (36, 'Dr. Terrance Grimes IIP4vlt', 'NHSD64Kjkq@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (37, 'Orlo RosenbaumIJJrl', 'jYWn15xark@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (38, 'Keyon Cormier IIIKm7Gb', 'zwU1LqQafk@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (39, 'Isaias Rodriguez IIp4v8B', 'fTqFWHTEFV@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (40, 'Salvador MuellerBdPHh', '5SIt8IOzyl@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (41, 'Dameon Breitenberg IVYO4aO', 'VApFbguLrM@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (42, 'Montana RogahnIGqQ6', 'CRVRPDwOsW@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (43, 'Prof. Carolyne Schmidt IIIOnYRa', 'OROL7fB4n4@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (44, 'Earnest WolfflmZgd', 'BV1eXFLMIZ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (45, 'Eda Kerluke IIIHNTcn', 'x2gW6CKME1@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (46, 'Miss Leila Christiansenm34we', '2NcoTNbUsL@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (47, 'Anibal Mann MD4usON', 'SQa7IwyZAu@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (48, 'Prof. Trevion White46CAo', 'HjI8dMimQQ@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (49, 'Jason Macejkovicf6Dtx', 'T1jocaLrfN@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (50, 'Prof. Rashawn TowneG1k5u', '8B6LZT4bC8@baidu.com', '127.0.0.1', '2020-09-11 06:26:44', '2020-09-11 06:26:44');
INSERT INTO `articles` VALUES (51, 'aaa', 'aaa@baidu.com', '127.0.0.2', '2020-09-11 08:02:04', '2020-09-11 08:02:04');
INSERT INTO `articles` VALUES (54, 'aaa22', 'aaa22@baidu.com', '127.0.0.2', '2020-09-11 08:06:17', '2020-09-11 08:06:17');
INSERT INTO `articles` VALUES (57, 'aaa2231', 'aaa2231@baidu.com', '127.0.0.2', '2020-09-11 08:09:37', '2020-09-11 08:09:37');
INSERT INTO `articles` VALUES (58, 'aaa22311', 'aaa22311@baidu.com', '127.0.0.2', '2020-09-11 08:10:00', '2020-09-11 08:10:00');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_09_11_033424_create_articles_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `uid` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户邮箱',
  `ipAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `articles_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `articles_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
