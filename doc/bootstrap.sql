/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : bootstrap

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2016-08-19 17:35:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sex` varchar(2) DEFAULT NULL,
  `realName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '23', '2016-08-19 12:10:25', '男', '管理员');
INSERT INTO `users` VALUES ('2', 'lisi', '21232f297a57a5a743894a0e4a801fc3', '24', '2016-08-19 16:58:00', '女', '李四');
