/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-01-09 16:46:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_files
-- ----------------------------
DROP TABLE IF EXISTS `tb_files`;
CREATE TABLE `tb_files` (
  `uuid` varchar(255) NOT NULL,
  `owner_id` varchar(255) DEFAULT NULL COMMENT '拥有者id',
  `create_id` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `name` varchar(60) DEFAULT NULL COMMENT '名称',
  `path` varchar(255) DEFAULT NULL COMMENT '地址',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of tb_files
-- ----------------------------
INSERT INTO `tb_files` VALUES ('0b155d3c-4744-4e2d-adab-eaafc5cd85f6', '', '', '微信图片_20191225091930.png', 'F:\\work\\tup\\2020\\01\\09\\1578555062857661.png', '1', '2020-01-09 15:31:02');
INSERT INTO `tb_files` VALUES ('3f281d1d-d41d-4bd6-802e-58a0cea44152', '', '', '微信图片_20191225091930.png', 'F:\\work\\tup\\2020\\01\\09\\1578555039793350.png', '1', '2020-01-09 15:30:39');
INSERT INTO `tb_files` VALUES ('719ed126-34b5-4368-9290-4cbd81e534e9', '', '', '003.png', 'app\\public\\uploads\\2020\\01\\09\\1578554347482743.png', '1', '2020-01-09 15:19:07');
INSERT INTO `tb_files` VALUES ('77269bb8-d4bc-4972-a26a-deda6801fd43', '', '', '003.png', 'F:\\work\\tup\\2020\\01\\09\\1578555006985161.png', '1', '2020-01-09 15:30:06');
INSERT INTO `tb_files` VALUES ('775a8f05-8f0d-4f7e-b4c6-ae43a251cf56', '', '', '003.png', 'app\\public\\uploads\\2020\\01\\09\\1578554731314911.png', '1', '2020-01-09 15:25:31');
INSERT INTO `tb_files` VALUES ('b507384d-4a0e-4c0b-be47-3f93ba3f8b87', '', '', '微信图片_20191225091930.png', 'app\\public\\uploads\\2020\\01\\09\\1578554347486309.png', '1', '2020-01-09 15:19:07');
INSERT INTO `tb_files` VALUES ('c721f335-8f1c-4e05-b03e-c9d45beb0c70', '', '', '微信图片_20191225091930.png', 'F:\\work\\tup\\2020\\01\\09\\1578554865841875.png', '1', '2020-01-09 15:27:45');
INSERT INTO `tb_files` VALUES ('e2756e12-301b-4d8c-9283-cd63a12e3e2c', '', '', '微信图片_20191225091930.png', 'F:\\work\\tup\\2020\\01\\09\\1578555006993104.png', '1', '2020-01-09 15:30:06');
INSERT INTO `tb_files` VALUES ('e904b8b9-c9af-46c6-bf2b-9de9ac9a3d06', '', '', '003.png', 'F:\\work\\tup\\2020\\01\\09\\1578555039788817.png', '1', '2020-01-09 15:30:39');
INSERT INTO `tb_files` VALUES ('eae3d321-3867-42ea-8baf-35f285851b0f', '', '', '微信图片_20191225091930.png', 'app\\public\\uploads\\2020\\01\\09\\1578554731322343.png', '1', '2020-01-09 15:25:31');
INSERT INTO `tb_files` VALUES ('eb2fa24d-8c9d-4586-bf75-a232e4e42527', '', '', '003.png', 'F:\\work\\tup\\2020\\01\\09\\1578555500077964.png', '1', '2020-01-09 15:38:20');
INSERT INTO `tb_files` VALUES ('ed252704-814d-48ae-b139-8de90f5a2561', '', '', '003.png', 'F:\\work\\tup\\2020\\01\\09\\1578555062850198.png', '1', '2020-01-09 15:31:02');
INSERT INTO `tb_files` VALUES ('f58b6d9e-aa8d-4135-94f6-75e3cd2f1f8e', '', '', '003.png', 'F:\\work\\tup\\2020\\01\\09\\1578554865827621.png', '1', '2020-01-09 15:27:45');
INSERT INTO `tb_files` VALUES ('f893628b-6e43-4a7c-ba2b-87503e0ea91e', '', '', '微信图片_20191225091930.png', 'F:\\work\\tup\\2020\\01\\09\\1578555500082850.png', '1', '2020-01-09 15:38:20');

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
INSERT INTO `tb_users` VALUES ('0dc7ff7c-ba4d-4118-b8f7-2bdfccd7a111', '123213', null, null, null, 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-09 14:57:47', '2020-01-09 14:57:47', null);
INSERT INTO `tb_users` VALUES ('0fb8b3fb-26a7-4a9b-829a-bd934bbb48f4', null, null, null, null, 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-09 15:57:06', '2020-01-09 15:57:06', null);
INSERT INTO `tb_users` VALUES ('123', null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_users` VALUES ('5ed591e7-1977-4a15-85fb-ba683eb95fdb', null, null, null, null, 'e10adc3949ba59abbe56e057f20f883e', '1', '2020-01-09 15:56:52', '2020-01-09 15:56:52', null);
