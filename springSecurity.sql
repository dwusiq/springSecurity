/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2017-07-13 15:37:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模块编号',
  `module` varchar(30) NOT NULL COMMENT '模块',
  `descpt` varchar(30) NOT NULL COMMENT '模块描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统模块表';

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES ('10000', 'produce_manage', '产品管理模块');

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `permission` varchar(30) NOT NULL COMMENT '权限',
  `descpt` varchar(30) NOT NULL COMMENT '权限描述',
  `moduleid` int(10) unsigned NOT NULL COMMENT '所属模块编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `t_permission_fid1` (`moduleid`),
  CONSTRAINT `t_permission_fid1` FOREIGN KEY (`moduleid`) REFERENCES `t_module` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('10000', 'insert_produce', '新增产品信息', '10000');
INSERT INTO `t_permission` VALUES ('10001', 'delete_produce', '删除产品信息', '10000');
INSERT INTO `t_permission` VALUES ('10002', 'update_produce', '修改产品信息', '10000');
INSERT INTO `t_permission` VALUES ('10003', 'query_produce', '查询产品信息', '10000');

-- ----------------------------
-- Table structure for `t_produce`
-- ----------------------------
DROP TABLE IF EXISTS `t_produce`;
CREATE TABLE `t_produce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `produce_name` varchar(50) NOT NULL COMMENT '商品名称',
  `produce_price` varchar(50) NOT NULL COMMENT '商品价格',
  `create_user` varchar(50) NOT NULL COMMENT '资料添加人员',
  `create_date` datetime NOT NULL COMMENT '资料创建时间',
  `update_user` varchar(50) NOT NULL COMMENT '最近修改人员',
  `update_date` datetime NOT NULL COMMENT '最近修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_produce
-- ----------------------------

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role` varchar(30) NOT NULL COMMENT '角色',
  `descpt` varchar(30) NOT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('10000', 'customer', '顾客');
INSERT INTO `t_role` VALUES ('10001', 'admin', '管理员');

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色权限关系编号',
  `roleid` int(10) unsigned NOT NULL COMMENT '角色编号',
  `permissionid` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `permissionid` (`permissionid`),
  KEY `t_role_permission_fid1` (`roleid`),
  CONSTRAINT `t_role_permission_fid1` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_role_permission_fid2` FOREIGN KEY (`permissionid`) REFERENCES `t_permission` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8 COMMENT='角色权限关系表';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('10000', '10000', '10003');
INSERT INTO `t_role_permission` VALUES ('10001', '10001', '10000');
INSERT INTO `t_role_permission` VALUES ('10002', '10001', '10001');
INSERT INTO `t_role_permission` VALUES ('10003', '10001', '10002');
INSERT INTO `t_role_permission` VALUES ('10004', '10001', '10003');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `pswd` varchar(50) NOT NULL COMMENT '登录密码',
  `nickname` varchar(50) NOT NULL COMMENT '用户昵称',
  `userphone` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('10000', '123456', '大狗', '18215689542');
INSERT INTO `t_user` VALUES ('10001', '753159', '二狗', '15232654751');
INSERT INTO `t_user` VALUES ('10002', '654852', '三狗', '13025465852');
INSERT INTO `t_user` VALUES ('10003', '741256', '四狗', '12503214562');

-- ----------------------------
-- Table structure for `t_user_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_permission`;
CREATE TABLE `t_user_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户权限关系编号',
  `userid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `permissionid` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `permissionid` (`permissionid`),
  KEY `t_user_permission_fid1` (`userid`),
  CONSTRAINT `t_user_permission_fid1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_user_permission_fid2` FOREIGN KEY (`permissionid`) REFERENCES `t_permission` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户权限关系表';

-- ----------------------------
-- Records of t_user_permission
-- ----------------------------
INSERT INTO `t_user_permission` VALUES ('1', '10001', '10003');
INSERT INTO `t_user_permission` VALUES ('2', '10002', '10003');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户角色关系编号',
  `userid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `roleid` int(10) unsigned NOT NULL COMMENT '角色编号',
  UNIQUE KEY `id` (`id`),
  KEY `t_user_role_fid2` (`roleid`),
  KEY `t_user_role_fid1` (`userid`),
  CONSTRAINT `t_user_role_fid1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_user_role_fid2` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '10000', '10000');
INSERT INTO `t_user_role` VALUES ('2', '10001', '10000');
INSERT INTO `t_user_role` VALUES ('3', '10002', '10001');
INSERT INTO `t_user_role` VALUES ('4', '10003', '10001');
