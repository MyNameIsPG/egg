/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-02-10 17:33:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_carousel`;
CREATE TABLE `tb_carousel` (
  `uuid` varchar(255) NOT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1、首页轮播',
  `path` varchar(255) DEFAULT NULL COMMENT '地址',
  `url` varchar(255) DEFAULT NULL COMMENT '跳转路径',
  `label` varchar(255) DEFAULT NULL COMMENT '标签',
  `status` int(1) DEFAULT NULL COMMENT '1、有效   2、无效',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_user` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of tb_carousel
-- ----------------------------

-- ----------------------------
-- Table structure for tb_files
-- ----------------------------
DROP TABLE IF EXISTS `tb_files`;
CREATE TABLE `tb_files` (
  `uuid` varchar(255) NOT NULL,
  `owner_id` varchar(255) DEFAULT NULL COMMENT '拥有者id',
  `create_id` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `name` varchar(60) DEFAULT NULL COMMENT '名称',
  `url` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL COMMENT '地址',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of tb_files
-- ----------------------------
INSERT INTO `tb_files` VALUES ('047e1000-84c9-49fa-bb95-21c87e7af9f2', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248101547767.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248101547767.jpg', '1', '2020-01-17 16:01:41');
INSERT INTO `tb_files` VALUES ('056d8e96-67fa-4cb8-a134-679f93531e80', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/19/1579415778563846.jpg', 'F:\\work\\tup\\2020\\01\\19\\1579415778563846.jpg', '1', '2020-01-19 14:36:18');
INSERT INTO `tb_files` VALUES ('0e7501d5-a41d-4e07-94f2-f2c30b992810', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579413200182164.png', 'F:\\work\\tup\\2020\\01\\19\\1579413200182164.png', '1', '2020-01-19 13:53:20');
INSERT INTO `tb_files` VALUES ('14fe7c3c-0961-4ae0-a620-d624ef91db30', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579413230731165.png', 'F:\\work\\tup\\2020\\01\\19\\1579413230731165.png', '1', '2020-01-19 13:53:50');
INSERT INTO `tb_files` VALUES ('2d162d8a-eb13-4ec7-b67f-ac6be165e71e', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/157941318534631.png', 'F:\\work\\tup\\2020\\01\\19\\157941318534631.png', '1', '2020-01-19 13:53:05');
INSERT INTO `tb_files` VALUES ('2f61af2b-57e0-4a98-ae1a-eb3754e64476', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/17/1579225504961352.png', 'F:\\work\\tup\\2020\\01\\17\\1579225504961352.png', '1', '2020-01-17 09:45:04');
INSERT INTO `tb_files` VALUES ('5156257b-4613-4a3a-94df-b1f99a2fc1e7', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579413262436224.png', 'F:\\work\\tup\\2020\\01\\19\\1579413262436224.png', '1', '2020-01-19 13:54:22');
INSERT INTO `tb_files` VALUES ('5ff60bdf-e4b8-4c6a-a458-4077d898b995', '', '', '008.png', 'http://localhost:8060/tup/2020/01/17/1579225463904284.png', 'F:\\work\\tup\\2020\\01\\17\\1579225463904284.png', '1', '2020-01-17 09:44:23');
INSERT INTO `tb_files` VALUES ('6840a893-a795-46a3-9728-5a240e7d85c0', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/15794132871999.png', 'F:\\work\\tup\\2020\\01\\19\\15794132871999.png', '1', '2020-01-19 13:54:47');
INSERT INTO `tb_files` VALUES ('6960d46b-7e6b-4861-9376-ab428caf8684', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/19/1579413151434480.jpg', 'F:\\work\\tup\\2020\\01\\19\\1579413151434480.jpg', '1', '2020-01-19 13:52:31');
INSERT INTO `tb_files` VALUES ('80e8fe8b-0086-4b2f-ab2f-0bcebf7674b2', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579415756705661.png', 'F:\\work\\tup\\2020\\01\\19\\1579415756705661.png', '1', '2020-01-19 14:35:56');
INSERT INTO `tb_files` VALUES ('8dc52fea-c0e9-4506-90d6-7c49abd75984', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248410462207.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248410462207.jpg', '1', '2020-01-17 16:06:50');
INSERT INTO `tb_files` VALUES ('903afd8d-be08-4f76-b4ac-51a077498a32', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579415706716904.png', 'F:\\work\\tup\\2020\\01\\19\\1579415706716904.png', '1', '2020-01-19 14:35:06');
INSERT INTO `tb_files` VALUES ('9261462d-2a22-49ac-9675-73e97f57ca08', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579225499676259.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579225499676259.jpg', '1', '2020-01-17 09:44:59');
INSERT INTO `tb_files` VALUES ('9af10824-1063-4788-9297-56dbdae33568', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/17/1579248549292372.png', 'F:\\work\\tup\\2020\\01\\17\\1579248549292372.png', '1', '2020-01-17 16:09:09');
INSERT INTO `tb_files` VALUES ('a3efe874-2cb4-4511-81c1-24584cff1728', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579413172683733.png', 'F:\\work\\tup\\2020\\01\\19\\1579413172683733.png', '1', '2020-01-19 13:52:52');
INSERT INTO `tb_files` VALUES ('a59b8186-16ec-4fbb-85a2-ccdbb49480dc', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/157941321687169.png', 'F:\\work\\tup\\2020\\01\\19\\157941321687169.png', '1', '2020-01-19 13:53:36');
INSERT INTO `tb_files` VALUES ('a8040ac1-4e04-491a-abc2-fe8cf21d884d', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248245115849.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248245115849.jpg', '1', '2020-01-17 16:04:05');
INSERT INTO `tb_files` VALUES ('d6accbd4-f006-454f-9877-0ea45d93e0b3', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248292231533.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248292231533.jpg', '1', '2020-01-17 16:04:52');
INSERT INTO `tb_files` VALUES ('e3182164-22a7-4c81-8f0e-2cd4b394f797', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/157941581744652.png', 'F:\\work\\tup\\2020\\01\\19\\157941581744652.png', '1', '2020-01-19 14:36:57');
INSERT INTO `tb_files` VALUES ('e92404b4-25d4-48e9-8715-3209b7c7469e', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/17/1579225483661548.png', 'F:\\work\\tup\\2020\\01\\17\\1579225483661548.png', '1', '2020-01-17 09:44:43');
INSERT INTO `tb_files` VALUES ('f8ecd2e2-91b4-4857-b315-2f9ced30fb52', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/19/1579413248922320.png', 'F:\\work\\tup\\2020\\01\\19\\1579413248922320.png', '1', '2020-01-19 13:54:08');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单路径',
  `parent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属父级',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图标',
  `flag` int(1) DEFAULT NULL COMMENT '是否有效（1 有效 2 无效）',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单表';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('33ec49bb-d055-45a1-9701-79596eb4ebd8', '用户管理', null, '424a3c49-14a2-4233-9c08-c9e83c085e6d', null, '1', '4', '2020-01-20 13:51:37', '2020-01-20 13:51:37');
INSERT INTO `tb_menu` VALUES ('424a3c49-14a2-4233-9c08-c9e83c085e6d', '系统管理', null, null, null, '1', '2', '2020-01-20 13:41:21', '2020-01-20 13:41:21');
INSERT INTO `tb_menu` VALUES ('5b1e2d65-f559-4119-bb16-fa9cd97212f9', '角色管理', null, '424a3c49-14a2-4233-9c08-c9e83c085e6d', null, '1', '5', '2020-01-20 13:52:07', '2020-01-20 13:52:07');
INSERT INTO `tb_menu` VALUES ('910a520e-114a-4b0d-8424-ce256d44589d', '菜单管理', null, '424a3c49-14a2-4233-9c08-c9e83c085e6d', null, '1', '7', '2020-01-20 13:52:16', '2020-01-20 13:52:16');
INSERT INTO `tb_menu` VALUES ('94a49d9a-c5e4-4624-ba13-ff2f360f8295', '首页', null, null, null, '1', '1', '2020-01-20 13:41:12', '2020-01-20 16:20:27');
INSERT INTO `tb_menu` VALUES ('aa7e6f4f-6d32-42c8-8e58-a463c445f867', '列表', null, null, null, '1', '3', '2020-01-20 13:41:35', '2020-01-20 13:41:35');

-- ----------------------------
-- Table structure for tb_products
-- ----------------------------
DROP TABLE IF EXISTS `tb_products`;
CREATE TABLE `tb_products` (
  `uuid` varchar(255) NOT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `introduce` varchar(255) DEFAULT NULL COMMENT '商品简介',
  `price` double DEFAULT NULL COMMENT '商品单价',
  `discount` double DEFAULT NULL COMMENT '商品折扣',
  `category_id` varchar(255) DEFAULT NULL COMMENT '所属类别',
  `pic` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `total` int(11) DEFAULT NULL COMMENT '商品总数',
  `surplus` int(11) DEFAULT NULL COMMENT '剩余商品',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品主表';

-- ----------------------------
-- Records of tb_products
-- ----------------------------
INSERT INTO `tb_products` VALUES ('232', '13', '21', '3', '2', '2', null, '12', null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_roles
-- ----------------------------
DROP TABLE IF EXISTS `tb_roles`;
CREATE TABLE `tb_roles` (
  `uuid` varchar(255) NOT NULL,
  `name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1正常 2删除',
  `create_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of tb_roles
-- ----------------------------
INSERT INTO `tb_roles` VALUES ('1d96b755-eab0-45b5-bda7-cb9a6592367b', 'test3', '3', '2020-01-16 14:05:08', '2020-01-16 16:04:35', '1', '');
INSERT INTO `tb_roles` VALUES ('aa37ef6a-a39b-4521-a3b8-8ae437b760da', 'test1', '2', '2020-01-16 14:05:00', '2020-01-16 14:05:00', '1', '');
INSERT INTO `tb_roles` VALUES ('aa82c122-c02c-4573-9628-124ada9e10d2', '系统管理员', '1', '2020-01-16 14:04:53', '2020-01-16 14:04:53', '1', '');
INSERT INTO `tb_roles` VALUES ('f1a9163d-2ee7-4d8e-bb23-92c29c560f9e', '11', null, '2020-01-16 16:11:38', '2020-01-16 16:19:37', '2', 'f91a30c3-a889-440b-9347-f3f2d6c8ab92');

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `role_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色id',
  `menu_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单角色关系表';

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `uuid` varchar(255) NOT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `mobile` varchar(11) DEFAULT NULL COMMENT '11位手机号码',
  `sex` int(1) DEFAULT NULL COMMENT '性别： 1男 2女',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `status` int(1) DEFAULT NULL COMMENT '状态 1正常 2.禁用',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('321548e3-f8aa-4827-8339-826eb1212291', '啊啊是', 'http://localhost:8060/tup/2020/01/19/1579413262436224.png', '12345678904', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:54:23', '2020-01-19 13:54:23', '1d96b755-eab0-45b5-bda7-cb9a6592367b');
INSERT INTO `tb_users` VALUES ('39957482-09e7-4aa8-83d9-8d69f45f45e1', '防守对方', 'http://localhost:8060/tup/2020/01/19/1579413248922320.png', '12345678903', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:54:09', '2020-01-19 13:54:09', 'aa37ef6a-a39b-4521-a3b8-8ae437b760da');
INSERT INTO `tb_users` VALUES ('3e6b0b38-ffd4-4eb0-a568-d65994cdfc35', '撒打算', 'http://localhost:8060/tup/2020/01/19/157941321687169.png', '12345678904', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:53:37', '2020-01-19 13:53:37', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('45480484-2bd8-45cf-9186-6944effe7cbd', '123213', '', '12345678909', '1', 'e10adc3949ba59abbe56e057f20f883e', '2', '2020-01-17 16:04:06', '2020-01-17 16:04:06', null);
INSERT INTO `tb_users` VALUES ('4ff3f9c9-a223-46ea-90f0-48f714824ccf', 'hhh', 'http://localhost:8060/tup/2020/01/17/1579248549292372.png', '12345678908', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-17 16:09:10', '2020-01-17 16:09:10', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('50e2868f-9c72-412c-914f-0557e3531068', '12321', '', null, '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-17 16:01:43', '2020-01-17 16:01:43', '1d96b755-eab0-45b5-bda7-cb9a6592367b');
INSERT INTO `tb_users` VALUES ('6ff16976-3e83-4057-9e67-63b946cfe045', '系统管理12321', 'http://localhost:8060/tup/2020/01/19/1579413230731165.png', '12345678903', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:53:51', '2020-01-19 13:53:51', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('7b1b5a1e-c6d6-4518-8496-2bcce04b0202', '三顿饭', 'http://localhost:8060/tup/2020/01/19/157941318534631.png', '12345678906', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:53:05', '2020-01-19 13:53:05', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('92808ac5-1146-45b3-8632-ec329791d578', '1232', 'http://localhost:8060/tup/2020/01/19/1579413172683733.png', '12345678907', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:52:53', '2020-01-19 13:52:53', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('9da648d4-a515-4cd9-a36e-48eff2e4f367', '地方112', 'http://localhost:8060/tup/2020/01/19/15794132871999.png', '12345678903', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:54:48', '2020-01-19 14:34:55', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('abe518e7-89ff-44af-bc4f-c63c021676cb', '1111111112', 'http://localhost:8060/tup/2020/01/19/1579415778563846.jpg', '12345678902', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 14:35:57', '2020-01-19 14:36:23', 'aa37ef6a-a39b-4521-a3b8-8ae437b760da');
INSERT INTO `tb_users` VALUES ('bb73cdb4-1ce8-4d62-a910-dc6b52673ba9', '123213', 'http://localhost:8060/tup/2020/01/19/1579413151434480.jpg', '12345678907', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:52:32', '2020-01-19 13:52:32', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('c85b351a-44ca-475c-ab93-f9fb9fb695c1', '的算法', '', '12345678902', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 14:35:07', '2020-01-19 14:35:07', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('cb821a58-166f-44b7-bf2e-c846f3c34687', '搜商店', 'http://localhost:8060/tup/2020/01/19/1579413200182164.png', '12345678905', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-19 13:53:20', '2020-01-19 13:53:20', '1d96b755-eab0-45b5-bda7-cb9a6592367b');
INSERT INTO `tb_users` VALUES ('f91a30c3-a889-440b-9347-f3f2d6c8ab92', '张三', 'http://localhost:8060/tup/2020/01/19/157941581744652.png', '18588773304', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-10 10:44:59', '2020-01-19 14:36:57', 'aa82c122-c02c-4573-9628-124ada9e10d2');
