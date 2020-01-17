/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-01-17 17:32:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_carousel`;
CREATE TABLE `tb_carousel` (
  `uuid` varchar(254) NOT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1、首页轮播',
  `url` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1、有效   2、无效',
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
INSERT INTO `tb_files` VALUES ('2f61af2b-57e0-4a98-ae1a-eb3754e64476', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/17/1579225504961352.png', 'F:\\work\\tup\\2020\\01\\17\\1579225504961352.png', '1', '2020-01-17 09:45:04');
INSERT INTO `tb_files` VALUES ('5ff60bdf-e4b8-4c6a-a458-4077d898b995', '', '', '008.png', 'http://localhost:8060/tup/2020/01/17/1579225463904284.png', 'F:\\work\\tup\\2020\\01\\17\\1579225463904284.png', '1', '2020-01-17 09:44:23');
INSERT INTO `tb_files` VALUES ('8dc52fea-c0e9-4506-90d6-7c49abd75984', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248410462207.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248410462207.jpg', '1', '2020-01-17 16:06:50');
INSERT INTO `tb_files` VALUES ('9261462d-2a22-49ac-9675-73e97f57ca08', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579225499676259.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579225499676259.jpg', '1', '2020-01-17 09:44:59');
INSERT INTO `tb_files` VALUES ('9af10824-1063-4788-9297-56dbdae33568', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/17/1579248549292372.png', 'F:\\work\\tup\\2020\\01\\17\\1579248549292372.png', '1', '2020-01-17 16:09:09');
INSERT INTO `tb_files` VALUES ('a8040ac1-4e04-491a-abc2-fe8cf21d884d', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248245115849.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248245115849.jpg', '1', '2020-01-17 16:04:05');
INSERT INTO `tb_files` VALUES ('d6accbd4-f006-454f-9877-0ea45d93e0b3', '', '', '001.jpg', 'http://localhost:8060/tup/2020/01/17/1579248292231533.jpg', 'F:\\work\\tup\\2020\\01\\17\\1579248292231533.jpg', '1', '2020-01-17 16:04:52');
INSERT INTO `tb_files` VALUES ('e92404b4-25d4-48e9-8715-3209b7c7469e', '', '', '15773414059112.png', 'http://localhost:8060/tup/2020/01/17/1579225483661548.png', 'F:\\work\\tup\\2020\\01\\17\\1579225483661548.png', '1', '2020-01-17 09:44:43');

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
INSERT INTO `tb_users` VALUES ('45480484-2bd8-45cf-9186-6944effe7cbd', '123213', '', '12345678909', '1', 'e10adc3949ba59abbe56e057f20f883e', '2', '2020-01-17 16:04:06', '2020-01-17 16:04:06', null);
INSERT INTO `tb_users` VALUES ('4ff3f9c9-a223-46ea-90f0-48f714824ccf', 'hhh', 'http://localhost:8060/tup/2020/01/17/1579248549292372.png', '12345678908', '2', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-17 16:09:10', '2020-01-17 16:09:10', 'aa82c122-c02c-4573-9628-124ada9e10d2');
INSERT INTO `tb_users` VALUES ('50e2868f-9c72-412c-914f-0557e3531068', '12321', '', null, '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-17 16:01:43', '2020-01-17 16:01:43', '1d96b755-eab0-45b5-bda7-cb9a6592367b');
INSERT INTO `tb_users` VALUES ('f91a30c3-a889-440b-9347-f3f2d6c8ab92', '张三', null, '18588773304', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-10 10:44:59', '2020-01-10 10:44:59', null);
