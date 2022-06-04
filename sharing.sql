/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-Version-7-Localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : mingxie

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 19/11/2021 12:58:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `phone` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `uid` int(9) NOT NULL COMMENT '用户',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `state` tinyint(2) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (15, '张三', '15007', '湖北省荆州市', 10, '2020-05-19 01:26:37', '2020-12-02 19:28:14', 1);
INSERT INTO `address` VALUES (18, '李四', '1502719', '湖北省巴东县沿', 12, '2020-06-03 15:36:37', '2020-12-02 19:28:25', 1);
INSERT INTO `address` VALUES (28, '', '', '', 48, '2020-06-11 14:18:38', '2020-06-11 14:18:38', 1);
INSERT INTO `address` VALUES (29, '', '', '', 48, '2020-06-16 15:44:27', '2020-06-16 15:44:27', 1);
INSERT INTO `address` VALUES (30, '', '', '', 48, '2020-06-16 15:44:31', '2020-06-16 15:44:31', 1);
INSERT INTO `address` VALUES (31, '', '', '', 41, '2020-06-17 22:43:00', '2020-06-17 22:43:00', 1);
INSERT INTO `address` VALUES (32, '', '', '', 13, '2020-06-18 01:12:50', '2020-06-18 01:12:50', 1);
INSERT INTO `address` VALUES (33, '', '', '', 46, '2020-06-18 01:16:16', '2020-06-18 01:16:16', 1);
INSERT INTO `address` VALUES (34, 'N5jLvYQh', 'otjyxXG7', '6Gekysr5', 44, '2020-09-22 21:13:12', '2020-09-22 21:13:12', 1);
INSERT INTO `address` VALUES (35, 'z', '1111', '111', 79, '2020-10-23 14:18:26', '2020-10-23 14:18:26', 1);
INSERT INTO `address` VALUES (36, 'zz', '131313', '313131', 79, '2020-12-04 18:41:17', '2020-12-04 18:41:17', 1);
INSERT INTO `address` VALUES (37, '张鹏', '5555', '学校', 79, '2020-12-05 13:54:50', '2020-12-05 13:54:50', 1);

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `coverImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `goodsId` int(11) NOT NULL COMMENT '图书',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `state` tinyint(2) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (9, '资源1', 'upload/40368577d1e946d1b6cdf7bc0ae8a004.jpg', 37, '2020-04-10 21:50:29', '2021-11-18 20:40:56', 1);
INSERT INTO `advertisement` VALUES (11, '资源2', 'upload/8b0b038f30e0455aa9f53c8fdc4f5459.jpg', 37, '2020-05-18 11:32:28', '2021-11-18 20:41:00', 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `writer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `des` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简介',
  `coverImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `typeId` int(11) NOT NULL COMMENT '分类名称',
  `ishot` tinyint(2) NULL DEFAULT 2 COMMENT '是否精品',
  `state` tinyint(2) NULL DEFAULT 1 COMMENT '状态',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (37, '英语', 'upload/b7ddf51d254c4db1b64d08d455eac37a.docx', '英语', 'upload/2c7824fa684a45c7b2e50ffe313f2378.png', 1.00, 13, 1, 1, '2021-11-18 20:39:46', '2021-11-18 21:08:51');
INSERT INTO `goods` VALUES (38, '期末考试资料', 'upload/2cf4735097814edead46a354c7474d17.docx', '期末考试资料', 'upload/537e629502dc419cba6e9f7a5d85aef7.jpg', 2.00, 16, 1, 1, '2021-11-18 22:21:03', '2021-11-18 22:21:03');

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `state` tinyint(2) NULL DEFAULT 1 COMMENT '状态',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (13, '数学', 1, '2020-06-02 22:20:07', '2021-11-18 19:07:56');
INSERT INTO `goods_type` VALUES (14, '英语', 1, '2021-11-18 19:08:04', '2021-11-18 19:08:04');
INSERT INTO `goods_type` VALUES (15, '心理', 1, '2021-11-18 19:08:20', '2021-11-18 19:08:20');
INSERT INTO `goods_type` VALUES (16, '考试', 1, '2021-11-18 22:20:19', '2021-11-18 22:20:19');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `totalPrice` decimal(10, 2) UNSIGNED NOT NULL COMMENT '订单金额',
  `uid` int(11) NOT NULL COMMENT '用户姓名',
  `orderSn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `state` tinyint(1) NOT NULL DEFAULT 1 COMMENT '订单状态',
  `addressId` int(11) NOT NULL COMMENT '收货地址',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_key_orders_ordersn`(`orderSn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (60, 1940.00, 10, '44a956b1e61b4d3199bb6e347b14a3f0235', 2, 15, '2020-06-09 22:09:52', '2020-06-09 22:09:54');
INSERT INTO `orders` VALUES (61, 776.00, 10, '4edc130da3614836a6ca29c34e605509805', 2, 15, '2020-06-11 09:38:05', '2020-06-24 17:46:22');
INSERT INTO `orders` VALUES (62, 388.00, 48, '6eff9e05e9384303b81b8f3cce6b5b72879', 4, 28, '2020-06-11 14:18:42', '2020-06-16 15:44:41');
INSERT INTO `orders` VALUES (63, 798.00, 48, '8567f6ceff5d47358526d7af56e07d7c505', 2, 29, '2020-06-16 15:44:34', '2020-06-16 15:44:35');
INSERT INTO `orders` VALUES (64, 3192.00, 10, 'c5b79100298e4f96918432c0a83ec5f8895', 2, 15, '2020-06-24 17:46:16', '2020-06-24 17:46:17');
INSERT INTO `orders` VALUES (65, 2328.00, 10, '287dfb99b62744a793ac055908e2a459488', 1, 15, '2020-07-17 23:04:46', '2020-07-17 23:04:46');
INSERT INTO `orders` VALUES (66, 940.00, 10, '6b3f406e52a8453586b40e19c0794a92516', 3, 15, '2020-07-24 13:09:04', '2020-07-24 13:09:39');
INSERT INTO `orders` VALUES (67, 27.00, 10, '35cbe5d3f1df4210b3b5e69036207c32766', 1, 15, '2020-08-11 12:50:49', '2020-08-11 12:50:49');
INSERT INTO `orders` VALUES (68, 9.00, 10, '066b8759f1db4b0f96d834c9ca2c85f4250', 2, 15, '2020-08-11 12:51:33', '2020-08-11 12:51:36');
INSERT INTO `orders` VALUES (69, 180.00, 10, '6fcb8cf593f64a3581d9a21f7ccb210e164', 2, 15, '2020-09-16 20:29:23', '2020-09-16 20:29:24');
INSERT INTO `orders` VALUES (70, 69.00, 10, '7409c3042f674a53944d8a1d41d424c2504', 1, 15, '2020-10-20 09:41:26', '2020-10-20 09:41:26');
INSERT INTO `orders` VALUES (71, 38.00, 79, '01da0803707b449d92a730230cc8e13b731', 4, 35, '2020-10-23 14:18:28', '2020-10-23 14:58:16');
INSERT INTO `orders` VALUES (72, 978.00, 79, 'c143cb3b4faf4b7295f540b8e93fb1c3601', 2, 35, '2020-10-23 14:58:09', '2020-10-23 14:58:11');
INSERT INTO `orders` VALUES (73, 39.00, 79, '82de7d74da8246b789af71feb57a2ff6592', 3, 36, '2020-12-04 18:41:20', '2020-12-05 11:36:26');
INSERT INTO `orders` VALUES (74, 45.00, 79, '6a143d132de844ff93e6aca5d33510f0752', 1, 35, '2020-12-04 18:43:25', '2020-12-04 18:43:25');
INSERT INTO `orders` VALUES (75, 19.50, 79, 'c8628bc825974b198d341080e4081db3101', 3, 36, '2020-12-04 18:56:27', '2020-12-05 13:56:09');
INSERT INTO `orders` VALUES (76, 1876.00, 79, 'be31a1f65a1b4ea6b93fa29bbb3734e6152', 2, 37, '2020-12-05 13:54:53', '2020-12-05 13:54:55');
INSERT INTO `orders` VALUES (77, 9.00, 10, '5f2c93dfd63542f78d322a0f53e61f4a802', 4, 15, '2021-03-20 12:39:48', '2021-05-04 18:24:07');
INSERT INTO `orders` VALUES (78, 99.00, 10, 'e82de1d4f3ba4b73a6ae6fe472f6636461', 2, 15, '2021-05-04 18:23:07', '2021-05-04 18:23:39');

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goodsId` int(11) NOT NULL COMMENT '商品名称',
  `ordersId` int(11) NOT NULL COMMENT '订单编号',
  `num` int(11) NOT NULL DEFAULT 1 COMMENT '购买数量',
  `price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES (58, 15, 60, 5, 388.00, '2020-06-09 22:09:52', '2020-06-09 22:09:52');
INSERT INTO `orders_detail` VALUES (59, 15, 61, 2, 388.00, '2020-06-11 09:38:05', '2020-06-11 09:38:05');
INSERT INTO `orders_detail` VALUES (60, 15, 62, 1, 388.00, '2020-06-11 14:18:42', '2020-06-11 14:18:42');
INSERT INTO `orders_detail` VALUES (61, 23, 63, 2, 399.00, '2020-06-16 15:44:34', '2020-06-16 15:44:34');
INSERT INTO `orders_detail` VALUES (62, 23, 64, 8, 399.00, '2020-06-24 17:46:16', '2020-06-24 17:46:16');
INSERT INTO `orders_detail` VALUES (63, 15, 65, 6, 388.00, '2020-07-17 23:04:46', '2020-07-17 23:04:46');
INSERT INTO `orders_detail` VALUES (64, 15, 66, 5, 188.00, '2020-07-24 13:09:04', '2020-07-24 13:09:04');
INSERT INTO `orders_detail` VALUES (65, 15, 67, 3, 9.00, '2020-08-11 12:50:49', '2020-08-11 12:50:49');
INSERT INTO `orders_detail` VALUES (66, 15, 68, 1, 9.00, '2020-08-11 12:51:34', '2020-08-11 12:51:34');
INSERT INTO `orders_detail` VALUES (67, 19, 69, 30, 6.00, '2020-09-16 20:29:23', '2020-09-16 20:29:23');
INSERT INTO `orders_detail` VALUES (68, 15, 70, 1, 9.00, '2020-10-20 09:41:26', '2020-10-20 09:41:26');
INSERT INTO `orders_detail` VALUES (69, 23, 70, 1, 60.00, '2020-10-20 09:41:27', '2020-10-20 09:41:27');
INSERT INTO `orders_detail` VALUES (70, 22, 71, 1, 38.00, '2020-10-23 14:18:28', '2020-10-23 14:18:28');
INSERT INTO `orders_detail` VALUES (71, 33, 72, 1, 79.00, '2020-10-23 14:58:09', '2020-10-23 14:58:09');
INSERT INTO `orders_detail` VALUES (72, 18, 72, 1, 899.00, '2020-10-23 14:58:09', '2020-10-23 14:58:09');
INSERT INTO `orders_detail` VALUES (73, 34, 73, 1, 39.00, '2020-12-04 18:41:20', '2020-12-04 18:41:20');
INSERT INTO `orders_detail` VALUES (74, 40, 74, 1, 6.00, '2020-12-04 18:43:25', '2020-12-04 18:43:25');
INSERT INTO `orders_detail` VALUES (75, 37, 74, 2, 19.50, '2020-12-04 18:43:25', '2020-12-04 18:43:25');
INSERT INTO `orders_detail` VALUES (76, 39, 75, 1, 19.50, '2020-12-04 18:56:27', '2020-12-04 18:56:27');
INSERT INTO `orders_detail` VALUES (77, 18, 76, 2, 899.00, '2020-12-05 13:54:53', '2020-12-05 13:54:53');
INSERT INTO `orders_detail` VALUES (78, 32, 76, 2, 39.00, '2020-12-05 13:54:53', '2020-12-05 13:54:53');
INSERT INTO `orders_detail` VALUES (79, 34, 77, 1, 9.00, '2021-03-20 12:39:48', '2021-03-20 12:39:48');
INSERT INTO `orders_detail` VALUES (80, 35, 78, 1, 99.00, '2021-05-04 18:23:07', '2021-05-04 18:23:07');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(19) NOT NULL,
  `permissionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(19) NOT NULL,
  `roleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `roleDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `permissionId` bigint(19) NOT NULL,
  `roleId` bigint(19) NOT NULL,
  PRIMARY KEY (`permissionId`, `roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(19) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登陆名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户名',
  `sex` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '性别',
  `age` tinyint(2) UNSIGNED NULL DEFAULT 0 COMMENT '年龄',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDx_user_login_name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '410f9fab6b7e47874ec47275fdf70a0a', '后台管理员', 1, 21, '2019-06-21 16:23:39', '2021-03-06 09:52:07');

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog`  (
  `id` bigint(19) NOT NULL,
  `visitTime` timestamp(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `executionTime` int(11) NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sysuser_role
-- ----------------------------
DROP TABLE IF EXISTS `sysuser_role`;
CREATE TABLE `sysuser_role`  (
  `userId` bigint(19) NOT NULL,
  `roleId` bigint(19) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信用户openid',
  `nickName` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `gender` tinyint(1) NULL DEFAULT 0 COMMENT '用户性别0未知，1男，2，女',
  `avatarUrl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户头像图片',
  `country` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '国家',
  `province` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '省',
  `city` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '市',
  `haveGetUserInfo` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '是否已获取用户信息',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (10, 'oLgmn5GANsTh9QtLFaK2ILGzjd_A', 'JAVA', 1, 'upload/head.jpg', '中国', '湖北', '荆州', '1', '2020-05-18 16:18:11', '2021-03-06 09:36:29');
INSERT INTO `user` VALUES (79, 'ogYyr5WOl0RbLTlGwz_c9V92zAEc', '鹏', NULL, 'upload/lpc.png', NULL, NULL, NULL, '0', '2020-09-16 12:14:18', '2021-03-06 09:36:02');

-- ----------------------------
-- Table structure for wx_access_token
-- ----------------------------
DROP TABLE IF EXISTS `wx_access_token`;
CREATE TABLE `wx_access_token`  (
  `accessToken` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信access_token',
  `expiresIn` datetime(0) NOT NULL COMMENT '过期时间',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_template_send_log
-- ----------------------------
DROP TABLE IF EXISTS `wx_template_send_log`;
CREATE TABLE `wx_template_send_log`  (
  `id` bigint(19) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userId` bigint(19) UNSIGNED NOT NULL COMMENT '用户id',
  `templateId` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模板id',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `errcode` int(9) NULL DEFAULT NULL COMMENT '错误码',
  `errmsg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '失败原因',
  `sendState` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '发送状态 1成功 2失败',
  `createTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
