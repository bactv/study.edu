/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : study_edu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-07 02:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `alt` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1:active, 0: inactive',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '0' COMMENT '0',
  `updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('1', 'Slide 1', 'Slide 1', 'Slide 1', null, '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24', '0', '0');
INSERT INTO `slideshow` VALUES ('2', 'Slide 2', 'Slide 2', 'Slide 2', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24', '0', '0');
INSERT INTO `slideshow` VALUES ('3', 'Slide 3', 'Slide 3', 'Slide 3', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24', '0', '0');
INSERT INTO `slideshow` VALUES ('4', 'Slide  4', 'Slide 4', 'Slide 4', null, '1', '2017-05-06 18:32:34', '2017-05-06 18:32:37', '0', '0');
INSERT INTO `slideshow` VALUES ('5', 'Slide 5', 'Slide 5', 'Slide 5', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24', '0', '0');
INSERT INTO `slideshow` VALUES ('6', 'Slide 6', 'Slide 6', 'Slide 6', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24', '0', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `birthday` varchar(60) DEFAULT NULL,
  `school` varchar(60) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `balance` decimal(10,0) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'Mrs. Bridget Abbott MD', '10/05/2017', 'Omnis quos atque excepturi et deleniti odio.', '0983048031', '0', '2017-05-06 22:43:31', '2017-05-07 01:31:01');
INSERT INTO `student` VALUES ('2', 'Ms. Lonie Reichel PhD', null, 'Sint eius debitis neque quod ut autem ipsa labore.', null, '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31');
INSERT INTO `student` VALUES ('3', 'Dr. Keagan McClure I', null, 'Explicabo doloremque ut eos.', null, '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31');
INSERT INTO `student` VALUES ('4', 'Ewell Johnson', null, 'Voluptate quos qui ab aut accusamus.', null, '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32');
INSERT INTO `student` VALUES ('6', 'adsads', null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `short_name` varchar(20) NOT NULL,
  `name_n` varchar(40) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'Toán Học', 'Toán', 'toan-hoc', 'calculator');
INSERT INTO `subject` VALUES ('2', 'Vật Lý', 'Vật Lý', 'vat-ly', 'thermometer');
INSERT INTO `subject` VALUES ('3', 'Hóa Học', 'Hóa Học', 'hoa-hoc', 'flask');
INSERT INTO `subject` VALUES ('4', 'Sinh Học', 'Sinh Học', 'sinh-hoc', 'mars');
INSERT INTO `subject` VALUES ('5', 'Địa Lý', 'Địa Lý', 'dia-ly', 'flag');
INSERT INTO `subject` VALUES ('6', 'Ngữ Văn', 'Ngữ Văn', 'ngu-van', 'pencil-square-o');
INSERT INTO `subject` VALUES ('7', 'Tiếng Anh', 'Tiếng Anh', 'tieng-anh', 'users');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL COMMENT '1: name, 2: nu',
  `intro` text,
  `work_place` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `degree` varchar(30) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: hoc sinh2: giao vien',
  `status` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'schoen.candido', 'ceefa3c572382b7cb78346b4f7330153', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-07 01:43:24');
INSERT INTO `user` VALUES ('2', 'nannie06', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31');
INSERT INTO `user` VALUES ('3', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31');
INSERT INTO `user` VALUES ('4', 'schumm.shayna', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32');
INSERT INTO `user` VALUES ('5', 'chelsey.schmitt', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32');
INSERT INTO `user` VALUES ('6', 'schoen.candidos', 'd241ec8d05916285c4c5e0cc7571f35e', '1', '1', '0', null, null);
