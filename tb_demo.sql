/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : tb_demo

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-07-09 17:56:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area` (
  `uuid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_AREA` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES ('1', '南苑', '12', null, null);
INSERT INTO `tb_area` VALUES ('2', '北苑', '2', null, null);
INSERT INTO `tb_area` VALUES ('3', '张1三', '16', '2018-11-12 11:37:29', '2018-11-12 11:38:40');
INSERT INTO `tb_area` VALUES ('4', '张三', '16', '2018-11-12 12:26:28', '2018-11-12 12:26:28');
INSERT INTO `tb_area` VALUES ('78d33fc9f27a4540b5a7c8a6ada1edd6', '11122211', '12', '2018-11-15 10:56:01', '2018-11-15 10:56:01');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单路径',
  `parent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属父级',
  `flag` int(1) DEFAULT NULL COMMENT '是否有效（1 有效 2 无效）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='菜单表';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('0e7a0a4d8d3d44cda8fa6dcbec928ac3', '文章管理', '', '614a38f13010468cad3982c5b37a3747', '1', '2018-11-22 09:22:50', '2018-11-22 09:22:50');
INSERT INTO `tb_menu` VALUES ('3fae7ee4527543a0aaf3470daba8b3a1', '权限管理', '', '613b98df9641456e83e721953f056d24', '1', '2018-11-22 09:23:33', '2018-11-22 09:23:33');
INSERT INTO `tb_menu` VALUES ('41c9d08ac23d4d0fbfb58cfc6e259283', '用户管理', '', '613b98df9641456e83e721953f056d24', '1', '2018-11-22 09:23:28', '2018-11-22 09:23:28');
INSERT INTO `tb_menu` VALUES ('4b1dfa594f4c4e478c4c0d081e9d5945', '活动管理', '', '614a38f13010468cad3982c5b37a3747', '1', '2018-11-22 09:23:14', '2018-11-22 09:23:14');
INSERT INTO `tb_menu` VALUES ('613b98df9641456e83e721953f056d24', '权限管理', '', '0', '1', '2018-11-22 09:22:23', '2018-11-22 09:22:23');
INSERT INTO `tb_menu` VALUES ('614a38f13010468cad3982c5b37a3747', '内容管理', '', '0', '1', '2018-11-15 15:05:31', '2018-11-15 15:05:31');
INSERT INTO `tb_menu` VALUES ('a6199021d699434badfaf6eb1336c615', '活动管理', '', '614a38f13010468cad3982c5b37a3747', '1', '2018-11-22 09:23:01', '2018-11-22 09:23:01');
INSERT INTO `tb_menu` VALUES ('ffc30ed2912548148c968eacabc97639', '投票管理', '', '614a38f13010468cad3982c5b37a3747', '1', '2018-11-22 09:23:06', '2018-11-22 09:23:06');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `flag` int(1) DEFAULT NULL COMMENT '是否有效（1 有效 2 无效）',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色表';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('319a7526cee841b38168598acff64d18', '角色2', '222', '1', '2018-11-21 09:25:26', '2018-11-16 11:29:58');
INSERT INTO `tb_role` VALUES ('a10bb61577f644c3af3ccd374816b04c', '权限组test', '22222', '1', '2018-11-21 09:24:49', '2018-11-21 09:22:52');
INSERT INTO `tb_role` VALUES ('bbe93483f4dd45348ad48e2f965cd2af', '角色1', '这是admin权限', '1', '2018-11-15 14:59:47', '2018-11-15 14:59:35');
INSERT INTO `tb_role` VALUES ('c354fbc4e0064d7587575f3f8b3d44e8', '呜呜呜呜', '', '1', '2018-11-29 09:29:38', '2018-11-29 09:29:38');

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
INSERT INTO `tb_role_menu` VALUES ('29d262953fb749c7854d6f72feb8d09b', 'c354fbc4e0064d7587575f3f8b3d44e8', '41c9d08ac23d4d0fbfb58cfc6e259283');
INSERT INTO `tb_role_menu` VALUES ('3143c10c61a84f0794b66ed66caadcaf', 'bbe93483f4dd45348ad48e2f965cd2af', '613b98df9641456e83e721953f056d24');
INSERT INTO `tb_role_menu` VALUES ('3bb8d4bacf984743bb69deb7ab88dd2b', '319a7526cee841b38168598acff64d18', 'a6199021d699434badfaf6eb1336c615');
INSERT INTO `tb_role_menu` VALUES ('3d60cfc39d73457386f55348685987ac', 'bbe93483f4dd45348ad48e2f965cd2af', '41c9d08ac23d4d0fbfb58cfc6e259283');
INSERT INTO `tb_role_menu` VALUES ('5132b72f2006481aa56e941d29b54da1', '319a7526cee841b38168598acff64d18', '4b1dfa594f4c4e478c4c0d081e9d5945');
INSERT INTO `tb_role_menu` VALUES ('5514b9645a7c4ac487798516d0357fa7', 'bbe93483f4dd45348ad48e2f965cd2af', '3fae7ee4527543a0aaf3470daba8b3a1');
INSERT INTO `tb_role_menu` VALUES ('64d0162568194b8a805a537d080c28a9', '319a7526cee841b38168598acff64d18', 'ffc30ed2912548148c968eacabc97639');
INSERT INTO `tb_role_menu` VALUES ('73d45ffee25f4ba880b2c74b53c92d5b', '319a7526cee841b38168598acff64d18', '0e7a0a4d8d3d44cda8fa6dcbec928ac3');
INSERT INTO `tb_role_menu` VALUES ('7fd1cb097beb49cd89ce9fb2e16a908d', '319a7526cee841b38168598acff64d18', '41c9d08ac23d4d0fbfb58cfc6e259283');
INSERT INTO `tb_role_menu` VALUES ('c70f27fe242a42c9b147861395baa6f3', 'c354fbc4e0064d7587575f3f8b3d44e8', '3fae7ee4527543a0aaf3470daba8b3a1');
INSERT INTO `tb_role_menu` VALUES ('ce87e55b94954043a136bfb422c39318', 'c354fbc4e0064d7587575f3f8b3d44e8', '613b98df9641456e83e721953f056d24');
INSERT INTO `tb_role_menu` VALUES ('e10a44074c3144f1b7338128253b2a0a', '319a7526cee841b38168598acff64d18', '614a38f13010468cad3982c5b37a3747');
INSERT INTO `tb_role_menu` VALUES ('e3457232b6a54b3bba139aef694ea83b', '319a7526cee841b38168598acff64d18', '613b98df9641456e83e721953f056d24');
INSERT INTO `tb_role_menu` VALUES ('fbf3a4450fb34755b5af445941495509', '319a7526cee841b38168598acff64d18', '3fae7ee4527543a0aaf3470daba8b3a1');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `sex` int(1) DEFAULT NULL COMMENT '1男，2女',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `email` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `role_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色id',
  `head_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `flag` int(1) DEFAULT NULL COMMENT '是否有效（1 有效 2 无效）',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('10c89798-f21f-49dd-ba3b-ab08b42c087c', null, null, null, null, '2019-07-09 10:25:31', null, null, null, '2019-07-09 13:27:00', null);
INSERT INTO `tb_user` VALUES ('15a0a22502394e7c80691398b0469370', '里1斯', '2', '18588773301', 'fcea920f7412b5da7be0cf42b8c93759', '2018-11-19 17:05:06', '', 'bbe93483f4dd45348ad48e2f965cd2af', null, '2018-11-29 10:51:42', '1');
INSERT INTO `tb_user` VALUES ('21081d7f-02f3-4b79-a1fa-77c8dcfb138b', '', null, null, null, '2019-07-09 13:44:32', null, null, null, '2019-07-09 13:45:25', null);
INSERT INTO `tb_user` VALUES ('531b038090ef488fbc0e1336ed4c2dce', '2213', '1', '12345678902', 'e10adc3949ba59abbe56e057f20f883e', '2018-11-29 10:46:56', '', '319a7526cee841b38168598acff64d18', null, '2018-11-29 10:46:56', '2');
INSERT INTO `tb_user` VALUES ('7566c9fc6c4540259a64a556000a8282', '张三', '1', '18588773304', 'e10adc3949ba59abbe56e057f20f883e', '2018-11-19 16:39:11', null, '319a7526cee841b38168598acff64d18', null, '2018-11-19 16:46:13', '1');
INSERT INTO `tb_user` VALUES ('7d6e3643-3147-4153-b133-3ddf17542c0f', '123213123', null, null, null, '2019-07-08 16:23:04', null, null, null, '2019-07-08 16:23:04', '1');
INSERT INTO `tb_user` VALUES ('c71ae8d514124b8aaa5537e12079bbb6', '12131', '1', '18588773305', 'e10adc3949ba59abbe56e057f20f883e', '2018-11-29 09:29:08', '', 'a10bb61577f644c3af3ccd374816b04c', null, '2018-11-29 09:29:32', '1');
