/*
 Navicat Premium Data Transfer

 Source Server         : mysql--localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : 127.0.0.1:3306
 Source Schema         : fruit

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/08/2020 23:46:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (2, '用户');
INSERT INTO `auth_group` VALUES (3, '管理员');
INSERT INTO `auth_group` VALUES (1, '超级管理员');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 1);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 2);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 3);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 4);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 5);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 6);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 7);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 8);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 9);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 10);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 11);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 12);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 13);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 14);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 15);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 16);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 17);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 18);
INSERT INTO `auth_group_permissions` VALUES (19, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (20, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (21, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (22, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (23, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (24, 1, 24);
INSERT INTO `auth_group_permissions` VALUES (25, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (26, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (27, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (28, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (29, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (30, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (31, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (32, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (33, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (34, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (35, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (36, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (37, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (38, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (39, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (40, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (41, 1, 41);
INSERT INTO `auth_group_permissions` VALUES (42, 1, 42);
INSERT INTO `auth_group_permissions` VALUES (43, 1, 43);
INSERT INTO `auth_group_permissions` VALUES (44, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (45, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (46, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (47, 1, 47);
INSERT INTO `auth_group_permissions` VALUES (48, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (49, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (50, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (51, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (52, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (53, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (54, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (55, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (56, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (57, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (58, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (59, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (60, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (61, 1, 61);
INSERT INTO `auth_group_permissions` VALUES (62, 1, 62);
INSERT INTO `auth_group_permissions` VALUES (63, 1, 63);
INSERT INTO `auth_group_permissions` VALUES (64, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (65, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (66, 1, 66);
INSERT INTO `auth_group_permissions` VALUES (67, 1, 67);
INSERT INTO `auth_group_permissions` VALUES (68, 1, 68);
INSERT INTO `auth_group_permissions` VALUES (69, 1, 69);
INSERT INTO `auth_group_permissions` VALUES (70, 1, 70);
INSERT INTO `auth_group_permissions` VALUES (71, 1, 71);
INSERT INTO `auth_group_permissions` VALUES (72, 1, 72);
INSERT INTO `auth_group_permissions` VALUES (73, 1, 73);
INSERT INTO `auth_group_permissions` VALUES (74, 1, 74);
INSERT INTO `auth_group_permissions` VALUES (75, 1, 75);
INSERT INTO `auth_group_permissions` VALUES (76, 1, 76);
INSERT INTO `auth_group_permissions` VALUES (77, 1, 77);
INSERT INTO `auth_group_permissions` VALUES (78, 1, 78);
INSERT INTO `auth_group_permissions` VALUES (79, 1, 79);
INSERT INTO `auth_group_permissions` VALUES (80, 1, 80);
INSERT INTO `auth_group_permissions` VALUES (81, 1, 81);
INSERT INTO `auth_group_permissions` VALUES (82, 1, 82);
INSERT INTO `auth_group_permissions` VALUES (83, 1, 83);
INSERT INTO `auth_group_permissions` VALUES (84, 1, 84);
INSERT INTO `auth_group_permissions` VALUES (85, 1, 85);
INSERT INTO `auth_group_permissions` VALUES (86, 1, 86);
INSERT INTO `auth_group_permissions` VALUES (87, 1, 87);
INSERT INTO `auth_group_permissions` VALUES (88, 1, 88);
INSERT INTO `auth_group_permissions` VALUES (89, 1, 89);
INSERT INTO `auth_group_permissions` VALUES (90, 1, 90);
INSERT INTO `auth_group_permissions` VALUES (91, 1, 91);
INSERT INTO `auth_group_permissions` VALUES (92, 1, 92);
INSERT INTO `auth_group_permissions` VALUES (93, 1, 93);
INSERT INTO `auth_group_permissions` VALUES (94, 1, 94);
INSERT INTO `auth_group_permissions` VALUES (95, 1, 95);
INSERT INTO `auth_group_permissions` VALUES (96, 1, 96);
INSERT INTO `auth_group_permissions` VALUES (97, 1, 97);
INSERT INTO `auth_group_permissions` VALUES (98, 1, 98);
INSERT INTO `auth_group_permissions` VALUES (99, 1, 99);
INSERT INTO `auth_group_permissions` VALUES (100, 1, 100);
INSERT INTO `auth_group_permissions` VALUES (101, 1, 101);
INSERT INTO `auth_group_permissions` VALUES (102, 1, 102);
INSERT INTO `auth_group_permissions` VALUES (103, 1, 103);
INSERT INTO `auth_group_permissions` VALUES (104, 1, 104);
INSERT INTO `auth_group_permissions` VALUES (105, 1, 105);
INSERT INTO `auth_group_permissions` VALUES (106, 1, 106);
INSERT INTO `auth_group_permissions` VALUES (107, 1, 107);
INSERT INTO `auth_group_permissions` VALUES (108, 1, 108);
INSERT INTO `auth_group_permissions` VALUES (109, 1, 109);
INSERT INTO `auth_group_permissions` VALUES (110, 1, 110);
INSERT INTO `auth_group_permissions` VALUES (111, 1, 111);
INSERT INTO `auth_group_permissions` VALUES (112, 1, 112);
INSERT INTO `auth_group_permissions` VALUES (113, 1, 113);
INSERT INTO `auth_group_permissions` VALUES (114, 1, 114);
INSERT INTO `auth_group_permissions` VALUES (115, 1, 115);
INSERT INTO `auth_group_permissions` VALUES (116, 1, 116);
INSERT INTO `auth_group_permissions` VALUES (117, 1, 117);
INSERT INTO `auth_group_permissions` VALUES (118, 1, 118);
INSERT INTO `auth_group_permissions` VALUES (119, 1, 119);
INSERT INTO `auth_group_permissions` VALUES (120, 1, 120);
INSERT INTO `auth_group_permissions` VALUES (121, 1, 121);
INSERT INTO `auth_group_permissions` VALUES (122, 1, 122);
INSERT INTO `auth_group_permissions` VALUES (123, 1, 123);
INSERT INTO `auth_group_permissions` VALUES (124, 1, 124);
INSERT INTO `auth_group_permissions` VALUES (125, 1, 125);
INSERT INTO `auth_group_permissions` VALUES (126, 1, 126);
INSERT INTO `auth_group_permissions` VALUES (127, 1, 127);
INSERT INTO `auth_group_permissions` VALUES (128, 1, 128);
INSERT INTO `auth_group_permissions` VALUES (129, 1, 129);
INSERT INTO `auth_group_permissions` VALUES (130, 1, 130);
INSERT INTO `auth_group_permissions` VALUES (131, 1, 131);
INSERT INTO `auth_group_permissions` VALUES (132, 1, 132);
INSERT INTO `auth_group_permissions` VALUES (133, 1, 133);
INSERT INTO `auth_group_permissions` VALUES (134, 1, 134);
INSERT INTO `auth_group_permissions` VALUES (135, 1, 135);
INSERT INTO `auth_group_permissions` VALUES (136, 1, 136);
INSERT INTO `auth_group_permissions` VALUES (137, 1, 137);
INSERT INTO `auth_group_permissions` VALUES (138, 1, 138);
INSERT INTO `auth_group_permissions` VALUES (139, 1, 139);
INSERT INTO `auth_group_permissions` VALUES (140, 1, 140);
INSERT INTO `auth_group_permissions` VALUES (145, 2, 28);
INSERT INTO `auth_group_permissions` VALUES (146, 2, 32);
INSERT INTO `auth_group_permissions` VALUES (147, 2, 36);
INSERT INTO `auth_group_permissions` VALUES (148, 2, 40);
INSERT INTO `auth_group_permissions` VALUES (149, 2, 44);
INSERT INTO `auth_group_permissions` VALUES (150, 2, 48);
INSERT INTO `auth_group_permissions` VALUES (151, 2, 52);
INSERT INTO `auth_group_permissions` VALUES (152, 2, 56);
INSERT INTO `auth_group_permissions` VALUES (153, 2, 60);
INSERT INTO `auth_group_permissions` VALUES (154, 2, 64);
INSERT INTO `auth_group_permissions` VALUES (155, 2, 68);
INSERT INTO `auth_group_permissions` VALUES (156, 2, 72);
INSERT INTO `auth_group_permissions` VALUES (157, 2, 76);
INSERT INTO `auth_group_permissions` VALUES (158, 2, 80);
INSERT INTO `auth_group_permissions` VALUES (159, 2, 84);
INSERT INTO `auth_group_permissions` VALUES (160, 2, 88);
INSERT INTO `auth_group_permissions` VALUES (161, 2, 92);
INSERT INTO `auth_group_permissions` VALUES (162, 2, 96);
INSERT INTO `auth_group_permissions` VALUES (163, 2, 100);
INSERT INTO `auth_group_permissions` VALUES (164, 2, 104);
INSERT INTO `auth_group_permissions` VALUES (165, 2, 108);
INSERT INTO `auth_group_permissions` VALUES (166, 2, 112);
INSERT INTO `auth_group_permissions` VALUES (167, 2, 116);
INSERT INTO `auth_group_permissions` VALUES (168, 2, 120);
INSERT INTO `auth_group_permissions` VALUES (169, 2, 124);
INSERT INTO `auth_group_permissions` VALUES (141, 2, 128);
INSERT INTO `auth_group_permissions` VALUES (142, 2, 132);
INSERT INTO `auth_group_permissions` VALUES (143, 2, 136);
INSERT INTO `auth_group_permissions` VALUES (144, 2, 140);
INSERT INTO `auth_group_permissions` VALUES (170, 3, 1);
INSERT INTO `auth_group_permissions` VALUES (171, 3, 2);
INSERT INTO `auth_group_permissions` VALUES (172, 3, 3);
INSERT INTO `auth_group_permissions` VALUES (173, 3, 4);
INSERT INTO `auth_group_permissions` VALUES (174, 3, 5);
INSERT INTO `auth_group_permissions` VALUES (175, 3, 8);
INSERT INTO `auth_group_permissions` VALUES (176, 3, 9);
INSERT INTO `auth_group_permissions` VALUES (177, 3, 12);
INSERT INTO `auth_group_permissions` VALUES (178, 3, 13);
INSERT INTO `auth_group_permissions` VALUES (179, 3, 14);
INSERT INTO `auth_group_permissions` VALUES (180, 3, 15);
INSERT INTO `auth_group_permissions` VALUES (181, 3, 16);
INSERT INTO `auth_group_permissions` VALUES (182, 3, 17);
INSERT INTO `auth_group_permissions` VALUES (183, 3, 18);
INSERT INTO `auth_group_permissions` VALUES (184, 3, 19);
INSERT INTO `auth_group_permissions` VALUES (185, 3, 20);
INSERT INTO `auth_group_permissions` VALUES (186, 3, 21);
INSERT INTO `auth_group_permissions` VALUES (187, 3, 22);
INSERT INTO `auth_group_permissions` VALUES (188, 3, 23);
INSERT INTO `auth_group_permissions` VALUES (189, 3, 24);
INSERT INTO `auth_group_permissions` VALUES (190, 3, 25);
INSERT INTO `auth_group_permissions` VALUES (191, 3, 26);
INSERT INTO `auth_group_permissions` VALUES (192, 3, 27);
INSERT INTO `auth_group_permissions` VALUES (193, 3, 28);
INSERT INTO `auth_group_permissions` VALUES (194, 3, 29);
INSERT INTO `auth_group_permissions` VALUES (195, 3, 30);
INSERT INTO `auth_group_permissions` VALUES (196, 3, 31);
INSERT INTO `auth_group_permissions` VALUES (197, 3, 32);
INSERT INTO `auth_group_permissions` VALUES (198, 3, 33);
INSERT INTO `auth_group_permissions` VALUES (199, 3, 34);
INSERT INTO `auth_group_permissions` VALUES (200, 3, 35);
INSERT INTO `auth_group_permissions` VALUES (201, 3, 36);
INSERT INTO `auth_group_permissions` VALUES (202, 3, 37);
INSERT INTO `auth_group_permissions` VALUES (203, 3, 38);
INSERT INTO `auth_group_permissions` VALUES (204, 3, 39);
INSERT INTO `auth_group_permissions` VALUES (205, 3, 40);
INSERT INTO `auth_group_permissions` VALUES (206, 3, 41);
INSERT INTO `auth_group_permissions` VALUES (207, 3, 42);
INSERT INTO `auth_group_permissions` VALUES (208, 3, 43);
INSERT INTO `auth_group_permissions` VALUES (209, 3, 44);
INSERT INTO `auth_group_permissions` VALUES (210, 3, 45);
INSERT INTO `auth_group_permissions` VALUES (211, 3, 46);
INSERT INTO `auth_group_permissions` VALUES (212, 3, 47);
INSERT INTO `auth_group_permissions` VALUES (213, 3, 48);
INSERT INTO `auth_group_permissions` VALUES (214, 3, 49);
INSERT INTO `auth_group_permissions` VALUES (215, 3, 50);
INSERT INTO `auth_group_permissions` VALUES (216, 3, 51);
INSERT INTO `auth_group_permissions` VALUES (217, 3, 52);
INSERT INTO `auth_group_permissions` VALUES (218, 3, 53);
INSERT INTO `auth_group_permissions` VALUES (219, 3, 54);
INSERT INTO `auth_group_permissions` VALUES (220, 3, 55);
INSERT INTO `auth_group_permissions` VALUES (221, 3, 56);
INSERT INTO `auth_group_permissions` VALUES (222, 3, 57);
INSERT INTO `auth_group_permissions` VALUES (223, 3, 58);
INSERT INTO `auth_group_permissions` VALUES (224, 3, 59);
INSERT INTO `auth_group_permissions` VALUES (225, 3, 60);
INSERT INTO `auth_group_permissions` VALUES (226, 3, 61);
INSERT INTO `auth_group_permissions` VALUES (227, 3, 62);
INSERT INTO `auth_group_permissions` VALUES (228, 3, 63);
INSERT INTO `auth_group_permissions` VALUES (229, 3, 64);
INSERT INTO `auth_group_permissions` VALUES (230, 3, 65);
INSERT INTO `auth_group_permissions` VALUES (231, 3, 66);
INSERT INTO `auth_group_permissions` VALUES (232, 3, 67);
INSERT INTO `auth_group_permissions` VALUES (233, 3, 68);
INSERT INTO `auth_group_permissions` VALUES (234, 3, 69);
INSERT INTO `auth_group_permissions` VALUES (235, 3, 70);
INSERT INTO `auth_group_permissions` VALUES (236, 3, 71);
INSERT INTO `auth_group_permissions` VALUES (237, 3, 72);
INSERT INTO `auth_group_permissions` VALUES (238, 3, 73);
INSERT INTO `auth_group_permissions` VALUES (239, 3, 74);
INSERT INTO `auth_group_permissions` VALUES (240, 3, 75);
INSERT INTO `auth_group_permissions` VALUES (241, 3, 76);
INSERT INTO `auth_group_permissions` VALUES (242, 3, 77);
INSERT INTO `auth_group_permissions` VALUES (243, 3, 78);
INSERT INTO `auth_group_permissions` VALUES (244, 3, 79);
INSERT INTO `auth_group_permissions` VALUES (245, 3, 80);
INSERT INTO `auth_group_permissions` VALUES (246, 3, 81);
INSERT INTO `auth_group_permissions` VALUES (247, 3, 82);
INSERT INTO `auth_group_permissions` VALUES (248, 3, 83);
INSERT INTO `auth_group_permissions` VALUES (249, 3, 84);
INSERT INTO `auth_group_permissions` VALUES (250, 3, 85);
INSERT INTO `auth_group_permissions` VALUES (251, 3, 86);
INSERT INTO `auth_group_permissions` VALUES (252, 3, 87);
INSERT INTO `auth_group_permissions` VALUES (253, 3, 88);
INSERT INTO `auth_group_permissions` VALUES (254, 3, 93);
INSERT INTO `auth_group_permissions` VALUES (255, 3, 94);
INSERT INTO `auth_group_permissions` VALUES (256, 3, 95);
INSERT INTO `auth_group_permissions` VALUES (257, 3, 96);
INSERT INTO `auth_group_permissions` VALUES (258, 3, 97);
INSERT INTO `auth_group_permissions` VALUES (259, 3, 98);
INSERT INTO `auth_group_permissions` VALUES (260, 3, 99);
INSERT INTO `auth_group_permissions` VALUES (261, 3, 100);
INSERT INTO `auth_group_permissions` VALUES (262, 3, 101);
INSERT INTO `auth_group_permissions` VALUES (263, 3, 102);
INSERT INTO `auth_group_permissions` VALUES (264, 3, 103);
INSERT INTO `auth_group_permissions` VALUES (265, 3, 104);
INSERT INTO `auth_group_permissions` VALUES (266, 3, 105);
INSERT INTO `auth_group_permissions` VALUES (267, 3, 106);
INSERT INTO `auth_group_permissions` VALUES (268, 3, 107);
INSERT INTO `auth_group_permissions` VALUES (269, 3, 108);
INSERT INTO `auth_group_permissions` VALUES (270, 3, 109);
INSERT INTO `auth_group_permissions` VALUES (271, 3, 110);
INSERT INTO `auth_group_permissions` VALUES (272, 3, 111);
INSERT INTO `auth_group_permissions` VALUES (273, 3, 112);
INSERT INTO `auth_group_permissions` VALUES (274, 3, 113);
INSERT INTO `auth_group_permissions` VALUES (275, 3, 114);
INSERT INTO `auth_group_permissions` VALUES (276, 3, 115);
INSERT INTO `auth_group_permissions` VALUES (277, 3, 116);
INSERT INTO `auth_group_permissions` VALUES (278, 3, 117);
INSERT INTO `auth_group_permissions` VALUES (279, 3, 118);
INSERT INTO `auth_group_permissions` VALUES (280, 3, 119);
INSERT INTO `auth_group_permissions` VALUES (281, 3, 120);
INSERT INTO `auth_group_permissions` VALUES (282, 3, 121);
INSERT INTO `auth_group_permissions` VALUES (283, 3, 122);
INSERT INTO `auth_group_permissions` VALUES (284, 3, 123);
INSERT INTO `auth_group_permissions` VALUES (285, 3, 124);
INSERT INTO `auth_group_permissions` VALUES (286, 3, 125);
INSERT INTO `auth_group_permissions` VALUES (287, 3, 126);
INSERT INTO `auth_group_permissions` VALUES (288, 3, 127);
INSERT INTO `auth_group_permissions` VALUES (289, 3, 128);
INSERT INTO `auth_group_permissions` VALUES (290, 3, 129);
INSERT INTO `auth_group_permissions` VALUES (291, 3, 130);
INSERT INTO `auth_group_permissions` VALUES (292, 3, 131);
INSERT INTO `auth_group_permissions` VALUES (293, 3, 132);
INSERT INTO `auth_group_permissions` VALUES (294, 3, 133);
INSERT INTO `auth_group_permissions` VALUES (295, 3, 134);
INSERT INTO `auth_group_permissions` VALUES (296, 3, 135);
INSERT INTO `auth_group_permissions` VALUES (297, 3, 136);
INSERT INTO `auth_group_permissions` VALUES (298, 3, 137);
INSERT INTO `auth_group_permissions` VALUES (299, 3, 138);
INSERT INTO `auth_group_permissions` VALUES (300, 3, 139);
INSERT INTO `auth_group_permissions` VALUES (301, 3, 140);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add Token', 6, 'add_token');
INSERT INTO `auth_permission` VALUES (22, 'Can change Token', 6, 'change_token');
INSERT INTO `auth_permission` VALUES (23, 'Can delete Token', 6, 'delete_token');
INSERT INTO `auth_permission` VALUES (24, 'Can view Token', 6, 'view_token');
INSERT INTO `auth_permission` VALUES (25, 'Can add 品牌', 7, 'add_brand');
INSERT INTO `auth_permission` VALUES (26, 'Can change 品牌', 7, 'change_brand');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 品牌', 7, 'delete_brand');
INSERT INTO `auth_permission` VALUES (28, 'Can view 品牌', 7, 'view_brand');
INSERT INTO `auth_permission` VALUES (29, 'Can add 品牌和商品分类映射表', 8, 'add_brandcategorymapping');
INSERT INTO `auth_permission` VALUES (30, 'Can change 品牌和商品分类映射表', 8, 'change_brandcategorymapping');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 品牌和商品分类映射表', 8, 'delete_brandcategorymapping');
INSERT INTO `auth_permission` VALUES (32, 'Can view 品牌和商品分类映射表', 8, 'view_brandcategorymapping');
INSERT INTO `auth_permission` VALUES (33, 'Can add 商品分类', 9, 'add_productcategory');
INSERT INTO `auth_permission` VALUES (34, 'Can change 商品分类', 9, 'change_productcategory');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 商品分类', 9, 'delete_productcategory');
INSERT INTO `auth_permission` VALUES (36, 'Can view 商品分类', 9, 'view_productcategory');
INSERT INTO `auth_permission` VALUES (37, 'Can add 商品评论', 10, 'add_productcomment');
INSERT INTO `auth_permission` VALUES (38, 'Can change 商品评论', 10, 'change_productcomment');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 商品评论', 10, 'delete_productcomment');
INSERT INTO `auth_permission` VALUES (40, 'Can view 商品评论', 10, 'view_productcomment');
INSERT INTO `auth_permission` VALUES (41, 'Can add 商品进销存', 11, 'add_productspecification');
INSERT INTO `auth_permission` VALUES (42, 'Can change 商品进销存', 11, 'change_productspecification');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 商品进销存', 11, 'delete_productspecification');
INSERT INTO `auth_permission` VALUES (44, 'Can view 商品进销存', 11, 'view_productspecification');
INSERT INTO `auth_permission` VALUES (45, 'Can add 商品统计信息', 12, 'add_productstatistics');
INSERT INTO `auth_permission` VALUES (46, 'Can change 商品统计信息', 12, 'change_productstatistics');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 商品统计信息', 12, 'delete_productstatistics');
INSERT INTO `auth_permission` VALUES (48, 'Can view 商品统计信息', 12, 'view_productstatistics');
INSERT INTO `auth_permission` VALUES (49, 'Can add 商品规格详情', 13, 'add_sku');
INSERT INTO `auth_permission` VALUES (50, 'Can change 商品规格详情', 13, 'change_sku');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 商品规格详情', 13, 'delete_sku');
INSERT INTO `auth_permission` VALUES (52, 'Can view 商品规格详情', 13, 'view_sku');
INSERT INTO `auth_permission` VALUES (53, 'Can add 规格参数组', 14, 'add_specgroup');
INSERT INTO `auth_permission` VALUES (54, 'Can change 规格参数组', 14, 'change_specgroup');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 规格参数组', 14, 'delete_specgroup');
INSERT INTO `auth_permission` VALUES (56, 'Can view 规格参数组', 14, 'view_specgroup');
INSERT INTO `auth_permission` VALUES (57, 'Can add 规格参数', 15, 'add_specparam');
INSERT INTO `auth_permission` VALUES (58, 'Can change 规格参数', 15, 'change_specparam');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 规格参数', 15, 'delete_specparam');
INSERT INTO `auth_permission` VALUES (60, 'Can view 规格参数', 15, 'view_specparam');
INSERT INTO `auth_permission` VALUES (61, 'Can add 商品SPU', 16, 'add_spu');
INSERT INTO `auth_permission` VALUES (62, 'Can change 商品SPU', 16, 'change_spu');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 商品SPU', 16, 'delete_spu');
INSERT INTO `auth_permission` VALUES (64, 'Can view 商品SPU', 16, 'view_spu');
INSERT INTO `auth_permission` VALUES (65, 'Can add 商品SPU详情', 17, 'add_spudetail');
INSERT INTO `auth_permission` VALUES (66, 'Can change 商品SPU详情', 17, 'change_spudetail');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 商品SPU详情', 17, 'delete_spudetail');
INSERT INTO `auth_permission` VALUES (68, 'Can view 商品SPU详情', 17, 'view_spudetail');
INSERT INTO `auth_permission` VALUES (69, 'Can add 商品库存', 18, 'add_stock');
INSERT INTO `auth_permission` VALUES (70, 'Can change 商品库存', 18, 'change_stock');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 商品库存', 18, 'delete_stock');
INSERT INTO `auth_permission` VALUES (72, 'Can view 商品库存', 18, 'view_stock');
INSERT INTO `auth_permission` VALUES (73, 'Can add 商品优惠券', 19, 'add_coupon');
INSERT INTO `auth_permission` VALUES (74, 'Can change 商品优惠券', 19, 'change_coupon');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 商品优惠券', 19, 'delete_coupon');
INSERT INTO `auth_permission` VALUES (76, 'Can view 商品优惠券', 19, 'view_coupon');
INSERT INTO `auth_permission` VALUES (77, 'Can add 商品优惠券关联表', 20, 'add_productcouponmapping');
INSERT INTO `auth_permission` VALUES (78, 'Can change 商品优惠券关联表', 20, 'change_productcouponmapping');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 商品优惠券关联表', 20, 'delete_productcouponmapping');
INSERT INTO `auth_permission` VALUES (80, 'Can view 商品优惠券关联表', 20, 'view_productcouponmapping');
INSERT INTO `auth_permission` VALUES (81, 'Can add 商品促销活动关联表', 21, 'add_productpromotionmapping');
INSERT INTO `auth_permission` VALUES (82, 'Can change 商品促销活动关联表', 21, 'change_productpromotionmapping');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 商品促销活动关联表', 21, 'delete_productpromotionmapping');
INSERT INTO `auth_permission` VALUES (84, 'Can view 商品促销活动关联表', 21, 'view_productpromotionmapping');
INSERT INTO `auth_permission` VALUES (85, 'Can add 商品促销活动', 22, 'add_promotionevent');
INSERT INTO `auth_permission` VALUES (86, 'Can change 商品促销活动', 22, 'change_promotionevent');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 商品促销活动', 22, 'delete_promotionevent');
INSERT INTO `auth_permission` VALUES (88, 'Can view 商品促销活动', 22, 'view_promotionevent');
INSERT INTO `auth_permission` VALUES (89, 'Can add 用户', 23, 'add_user');
INSERT INTO `auth_permission` VALUES (90, 'Can change 用户', 23, 'change_user');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 用户', 23, 'delete_user');
INSERT INTO `auth_permission` VALUES (92, 'Can view 用户', 23, 'view_user');
INSERT INTO `auth_permission` VALUES (93, 'Can add 用户地址', 24, 'add_customeraddr');
INSERT INTO `auth_permission` VALUES (94, 'Can change 用户地址', 24, 'change_customeraddr');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 用户地址', 24, 'delete_customeraddr');
INSERT INTO `auth_permission` VALUES (96, 'Can view 用户地址', 24, 'view_customeraddr');
INSERT INTO `auth_permission` VALUES (97, 'Can add 用户余额变动', 25, 'add_customerbalancelog');
INSERT INTO `auth_permission` VALUES (98, 'Can change 用户余额变动', 25, 'change_customerbalancelog');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 用户余额变动', 25, 'delete_customerbalancelog');
INSERT INTO `auth_permission` VALUES (100, 'Can view 用户余额变动', 25, 'view_customerbalancelog');
INSERT INTO `auth_permission` VALUES (101, 'Can add 用户信息', 26, 'add_customerinfo');
INSERT INTO `auth_permission` VALUES (102, 'Can change 用户信息', 26, 'change_customerinfo');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 用户信息', 26, 'delete_customerinfo');
INSERT INTO `auth_permission` VALUES (104, 'Can view 用户信息', 26, 'view_customerinfo');
INSERT INTO `auth_permission` VALUES (105, 'Can add 用户级别信息', 27, 'add_customerlevelinfo');
INSERT INTO `auth_permission` VALUES (106, 'Can change 用户级别信息', 27, 'change_customerlevelinfo');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 用户级别信息', 27, 'delete_customerlevelinfo');
INSERT INTO `auth_permission` VALUES (108, 'Can view 用户级别信息', 27, 'view_customerlevelinfo');
INSERT INTO `auth_permission` VALUES (109, 'Can add 用户登录日志', 28, 'add_customerloginlog');
INSERT INTO `auth_permission` VALUES (110, 'Can change 用户登录日志', 28, 'change_customerloginlog');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 用户登录日志', 28, 'delete_customerloginlog');
INSERT INTO `auth_permission` VALUES (112, 'Can view 用户登录日志', 28, 'view_customerloginlog');
INSERT INTO `auth_permission` VALUES (113, 'Can add 用户积分日志', 29, 'add_customerpointlog');
INSERT INTO `auth_permission` VALUES (114, 'Can change 用户积分日志', 29, 'change_customerpointlog');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 用户积分日志', 29, 'delete_customerpointlog');
INSERT INTO `auth_permission` VALUES (116, 'Can view 用户积分日志', 29, 'view_customerpointlog');
INSERT INTO `auth_permission` VALUES (117, 'Can add 购物车', 30, 'add_ordercart');
INSERT INTO `auth_permission` VALUES (118, 'Can change 购物车', 30, 'change_ordercart');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 购物车', 30, 'delete_ordercart');
INSERT INTO `auth_permission` VALUES (120, 'Can view 购物车', 30, 'view_ordercart');
INSERT INTO `auth_permission` VALUES (121, 'Can add 订单详情', 31, 'add_orderdetail');
INSERT INTO `auth_permission` VALUES (122, 'Can change 订单详情', 31, 'change_orderdetail');
INSERT INTO `auth_permission` VALUES (123, 'Can delete 订单详情', 31, 'delete_orderdetail');
INSERT INTO `auth_permission` VALUES (124, 'Can view 订单详情', 31, 'view_orderdetail');
INSERT INTO `auth_permission` VALUES (125, 'Can add 主订单', 32, 'add_ordermaster');
INSERT INTO `auth_permission` VALUES (126, 'Can change 主订单', 32, 'change_ordermaster');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 主订单', 32, 'delete_ordermaster');
INSERT INTO `auth_permission` VALUES (128, 'Can view 主订单', 32, 'view_ordermaster');
INSERT INTO `auth_permission` VALUES (129, 'Can add 物流公司信息', 33, 'add_shippinginfo');
INSERT INTO `auth_permission` VALUES (130, 'Can change 物流公司信息', 33, 'change_shippinginfo');
INSERT INTO `auth_permission` VALUES (131, 'Can delete 物流公司信息', 33, 'delete_shippinginfo');
INSERT INTO `auth_permission` VALUES (132, 'Can view 物流公司信息', 33, 'view_shippinginfo');
INSERT INTO `auth_permission` VALUES (133, 'Can add 仓库信息', 34, 'add_warehouseinfo');
INSERT INTO `auth_permission` VALUES (134, 'Can change 仓库信息', 34, 'change_warehouseinfo');
INSERT INTO `auth_permission` VALUES (135, 'Can delete 仓库信息', 34, 'delete_warehouseinfo');
INSERT INTO `auth_permission` VALUES (136, 'Can view 仓库信息', 34, 'view_warehouseinfo');
INSERT INTO `auth_permission` VALUES (137, 'Can add 商品库存', 35, 'add_warehouseproduct');
INSERT INTO `auth_permission` VALUES (138, 'Can change 商品库存', 35, 'change_warehouseproduct');
INSERT INTO `auth_permission` VALUES (139, 'Can delete 商品库存', 35, 'delete_warehouseproduct');
INSERT INTO `auth_permission` VALUES (140, 'Can view 商品库存', 35, 'view_warehouseproduct');

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token`  (
  `key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

-- ----------------------------
-- Table structure for cus_customer_addr
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer_addr`;
CREATE TABLE `cus_customer_addr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `postcode` int(11) NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_default` int(11) NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cus_customer_addr
-- ----------------------------

-- ----------------------------
-- Table structure for cus_customer_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer_balance_log`;
CREATE TABLE `cus_customer_balance_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `source` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` int(11) NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cus_customer_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for cus_customer_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer_info`;
CREATE TABLE `cus_customer_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `identity_card_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `identity_card_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile_phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_point` int(11) NULL DEFAULT NULL,
  `register_time` datetime(6) NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `customer_level` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_money` double NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nickname`(`nickname`) USING BTREE,
  UNIQUE INDEX `identity_card_no`(`identity_card_no`) USING BTREE,
  UNIQUE INDEX `mobile_phone`(`mobile_phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cus_customer_info
-- ----------------------------

-- ----------------------------
-- Table structure for cus_customer_level_info
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer_level_info`;
CREATE TABLE `cus_customer_level_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `min_point` int(11) NULL DEFAULT NULL,
  `max_point` int(11) NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `level_name`(`level_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cus_customer_level_info
-- ----------------------------

-- ----------------------------
-- Table structure for cus_customer_login_log
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer_login_log`;
CREATE TABLE `cus_customer_login_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `login_time` datetime(6) NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `login_status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cus_customer_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for cus_customer_point_log
-- ----------------------------
DROP TABLE IF EXISTS `cus_customer_point_log`;
CREATE TABLE `cus_customer_point_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `source` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `refer_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `change_point` int(11) NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cus_customer_point_log
-- ----------------------------

-- ----------------------------
-- Table structure for customer_user
-- ----------------------------
DROP TABLE IF EXISTS `customer_user`;
CREATE TABLE `customer_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_stats` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `customer_id`(`customer_id`) USING BTREE,
  CONSTRAINT `customer_user_customer_id_890edca8_fk_cus_customer_info_id` FOREIGN KEY (`customer_id`) REFERENCES `cus_customer_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_user
-- ----------------------------
INSERT INTO `customer_user` VALUES (1, 'pbkdf2_sha256$120000$VNZUKWDXSZtU$LWsq2XzsQnDdsd4QFr1i+7SGSmfJK6Oz2E1D6W39h8E=', '2020-08-28 01:50:23.837726', 1, '张恒', '', '', 'zhangheng6cah@163.com', 1, 1, '2020-08-27 07:00:00.000000', '2', NULL, NULL);
INSERT INTO `customer_user` VALUES (2, 'pbkdf2_sha256$120000$1eG3OXATYk3o$CfegDW4vcVubrauH9WGlXdxXMPocroyHAL9rLq/z/Fk=', NULL, 0, 'root', '', '', '', 1, 1, '2020-08-27 07:54:00.000000', '2', NULL, NULL);

-- ----------------------------
-- Table structure for customer_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `customer_user_groups`;
CREATE TABLE `customer_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customer_user_groups_user_id_group_id_71aeaf5a_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `customer_user_groups_group_id_7d15206e_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `customer_user_groups_group_id_7d15206e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `customer_user_groups_user_id_d038c250_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for customer_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `customer_user_user_permissions`;
CREATE TABLE `customer_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customer_user_user_permi_user_id_permission_id_806fb87a_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `customer_user_user_p_permission_id_4bc8253e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `customer_user_user_p_permission_id_4bc8253e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `customer_user_user_p_user_id_71ea88a5_fk_customer_` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_user_user_permissions
-- ----------------------------
INSERT INTO `customer_user_user_permissions` VALUES (1, 1, 1);
INSERT INTO `customer_user_user_permissions` VALUES (2, 1, 2);
INSERT INTO `customer_user_user_permissions` VALUES (3, 1, 3);
INSERT INTO `customer_user_user_permissions` VALUES (4, 1, 4);
INSERT INTO `customer_user_user_permissions` VALUES (5, 1, 5);
INSERT INTO `customer_user_user_permissions` VALUES (6, 1, 6);
INSERT INTO `customer_user_user_permissions` VALUES (7, 1, 7);
INSERT INTO `customer_user_user_permissions` VALUES (8, 1, 8);
INSERT INTO `customer_user_user_permissions` VALUES (9, 1, 9);
INSERT INTO `customer_user_user_permissions` VALUES (10, 1, 10);
INSERT INTO `customer_user_user_permissions` VALUES (11, 1, 11);
INSERT INTO `customer_user_user_permissions` VALUES (12, 1, 12);
INSERT INTO `customer_user_user_permissions` VALUES (13, 1, 13);
INSERT INTO `customer_user_user_permissions` VALUES (14, 1, 14);
INSERT INTO `customer_user_user_permissions` VALUES (15, 1, 15);
INSERT INTO `customer_user_user_permissions` VALUES (16, 1, 16);
INSERT INTO `customer_user_user_permissions` VALUES (17, 1, 17);
INSERT INTO `customer_user_user_permissions` VALUES (18, 1, 18);
INSERT INTO `customer_user_user_permissions` VALUES (19, 1, 19);
INSERT INTO `customer_user_user_permissions` VALUES (20, 1, 20);
INSERT INTO `customer_user_user_permissions` VALUES (21, 1, 21);
INSERT INTO `customer_user_user_permissions` VALUES (22, 1, 22);
INSERT INTO `customer_user_user_permissions` VALUES (23, 1, 23);
INSERT INTO `customer_user_user_permissions` VALUES (24, 1, 24);
INSERT INTO `customer_user_user_permissions` VALUES (25, 1, 25);
INSERT INTO `customer_user_user_permissions` VALUES (26, 1, 26);
INSERT INTO `customer_user_user_permissions` VALUES (27, 1, 27);
INSERT INTO `customer_user_user_permissions` VALUES (28, 1, 28);
INSERT INTO `customer_user_user_permissions` VALUES (29, 1, 29);
INSERT INTO `customer_user_user_permissions` VALUES (30, 1, 30);
INSERT INTO `customer_user_user_permissions` VALUES (31, 1, 31);
INSERT INTO `customer_user_user_permissions` VALUES (32, 1, 32);
INSERT INTO `customer_user_user_permissions` VALUES (33, 1, 33);
INSERT INTO `customer_user_user_permissions` VALUES (34, 1, 34);
INSERT INTO `customer_user_user_permissions` VALUES (35, 1, 35);
INSERT INTO `customer_user_user_permissions` VALUES (36, 1, 36);
INSERT INTO `customer_user_user_permissions` VALUES (37, 1, 37);
INSERT INTO `customer_user_user_permissions` VALUES (38, 1, 38);
INSERT INTO `customer_user_user_permissions` VALUES (39, 1, 39);
INSERT INTO `customer_user_user_permissions` VALUES (40, 1, 40);
INSERT INTO `customer_user_user_permissions` VALUES (41, 1, 41);
INSERT INTO `customer_user_user_permissions` VALUES (42, 1, 42);
INSERT INTO `customer_user_user_permissions` VALUES (43, 1, 43);
INSERT INTO `customer_user_user_permissions` VALUES (44, 1, 44);
INSERT INTO `customer_user_user_permissions` VALUES (45, 1, 45);
INSERT INTO `customer_user_user_permissions` VALUES (46, 1, 46);
INSERT INTO `customer_user_user_permissions` VALUES (47, 1, 47);
INSERT INTO `customer_user_user_permissions` VALUES (48, 1, 48);
INSERT INTO `customer_user_user_permissions` VALUES (49, 1, 49);
INSERT INTO `customer_user_user_permissions` VALUES (50, 1, 50);
INSERT INTO `customer_user_user_permissions` VALUES (51, 1, 51);
INSERT INTO `customer_user_user_permissions` VALUES (52, 1, 52);
INSERT INTO `customer_user_user_permissions` VALUES (53, 1, 53);
INSERT INTO `customer_user_user_permissions` VALUES (54, 1, 54);
INSERT INTO `customer_user_user_permissions` VALUES (55, 1, 55);
INSERT INTO `customer_user_user_permissions` VALUES (56, 1, 56);
INSERT INTO `customer_user_user_permissions` VALUES (57, 1, 57);
INSERT INTO `customer_user_user_permissions` VALUES (58, 1, 58);
INSERT INTO `customer_user_user_permissions` VALUES (59, 1, 59);
INSERT INTO `customer_user_user_permissions` VALUES (60, 1, 60);
INSERT INTO `customer_user_user_permissions` VALUES (61, 1, 61);
INSERT INTO `customer_user_user_permissions` VALUES (62, 1, 62);
INSERT INTO `customer_user_user_permissions` VALUES (63, 1, 63);
INSERT INTO `customer_user_user_permissions` VALUES (64, 1, 64);
INSERT INTO `customer_user_user_permissions` VALUES (65, 1, 65);
INSERT INTO `customer_user_user_permissions` VALUES (66, 1, 66);
INSERT INTO `customer_user_user_permissions` VALUES (67, 1, 67);
INSERT INTO `customer_user_user_permissions` VALUES (68, 1, 68);
INSERT INTO `customer_user_user_permissions` VALUES (69, 1, 69);
INSERT INTO `customer_user_user_permissions` VALUES (70, 1, 70);
INSERT INTO `customer_user_user_permissions` VALUES (71, 1, 71);
INSERT INTO `customer_user_user_permissions` VALUES (72, 1, 72);
INSERT INTO `customer_user_user_permissions` VALUES (73, 1, 73);
INSERT INTO `customer_user_user_permissions` VALUES (74, 1, 74);
INSERT INTO `customer_user_user_permissions` VALUES (75, 1, 75);
INSERT INTO `customer_user_user_permissions` VALUES (76, 1, 76);
INSERT INTO `customer_user_user_permissions` VALUES (77, 1, 77);
INSERT INTO `customer_user_user_permissions` VALUES (78, 1, 78);
INSERT INTO `customer_user_user_permissions` VALUES (79, 1, 79);
INSERT INTO `customer_user_user_permissions` VALUES (80, 1, 80);
INSERT INTO `customer_user_user_permissions` VALUES (81, 1, 81);
INSERT INTO `customer_user_user_permissions` VALUES (82, 1, 82);
INSERT INTO `customer_user_user_permissions` VALUES (83, 1, 83);
INSERT INTO `customer_user_user_permissions` VALUES (84, 1, 84);
INSERT INTO `customer_user_user_permissions` VALUES (85, 1, 85);
INSERT INTO `customer_user_user_permissions` VALUES (86, 1, 86);
INSERT INTO `customer_user_user_permissions` VALUES (87, 1, 87);
INSERT INTO `customer_user_user_permissions` VALUES (88, 1, 88);
INSERT INTO `customer_user_user_permissions` VALUES (89, 1, 89);
INSERT INTO `customer_user_user_permissions` VALUES (90, 1, 90);
INSERT INTO `customer_user_user_permissions` VALUES (91, 1, 91);
INSERT INTO `customer_user_user_permissions` VALUES (92, 1, 92);
INSERT INTO `customer_user_user_permissions` VALUES (93, 1, 93);
INSERT INTO `customer_user_user_permissions` VALUES (94, 1, 94);
INSERT INTO `customer_user_user_permissions` VALUES (95, 1, 95);
INSERT INTO `customer_user_user_permissions` VALUES (96, 1, 96);
INSERT INTO `customer_user_user_permissions` VALUES (97, 1, 97);
INSERT INTO `customer_user_user_permissions` VALUES (98, 1, 98);
INSERT INTO `customer_user_user_permissions` VALUES (99, 1, 99);
INSERT INTO `customer_user_user_permissions` VALUES (100, 1, 100);
INSERT INTO `customer_user_user_permissions` VALUES (101, 1, 101);
INSERT INTO `customer_user_user_permissions` VALUES (102, 1, 102);
INSERT INTO `customer_user_user_permissions` VALUES (103, 1, 103);
INSERT INTO `customer_user_user_permissions` VALUES (104, 1, 104);
INSERT INTO `customer_user_user_permissions` VALUES (105, 1, 105);
INSERT INTO `customer_user_user_permissions` VALUES (106, 1, 106);
INSERT INTO `customer_user_user_permissions` VALUES (107, 1, 107);
INSERT INTO `customer_user_user_permissions` VALUES (108, 1, 108);
INSERT INTO `customer_user_user_permissions` VALUES (109, 1, 109);
INSERT INTO `customer_user_user_permissions` VALUES (110, 1, 110);
INSERT INTO `customer_user_user_permissions` VALUES (111, 1, 111);
INSERT INTO `customer_user_user_permissions` VALUES (112, 1, 112);
INSERT INTO `customer_user_user_permissions` VALUES (113, 1, 113);
INSERT INTO `customer_user_user_permissions` VALUES (114, 1, 114);
INSERT INTO `customer_user_user_permissions` VALUES (115, 1, 115);
INSERT INTO `customer_user_user_permissions` VALUES (116, 1, 116);
INSERT INTO `customer_user_user_permissions` VALUES (117, 1, 117);
INSERT INTO `customer_user_user_permissions` VALUES (118, 1, 118);
INSERT INTO `customer_user_user_permissions` VALUES (119, 1, 119);
INSERT INTO `customer_user_user_permissions` VALUES (120, 1, 120);
INSERT INTO `customer_user_user_permissions` VALUES (121, 1, 121);
INSERT INTO `customer_user_user_permissions` VALUES (122, 1, 122);
INSERT INTO `customer_user_user_permissions` VALUES (123, 1, 123);
INSERT INTO `customer_user_user_permissions` VALUES (124, 1, 124);
INSERT INTO `customer_user_user_permissions` VALUES (125, 1, 125);
INSERT INTO `customer_user_user_permissions` VALUES (126, 1, 126);
INSERT INTO `customer_user_user_permissions` VALUES (127, 1, 127);
INSERT INTO `customer_user_user_permissions` VALUES (128, 1, 128);
INSERT INTO `customer_user_user_permissions` VALUES (129, 1, 129);
INSERT INTO `customer_user_user_permissions` VALUES (130, 1, 130);
INSERT INTO `customer_user_user_permissions` VALUES (131, 1, 131);
INSERT INTO `customer_user_user_permissions` VALUES (132, 1, 132);
INSERT INTO `customer_user_user_permissions` VALUES (133, 1, 133);
INSERT INTO `customer_user_user_permissions` VALUES (134, 1, 134);
INSERT INTO `customer_user_user_permissions` VALUES (135, 1, 135);
INSERT INTO `customer_user_user_permissions` VALUES (136, 1, 136);
INSERT INTO `customer_user_user_permissions` VALUES (137, 1, 137);
INSERT INTO `customer_user_user_permissions` VALUES (138, 1, 138);
INSERT INTO `customer_user_user_permissions` VALUES (139, 1, 139);
INSERT INTO `customer_user_user_permissions` VALUES (140, 1, 140);
INSERT INTO `customer_user_user_permissions` VALUES (141, 2, 25);
INSERT INTO `customer_user_user_permissions` VALUES (142, 2, 26);
INSERT INTO `customer_user_user_permissions` VALUES (143, 2, 27);
INSERT INTO `customer_user_user_permissions` VALUES (144, 2, 28);
INSERT INTO `customer_user_user_permissions` VALUES (145, 2, 29);
INSERT INTO `customer_user_user_permissions` VALUES (146, 2, 30);
INSERT INTO `customer_user_user_permissions` VALUES (147, 2, 31);
INSERT INTO `customer_user_user_permissions` VALUES (148, 2, 32);
INSERT INTO `customer_user_user_permissions` VALUES (149, 2, 33);
INSERT INTO `customer_user_user_permissions` VALUES (150, 2, 34);
INSERT INTO `customer_user_user_permissions` VALUES (151, 2, 35);
INSERT INTO `customer_user_user_permissions` VALUES (152, 2, 36);
INSERT INTO `customer_user_user_permissions` VALUES (153, 2, 37);
INSERT INTO `customer_user_user_permissions` VALUES (154, 2, 38);
INSERT INTO `customer_user_user_permissions` VALUES (155, 2, 39);
INSERT INTO `customer_user_user_permissions` VALUES (156, 2, 40);
INSERT INTO `customer_user_user_permissions` VALUES (157, 2, 41);
INSERT INTO `customer_user_user_permissions` VALUES (158, 2, 42);
INSERT INTO `customer_user_user_permissions` VALUES (159, 2, 43);
INSERT INTO `customer_user_user_permissions` VALUES (160, 2, 44);
INSERT INTO `customer_user_user_permissions` VALUES (161, 2, 45);
INSERT INTO `customer_user_user_permissions` VALUES (162, 2, 46);
INSERT INTO `customer_user_user_permissions` VALUES (163, 2, 47);
INSERT INTO `customer_user_user_permissions` VALUES (164, 2, 48);
INSERT INTO `customer_user_user_permissions` VALUES (165, 2, 49);
INSERT INTO `customer_user_user_permissions` VALUES (166, 2, 50);
INSERT INTO `customer_user_user_permissions` VALUES (167, 2, 51);
INSERT INTO `customer_user_user_permissions` VALUES (168, 2, 52);
INSERT INTO `customer_user_user_permissions` VALUES (169, 2, 53);
INSERT INTO `customer_user_user_permissions` VALUES (170, 2, 54);
INSERT INTO `customer_user_user_permissions` VALUES (171, 2, 55);
INSERT INTO `customer_user_user_permissions` VALUES (172, 2, 56);
INSERT INTO `customer_user_user_permissions` VALUES (173, 2, 57);
INSERT INTO `customer_user_user_permissions` VALUES (174, 2, 58);
INSERT INTO `customer_user_user_permissions` VALUES (175, 2, 59);
INSERT INTO `customer_user_user_permissions` VALUES (176, 2, 60);
INSERT INTO `customer_user_user_permissions` VALUES (177, 2, 61);
INSERT INTO `customer_user_user_permissions` VALUES (178, 2, 62);
INSERT INTO `customer_user_user_permissions` VALUES (179, 2, 63);
INSERT INTO `customer_user_user_permissions` VALUES (180, 2, 64);
INSERT INTO `customer_user_user_permissions` VALUES (181, 2, 65);
INSERT INTO `customer_user_user_permissions` VALUES (182, 2, 66);
INSERT INTO `customer_user_user_permissions` VALUES (183, 2, 67);
INSERT INTO `customer_user_user_permissions` VALUES (184, 2, 68);
INSERT INTO `customer_user_user_permissions` VALUES (185, 2, 69);
INSERT INTO `customer_user_user_permissions` VALUES (186, 2, 70);
INSERT INTO `customer_user_user_permissions` VALUES (187, 2, 71);
INSERT INTO `customer_user_user_permissions` VALUES (188, 2, 72);
INSERT INTO `customer_user_user_permissions` VALUES (189, 2, 73);
INSERT INTO `customer_user_user_permissions` VALUES (190, 2, 74);
INSERT INTO `customer_user_user_permissions` VALUES (191, 2, 75);
INSERT INTO `customer_user_user_permissions` VALUES (192, 2, 76);
INSERT INTO `customer_user_user_permissions` VALUES (193, 2, 77);
INSERT INTO `customer_user_user_permissions` VALUES (194, 2, 78);
INSERT INTO `customer_user_user_permissions` VALUES (195, 2, 79);
INSERT INTO `customer_user_user_permissions` VALUES (196, 2, 80);
INSERT INTO `customer_user_user_permissions` VALUES (197, 2, 81);
INSERT INTO `customer_user_user_permissions` VALUES (198, 2, 82);
INSERT INTO `customer_user_user_permissions` VALUES (199, 2, 83);
INSERT INTO `customer_user_user_permissions` VALUES (200, 2, 84);
INSERT INTO `customer_user_user_permissions` VALUES (201, 2, 85);
INSERT INTO `customer_user_user_permissions` VALUES (202, 2, 86);
INSERT INTO `customer_user_user_permissions` VALUES (203, 2, 87);
INSERT INTO `customer_user_user_permissions` VALUES (204, 2, 88);
INSERT INTO `customer_user_user_permissions` VALUES (205, 2, 117);
INSERT INTO `customer_user_user_permissions` VALUES (206, 2, 118);
INSERT INTO `customer_user_user_permissions` VALUES (207, 2, 119);
INSERT INTO `customer_user_user_permissions` VALUES (208, 2, 120);
INSERT INTO `customer_user_user_permissions` VALUES (209, 2, 121);
INSERT INTO `customer_user_user_permissions` VALUES (210, 2, 122);
INSERT INTO `customer_user_user_permissions` VALUES (211, 2, 123);
INSERT INTO `customer_user_user_permissions` VALUES (212, 2, 124);
INSERT INTO `customer_user_user_permissions` VALUES (213, 2, 125);
INSERT INTO `customer_user_user_permissions` VALUES (214, 2, 126);
INSERT INTO `customer_user_user_permissions` VALUES (215, 2, 127);
INSERT INTO `customer_user_user_permissions` VALUES (216, 2, 128);
INSERT INTO `customer_user_user_permissions` VALUES (217, 2, 129);
INSERT INTO `customer_user_user_permissions` VALUES (218, 2, 130);
INSERT INTO `customer_user_user_permissions` VALUES (219, 2, 131);
INSERT INTO `customer_user_user_permissions` VALUES (220, 2, 132);
INSERT INTO `customer_user_user_permissions` VALUES (221, 2, 133);
INSERT INTO `customer_user_user_permissions` VALUES (222, 2, 134);
INSERT INTO `customer_user_user_permissions` VALUES (223, 2, 135);
INSERT INTO `customer_user_user_permissions` VALUES (224, 2, 136);
INSERT INTO `customer_user_user_permissions` VALUES (225, 2, 137);
INSERT INTO `customer_user_user_permissions` VALUES (226, 2, 138);
INSERT INTO `customer_user_user_permissions` VALUES (227, 2, 139);
INSERT INTO `customer_user_user_permissions` VALUES (228, 2, 140);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_customer_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_customer_user_id` FOREIGN KEY (`user_id`) REFERENCES `customer_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-08-27 07:52:54.701999', '1', '张恒', 2, '[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-08-27 07:54:04.439550', '2', 'root', 1, '[{\"added\": {}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-08-27 07:54:28.138659', '2', 'root', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"user_permissions\"]}}]', 23, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-08-27 07:54:51.412283', '1', '超级管理员', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-08-27 07:56:38.221180', '2', '用户', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-08-27 07:57:01.336483', '1', '超级管理员', 2, '[]', 3, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-08-27 07:58:14.260672', '3', '管理员', 1, '[{\"added\": {}}]', 3, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (6, 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (24, 'customer', 'customeraddr');
INSERT INTO `django_content_type` VALUES (25, 'customer', 'customerbalancelog');
INSERT INTO `django_content_type` VALUES (26, 'customer', 'customerinfo');
INSERT INTO `django_content_type` VALUES (27, 'customer', 'customerlevelinfo');
INSERT INTO `django_content_type` VALUES (28, 'customer', 'customerloginlog');
INSERT INTO `django_content_type` VALUES (29, 'customer', 'customerpointlog');
INSERT INTO `django_content_type` VALUES (23, 'customer', 'user');
INSERT INTO `django_content_type` VALUES (30, 'order', 'ordercart');
INSERT INTO `django_content_type` VALUES (31, 'order', 'orderdetail');
INSERT INTO `django_content_type` VALUES (32, 'order', 'ordermaster');
INSERT INTO `django_content_type` VALUES (33, 'order', 'shippinginfo');
INSERT INTO `django_content_type` VALUES (34, 'order', 'warehouseinfo');
INSERT INTO `django_content_type` VALUES (35, 'order', 'warehouseproduct');
INSERT INTO `django_content_type` VALUES (7, 'product', 'brand');
INSERT INTO `django_content_type` VALUES (8, 'product', 'brandcategorymapping');
INSERT INTO `django_content_type` VALUES (9, 'product', 'productcategory');
INSERT INTO `django_content_type` VALUES (10, 'product', 'productcomment');
INSERT INTO `django_content_type` VALUES (11, 'product', 'productspecification');
INSERT INTO `django_content_type` VALUES (12, 'product', 'productstatistics');
INSERT INTO `django_content_type` VALUES (13, 'product', 'sku');
INSERT INTO `django_content_type` VALUES (14, 'product', 'specgroup');
INSERT INTO `django_content_type` VALUES (15, 'product', 'specparam');
INSERT INTO `django_content_type` VALUES (16, 'product', 'spu');
INSERT INTO `django_content_type` VALUES (17, 'product', 'spudetail');
INSERT INTO `django_content_type` VALUES (18, 'product', 'stock');
INSERT INTO `django_content_type` VALUES (19, 'promotion', 'coupon');
INSERT INTO `django_content_type` VALUES (20, 'promotion', 'productcouponmapping');
INSERT INTO `django_content_type` VALUES (21, 'promotion', 'productpromotionmapping');
INSERT INTO `django_content_type` VALUES (22, 'promotion', 'promotionevent');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-08-27 06:52:24.185717');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-08-27 06:52:25.940340');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-08-27 06:52:31.126819');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-08-27 06:52:32.320130');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-08-27 06:52:32.467163');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-08-27 06:52:32.537138');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-08-27 06:52:32.611139');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-08-27 06:52:32.673799');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-08-27 06:52:32.753797');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-08-27 06:52:32.888798');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-08-27 06:52:33.011833');
INSERT INTO `django_migrations` VALUES (12, 'customer', '0001_initial', '2020-08-27 06:52:43.418786');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2020-08-27 06:52:45.790404');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2020-08-27 06:52:45.881416');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-27 06:52:45.963399');
INSERT INTO `django_migrations` VALUES (16, 'authtoken', '0001_initial', '2020-08-27 06:52:47.344227');
INSERT INTO `django_migrations` VALUES (17, 'authtoken', '0002_auto_20160226_1747', '2020-08-27 06:52:49.278879');
INSERT INTO `django_migrations` VALUES (18, 'order', '0001_initial', '2020-08-27 06:52:51.549881');
INSERT INTO `django_migrations` VALUES (19, 'product', '0001_initial', '2020-08-27 06:53:00.532752');
INSERT INTO `django_migrations` VALUES (20, 'promotion', '0001_initial', '2020-08-27 06:53:02.363751');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2020-08-27 06:53:03.213754');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('6wfmvr0st7q6uz323oyxogs28m2r4dqc', 'OTAzZWY2NTY2NDNiY2IzOWMyMDc5Zjg2Mjg2OTlmNTA0NDQ3ZjY3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzJiZWYwZmZlMTk2YzZjNTEyOTM2NmZlZjBkNTJmYzcxYWYzOTUyIn0=', '2020-08-28 08:08:22.972410');
INSERT INTO `django_session` VALUES ('cu2kv6w81we987r0pofkgojl13pxpty7', 'OTAzZWY2NTY2NDNiY2IzOWMyMDc5Zjg2Mjg2OTlmNTA0NDQ3ZjY3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzJiZWYwZmZlMTk2YzZjNTEyOTM2NmZlZjBkNTJmYzcxYWYzOTUyIn0=', '2020-08-28 08:17:11.670303');
INSERT INTO `django_session` VALUES ('fwyc3jymrnikdecspj0o5h3627joxbmy', 'OTAzZWY2NTY2NDNiY2IzOWMyMDc5Zjg2Mjg2OTlmNTA0NDQ3ZjY3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzJiZWYwZmZlMTk2YzZjNTEyOTM2NmZlZjBkNTJmYzcxYWYzOTUyIn0=', '2020-08-28 07:17:39.549138');
INSERT INTO `django_session` VALUES ('hqntdpwnm4gd5u31zi9wqo7jtlvc16ka', 'OTAzZWY2NTY2NDNiY2IzOWMyMDc5Zjg2Mjg2OTlmNTA0NDQ3ZjY3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzJiZWYwZmZlMTk2YzZjNTEyOTM2NmZlZjBkNTJmYzcxYWYzOTUyIn0=', '2020-08-28 08:35:38.048453');
INSERT INTO `django_session` VALUES ('tj9xa9qi4wo78frv1m1co80yaawz40e8', 'OTAzZWY2NTY2NDNiY2IzOWMyMDc5Zjg2Mjg2OTlmNTA0NDQ3ZjY3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzJiZWYwZmZlMTk2YzZjNTEyOTM2NmZlZjBkNTJmYzcxYWYzOTUyIn0=', '2020-08-29 01:50:23.909724');
INSERT INTO `django_session` VALUES ('tyujic6l2t17y10lol6fd0me0oyntokz', 'OTAzZWY2NTY2NDNiY2IzOWMyMDc5Zjg2Mjg2OTlmNTA0NDQ3ZjY3YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzJiZWYwZmZlMTk2YzZjNTEyOTM2NmZlZjBkNTJmYzcxYWYzOTUyIn0=', '2020-08-28 07:51:38.021552');

-- ----------------------------
-- Table structure for ord_order_cart
-- ----------------------------
DROP TABLE IF EXISTS `ord_order_cart`;
CREATE TABLE `ord_order_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_amount` int(11) NULL DEFAULT NULL,
  `price` decimal(8, 2) NULL DEFAULT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ord_order_cart
-- ----------------------------

-- ----------------------------
-- Table structure for ord_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `ord_order_detail`;
CREATE TABLE `ord_order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_count` double NULL DEFAULT NULL,
  `product_price` double NULL DEFAULT NULL,
  `average_cost` decimal(8, 2) NULL DEFAULT NULL,
  `weight` double NULL DEFAULT NULL,
  `fee_money` decimal(8, 2) NULL DEFAULT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ord_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for ord_order_master
-- ----------------------------
DROP TABLE IF EXISTS `ord_order_master`;
CREATE TABLE `ord_order_master`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `payment_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_money` double NULL DEFAULT NULL,
  `discount_money` double NULL DEFAULT NULL,
  `shipping_money` double NULL DEFAULT NULL,
  `payment_money` double NULL DEFAULT NULL,
  `shipping_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shipping_sn` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `shipping_time` datetime(6) NULL DEFAULT NULL,
  `receive_time` datetime(6) NULL DEFAULT NULL,
  `complete_time` datetime(6) NULL DEFAULT NULL,
  `close_time` datetime(6) NULL DEFAULT NULL,
  `order_status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_point` int(11) NULL DEFAULT NULL,
  `invoice_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ord_order_master
-- ----------------------------

-- ----------------------------
-- Table structure for ord_shipping_info
-- ----------------------------
DROP TABLE IF EXISTS `ord_shipping_info`;
CREATE TABLE `ord_shipping_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ship_contact` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telephone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(8, 2) NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ord_shipping_info
-- ----------------------------

-- ----------------------------
-- Table structure for ord_warehouse_info
-- ----------------------------
DROP TABLE IF EXISTS `ord_warehouse_info`;
CREATE TABLE `ord_warehouse_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_sn` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warehouse_status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ord_warehouse_info
-- ----------------------------

-- ----------------------------
-- Table structure for ord_warehouse_product
-- ----------------------------
DROP TABLE IF EXISTS `ord_warehouse_product`;
CREATE TABLE `ord_warehouse_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `current_count` int(11) NULL DEFAULT NULL,
  `lock_count` int(11) NULL DEFAULT NULL,
  `in_transit_count` int(11) NULL DEFAULT NULL,
  `average_cost` decimal(8, 2) NULL DEFAULT NULL,
  `modify_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ord_warehouse_product
-- ----------------------------

-- ----------------------------
-- Table structure for pro_brand
-- ----------------------------
DROP TABLE IF EXISTS `pro_brand`;
CREATE TABLE `pro_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brand_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brand_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `brand_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brand_order` int(11) NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_brand
-- ----------------------------
INSERT INTO `pro_brand` VALUES (1, '小米（MI）', '13111111111', 'www.mi.com', 'www.baidu.com/icon/1', '相信美好的事情将会发生', '1', 100, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (2, '华为(HUAWEI)', '13122222222', 'www.huawei.com', 'www.baidu.com/icon/1', '改变世界，改变未来', '1', 95, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (3, '三星', '13333333333', 'www.samsum.com', 'www.baidu.com/icon/1', '自爆一路，经典自燃', '1', 90, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (4, 'oppo', '13444444444', 'www.oppo.com', 'www.baidu.com/icon/1', '虽然我价格高，但是我配置低啊', '1', 85, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (5, 'vivo', '13555555555', 'www.vivo.com', 'www.baidu.com/icon/1', '虽然我价格高，但是我配置低啊', '1', 80, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (6, '苹果', '13666666666', 'www.apple.com', 'www.baidu.com/icon/1', '我最贵，不服来辩', '1', 75, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (7, '中兴', '13777777777', 'www.zte.com', 'www.baidu.com/icon/1', '没落的贵族', '1', 70, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (8, '锤子', '13888888888', 'www.hamer.com', 'www.baidu.com/icon/1', '交个朋友', '1', 65, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');
INSERT INTO `pro_brand` VALUES (9, '金立', '13999999999', 'www.geeli.com', 'www.baidu.com/icon/1', '我可能膝盖中了一箭', '1', 60, '2020-08-21 11:22:11.000000', '张恒', '2020-08-21 11:22:13.000000', '张恒');

-- ----------------------------
-- Table structure for pro_brand_category_mapping
-- ----------------------------
DROP TABLE IF EXISTS `pro_brand_category_mapping`;
CREATE TABLE `pro_brand_category_mapping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_brand_category_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for pro_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pro_product_category`;
CREATE TABLE `pro_product_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `category_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_product_category
-- ----------------------------
INSERT INTO `pro_product_category` VALUES (1, '电子数码', 'etc', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (2, '食品', 'food', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (3, '服装', 'clother', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (4, '美妆', 'cosmetics', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (5, '医药保健', 'health', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (6, '厨具', 'cooking', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (7, '装修建材', 'building', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (8, '图书影像', 'record', NULL, '1', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (9, '手机', 'etc-phone', 1, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (10, '零食', 'food-snacks', 2, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (11, '女装', 'clother-women', 3, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (12, '口红', 'cosmetics-lipstick', 4, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (13, '感冒冲剂', 'health-granule', 5, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (14, '锅', 'cooking-pot', 6, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (15, '电灯', 'building-light', 7, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');
INSERT INTO `pro_product_category` VALUES (16, '光盘', 'record-cd', 8, '2', '1', '2020-08-21 11:34:08.000000', '张恒', '2020-08-21 11:34:15.000000', '张恒');

-- ----------------------------
-- Table structure for pro_product_comment
-- ----------------------------
DROP TABLE IF EXISTS `pro_product_comment`;
CREATE TABLE `pro_product_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `auditor_id` int(11) NULL DEFAULT NULL,
  `audit_remake` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `spu_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pro_product_comment_customer_id_0f29d8fb_fk_customer_user_id`(`customer_id`) USING BTREE,
  INDEX `pro_product_comment_order_id_60e96dab_fk_ord_order_master_id`(`order_id`) USING BTREE,
  INDEX `pro_product_comment_spu_id_0400ef1c_fk_pro_spu_id`(`spu_id`) USING BTREE,
  CONSTRAINT `pro_product_comment_customer_id_0f29d8fb_fk_customer_user_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pro_product_comment_order_id_60e96dab_fk_ord_order_master_id` FOREIGN KEY (`order_id`) REFERENCES `ord_order_master` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pro_product_comment_spu_id_0400ef1c_fk_pro_spu_id` FOREIGN KEY (`spu_id`) REFERENCES `pro_spu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_product_comment
-- ----------------------------

-- ----------------------------
-- Table structure for pro_product_specification
-- ----------------------------
DROP TABLE IF EXISTS `pro_product_specification`;
CREATE TABLE `pro_product_specification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_id` int(11) NOT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `price` decimal(8, 2) NULL DEFAULT NULL,
  `subtotal` decimal(8, 2) NULL DEFAULT NULL,
  `stock_old` int(11) NULL DEFAULT NULL,
  `stock_new` int(11) NULL DEFAULT NULL,
  `direction` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operate_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `supplier_id` int(11) NULL DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_product_specification
-- ----------------------------

-- ----------------------------
-- Table structure for pro_product_statistics
-- ----------------------------
DROP TABLE IF EXISTS `pro_product_statistics`;
CREATE TABLE `pro_product_statistics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_id` int(11) NOT NULL,
  `visit_count` int(11) NULL DEFAULT NULL,
  `reply_count` int(11) NULL DEFAULT NULL,
  `sale_quantity` int(11) NULL DEFAULT NULL,
  `sale_amount` decimal(8, 2) NULL DEFAULT NULL,
  `purchase_quantity` int(11) NULL DEFAULT NULL,
  `purchase_amount` decimal(8, 2) NULL DEFAULT NULL,
  `cost_price` decimal(8, 2) NULL DEFAULT NULL,
  `gross_profit` decimal(8, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_product_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for pro_sku
-- ----------------------------
DROP TABLE IF EXISTS `pro_sku`;
CREATE TABLE `pro_sku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spu_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` double NOT NULL,
  `indexes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `own_spec` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `integral` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_sku
-- ----------------------------
INSERT INTO `pro_sku` VALUES (1, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3599, '0_0_0', '{\'机身颜色\': \'国风雅灰\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (2, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3799, '0_0_1', '{\'机身颜色\': \'国风雅灰\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (3, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3699, '0_1_0', '{\'机身颜色\': \'国风雅灰\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (4, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3899, '0_1_1', '{\'机身颜色\': \'国风雅灰\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (5, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3599, '1_0_0', '{\'机身颜色\': \'钛银黑\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (6, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3799, '1_0_1', '{\'机身颜色\': \'钛银黑\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (7, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3699, '1_1_0', '{\'机身颜色\': \'钛银黑\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (8, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3899, '1_1_1', '{\'机身颜色\': \'钛银黑\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (9, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3599, '2_0_0', '{\'机身颜色\': \'冰海蓝\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:38.000000', '张恒', '2020-08-24 07:49:38.000000', '张恒');
INSERT INTO `pro_sku` VALUES (10, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3799, '2_0_1', '{\'机身颜色\': \'冰海蓝\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (11, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3699, '2_1_0', '{\'机身颜色\': \'冰海蓝\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (12, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3899, '2_1_1', '{\'机身颜色\': \'冰海蓝\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (13, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3599, '3_0_0', '{\'机身颜色\': \'蜜桃金\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (14, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3799, '3_0_1', '{\'机身颜色\': \'蜜桃金\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (15, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3699, '3_1_0', '{\'机身颜色\': \'蜜桃金\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (16, 1, '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8001', 3899, '3_1_1', '{\'机身颜色\': \'蜜桃金\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:49:39.000000', '张恒', '2020-08-24 07:49:39.000000', '张恒');
INSERT INTO `pro_sku` VALUES (17, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3499, '0_0_0', '{\'机身颜色\': \'梦之百\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:54:15.000000', '张恒', '2020-08-24 07:54:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (18, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3699, '0_0_1', '{\'机身颜色\': \'梦之百\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (19, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3899, '0_0_2', '{\'机身颜色\': \'梦之百\', \'内存\': \'8GB\', \'机身存储\': \'512G\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (20, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3599, '0_1_0', '{\'机身颜色\': \'梦之百\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (21, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3799, '0_1_1', '{\'机身颜色\': \'梦之百\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (22, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3999, '0_1_2', '{\'机身颜色\': \'梦之百\', \'内存\': \'12GB\', \'机身存储\': \'512G\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (23, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3499, '1_0_0', '{\'机身颜色\': \'钛银黑\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (24, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3699, '1_0_1', '{\'机身颜色\': \'钛银黑\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (25, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3899, '1_0_2', '{\'机身颜色\': \'钛银黑\', \'内存\': \'8GB\', \'机身存储\': \'512G\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (26, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3599, '1_1_0', '{\'机身颜色\': \'钛银黑\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (27, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3799, '1_1_1', '{\'机身颜色\': \'钛银黑\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (28, 2, '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', '127.0.0.1:8002', 3999, '1_1_2', '{\'机身颜色\': \'钛银黑\', \'内存\': \'12GB\', \'机身存储\': \'512G\'}', NULL, '1', '2020-08-24 07:54:16.000000', '张恒', '2020-08-24 07:54:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (29, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '0_0_0', '{\'机身颜色\': \'太空灰\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:11.000000', '张恒', '2020-08-24 07:57:11.000000', '张恒');
INSERT INTO `pro_sku` VALUES (30, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '0_0_1', '{\'机身颜色\': \'太空灰\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (31, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '0_1_0', '{\'机身颜色\': \'太空灰\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (32, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '0_1_1', '{\'机身颜色\': \'太空灰\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (33, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '0_2_0', '{\'机身颜色\': \'太空灰\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (34, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '0_2_1', '{\'机身颜色\': \'太空灰\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (35, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '1_0_0', '{\'机身颜色\': \'月暮白\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (36, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '1_0_1', '{\'机身颜色\': \'月暮白\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (37, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '1_1_0', '{\'机身颜色\': \'月暮白\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (38, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '1_1_1', '{\'机身颜色\': \'月暮白\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (39, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '1_2_0', '{\'机身颜色\': \'月暮白\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (40, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '1_2_1', '{\'机身颜色\': \'月暮白\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:12.000000', '张恒', '2020-08-24 07:57:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (41, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '2_0_0', '{\'机身颜色\': \'天际蓝\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (42, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '2_0_1', '{\'机身颜色\': \'天际蓝\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (43, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '2_1_0', '{\'机身颜色\': \'天际蓝\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (44, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '2_1_1', '{\'机身颜色\': \'天际蓝\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (45, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '2_2_0', '{\'机身颜色\': \'天际蓝\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (46, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '2_2_1', '{\'机身颜色\': \'天际蓝\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (47, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '3_0_0', '{\'机身颜色\': \'星际紫\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (48, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '3_0_1', '{\'机身颜色\': \'星际紫\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (49, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '3_1_0', '{\'机身颜色\': \'星际紫\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (50, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '3_1_1', '{\'机身颜色\': \'星际紫\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (51, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '3_2_0', '{\'机身颜色\': \'星际紫\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (52, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '3_2_1', '{\'机身颜色\': \'星际紫\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (53, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '4_0_0', '{\'机身颜色\': \'水色天光\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:13.000000', '张恒', '2020-08-24 07:57:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (54, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '4_0_1', '{\'机身颜色\': \'水色天光\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (55, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '4_1_0', '{\'机身颜色\': \'水色天光\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (56, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '4_1_1', '{\'机身颜色\': \'水色天光\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (57, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '4_2_0', '{\'机身颜色\': \'水色天光\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (58, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '4_2_1', '{\'机身颜色\': \'水色天光\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (59, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '5_0_0', '{\'机身颜色\': \'星河银\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (60, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '5_0_1', '{\'机身颜色\': \'星河银\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (61, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '5_1_0', '{\'机身颜色\': \'星河银\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (62, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '5_1_1', '{\'机身颜色\': \'星河银\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (63, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '5_2_0', '{\'机身颜色\': \'星河银\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (64, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '5_2_1', '{\'机身颜色\': \'星河银\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (65, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '6_0_0', '{\'机身颜色\': \'深海微光\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (66, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '6_0_1', '{\'机身颜色\': \'深海微光\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:14.000000', '张恒', '2020-08-24 07:57:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (67, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '6_1_0', '{\'机身颜色\': \'深海微光\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (68, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '6_1_1', '{\'机身颜色\': \'深海微光\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (69, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '6_2_0', '{\'机身颜色\': \'深海微光\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (70, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '6_2_1', '{\'机身颜色\': \'深海微光\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (71, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '7_0_0', '{\'机身颜色\': \'紫玉幻境\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (72, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '7_0_1', '{\'机身颜色\': \'紫玉幻境\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (73, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '7_1_0', '{\'机身颜色\': \'紫玉幻境\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (74, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '7_1_1', '{\'机身颜色\': \'紫玉幻境\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (75, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '7_2_0', '{\'机身颜色\': \'紫玉幻境\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (76, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '7_2_1', '{\'机身颜色\': \'紫玉幻境\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (77, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '8_0_0', '{\'机身颜色\': \'时光独白\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (78, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '8_0_1', '{\'机身颜色\': \'时光独白\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (79, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '8_1_0', '{\'机身颜色\': \'时光独白\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:15.000000', '张恒', '2020-08-24 07:57:15.000000', '张恒');
INSERT INTO `pro_sku` VALUES (80, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '8_1_1', '{\'机身颜色\': \'时光独白\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (81, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '8_2_0', '{\'机身颜色\': \'时光独白\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (82, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '8_2_1', '{\'机身颜色\': \'时光独白\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (83, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 1999, '9_0_0', '{\'机身颜色\': \'花影惊鸿\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (84, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2199, '9_0_1', '{\'机身颜色\': \'花影惊鸿\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (85, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2099, '9_1_0', '{\'机身颜色\': \'花影惊鸿\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (86, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2299, '9_1_1', '{\'机身颜色\': \'花影惊鸿\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (87, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2399, '9_2_0', '{\'机身颜色\': \'花影惊鸿\', \'内存\': \'12GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (88, 3, 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', '127.0.0.1:8003', 2599, '9_2_1', '{\'机身颜色\': \'花影惊鸿\', \'内存\': \'12GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:57:16.000000', '张恒', '2020-08-24 07:57:16.000000', '张恒');
INSERT INTO `pro_sku` VALUES (89, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6499, '0_0_0', '{\'机身颜色\': \'零度白\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:26.000000', '张恒', '2020-08-24 07:58:26.000000', '张恒');
INSERT INTO `pro_sku` VALUES (90, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6899, '0_0_1', '{\'机身颜色\': \'零度白\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (91, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6799, '0_1_0', '{\'机身颜色\': \'零度白\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (92, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6999, '0_1_1', '{\'机身颜色\': \'零度白\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (93, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6499, '1_0_0', '{\'机身颜色\': \'亮黑色\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (94, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6899, '1_0_1', '{\'机身颜色\': \'亮黑色\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (95, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6799, '1_1_0', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (96, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6999, '1_1_1', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (97, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6499, '2_0_0', '{\'机身颜色\': \'深海蓝\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (98, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6899, '2_0_1', '{\'机身颜色\': \'深海蓝\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (99, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6799, '2_1_0', '{\'机身颜色\': \'深海蓝\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (100, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6999, '2_1_1', '{\'机身颜色\': \'深海蓝\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (101, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6499, '3_0_0', '{\'机身颜色\': \'冰霜银\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:27.000000', '张恒', '2020-08-24 07:58:27.000000', '张恒');
INSERT INTO `pro_sku` VALUES (102, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6899, '3_0_1', '{\'机身颜色\': \'冰霜银\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (103, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6799, '3_1_0', '{\'机身颜色\': \'冰霜银\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (104, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6999, '3_1_1', '{\'机身颜色\': \'冰霜银\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (105, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6499, '4_0_0', '{\'机身颜色\': \'晨曦金\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (106, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6899, '4_0_1', '{\'机身颜色\': \'晨曦金\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (107, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6799, '4_1_0', '{\'机身颜色\': \'晨曦金\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (108, 4, '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', '127.0.0.1:8004', 6999, '4_1_1', '{\'机身颜色\': \'晨曦金\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 07:58:28.000000', '张恒', '2020-08-24 07:58:28.000000', '张恒');
INSERT INTO `pro_sku` VALUES (109, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4299, '0_0_0', '{\'机身颜色\': \'赤茶橘\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (110, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4599, '0_0_1', '{\'机身颜色\': \'赤茶橘\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (111, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4899, '0_0_2', '{\'机身颜色\': \'赤茶橘\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (112, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4499, '0_1_0', '{\'机身颜色\': \'赤茶橘\', \'内存\': \'8GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (113, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4799, '0_1_1', '{\'机身颜色\': \'赤茶橘\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (114, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 5099, '0_1_2', '{\'机身颜色\': \'赤茶橘\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (115, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4299, '1_0_0', '{\'机身颜色\': \'亮黑色\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (116, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4599, '1_0_1', '{\'机身颜色\': \'亮黑色\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (117, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4899, '1_0_2', '{\'机身颜色\': \'亮黑色\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (118, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4499, '1_1_0', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (119, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4799, '1_1_1', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (120, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 5099, '1_1_2', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (121, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4299, '2_0_0', '{\'机身颜色\': \'珠光贝母\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:01.000000', '张恒', '2020-08-24 08:16:01.000000', '张恒');
INSERT INTO `pro_sku` VALUES (122, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4599, '2_0_1', '{\'机身颜色\': \'珠光贝母\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (123, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4899, '2_0_2', '{\'机身颜色\': \'珠光贝母\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (124, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4499, '2_1_0', '{\'机身颜色\': \'珠光贝母\', \'内存\': \'8GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (125, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4799, '2_1_1', '{\'机身颜色\': \'珠光贝母\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (126, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 5099, '2_1_2', '{\'机身颜色\': \'珠光贝母\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (127, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4299, '3_0_0', '{\'机身颜色\': \'天空之境\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (128, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4599, '3_0_1', '{\'机身颜色\': \'天空之境\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (129, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4899, '3_0_2', '{\'机身颜色\': \'天空之境\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (130, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4499, '3_1_0', '{\'机身颜色\': \'天空之境\', \'内存\': \'8GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (131, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4799, '3_1_1', '{\'机身颜色\': \'天空之境\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (132, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 5099, '3_1_2', '{\'机身颜色\': \'天空之境\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (133, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4299, '4_0_0', '{\'机身颜色\': \'极光色\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (134, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4599, '4_0_1', '{\'机身颜色\': \'极光色\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:02.000000', '张恒', '2020-08-24 08:16:02.000000', '张恒');
INSERT INTO `pro_sku` VALUES (135, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4899, '4_0_2', '{\'机身颜色\': \'极光色\', \'内存\': \'6GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:03.000000', '张恒', '2020-08-24 08:16:03.000000', '张恒');
INSERT INTO `pro_sku` VALUES (136, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4499, '4_1_0', '{\'机身颜色\': \'极光色\', \'内存\': \'8GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:16:03.000000', '张恒', '2020-08-24 08:16:03.000000', '张恒');
INSERT INTO `pro_sku` VALUES (137, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 4799, '4_1_1', '{\'机身颜色\': \'极光色\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:16:03.000000', '张恒', '2020-08-24 08:16:03.000000', '张恒');
INSERT INTO `pro_sku` VALUES (138, 5, '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', '127.0.0.1:8005', 5099, '4_1_2', '{\'机身颜色\': \'极光色\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:16:03.000000', '张恒', '2020-08-24 08:16:03.000000', '张恒');
INSERT INTO `pro_sku` VALUES (139, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1599, '0_0_0', '{\'机身颜色\': \'幻夜黑\', \'内存\': \'4GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:12.000000', '张恒', '2020-08-24 08:18:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (140, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '0_0_1', '{\'机身颜色\': \'幻夜黑\', \'内存\': \'4GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:12.000000', '张恒', '2020-08-24 08:18:12.000000', '张恒');
INSERT INTO `pro_sku` VALUES (141, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '0_1_0', '{\'机身颜色\': \'幻夜黑\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (142, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1999, '0_1_1', '{\'机身颜色\': \'幻夜黑\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (143, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1599, '1_0_0', '{\'机身颜色\': \'极光蓝\', \'内存\': \'4GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (144, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '1_0_1', '{\'机身颜色\': \'极光蓝\', \'内存\': \'4GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (145, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '1_1_0', '{\'机身颜色\': \'极光蓝\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (146, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1999, '1_1_1', '{\'机身颜色\': \'极光蓝\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (147, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1599, '2_0_0', '{\'机身颜色\': \'魅焰红\', \'内存\': \'4GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (148, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '2_0_1', '{\'机身颜色\': \'魅焰红\', \'内存\': \'4GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (149, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '2_1_0', '{\'机身颜色\': \'魅焰红\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (150, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1999, '2_1_1', '{\'机身颜色\': \'魅焰红\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (151, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1599, '3_0_0', '{\'机身颜色\': \'冰岛白\', \'内存\': \'4GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (152, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '3_0_1', '{\'机身颜色\': \'冰岛白\', \'内存\': \'4GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (153, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1799, '3_1_0', '{\'机身颜色\': \'冰岛白\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:18:13.000000', '张恒', '2020-08-24 08:18:13.000000', '张恒');
INSERT INTO `pro_sku` VALUES (154, 6, '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', '127.0.0.1:8006', 1999, '3_1_1', '{\'机身颜色\': \'冰岛白\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:18:14.000000', '张恒', '2020-08-24 08:18:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (155, 7, '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', '127.0.0.1:8007', 1799, '0_0_0', '{\'机身颜色\': \'幻夜黑\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:19:48.000000', '张恒', '2020-08-24 08:19:48.000000', '张恒');
INSERT INTO `pro_sku` VALUES (156, 7, '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', '127.0.0.1:8007', 1999, '0_0_1', '{\'机身颜色\': \'幻夜黑\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:19:49.000000', '张恒', '2020-08-24 08:19:49.000000', '张恒');
INSERT INTO `pro_sku` VALUES (157, 7, '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', '127.0.0.1:8007', 1799, '1_0_0', '{\'机身颜色\': \'蓝水翡翠\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:19:49.000000', '张恒', '2020-08-24 08:19:49.000000', '张恒');
INSERT INTO `pro_sku` VALUES (158, 7, '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', '127.0.0.1:8007', 1999, '1_0_1', '{\'机身颜色\': \'蓝水翡翠\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:19:49.000000', '张恒', '2020-08-24 08:19:49.000000', '张恒');
INSERT INTO `pro_sku` VALUES (159, 7, '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', '127.0.0.1:8007', 1799, '2_0_0', '{\'机身颜色\': \'极光蓝\', \'内存\': \'6GB\', \'机身存储\': \'64GB\'}', NULL, '1', '2020-08-24 08:19:49.000000', '张恒', '2020-08-24 08:19:49.000000', '张恒');
INSERT INTO `pro_sku` VALUES (160, 7, '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', '127.0.0.1:8007', 1999, '2_0_1', '{\'机身颜色\': \'极光蓝\', \'内存\': \'6GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:19:49.000000', '张恒', '2020-08-24 08:19:49.000000', '张恒');
INSERT INTO `pro_sku` VALUES (161, 8, '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', '127.0.0.1:8008', 1899, '0_0_0', '{\'机身颜色\': \'绮境森林\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:21:14.000000', '张恒', '2020-08-24 08:21:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (162, 8, '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', '127.0.0.1:8008', 1899, '1_0_0', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:21:14.000000', '张恒', '2020-08-24 08:21:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (163, 8, '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', '127.0.0.1:8008', 1899, '2_0_0', '{\'机身颜色\': \'仲夏紫\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:21:14.000000', '张恒', '2020-08-24 08:21:14.000000', '张恒');
INSERT INTO `pro_sku` VALUES (164, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6499, '0_0_0', '{\'机身颜色\': \'零度白\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:22:23.000000', '张恒', '2020-08-24 08:22:23.000000', '张恒');
INSERT INTO `pro_sku` VALUES (165, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6899, '0_0_1', '{\'机身颜色\': \'零度白\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:22:23.000000', '张恒', '2020-08-24 08:22:23.000000', '张恒');
INSERT INTO `pro_sku` VALUES (166, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 7199, '0_0_2', '{\'机身颜色\': \'零度白\', \'内存\': \'8GB\', \'机身存储\': \'512GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (167, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6499, '1_0_0', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (168, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6899, '1_0_1', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (169, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 7199, '1_0_2', '{\'机身颜色\': \'亮黑色\', \'内存\': \'8GB\', \'机身存储\': \'512GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (170, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6499, '2_0_0', '{\'机身颜色\': \'深海蓝\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (171, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6899, '2_0_1', '{\'机身颜色\': \'深海蓝\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (172, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 7199, '2_0_2', '{\'机身颜色\': \'深海蓝\', \'内存\': \'8GB\', \'机身存储\': \'512GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (173, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6499, '3_0_0', '{\'机身颜色\': \'冰霜银\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (174, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6899, '3_0_1', '{\'机身颜色\': \'冰霜银\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (175, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 7199, '3_0_2', '{\'机身颜色\': \'冰霜银\', \'内存\': \'8GB\', \'机身存储\': \'512GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (176, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6499, '4_0_0', '{\'机身颜色\': \'晨曦金\', \'内存\': \'8GB\', \'机身存储\': \'128GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (177, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 6899, '4_0_1', '{\'机身颜色\': \'晨曦金\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (178, 9, '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', '127.0.0.1:8009', 7199, '4_0_2', '{\'机身颜色\': \'晨曦金\', \'内存\': \'8GB\', \'机身存储\': \'512GB\'}', NULL, '1', '2020-08-24 08:22:24.000000', '张恒', '2020-08-24 08:22:24.000000', '张恒');
INSERT INTO `pro_sku` VALUES (179, 10, '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', '127.0.0.1:8010', 8999, '0_0_0', '{\'机身颜色\': \'冷山灰\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:24:17.000000', '张恒', '2020-08-24 08:24:17.000000', '张恒');
INSERT INTO `pro_sku` VALUES (180, 10, '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', '127.0.0.1:8010', 8999, '1_0_0', '{\'机身颜色\': \'迷雾金\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:24:17.000000', '张恒', '2020-08-24 08:24:17.000000', '张恒');
INSERT INTO `pro_sku` VALUES (181, 10, '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', '127.0.0.1:8010', 8999, '2_0_0', '{\'机身颜色\': \'冰薄荷\', \'内存\': \'8GB\', \'机身存储\': \'256GB\'}', NULL, '1', '2020-08-24 08:24:17.000000', '张恒', '2020-08-24 08:24:17.000000', '张恒');

-- ----------------------------
-- Table structure for pro_spec_group
-- ----------------------------
DROP TABLE IF EXISTS `pro_spec_group`;
CREATE TABLE `pro_spec_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_spec_group
-- ----------------------------
INSERT INTO `pro_spec_group` VALUES (1, 9, '主体', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (2, 9, '基本信息', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (3, 9, '操作系统', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (4, 9, '主芯片', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (5, 9, '存储', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (6, 9, '摄像头', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (7, 9, '电池信息', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (8, 9, '屏幕', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');
INSERT INTO `pro_spec_group` VALUES (9, 9, '规格尺寸', '2020-08-21 14:19:52.000000', '张恒', '2020-08-21 14:19:57.000000', '张恒');

-- ----------------------------
-- Table structure for pro_spec_param
-- ----------------------------
DROP TABLE IF EXISTS `pro_spec_param`;
CREATE TABLE `pro_spec_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `numeric` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `generic` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `searchable` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `segments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_spec_param
-- ----------------------------
INSERT INTO `pro_spec_param` VALUES (1, 9, 1, '品牌', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (2, 9, 1, '型号', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (3, 9, 1, '上市年份', '0', '', '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (4, 9, 2, '机身颜色', '0', NULL, '0', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (5, 9, 2, '机身重量（g）', '1', 'g', '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (6, 9, 2, '机身材质工艺', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (7, 9, 3, '操作系统', '0', NULL, '1', '1', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (8, 9, 4, 'CPU品牌', '0', NULL, '1', '1', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (9, 9, 4, 'CPU型号', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (10, 9, 4, 'CPU核数', '0', NULL, '1', '1', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (11, 9, 4, 'CPU频率', '0', 'GHz', '1', '1', '[\"0-1.0\", \"1.0-1.5\", \"1.5-2.0\", \"2.0-2.5\", \"2.5-3.0\", \"3.0-3.5\", \"3.5-4.0\", \"4.0-6.0\", \"max\"]', '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (12, 9, 5, '内存', '0', NULL, '0', '1', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (13, 9, 5, '机身存储', '0', NULL, '0', '1', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (14, 9, 6, '摄像头像素', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (15, 9, 7, '电池容量', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (16, 9, 8, '主屏幕尺寸（英寸）', '0', '英寸', '1', '1', '[\"0-4.0\", \"4.0-5.0\", \"5.0-5.5\", \"5.5-6.0\", \"6.0-7.0\", \"7.0-8.0\", \"max\"]', '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');
INSERT INTO `pro_spec_param` VALUES (17, 9, 9, '分辨率', '0', NULL, '1', '0', NULL, '2020-08-21 14:22:39.000000', '张恒', '2020-08-21 14:22:46.000000', '张恒');

-- ----------------------------
-- Table structure for pro_spu
-- ----------------------------
DROP TABLE IF EXISTS `pro_spu`;
CREATE TABLE `pro_spu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_id1` int(11) NULL DEFAULT NULL,
  `category_id2` int(11) NULL DEFAULT NULL,
  `category_id3` int(11) NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pro_spu_brand_id_b3987b27_fk_pro_brand_id`(`brand_id`) USING BTREE,
  CONSTRAINT `pro_spu_brand_id_b3987b27_fk_pro_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `pro_brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_spu
-- ----------------------------
INSERT INTO `pro_spu` VALUES (1, '小米10', '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-17 13:46:18.000000', '张恒', '2020-08-17 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (2, '小米9', '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (3, 'Redmi K30pro', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (4, '华为P40', '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (5, '华为P30', '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', 1, 9, NULL, '3', '2020-08-24 13:46:08.000000', '张恒', '2020-08-24 13:46:08.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (6, '荣耀Play3', '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (7, '荣耀Play4T', '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (8, '华为 nova 5', '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (9, '华为P40 Pro', '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (10, '三星Galaxy Note20', '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 3);
INSERT INTO `pro_spu` VALUES (11, '小米10', '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (12, '小米9', '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (13, 'Redmi K30pro', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (14, '华为P40', '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (15, '华为P30', '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (16, '荣耀Play3', '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (17, '荣耀Play4T', '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (18, '华为 nova 5', '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (19, '华为P40 Pro', '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (20, '三星Galaxy Note20', '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 3);
INSERT INTO `pro_spu` VALUES (21, '小米10', '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (22, '小米9', '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (23, 'Redmi K30pro', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (24, '华为P40', '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (25, '华为P30', '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (26, '荣耀Play3', '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (27, '荣耀Play4T', '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (28, '华为 nova 5', '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (29, '华为P40 Pro', '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (30, '三星Galaxy Note20', '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 3);
INSERT INTO `pro_spu` VALUES (31, '小米10', '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (32, '小米9', '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (33, 'Redmi K30pro', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (34, '华为P40', '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (35, '华为P30', '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (36, '荣耀Play3', '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (37, '荣耀Play4T', '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (38, '华为 nova 5', '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (39, '华为P40 Pro', '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (40, '三星Galaxy Note20', '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 3);
INSERT INTO `pro_spu` VALUES (41, '小米10', '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (42, '小米9', '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (43, 'Redmi K30pro', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (44, '华为P40', '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (45, '华为P30', '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (46, '荣耀Play3', '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (47, '荣耀Play4T', '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (48, '华为 nova 5', '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (49, '华为P40 Pro', '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (50, '三星Galaxy Note20', '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 3);
INSERT INTO `pro_spu` VALUES (51, '小米10', '小米10 双模5G 骁龙865 新一代 LPDDR5内存 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (52, '小米9', '【向往的生活同款】小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (53, 'Redmi K30pro', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 1);
INSERT INTO `pro_spu` VALUES (54, '华为P40', '华为 HUAWEI P40 麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (55, '华为P30', '【超级爆款】华为 HUAWEI P30 超感光徕卡三摄麒麟980AI智能芯片', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (56, '荣耀Play3', '荣耀Play3 6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (57, '荣耀Play4T', '荣耀Play4T 全网通6GB+128GB大内存 幻夜黑 4000mAh大电池 4800万AI摄影 6.39', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (58, '华为 nova 5', '华为 HUAWEI nova 5 Pro 前置3200万人像超级夜景4800万AI四摄麒麟', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (59, '华为P40 Pro', '华为 P40 Pro 5G手机 分期 p40pro 麒麟990 亮黑色 8+256GB', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 2);
INSERT INTO `pro_spu` VALUES (60, '三星Galaxy Note20', '三星Galaxy Note20 Ultra 5G(SM-N9860)S Pen&三星笔记 120Hz自适应屏幕 5G手机', 1, 9, NULL, '3', '2020-08-21 13:46:08.000000', '张恒', '2020-08-21 13:46:18.000000', '张恒', 3);

-- ----------------------------
-- Table structure for pro_spu_detail
-- ----------------------------
DROP TABLE IF EXISTS `pro_spu_detail`;
CREATE TABLE `pro_spu_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spu_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `generic_spec` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `special_spec` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `packing_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `after_service` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_spu_detail
-- ----------------------------
INSERT INTO `pro_spu_detail` VALUES (1, 1, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米10\",\r\n    \"3\": \"2020.2\",\r\n    \"5\": 208,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": 8,\r\n    \"11\": 2.84,\r\n    \"14\": \"10800万像素\",\r\n    \"15\": \"4780mAh(type)/4680mAh(min)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"国风雅灰\", \"钛银黑\", \"冰海蓝\", \"蜜桃金\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (2, 2, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米9\",\r\n    \"3\": \"2019.9\",\r\n    \"5\": 196,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙855\",\r\n    \"10\": \"\",\r\n    \"11\": \"\",\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"\",\r\n    \"16\": 6.5,\r\n    \"17\": \"\",\r\n}', '{\r\n    \"4\": [\"梦之百\", \"钛银黑\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512G\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (3, 3, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"Redmi K30 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 218,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": \"\",\r\n    \"11\": 2.84,\r\n    \"14\": \"800万像素\",\r\n    \"15\": \"4780mAh(type)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2400*1080\",\r\n}', '{\r\n    \"4\": [\"太空灰\", \"月暮白\", \"天际蓝\", \"星际紫\", \"水色天光\", \"星河银\", \"深海微光\", \"紫玉幻境\", \"时光独白\", \"花影惊鸿\"],\r\n    \"12\": [\"6GB\", \"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (4, 4, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 175,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"3800mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (5, 5, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P30\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 165,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 980\",\r\n    \"9\": \"海思 麒麟 980\",\r\n    \"10\": 8,\r\n    \"11\": 2.6,\r\n    \"14\": \"4000万像素\",\r\n    \"15\": \"3650mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"赤茶橘\", \"亮黑色\", \"珠光贝母\", \"天空之境\", \"极光色\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"64GB\", \"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (6, 6, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play3\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710F\",\r\n    \"9\": \"海思 麒麟 710F\",\r\n    \"10\": 8,\r\n    \"11\": 2.2,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"极光蓝\", \"魅焰红\", \"冰岛白\"],\r\n    \"12\": [\"4GB\", \"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (7, 7, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play4T\",\r\n    \"3\": \"2020.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.0,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"蓝水翡翠\", \"极光蓝\"],\r\n    \"12\": [\"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (8, 8, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为nova 5\",\r\n    \"3\": \"2019.7\",\r\n    \"5\": 171,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.27,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"3500mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"绮境森林\", \"亮黑色\", \"仲夏紫\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (9, 9, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 209,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 10.1\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"4200mAh\",\r\n    \"16\": 6.58,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (10, 10, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"三星\",\r\n    \"2\": \"三星Galaxy Note 20\",\r\n    \"3\": \"2020.8\",\r\n    \"5\": 194,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"One UI 2.5\",\r\n    \"8\": \"高通 骁龙865 Plus\",\r\n    \"9\": \"高通 骁龙865 Plus\",\r\n    \"10\": 8,\r\n    \"11\": 3.1,\r\n    \"14\": \"6400万像素\",\r\n    \"15\": \"4300mAh\",\r\n    \"16\": 6.7,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"冷山灰\", \"迷雾金\", \"冰薄荷\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (11, 1, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米10\",\r\n    \"3\": \"2020.2\",\r\n    \"5\": 208,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": 8,\r\n    \"11\": 2.84,\r\n    \"14\": \"10800万像素\",\r\n    \"15\": \"4780mAh(type)/4680mAh(min)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"国风雅灰\", \"钛银黑\", \"冰海蓝\", \"蜜桃金\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (12, 2, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米9\",\r\n    \"3\": \"2019.9\",\r\n    \"5\": 196,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙855\",\r\n    \"10\": \"\",\r\n    \"11\": \"\",\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"\",\r\n    \"16\": 6.5,\r\n    \"17\": \"\",\r\n}', '{\r\n    \"4\": [\"梦之百\", \"钛银黑\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512G\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (13, 3, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"Redmi K30 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 218,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": \"\",\r\n    \"11\": 2.84,\r\n    \"14\": \"800万像素\",\r\n    \"15\": \"4780mAh(type)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2400*1080\",\r\n}', '{\r\n    \"4\": [\"太空灰\", \"月暮白\", \"天际蓝\", \"星际紫\", \"水色天光\", \"星河银\", \"深海微光\", \"紫玉幻境\", \"时光独白\", \"花影惊鸿\"],\r\n    \"12\": [\"6GB\", \"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (14, 4, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 175,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"3800mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (15, 5, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P30\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 165,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 980\",\r\n    \"9\": \"海思 麒麟 980\",\r\n    \"10\": 8,\r\n    \"11\": 2.6,\r\n    \"14\": \"4000万像素\",\r\n    \"15\": \"3650mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"赤茶橘\", \"亮黑色\", \"珠光贝母\", \"天空之境\", \"极光色\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"64GB\", \"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (16, 6, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play3\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710F\",\r\n    \"9\": \"海思 麒麟 710F\",\r\n    \"10\": 8,\r\n    \"11\": 2.2,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"极光蓝\", \"魅焰红\", \"冰岛白\"],\r\n    \"12\": [\"4GB\", \"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (17, 7, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play4T\",\r\n    \"3\": \"2020.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.0,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"蓝水翡翠\", \"极光蓝\"],\r\n    \"12\": [\"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (18, 8, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为nova 5\",\r\n    \"3\": \"2019.7\",\r\n    \"5\": 171,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.27,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"3500mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"绮境森林\", \"亮黑色\", \"仲夏紫\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (19, 9, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 209,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 10.1\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"4200mAh\",\r\n    \"16\": 6.58,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (20, 10, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"三星\",\r\n    \"2\": \"三星Galaxy Note 20\",\r\n    \"3\": \"2020.8\",\r\n    \"5\": 194,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"One UI 2.5\",\r\n    \"8\": \"高通 骁龙865 Plus\",\r\n    \"9\": \"高通 骁龙865 Plus\",\r\n    \"10\": 8,\r\n    \"11\": 3.1,\r\n    \"14\": \"6400万像素\",\r\n    \"15\": \"4300mAh\",\r\n    \"16\": 6.7,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"冷山灰\", \"迷雾金\", \"冰薄荷\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (21, 1, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米10\",\r\n    \"3\": \"2020.2\",\r\n    \"5\": 208,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": 8,\r\n    \"11\": 2.84,\r\n    \"14\": \"10800万像素\",\r\n    \"15\": \"4780mAh(type)/4680mAh(min)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"国风雅灰\", \"钛银黑\", \"冰海蓝\", \"蜜桃金\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (22, 2, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米9\",\r\n    \"3\": \"2019.9\",\r\n    \"5\": 196,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙855\",\r\n    \"10\": \"\",\r\n    \"11\": \"\",\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"\",\r\n    \"16\": 6.5,\r\n    \"17\": \"\",\r\n}', '{\r\n    \"4\": [\"梦之百\", \"钛银黑\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512G\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (23, 3, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"Redmi K30 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 218,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": \"\",\r\n    \"11\": 2.84,\r\n    \"14\": \"800万像素\",\r\n    \"15\": \"4780mAh(type)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2400*1080\",\r\n}', '{\r\n    \"4\": [\"太空灰\", \"月暮白\", \"天际蓝\", \"星际紫\", \"水色天光\", \"星河银\", \"深海微光\", \"紫玉幻境\", \"时光独白\", \"花影惊鸿\"],\r\n    \"12\": [\"6GB\", \"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (24, 4, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 175,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"3800mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (25, 5, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P30\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 165,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 980\",\r\n    \"9\": \"海思 麒麟 980\",\r\n    \"10\": 8,\r\n    \"11\": 2.6,\r\n    \"14\": \"4000万像素\",\r\n    \"15\": \"3650mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"赤茶橘\", \"亮黑色\", \"珠光贝母\", \"天空之境\", \"极光色\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"64GB\", \"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (26, 6, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play3\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710F\",\r\n    \"9\": \"海思 麒麟 710F\",\r\n    \"10\": 8,\r\n    \"11\": 2.2,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"极光蓝\", \"魅焰红\", \"冰岛白\"],\r\n    \"12\": [\"4GB\", \"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (27, 7, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play4T\",\r\n    \"3\": \"2020.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.0,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"蓝水翡翠\", \"极光蓝\"],\r\n    \"12\": [\"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (28, 8, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为nova 5\",\r\n    \"3\": \"2019.7\",\r\n    \"5\": 171,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.27,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"3500mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"绮境森林\", \"亮黑色\", \"仲夏紫\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (29, 9, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 209,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 10.1\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"4200mAh\",\r\n    \"16\": 6.58,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (30, 10, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"三星\",\r\n    \"2\": \"三星Galaxy Note 20\",\r\n    \"3\": \"2020.8\",\r\n    \"5\": 194,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"One UI 2.5\",\r\n    \"8\": \"高通 骁龙865 Plus\",\r\n    \"9\": \"高通 骁龙865 Plus\",\r\n    \"10\": 8,\r\n    \"11\": 3.1,\r\n    \"14\": \"6400万像素\",\r\n    \"15\": \"4300mAh\",\r\n    \"16\": 6.7,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"冷山灰\", \"迷雾金\", \"冰薄荷\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (31, 1, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米10\",\r\n    \"3\": \"2020.2\",\r\n    \"5\": 208,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": 8,\r\n    \"11\": 2.84,\r\n    \"14\": \"10800万像素\",\r\n    \"15\": \"4780mAh(type)/4680mAh(min)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"国风雅灰\", \"钛银黑\", \"冰海蓝\", \"蜜桃金\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (32, 2, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米9\",\r\n    \"3\": \"2019.9\",\r\n    \"5\": 196,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙855\",\r\n    \"10\": \"\",\r\n    \"11\": \"\",\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"\",\r\n    \"16\": 6.5,\r\n    \"17\": \"\",\r\n}', '{\r\n    \"4\": [\"梦之百\", \"钛银黑\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512G\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (33, 3, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"Redmi K30 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 218,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": \"\",\r\n    \"11\": 2.84,\r\n    \"14\": \"800万像素\",\r\n    \"15\": \"4780mAh(type)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2400*1080\",\r\n}', '{\r\n    \"4\": [\"太空灰\", \"月暮白\", \"天际蓝\", \"星际紫\", \"水色天光\", \"星河银\", \"深海微光\", \"紫玉幻境\", \"时光独白\", \"花影惊鸿\"],\r\n    \"12\": [\"6GB\", \"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (34, 4, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 175,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"3800mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (35, 5, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P30\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 165,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 980\",\r\n    \"9\": \"海思 麒麟 980\",\r\n    \"10\": 8,\r\n    \"11\": 2.6,\r\n    \"14\": \"4000万像素\",\r\n    \"15\": \"3650mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"赤茶橘\", \"亮黑色\", \"珠光贝母\", \"天空之境\", \"极光色\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"64GB\", \"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (36, 6, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play3\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710F\",\r\n    \"9\": \"海思 麒麟 710F\",\r\n    \"10\": 8,\r\n    \"11\": 2.2,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"极光蓝\", \"魅焰红\", \"冰岛白\"],\r\n    \"12\": [\"4GB\", \"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (37, 7, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play4T\",\r\n    \"3\": \"2020.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.0,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"蓝水翡翠\", \"极光蓝\"],\r\n    \"12\": [\"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (38, 8, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为nova 5\",\r\n    \"3\": \"2019.7\",\r\n    \"5\": 171,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.27,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"3500mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"绮境森林\", \"亮黑色\", \"仲夏紫\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (39, 9, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 209,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 10.1\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"4200mAh\",\r\n    \"16\": 6.58,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (40, 10, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"三星\",\r\n    \"2\": \"三星Galaxy Note 20\",\r\n    \"3\": \"2020.8\",\r\n    \"5\": 194,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"One UI 2.5\",\r\n    \"8\": \"高通 骁龙865 Plus\",\r\n    \"9\": \"高通 骁龙865 Plus\",\r\n    \"10\": 8,\r\n    \"11\": 3.1,\r\n    \"14\": \"6400万像素\",\r\n    \"15\": \"4300mAh\",\r\n    \"16\": 6.7,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"冷山灰\", \"迷雾金\", \"冰薄荷\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (41, 1, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米10\",\r\n    \"3\": \"2020.2\",\r\n    \"5\": 208,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": 8,\r\n    \"11\": 2.84,\r\n    \"14\": \"10800万像素\",\r\n    \"15\": \"4780mAh(type)/4680mAh(min)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"国风雅灰\", \"钛银黑\", \"冰海蓝\", \"蜜桃金\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (42, 2, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米9\",\r\n    \"3\": \"2019.9\",\r\n    \"5\": 196,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙855\",\r\n    \"10\": \"\",\r\n    \"11\": \"\",\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"\",\r\n    \"16\": 6.5,\r\n    \"17\": \"\",\r\n}', '{\r\n    \"4\": [\"梦之百\", \"钛银黑\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512G\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (43, 3, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"Redmi K30 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 218,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": \"\",\r\n    \"11\": 2.84,\r\n    \"14\": \"800万像素\",\r\n    \"15\": \"4780mAh(type)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2400*1080\",\r\n}', '{\r\n    \"4\": [\"太空灰\", \"月暮白\", \"天际蓝\", \"星际紫\", \"水色天光\", \"星河银\", \"深海微光\", \"紫玉幻境\", \"时光独白\", \"花影惊鸿\"],\r\n    \"12\": [\"6GB\", \"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (44, 4, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 175,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"3800mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (45, 5, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P30\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 165,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 980\",\r\n    \"9\": \"海思 麒麟 980\",\r\n    \"10\": 8,\r\n    \"11\": 2.6,\r\n    \"14\": \"4000万像素\",\r\n    \"15\": \"3650mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"赤茶橘\", \"亮黑色\", \"珠光贝母\", \"天空之境\", \"极光色\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"64GB\", \"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (46, 6, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play3\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710F\",\r\n    \"9\": \"海思 麒麟 710F\",\r\n    \"10\": 8,\r\n    \"11\": 2.2,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"极光蓝\", \"魅焰红\", \"冰岛白\"],\r\n    \"12\": [\"4GB\", \"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (47, 7, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play4T\",\r\n    \"3\": \"2020.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.0,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"蓝水翡翠\", \"极光蓝\"],\r\n    \"12\": [\"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (48, 8, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为nova 5\",\r\n    \"3\": \"2019.7\",\r\n    \"5\": 171,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.27,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"3500mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"绮境森林\", \"亮黑色\", \"仲夏紫\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (49, 9, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 209,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 10.1\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"4200mAh\",\r\n    \"16\": 6.58,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (50, 10, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"三星\",\r\n    \"2\": \"三星Galaxy Note 20\",\r\n    \"3\": \"2020.8\",\r\n    \"5\": 194,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"One UI 2.5\",\r\n    \"8\": \"高通 骁龙865 Plus\",\r\n    \"9\": \"高通 骁龙865 Plus\",\r\n    \"10\": 8,\r\n    \"11\": 3.1,\r\n    \"14\": \"6400万像素\",\r\n    \"15\": \"4300mAh\",\r\n    \"16\": 6.7,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"冷山灰\", \"迷雾金\", \"冰薄荷\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (51, 1, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米10\",\r\n    \"3\": \"2020.2\",\r\n    \"5\": 208,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": 8,\r\n    \"11\": 2.84,\r\n    \"14\": \"10800万像素\",\r\n    \"15\": \"4780mAh(type)/4680mAh(min)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"国风雅灰\", \"钛银黑\", \"冰海蓝\", \"蜜桃金\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (52, 2, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"小米9\",\r\n    \"3\": \"2019.9\",\r\n    \"5\": 196,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙855\",\r\n    \"10\": \"\",\r\n    \"11\": \"\",\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"\",\r\n    \"16\": 6.5,\r\n    \"17\": \"\",\r\n}', '{\r\n    \"4\": [\"梦之百\", \"钛银黑\"],\r\n    \"12\": [\"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512G\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (53, 3, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"小米\",\r\n    \"2\": \"Redmi K30 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 218,\r\n    \"6\": \"以官网信息为准\",\r\n    \"7\": \"MIUI 11\",\r\n    \"8\": \"高通(Qualcomm)\",\r\n    \"9\": \"骁龙865\",\r\n    \"10\": \"\",\r\n    \"11\": 2.84,\r\n    \"14\": \"800万像素\",\r\n    \"15\": \"4780mAh(type)\",\r\n    \"16\": 6.67,\r\n    \"17\": \"2400*1080\",\r\n}', '{\r\n    \"4\": [\"太空灰\", \"月暮白\", \"天际蓝\", \"星际紫\", \"水色天光\", \"星河银\", \"深海微光\", \"紫玉幻境\", \"时光独白\", \"花影惊鸿\"],\r\n    \"12\": [\"6GB\", \"8GB\", \"12GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (54, 4, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 175,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"3800mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (55, 5, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P30\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 165,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.0\",\r\n    \"8\": \"海思 麒麟 980\",\r\n    \"9\": \"海思 麒麟 980\",\r\n    \"10\": 8,\r\n    \"11\": 2.6,\r\n    \"14\": \"4000万像素\",\r\n    \"15\": \"3650mAh\",\r\n    \"16\": 6.1,\r\n    \"17\": \"2340*1080\",\r\n}', '{\r\n    \"4\": [\"赤茶橘\", \"亮黑色\", \"珠光贝母\", \"天空之境\", \"极光色\"],\r\n    \"12\": [\"6GB\", \"8GB\"],\r\n    \"13\": [\"64GB\", \"128GB\", \"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (56, 6, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play3\",\r\n    \"3\": \"2019.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710F\",\r\n    \"9\": \"海思 麒麟 710F\",\r\n    \"10\": 8,\r\n    \"11\": 2.2,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"极光蓝\", \"魅焰红\", \"冰岛白\"],\r\n    \"12\": [\"4GB\", \"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (57, 7, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"荣耀Play4T\",\r\n    \"3\": \"2020.4\",\r\n    \"5\": 176,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.0,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"4000mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"幻夜黑\", \"蓝水翡翠\", \"极光蓝\"],\r\n    \"12\": [\"6GB\"],\r\n    \"13\": [\"64GB\", \"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (58, 8, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为nova 5\",\r\n    \"3\": \"2019.7\",\r\n    \"5\": 171,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 9.1.1\",\r\n    \"8\": \"海思 麒麟 710A\",\r\n    \"9\": \"海思 麒麟 710A\",\r\n    \"10\": 8,\r\n    \"11\": 2.27,\r\n    \"14\": \"4800万像素\",\r\n    \"15\": \"3500mAh\",\r\n    \"16\": 6.39,\r\n    \"17\": \"1560*720\",\r\n}', '{\r\n    \"4\": [\"绮境森林\", \"亮黑色\", \"仲夏紫\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (59, 9, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"华为\",\r\n    \"2\": \"华为P40 Pro\",\r\n    \"3\": \"2020.3\",\r\n    \"5\": 209,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"EMUI 10.1\",\r\n    \"8\": \"海思 麒麟 990 5G\",\r\n    \"9\": \"海思 麒麟 990 5G\",\r\n    \"10\": 8,\r\n    \"11\": 2.86,\r\n    \"14\": \"5000万像素\",\r\n    \"15\": \"4200mAh\",\r\n    \"16\": 6.58,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"零度白\", \"亮黑色\", \"深海蓝\", \"冰霜银\", \"晨曦金\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"128GB\", \"256GB\", \"512GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');
INSERT INTO `pro_spu_detail` VALUES (60, 10, '自商品购买之日起，七天无理由退换，三十天质量保证，一年内主要元器件保修（处理器、屏幕除外）', '{\r\n    \"1\": \"三星\",\r\n    \"2\": \"三星Galaxy Note 20\",\r\n    \"3\": \"2020.8\",\r\n    \"5\": 194,\r\n    \"6\": \"玻璃机身\",\r\n    \"7\": \"One UI 2.5\",\r\n    \"8\": \"高通 骁龙865 Plus\",\r\n    \"9\": \"高通 骁龙865 Plus\",\r\n    \"10\": 8,\r\n    \"11\": 3.1,\r\n    \"14\": \"6400万像素\",\r\n    \"15\": \"4300mAh\",\r\n    \"16\": 6.7,\r\n    \"17\": \"2640*1200\",\r\n}', '{\r\n    \"4\": [\"冷山灰\", \"迷雾金\", \"冰薄荷\"],\r\n    \"12\": [\"8GB\"],\r\n    \"13\": [\"256GB\"]}', '{\"手机\": 1, \"USB数据线\": 1, \"耳机\": 1, \"卡针\": 1, \"保护壳\": 1, \"快速使用手册\": 1, \"三联贴\": 1, \"充电器\": 1}', '{\r\n    \"厂家服务\": [\r\n        \"本产品全国联保，享受三包服务，质保期为：无质保\",\r\n         \"如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！\",\r\n         \"(注:如厂家在商品介绍中有售后保障的说明,则此商品按照厂家说明执行售后保障服务。) 您可以查询本品牌在各地售后服务中心的联系方式，请点击这儿查询......\",\r\n         \"品牌官方网站：http://www.samsung.com/cn/support/\",\r\n         \"售后服务电话：400-810-5858\"\r\n    ],\r\n    \"京东承诺\": [\r\n        \"京东平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！\"\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"正品行货\": [\r\n        \"京东商城向您保证所售商品均为正品行货，京东自营商品开具机打发票或电子发票。\"\r\n    ],\r\n    \"全国联保\": [\r\n        \"凭质保证书及京东商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由京东联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。京东商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！\",\r\n        \"注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！\"],\r\n    \"无忧退货\": [\r\n        \"客户购买京东自营商品7日内（含7日，自客户收到商品之日起计算），在保证商品完好的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）\"\r\n    ]\r\n}', '1', '2020-08-21 13:59:38.000000', '张恒', '2020-08-21 13:59:48.000000', '张恒');

-- ----------------------------
-- Table structure for pro_stock
-- ----------------------------
DROP TABLE IF EXISTS `pro_stock`;
CREATE TABLE `pro_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_id` int(11) NOT NULL,
  `seckill_stock` int(11) NULL DEFAULT NULL,
  `seckill_total` int(11) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro_stock
-- ----------------------------
INSERT INTO `pro_stock` VALUES (1, 1, 200, 300, 500, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (2, 2, 150, 210, 300, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (3, 3, 190, 250, 400, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (4, 4, 100, 125, 250, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (5, 5, 85, 105, 150, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (6, 6, 125, 200, 239, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (7, 7, 175, 205, 256, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (8, 8, 95, 110, 365, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (9, 9, 163, 201, 225, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');
INSERT INTO `pro_stock` VALUES (10, 10, 35, 125, 389, '2020-08-24 14:36:21.000000', '张恒', '2020-08-24 14:36:30.000000', '张恒');

-- ----------------------------
-- Table structure for prom_coupon
-- ----------------------------
DROP TABLE IF EXISTS `prom_coupon`;
CREATE TABLE `prom_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `face_value` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `use_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `condition_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `effect_time` datetime(6) NULL DEFAULT NULL,
  `expired_time` datetime(6) NULL DEFAULT NULL,
  `sort_weight` int(11) NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prom_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for prom_product_coupon_mapping
-- ----------------------------
DROP TABLE IF EXISTS `prom_product_coupon_mapping`;
CREATE TABLE `prom_product_coupon_mapping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `face_value` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `use_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `condition_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `effect_time` datetime(6) NULL DEFAULT NULL,
  `expired_time` datetime(6) NULL DEFAULT NULL,
  `sort_weight` int(11) NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prom_product_coupon_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for prom_product_promotion_mapping
-- ----------------------------
DROP TABLE IF EXISTS `prom_product_promotion_mapping`;
CREATE TABLE `prom_product_promotion_mapping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `end_time` datetime(6) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `product_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `introduce` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `sort_weight` int(11) NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prom_product_promotion_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for prom_promotion_event
-- ----------------------------
DROP TABLE IF EXISTS `prom_promotion_event`;
CREATE TABLE `prom_promotion_event`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `product_count` int(11) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `end_time` datetime(6) NULL DEFAULT NULL,
  `sort_weight` int(11) NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prom_promotion_event
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
