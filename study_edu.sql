/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : study_edu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-11 01:06:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `thumb` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '1',
  `last_active_time` datetime DEFAULT NULL,
  `group_ids` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '$2y$13$K9vy95X.hgT4Puo/wMjdCuBg73HA114fi9N9NFvoh36eyAYXGljSa', 'Administrator', 'admin@study.edu.vn', '', '0000-00-00', '1', '1', '0', '2017-05-10 13:26:18', '[\"1\"]', '0', '0', null, '2017-05-10 13:26:18', null, null);
INSERT INTO `admin` VALUES ('18', 'hd_bichphuong', '$2y$13$uUiyxY7M1uDuCmeU0pAf.OYFWwtHYC5VRLxp5Ah2sV.DU.i4a/o3q', 'bich phuong', '', '', null, '1', '1', '0', '2017-05-10 18:44:55', '[\"2\"]', '0', '0', '2017-05-10 18:02:03', '2017-05-10 18:44:55', null, null);

-- ----------------------------
-- Table structure for admin_action
-- ----------------------------
DROP TABLE IF EXISTS `admin_action`;
CREATE TABLE `admin_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_id` int(11) NOT NULL,
  `controller_name` varchar(30) DEFAULT NULL,
  `action_name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_action
-- ----------------------------
INSERT INTO `admin_action` VALUES ('1', '1', 'Admin', 'Index', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('2', '1', 'Admin', 'View', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('3', '1', 'Admin', 'Create', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('4', '1', 'Admin', 'Update', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('5', '1', 'Admin', 'Delete', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('6', '2', 'AdminGroup', 'Index', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('7', '2', 'AdminGroup', 'View', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('8', '2', 'AdminGroup', 'Create', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('9', '2', 'AdminGroup', 'Update', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('10', '2', 'AdminGroup', 'Delete', null, '2017-03-07 23:35:58');
INSERT INTO `admin_action` VALUES ('11', '3', 'Site', 'Index', null, '2017-03-07 23:35:59');
INSERT INTO `admin_action` VALUES ('12', '3', 'Site', 'Login', null, '2017-03-07 23:35:59');
INSERT INTO `admin_action` VALUES ('13', '3', 'Site', 'Logout', null, '2017-03-07 23:35:59');
INSERT INTO `admin_action` VALUES ('15', '4', 'UpdatePermission', 'UpdateRouter', null, '2017-03-08 00:04:16');
INSERT INTO `admin_action` VALUES ('16', '5', 'Menu', 'Index', null, '2017-03-13 23:56:04');
INSERT INTO `admin_action` VALUES ('17', '5', 'Menu', 'View', null, '2017-03-13 23:56:04');
INSERT INTO `admin_action` VALUES ('18', '5', 'Menu', 'Create', null, '2017-03-13 23:56:04');
INSERT INTO `admin_action` VALUES ('19', '5', 'Menu', 'Update', null, '2017-03-13 23:56:04');
INSERT INTO `admin_action` VALUES ('20', '5', 'Menu', 'Delete', null, '2017-03-13 23:56:04');
INSERT INTO `admin_action` VALUES ('21', '6', 'AgreementAddendum', 'Index', null, '2017-05-10 08:17:33');
INSERT INTO `admin_action` VALUES ('22', '6', 'AgreementAddendum', 'View', null, '2017-05-10 08:17:33');
INSERT INTO `admin_action` VALUES ('23', '6', 'AgreementAddendum', 'Create', null, '2017-05-10 08:17:33');
INSERT INTO `admin_action` VALUES ('24', '6', 'AgreementAddendum', 'Update', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('25', '6', 'AgreementAddendum', 'Delete', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('26', '7', 'Agreement', 'Index', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('27', '7', 'Agreement', 'View', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('28', '7', 'Agreement', 'Create', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('29', '7', 'Agreement', 'Update', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('30', '7', 'Agreement', 'Delete', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('31', '7', 'Agreement', 'ViewAgreement', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('32', '7', 'Agreement', 'Addendum', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('33', '8', 'AgreementRight', 'Index', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('34', '8', 'AgreementRight', 'View', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('35', '8', 'AgreementRight', 'Create', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('36', '8', 'AgreementRight', 'Update', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('37', '8', 'AgreementRight', 'Delete', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('38', '9', 'AgreementType', 'Index', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('39', '9', 'AgreementType', 'View', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('40', '9', 'AgreementType', 'Create', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('41', '9', 'AgreementType', 'Update', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('42', '9', 'AgreementType', 'Delete', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('43', '10', 'ClassLevel', 'Index', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('44', '10', 'ClassLevel', 'View', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('45', '10', 'ClassLevel', 'Create', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('46', '10', 'ClassLevel', 'Update', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('47', '10', 'ClassLevel', 'Delete', null, '2017-05-10 08:17:34');
INSERT INTO `admin_action` VALUES ('48', '11', 'Course', 'Index', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('49', '11', 'Course', 'View', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('50', '11', 'Course', 'Create', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('51', '11', 'Course', 'Update', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('52', '11', 'Course', 'Delete', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('53', '11', 'Course', 'Approve', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('54', '11', 'Course', 'Refuse', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('55', '11', 'Course', 'SendFeedbackTeacher', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('56', '12', 'CourseNews', 'Index', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('57', '12', 'CourseNews', 'View', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('58', '12', 'CourseNews', 'Create', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('59', '12', 'CourseNews', 'Update', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('60', '12', 'CourseNews', 'Delete', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('61', '13', 'CourseType', 'Index', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('62', '13', 'CourseType', 'View', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('63', '13', 'CourseType', 'Create', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('64', '13', 'CourseType', 'Update', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('65', '13', 'CourseType', 'Delete', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('66', '14', 'Feedback', 'Index', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('67', '14', 'Feedback', 'View', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('68', '14', 'Feedback', 'Create', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('69', '14', 'Feedback', 'Update', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('70', '14', 'Feedback', 'Delete', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('71', '15', 'ImportFile', 'Index', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('72', '15', 'ImportFile', 'View', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('73', '15', 'ImportFile', 'Create', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('74', '15', 'ImportFile', 'Update', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('75', '15', 'ImportFile', 'Delete', null, '2017-05-10 08:17:35');
INSERT INTO `admin_action` VALUES ('76', '16', 'Package', 'Index', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('77', '16', 'Package', 'View', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('78', '16', 'Package', 'Create', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('79', '16', 'Package', 'Update', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('80', '16', 'Package', 'Delete', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('81', '17', 'Party', 'Index', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('82', '17', 'Party', 'View', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('83', '17', 'Party', 'Create', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('84', '17', 'Party', 'Update', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('85', '17', 'Party', 'Delete', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('86', '18', 'PartyType', 'Index', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('87', '18', 'PartyType', 'View', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('88', '18', 'PartyType', 'Create', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('89', '18', 'PartyType', 'Update', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('90', '18', 'PartyType', 'Delete', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('91', '19', 'QuestionAnswer', 'Index', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('92', '19', 'QuestionAnswer', 'View', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('93', '19', 'QuestionAnswer', 'Create', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('94', '19', 'QuestionAnswer', 'Update', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('95', '19', 'QuestionAnswer', 'Delete', null, '2017-05-10 08:17:36');
INSERT INTO `admin_action` VALUES ('96', '20', 'Question', 'Index', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('97', '20', 'Question', 'View', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('98', '20', 'Question', 'Create', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('99', '20', 'Question', 'Update', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('100', '20', 'Question', 'Delete', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('101', '21', 'Quiz', 'Index', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('102', '21', 'Quiz', 'View', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('103', '21', 'Quiz', 'Create', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('104', '21', 'Quiz', 'Update', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('105', '21', 'Quiz', 'Delete', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('106', '22', 'QuizType', 'Index', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('107', '22', 'QuizType', 'View', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('108', '22', 'QuizType', 'Create', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('109', '22', 'QuizType', 'Update', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('110', '22', 'QuizType', 'Delete', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('111', '23', 'Slideshow', 'Index', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('112', '23', 'Slideshow', 'View', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('113', '23', 'Slideshow', 'Create', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('114', '23', 'Slideshow', 'Update', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('115', '23', 'Slideshow', 'Delete', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('116', '24', 'Student', 'Index', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('117', '24', 'Student', 'View', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('118', '24', 'Student', 'Create', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('119', '24', 'Student', 'Update', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('120', '24', 'Student', 'Delete', null, '2017-05-10 08:17:37');
INSERT INTO `admin_action` VALUES ('121', '25', 'Subject', 'Index', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('122', '25', 'Subject', 'View', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('123', '25', 'Subject', 'Create', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('124', '25', 'Subject', 'Update', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('125', '25', 'Subject', 'Delete', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('126', '26', 'Teacher', 'Index', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('127', '26', 'Teacher', 'View', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('128', '26', 'Teacher', 'Create', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('129', '26', 'Teacher', 'Update', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('130', '26', 'Teacher', 'Delete', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('131', '27', 'Test', 'Index', null, '2017-05-10 08:17:38');
INSERT INTO `admin_action` VALUES ('132', '19', 'QuestionAnswer', 'ListAnswer', null, '2017-05-10 13:35:42');
INSERT INTO `admin_action` VALUES ('133', '21', 'Quiz', 'Question', null, '2017-05-10 13:35:42');
INSERT INTO `admin_action` VALUES ('134', '28', 'Topic', 'Index', null, '2017-05-10 13:35:42');
INSERT INTO `admin_action` VALUES ('135', '28', 'Topic', 'View', null, '2017-05-10 13:35:42');
INSERT INTO `admin_action` VALUES ('136', '28', 'Topic', 'Create', null, '2017-05-10 13:35:42');
INSERT INTO `admin_action` VALUES ('137', '28', 'Topic', 'Update', null, '2017-05-10 13:35:42');
INSERT INTO `admin_action` VALUES ('138', '28', 'Topic', 'Delete', null, '2017-05-10 13:35:42');

-- ----------------------------
-- Table structure for admin_controller
-- ----------------------------
DROP TABLE IF EXISTS `admin_controller`;
CREATE TABLE `admin_controller` (
  `controller_id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_name` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`controller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_controller
-- ----------------------------
INSERT INTO `admin_controller` VALUES ('1', 'Admin', 'Admin', '2017-03-07 22:56:38');
INSERT INTO `admin_controller` VALUES ('2', 'AdminGroup', 'AdminGroup', '2017-03-07 22:56:38');
INSERT INTO `admin_controller` VALUES ('3', 'Site', 'Site', '2017-03-07 22:56:38');
INSERT INTO `admin_controller` VALUES ('4', 'UpdatePermission', 'UpdatePermission', '2017-03-07 22:56:38');
INSERT INTO `admin_controller` VALUES ('5', 'Menu', 'Menu', '2017-03-13 23:56:04');
INSERT INTO `admin_controller` VALUES ('6', 'AgreementAddendum', 'AgreementAddendum', '2017-05-10 08:17:32');
INSERT INTO `admin_controller` VALUES ('7', 'Agreement', 'Agreement', '2017-05-10 08:17:32');
INSERT INTO `admin_controller` VALUES ('8', 'AgreementRight', 'AgreementRight', '2017-05-10 08:17:32');
INSERT INTO `admin_controller` VALUES ('9', 'AgreementType', 'AgreementType', '2017-05-10 08:17:32');
INSERT INTO `admin_controller` VALUES ('10', 'ClassLevel', 'ClassLevel', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('11', 'Course', 'Course', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('12', 'CourseNews', 'CourseNews', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('13', 'CourseType', 'CourseType', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('14', 'Feedback', 'Feedback', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('15', 'ImportFile', 'ImportFile', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('16', 'Package', 'Package', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('17', 'Party', 'Party', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('18', 'PartyType', 'PartyType', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('19', 'QuestionAnswer', 'QuestionAnswer', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('20', 'Question', 'Question', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('21', 'Quiz', 'Quiz', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('22', 'QuizType', 'QuizType', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('23', 'Slideshow', 'Slideshow', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('24', 'Student', 'Student', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('25', 'Subject', 'Subject', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('26', 'Teacher', 'Teacher', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('27', 'Test', 'Test', '2017-05-10 08:17:33');
INSERT INTO `admin_controller` VALUES ('28', 'Topic', 'Topic', '2017-05-10 13:35:42');

-- ----------------------------
-- Table structure for admin_group
-- ----------------------------
DROP TABLE IF EXISTS `admin_group`;
CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `action_ids` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_group
-- ----------------------------
INSERT INTO `admin_group` VALUES ('1', 'Administator', 'Quản trị hệ thống, Phát triển hệ thống', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]', '1', '2017-03-08 00:33:05', '2017-05-10 13:33:34');
INSERT INTO `admin_group` VALUES ('2', 'Quản lý hợp đồng', 'Nhóm admin quản lý hợp đồng', '[\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\"]', '1', '2017-05-10 17:27:17', '2017-05-10 17:27:17');

-- ----------------------------
-- Table structure for agreement
-- ----------------------------
DROP TABLE IF EXISTS `agreement`;
CREATE TABLE `agreement` (
  `agreement_id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement_code` varchar(255) NOT NULL,
  `party_id_a` int(11) NOT NULL COMMENT 'he thong',
  `party_id_b` int(11) NOT NULL COMMENT 'don vi cung cap',
  `agreement_signed_date` date NOT NULL,
  `agreement_effective_date` date NOT NULL,
  `agreement_right_ids` varchar(10) DEFAULT NULL,
  `agreement_type_id` int(11) NOT NULL,
  `mg` float DEFAULT '0',
  `agreement_created_time` datetime DEFAULT NULL,
  `agreement_updated_time` datetime DEFAULT NULL,
  `agreement_created_by` int(11) DEFAULT NULL,
  `agreement_updated_by` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: chu xoa, 1: da xoa',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement
-- ----------------------------
INSERT INTO `agreement` VALUES ('1', 'Aspernatur officiis qui qui voluptates.', '1', '11', '1995-03-06', '1976-07-15', '[2]', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('2', 'Optio dolor quae iusto in nemo quia.', '1', '6', '1998-07-16', '1996-10-11', '[1]', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('3', 'Voluptas accusamus quibusdam tempora reiciendis.', '1', '8', '1981-12-21', '1994-05-18', '[2,1]', '1', '343911000', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('4', 'Eveniet velit qui corporis veritatis.', '1', '10', '2014-12-03', '2011-01-17', '[2,1]', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('5', 'Suscipit quia quis eos architecto veniam qui.', '1', '3', '1976-08-10', '1991-05-20', '[1,2]', '1', '812214', '2017-03-25 10:12:49', '2017-03-25 10:17:00', null, '1', '0');

-- ----------------------------
-- Table structure for agreement_addendum
-- ----------------------------
DROP TABLE IF EXISTS `agreement_addendum`;
CREATE TABLE `agreement_addendum` (
  `addendum_id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement_id` int(11) NOT NULL,
  `addendum_number` varchar(255) NOT NULL,
  `addendum_content` text,
  `addendum_created_time` datetime DEFAULT NULL,
  `addendum_updated_time` datetime DEFAULT NULL,
  `addendum_created_by` int(11) DEFAULT NULL,
  `addendum_updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`addendum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement_addendum
-- ----------------------------
INSERT INTO `agreement_addendum` VALUES ('1', '2', '300 Stark Cliff Apt. 442', 'Hic earum id minus aut eligendi dolorem fugit eos id ut nobis ipsa unde aliquid quasi dolores aspernatur molestiae non placeat quaerat quia debitis.', '1981-01-01 16:19:16', '1983-11-26 02:45:17', null, null);
INSERT INTO `agreement_addendum` VALUES ('2', '1', '86279 Juwan Pike Apt. 134', 'Aspernatur sed perferendis quasi facere sed eum sit voluptatem cum pariatur consequatur sed suscipit voluptatum magnam illum officia tempora qui corrupti repellendus nihil eius sed omnis quidem ad voluptatem repellat sunt enim labore dignissimos praesentium doloribus consequatur dolores.', '2015-10-21 10:41:15', '1992-11-23 21:39:20', null, null);
INSERT INTO `agreement_addendum` VALUES ('3', '3', '398 Skiles Via Apt. 886', 'Minima sint totam ipsam voluptatem laudantium sit omnis ut architecto numquam autem vitae et tempora voluptatem laboriosam tempora error cumque rerum sit quam aut dicta facilis soluta necessitatibus architecto suscipit in.', '1984-04-28 03:25:52', '1999-12-30 20:51:57', null, null);
INSERT INTO `agreement_addendum` VALUES ('4', '2', '376 Ankunding Mountain Suite 770', 'Illo ut cupiditate neque sapiente et consequuntur vero ut eum consequatur iste a sint voluptas labore quo eum ipsam magni aspernatur est vero et vero quas a blanditiis sequi quia sunt.', '1972-01-13 23:09:36', '1973-03-23 14:40:37', null, null);
INSERT INTO `agreement_addendum` VALUES ('5', '4', '92757 Douglas Haven', 'Eos sapiente sint voluptatem laboriosam aspernatur sit et dolorum tenetur officia et rerum tenetur rem earum culpa voluptas rerum.', '1994-12-18 20:27:03', '2016-12-19 13:55:33', null, null);
INSERT INTO `agreement_addendum` VALUES ('6', '3', '8726 Hammes Rapid', 'Omnis ut quia eos ipsam tempore praesentium mollitia sunt commodi blanditiis impedit eaque et alias quis doloremque accusamus qui culpa et distinctio quae error eius.', '1982-09-23 22:43:29', '2004-10-09 23:21:46', null, null);
INSERT INTO `agreement_addendum` VALUES ('7', '2', '305 Kuhic Fields Apt. 454', 'Sunt mollitia qui voluptas natus ea delectus natus inventore vero et ullam consectetur qui quia non necessitatibus id nisi voluptatem nobis impedit et voluptatem tenetur cum doloremque dolor voluptate ut consequatur sed.', '1978-11-12 23:59:17', '1986-09-26 04:14:12', null, null);
INSERT INTO `agreement_addendum` VALUES ('8', '5', '227 Gorczany Fords', 'Porro suscipit ipsam ut omnis ea exercitationem ut est ipsam et quidem commodi tempore expedita facilis vel asperiores numquam hic voluptatibus.', '2008-02-17 21:35:46', '2001-02-08 12:15:38', null, null);
INSERT INTO `agreement_addendum` VALUES ('9', '5', '81302 Garland Port', 'Ab tempore nemo soluta non expedita dolorem doloremque error voluptate magni dolores est velit nisi et in architecto delectus alias laboriosam voluptate sequi non voluptate.', '1983-01-16 23:33:16', '2005-08-20 22:50:20', null, null);
INSERT INTO `agreement_addendum` VALUES ('10', '4', '5574 Kim Circle', 'Rerum maiores ipsum nesciunt dignissimos ex excepturi ut culpa quam sunt id reprehenderit necessitatibus eum labore voluptate temporibus dolorum et odit animi eum cum vitae et ab odio quisquam consequatur fugit enim non distinctio dolorem.', '2012-05-11 13:11:54', '1999-03-31 22:45:50', null, null);
INSERT INTO `agreement_addendum` VALUES ('11', '4', '3632 Kuhic Drive', 'Nobis labore ipsum sed at dicta et itaque cumque officia nemo nam tempore doloremque debitis qui molestiae ut est est nesciunt qui enim repellat molestiae neque ipsa quisquam aut animi inventore dolor voluptatem excepturi occaecati aliquam sapiente possimus voluptas est.', '1978-10-29 21:01:37', '2009-08-19 13:05:25', null, null);
INSERT INTO `agreement_addendum` VALUES ('12', '2', '4535 Virginie Roads', 'Ipsum porro recusandae qui nisi et quia omnis ad atque numquam est numquam debitis id vero quasi explicabo quo quis voluptatem autem fugit unde eveniet quisquam sint ad qui.', '1996-06-14 18:35:52', '2009-04-21 19:52:42', null, null);
INSERT INTO `agreement_addendum` VALUES ('13', '2', '567 Breitenberg Glens', 'Ad omnis quia voluptatem voluptatibus maxime odit quo alias atque dignissimos eum est minima sed possimus nihil consequatur expedita aut rerum velit autem ut id voluptas.', '1999-07-07 11:38:32', '1971-02-28 14:37:26', null, null);
INSERT INTO `agreement_addendum` VALUES ('14', '5', '4075 Hettie Village', 'Aliquid officia dignissimos nostrum illo harum perspiciatis dolores ea non mollitia blanditiis exercitationem assumenda sed nostrum dolore eos et quaerat ullam ducimus quia est dolorem.', '1975-12-08 04:22:05', '1974-01-06 03:21:43', null, null);
INSERT INTO `agreement_addendum` VALUES ('15', '2', '328 Dewayne Corner', 'Nemo ut ut quo ea voluptas atque cum libero maxime eius repellendus sunt officiis eius odit ipsum pariatur eum enim ut fugit non voluptatem rerum.', '2013-04-07 20:57:05', '1981-09-25 11:36:22', null, null);
INSERT INTO `agreement_addendum` VALUES ('16', '5', '50828 Hintz View Apt. 985', 'Asperiores quibusdam est corrupti commodi iure accusamus voluptate ea omnis delectus ut architecto minus consequuntur porro est omnis facere corrupti qui amet explicabo atque totam est quia itaque saepe iste laboriosam dolor ut quasi.', '1988-07-09 12:56:20', '1984-09-29 10:40:44', null, null);
INSERT INTO `agreement_addendum` VALUES ('17', '1', '195 Champlin Lights', 'Et at dolore et iste sunt et libero consequatur cupiditate perferendis consequatur rerum minima asperiores labore natus quis nihil alias consequatur dolore tenetur soluta eveniet tempore blanditiis sit id harum dolores.', '1973-06-26 03:25:23', '1977-09-22 16:21:35', null, null);
INSERT INTO `agreement_addendum` VALUES ('18', '5', '20113 Schaden Drive Suite 092', 'Labore et quia minima minima sed sapiente explicabo qui ut libero et in fugit voluptatum aliquid praesentium itaque fugiat omnis sint earum ut voluptatem qui impedit laudantium fugit sunt ut sed laboriosam sint eos aut a eligendi consequatur et.', '1974-11-15 21:25:20', '2016-09-15 20:41:47', null, null);
INSERT INTO `agreement_addendum` VALUES ('19', '3', '21280 Moises Forge Suite 315', 'Iste repellat eaque qui minima dolor vel unde qui qui aspernatur tenetur enim porro hic consequatur sed quidem qui dolore rerum temporibus sint rerum incidunt deserunt necessitatibus natus alias accusantium numquam quia quod saepe iusto quia alias rerum autem.', '1998-06-27 21:55:59', '2012-12-04 07:21:24', null, null);
INSERT INTO `agreement_addendum` VALUES ('20', '2', '419 Caleb Shore', 'Odio inventore et necessitatibus aut non necessitatibus et eum repudiandae in a rerum sunt temporibus cum maiores enim doloribus illo voluptas labore cumque consequatur sint tenetur quia sequi qui sed nesciunt libero aspernatur aliquid occaecati nam vel necessitatibus facilis.', '1978-03-08 15:42:26', '2004-02-16 13:34:58', null, null);

-- ----------------------------
-- Table structure for agreement_course_share_rate
-- ----------------------------
DROP TABLE IF EXISTS `agreement_course_share_rate`;
CREATE TABLE `agreement_course_share_rate` (
  `agreement_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `share_rate` int(11) DEFAULT '0',
  PRIMARY KEY (`agreement_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement_course_share_rate
-- ----------------------------

-- ----------------------------
-- Table structure for agreement_right
-- ----------------------------
DROP TABLE IF EXISTS `agreement_right`;
CREATE TABLE `agreement_right` (
  `agreement_right_id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement_right_name` varchar(255) NOT NULL,
  `agreement_right_description` text,
  PRIMARY KEY (`agreement_right_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement_right
-- ----------------------------
INSERT INTO `agreement_right` VALUES ('1', 'Quyền tác giả', 'Quyền tác giả');
INSERT INTO `agreement_right` VALUES ('2', 'Quyền liên quan', 'Quyền liên quan');

-- ----------------------------
-- Table structure for agreement_temp
-- ----------------------------
DROP TABLE IF EXISTS `agreement_temp`;
CREATE TABLE `agreement_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement_code` varchar(255) NOT NULL,
  `party_id_a` int(11) DEFAULT NULL COMMENT 'he thong',
  `party_id_b` int(11) DEFAULT NULL COMMENT 'don vi cung cap',
  `agreement_signed_date` date DEFAULT NULL,
  `agreement_effective_date` date DEFAULT NULL,
  `agreement_right_ids` varchar(10) DEFAULT NULL,
  `agreement_type_id` int(11) DEFAULT NULL,
  `mg` float DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '0: chua xu ly, 1: da xu ly',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement_temp
-- ----------------------------
INSERT INTO `agreement_temp` VALUES ('7', 'asd', '1', '2', '2015-03-12', '2015-03-15', '1', '2', '0', '1');
INSERT INTO `agreement_temp` VALUES ('8', 'sadsadsaa', '1', '4', '2015-04-30', '2015-04-30', '1,2', '1', '300000', '1');

-- ----------------------------
-- Table structure for agreement_type
-- ----------------------------
DROP TABLE IF EXISTS `agreement_type`;
CREATE TABLE `agreement_type` (
  `agreement_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement_type_name` varchar(255) NOT NULL,
  `agreement_type_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`agreement_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement_type
-- ----------------------------
INSERT INTO `agreement_type` VALUES ('1', 'HĐ mua đứt', 'Hợp đồng này mua đứt bài giảng của đối tác, không cần trả đối soát.');
INSERT INTO `agreement_type` VALUES ('2', 'HĐ hợp tác', 'Hợp đồng hợp tác nội dung, trả đối soát cho đối tác.');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `teacher_ids` varchar(30) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `deadline_register` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0: chua active, 1: active',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: not delete, 1: deleted',
  `approved` tinyint(3) DEFAULT '0' COMMENT '0: dang xem xet, 1: da phe duyet, -1: tu choi phe duyet',
  `approver` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0' COMMENT '0: mien phi',
  `course_type_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('4', 'Khóa H2 - Luyện thi THPT Quốc gia môn Ngữ văn năm 2018', '[\"7\"]', null, '<p><strong>Study.edu</strong> thiết kế v&agrave; cung cấp chương tr&igrave;nh&nbsp;luyện thi to&agrave;n diện&nbsp;THPT Quốc gia m&ocirc;n Ngữ Văn năm 2018 theo&nbsp;cấu tr&uacute;c MỚI&nbsp;m&agrave; Bộ Gi&aacute;o Dục v&agrave; Đ&agrave;o Tạo vừa ban h&agrave;nh. Một trong những kh&oacute;a học quan trọng nhất l&agrave;&nbsp;Kh&oacute;a nền tảng H2&nbsp;được giảng dạy bởi&nbsp;C&ocirc;<em>&nbsp;<strong>Bernhard</strong></em><strong>&nbsp;</strong>- Gi&aacute;o vi&ecirc;n Ngữ văn&nbsp;<em>trường THCS - THPT Nguyễn Khuyến &ndash; TP.HCM.</em></p>\r\n\r\n<p>Kh&oacute;a học nền tảng H2 sẽ cung cấp cho c&aacute;c em đầy đủ kiến thức cơ bản, trọng t&acirc;m v&agrave; bao qu&aacute;t to&agrave;n diện&nbsp;chương tr&igrave;nh lớp 12&nbsp;nhằm chuẩn bị cho k&igrave; thi&nbsp;THPT Quốc gia m&ocirc;n Ngữ Văn năm 2018&nbsp;đạt kết quả cao nhất. Nội dung b&agrave;i học được tr&igrave;nh b&agrave;y một c&aacute;ch hệ thống, dễ hiểu, dễ ghi nhớ.</p>\r\n\r\n<p>Sau mỗi b&agrave;i giảng, c&aacute;c em được thực h&agrave;nh kiến thức đ&atilde; học qua c&aacute;c d&agrave;n &yacute; văn mẫu v&agrave; t&agrave;i liệu tham khảo nhằm nắm chắc kiến thức vừa học,&nbsp;ho&agrave;n thiện kỹ năng l&agrave;m b&agrave;i.</p>\r\n\r\n<p>NỘI DUNG KH&Oacute;A HỌC</p>\r\n\r\n<p>Kh&oacute;a học gồm 5 chuy&ecirc;n đề&nbsp;bao qu&aacute;t to&agrave;n bộ chương tr&igrave;nh lớp&nbsp;Ngữ Văn&nbsp;12 v&agrave; một phần chương tr&igrave;nh Ngữ Văn lớp 11.</p>\r\n\r\n<p>Hơn 60 video b&agrave;i giảng gi&uacute;p c&aacute;c em nắm vững kiến thức m&ocirc;n&nbsp;Ngữ Văn.</p>\r\n\r\n<p>Tr&ecirc;n 200 d&agrave;n &yacute; văn mẫu ti&ecirc;u biểu tr&iacute;ch lọc v&agrave; bi&ecirc;n soạn từ c&aacute;c t&aacute;c phẩm.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c em c&oacute; những giờ học th&uacute; vị, bổ &iacute;ch v&agrave; hiệu quả qua sự dẫn dắt của C&ocirc;&nbsp;<em><strong>Bernhard</strong></em><strong>&nbsp;</strong>!</p>\r\n', null, '0', '0', '0', null, null, '1', '6', '2017-05-10 15:28:33', '2017-05-10 15:28:33');

-- ----------------------------
-- Table structure for course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `course_teacher`;
CREATE TABLE `course_teacher` (
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  PRIMARY KEY (`course_id`,`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for course_type
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES ('1', 'Học qua video bài giảng', 'video', 'Học qua video bài giảng');
INSERT INTO `course_type` VALUES ('2', 'Học trực tuyến', 'live_streaming', 'Học trực tuyến sử dụng hình thức chat group');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `content` varchar(700) NOT NULL,
  `response` tinyint(1) DEFAULT '0' COMMENT '0: chua tra loi, 1: da tra loi',
  `created_by` int(11) DEFAULT NULL,
  `response_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: tiep tuc, 1: xoa feedback',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for import_file
-- ----------------------------
DROP TABLE IF EXISTS `import_file`;
CREATE TABLE `import_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1: da xu ly, 0: chua xu ly',
  `type` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_file
-- ----------------------------
INSERT INTO `import_file` VALUES ('2', 'test_agreement_1', '1', 'agreement', '2017-03-25 10:26:42', '2017-03-25 10:26:42', '1', '1');

-- ----------------------------
-- Table structure for import_question
-- ----------------------------
DROP TABLE IF EXISTS `import_question`;
CREATE TABLE `import_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_content` varchar(255) DEFAULT NULL,
  `question_solution` varchar(255) DEFAULT NULL,
  `answer_1` varchar(255) DEFAULT NULL,
  `answer_2` varchar(0) DEFAULT NULL,
  `answer_3` varchar(0) DEFAULT NULL,
  `answer_4` varchar(0) DEFAULT NULL,
  `answer_5` varchar(0) DEFAULT NULL,
  `answer_6` varchar(0) DEFAULT NULL,
  `ans_true` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_question
-- ----------------------------

-- ----------------------------
-- Table structure for import_quiz
-- ----------------------------
DROP TABLE IF EXISTS `import_quiz`;
CREATE TABLE `import_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1: da xu ly, 0: chua xu ly',
  `quiz_name` varchar(255) DEFAULT NULL,
  `quiz_description` varchar(255) DEFAULT NULL,
  `quiz_type_id` varchar(255) DEFAULT NULL,
  `topic_id` varchar(255) DEFAULT NULL,
  `time_length` varchar(0) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_quiz
-- ----------------------------

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link_video` varchar(255) DEFAULT NULL,
  `time_length` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `number_view` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active, 0: inactive',
  `publish_date` date DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `module` int(1) NOT NULL DEFAULT '1' COMMENT '1: backend, 2: frontend',
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1' COMMENT '1: visible, 0: hide',
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active, 0: deactive',
  `sort` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', 'Cấu hình hệ thống', '1', 'menu/index', 'cog', '1', '1', null, '2017-03-14 21:57:14', '2017-03-14 21:57:17');
INSERT INTO `menu` VALUES ('2', '1', 'Quản lý người dùng', '1', 'admin/index', 'user-circle', '1', '1', '2', '2017-03-14 21:59:04', '2017-03-14 21:59:07');
INSERT INTO `menu` VALUES ('3', '1', 'Menu hệ thống', '1', 'menu/index', 'bars', '1', '1', '3', '2017-03-14 22:00:31', '2017-03-14 22:00:33');
INSERT INTO `menu` VALUES ('4', '1', 'Nhóm quyền quản trị', '1', 'admin-group/index', 'users', '1', '1', '1', '2017-03-15 00:14:23', '2017-03-15 00:14:25');
INSERT INTO `menu` VALUES ('5', '0', 'Quản lý hợp đồng', '1', 'agreement/index', 'sticky-note', '1', '1', null, '2017-03-15 00:25:20', '2017-03-15 00:25:23');
INSERT INTO `menu` VALUES ('6', '5', 'Loại hợp đồng', '1', 'agreement-type/index', 'tags', '1', '1', '2', '2017-03-15 00:26:29', '2017-03-15 00:26:32');
INSERT INTO `menu` VALUES ('7', '5', 'Hợp đồng', '1', 'agreement/index', 'newspaper-o', '1', '1', '1', '2017-03-15 00:29:13', '2017-03-15 00:29:16');
INSERT INTO `menu` VALUES ('8', '5', 'Quyền hợp đồng', '1', 'agreement-right/index', 'book', '1', '1', '3', '2017-03-15 23:29:55', '2017-03-15 23:29:57');
INSERT INTO `menu` VALUES ('9', '0', 'Đối tượng, chủ thể', '1', 'party/index', 'user-secret ', '1', '1', null, '2017-03-15 23:46:17', '2017-03-15 23:46:19');
INSERT INTO `menu` VALUES ('10', '9', 'Loại đối tượng', '1', 'party-type/index', 'address-card', '1', '1', '1', '2017-03-15 23:47:13', '2017-03-15 23:47:15');
INSERT INTO `menu` VALUES ('11', '9', 'Đối tượng', '1', 'party/index', 'user-plus', '1', '1', '2', '2017-03-15 23:47:51', '2017-03-15 23:47:54');
INSERT INTO `menu` VALUES ('12', '0', 'Quản lý đề thi, câu hỏi', '1', 'quiz/index', 'graduation-cap', '1', '1', null, '2017-03-22 23:41:15', '2017-03-22 23:41:18');
INSERT INTO `menu` VALUES ('13', '12', 'Môn học', '1', 'subject/index', 'id-card', '1', '1', '1', '2017-03-22 23:42:06', '2017-03-22 23:42:09');
INSERT INTO `menu` VALUES ('14', '12', 'Chuyên đề môn học', '1', 'topic/index', 'ravelry ', '1', '1', '2', '2017-03-22 23:42:47', '2017-03-22 23:42:50');
INSERT INTO `menu` VALUES ('15', '12', 'Quản lý câu hỏi', '1', 'question/index', 'telegram', '1', '0', '3', '2017-03-22 23:43:44', '2017-03-22 23:43:47');
INSERT INTO `menu` VALUES ('16', '12', 'Loại đề thi', '1', 'quiz-type/index', 'podcast', '1', '1', '4', '2017-03-22 23:44:25', '2017-03-22 23:44:27');
INSERT INTO `menu` VALUES ('17', '12', 'Quản lý đề thi', '1', 'quiz/index', 'newspaper-o', '1', '1', '5', '2017-03-22 23:45:19', '2017-03-22 23:45:23');
INSERT INTO `menu` VALUES ('18', '0', 'Quản lý học sinh, giáo viên', '1', 'student/index', 'users', '1', '1', null, '2017-03-23 00:24:49', '2017-03-23 00:24:51');
INSERT INTO `menu` VALUES ('19', '18', 'Quản lý giáo viên', '1', 'teacher/index', 'tree', '1', '1', '1', '2017-03-23 00:25:27', '2017-03-23 00:25:28');
INSERT INTO `menu` VALUES ('20', '18', 'Quản lý học sinh', '1', 'student/index', 'universal-access', '1', '1', '2', '2017-03-23 00:26:02', '2017-03-23 00:26:04');
INSERT INTO `menu` VALUES ('21', '0', 'Quản lý gói cước', '1', 'package/index', 'space-shuttle ', '1', '1', null, '2017-03-23 00:51:05', '2017-03-23 00:51:07');
INSERT INTO `menu` VALUES ('22', '0', 'Feedback người dùng', '1', 'feedback/index', 'ravelry', '1', '1', null, null, null);
INSERT INTO `menu` VALUES ('23', '0', 'Giới thiệu', '2', 'site/intro', null, '1', '1', '1', '2017-03-29 00:07:15', '2017-03-29 00:07:17');
INSERT INTO `menu` VALUES ('24', '0', 'Khóa học', '2', 'course/list-course', null, '1', '1', '2', '2017-03-29 00:08:27', '2017-03-29 00:08:29');
INSERT INTO `menu` VALUES ('25', '0', 'Giáo viên', '2', 'teacher/index', null, '1', '1', '3', '2017-03-29 00:09:16', '2017-03-29 00:09:18');
INSERT INTO `menu` VALUES ('26', '0', 'Luyện thi', '2', 'quiz/list-contest', null, '1', '1', '4', '2017-03-29 00:10:00', '2017-03-29 00:10:02');
INSERT INTO `menu` VALUES ('27', '0', 'Hỏi đáp', '2', 'forum/index', null, '1', '1', '6', '2017-03-29 00:10:31', '2017-03-29 00:10:33');
INSERT INTO `menu` VALUES ('28', '0', 'Thách đấu', '2', 'competiton/index', null, '1', '0', '5', '2017-03-29 00:16:43', '2017-03-29 00:16:45');
INSERT INTO `menu` VALUES ('29', '0', 'Quản lý khóa học', '1', 'course/index', 'graduation-cap', '1', '1', null, '2017-04-04 22:55:04', '2017-04-04 22:55:06');
INSERT INTO `menu` VALUES ('30', '0', 'Báo cáo, thống kê', '1', 'report/index', 'tree', '1', '1', null, '2017-04-04 22:55:38', '2017-04-04 22:55:40');
INSERT INTO `menu` VALUES ('31', '29', 'Danh sách khóa học', '1', 'course/index', 'book', '1', '1', '1', '2017-04-04 23:19:38', '2017-04-04 23:19:39');
INSERT INTO `menu` VALUES ('32', '29', 'Quản lý video buổi học', '1', 'course/index', 'book', '1', '1', '2', '2017-04-04 23:20:56', '2017-04-04 23:20:57');
INSERT INTO `menu` VALUES ('33', '30', 'Thống kê truy cập', '1', 'report/index', 'book', '1', '1', '1', '2017-04-04 23:21:48', '2017-04-04 23:21:49');
INSERT INTO `menu` VALUES ('34', '30', 'Thống kê tổng hợp', '1', 'report/index', 'book', '1', '1', '2', '2017-04-04 23:23:25', '2017-04-04 23:23:27');
INSERT INTO `menu` VALUES ('35', '30', 'Báo cáo đối soát', '1', 'report/index', 'book', '1', '1', '3', '2017-04-04 23:23:51', '2017-04-04 23:23:53');
INSERT INTO `menu` VALUES ('36', '0', 'Quản lý khóa học', '3', 'course/index', 'book', '1', '1', '1', '2017-05-03 07:29:18', '2017-05-03 07:29:20');

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `party_id` int(11) NOT NULL AUTO_INCREMENT,
  `party_type_id` int(11) NOT NULL,
  `party_name` varchar(255) NOT NULL,
  `party_rep_title` varchar(255) DEFAULT NULL COMMENT 'nguoi dai dien',
  `party_address` varchar(255) DEFAULT NULL,
  `party_tax_code` varchar(255) DEFAULT NULL,
  `party_phone` varchar(255) DEFAULT NULL,
  `party_created_time` datetime DEFAULT NULL,
  `party_updated_time` datetime DEFAULT NULL,
  `party_created_by` int(11) DEFAULT '0',
  `party_updated_by` int(11) DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party
-- ----------------------------
INSERT INTO `party` VALUES ('1', '2', 'Hệ thống Study.EDU', 'TVB', 'Hà Nội', '111111111', '+84909929229', '2017-03-16 00:42:26', '2017-03-16 00:42:29', '0', '0');
INSERT INTO `party` VALUES ('2', '1', 'Dr. Miles Ritchie Sr.', 'Green Schmidt', '37951 Hank Summit Apt. 862\nKreigerhaven, WI 33322-9734', '1959175(9)', '807.747.7478', '1984-01-24 11:04:41', '2006-04-22 04:00:33', '0', '0');
INSERT INTO `party` VALUES ('3', '1', 'Prof. Elmore Tillman IV', 'Justyn Von', '1227 Ondricka Knolls\nWinonaton, VT 05395', '202083621(9)', '621.505.1303 x70975', '1999-01-07 20:20:04', '1997-12-21 12:09:35', '0', '0');
INSERT INTO `party` VALUES ('4', '1', 'Prof. Gianni Anderson I', 'Mrs. Karianne Ferry', '11407 Lexus Path Apt. 039\nLake Colt, OH 53460-6615', '159303(9)', '+1-510-690-2425', '1999-03-24 17:49:48', '2007-04-09 01:19:57', '0', '0');
INSERT INTO `party` VALUES ('5', '1', 'Isabel Moore', 'Burnice Wolf', '28343 Edward Union\nLuettgenmouth, OR 13234-1894', '2342(9)', '+1-861-416-8934', '1995-01-08 10:30:28', '1975-08-17 02:44:03', '0', '0');
INSERT INTO `party` VALUES ('6', '1', 'Roger Lynch', 'Lisette Von', '25134 Gutkowski Mission Suite 751\nPort Joaquinside, NC 96856-1406', '7987895(9)', '+1.915.386.6502', '2004-12-22 23:57:42', '1999-02-22 03:21:00', '0', '0');
INSERT INTO `party` VALUES ('7', '1', 'Ceasar Yundt', 'Walker Wilderman', '234 Runte Trail\nMorissetteburgh, AR 60551-3789', '1(9)', '+12728329370', '1989-04-27 21:48:21', '1991-11-14 05:25:13', '0', '0');
INSERT INTO `party` VALUES ('8', '1', 'Pierre Schmeler', 'Markus Reynolds', '848 Selina Keys Apt. 431\nPort Arthur, PA 25464', '50259911(9)', '(852) 816-8527 x096', '1988-01-31 15:05:56', '1974-06-28 23:02:48', '0', '0');
INSERT INTO `party` VALUES ('9', '1', 'Dr. Jarret Krajcik I', 'Dr. Eldridge Dickens', '7149 White Centers Suite 286\nLake Carytown, NV 49379', '165967(9)', '390.851.8184', '1984-02-22 13:49:15', '2007-03-28 11:24:59', '0', '0');
INSERT INTO `party` VALUES ('10', '1', 'Danny Windler III', 'Virginie Lang', '259 Kelley Trace\nSouth Daisyhaven, MI 94981', '986(9)', '+1-776-943-9701', '1998-04-07 03:21:38', '1980-03-15 02:52:07', '0', '0');
INSERT INTO `party` VALUES ('11', '1', 'Rocio Kiehn DVM', 'Maximus Cartwright III', '8658 McGlynn Ports\nWest Micah, MN 26825-8973', '96114(9)', '225.757.0973 x414', '2011-12-24 15:10:23', '1982-12-14 01:25:31', '0', '0');

-- ----------------------------
-- Table structure for party_type
-- ----------------------------
DROP TABLE IF EXISTS `party_type`;
CREATE TABLE `party_type` (
  `party_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `party_type_name` varchar(255) NOT NULL,
  `party_type_description` varchar(255) DEFAULT NULL,
  `party_type_created_time` datetime DEFAULT NULL,
  `party_type_updated_time` datetime DEFAULT NULL,
  `party_type_created_by` int(11) DEFAULT NULL,
  `party_type_updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`party_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_type
-- ----------------------------
INSERT INTO `party_type` VALUES ('1', 'Đơn vị cung cấp ND', 'Đơn vị cung cấp ND', '2017-03-16 00:05:22', '2017-03-16 00:05:22', '1', '1');
INSERT INTO `party_type` VALUES ('2', 'Đơn vị phân phối ND', 'Đơn vị phân phối ND', '2017-03-16 00:05:48', '2017-03-16 00:05:48', '1', '1');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(700) NOT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active',
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) NOT NULL,
  `solution` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'Aut et corporis corrupti eveniet exercitationem excepturi eum temporibus enim voluptas laborum sequi minima voluptas cupiditate autem pariatur ea blanditiis. ?', '1', '3', '32', '1', 'Sint odit officiis quis cupiditate rerum quisquam voluptatibus facilis est et accusantium aspernatur voluptatibus expedita inventore nulla earum laboriosam repudiandae quo corporis et modi aliquam sapiente voluptatibus nemo dignissimos et quia recusandae magni ex reiciendis eum quam autem maiores dolore tempore expedita.');
INSERT INTO `question` VALUES ('2', 'Repellat eos velit animi nesciunt sed dolorem et maxime ipsa in incidunt consectetur quia sed deleniti modi et quo quia ipsa culpa. ?', '1', '3', '32', '1', 'Ad sit quod autem nulla molestias perferendis ut excepturi quod perspiciatis tenetur repellat non occaecati voluptatem incidunt natus voluptatem tenetur tempora ut hic et vero illum ea ut facilis et velit corrupti consectetur iusto id.');
INSERT INTO `question` VALUES ('3', 'Commodi iusto itaque aliquid earum aspernatur quasi reiciendis libero porro non quo velit quas beatae quidem. ?', '1', '3', '32', '1', 'Sint et accusantium quis voluptas et harum molestiae et dolorem aspernatur quia magni aut exercitationem sit quam ratione incidunt saepe illo illo non id alias iure rerum expedita tempora debitis nemo vero aut impedit provident perspiciatis consequatur ut atque autem accusamus.');
INSERT INTO `question` VALUES ('4', 'Ipsum in vel voluptas optio eum temporibus in architecto fugiat magnam voluptas occaecati veniam ut aut quia animi dolores fugit quisquam autem. ?', '1', '3', '32', '1', 'Natus repudiandae cumque ut possimus excepturi laborum voluptatibus quia voluptatem iure quo porro dolore et ea ullam recusandae libero esse debitis.');
INSERT INTO `question` VALUES ('5', 'Est aut ad omnis ullam quae odit laborum et facere quis doloribus expedita eum. ?', '1', '3', '32', '1', 'Voluptatem eligendi ea ab aut maxime sed nostrum ratione debitis eos eum nihil veniam est commodi voluptatem eius exercitationem asperiores cumque consequatur aut laudantium omnis a.');
INSERT INTO `question` VALUES ('6', 'Quisquam molestiae voluptates temporibus quo veritatis aperiam placeat sed vel fuga porro dolorum velit nesciunt et qui. ?', '1', '3', '32', '1', 'Vel aut molestiae at aut ex explicabo vel enim dolorem nobis modi qui dolores aut laudantium omnis aliquid ullam assumenda qui deserunt necessitatibus sequi.');
INSERT INTO `question` VALUES ('7', 'Culpa architecto dolor nulla porro et voluptas totam consequuntur et deleniti id repudiandae quam omnis voluptates assumenda. ?', '1', '3', '32', '1', 'Esse eum eligendi nobis ullam facere occaecati amet dignissimos iste ratione perspiciatis quia est et delectus ullam ut aut magnam aut nam excepturi corrupti vel eius velit vitae ullam molestias occaecati eum quo rem consequuntur ex sunt et deleniti dolore nostrum.');
INSERT INTO `question` VALUES ('8', 'Et iusto omnis corporis illo quo sit et ipsum temporibus fugit mollitia ipsum consectetur perspiciatis suscipit ad a neque ea. ?', '1', '3', '32', '1', 'Qui numquam eveniet odio omnis magnam error fuga sint amet aspernatur dolorem aut assumenda dolores et esse ratione est quisquam cupiditate explicabo molestias veniam doloremque fuga totam perspiciatis sit rerum.');
INSERT INTO `question` VALUES ('9', 'Repellendus odio veritatis in enim in ut consequatur animi in ea. ?', '1', '3', '32', '1', 'Molestiae ducimus qui assumenda iure non sed necessitatibus eos aspernatur hic nihil possimus debitis dolor illo in ratione et beatae et sint et delectus labore ut architecto quasi aliquid exercitationem qui quod eos sed aspernatur.');
INSERT INTO `question` VALUES ('10', 'Vel dolor molestias ipsam minus adipisci veritatis non sed distinctio illo. ?', '1', '3', '32', '1', 'Libero molestiae nam ut voluptatibus recusandae inventore cumque quod enim ut a deserunt suscipit sit eos tempore neque incidunt nulla quos iusto repellendus earum sed vel eum sequi ea soluta ea beatae est ea pariatur.');
INSERT INTO `question` VALUES ('11', 'Laborum earum ipsam quia illo vel aliquid modi aut officia inventore pariatur cumque est rem. ?', '1', '2', '2', '2', 'Tempore facere recusandae et optio qui assumenda molestiae ex et suscipit et omnis excepturi non quod aspernatur ut qui vitae facere nihil.');
INSERT INTO `question` VALUES ('12', 'Voluptas accusamus animi dolore iusto eum suscipit ut officia in omnis tempore eum illum facere sed eaque asperiores ut quia. ?', '1', '2', '2', '2', 'Architecto id aut et rem numquam consequuntur est consequuntur corrupti eum animi ducimus sint eaque vero vitae doloribus iste omnis officia quo at rerum dolor sint quod qui sunt laborum qui magni aut accusantium eos.');
INSERT INTO `question` VALUES ('13', 'Est quasi est cupiditate saepe est reprehenderit nemo minus sed dolor. ?', '1', '2', '2', '2', 'Id nemo enim placeat temporibus quia velit labore et neque nulla nobis animi delectus beatae rerum nisi odit impedit ut dicta et cupiditate dolorum ratione qui quae laboriosam aut saepe quo aut vel dolore quos voluptatem expedita est ea mollitia non.');
INSERT INTO `question` VALUES ('14', 'Deleniti inventore omnis voluptatum veniam excepturi asperiores eius veritatis nulla nobis facere eos ullam autem unde. ?', '1', '2', '2', '2', 'Et accusamus magnam dolorem eveniet sed non quis veniam aut esse id eos id magni labore sit ratione qui necessitatibus enim facere illum itaque explicabo illum praesentium impedit temporibus esse non quo possimus blanditiis suscipit aut commodi officia esse.');
INSERT INTO `question` VALUES ('15', 'Delectus officia iusto perferendis possimus consequatur dolores sed est velit sed ut qui est voluptatibus et vel. ?', '1', '2', '2', '2', 'Rerum et eum ipsum est impedit debitis ut veniam recusandae qui repellendus id dicta debitis sit velit aut omnis nisi rem tenetur officiis possimus deleniti occaecati aut aperiam odit ut praesentium aliquam.');
INSERT INTO `question` VALUES ('16', 'Amet aut eligendi officiis itaque earum earum ea nesciunt sit non odio sed esse quis ipsum rem non. ?', '1', '2', '2', '2', 'Aut ipsam at omnis accusantium similique quia non illum maiores assumenda ea ea est aliquam quis cupiditate autem voluptates officiis labore est est quo itaque aspernatur ducimus quo.');
INSERT INTO `question` VALUES ('17', 'Iusto voluptas quo qui aut atque deleniti debitis repellendus a reiciendis eos nihil sunt nihil eaque fuga nam id nobis. ?', '1', '2', '2', '2', 'Qui incidunt rerum rerum aut sit explicabo facilis optio sint quidem non laudantium qui consequatur soluta quia sint sequi sint et ut quia quam labore ex voluptatem maiores.');
INSERT INTO `question` VALUES ('18', 'Sint et quia dolor veniam enim qui ut libero aspernatur qui omnis beatae maxime dignissimos nihil autem aliquid. ?', '1', '2', '2', '2', 'Animi saepe consequatur magni quasi non libero id est reiciendis eum id in et quidem dolores et nihil explicabo unde temporibus fuga quibusdam quia ad similique tenetur dicta enim est repellendus dolore distinctio ut rerum quaerat in at accusamus id voluptatem.');
INSERT INTO `question` VALUES ('19', 'Fugiat est non nisi quia dolor est possimus totam nemo ut reiciendis rerum dicta laboriosam voluptatem. ?', '1', '2', '2', '2', 'Modi quaerat rem est assumenda aut deleniti consequuntur magnam corporis quis quasi eos in qui distinctio sunt laboriosam quis doloremque.');
INSERT INTO `question` VALUES ('20', 'Ad porro quas quasi fugiat vel reprehenderit est voluptatem illo amet et sed tempore modi quia ea dolores rerum officia accusamus quia et. ?', '1', '2', '2', '2', 'Ut laudantium voluptas voluptas aliquid iste eius ut et officia ullam rerum porro autem voluptatem dolores nobis quidem repellendus ut est hic sed nesciunt accusamus quae voluptatem corrupti voluptas et quidem laudantium molestiae aut vitae quia placeat et aut eos ut cupiditate omnis.');
INSERT INTO `question` VALUES ('21', 'Aut quis hic aut sit et explicabo quasi sapiente magni et magni non. ?', '1', '2', '2', '2', 'Quis praesentium vero sit similique suscipit error dolores ipsam amet ut nulla eum rerum cupiditate architecto ipsam ut assumenda quod explicabo aut quam voluptas corporis eos itaque veritatis nam quis adipisci minus qui et quos sint dolorum quo dolores rerum possimus illum.');
INSERT INTO `question` VALUES ('22', 'Nulla quidem illo nihil quisquam exercitationem nostrum molestias consequatur necessitatibus aut exercitationem itaque ea consequuntur blanditiis et. ?', '1', '2', '2', '2', 'Aliquid sapiente quia quis quae quidem saepe vitae dolor dolorem atque est ipsam quis et ipsa dolores aliquam voluptatibus natus sint et saepe enim ex laboriosam molestiae mollitia a facilis asperiores sed reiciendis eum quia laborum qui quis.');
INSERT INTO `question` VALUES ('23', 'Nam enim ipsa aut ea voluptatibus aut a est ut iure rerum molestiae sunt ea dolores quidem nostrum ipsa consequatur nemo harum voluptatem corporis. ?', '1', '2', '2', '2', 'Aut itaque quam maxime vero earum labore quaerat est autem atque veritatis eum nihil quibusdam hic animi ut deleniti magni culpa eius quod atque possimus eaque repellendus odit ab deleniti explicabo sint et quisquam libero autem voluptatem.');
INSERT INTO `question` VALUES ('24', 'Error rerum architecto aperiam quis dolorem expedita suscipit qui dolorem nemo consequuntur omnis voluptates sed provident corrupti non. ?', '1', '2', '2', '2', 'Ducimus eos enim ipsum ea veniam esse ut dolorum magni et sunt iure dolor a nesciunt accusamus fuga est rerum vitae qui iusto velit nemo voluptatibus rem.');
INSERT INTO `question` VALUES ('25', 'Sed iusto odio eos deserunt enim vel et est qui eaque quidem quisquam. ?', '1', '2', '2', '2', 'Cupiditate ex ipsam accusantium voluptas iure rerum veniam quasi ad dignissimos consequatur ab tempora impedit excepturi deserunt nesciunt perferendis est dolores et accusantium sint sit et ad nisi iste aperiam atque atque ut neque quia eveniet consequatur.');
INSERT INTO `question` VALUES ('26', 'Molestias veritatis quasi quia voluptatem ut itaque nemo at culpa eius ipsum fuga hic est illum totam qui numquam ullam. ?', '1', '2', '2', '2', 'Rem nam quasi molestiae et quia nostrum in numquam aut soluta cupiditate hic et unde et voluptatem voluptatem aut perspiciatis harum sed illum et ex sit culpa dolor.');
INSERT INTO `question` VALUES ('27', 'Cumque quos in soluta et error quasi voluptates omnis neque non sit dolorem dolorem ut. ?', '1', '2', '2', '2', 'Nam quis neque sint ipsam veniam soluta accusantium molestiae odio eligendi quisquam aut cumque qui reprehenderit quis nihil beatae distinctio suscipit voluptatum placeat quo.');
INSERT INTO `question` VALUES ('28', 'Sequi saepe natus perferendis ratione qui et neque a suscipit non ipsum sint ut. ?', '1', '2', '2', '2', 'Vitae alias numquam sit quia qui minima ut exercitationem eaque ut quis quam possimus quis velit non nisi quam enim.');
INSERT INTO `question` VALUES ('29', 'Voluptates est tempore rerum doloremque possimus dicta nemo sint perspiciatis corrupti laboriosam sed iste quia praesentium sit deserunt laborum. ?', '1', '2', '2', '2', 'Quasi a quia sit non sequi quae facere est vel nulla similique qui minus incidunt in quia ut ipsa voluptatem sed repellat tempore.');
INSERT INTO `question` VALUES ('30', 'Explicabo nobis tenetur ut est voluptatem corporis ea natus labore reprehenderit. ?', '1', '2', '2', '2', 'Officiis voluptatibus ducimus eum voluptatem cumque aliquam recusandae minus maiores repellendus omnis et excepturi officiis beatae exercitationem non aut in corporis quam autem itaque illo culpa sunt et officia voluptatem alias necessitatibus iure dolores ea asperiores laboriosam.');
INSERT INTO `question` VALUES ('31', 'Eius placeat placeat et facilis ab molestiae consequatur ipsum tenetur est quia dolor architecto possimus voluptatem. ?', '1', '1', '19', '3', 'Quos et doloribus aut voluptatum laudantium enim et tempora nesciunt error amet ut dolore at laudantium aut quam sapiente tenetur corporis.');
INSERT INTO `question` VALUES ('32', 'Dolores nobis cumque doloremque minus similique aut rem sint est dolores facere nostrum quia ea eius numquam. ?', '1', '1', '19', '3', 'Rem ratione architecto sint consequatur nisi itaque consequatur iste qui vitae aperiam modi voluptatem reiciendis minima in unde sapiente.');
INSERT INTO `question` VALUES ('33', 'Eveniet aut culpa in ea est porro ea voluptatem non aperiam similique laboriosam omnis quo nisi fugiat fugit odit id iure dolorem. ?', '1', '1', '19', '3', 'Vitae officia et est molestiae laborum eos quis consequuntur non cum omnis cum molestiae aspernatur enim qui assumenda reiciendis sapiente molestiae quibusdam illo.');
INSERT INTO `question` VALUES ('34', 'Officia officiis deserunt quia rem ducimus sit suscipit recusandae adipisci pariatur sunt dolor numquam et consectetur sequi nostrum sed est voluptatem. ?', '1', '1', '19', '3', 'Non neque qui qui natus saepe eum dolores dolor quo velit eum vel nam et earum dicta quia saepe iste amet ullam ipsum accusamus nihil delectus culpa ipsam ut aut nihil natus eum et accusamus modi expedita et eos beatae soluta quos.');
INSERT INTO `question` VALUES ('35', 'Ipsam repudiandae porro nemo ea ut inventore magnam qui sint unde. ?', '1', '1', '19', '3', 'Natus vel voluptas inventore nisi repellat culpa eveniet praesentium eos repellat rem hic ut quaerat eum ratione ab qui vel voluptatem qui reiciendis voluptatum illo quod deserunt harum quo et.');
INSERT INTO `question` VALUES ('36', 'Laboriosam non repellat aliquam neque laboriosam qui ipsa molestiae qui qui necessitatibus inventore unde totam non corporis nisi possimus nesciunt optio magni quis. ?', '1', '1', '19', '3', 'Necessitatibus voluptas ad quaerat aut autem dolor aperiam doloribus accusamus modi vitae itaque enim qui sint quisquam et consequatur aut nemo eaque minima et aut tenetur quia qui similique consequatur officia sequi esse illo dolorum asperiores ut adipisci qui nisi est sit voluptate.');
INSERT INTO `question` VALUES ('37', 'Omnis nobis voluptas aperiam adipisci qui et voluptas aut porro ex in sit sunt et omnis aut eum quia dignissimos. ?', '1', '1', '19', '3', 'Rem temporibus alias in quisquam non sit quis ut illo praesentium blanditiis consequuntur impedit dolor eos id hic aut ducimus modi modi quis cupiditate ea.');
INSERT INTO `question` VALUES ('38', 'Hic voluptas vel et voluptas et magnam iste magnam quas qui dolor est et. ?', '1', '1', '19', '3', 'Est quae occaecati qui aliquam dignissimos at dolor sed culpa qui enim odit voluptas cum officiis animi deleniti velit quis id accusamus quasi minima corrupti nam adipisci expedita consequatur delectus sit.');
INSERT INTO `question` VALUES ('39', 'Corporis est at et delectus sed dolorum exercitationem eos dolore commodi nulla ipsam ab qui quia. ?', '1', '1', '19', '3', 'Repellendus nesciunt magni quod dolores et qui consequatur et sunt non aliquid ut quia sit nulla occaecati quaerat autem ipsum ut quidem eum voluptatem aspernatur qui molestias vel quod autem et cupiditate.');
INSERT INTO `question` VALUES ('40', 'Voluptas ut non sed perferendis dolorem sit placeat doloribus nemo officia labore quibusdam id perferendis cum earum ab alias est enim sunt voluptas. ?', '1', '1', '19', '3', 'Et exercitationem blanditiis ut dolores alias reiciendis praesentium nemo voluptas ipsa error in voluptatem eius dolor voluptas quasi repellat voluptatem blanditiis sint et in sed numquam ducimus autem aut nihil officiis officiis autem aliquid dignissimos perferendis aut dolor libero hic veritatis aspernatur.');
INSERT INTO `question` VALUES ('41', 'Explicabo qui excepturi nobis consequatur qui ex magni unde impedit est facilis veritatis facilis reiciendis dolorem quis sapiente officia. ?', '1', '7', '40', '4', 'Placeat ab inventore eum voluptas esse dolores voluptas sunt necessitatibus ut quia sunt occaecati voluptatem veritatis beatae expedita aliquam quam voluptas fugiat repellat expedita repudiandae dolorem cum qui repudiandae assumenda dolore veniam iusto adipisci qui nam autem.');
INSERT INTO `question` VALUES ('42', 'Ea excepturi iusto dolor et est pariatur cupiditate repellendus suscipit voluptatem id quia accusantium animi voluptatibus sed quisquam. ?', '1', '7', '40', '4', 'Ipsum quia iste expedita at dolor vero aut velit omnis cum debitis non ducimus rerum officia modi voluptatibus eum qui laudantium odit dolorem earum pariatur et culpa ea.');
INSERT INTO `question` VALUES ('43', 'Ipsa neque quis eius sequi nulla corrupti voluptatibus totam id assumenda aut repellendus corrupti velit id suscipit autem distinctio sint nostrum. ?', '1', '7', '40', '4', 'Sunt consequuntur temporibus delectus voluptates repellendus doloremque aut dolorem autem numquam ex qui quae dicta consequatur deleniti dolorem voluptatem ut quas tempore cumque tempore expedita voluptates sequi vel maiores incidunt sint ipsam aut aspernatur ex laborum repellat est dolor placeat.');
INSERT INTO `question` VALUES ('44', 'Sed ab ratione eos voluptatibus ut cupiditate soluta in atque maiores doloremque rerum cupiditate tenetur iusto ipsum ex perferendis sed distinctio quibusdam et nesciunt. ?', '1', '7', '40', '4', 'Numquam est quisquam est molestiae eum voluptatem ut qui quod explicabo placeat odit ex sit consequatur tempora ipsa quibusdam ut ipsum modi non earum at voluptatibus vitae quasi sint quod ut dolorum explicabo.');
INSERT INTO `question` VALUES ('45', 'Recusandae sed aut unde saepe vel maiores non dicta iste libero. ?', '1', '7', '40', '4', 'Ad enim atque dolore voluptate autem vitae sint quae qui dolor sapiente sint omnis culpa voluptas placeat maxime itaque sint architecto velit quisquam velit maxime neque veniam iusto ipsa explicabo quis.');
INSERT INTO `question` VALUES ('46', 'Rerum officiis sit eos delectus et est consequatur autem suscipit dolore eligendi earum animi recusandae in ab voluptas aliquam laudantium voluptas amet. ?', '1', '7', '40', '4', 'Qui voluptas ut iure dolore rerum et aut dolores qui explicabo delectus ratione commodi in delectus voluptatem perspiciatis voluptatem quis voluptatem et minima et voluptatem non sunt ducimus voluptas voluptate ab enim omnis omnis ut est ut.');
INSERT INTO `question` VALUES ('47', 'Qui ut facere perspiciatis in ullam quia iusto id ea quis perspiciatis culpa. ?', '1', '7', '40', '4', 'Quasi vero nihil est voluptas dolore deleniti labore est dolores vero unde et id autem qui vel dolore vero et est quia mollitia adipisci eum cumque amet non dolor qui accusamus ratione quis esse.');
INSERT INTO `question` VALUES ('48', 'Velit aut ut autem qui non fugiat autem ut rerum reiciendis. ?', '1', '7', '40', '4', 'Et ipsum ea dolores dolor possimus ab asperiores quo laborum animi id reiciendis consectetur non rerum sunt velit atque dolorem.');
INSERT INTO `question` VALUES ('49', 'Libero pariatur voluptas cumque sequi minima qui neque recusandae sit provident iure nostrum quidem eveniet praesentium quia tempora dolorem. ?', '1', '7', '40', '4', 'Quos minima incidunt odit autem earum accusamus architecto sit incidunt in velit natus suscipit in voluptatibus odio praesentium doloremque nulla voluptatum adipisci doloremque.');
INSERT INTO `question` VALUES ('50', 'Aliquid minima est aut sunt aliquid ipsum et autem maxime velit quis ut voluptates ullam eos. ?', '1', '7', '40', '4', 'Alias magni enim sit aut omnis nihil ratione est impedit rerum est quam ab voluptas cum esse officia ad est quaerat optio et soluta deserunt alias deleniti id repudiandae a impedit debitis tempora consequatur mollitia exercitationem non sit.');
INSERT INTO `question` VALUES ('51', 'Unde minima quasi voluptatibus rerum nulla earum eum quod qui qui ullam sapiente incidunt architecto sunt libero a assumenda. ?', '1', '7', '40', '4', 'Dolorem iure rerum et quo qui blanditiis optio illum ut qui eos exercitationem dignissimos et iusto ex magni hic eligendi.');
INSERT INTO `question` VALUES ('52', 'Voluptate voluptas est veritatis reiciendis distinctio aut beatae ut eligendi minima enim placeat aut eos sit dolore suscipit animi tempore. ?', '1', '7', '40', '4', 'Sapiente qui natus modi harum natus blanditiis velit consectetur occaecati voluptatum ipsa placeat autem qui impedit rerum itaque voluptas maxime porro qui consequatur cum laudantium veritatis temporibus voluptatum quis.');
INSERT INTO `question` VALUES ('53', 'Illum enim necessitatibus et eveniet sit quis inventore voluptates ut reprehenderit id totam at. ?', '1', '7', '40', '4', 'Sapiente praesentium blanditiis distinctio quia dolor provident culpa itaque et est sit consequuntur cupiditate dolorem distinctio mollitia et autem eum officiis quas at sed tenetur sed aspernatur voluptatem in exercitationem nisi.');
INSERT INTO `question` VALUES ('54', 'Soluta voluptatem molestiae rem autem dolor fugiat molestiae harum nihil quasi aliquid tenetur quas quis eum quis blanditiis perspiciatis doloremque blanditiis enim consequatur. ?', '1', '7', '40', '4', 'Deleniti assumenda at consequuntur distinctio sed sequi quis at impedit quis temporibus assumenda dolore voluptatum sunt velit velit et corrupti perferendis fuga neque possimus sapiente minima consequatur architecto neque enim odit excepturi recusandae voluptas omnis distinctio quia.');
INSERT INTO `question` VALUES ('55', 'Facilis quaerat ea asperiores adipisci dolores iure temporibus beatae a vero mollitia omnis qui animi sit rem consequatur quisquam omnis cumque. ?', '1', '7', '40', '4', 'Pariatur cum excepturi enim aut ratione eius molestiae voluptate aliquam similique vero eum qui est maxime aperiam suscipit doloremque consequatur qui expedita iusto aspernatur ipsum vitae placeat tempora nobis sint nostrum harum in est est fugit exercitationem.');
INSERT INTO `question` VALUES ('56', 'Tempore iusto accusamus odio magni sed explicabo illum dolores facilis excepturi sunt nihil voluptas. ?', '1', '7', '40', '4', 'Quam voluptate iure aut eos minima pariatur ratione delectus porro non est perferendis aut expedita repellendus est eius non natus est soluta qui impedit quasi ut provident eius temporibus qui qui blanditiis eos dolores odio in eos animi sunt et consequatur aut eaque.');
INSERT INTO `question` VALUES ('57', 'Culpa molestias a sint qui sint ab voluptatem et ut facilis consequatur soluta ut quidem voluptas illo rerum corrupti earum ad eveniet. ?', '1', '7', '40', '4', 'Accusantium aut cumque qui cumque voluptatem enim dolorem et ex illo reprehenderit aspernatur quas veritatis eum eum qui nobis consequatur maxime mollitia.');
INSERT INTO `question` VALUES ('58', 'Fugit iste sed tempore culpa et nihil cupiditate quae esse consequatur magni et sed consequatur dolores tempora tempore libero explicabo. ?', '1', '7', '40', '4', 'Molestias consequatur aut hic quidem veniam facilis expedita ut ipsum aperiam eos similique nisi illo accusamus maxime perferendis ea ut omnis quasi fugiat itaque temporibus eligendi recusandae voluptatibus aliquid et repellendus tenetur incidunt non vitae.');
INSERT INTO `question` VALUES ('59', 'Accusantium ut quisquam non veniam voluptates aut ab quia repellat recusandae tempora autem odio adipisci at quia laudantium minus fugiat et incidunt. ?', '1', '7', '40', '4', 'Eos consequatur veniam est aut consequatur eos voluptatibus consequatur aut nisi porro aliquid tempore iure error quia totam et quia eum.');
INSERT INTO `question` VALUES ('60', 'Similique tempore saepe eligendi nam praesentium impedit velit quod voluptatibus est blanditiis quia commodi voluptates fugit ducimus. ?', '1', '7', '40', '4', 'Consequatur ut sapiente nulla omnis rerum eius unde nihil quae a non omnis alias expedita porro id aliquam suscipit nihil perferendis eligendi rerum accusamus omnis.');
INSERT INTO `question` VALUES ('61', 'Nemo consequatur nisi sit necessitatibus maiores aut quos tempore corporis eius at id fuga est occaecati esse non at beatae explicabo. ?', '1', '6', '41', '5', 'Ut repudiandae corporis doloribus eveniet recusandae totam voluptatum beatae nam iusto rerum occaecati maxime quas provident repellendus voluptatem accusamus voluptates quis tempora et consequatur aut autem repudiandae nostrum est non cumque fuga et id ea ratione provident nam.');
INSERT INTO `question` VALUES ('62', 'Dolores unde reiciendis laborum maxime unde consequatur ea culpa porro est pariatur. ?', '1', '6', '41', '5', 'Non eveniet sed dolores est harum pariatur mollitia accusamus omnis adipisci qui aut inventore saepe sit debitis enim voluptas ipsa ut sit laborum doloremque sed non molestias quae omnis sed aut repellat rerum ipsam qui esse ratione et omnis doloribus debitis.');
INSERT INTO `question` VALUES ('63', 'Qui omnis error et quasi error deserunt ipsam ut eos ab ipsum provident. ?', '1', '6', '41', '5', 'Culpa facere aliquid vel nam non dolor sed illo quo officia fugiat sed dolorem neque enim placeat consequuntur qui inventore tempora nihil praesentium consequatur incidunt enim beatae debitis sit maxime sequi in nobis porro aut amet occaecati.');
INSERT INTO `question` VALUES ('64', 'Odit dignissimos optio dolorem odit quo dolorem sequi voluptate qui nulla non perferendis velit dolore consequuntur rerum et fugit eius et nisi corporis excepturi. ?', '1', '6', '41', '5', 'Et hic sint dolor ipsa aut odio possimus eius eveniet velit aut ea quos ea eius consequatur necessitatibus dolor natus qui tenetur quo voluptas sed blanditiis provident est.');
INSERT INTO `question` VALUES ('65', 'Quasi omnis quos necessitatibus ut iusto qui deleniti repellat asperiores illum itaque quos est id qui quia quo consequatur vel sunt itaque. ?', '1', '6', '41', '5', 'Odit tempore saepe eveniet consequatur qui est voluptates maxime est iste ea qui distinctio nihil deserunt rem ea architecto.');
INSERT INTO `question` VALUES ('66', 'Inventore sit sunt natus sunt in magni adipisci ipsam dolorem earum beatae id. ?', '1', '6', '41', '5', 'Blanditiis sequi laboriosam beatae eligendi ut perspiciatis expedita autem ut exercitationem aperiam aut sit quod similique voluptates similique autem sint nihil quod voluptates numquam aut facilis ut.');
INSERT INTO `question` VALUES ('67', 'Officia alias consequatur maiores rerum maxime sed dolores sunt dolorem distinctio dolorem quaerat consequuntur dolor et. ?', '1', '6', '41', '5', 'Qui temporibus accusantium ea autem sit repudiandae consequatur repellat incidunt architecto vitae asperiores iusto quasi facere beatae iure iure omnis omnis laboriosam ut delectus qui optio voluptates doloremque alias dolores inventore dolore itaque vel est est expedita debitis tempore voluptas.');
INSERT INTO `question` VALUES ('68', 'Nobis dicta porro quidem tempora quae maxime quae commodi quia facere hic numquam vel eius et excepturi eum itaque est enim dolores voluptatem. ?', '1', '6', '41', '5', 'Illo enim ut rem beatae architecto perferendis harum quo necessitatibus dignissimos aut eligendi sit molestiae deleniti laudantium at amet accusantium quia et alias velit iusto debitis ullam magni officia assumenda ipsam id eos impedit omnis et deleniti repellat corrupti.');
INSERT INTO `question` VALUES ('69', 'Molestias similique quasi ipsa corporis et a commodi asperiores perspiciatis quis minus. ?', '1', '6', '41', '5', 'Deserunt repudiandae id illum animi non quas vero velit ullam facere omnis officiis eaque sunt voluptas excepturi nemo sit eum numquam provident vero dolorem aut recusandae id ratione delectus ut quo est et quia itaque quidem qui quasi sed praesentium omnis.');
INSERT INTO `question` VALUES ('70', 'Sapiente sint repudiandae quaerat tempora maiores minus temporibus et odit maxime cumque cumque ut aliquid possimus. ?', '1', '6', '41', '5', 'Ad et sunt earum deleniti doloribus repudiandae repudiandae rem quibusdam voluptatum voluptates ut aut culpa cupiditate pariatur recusandae dolorem nihil ut.');
INSERT INTO `question` VALUES ('71', 'Eos totam non veritatis harum expedita odio sapiente eum architecto error voluptates. ?', '1', '6', '41', '5', 'Rem nostrum nam impedit repellat distinctio numquam repellat qui eveniet ut ea ut eos necessitatibus voluptatem neque voluptas ipsum dolor deleniti mollitia aut voluptas impedit aspernatur eum.');
INSERT INTO `question` VALUES ('72', 'Omnis qui in ipsa labore praesentium et maiores ipsa molestiae repudiandae officiis incidunt voluptatem eos deleniti nam est nemo deserunt pariatur ut. ?', '1', '6', '41', '5', 'Voluptate dicta consequatur omnis fugit explicabo aut odit est dignissimos ut rerum facilis explicabo autem et aut eligendi dignissimos voluptas voluptas sit natus ipsum dolores officiis tempora nobis nihil ut.');
INSERT INTO `question` VALUES ('73', 'Et nobis a sunt aut sint sint unde eaque autem qui ut dolorem velit laboriosam. ?', '1', '6', '41', '5', 'Ut illum qui exercitationem eveniet excepturi ex occaecati saepe quis veniam ut adipisci necessitatibus qui quia dolorum et expedita qui sit fuga.');
INSERT INTO `question` VALUES ('74', 'Natus aut sed non quia et eveniet est amet ad et ipsam consectetur qui ut laudantium. ?', '1', '6', '41', '5', 'Numquam dolores itaque explicabo eaque eos ut aut et illo expedita nisi perferendis qui aut similique deserunt adipisci recusandae libero amet veniam accusamus quibusdam illum deserunt quaerat est quo accusantium est minus eius magnam exercitationem.');
INSERT INTO `question` VALUES ('75', 'Minus impedit hic autem architecto inventore aut porro sint voluptas non accusamus aut architecto cumque deserunt pariatur. ?', '1', '6', '41', '5', 'Sapiente vel eaque vitae error minus earum possimus voluptatem asperiores accusantium tenetur occaecati sit provident consequatur inventore maiores quasi ducimus dignissimos numquam recusandae quae architecto minima reprehenderit.');
INSERT INTO `question` VALUES ('76', 'Sed optio vel deserunt ratione voluptatum assumenda ut aperiam debitis quam dicta repellat repellendus. ?', '1', '6', '41', '5', 'Iusto amet soluta quia quaerat iure sed porro error odit ipsa laudantium sed tempora explicabo aut velit ipsam suscipit enim adipisci numquam illo aut facilis accusamus veritatis ut neque dolorum aliquam voluptatem eius doloremque unde quae ratione.');
INSERT INTO `question` VALUES ('77', 'Perferendis magnam fuga officiis sed aut dolor quod natus harum exercitationem molestiae. ?', '1', '6', '41', '5', 'Ipsam consectetur nobis tempora delectus reiciendis est et sint at voluptate velit quia ipsum voluptates in reprehenderit voluptatibus non ex libero sunt ut.');
INSERT INTO `question` VALUES ('78', 'Et nobis blanditiis fugit ut saepe consequatur perspiciatis consectetur natus voluptatibus recusandae eius dolores. ?', '1', '6', '41', '5', 'Cupiditate accusamus et est explicabo porro facere necessitatibus id rerum voluptatibus ducimus consequatur assumenda dolorum eveniet qui modi ducimus voluptas qui officiis beatae quas rem modi porro sint magnam vero eos.');
INSERT INTO `question` VALUES ('79', 'Repellendus voluptatem provident est perferendis nihil aliquam et totam fugit quos rem ducimus quas aspernatur praesentium quasi dolorem sunt beatae sint cumque repellat. ?', '1', '6', '41', '5', 'Sit sint culpa ut tempore animi eum ut numquam sed culpa veritatis pariatur ea accusantium a odio eum hic ducimus quia voluptatibus voluptatem veritatis id laborum earum dolor adipisci nam deserunt accusantium id neque voluptatem illo adipisci.');
INSERT INTO `question` VALUES ('80', 'Nam dolor quia unde iusto autem sit occaecati assumenda odio ipsa harum nulla consequuntur. ?', '1', '6', '41', '5', 'Quod et ipsa quae omnis commodi et et facere saepe laborum voluptates voluptatem temporibus numquam rerum officiis provident similique rerum quae repudiandae ab alias molestias.');
INSERT INTO `question` VALUES ('81', 'Deleniti vel itaque quae autem aspernatur mollitia eius et laudantium maxime. ?', '1', '6', '41', '5', 'Nihil veniam qui placeat rem tenetur et vel illum minima aut reprehenderit et voluptas distinctio consequatur ipsam ut nesciunt neque debitis quia consequuntur nihil voluptates dolorum reiciendis quod quis et labore eum culpa et reiciendis.');
INSERT INTO `question` VALUES ('82', 'Quidem accusamus non placeat nulla qui temporibus quas adipisci iure architecto voluptatibus. ?', '1', '6', '41', '5', 'Architecto accusamus dignissimos ab itaque et minima dicta sit et nam distinctio natus optio et voluptate sit soluta quae officia qui sit aperiam qui dolores qui dolore sint voluptatem occaecati ab aut possimus nihil quaerat nemo omnis.');
INSERT INTO `question` VALUES ('83', 'Consequuntur aperiam ipsum sed aspernatur id fugit sit modi est eius rerum odit accusantium consequatur error. ?', '1', '6', '41', '5', 'Non sed voluptatem maiores eum aliquid ut rerum consequatur inventore eveniet nulla ut quis et repellendus praesentium eveniet architecto necessitatibus non dolor labore itaque officia fugit corporis alias quasi odit dolorum.');
INSERT INTO `question` VALUES ('84', 'Et quidem deleniti aut officiis velit ut velit sit enim omnis. ?', '1', '6', '41', '5', 'Impedit itaque qui non ex suscipit repudiandae autem repellendus sapiente ipsum est qui voluptas illum ducimus id et totam qui consectetur enim officiis eaque corrupti.');
INSERT INTO `question` VALUES ('85', 'Recusandae quia architecto alias assumenda officiis beatae voluptas voluptatem numquam veniam et ea distinctio sunt tempore voluptas. ?', '1', '6', '41', '5', 'Consequuntur harum nulla excepturi et repellendus provident voluptatum laboriosam reprehenderit rerum ut sit aut excepturi illum qui voluptatem est laboriosam incidunt voluptates qui quod atque.');
INSERT INTO `question` VALUES ('86', 'Molestiae dolorem enim rerum blanditiis magnam molestias consequatur dolores praesentium ea illo voluptates laudantium ducimus voluptas deserunt. ?', '1', '6', '41', '5', 'Quod id adipisci placeat ea enim possimus sit velit omnis aliquid molestiae maxime non laboriosam et rem accusantium impedit aliquid vel nulla eos quae rerum quis labore.');
INSERT INTO `question` VALUES ('87', 'Facere voluptas suscipit ab molestiae iusto sunt magni voluptatibus sint reiciendis quia minus at ad labore ad. ?', '1', '6', '41', '5', 'Repudiandae rem praesentium laudantium voluptatem rem qui voluptas est sed quia ut quo asperiores nemo qui doloribus odio et consequatur harum et exercitationem eum aliquid non aut ex laudantium voluptatum dolores quam ut dicta aliquid magni delectus maxime mollitia eum aut dignissimos.');
INSERT INTO `question` VALUES ('88', 'Modi voluptatem iste ipsa in sint nihil inventore earum quia natus non optio mollitia nihil sapiente illum eum. ?', '1', '6', '41', '5', 'Animi occaecati sint nihil perspiciatis voluptatibus nihil id non quos sequi dolorem magni aut repudiandae sed minus vitae ut nulla atque quis consequatur adipisci molestias accusantium delectus et iste dolorem nesciunt quaerat accusamus fugiat voluptas et quisquam quod.');
INSERT INTO `question` VALUES ('89', 'Adipisci voluptatibus neque sapiente accusantium asperiores vel aliquid est voluptas eos et veritatis labore ad sed. ?', '1', '6', '41', '5', 'Maiores doloribus quae quas veniam quidem et sunt saepe quis ullam ea ut aut vitae voluptates nesciunt inventore qui enim voluptas sint qui voluptatum et qui corrupti voluptate veritatis beatae iusto qui et minima rem dolor vero ipsam.');
INSERT INTO `question` VALUES ('90', 'Quia cumque ab nam commodi aut tenetur non non dolore sit commodi eos odit et voluptas eum saepe sequi excepturi aliquid repellendus quis sequi. ?', '1', '6', '41', '5', 'Ex quam et debitis ratione totam numquam sequi et porro alias doloribus earum dolorem eum quia at rerum non odit laudantium magnam facere nobis enim voluptas a perferendis dolor dolorem voluptatem quisquam cum qui natus itaque ut nemo et et animi.');
INSERT INTO `question` VALUES ('91', 'Optio labore rerum rerum quia eligendi consequuntur ut aliquid quae sunt iusto. ?', '1', '6', '41', '5', 'Doloremque totam vel enim consequuntur corporis ullam ipsam iusto voluptas earum voluptatum repellendus autem quibusdam nihil voluptate culpa distinctio molestias excepturi voluptas facere qui sed est sed sit nisi.');
INSERT INTO `question` VALUES ('92', 'Id id voluptatem distinctio est dolores consequuntur sint ut est commodi explicabo. ?', '1', '6', '41', '5', 'Ab aperiam harum occaecati sapiente pariatur est magnam occaecati et mollitia officiis velit eaque architecto est sunt esse molestias asperiores expedita omnis sequi temporibus dolorum vel delectus nesciunt sapiente est velit quis in nisi quia sed qui tenetur soluta quasi maiores.');
INSERT INTO `question` VALUES ('93', 'Deserunt sunt impedit dolor ullam rerum tenetur ipsam ratione eveniet nihil aperiam iste ut aspernatur doloremque blanditiis est sit quos. ?', '1', '6', '41', '5', 'Et ut hic ipsa incidunt dolores earum laboriosam nostrum ducimus natus deleniti omnis natus veniam quia iste aut tenetur sequi impedit corporis voluptas labore.');
INSERT INTO `question` VALUES ('94', 'Non quo consequatur soluta voluptas ducimus sed doloremque quaerat expedita voluptatem. ?', '1', '6', '41', '5', 'Rem expedita quia est recusandae est in deserunt exercitationem quos impedit et voluptatem velit ex autem quos iste repudiandae laboriosam tenetur et totam quam minus vero rem saepe accusamus repellendus fugiat consequatur corporis corporis architecto sapiente earum eaque rerum et nisi mollitia.');
INSERT INTO `question` VALUES ('95', 'Officiis rerum dolorum nemo voluptatem adipisci rerum illum amet aut laborum sit est reiciendis ut sit harum voluptate possimus cumque porro quidem nemo. ?', '1', '6', '41', '5', 'Sint pariatur esse eos placeat natus rerum error aspernatur in maiores neque officia qui odit iste illo dolor error omnis.');
INSERT INTO `question` VALUES ('96', 'Architecto necessitatibus voluptatum ipsum consectetur rem tempore ratione numquam delectus nostrum iusto accusantium dicta cupiditate. ?', '1', '6', '41', '5', 'Ducimus ullam ut velit enim ratione libero voluptas a eos odit voluptas ut odio qui quas quia maiores qui molestiae ea rerum.');
INSERT INTO `question` VALUES ('97', 'Occaecati quo architecto sunt harum sit dolor iure saepe praesentium est voluptatem sint voluptatem non dolor rerum praesentium et magni quis et. ?', '1', '6', '41', '5', 'Repudiandae labore officia possimus sapiente nulla in ad omnis dolor voluptas maiores voluptatem deserunt soluta quisquam quae voluptas excepturi aut sint voluptatem nostrum ut voluptas a et velit autem quia rerum est magnam laboriosam labore consequatur omnis expedita magni quo et.');
INSERT INTO `question` VALUES ('98', 'Facere earum corporis unde omnis dicta ut quo officia expedita impedit eaque ab necessitatibus saepe ut dolor. ?', '1', '6', '41', '5', 'Cum dolor odio porro suscipit molestiae consequatur rerum provident voluptatem facilis sit nihil quam eum sed deleniti nulla voluptatum id minus voluptatum culpa explicabo aspernatur qui.');
INSERT INTO `question` VALUES ('99', 'Sed nesciunt iusto earum iure et possimus eligendi blanditiis pariatur voluptatem. ?', '1', '6', '41', '5', 'Perspiciatis dolores est tempora delectus praesentium at magnam itaque amet ullam tempora corporis qui in cum distinctio laborum nihil labore quo laudantium cumque harum dolorem.');
INSERT INTO `question` VALUES ('100', 'Neque eius aut consequatur odit sit rem enim nam et recusandae. ?', '1', '6', '41', '5', 'Sunt dolores voluptas numquam ullam est expedita tempore corrupti pariatur tenetur neque sunt ad modi autem repellendus rerum enim ut optio temporibus est velit provident et odit molestiae dolor impedit voluptas deleniti at explicabo quia voluptatibus rerum dolores qui culpa.');
INSERT INTO `question` VALUES ('101', 'Quo incidunt consequatur non quis fuga similique quam expedita ab aut quo soluta delectus minima fugiat. ?', '1', '7', '40', '6', 'Quo voluptas ipsam impedit qui tenetur est nostrum debitis non quia nesciunt nemo asperiores omnis aut error ipsa omnis eos voluptate.');
INSERT INTO `question` VALUES ('102', 'Nisi et itaque voluptatum voluptas voluptatem et debitis eos repellat at architecto quia maxime nemo itaque provident enim est ullam ipsa ut. ?', '1', '7', '40', '6', 'Impedit corporis dicta et nemo ea aut quidem est nesciunt sed sit magni a error alias nobis qui atque velit repellat natus quod quia qui sunt nesciunt ut natus optio necessitatibus perferendis et.');
INSERT INTO `question` VALUES ('103', 'Quas pariatur animi architecto enim iste recusandae doloribus quaerat laborum cupiditate mollitia nostrum est reprehenderit vitae minus omnis quos aut et iure aut occaecati. ?', '1', '7', '40', '6', 'Sint saepe officiis veritatis ad molestiae ut animi id vitae ut corrupti quo beatae magnam et nostrum ducimus esse sapiente voluptatibus molestias non dicta rerum qui et ut quam dolor pariatur officiis dolore soluta ipsa vel similique est excepturi sunt cum error.');
INSERT INTO `question` VALUES ('104', 'Veritatis molestiae non earum et ea distinctio magnam reprehenderit iste accusamus et aut at voluptatem accusantium esse ex. ?', '1', '7', '40', '6', 'Et libero consectetur quis non sunt voluptas molestias rem animi voluptatibus est soluta provident assumenda ut quasi nam architecto culpa eligendi occaecati vel molestiae quam iste voluptatum dolor id nobis expedita voluptatem.');
INSERT INTO `question` VALUES ('105', 'Tempore architecto et odit molestiae occaecati et sit laboriosam molestiae iste. ?', '1', '7', '40', '6', 'Maiores rerum sit atque et numquam non libero velit quia aliquam est quaerat recusandae veritatis ut consequatur enim sit est aut voluptas aliquid ipsam quisquam veniam consequatur aut alias ea quae dolorem iste quia.');
INSERT INTO `question` VALUES ('106', 'Velit dolorem officiis quasi omnis est molestiae ipsam voluptate velit perferendis et consequatur rerum ad repellendus enim placeat optio excepturi sed. ?', '1', '7', '40', '6', 'Consectetur quis beatae esse omnis dolores quae voluptatum magnam id illum architecto ab quam nulla suscipit aliquid rerum ipsa tempora eaque dolore nostrum qui et et et sit veritatis ex quas necessitatibus eveniet in et corrupti dignissimos commodi possimus voluptatem.');
INSERT INTO `question` VALUES ('107', 'Adipisci adipisci consequatur qui et ipsum et voluptates eveniet dolore rem ut temporibus earum itaque saepe sint aut dolorem at. ?', '1', '7', '40', '6', 'Excepturi eum et tempore molestias quasi accusamus id non cum occaecati vel ducimus aut esse tempora iusto nesciunt qui voluptate ea nesciunt enim atque sunt dicta quaerat reprehenderit voluptas vero dolorem consequatur ut sequi.');
INSERT INTO `question` VALUES ('108', 'Et ut molestiae necessitatibus earum sunt expedita tempora harum sunt ut id quis pariatur fugit non fugiat qui voluptatem velit. ?', '1', '7', '40', '6', 'Adipisci nihil accusamus suscipit ipsam alias accusantium maxime distinctio cumque eius saepe dicta corporis dolore eum autem velit quisquam vero voluptas soluta rerum aut dolorum ut.');
INSERT INTO `question` VALUES ('109', 'Voluptatem fugiat iste quia aut eius eveniet sit nihil numquam est. ?', '1', '7', '40', '6', 'Cum id corporis quidem repudiandae et vero consequuntur iste iure sunt iure et quia dicta soluta voluptatem qui quod et reiciendis laboriosam laboriosam non sit doloremque libero qui sint eos ut corrupti necessitatibus aliquid reiciendis a iusto mollitia distinctio adipisci explicabo.');
INSERT INTO `question` VALUES ('110', 'Et dolorem occaecati saepe assumenda adipisci sit blanditiis ex dolorem magni iste explicabo aut aut aliquam ipsa corrupti quo quo fugit illo suscipit modi. ?', '1', '7', '40', '6', 'Voluptatem provident rerum deleniti perspiciatis maxime exercitationem ea sunt explicabo omnis et voluptas debitis sapiente delectus aut modi saepe dolores excepturi perspiciatis et maiores dolores vel magni eaque consectetur velit quisquam iste architecto et a perferendis.');
INSERT INTO `question` VALUES ('111', 'Aut recusandae commodi asperiores aspernatur perspiciatis ullam consequatur laboriosam et impedit dolorum et incidunt provident saepe qui dolor ad sit. ?', '1', '7', '40', '6', 'Saepe voluptatem vel qui vel nulla unde voluptatem iure sunt doloribus dolor magnam dignissimos sed natus nam aut soluta sit possimus reiciendis dolor amet rerum vel aperiam consequatur maxime voluptas cum omnis fugiat omnis velit voluptatem.');
INSERT INTO `question` VALUES ('112', 'Nemo incidunt nisi natus tenetur optio qui neque voluptatum quidem consequatur dolores veniam sapiente sint excepturi at placeat dolorem inventore tenetur cum. ?', '1', '7', '40', '6', 'Sed facere ut nemo sed reprehenderit aut magnam ad magni odit aut doloremque ut dicta dignissimos repellat unde vero quis neque autem in tenetur qui voluptates nihil quo maxime qui.');
INSERT INTO `question` VALUES ('113', 'Repellendus repudiandae sint temporibus sed reprehenderit et fuga dolores et quis. ?', '1', '7', '40', '6', 'Nihil excepturi id temporibus ea dolorem in deserunt quo odit non quidem voluptatem et commodi voluptas laudantium molestiae corrupti fugiat aliquam inventore magnam nihil ex quae ipsa perferendis assumenda similique asperiores non iure asperiores dolorum accusantium praesentium.');
INSERT INTO `question` VALUES ('114', 'Voluptatem delectus eos ipsam facilis asperiores blanditiis quaerat eaque laudantium velit magni dolor molestiae cupiditate facere commodi iste. ?', '1', '7', '40', '6', 'Assumenda est tempora sequi quisquam inventore animi quibusdam sed debitis ut ut hic corrupti vitae cumque in sequi et nisi illum id suscipit consequatur eum.');
INSERT INTO `question` VALUES ('115', 'Eveniet sequi inventore sapiente est harum saepe aliquid omnis alias distinctio nisi veritatis fuga aliquid quia reprehenderit ea officiis dolores. ?', '1', '7', '40', '6', 'Dolore nobis sint aliquid quia nisi velit dolorem consectetur blanditiis placeat qui labore accusantium consequuntur itaque neque ut esse qui est totam laboriosam dicta nesciunt non aliquid sit sunt sit eaque nisi ipsum dolore rerum veritatis.');
INSERT INTO `question` VALUES ('116', 'Numquam rerum illo rerum fugiat non modi eos vel eos explicabo excepturi consequuntur ducimus at quod id blanditiis maiores earum. ?', '1', '7', '40', '6', 'Beatae sequi cupiditate fuga culpa ut consequatur voluptatem dicta doloremque velit inventore consequuntur qui quo eum aspernatur fuga dolorem ullam dolores soluta earum eaque rem iste consectetur ut neque quibusdam qui cum ipsam est quo deleniti dolore odit delectus molestias sit ut.');
INSERT INTO `question` VALUES ('117', 'Ex facere molestiae ut maiores enim laudantium culpa aspernatur iure modi mollitia unde eum et fuga qui nostrum. ?', '1', '7', '40', '6', 'Porro hic vel neque blanditiis qui reprehenderit sit dolor ullam expedita dolore consequatur dolor maiores maxime accusantium eum non itaque assumenda dolorum ad sapiente assumenda eligendi incidunt ut quia earum recusandae porro placeat dolores veritatis enim magnam ipsum quaerat voluptas.');
INSERT INTO `question` VALUES ('118', 'Et rerum natus labore omnis incidunt aut aliquid odit sit ut sed nam rem. ?', '1', '7', '40', '6', 'Laboriosam ratione labore sit rerum perferendis vitae quos est laboriosam odit aut qui adipisci a amet accusantium quis perferendis omnis pariatur in libero dolor et voluptates dolores quos necessitatibus ab dolorem.');
INSERT INTO `question` VALUES ('119', 'Quia sunt asperiores est voluptate aliquid sit saepe harum molestiae fuga laboriosam expedita sit pariatur est possimus. ?', '1', '7', '40', '6', 'Et rem adipisci ab molestiae dolor et voluptatem cum architecto voluptatem molestiae aut esse quas molestiae assumenda quo temporibus nemo labore eos debitis unde quo dignissimos ut sunt doloribus in et aut aut cumque et autem voluptas laborum.');
INSERT INTO `question` VALUES ('120', 'Et dolorum enim quod neque et id dolor architecto voluptatum quos eos. ?', '1', '7', '40', '6', 'Repellat quia itaque voluptates nesciunt at qui earum aut quaerat ipsam occaecati aut natus dolorum nihil tenetur ut et ex error dolor voluptatem eum commodi assumenda quisquam et possimus delectus consequatur molestias.');
INSERT INTO `question` VALUES ('121', 'Tenetur non provident beatae placeat eos numquam animi et facilis enim quo. ?', '1', '7', '40', '6', 'Culpa non sit non soluta illo repellat temporibus nihil sit odio consectetur qui qui sequi rerum nobis sapiente eaque exercitationem suscipit maxime possimus doloribus voluptatem et incidunt.');
INSERT INTO `question` VALUES ('122', 'Eos voluptates qui dolorem minima explicabo voluptatem iusto atque aut dolore et pariatur quo maxime cum id quisquam dignissimos recusandae iste sint quis. ?', '1', '7', '40', '6', 'Et qui temporibus quos ut consequuntur dignissimos officia aspernatur nulla et et minima temporibus eveniet veniam pariatur facere sint provident rerum aut autem ut sint et laborum quas praesentium totam earum eius quam voluptates atque nulla maxime ipsa ipsum quae molestiae animi quia.');
INSERT INTO `question` VALUES ('123', 'Eum inventore voluptas aut quasi facere atque repellendus tenetur aliquid quo. ?', '1', '7', '40', '6', 'Ad sequi qui veritatis inventore itaque veniam at minus dolorum dolores et vitae sunt veniam veritatis autem laudantium natus atque corporis aut eius corrupti consequatur eius natus dolorem nostrum sunt quia tempore.');
INSERT INTO `question` VALUES ('124', 'Cum quia quia similique sapiente recusandae natus nobis dolorem ut dignissimos placeat nesciunt qui ex et aut accusamus excepturi eos ex officia magnam. ?', '1', '7', '40', '6', 'Voluptas sed non aut dolorem aut laudantium quia accusamus ut voluptatibus fugiat qui omnis totam amet et maxime iure.');
INSERT INTO `question` VALUES ('125', 'Eos quae quidem totam error ex aut numquam incidunt ea quam quidem. ?', '1', '7', '40', '6', 'Ratione et voluptas qui rerum rem facilis minima blanditiis ut quo iusto fugiat et molestias dolorem consequatur suscipit nihil laboriosam beatae molestias esse atque voluptatem mollitia ipsum qui rerum optio suscipit excepturi optio asperiores voluptatem sit ipsa veniam accusantium nemo ullam saepe.');
INSERT INTO `question` VALUES ('126', 'Culpa nihil saepe omnis quae reiciendis voluptas totam ducimus optio voluptate est impedit. ?', '1', '7', '40', '6', 'Ut excepturi ipsam quo qui sint molestiae est non adipisci vel et ullam dolor et perferendis pariatur illum ipsum eius quia.');
INSERT INTO `question` VALUES ('127', 'Repellat vel sequi quibusdam accusantium quasi alias consequatur quasi eos ut est ea delectus voluptatem. ?', '1', '7', '40', '6', 'Suscipit at omnis dolorem et aut ut nesciunt eum optio amet dolorem dicta dolores ab reiciendis temporibus a aut ipsum sint et nemo asperiores quae voluptas quisquam doloribus magnam fugiat quisquam eum voluptas et culpa.');
INSERT INTO `question` VALUES ('128', 'Voluptas est id vero non tempore dicta tenetur ducimus quae et similique ducimus sint sit aliquam quis non non mollitia omnis iste nobis aut. ?', '1', '7', '40', '6', 'Ratione qui facilis labore aliquid hic dolorem aliquid odit expedita sunt nihil itaque eveniet officia quia quaerat sapiente vitae qui quo et placeat quisquam vero vel est sit at officia totam rerum laborum temporibus.');
INSERT INTO `question` VALUES ('129', 'Voluptatem aut porro aliquid dolorem modi repellendus molestiae omnis molestiae hic eveniet et inventore esse delectus perferendis dolorum nesciunt sed. ?', '1', '7', '40', '6', 'Aspernatur nostrum animi natus aut voluptatem rerum voluptatibus quo aut corporis rerum et amet adipisci et consectetur quisquam debitis magni aliquam deserunt quos pariatur rerum aliquam in itaque eos et delectus ducimus non et adipisci tempora quis architecto dolorem.');
INSERT INTO `question` VALUES ('130', 'Saepe hic voluptatem maiores voluptatem vel neque magni aut a tenetur est. ?', '1', '7', '40', '6', 'Aliquid quo temporibus sapiente facilis et ut ut ipsam reiciendis incidunt molestias vel recusandae et doloremque enim aut voluptas harum consequatur consequatur sint quo adipisci nobis.');
INSERT INTO `question` VALUES ('131', 'Culpa ipsa vitae quo doloremque saepe suscipit corporis blanditiis recusandae voluptatum rerum inventore itaque. ?', '1', '2', '9', '7', 'Tempore ut sed et odit dolore inventore fugiat corporis ut et eos omnis excepturi necessitatibus aliquam nulla et culpa in libero neque atque laboriosam ea reprehenderit et molestiae ex dolorum omnis ratione repellendus assumenda eligendi officiis et laudantium voluptatem.');
INSERT INTO `question` VALUES ('132', 'Pariatur consectetur quia deleniti quia error architecto qui possimus quod perferendis placeat accusamus unde illum voluptas dolores. ?', '1', '2', '9', '7', 'Omnis nulla eos soluta sapiente unde possimus qui voluptatum quae maxime velit ab iste incidunt aliquid et dolorem quis quos qui laudantium consequatur fugit possimus cum sit.');
INSERT INTO `question` VALUES ('133', 'Qui autem tempore sint dolorem nisi ducimus quos laudantium iure natus non rem architecto iure voluptatem dignissimos ipsam libero iste ipsa at. ?', '1', '2', '9', '7', 'Nam delectus odio enim deserunt qui dolores sit occaecati culpa accusantium molestiae asperiores quia architecto recusandae est et consequatur doloribus occaecati et est nisi et corporis vero nihil repellendus voluptatem beatae et.');
INSERT INTO `question` VALUES ('134', 'Facere quam repudiandae ab sit sit eligendi dolorum qui eum consequatur tenetur aut vitae voluptas corporis a qui et perferendis. ?', '1', '2', '9', '7', 'Consequatur sunt delectus repellat laborum expedita laborum explicabo soluta id sunt nesciunt iste occaecati magni consectetur consequatur ut eveniet eius sit dolor quo repellat non voluptas architecto praesentium hic occaecati atque repellat quod voluptas sunt nam.');
INSERT INTO `question` VALUES ('135', 'Sed aut ut quaerat eum assumenda sed exercitationem perferendis ipsam aperiam rem quas doloremque non odio non est doloremque est aut fuga reprehenderit sint. ?', '1', '2', '9', '7', 'Totam eaque voluptatem maiores quasi et ut est sit dolores et et consequatur reiciendis quo et sit quo consequatur et totam laborum pariatur ab quaerat quae ut modi.');
INSERT INTO `question` VALUES ('136', 'Inventore rerum aut laboriosam quo voluptas quia cum soluta maxime aspernatur eos quae occaecati nam odio. ?', '1', '2', '9', '7', 'Dolore facilis vitae est qui sunt asperiores optio laboriosam voluptates dolor dolorum delectus perspiciatis voluptatem omnis quod hic velit neque repellendus ut dicta minima ea nobis dolorem adipisci quia est non et eos dolores magnam ut.');
INSERT INTO `question` VALUES ('137', 'Quasi omnis et quia blanditiis rerum sit velit dolorem harum quidem ex laborum quibusdam nemo non qui laboriosam minus laborum eos. ?', '1', '2', '9', '7', 'Quis quis itaque nemo autem iure repudiandae vero alias vero debitis error consequuntur quia corporis libero qui aut temporibus consectetur reiciendis quibusdam consequuntur nobis aliquam atque laboriosam voluptatem minus eligendi architecto quasi.');
INSERT INTO `question` VALUES ('138', 'Earum sit ut quas voluptatem illum ut voluptatibus sit ea culpa amet qui et sequi adipisci accusantium dolor ducimus. ?', '1', '2', '9', '7', 'Recusandae et repellendus doloremque consequatur debitis qui ut ut modi voluptatem velit necessitatibus vel alias assumenda ipsum laudantium doloremque maiores quis sed qui et.');
INSERT INTO `question` VALUES ('139', 'Voluptas in quo in sint fuga sit accusamus aperiam reprehenderit id. ?', '1', '2', '9', '7', 'Temporibus qui quos molestiae et nostrum cumque iure et facere ut est eius et veritatis quaerat omnis similique aliquid sint et odit velit eius dolorem animi voluptas aut sunt dolor aut libero doloribus sint.');
INSERT INTO `question` VALUES ('140', 'Neque numquam pariatur qui reprehenderit facere et ea deleniti aut quisquam perferendis excepturi aliquid quisquam voluptates nihil sapiente. ?', '1', '2', '9', '7', 'Minima qui quae sit aperiam dolorum qui cum consequatur ut facere sequi ut ut et enim sequi at maxime modi magnam natus molestiae amet est magni tenetur animi consectetur et voluptatem beatae nemo qui ex corrupti deleniti aliquid repudiandae aut et.');
INSERT INTO `question` VALUES ('141', 'Nemo quaerat odio magnam ut adipisci assumenda veritatis saepe exercitationem sit facere. ?', '1', '2', '9', '7', 'Quia accusantium voluptates sunt enim repellat voluptatibus aut sit quibusdam minima nihil aut perspiciatis fuga dolores qui autem sed molestias ut et et illum ducimus sequi praesentium saepe.');
INSERT INTO `question` VALUES ('142', 'Temporibus dolorem sint eligendi unde tenetur ipsa sunt officia alias ipsum et a modi quisquam est minus sapiente. ?', '1', '2', '9', '7', 'Sunt quo consequatur et cumque voluptatum et commodi at quod porro sint sapiente fugit qui sequi molestiae esse aperiam tempore excepturi.');
INSERT INTO `question` VALUES ('143', 'Necessitatibus eaque eos repudiandae delectus eos aut animi eum sed eveniet quisquam omnis quia sit vel voluptatem. ?', '1', '2', '9', '7', 'Voluptatem quo et non explicabo consectetur dicta et velit qui voluptatem atque corporis ipsam assumenda tempore odio rerum quasi cum velit porro voluptas ad corporis quia.');
INSERT INTO `question` VALUES ('144', 'Odio asperiores dolore illo quia maxime nemo iusto quia itaque numquam. ?', '1', '2', '9', '7', 'Dolor omnis excepturi error qui molestiae at fugit nulla debitis et sunt dignissimos accusamus quos veniam accusamus molestias et pariatur reiciendis numquam soluta quam dolorem.');
INSERT INTO `question` VALUES ('145', 'Necessitatibus atque ipsam vitae aut et iure quibusdam voluptatem veniam earum eos fugiat dolores. ?', '1', '2', '9', '7', 'Nihil omnis magnam error ipsum ducimus omnis nihil sed officiis aliquid recusandae culpa voluptatem suscipit et reprehenderit officia molestias.');
INSERT INTO `question` VALUES ('146', 'Autem enim et sed qui explicabo facilis amet facilis et est ipsum pariatur aut quisquam et sit distinctio. ?', '1', '2', '9', '7', 'Sit consequatur et ad voluptatem magnam consectetur et vero ut omnis autem qui saepe reprehenderit veniam saepe sit omnis hic autem voluptatibus.');
INSERT INTO `question` VALUES ('147', 'Architecto praesentium porro qui ad ea et quia qui eos assumenda maxime quasi voluptate molestias atque ullam exercitationem non quia enim assumenda. ?', '1', '2', '9', '7', 'Repudiandae aspernatur ducimus id sed adipisci alias et autem iste laudantium ratione mollitia praesentium optio qui veniam vel sit voluptatem in placeat et ut ea voluptas sed dolore aut ut voluptatum atque officiis amet consequatur fugit quaerat fugiat et aperiam.');
INSERT INTO `question` VALUES ('148', 'Eum qui voluptatum nihil repudiandae omnis cumque optio voluptatibus pariatur consequatur. ?', '1', '2', '9', '7', 'Dolorem in pariatur molestiae quas animi illum pariatur tempore consequatur accusantium dolor voluptas reiciendis eaque praesentium sequi cum possimus fuga a corporis illum enim temporibus repellendus assumenda ex ea.');
INSERT INTO `question` VALUES ('149', 'Itaque consequatur soluta commodi ad labore nostrum facere et hic et fugit illum voluptas dignissimos aut aut eligendi. ?', '1', '2', '9', '7', 'Ad et ut ipsam repellat sed eaque eos quidem iste nisi et blanditiis quia dolorem temporibus laborum veniam quaerat dolore quae sed repellat iure ratione quaerat recusandae sint nemo voluptatem ut rerum et quia pariatur iure voluptatem facilis quia sed quam.');
INSERT INTO `question` VALUES ('150', 'Facere voluptas perferendis eum qui enim doloribus enim consectetur harum sed adipisci error qui ea eveniet facere voluptatem perspiciatis provident alias libero. ?', '1', '2', '9', '7', 'Mollitia perspiciatis sit cum expedita inventore iure quod beatae placeat sit veritatis voluptatem ea repellendus quis pariatur est veniam ab libero et ut.');
INSERT INTO `question` VALUES ('151', 'Tenetur ipsum saepe dolor fuga et id expedita totam labore provident unde consequatur assumenda quas nihil delectus occaecati. ?', '1', '7', '40', '8', 'Ullam quibusdam minima et quod ipsam voluptas et ut provident ipsam a dolorem aliquam officiis fugit quam atque dolorum tempore eligendi ipsa repellendus quis perferendis odio dicta fugiat aut molestiae quis commodi fuga incidunt autem commodi placeat eos et exercitationem necessitatibus.');
INSERT INTO `question` VALUES ('152', 'Cumque facere voluptas quis incidunt natus quos in cum maxime eum eius corporis eos harum velit reprehenderit similique odio amet qui cupiditate veritatis vel. ?', '1', '7', '40', '8', 'Tenetur harum tempora velit sed nam fugit labore architecto id cumque nostrum quia consectetur tempore molestiae incidunt nihil ullam quia.');
INSERT INTO `question` VALUES ('153', 'Est est mollitia quia nihil et omnis corporis non earum facere quia dolorem praesentium omnis ducimus provident nostrum blanditiis minima. ?', '1', '7', '40', '8', 'Et nisi accusantium beatae suscipit vitae animi corrupti necessitatibus quia magni dignissimos consectetur beatae aut dicta ut architecto temporibus occaecati et amet.');
INSERT INTO `question` VALUES ('154', 'Est sunt porro vitae voluptatem et odit maiores dolores quo voluptatem qui qui qui unde veniam ut et nihil accusamus nam. ?', '1', '7', '40', '8', 'Necessitatibus vel autem incidunt modi perspiciatis aperiam aspernatur incidunt dolor voluptatibus tenetur minima laborum iusto et totam sed at dolore commodi nisi accusantium magni distinctio facere esse autem est adipisci rerum voluptas et laboriosam nulla ipsum exercitationem.');
INSERT INTO `question` VALUES ('155', 'Commodi voluptatem sed facilis et aut temporibus eius dolore voluptatibus sed non recusandae dolorum perspiciatis. ?', '1', '7', '40', '8', 'Omnis voluptatum temporibus aut repudiandae ducimus dolorem non explicabo voluptatem distinctio sunt dicta dolore aperiam consectetur id autem molestiae fuga sequi inventore deserunt consequatur occaecati dicta sit odit ut tempore omnis occaecati rerum eum et saepe et ut voluptatibus sint.');
INSERT INTO `question` VALUES ('156', 'Quasi et tempora sed eaque ea non placeat ratione harum tempora laborum nihil veritatis minus quas aliquam velit eos harum. ?', '1', '7', '40', '8', 'Nostrum sit debitis occaecati eum nihil suscipit ut hic eligendi sed amet vel autem magni sit quia et nihil ut perspiciatis.');
INSERT INTO `question` VALUES ('157', 'Repellat iure nihil et itaque ut totam asperiores aut velit sapiente voluptatem cum sint vitae labore laboriosam maxime ducimus id expedita voluptas tempora. ?', '1', '7', '40', '8', 'Est nostrum quo blanditiis et sunt perferendis mollitia eum repudiandae quia vel neque voluptas quo dolor doloremque necessitatibus quas tenetur eum doloremque omnis eos hic eum cumque atque et earum non et iste.');
INSERT INTO `question` VALUES ('158', 'Et sapiente fuga fugit eos rerum alias tenetur perferendis tempora accusamus eveniet sunt sed magni. ?', '1', '7', '40', '8', 'Omnis debitis earum occaecati perspiciatis quia minus dolores aliquid at ipsum ut similique voluptates quia eos molestiae rerum esse quis minus neque debitis quaerat voluptas repellat consequatur nisi sunt omnis est qui voluptates atque incidunt molestiae ad ullam aut et numquam fugiat.');
INSERT INTO `question` VALUES ('159', 'Sit qui deserunt necessitatibus aliquid ratione voluptatem voluptatem consequuntur possimus qui dignissimos culpa dolor molestiae voluptatem iusto cumque. ?', '1', '7', '40', '8', 'Sapiente facilis amet eius odit perferendis laborum commodi sed deleniti rerum iure quis et nesciunt dolorum est debitis ratione optio impedit sed officia occaecati at aperiam.');
INSERT INTO `question` VALUES ('160', 'Unde qui molestias dicta repellat repellendus numquam at sed assumenda culpa aut ullam aliquam illum repellat laborum officiis maiores. ?', '1', '7', '40', '8', 'Ut quo odit et qui eum reprehenderit sit quos fugit sunt necessitatibus magnam omnis aut et nam exercitationem et est id distinctio quia voluptatum non voluptas aperiam dolores commodi non sit dolorem harum alias aliquam officiis nam architecto qui laudantium.');
INSERT INTO `question` VALUES ('161', 'Sit dolorum est ad est modi impedit maxime et voluptatum ipsum consequuntur qui doloremque. ?', '1', '7', '40', '8', 'Et minus minima ab rerum ea occaecati et laborum sunt iste repellat eos distinctio autem et qui repudiandae occaecati quia occaecati odit cupiditate nihil qui fuga quia et.');
INSERT INTO `question` VALUES ('162', 'Quis maxime facere corrupti quo nam rem reiciendis aspernatur nesciunt natus minus ipsa laudantium occaecati recusandae reprehenderit nihil voluptates. ?', '1', '7', '40', '8', 'Ut itaque molestiae et commodi explicabo illum eum et corporis natus tempora veritatis alias temporibus reiciendis magni modi quia quisquam iste ipsa dicta explicabo doloribus accusamus corporis minus ad odio quia.');
INSERT INTO `question` VALUES ('163', 'Maxime dolores perspiciatis et inventore nam impedit sed dolor sequi recusandae aut voluptatibus reiciendis voluptatum vitae repellendus cum ut eveniet ea iste incidunt. ?', '1', '7', '40', '8', 'Itaque dolorum doloribus tempore repellendus explicabo ducimus ipsum consequatur minus sapiente necessitatibus dolores a optio dolorem ea quia soluta magnam perspiciatis sunt rerum voluptatum voluptatibus assumenda officia numquam fuga numquam aliquid ducimus non reprehenderit.');
INSERT INTO `question` VALUES ('164', 'Animi quia doloremque aut delectus qui repellat ratione totam nam necessitatibus vitae accusantium sint esse est odit et consequatur vel qui laboriosam excepturi. ?', '1', '7', '40', '8', 'Minus quia et in molestiae vel amet sunt quod eos deserunt officia fuga omnis ipsa voluptatibus quod dicta alias at odio inventore ut sint et similique.');
INSERT INTO `question` VALUES ('165', 'Est qui quam aut dolores vel ab est animi modi est facere corrupti illum veniam. ?', '1', '7', '40', '8', 'Praesentium libero et voluptas molestias expedita cumque totam repudiandae omnis quia autem quia et similique voluptates excepturi aut doloribus expedita commodi deserunt suscipit.');
INSERT INTO `question` VALUES ('166', 'Sit vel est nemo et maiores sunt hic tenetur tenetur quae ratione fugit et quidem qui aut repudiandae sunt veritatis delectus minus ipsa. ?', '1', '7', '40', '8', 'Porro dolorum animi ea sed voluptatibus ipsum dolorem et nihil eum enim quia repellendus qui provident eius sed aut eum autem est eius amet natus ab porro adipisci.');
INSERT INTO `question` VALUES ('167', 'Qui et aliquid et sed vel dolor aut nostrum aut perferendis corporis ex. ?', '1', '7', '40', '8', 'Veritatis eius sunt illo vel eum libero iure eveniet qui deleniti iure voluptates corporis accusantium voluptas et soluta quod eum beatae assumenda occaecati est quibusdam sint unde culpa ut sequi.');
INSERT INTO `question` VALUES ('168', 'Porro autem debitis iusto quia voluptatum quo molestiae repudiandae consequatur et doloremque ad iste pariatur odio et. ?', '1', '7', '40', '8', 'Aut distinctio distinctio cumque aut dolorem quaerat nemo neque omnis tempora iure eligendi aut aut distinctio natus rem nam vel officia aut fugit inventore eius magnam dolor minima repudiandae sed voluptas.');
INSERT INTO `question` VALUES ('169', 'Voluptatibus veritatis occaecati cum saepe ex omnis repellat hic ut qui nihil voluptatem tempora sed est repudiandae omnis est. ?', '1', '7', '40', '8', 'Perspiciatis iste aut dolorem omnis nostrum aspernatur vero praesentium enim et sapiente consequatur et quia aliquid blanditiis dolores commodi numquam ut ut iste fugit qui a expedita quos quis maiores placeat et ducimus inventore ut aperiam.');
INSERT INTO `question` VALUES ('170', 'Et ut id odit labore quo aut perferendis expedita illum quia quod dolor. ?', '1', '7', '40', '8', 'Aut voluptatem eos voluptatum sed nisi doloremque adipisci amet omnis excepturi rerum atque assumenda non corporis sint ut aliquid non aut voluptas consequatur voluptas ab corporis id.');
INSERT INTO `question` VALUES ('171', 'Nobis ut nulla voluptatem qui et quibusdam qui et quis qui a in officiis quia omnis ipsum fugiat sunt. ?', '1', '3', '35', '9', 'Eos qui dicta dicta pariatur voluptas nam aspernatur eum ratione commodi sit vel facilis voluptas omnis facilis ratione deserunt eum sed non quia itaque nobis est animi atque aut voluptatem sed id et.');
INSERT INTO `question` VALUES ('172', 'Qui ullam aut tenetur dolor porro nobis dolorem sunt consequatur fuga similique quas nisi autem quisquam aperiam. ?', '1', '3', '35', '9', 'Officia minus quia enim nostrum autem deleniti et voluptatem enim quas iusto quia aperiam nam quae optio asperiores accusantium sunt.');
INSERT INTO `question` VALUES ('173', 'Quis qui aspernatur fugiat culpa eum quia nesciunt fugit temporibus aliquid nulla. ?', '1', '3', '35', '9', 'Ex optio magnam sequi eos tempore voluptatem corrupti pariatur enim accusamus dicta vel exercitationem et qui et sint voluptatum voluptatibus distinctio quia nulla a tenetur assumenda aut commodi dolor totam et eum autem reiciendis in voluptate excepturi aut ea ea dolores dolor.');
INSERT INTO `question` VALUES ('174', 'Dolores voluptates nam illo in fugiat rem omnis reiciendis et quo debitis sed illo at amet reiciendis minima aut ab explicabo atque. ?', '1', '3', '35', '9', 'Dolore vel quasi et earum officiis doloribus a et et fugiat numquam sit earum quibusdam eum eos eum odio officiis neque sed autem mollitia recusandae et et eos qui et nam dolorum alias quis.');
INSERT INTO `question` VALUES ('175', 'Dignissimos fugiat perferendis dolorum non ducimus blanditiis earum repudiandae velit quasi deleniti incidunt ea odio qui quasi ab sit nihil aut voluptatum. ?', '1', '3', '35', '9', 'Aut ipsum aut iste aperiam maxime corporis est velit consequatur et similique minus optio nostrum cum sed et possimus odio nobis accusantium recusandae deserunt ipsum voluptatem.');
INSERT INTO `question` VALUES ('176', 'Illo laboriosam sit eveniet vero eum itaque consequatur velit suscipit et quos voluptatibus facere enim quia voluptatem id architecto eum porro. ?', '1', '3', '35', '9', 'Dolor rerum ducimus facilis sequi accusamus quos deleniti recusandae debitis ut quod qui est labore est ratione sit laudantium autem rerum non et.');
INSERT INTO `question` VALUES ('177', 'Omnis culpa voluptatem quod voluptatem officia voluptatem molestias repudiandae quia velit praesentium nisi molestiae. ?', '1', '3', '35', '9', 'Omnis fuga beatae labore vel cumque error ipsa nemo rem velit quia occaecati beatae corporis consequuntur consequatur nesciunt necessitatibus sed sunt quasi ipsum quod cupiditate et id sunt molestias ipsum asperiores excepturi et qui id ipsam voluptatem qui ratione optio at architecto.');
INSERT INTO `question` VALUES ('178', 'In earum quos illo dolor nulla id maiores quod voluptates quaerat quo aperiam accusantium eaque adipisci totam veniam aut eos id odio consequatur. ?', '1', '3', '35', '9', 'Aut eaque itaque molestiae repellat quas et odio saepe laboriosam consectetur porro voluptate voluptatem eveniet officiis et labore et omnis architecto amet itaque aut aut corrupti nihil voluptas laborum aut et et assumenda non est.');
INSERT INTO `question` VALUES ('179', 'Labore beatae cupiditate molestias vero maxime at ullam eum consequuntur voluptatem. ?', '1', '3', '35', '9', 'Possimus architecto alias ratione expedita quia veritatis nemo qui enim suscipit fugiat et ut fuga omnis sit temporibus sint harum autem sed est non enim qui enim molestiae tenetur deserunt amet corporis eligendi eos qui reprehenderit ut enim odit.');
INSERT INTO `question` VALUES ('180', 'Nihil in ullam dolores sit illo unde iusto est suscipit nisi molestiae molestiae dolore libero natus distinctio qui eum possimus. ?', '1', '3', '35', '9', 'Ea necessitatibus ipsum nesciunt et occaecati sint sit explicabo autem ut qui et iusto omnis inventore sed minima vitae fugiat cum eaque doloremque molestiae quam.');
INSERT INTO `question` VALUES ('181', 'Non et sit facere consectetur pariatur natus minus sint sed qui dolores consequatur sed ut corporis quia qui ipsum et est qui. ?', '1', '7', '31', '10', 'Veniam perferendis itaque et sed provident distinctio inventore et molestias numquam dolores ut est sit vel dolor ipsa eveniet soluta dicta quia et sint quis odio et quo suscipit cum quia at dignissimos qui ut doloribus distinctio sit nemo.');
INSERT INTO `question` VALUES ('182', 'Quos sint non nihil vel et nam quas perspiciatis quam et laudantium officiis labore cumque corrupti. ?', '1', '7', '31', '10', 'Recusandae excepturi ullam et fugit explicabo et aliquid repudiandae dicta error placeat eos officia eum sed occaecati nihil distinctio perspiciatis est voluptate rem quia molestiae nihil consequatur quibusdam cupiditate et atque hic consequatur ratione aut sequi cupiditate pariatur.');
INSERT INTO `question` VALUES ('183', 'Ut harum quia sit et quo veniam enim fugit vel sed aspernatur sit. ?', '1', '7', '31', '10', 'Voluptatem ratione fuga commodi reprehenderit magnam fuga adipisci explicabo facere consequatur ipsam ea tempora ut inventore est voluptatem tenetur dicta sunt consequatur nisi sint nobis nesciunt harum.');
INSERT INTO `question` VALUES ('184', 'Tenetur quaerat aperiam tempore eligendi molestias dignissimos voluptas iusto porro tenetur est porro at et enim non ea temporibus sunt. ?', '1', '7', '31', '10', 'Cupiditate ad ab sunt temporibus iure temporibus ut itaque voluptatem et deleniti blanditiis nam voluptas qui nihil velit iste blanditiis odio.');
INSERT INTO `question` VALUES ('185', 'Odio ratione molestiae qui nihil eum laboriosam distinctio perferendis corrupti voluptatem aut deleniti ullam aut nam quas reiciendis libero ut. ?', '1', '7', '31', '10', 'Nihil voluptas mollitia voluptatem voluptatem nam sed impedit eveniet dicta officiis in ducimus nulla omnis ipsum ullam molestiae corrupti mollitia aliquam labore est.');
INSERT INTO `question` VALUES ('186', 'Quos voluptas nobis sunt dolorem perferendis hic id enim expedita amet voluptas non temporibus reiciendis consequatur reprehenderit reprehenderit. ?', '1', '7', '31', '10', 'Voluptates temporibus voluptatibus libero dolores neque sunt maxime alias et nesciunt voluptatibus non omnis totam nostrum similique sint in labore ex quis cupiditate facere nobis maxime.');
INSERT INTO `question` VALUES ('187', 'Est autem consequuntur quos omnis hic quisquam doloremque qui vel quia aut aperiam at alias iure cumque sit. ?', '1', '7', '31', '10', 'Commodi ullam molestiae in occaecati aliquid harum debitis laudantium rerum repellendus maiores et fugit illo labore exercitationem sed porro.');
INSERT INTO `question` VALUES ('188', 'Eius et enim culpa vel et laborum earum quis non ut itaque ut iure minus cumque asperiores aut quod voluptas. ?', '1', '7', '31', '10', 'Eaque labore error voluptas exercitationem et porro sint dolorum ipsa facilis fuga iste at cum blanditiis cum aut nihil pariatur cupiditate magnam architecto error illum maxime quisquam earum sed.');
INSERT INTO `question` VALUES ('189', 'Deserunt adipisci saepe quia iusto sit corrupti molestiae assumenda impedit natus voluptatem corporis adipisci est non quaerat tempora dicta consequuntur. ?', '1', '7', '31', '10', 'Sed ea quisquam doloremque omnis aut sit vel accusamus voluptatum vero debitis voluptatem sed sapiente aut voluptas perspiciatis aut enim maxime possimus ut.');
INSERT INTO `question` VALUES ('190', 'Eos enim porro est est quia et quod architecto debitis iste et reprehenderit sit voluptate ullam sed similique quo id. ?', '1', '7', '31', '10', 'Iste voluptatem rerum vel inventore sit esse facere praesentium repellat autem facilis eum praesentium quia in fugiat quod incidunt quae sunt optio repellendus iure et maxime quas.');
INSERT INTO `question` VALUES ('191', 'Cum ut est non eos rerum temporibus non molestias eius voluptates ducimus aut porro ipsa incidunt debitis est. ?', '1', '7', '31', '10', 'Eaque et voluptatem maxime exercitationem deserunt dolorem odit possimus velit est quo aliquid repellendus est rerum nobis voluptatum sit officia unde est sint.');
INSERT INTO `question` VALUES ('192', 'Dolores ut repellendus aspernatur qui praesentium nemo dolores consequuntur quia iusto qui. ?', '1', '7', '31', '10', 'Dolor ab fuga velit delectus ipsam saepe nostrum illum nemo aut veritatis excepturi ratione consequatur voluptas saepe cupiditate qui deleniti in fuga aut pariatur harum et optio sunt repellat nemo sapiente.');
INSERT INTO `question` VALUES ('193', 'Dolorem aliquid quasi deleniti enim deleniti doloribus quia officiis sit est veritatis vitae aut exercitationem. ?', '1', '7', '31', '10', 'Quis harum tempora maiores sed accusamus quia qui velit qui rerum ut porro quod sed et doloribus perferendis nesciunt et et numquam sit quidem architecto veritatis eum libero fugit eius ad inventore ad et praesentium sit repellendus repellendus labore quas ut.');
INSERT INTO `question` VALUES ('194', 'Possimus est voluptate error consequuntur occaecati ex deleniti aspernatur deleniti nihil saepe. ?', '1', '7', '31', '10', 'Quasi atque aspernatur et qui voluptas quos quam dolorem rem voluptatem repellendus suscipit saepe aut possimus dolore autem magnam eius nam enim eos cupiditate voluptatum exercitationem debitis modi eum tenetur rerum et esse neque officiis aut quia aspernatur veritatis laboriosam ratione nihil.');
INSERT INTO `question` VALUES ('195', 'Libero harum explicabo adipisci architecto dolorem eius possimus commodi iure doloribus eligendi nemo officia ut ab id assumenda ducimus ut sint beatae. ?', '1', '7', '31', '10', 'Libero asperiores earum at id molestias optio aut minus omnis in vitae ea reprehenderit deleniti mollitia amet molestiae aliquid est iste in consectetur enim illo optio similique est delectus.');
INSERT INTO `question` VALUES ('196', 'Fugiat quidem omnis veritatis asperiores voluptatum eligendi officiis consectetur quis eos pariatur officia autem. ?', '1', '7', '31', '10', 'Facilis nesciunt voluptatem molestiae neque incidunt qui autem explicabo quia eos repellat autem ut blanditiis sequi impedit amet quod enim sed sit alias ullam quisquam explicabo possimus harum ut qui.');
INSERT INTO `question` VALUES ('197', 'Nesciunt veritatis vel ut a consequatur nihil dolore quos delectus quasi. ?', '1', '7', '31', '10', 'Illum quas cupiditate quas dolor praesentium eos dignissimos ipsam dolorum et quis eius voluptas eaque eligendi illum nihil deleniti molestias earum perspiciatis aut quidem illo laudantium expedita rerum a ex qui fugit dolorem maxime rerum excepturi et.');
INSERT INTO `question` VALUES ('198', 'Odit totam iste et culpa distinctio magnam atque quis eligendi et totam voluptas eos. ?', '1', '7', '31', '10', 'Eum vel quo voluptatem voluptas totam voluptas autem consequatur hic omnis veritatis sed autem aut dolorem corporis laboriosam architecto velit.');
INSERT INTO `question` VALUES ('199', 'Quia consequatur officia ut nesciunt quis reiciendis aut rerum sint asperiores aut sint nobis odio explicabo et repudiandae animi soluta ducimus. ?', '1', '7', '31', '10', 'Corrupti et rerum quis pariatur ipsum aspernatur quis ad totam dolorem maiores et fugiat pariatur nulla consectetur voluptate officia qui dolor voluptatem ut ut atque omnis distinctio maxime dolorem commodi ex aliquid voluptas est illo est sapiente expedita.');
INSERT INTO `question` VALUES ('200', 'Aut quam saepe ducimus ipsam delectus numquam et laboriosam facilis doloremque. ?', '1', '7', '31', '10', 'Dolorem voluptates rerum voluptates nobis aliquid natus impedit ut in ipsum sit reprehenderit sit velit nihil tempore doloribus tempora iure a placeat iusto delectus ea quibusdam natus laudantium a veniam enim maxime sint ab nihil corrupti dolores non velit commodi fuga.');
INSERT INTO `question` VALUES ('201', 'Ipsum labore nulla cumque aliquid a optio in maxime cumque molestiae voluptatem numquam quasi sed consequatur. ?', '1', '7', '31', '10', 'Et tempore est ut quis ducimus qui vel unde autem molestiae nemo sit voluptatum et aliquid voluptas exercitationem eum nihil voluptates error aut voluptatem ex ullam eum accusantium assumenda consequatur quisquam itaque nostrum sunt similique.');
INSERT INTO `question` VALUES ('202', 'Eius neque consequatur aut in aut in tenetur autem est id possimus aut facere sed veniam dolorem veniam quos laboriosam in. ?', '1', '7', '31', '10', 'Odio delectus quisquam ut reprehenderit quas dolor eius possimus recusandae ipsam pariatur animi vero et quam omnis ab eius.');
INSERT INTO `question` VALUES ('203', 'Eos veniam minus consequatur voluptatum eum sed velit sit ad minus quaerat eos qui tenetur vero quis et aperiam. ?', '1', '7', '31', '10', 'Eum aut repellendus aliquid enim ut et quia ea eligendi et nihil et nobis porro sit qui qui consectetur culpa.');
INSERT INTO `question` VALUES ('204', 'Accusantium consequatur numquam sapiente optio veritatis sunt natus deleniti quaerat in quasi et dolor consequatur eum sunt omnis officia sit aut. ?', '1', '7', '31', '10', 'Earum ut vitae est illo eligendi laborum corrupti similique laborum quo nisi et ea rerum a corrupti ut voluptas illo dolorem et non cupiditate nisi qui repellendus vitae omnis nostrum sunt harum error.');
INSERT INTO `question` VALUES ('205', 'Commodi dolores sunt dolorem non reiciendis sit non consequuntur rerum ut quod rerum in pariatur itaque consectetur dolor odio alias atque eos non. ?', '1', '7', '31', '10', 'Harum modi ut ea in repudiandae occaecati vitae ex fuga ea eos error velit et in aperiam ducimus rerum officiis.');
INSERT INTO `question` VALUES ('206', 'Accusamus minus explicabo placeat veritatis non est omnis magnam consequatur recusandae et non dolore qui vitae amet vitae. ?', '1', '7', '31', '10', 'Aut sint vel ipsam qui ratione odit illo reprehenderit id est minus ut eos molestiae illo distinctio explicabo animi adipisci possimus dicta eligendi laborum aut dolorem rerum quos dolor ea sit cumque est dolor totam perferendis hic qui.');
INSERT INTO `question` VALUES ('207', 'Natus molestias neque quae ipsam labore ratione pariatur et eaque voluptatum maiores consequatur optio est qui voluptates et ut nostrum. ?', '1', '7', '31', '10', 'Quaerat assumenda ea ea consequuntur et aut cum nostrum aut consectetur modi iure et enim ratione perspiciatis libero consequatur rem saepe nostrum quod nisi atque aut quis recusandae et dolores voluptas ut rem.');
INSERT INTO `question` VALUES ('208', 'Iusto ut repellendus consectetur aspernatur velit sint sunt quis et non et dolor beatae reiciendis iusto id dolor aut facilis voluptas. ?', '1', '7', '31', '10', 'Hic voluptatem reprehenderit ullam quasi modi aut dolorum nulla quidem mollitia commodi aut recusandae sunt blanditiis iste doloremque quis autem alias.');
INSERT INTO `question` VALUES ('209', 'Corporis impedit qui sed eos dolor optio non provident nisi temporibus ipsam aut eligendi qui quo libero laudantium. ?', '1', '7', '31', '10', 'Voluptas ad voluptas sit dolores aut aut quaerat modi rerum culpa libero ex quam qui et illum in minima natus quia voluptatem totam beatae qui consequuntur laboriosam facere nam qui facere et mollitia et optio voluptatem optio ea explicabo omnis ut quam.');
INSERT INTO `question` VALUES ('210', 'Consequatur veniam aut culpa deserunt eum occaecati rerum velit ex doloremque voluptatibus provident sunt qui quod est sed quod est sit et. ?', '1', '7', '31', '10', 'Consequatur eum omnis reiciendis voluptatem ipsa facilis nobis quis modi error iusto reprehenderit sed eos consequatur atque ut quidem aliquid quod quo.');
INSERT INTO `question` VALUES ('211', 'Magnam quae sit et est quos sequi et est explicabo inventore voluptatem deserunt autem assumenda non vero tenetur voluptatibus perspiciatis magnam velit et porro. ?', '1', '7', '31', '10', 'Et consequatur aut et sit odit cumque nobis exercitationem minima libero quaerat iusto fugiat nostrum placeat ut est facere sint cupiditate maiores quo.');
INSERT INTO `question` VALUES ('212', 'Suscipit odio voluptatem ea ullam perferendis eveniet sit sint sed necessitatibus quia et. ?', '1', '7', '31', '10', 'Hic sit iure totam voluptatem eos recusandae dolores qui consequatur fuga laboriosam sunt quis commodi vel ducimus autem velit error.');
INSERT INTO `question` VALUES ('213', 'Quia dolores illo molestiae et natus ex dolor fuga eos exercitationem saepe rerum eius aut officiis et id rem excepturi. ?', '1', '7', '31', '10', 'Voluptas at aperiam sed excepturi possimus alias blanditiis sed voluptatibus praesentium quod laborum cumque debitis id voluptas dignissimos magni esse quasi veritatis dolores quod vitae et dicta non omnis est doloremque molestias quo.');
INSERT INTO `question` VALUES ('214', 'Doloremque dolores voluptatum similique atque quidem aut ut et ea odio vero illum consequuntur nesciunt asperiores nihil esse libero voluptatibus vel maiores quia. ?', '1', '7', '31', '10', 'Molestiae ipsam mollitia nesciunt unde accusamus deleniti error veritatis in voluptate placeat et harum ratione nemo neque facere placeat non vel soluta et molestiae architecto officiis vero et fuga quis possimus.');
INSERT INTO `question` VALUES ('215', 'Aut possimus omnis est distinctio ad doloribus iure aut quasi ex neque rerum eum et atque et nostrum aliquid omnis doloremque. ?', '1', '7', '31', '10', 'Aut voluptas voluptatibus et dolorum qui cumque itaque consequatur dolor aperiam explicabo aut earum blanditiis velit dolores nostrum sint aliquid nam at omnis sunt eos molestias modi omnis ipsum corrupti rem doloremque quia quos.');
INSERT INTO `question` VALUES ('216', 'Quibusdam id illo aut dolorum eum officiis qui sunt quod voluptas aspernatur magni illo ut et et consequuntur enim. ?', '1', '7', '31', '10', 'Expedita voluptate pariatur eos deserunt velit repellat quis recusandae sed sit ipsum tenetur quisquam qui dicta quisquam delectus molestiae ut doloribus asperiores et est saepe occaecati et cumque illo voluptate voluptatem aut velit consequuntur autem aut rerum voluptate ducimus aut.');
INSERT INTO `question` VALUES ('217', 'Rem blanditiis nisi illum est nam in porro saepe aut temporibus nihil aut. ?', '1', '7', '31', '10', 'Nihil dolor dignissimos occaecati ut voluptatem nulla officiis molestiae dolore sed libero iure laudantium sit similique non sed asperiores animi quibusdam officiis temporibus cum debitis quos tempore cumque delectus.');
INSERT INTO `question` VALUES ('218', 'Voluptatem culpa est quasi optio illo voluptates sapiente consectetur in est aut quaerat omnis nemo soluta. ?', '1', '7', '31', '10', 'Tempora autem mollitia placeat sapiente omnis veritatis maiores impedit unde officia assumenda sunt enim dolorem asperiores nihil facere qui natus et culpa quae exercitationem omnis et nulla facere.');
INSERT INTO `question` VALUES ('219', 'Quibusdam magni in quo voluptatem mollitia doloribus assumenda ut ducimus deleniti est enim sed nostrum quasi reiciendis et magni. ?', '1', '7', '31', '10', 'Et et est delectus pariatur adipisci aut quaerat consectetur omnis veritatis ex non assumenda vel est cumque minima aut officiis voluptatum est architecto nam ipsam sunt aut cumque praesentium distinctio saepe omnis fugiat quasi perferendis minima consectetur.');
INSERT INTO `question` VALUES ('220', 'Doloremque at autem dolor doloribus fuga aperiam dolore in esse omnis vero autem eos minima officia quia ipsum et odio qui fugiat quae sit. ?', '1', '7', '31', '10', 'Minima rerum quos ut totam maiores rerum ut voluptate non minima debitis similique minima eveniet labore provident et sit atque blanditiis architecto ut eos.');
INSERT INTO `question` VALUES ('221', 'Id eum corrupti iste velit animi placeat ipsam sed suscipit itaque dolor reprehenderit expedita quis expedita labore et sunt animi amet. ?', '1', '3', '32', '11', 'Quasi libero modi nostrum quia qui cum molestiae voluptas neque neque esse similique ad enim dolore sit earum suscipit consequatur et quod dolorem repudiandae et nisi in molestiae beatae asperiores dolores nostrum non fugit.');
INSERT INTO `question` VALUES ('222', 'Amet nulla et voluptatem reprehenderit architecto minima exercitationem fuga sunt incidunt. ?', '1', '3', '32', '11', 'Quos nesciunt magnam sed error provident id aspernatur non animi impedit voluptatem et non velit consequatur et eos omnis ea dignissimos excepturi eum praesentium laudantium accusantium ut repudiandae possimus officia eos et neque totam sit ex et iste.');
INSERT INTO `question` VALUES ('223', 'Esse velit provident aut temporibus quisquam odit eos doloremque cupiditate nesciunt blanditiis repellat autem consequuntur iusto sapiente repellendus et et odio nemo asperiores alias. ?', '1', '3', '32', '11', 'Porro alias consequatur sit voluptatum sed numquam in qui et minus ut omnis maxime magni excepturi earum voluptate et qui corporis iure atque dolorum omnis repellendus.');
INSERT INTO `question` VALUES ('224', 'Dignissimos non tempora optio qui architecto qui cumque in aliquid hic odio nam. ?', '1', '3', '32', '11', 'Expedita qui et minima earum qui numquam nemo inventore laborum sit ab non magnam et consequatur minus dolores suscipit doloremque aut sapiente et neque molestiae quidem quae nisi et in unde cum et itaque.');
INSERT INTO `question` VALUES ('225', 'Reprehenderit laborum quae sunt sit distinctio aliquid delectus aut neque accusamus nostrum quia quidem voluptatem hic velit. ?', '1', '3', '32', '11', 'Rerum est ratione quia explicabo ullam odio explicabo nobis ut quia odit magnam sed alias voluptas et ut nihil ut qui et ea reiciendis architecto ea nisi labore vel non voluptas voluptate deserunt exercitationem ut alias sit quos.');
INSERT INTO `question` VALUES ('226', 'Perspiciatis corrupti corrupti est ut alias vitae et in quo voluptate at fugiat facere quia soluta. ?', '1', '3', '32', '11', 'Reprehenderit libero voluptates qui sapiente aliquam eveniet tempora ullam saepe vel harum et dolor maiores et temporibus similique incidunt impedit perferendis voluptas et eligendi alias vitae sunt qui aliquam neque labore voluptatem dolore porro ad temporibus culpa.');
INSERT INTO `question` VALUES ('227', 'Cumque reiciendis velit qui sed ducimus et cum eos totam est ut rem. ?', '1', '3', '32', '11', 'Voluptatem quaerat repellendus eveniet est facilis eaque amet earum adipisci amet molestias illo expedita molestiae ut quia ut quae quia quae molestias autem aut id distinctio labore natus at est ea aliquid et architecto architecto vel et nostrum ut recusandae libero.');
INSERT INTO `question` VALUES ('228', 'Velit praesentium modi aut fugit est libero quam aliquid corporis corrupti aut qui et ut ipsum molestiae quos maxime aut et eveniet. ?', '1', '3', '32', '11', 'Qui voluptatem eveniet est iusto qui maiores nihil quae soluta exercitationem aut illum rerum veritatis eius ipsa nulla ad unde quas fugiat velit labore delectus atque nostrum delectus voluptatem id eos consectetur quae tempore omnis.');
INSERT INTO `question` VALUES ('229', 'Rerum quidem possimus iure ratione magnam vel ratione enim aut consequatur et quia soluta. ?', '1', '3', '32', '11', 'At rem rerum sit eos omnis minima aperiam ullam nobis et qui est ratione eos eligendi qui ipsam impedit molestias rerum est.');
INSERT INTO `question` VALUES ('230', 'Ullam repellat saepe saepe minus in soluta non quo inventore et enim dolorum placeat vel magni et. ?', '1', '3', '32', '11', 'Atque veritatis dolorum odit vero cum cum autem perferendis sint quia veniam rerum tempora voluptates enim ab distinctio dolor ut quos delectus illo dicta quia labore cumque fugiat consequatur.');
INSERT INTO `question` VALUES ('231', 'Earum ipsum iusto porro praesentium eius dolor corrupti vel voluptates ea voluptatum. ?', '1', '4', '11', '12', 'Ut voluptatem nemo recusandae tenetur fugit officiis et dolorum tempore provident quaerat neque ea voluptates atque cumque tempore sit id neque assumenda eos sit soluta mollitia unde eum molestias quos nihil minus atque enim reprehenderit iure tempore qui assumenda sit nisi et.');
INSERT INTO `question` VALUES ('232', 'Quae est molestias facilis quos commodi harum voluptate quam in sed ullam. ?', '1', '4', '11', '12', 'Reprehenderit quidem fugit non in sunt doloribus quisquam saepe debitis aut ut in inventore repellendus reiciendis sit magni quaerat aut adipisci aut aut sed consectetur consequatur autem amet et consequatur et fugiat nulla tempora et iure velit reiciendis vel non facilis et.');
INSERT INTO `question` VALUES ('233', 'Natus quidem atque consequatur quasi excepturi sunt sapiente quia aliquid consequatur quia et debitis qui distinctio quibusdam soluta corporis reprehenderit quo enim non sunt. ?', '1', '4', '11', '12', 'Sit eius asperiores rem quidem similique officiis delectus quia aut non libero id repudiandae ea deleniti quisquam id molestiae officia omnis.');
INSERT INTO `question` VALUES ('234', 'Similique nisi et ipsam velit officiis quo voluptatum odit rerum molestiae. ?', '1', '4', '11', '12', 'Cumque molestiae sit autem quos adipisci aperiam dolorem quae nesciunt delectus quo earum ut aut consequatur amet quas sapiente velit ut.');
INSERT INTO `question` VALUES ('235', 'Et sit excepturi aspernatur incidunt quaerat nobis iusto nemo accusantium et pariatur fugit molestiae architecto occaecati tempora et error ipsam totam similique fuga ad. ?', '1', '4', '11', '12', 'Ea adipisci vel fuga numquam ipsum et ullam odit ducimus et accusamus repellat quia et recusandae beatae deserunt totam cum autem aperiam corporis qui aliquam velit dicta aut aut nesciunt repudiandae sit consequatur veniam atque temporibus quidem est vel sit.');
INSERT INTO `question` VALUES ('236', 'Possimus illum accusantium et ipsum eos illum et voluptas molestiae saepe voluptatem ullam ex asperiores nulla ipsa voluptas rem et quibusdam quia. ?', '1', '4', '11', '12', 'Voluptas blanditiis distinctio aut in amet perspiciatis quaerat ipsa est et aut ipsum quis et esse eius tempora rerum tenetur qui libero.');
INSERT INTO `question` VALUES ('237', 'Vitae porro et labore quis odit esse qui voluptatem tenetur quia adipisci laborum eaque voluptates ad cum animi nihil doloribus nihil magnam rerum natus. ?', '1', '4', '11', '12', 'Accusamus saepe praesentium provident porro deleniti sapiente minima inventore voluptatem aut animi omnis mollitia dolor quisquam ut sunt libero maxime sapiente labore ipsa adipisci ea magnam mollitia fuga eius quibusdam expedita ea incidunt voluptate voluptas eos sit.');
INSERT INTO `question` VALUES ('238', 'Nobis numquam sit minima repudiandae ducimus iste doloremque eos quos et a quam nihil ipsa itaque cumque facilis nesciunt voluptate facilis. ?', '1', '4', '11', '12', 'Dolores molestiae modi doloremque dolor facere a praesentium beatae optio et quia nemo dolorem provident saepe ut dolorem odit ea placeat eos voluptatem laudantium blanditiis fuga tempore similique magnam aut ea velit dolores sunt fugit officiis est iusto sed culpa.');
INSERT INTO `question` VALUES ('239', 'Eaque sequi sit commodi error et qui consequatur ex sint veritatis aliquid ipsam nihil. ?', '1', '4', '11', '12', 'Nihil dolorem fugiat saepe sit rerum consectetur animi consequatur pariatur ea explicabo et inventore quia quae ut et quisquam et inventore maiores quaerat ea autem possimus sed esse.');
INSERT INTO `question` VALUES ('240', 'Sint explicabo fugiat eos optio omnis ut et dolore ut magni alias nihil. ?', '1', '4', '11', '12', 'Non accusantium eligendi aut aspernatur et ut voluptatem autem dolores officiis ut saepe accusantium molestias aut aliquid voluptatibus exercitationem architecto ipsum dolor similique expedita sint numquam et eos non ut et.');
INSERT INTO `question` VALUES ('241', 'Aut omnis aliquid nisi est quidem placeat quia quod et eum odit. ?', '1', '4', '11', '12', 'Beatae ducimus quia vel soluta ut perferendis rem aperiam inventore commodi dolor ea dolor sed veritatis exercitationem porro aut.');
INSERT INTO `question` VALUES ('242', 'Facilis ad dolores alias voluptatibus tempore laudantium recusandae esse sunt repudiandae et velit beatae amet qui eveniet esse itaque quas voluptas eos voluptatem. ?', '1', '4', '11', '12', 'Modi occaecati beatae et rerum earum dignissimos error animi nihil repudiandae doloribus minima nisi non tenetur ducimus harum impedit quasi aut esse tempore nihil hic in odio soluta assumenda unde in cum nulla et magnam quidem libero.');
INSERT INTO `question` VALUES ('243', 'Error consectetur qui earum non et fugiat inventore quia explicabo repellat tempora doloremque ea voluptatem eligendi sapiente repudiandae libero est non. ?', '1', '4', '11', '12', 'Molestias inventore at animi aperiam aut reprehenderit culpa ut itaque saepe explicabo officiis fugiat veritatis omnis optio id adipisci necessitatibus voluptatem deserunt culpa est tempora debitis exercitationem.');
INSERT INTO `question` VALUES ('244', 'Nihil et ut deleniti ratione architecto eum eos consequatur repellat ratione libero aperiam aut rem in deserunt odit nihil cum sapiente quibusdam. ?', '1', '4', '11', '12', 'Cum quia rerum rerum autem accusantium corrupti consectetur perferendis corporis eum aut tempora nisi maiores nulla quod aut eos fugit expedita rerum veniam fugiat neque voluptate ea quis sed officia et magnam doloribus fuga ea beatae tenetur aut eum est in distinctio.');
INSERT INTO `question` VALUES ('245', 'Quae esse delectus error quae rem repudiandae illum sed hic ea voluptatibus autem molestiae vel sit ullam fuga totam minus quis atque ut. ?', '1', '4', '11', '12', 'Itaque voluptas est nihil quia ab enim laborum iste voluptas aspernatur consequuntur quo eum nihil consequatur ullam fugit sit.');
INSERT INTO `question` VALUES ('246', 'Adipisci iusto commodi cumque nostrum ut exercitationem quo deserunt consequuntur libero reiciendis dolorum. ?', '1', '4', '11', '12', 'Et quas dolorem in enim qui modi esse ut sed quis aperiam voluptas velit a reprehenderit voluptatem explicabo non rem totam voluptatem cum repellat hic sunt voluptas totam quos sed omnis veniam qui rem.');
INSERT INTO `question` VALUES ('247', 'Rerum ducimus ab quis est amet quos a veniam modi et magnam quaerat velit quam voluptatem non nesciunt. ?', '1', '4', '11', '12', 'Non sint delectus consequuntur aut voluptatem eligendi amet tempore sunt aut ratione veniam cumque voluptas ducimus voluptas minima et aut architecto.');
INSERT INTO `question` VALUES ('248', 'Ut placeat quod eos esse molestias voluptatem qui et at totam fuga dolores quibusdam itaque tenetur possimus sit ut vel earum necessitatibus. ?', '1', '4', '11', '12', 'Quia ut rerum quisquam a non accusamus velit consequatur sed rerum iusto numquam aut provident quos magni nihil animi omnis qui consequatur minus quo est iusto aperiam odit dolor aspernatur recusandae sunt quos omnis dolorem libero placeat officiis reprehenderit ut doloribus.');
INSERT INTO `question` VALUES ('249', 'Praesentium occaecati saepe ut earum vero cupiditate voluptas deleniti dolore ut assumenda. ?', '1', '4', '11', '12', 'Blanditiis eos consequuntur impedit blanditiis sunt natus ea aut itaque omnis sit dolorem quisquam natus id quos accusantium sequi in nam illum dignissimos quae labore vitae rerum in.');
INSERT INTO `question` VALUES ('250', 'Eius tenetur itaque culpa soluta rem itaque aut veniam quis repudiandae. ?', '1', '4', '11', '12', 'Tempora nesciunt qui neque assumenda optio nulla molestiae omnis natus voluptate suscipit fugiat cupiditate temporibus accusantium omnis praesentium soluta nisi voluptas expedita dolorem odit odit autem.');
INSERT INTO `question` VALUES ('251', 'Tempora quia aut nihil sint non voluptate exercitationem ducimus qui earum accusamus. ?', '1', '4', '11', '12', 'Qui ipsa deleniti blanditiis enim sed explicabo aut facilis laudantium ut quas sit amet necessitatibus hic repudiandae et reiciendis repellat ipsam facilis mollitia optio omnis dolor ut et iusto quisquam eos sequi quos repellat occaecati provident non ipsum consequatur.');
INSERT INTO `question` VALUES ('252', 'Sint dicta pariatur nulla qui a aut accusantium natus repellendus consectetur autem veritatis velit facilis tenetur aliquam molestiae. ?', '1', '4', '11', '12', 'Ratione repellat perspiciatis eius consequuntur similique cum eius quo iste non laborum molestiae voluptas laudantium id aperiam occaecati sunt blanditiis ut aperiam officia ullam ab et qui accusamus non ut voluptatem aut fugit officiis enim optio et aut error enim perferendis.');
INSERT INTO `question` VALUES ('253', 'Cupiditate enim aspernatur dolor illum expedita consequuntur dicta consequatur sed est aperiam harum maiores non ad atque minima est nobis. ?', '1', '4', '11', '12', 'Omnis praesentium laudantium laboriosam sint voluptatem sint rem libero magni voluptas ullam officiis cum natus ex iusto doloremque porro est architecto quod dicta ut enim vero in exercitationem qui ipsa laboriosam libero sint aut aut et fuga velit a consequatur molestiae possimus.');
INSERT INTO `question` VALUES ('254', 'Suscipit hic iste debitis similique sed sint qui reiciendis beatae ut fugit. ?', '1', '4', '11', '12', 'Repellendus consequuntur harum quis ad veniam officia doloribus necessitatibus facilis porro soluta laborum nostrum qui ut ex voluptatem assumenda.');
INSERT INTO `question` VALUES ('255', 'Quia perspiciatis et nostrum et voluptatum esse pariatur id unde libero molestiae sequi qui aut autem ut rerum occaecati veritatis tenetur voluptates numquam. ?', '1', '4', '11', '12', 'A omnis vero quo accusantium ipsum sint rem inventore nostrum sed quibusdam quia nam ut aut aut similique ut facilis velit explicabo deserunt dignissimos.');
INSERT INTO `question` VALUES ('256', 'Unde tempore voluptatem iure est laboriosam id ea eligendi officiis incidunt non quas et autem ut ea. ?', '1', '4', '11', '12', 'Dignissimos dolore harum illum rem minus qui sapiente omnis maiores consequatur soluta sed voluptatem id numquam ut ea eum veritatis ratione.');
INSERT INTO `question` VALUES ('257', 'Ut quo ipsa officia deserunt deleniti quia aliquid aut non quis odit cumque eum consequatur id ut qui explicabo rem tempora voluptas quas placeat. ?', '1', '4', '11', '12', 'Sed blanditiis doloribus qui modi excepturi adipisci doloremque quo molestiae ad optio accusamus aut nesciunt a optio voluptas aut unde harum nihil labore dignissimos repellat autem harum facilis iure dolor vitae.');
INSERT INTO `question` VALUES ('258', 'Laborum dolor perferendis id mollitia exercitationem et eum odit ut dolorem exercitationem. ?', '1', '4', '11', '12', 'Facere sit similique ea aperiam tempora qui repellat eius eaque autem delectus possimus molestiae cum beatae minus iusto asperiores eligendi quas et temporibus in quibusdam non quae aut expedita enim et suscipit id aspernatur.');
INSERT INTO `question` VALUES ('259', 'Sit ipsam aut magnam illo nam aut aut et accusamus magni suscipit eos ab autem et suscipit. ?', '1', '4', '11', '12', 'Adipisci aliquid voluptatem voluptas commodi est deleniti at iste vel architecto possimus nulla non veniam et officiis sed aut sit.');
INSERT INTO `question` VALUES ('260', 'Voluptas voluptas vero est est aut quae dolorem vel et repellat perspiciatis itaque eos molestias quo nihil nihil eius rem deleniti praesentium corporis. ?', '1', '4', '11', '12', 'Omnis rerum quia vitae at consequuntur facilis aliquid rerum quasi autem ea ut voluptatum qui quas ex dolor sit qui aperiam sequi quidem nam.');
INSERT INTO `question` VALUES ('261', 'Velit quae quia qui molestiae est eos occaecati modi omnis aut numquam at ea veritatis libero et ex veritatis qui animi. ?', '1', '2', '25', '13', 'Aut fuga non asperiores voluptates atque et sapiente sequi accusamus praesentium placeat voluptas dignissimos rem voluptatum numquam quo ut pariatur reiciendis aut fugiat ut fugiat.');
INSERT INTO `question` VALUES ('262', 'Tempora laborum quia accusantium quas porro qui repudiandae enim rerum necessitatibus ullam commodi molestiae aliquid corporis non assumenda consequatur natus. ?', '1', '2', '25', '13', 'Fuga nulla amet ipsa perferendis et aut reprehenderit qui est suscipit recusandae qui nihil dolor quam tempora quas asperiores officia in ea quis.');
INSERT INTO `question` VALUES ('263', 'Ab quis quaerat facilis consequatur ea tenetur alias quidem unde architecto accusantium et ipsum cupiditate culpa alias. ?', '1', '2', '25', '13', 'Libero eos quia nihil labore omnis assumenda quia distinctio reprehenderit perspiciatis quam numquam eveniet nisi corrupti beatae voluptatibus iure aliquam ut rerum accusamus consequatur voluptatem a eos voluptatibus ratione id quam velit nam qui dicta ut deserunt vel.');
INSERT INTO `question` VALUES ('264', 'Minus aliquam ipsum eaque natus commodi excepturi porro itaque voluptate qui illum. ?', '1', '2', '25', '13', 'Voluptas consequatur et inventore possimus et molestias corrupti sequi beatae iure temporibus aut dolorem fuga vel est sed ut similique quibusdam assumenda omnis voluptatem quis molestias quasi illo ducimus vero repellat non iste fugiat sequi ut quod.');
INSERT INTO `question` VALUES ('265', 'Aliquam sint nemo sed facilis et a vero est dignissimos incidunt commodi porro omnis voluptatem optio inventore ut. ?', '1', '2', '25', '13', 'Molestias quas non eius mollitia distinctio aut commodi et amet recusandae est amet tenetur sequi nihil facilis blanditiis dolorem itaque pariatur neque quod ab quas occaecati commodi error ipsum accusantium mollitia sed molestiae sit quod molestiae esse repellat sapiente recusandae non possimus quis.');
INSERT INTO `question` VALUES ('266', 'Tempore impedit nihil ea asperiores aut enim qui earum est consequatur et in. ?', '1', '2', '25', '13', 'Doloribus tempora consequatur et odit totam in quia similique aut laborum dolorem explicabo et in deleniti sint quibusdam aliquid odit illum eaque labore eos similique.');
INSERT INTO `question` VALUES ('267', 'Dolorem fugit quas rerum dolorem in sequi alias quia commodi omnis non repellat dolorem ad. ?', '1', '2', '25', '13', 'Voluptas dolore optio maxime est qui ipsa in quaerat sit quisquam esse harum aliquid dolorem minus rerum qui rerum qui nihil itaque sed.');
INSERT INTO `question` VALUES ('268', 'Iste atque voluptatem cumque reprehenderit cum dignissimos est itaque voluptatum autem eum et debitis distinctio et possimus cupiditate velit soluta. ?', '1', '2', '25', '13', 'Explicabo expedita consequatur quas et fugiat vel possimus accusantium sunt quo nemo asperiores autem aspernatur corporis sint sint nostrum sint praesentium voluptatem omnis sed officiis nemo ex.');
INSERT INTO `question` VALUES ('269', 'Autem ut iusto eum nemo animi voluptas porro necessitatibus nobis est placeat et placeat hic tenetur eum ad doloremque ipsam sed aperiam. ?', '1', '2', '25', '13', 'Est hic temporibus sed et accusamus sunt quo similique corrupti dolore voluptatem voluptas recusandae aut dolor ut perferendis iure vitae et sint aliquam sapiente minus.');
INSERT INTO `question` VALUES ('270', 'Adipisci aperiam ut veritatis rerum facilis sit quo possimus in molestiae consequuntur beatae tempore eos aliquid sed qui impedit in aut ut sunt aut. ?', '1', '2', '25', '13', 'Minima est voluptatibus non ipsa velit veritatis rerum et consequuntur minima ut odit quibusdam officia sit perferendis voluptatem alias sed fugit molestiae laboriosam qui et aspernatur quia officiis provident facilis odit repellat voluptate expedita qui aperiam.');
INSERT INTO `question` VALUES ('271', 'Ipsum sunt in voluptatibus qui dolor qui illum quos qui iste voluptas alias officia rerum. ?', '1', '2', '25', '13', 'Ut quas nihil ut itaque vitae nemo consequuntur temporibus mollitia in quam quos quisquam et maxime voluptas delectus nesciunt at nihil qui aut ad esse debitis incidunt error hic qui cumque explicabo sit occaecati.');
INSERT INTO `question` VALUES ('272', 'Est et eos et voluptatem quo ex explicabo consequuntur maiores molestias eum. ?', '1', '2', '25', '13', 'Inventore non ut cumque consequatur quasi expedita nihil culpa dolorem quia illum vitae minima est vel similique perferendis non et eveniet distinctio.');
INSERT INTO `question` VALUES ('273', 'Et dolorem nemo consequuntur debitis assumenda et qui ut quis non et ea harum facere at culpa velit dolor quidem molestiae ut minus. ?', '1', '2', '25', '13', 'Aut rerum cumque molestias sed fuga qui architecto commodi molestias harum quaerat ut dolores ut ipsa molestias sint odit vitae ea.');
INSERT INTO `question` VALUES ('274', 'Eveniet neque est fuga repudiandae praesentium fugiat atque quia sed ad animi incidunt eos. ?', '1', '2', '25', '13', 'In qui qui omnis sed libero voluptas eligendi omnis qui voluptas libero architecto ut et in non quas debitis consequatur et id qui et animi molestiae molestiae illum qui similique est occaecati nam quis possimus voluptates minima.');
INSERT INTO `question` VALUES ('275', 'Hic iure a rerum consequatur et omnis error omnis magnam hic voluptatum qui ab molestiae sed illum aut. ?', '1', '2', '25', '13', 'Quia esse velit quam id ad est odio incidunt voluptatem voluptas et vel id laborum hic consequatur itaque ut dolor est accusamus qui saepe.');
INSERT INTO `question` VALUES ('276', 'Saepe ullam debitis quis qui harum accusantium excepturi vero ut rerum sapiente voluptates cum. ?', '1', '2', '25', '13', 'Totam et quia voluptas consectetur maxime nobis earum iure nulla consequatur est et quam est reiciendis sint ex quae eaque repellendus sed labore et repellat itaque ut officia harum et accusantium fugiat quia dolorum est consequatur fuga delectus necessitatibus.');
INSERT INTO `question` VALUES ('277', 'Qui ut soluta aut eum voluptate quisquam et aut sed dolorem debitis dolorem hic sit natus ut perspiciatis tempora. ?', '1', '2', '25', '13', 'Beatae tenetur ea iste quos sit sit ut debitis nemo dignissimos qui iste excepturi voluptates reprehenderit non aliquam beatae cum veritatis odit quis voluptates totam.');
INSERT INTO `question` VALUES ('278', 'Natus sit delectus aliquam qui illum ipsam dolorem eum ipsam animi. ?', '1', '2', '25', '13', 'Veniam incidunt non est est modi est et placeat commodi sed repudiandae ab non est cupiditate ut eum nam dolorem animi totam ipsum et ex dolores ratione blanditiis deleniti recusandae iure consequatur.');
INSERT INTO `question` VALUES ('279', 'Aut earum dolores quisquam ullam quis quia quaerat voluptatem dignissimos nostrum repudiandae et eum quis corrupti blanditiis nostrum non nulla distinctio eos. ?', '1', '2', '25', '13', 'Atque suscipit placeat laborum facere sunt esse iusto ratione culpa eum et optio ut dolorem molestiae hic dolores non.');
INSERT INTO `question` VALUES ('280', 'Adipisci qui dolore sunt cupiditate odit a veniam ea quis consequatur nisi neque et eius eum eius provident dolorem. ?', '1', '2', '25', '13', 'Debitis corrupti similique praesentium nemo sint suscipit asperiores ipsa minima quo voluptatum saepe quod quaerat voluptatem asperiores suscipit consequatur non sit sint nemo id nihil nobis unde quas aut ducimus eos.');
INSERT INTO `question` VALUES ('281', 'In necessitatibus sapiente eos dolores et commodi consequatur incidunt ab porro consequatur voluptas quia et et iusto voluptatem doloribus exercitationem. ?', '1', '2', '25', '13', 'Nesciunt atque libero veniam blanditiis dolorum voluptatem officiis assumenda dignissimos mollitia dolorem sed tempora velit doloremque est voluptatem adipisci eius qui quia soluta officiis.');
INSERT INTO `question` VALUES ('282', 'Vero voluptatem omnis quo dolorum accusantium ut ut neque expedita architecto aspernatur quis voluptatem et esse dolorem. ?', '1', '2', '25', '13', 'Harum vero est et ducimus ut ut rerum expedita vel qui quisquam est nihil voluptas sunt dolor tenetur eum.');
INSERT INTO `question` VALUES ('283', 'Ut cum enim laboriosam aliquam quia qui quo temporibus enim asperiores aliquid labore omnis saepe eveniet aut provident saepe assumenda aspernatur ex. ?', '1', '2', '25', '13', 'Magnam est exercitationem et asperiores aut laboriosam recusandae sit sed voluptas quia pariatur perspiciatis iure quis soluta qui atque tempora eligendi.');
INSERT INTO `question` VALUES ('284', 'Voluptatibus non sapiente eaque velit reiciendis consequatur doloremque rerum nobis aliquam velit omnis repellendus quae laborum omnis suscipit dolores error dolorem placeat laboriosam voluptas. ?', '1', '2', '25', '13', 'Illum sequi assumenda repellat quidem voluptate rerum consequuntur aspernatur labore corporis velit eum nisi et beatae sint sint aliquid qui voluptas sequi ducimus magni suscipit id dolores sapiente qui vel doloribus nam ullam sit iste harum.');
INSERT INTO `question` VALUES ('285', 'Vel ad deleniti fuga et voluptatibus expedita consequuntur tempora beatae temporibus unde aut quasi repellat similique. ?', '1', '2', '25', '13', 'Autem ea est eos et placeat architecto fugit corporis voluptate et qui quia eveniet consectetur magnam est animi incidunt incidunt et voluptas voluptatum consequuntur nobis repellendus nemo nam sit sed corporis sint asperiores suscipit sunt fugiat debitis ad.');
INSERT INTO `question` VALUES ('286', 'Consequatur aspernatur asperiores eius labore quod consequatur explicabo aut dolores explicabo eligendi deleniti ut nobis est. ?', '1', '2', '25', '13', 'Eligendi voluptatem voluptas dolor velit et voluptatem aut nulla officia dignissimos est eaque iusto porro id qui harum nihil possimus totam totam quis est dolor dolore nihil veniam nihil recusandae quos exercitationem debitis cumque maiores odio quia ut.');
INSERT INTO `question` VALUES ('287', 'Corporis at magnam voluptatem mollitia nemo atque aut repudiandae rerum optio ipsum consequatur aut fugit laborum non sunt similique. ?', '1', '2', '25', '13', 'Rerum sit totam id deserunt voluptatem ea ut assumenda ipsum sapiente consequuntur non officia velit molestiae cupiditate eius et harum unde et consequuntur dolorem in.');
INSERT INTO `question` VALUES ('288', 'Quos et ratione aliquid voluptatem dignissimos eos quam officia quo modi incidunt optio et. ?', '1', '2', '25', '13', 'Optio sit excepturi quia quaerat cum possimus quaerat asperiores in unde qui reprehenderit eveniet a aut perferendis maxime ipsam voluptas modi tempore nisi et possimus iure inventore nemo magnam iste quia sunt.');
INSERT INTO `question` VALUES ('289', 'Officiis eligendi tenetur id eaque aut et beatae alias omnis iste voluptatem expedita et consequatur accusantium quisquam ab vel et. ?', '1', '2', '25', '13', 'Sint accusantium corrupti modi delectus iste deleniti totam officia ratione inventore sunt exercitationem nisi dicta eos facere unde aut minus quas quam dolore reprehenderit ut voluptas quisquam et repellat facilis cum provident quasi iste sunt maiores provident voluptate aliquid fuga.');
INSERT INTO `question` VALUES ('290', 'Reiciendis voluptatem voluptates ea in possimus et ducimus omnis autem esse. ?', '1', '2', '25', '13', 'Ut magni sequi est a sunt et atque nulla iste rerum dolorem sunt in commodi quia sed adipisci suscipit porro sit dolore sunt.');
INSERT INTO `question` VALUES ('291', 'Et et cumque qui et illum quia soluta eum occaecati non velit soluta eligendi nobis voluptates voluptate harum. ?', '1', '2', '25', '13', 'Molestiae iure ab enim eligendi eius omnis accusantium alias quam ea nihil necessitatibus temporibus eos voluptas vitae iste aliquam totam deleniti libero saepe eius autem odio aperiam et rerum voluptas occaecati nostrum qui labore assumenda.');
INSERT INTO `question` VALUES ('292', 'Quo aliquid molestias voluptatem amet consequatur non veritatis deleniti iusto tempore quidem. ?', '1', '2', '25', '13', 'Sint alias nostrum et non enim ad nam occaecati aut fugit praesentium vel recusandae odit dignissimos qui atque animi dolores doloribus nulla omnis iste modi rerum nemo esse voluptatem earum nulla aut autem laborum repellat quo eligendi.');
INSERT INTO `question` VALUES ('293', 'Corporis omnis sed odio blanditiis aut veniam tempore est suscipit velit omnis est optio amet quis et suscipit non velit cupiditate non suscipit. ?', '1', '2', '25', '13', 'Nesciunt non nihil quam esse dolore repudiandae reprehenderit mollitia sapiente sed sunt dolor placeat voluptate voluptas quaerat quidem error dolores nobis voluptatem qui velit commodi consequatur vel doloremque quo nisi ad vero qui officiis.');
INSERT INTO `question` VALUES ('294', 'Suscipit et quas debitis voluptatibus dicta sunt porro molestiae odit quibusdam quos eius aut officia vel doloribus laudantium repudiandae soluta consequatur est et blanditiis. ?', '1', '2', '25', '13', 'Odit sequi et perspiciatis quia at dolorem eum qui at ea aut ut libero aut at aut commodi asperiores qui odio neque veritatis vel laudantium ea sit voluptatem at minima doloremque voluptatem voluptatum ducimus molestiae non est aut laboriosam eius.');
INSERT INTO `question` VALUES ('295', 'Quia ipsam et rerum aut numquam rerum voluptas vero quaerat eveniet ut consequatur doloribus quia ut ad enim ipsam officiis aut modi. ?', '1', '2', '25', '13', 'Qui aspernatur placeat possimus corrupti odio nihil consectetur reiciendis non reprehenderit quod similique id distinctio aut consequuntur eos voluptates mollitia et qui corrupti fugiat ut.');
INSERT INTO `question` VALUES ('296', 'Sint qui beatae et esse aut sunt assumenda quas dolores beatae inventore culpa voluptatem aut omnis debitis quo dolorum voluptate qui similique aut itaque. ?', '1', '2', '25', '13', 'Libero harum sapiente porro laudantium ut maiores et incidunt magnam non in inventore non nulla distinctio accusantium est enim vel aut accusantium harum.');
INSERT INTO `question` VALUES ('297', 'Hic et eius eius eligendi commodi velit corporis harum fuga temporibus omnis autem voluptatibus eligendi veritatis aut nam. ?', '1', '2', '25', '13', 'Explicabo nostrum nemo vel necessitatibus omnis ea laboriosam unde ducimus saepe optio qui porro atque aliquid maxime voluptas ut nam architecto est molestias et.');
INSERT INTO `question` VALUES ('298', 'Ut labore doloribus ipsum aliquid doloremque aliquam vel voluptas dolorem consequatur sed aut dolorum voluptatibus saepe voluptatem eveniet eos modi fuga. ?', '1', '2', '25', '13', 'Dicta ex quo iure voluptatum aut ab minima ab earum similique illum nihil voluptatem iste natus dolorem voluptate doloremque eos quae dolorem.');
INSERT INTO `question` VALUES ('299', 'Nulla cum aliquam sed aliquid minus amet voluptatem aut consequatur enim officiis quibusdam perspiciatis impedit aperiam voluptas voluptatem est commodi et ipsa soluta. ?', '1', '2', '25', '13', 'Asperiores omnis temporibus aut nesciunt magnam aut est non occaecati molestias fugiat reprehenderit a necessitatibus quam ut laborum non cum placeat omnis placeat dolorem nulla voluptas est officia.');
INSERT INTO `question` VALUES ('300', 'Sed minus ducimus labore nesciunt vitae repellendus sequi eveniet aspernatur error velit modi qui deserunt non minima omnis ad magnam sed itaque incidunt maiores. ?', '1', '2', '25', '13', 'Quos sed ex voluptas sint voluptatum aperiam nisi distinctio voluptas aut laudantium sit ea hic et rerum voluptas ut repellat reprehenderit ipsum et placeat iusto qui voluptates esse adipisci possimus architecto.');
INSERT INTO `question` VALUES ('301', 'Nam consequatur fuga veniam sit ut ab quo ut qui aspernatur ipsum voluptatem omnis sunt at temporibus minus et adipisci et perferendis. ?', '1', '3', '35', '14', 'Aut dolores quaerat et quo blanditiis dolorum inventore omnis doloribus itaque omnis est eius cum inventore optio fuga harum tempore laborum minus delectus quia sunt ut quia veritatis eum architecto maiores et commodi et beatae eos et rerum.');
INSERT INTO `question` VALUES ('302', 'Hic voluptates aliquam nostrum eos quasi sapiente reiciendis ratione ex corporis sequi neque eveniet ea ut molestiae. ?', '1', '3', '35', '14', 'Mollitia voluptatibus maiores magnam rem minima culpa aut provident recusandae temporibus esse praesentium sed aspernatur et cupiditate repudiandae qui dolor dolore corrupti est beatae.');
INSERT INTO `question` VALUES ('303', 'Aspernatur veritatis ea illum consequatur similique veniam quas omnis ex quis quidem molestiae perferendis. ?', '1', '3', '35', '14', 'Neque quis qui quisquam laborum et dignissimos aliquam enim molestiae quisquam perspiciatis expedita voluptates quos cum culpa iste aspernatur odit exercitationem veritatis dicta voluptate unde ducimus nobis alias aut consequatur similique est quam.');
INSERT INTO `question` VALUES ('304', 'Hic in molestias architecto autem velit blanditiis id harum ratione magni neque est ipsa et dolores repellat laudantium. ?', '1', '3', '35', '14', 'Et quo eum qui et unde dolores rerum voluptas dolores delectus dolores sunt quia et id qui ipsum asperiores numquam et eveniet ut et fuga eum aperiam pariatur architecto accusantium rerum sint nam eos ullam vitae perspiciatis nostrum quas.');
INSERT INTO `question` VALUES ('305', 'Voluptatibus voluptas vel veniam adipisci amet voluptatem rerum iure odit dolores nam et eaque incidunt. ?', '1', '3', '35', '14', 'Quo maiores numquam laudantium animi dolores fuga rerum ipsam voluptatibus impedit nihil libero voluptate rem aperiam illum similique eaque dolores cupiditate temporibus eos illum placeat dolorem harum voluptas veniam non doloribus quia qui.');
INSERT INTO `question` VALUES ('306', 'Mollitia dolor id alias similique nostrum cumque sapiente porro perspiciatis omnis quis veniam similique saepe amet officia et consequatur in ducimus. ?', '1', '3', '35', '14', 'Iure aut voluptatum velit similique omnis cum cum nam velit recusandae et esse aut sed ex laudantium qui doloremque est quisquam deserunt atque et cumque sunt.');
INSERT INTO `question` VALUES ('307', 'Autem qui corrupti esse saepe placeat officia non dolorum quibusdam nihil a et voluptatem iusto mollitia voluptas ut ducimus et quos. ?', '1', '3', '35', '14', 'Recusandae dignissimos omnis placeat libero maxime est est explicabo sunt quaerat et quos expedita dolorum repellendus voluptatem unde nemo ut similique exercitationem eveniet et sequi ratione sunt aliquam et asperiores unde inventore rerum aut.');
INSERT INTO `question` VALUES ('308', 'Delectus amet culpa odio ea eligendi odit nulla iure quis dolores sit ut. ?', '1', '3', '35', '14', 'Id voluptatem error laboriosam et quisquam animi quia et quaerat voluptas nam quam fuga temporibus iste velit adipisci voluptas dolorum itaque ut sint beatae qui voluptatibus qui qui.');
INSERT INTO `question` VALUES ('309', 'Totam vitae velit consectetur unde vero fugit blanditiis voluptas veritatis pariatur nemo. ?', '1', '3', '35', '14', 'Dolorem odit ut dolorum illum et occaecati beatae officiis et qui molestias sint porro in ut asperiores molestias voluptas soluta ut quo dignissimos architecto qui dicta sint culpa est autem fugit numquam aspernatur natus.');
INSERT INTO `question` VALUES ('310', 'Non ea excepturi deserunt sed mollitia laboriosam libero ad cum incidunt laudantium doloribus ut nemo omnis quibusdam. ?', '1', '3', '35', '14', 'Tempore eaque similique commodi maiores voluptates dolore dolorum ullam cum quod provident pariatur aut sunt quam qui blanditiis molestias blanditiis magni quam voluptates vel iste libero aliquid laudantium autem fugit voluptatibus ratione et blanditiis laudantium sed dolorem totam fugit atque porro minima.');
INSERT INTO `question` VALUES ('311', 'Eos odit est optio quia ea sit occaecati necessitatibus id minus laudantium repellat cumque voluptatem omnis quibusdam non voluptatibus rerum. ?', '1', '3', '35', '14', 'Ea et quidem officia temporibus distinctio labore explicabo et voluptas consequuntur ad officiis dolor deserunt saepe deserunt veritatis nulla.');
INSERT INTO `question` VALUES ('312', 'Aperiam dolorum dolorem quidem aut quia asperiores qui ducimus aut nulla quidem atque et voluptas dolor et rerum non quidem. ?', '1', '3', '35', '14', 'Aliquam eius quo modi impedit ut aut eos autem voluptatibus expedita molestias ab ipsam voluptatem doloremque sed esse mollitia nemo ad.');
INSERT INTO `question` VALUES ('313', 'Magni reprehenderit rerum quos consequatur dignissimos vel maiores fugiat esse assumenda quia asperiores sit. ?', '1', '3', '35', '14', 'Vitae cum quis excepturi qui aut tempora natus magnam quaerat nam numquam dolores sint consequatur eum accusamus enim a.');
INSERT INTO `question` VALUES ('314', 'Voluptatem ducimus corrupti dolorum doloremque consequatur occaecati tempora rerum laborum amet aperiam dolor fugiat saepe dolorem sunt maiores atque et ipsam quisquam vitae. ?', '1', '3', '35', '14', 'Assumenda eveniet veritatis dolores placeat non fugiat velit non recusandae et quaerat deserunt laudantium delectus assumenda commodi amet deserunt.');
INSERT INTO `question` VALUES ('315', 'Sed sit minima perferendis incidunt et id illo commodi dignissimos quod earum dolores velit modi qui repudiandae. ?', '1', '3', '35', '14', 'Qui natus provident nisi fugit odit qui magnam laudantium omnis itaque rerum exercitationem repellendus maiores est ut accusantium sit quia iusto dolor necessitatibus.');
INSERT INTO `question` VALUES ('316', 'Nihil praesentium temporibus quos eum in totam expedita dolorum facere dolor et fuga porro hic et doloribus voluptatem et et quaerat nemo labore. ?', '1', '3', '35', '14', 'Atque consequatur sunt tenetur qui ullam fugiat quia adipisci nostrum iusto laborum libero laborum ipsum velit voluptatem neque soluta voluptas ut et minima quia quia eius rerum tempora sit facilis et debitis.');
INSERT INTO `question` VALUES ('317', 'Hic deserunt sunt incidunt saepe beatae in modi quae qui qui atque laborum nam earum exercitationem. ?', '1', '3', '35', '14', 'Esse accusantium ea tenetur nulla praesentium illum officia a at neque sint ea eaque quia eum odio cum aspernatur qui velit est vero ut et quia dolores.');
INSERT INTO `question` VALUES ('318', 'Cum laboriosam sequi deleniti error id sit delectus officiis sapiente tempore et ut vel repellendus dolorem dolorem non ducimus aliquam. ?', '1', '3', '35', '14', 'Dolores incidunt fugit iste accusantium et exercitationem quo aspernatur tempore est aut fugit ut animi non ipsa saepe qui dolores sunt aspernatur dicta nam quos et aperiam.');
INSERT INTO `question` VALUES ('319', 'Aut minima rerum fugiat numquam aut necessitatibus animi doloribus nobis voluptatibus et pariatur quisquam praesentium quis dolor dolor deserunt nesciunt labore. ?', '1', '3', '35', '14', 'Cum inventore rem nulla odit ullam voluptatem eveniet non et quibusdam in perferendis voluptatem aut molestias deserunt quis ut.');
INSERT INTO `question` VALUES ('320', 'Assumenda unde earum assumenda facere error vitae nihil non ratione sit sint dolorem exercitationem cum. ?', '1', '3', '35', '14', 'Nihil ut deleniti perspiciatis quis voluptatem nemo sapiente pariatur minus rerum est dignissimos illo aliquid eius qui reiciendis aliquam consequuntur rerum at.');
INSERT INTO `question` VALUES ('321', 'Tempora deleniti maiores atque fugiat placeat et quae pariatur at qui quia sit rerum sint qui velit aspernatur autem officia sit. ?', '1', '5', '33', '15', 'Quis eligendi dignissimos quae fugiat harum ut dolorum consequatur modi et sapiente quia ullam nulla quasi omnis iure qui totam molestias doloremque molestiae eaque iste similique aut at sint culpa velit eaque non cum tenetur libero et.');
INSERT INTO `question` VALUES ('322', 'Id dignissimos consequatur deserunt praesentium repudiandae alias nesciunt id aspernatur blanditiis quo ut. ?', '1', '5', '33', '15', 'Voluptas rem natus nemo placeat aspernatur adipisci accusamus et modi aspernatur voluptate sunt est earum ut aut et ullam animi similique veniam aperiam.');
INSERT INTO `question` VALUES ('323', 'Dolore quisquam dolor rerum ipsam qui maxime repudiandae nulla suscipit dolores aliquam maxime consequuntur pariatur incidunt. ?', '1', '5', '33', '15', 'Consequatur cumque nam exercitationem sunt et non possimus quaerat veniam totam dolorem quaerat ex cum nemo voluptas omnis et dolore quo.');
INSERT INTO `question` VALUES ('324', 'Adipisci ut expedita ex amet atque quis quis sint autem praesentium ut corporis culpa quo natus optio consequatur quam optio ducimus deserunt. ?', '1', '5', '33', '15', 'Quaerat ut est dolor non magni eum officiis debitis et sed sed qui tempora repellendus libero fugit enim amet dolores sunt nihil qui sed quos ipsam non vero repellendus aut delectus vel aut impedit voluptas ipsa aut quia error.');
INSERT INTO `question` VALUES ('325', 'Quasi ducimus laboriosam eveniet iste ipsa et tempora ut recusandae est iure beatae voluptate occaecati ipsa dolorem non. ?', '1', '5', '33', '15', 'Quia deserunt ea quia nobis rerum ut ut voluptatum necessitatibus tempora ratione quasi eligendi molestias sed sapiente suscipit deserunt temporibus rerum iure officia et ipsam nemo dolor recusandae quibusdam ut consequatur sed qui ea odio.');
INSERT INTO `question` VALUES ('326', 'Voluptas voluptates asperiores quia aut nihil reiciendis ut beatae sit necessitatibus sequi perspiciatis soluta ipsa quasi placeat beatae non assumenda nisi sapiente. ?', '1', '5', '33', '15', 'Nisi consequuntur repudiandae et rem consequuntur et velit quo dolorum perferendis perspiciatis perferendis maiores quam nostrum adipisci quis eveniet in quia repellendus omnis eum sapiente.');
INSERT INTO `question` VALUES ('327', 'Recusandae sed porro voluptates sit earum fugiat mollitia autem perspiciatis commodi et dolorem. ?', '1', '5', '33', '15', 'Enim animi qui dolorum consequatur est rem neque est quibusdam consectetur nihil numquam impedit vel porro natus quas nesciunt doloribus beatae aut aut tenetur quam saepe aut.');
INSERT INTO `question` VALUES ('328', 'Error eum maiores rerum ipsam beatae et nobis explicabo culpa dolorem vitae. ?', '1', '5', '33', '15', 'Maiores repellat nemo sapiente quia voluptas quas et vitae ea velit voluptas ipsa ut vitae nostrum ratione numquam atque officiis tempora similique.');
INSERT INTO `question` VALUES ('329', 'Nihil dolor facere libero possimus et nemo sequi dicta ipsum pariatur non aut veritatis accusantium voluptatem cum. ?', '1', '5', '33', '15', 'Tenetur aut sunt ex hic officia modi rem reiciendis placeat aut tempore reprehenderit nam reprehenderit id magnam facilis quam porro et.');
INSERT INTO `question` VALUES ('330', 'Cupiditate nobis sit et inventore molestiae quia facere corrupti autem nam sint ut eum ab ab dolorem enim repellat et ut fugit quia necessitatibus. ?', '1', '5', '33', '15', 'Placeat sunt quo sapiente rem nihil dolores sit tenetur earum cumque qui ratione optio perferendis tenetur quis sed ut quas aut dolorem nostrum corrupti tempora est assumenda maxime suscipit ipsam distinctio blanditiis facere natus officiis quisquam illo perferendis quos nihil reiciendis voluptatem accusamus.');
INSERT INTO `question` VALUES ('331', 'Qui eveniet dolorem quo ea temporibus dolores provident vero fugit magni vel. ?', '1', '5', '33', '15', 'Ullam et perferendis corrupti dolorem sit est eaque ut nulla dolor aperiam eum et pariatur dolorum et fuga aut itaque quia facere dolores iusto nobis necessitatibus expedita culpa quo repellat totam qui aut amet quia.');
INSERT INTO `question` VALUES ('332', 'Excepturi laudantium cumque sed quis voluptatibus id et aut necessitatibus distinctio corporis reprehenderit animi nihil rem dolor sed nihil et delectus. ?', '1', '5', '33', '15', 'Quos dolor omnis eaque id quaerat id rerum architecto molestiae amet aut id aut ut laborum in est tempora ut.');
INSERT INTO `question` VALUES ('333', 'Adipisci accusantium voluptates voluptatibus quae alias quia quasi assumenda dignissimos ullam et dolore earum consequatur et architecto vel quam earum reiciendis nihil. ?', '1', '5', '33', '15', 'Laudantium iste praesentium magni unde voluptatibus earum adipisci voluptate labore nihil tempora voluptatem officiis est veritatis libero eum id qui natus voluptates vero maxime delectus fugiat sit et omnis temporibus illum fugit dolor non est perspiciatis.');
INSERT INTO `question` VALUES ('334', 'Vitae excepturi laudantium possimus tempora reprehenderit est provident earum ut quisquam est quia est illum culpa quibusdam quisquam impedit dolor commodi non et. ?', '1', '5', '33', '15', 'Quidem ut corrupti voluptate enim commodi rerum cum velit maiores fugiat quaerat minima voluptas ullam incidunt voluptas placeat asperiores qui vel animi nobis voluptas sit qui unde odit temporibus quae necessitatibus sit cumque voluptates quia mollitia.');
INSERT INTO `question` VALUES ('335', 'Ut quo neque error commodi est quod vel dicta libero cupiditate eum blanditiis aliquid laudantium delectus explicabo aut fugit omnis aut. ?', '1', '5', '33', '15', 'Rerum nisi sequi sunt rerum voluptates placeat neque repellat quibusdam ex aut sunt iure quidem quo corrupti delectus blanditiis qui ea libero optio iste est et et sapiente esse.');
INSERT INTO `question` VALUES ('336', 'Sit alias nam voluptatem et iste temporibus vitae dolorem et et. ?', '1', '5', '33', '15', 'Aut sit qui iusto qui libero dolores officia iste quia commodi delectus ducimus asperiores quasi maiores aliquam doloremque et.');
INSERT INTO `question` VALUES ('337', 'Non eligendi dolore dolores commodi repudiandae alias eum et laudantium iure eos ut et. ?', '1', '5', '33', '15', 'Ut omnis fugit et ex exercitationem voluptate porro cupiditate mollitia ex mollitia nam modi eos molestiae sit quisquam quisquam amet doloremque illum qui ut dignissimos ea.');
INSERT INTO `question` VALUES ('338', 'Corrupti dignissimos qui et dolores ut soluta officia dolorum enim architecto consequatur labore maiores sed iure veritatis et in voluptatibus. ?', '1', '5', '33', '15', 'Saepe earum totam pariatur minima molestiae aut est et porro delectus voluptas et velit facere reprehenderit sunt sed delectus velit.');
INSERT INTO `question` VALUES ('339', 'Omnis iste qui eos nostrum veritatis aut dolorum vero corrupti dignissimos accusantium placeat eaque consectetur. ?', '1', '5', '33', '15', 'Facilis provident sed quam doloremque ipsa sed maxime et sit voluptatem veritatis voluptas eius non quae vitae quibusdam numquam ducimus ea possimus quam aut recusandae ipsum modi modi totam omnis labore.');
INSERT INTO `question` VALUES ('340', 'Cupiditate similique delectus adipisci harum illo unde nostrum quo voluptate qui officiis voluptas omnis corrupti aliquam aliquam dolorem nisi voluptates eaque. ?', '1', '5', '33', '15', 'Voluptatem vel est quae in illo tempore consequatur optio atque laudantium totam iusto rerum reprehenderit iste facere voluptate dolor omnis vero sapiente deserunt sed a aut doloribus quia et accusamus est eum officia vel error voluptatem.');
INSERT INTO `question` VALUES ('341', 'Omnis ut eligendi fuga vitae sed id enim non temporibus repudiandae aut doloribus porro ut iste. ?', '1', '5', '33', '15', 'Voluptatem accusantium nam exercitationem sed consequatur et nulla deleniti error quia maxime sapiente mollitia sapiente aut fuga libero voluptates accusantium facere.');
INSERT INTO `question` VALUES ('342', 'Sequi sed similique cumque officia adipisci distinctio beatae maxime accusamus illum asperiores molestiae inventore voluptatem a officiis autem et repellat ut minima. ?', '1', '5', '33', '15', 'Vitae aut aut voluptatum veritatis necessitatibus sit inventore ullam et totam ratione ipsum sed dolorum nesciunt laboriosam beatae ad maiores aut consequatur sed dolorem labore consequuntur enim beatae repudiandae quos at maiores occaecati deleniti praesentium ipsam vel quis.');
INSERT INTO `question` VALUES ('343', 'Et placeat eum et dolorum quas dolor occaecati in ut quidem temporibus porro ab excepturi. ?', '1', '5', '33', '15', 'Aut atque facere modi corporis modi enim eaque rerum optio ut eligendi nam voluptas sed dolor assumenda qui dolores qui vel explicabo.');
INSERT INTO `question` VALUES ('344', 'Eius occaecati minima est quisquam soluta accusamus odio eaque fugit reprehenderit ex molestias ipsa rerum inventore nihil. ?', '1', '5', '33', '15', 'Asperiores nulla quis alias nostrum molestiae et magnam perspiciatis sit quae id modi molestiae consequatur laborum sequi neque corporis at blanditiis consequuntur est et quam qui quam vel consequatur aut sed ut voluptatem vitae nam dolor minima.');
INSERT INTO `question` VALUES ('345', 'Provident explicabo dicta animi mollitia omnis odit dolores voluptate eaque voluptates cum dolorum nostrum labore voluptas voluptatem et porro sequi doloremque sed deleniti. ?', '1', '5', '33', '15', 'Deleniti ea suscipit aut qui corporis tempora dolores similique animi atque molestiae ab animi voluptatem ratione labore nulla iste placeat in et occaecati eos consequatur.');
INSERT INTO `question` VALUES ('346', 'Dolorum et animi et ab soluta sed distinctio quod ut dolorem nihil. ?', '1', '5', '33', '15', 'Optio fugiat dignissimos repellat eveniet itaque minus earum numquam voluptatem sit odio sequi unde a esse earum perferendis et amet tenetur voluptatem quis nostrum ab dolores.');
INSERT INTO `question` VALUES ('347', 'Occaecati quis sed ipsam asperiores accusamus vel quibusdam est mollitia voluptatem et expedita autem voluptatem aut molestias nihil qui. ?', '1', '5', '33', '15', 'Itaque exercitationem recusandae deleniti error facilis nihil inventore ut velit explicabo voluptatem labore adipisci saepe adipisci nam est expedita voluptates aut explicabo omnis id et omnis placeat dolores nostrum quis labore aut veniam.');
INSERT INTO `question` VALUES ('348', 'Fugit eaque in doloribus ut quas qui ex officiis eum labore nihil dolorem accusantium laborum corrupti dolor beatae sequi molestias esse et. ?', '1', '5', '33', '15', 'Sit est voluptatum voluptatum consectetur dolorem deserunt ut possimus dolore rerum assumenda dolore temporibus dolorum dolores unde iure temporibus consequatur nemo amet a eius animi aut officiis tenetur et voluptas rerum voluptatem id odio unde vel voluptatem.');
INSERT INTO `question` VALUES ('349', 'In omnis voluptas quod voluptatum provident rerum sapiente neque repellat fuga iste ratione non quis voluptas excepturi qui eum non. ?', '1', '5', '33', '15', 'Commodi et adipisci sed officiis voluptatem non qui veritatis eaque corporis omnis in sunt alias atque eos est quis molestias quaerat et iure assumenda ratione non mollitia ab neque iusto accusamus aut dolor quisquam accusantium similique perspiciatis cumque impedit sed.');
INSERT INTO `question` VALUES ('350', 'Molestias repellat at et ut dolorem porro expedita perspiciatis qui quis dolores provident aliquid. ?', '1', '5', '33', '15', 'Reiciendis minima vitae qui omnis eos ipsum aspernatur doloribus ut laborum aut ipsam ea minus soluta impedit rerum voluptas aut quibusdam enim consequatur vel quibusdam harum voluptate odit maxime harum aperiam labore odit quod quibusdam qui et alias.');
INSERT INTO `question` VALUES ('351', 'Impedit ipsa deleniti dolores et et distinctio laudantium voluptas quo aut optio quae ut. ?', '1', '5', '33', '15', 'Similique dolor voluptate illo corporis ratione libero ut voluptatem enim enim atque voluptatem voluptatem temporibus ratione rerum odit alias est laboriosam assumenda magni expedita alias veritatis itaque sunt dolore assumenda velit illo architecto reprehenderit quia omnis itaque quo iste.');
INSERT INTO `question` VALUES ('352', 'Deleniti qui delectus voluptatem ex praesentium est expedita nulla culpa reprehenderit velit sequi est enim dignissimos necessitatibus ad rerum laudantium. ?', '1', '5', '33', '15', 'Qui quibusdam et sunt dolores necessitatibus rem ea suscipit culpa nulla nesciunt sed sapiente tempore expedita soluta eaque ab est et suscipit ipsa adipisci harum quisquam eos et quidem rerum libero nihil voluptatem velit officiis mollitia commodi quia voluptatem accusantium.');
INSERT INTO `question` VALUES ('353', 'Fugiat qui dolor quas non ratione unde asperiores possimus ea voluptates eos perspiciatis asperiores delectus reiciendis molestias eius. ?', '1', '5', '33', '15', 'Quam nulla sit repellat repellat sunt dolore qui porro nemo quas voluptatem eum incidunt deserunt cupiditate voluptatem reiciendis assumenda.');
INSERT INTO `question` VALUES ('354', 'Qui recusandae est sed laudantium ipsa quidem in similique architecto cupiditate magni necessitatibus sit et vero. ?', '1', '5', '33', '15', 'Debitis voluptatem nulla quia non quia aut doloremque tempore quos ratione neque id reprehenderit aut repellendus laboriosam distinctio culpa nam illum rerum dolor quod dolorem doloribus placeat dignissimos officia est corporis similique earum architecto cupiditate qui doloribus voluptas magni.');
INSERT INTO `question` VALUES ('355', 'Necessitatibus voluptate veniam debitis officiis qui distinctio necessitatibus eius sit voluptas harum eligendi adipisci consequatur ad nulla officia voluptatum incidunt aliquam tempora dicta. ?', '1', '5', '33', '15', 'Magni reiciendis ratione iure iste eveniet occaecati et beatae et nobis culpa natus asperiores sed molestiae unde sapiente sed explicabo et necessitatibus sed pariatur vitae aperiam voluptas magnam amet non aut accusantium unde quo natus dolorem voluptatem quidem neque ut.');
INSERT INTO `question` VALUES ('356', 'Aut accusantium ullam ea dolor debitis dolor vero et sit aliquid earum odio consectetur blanditiis atque aut voluptas. ?', '1', '5', '33', '15', 'Sunt est nam dolorem et non et nemo ut et at exercitationem ut iste provident inventore aut minus reiciendis aut aut magnam itaque recusandae esse autem sint minima consequatur error ut aliquid sunt et quia.');
INSERT INTO `question` VALUES ('357', 'In voluptatem asperiores repudiandae et magnam officia voluptates vero quia aperiam optio. ?', '1', '5', '33', '15', 'Facere nobis sint in laudantium vero qui repellat autem repellat ea totam occaecati sint neque maxime necessitatibus aut dignissimos quo odio non sunt perspiciatis quod error et optio aperiam vero soluta magni aperiam quo magnam quis ut laboriosam sint veritatis non vel.');
INSERT INTO `question` VALUES ('358', 'Debitis in et aut reiciendis at qui explicabo deserunt placeat similique consequatur enim voluptatibus ut aut eos tempora et expedita eius eaque. ?', '1', '5', '33', '15', 'Accusantium inventore at ea magnam earum at fugit ut cumque alias officia perferendis ut aut eius sint consequatur expedita facere alias laudantium ipsum unde aliquam optio nostrum voluptatum consectetur et beatae sapiente laudantium rem ut.');
INSERT INTO `question` VALUES ('359', 'Eos possimus porro cumque fugiat cupiditate natus et voluptatem voluptatem quis labore impedit voluptates architecto modi. ?', '1', '5', '33', '15', 'Sit autem excepturi veritatis ut cupiditate aut incidunt mollitia porro excepturi provident nostrum explicabo pariatur minus enim possimus culpa cupiditate aliquam.');
INSERT INTO `question` VALUES ('360', 'Quia consequuntur iure et autem in aut neque quasi voluptate qui ipsa illo perferendis ut non id excepturi et maiores qui. ?', '1', '5', '33', '15', 'Inventore soluta voluptatem iusto nam qui nihil qui provident beatae nobis exercitationem dolorum omnis praesentium ipsum est consectetur quia sed cupiditate sed optio et ut corporis aliquam totam perspiciatis doloribus eum a quaerat vitae omnis sit harum sit molestiae quo delectus.');
INSERT INTO `question` VALUES ('361', 'Vel fugiat quia libero aliquid praesentium porro eligendi voluptatem aut eius in minima quaerat cum facilis est et tenetur. ?', '1', '3', '26', '16', 'Delectus porro aut et dolores quis exercitationem occaecati ut nostrum molestiae non officiis nulla minima consequuntur alias rerum ipsum ipsa.');
INSERT INTO `question` VALUES ('362', 'Iste fugit laboriosam illum est deleniti perferendis iusto fuga eius ut nobis at. ?', '1', '3', '26', '16', 'Delectus consequatur sint aut ipsa voluptates qui cumque quisquam accusamus ea similique magnam est tempora esse ipsum sint iusto soluta consequatur aut libero beatae possimus quo rem blanditiis qui tempore alias minus cum quae nobis voluptates.');
INSERT INTO `question` VALUES ('363', 'Consequatur harum qui tenetur id ducimus omnis et possimus possimus a eligendi neque qui quis dolor vero labore esse eius in distinctio. ?', '1', '3', '26', '16', 'Nihil dolores est est consequatur nihil iste cupiditate debitis voluptatem in adipisci totam dolores quis facilis labore perferendis totam aut quia reprehenderit laboriosam esse ut ad dolores nulla omnis mollitia ut similique sint qui est aut est sit.');
INSERT INTO `question` VALUES ('364', 'Laborum vitae unde saepe aperiam a totam error esse sed ut blanditiis aut dicta optio tenetur autem velit asperiores saepe magni. ?', '1', '3', '26', '16', 'Dolor dolores in veritatis rem ut et corrupti exercitationem laboriosam quas qui nisi in velit qui esse ipsa vel ipsum ut adipisci et atque eos adipisci voluptas commodi vel est alias atque omnis aperiam impedit vel nobis et aut iusto.');
INSERT INTO `question` VALUES ('365', 'Saepe sint ut voluptatem dolores laborum mollitia omnis ut molestias cum enim provident. ?', '1', '3', '26', '16', 'Necessitatibus qui ea omnis sunt eos non id aut voluptate illum velit dolor suscipit hic dolores dolor nesciunt expedita cupiditate quis iste sit natus est quas tenetur dolores temporibus consequatur velit explicabo occaecati.');
INSERT INTO `question` VALUES ('366', 'Quia quae et et saepe quia numquam perspiciatis et vel totam nisi et nisi vel esse nobis labore. ?', '1', '3', '26', '16', 'Nostrum error cumque temporibus culpa ut excepturi ut vero veritatis dolor qui sit at unde et qui est aut est et nihil.');
INSERT INTO `question` VALUES ('367', 'Est est est ad rerum ut atque quis iure nisi quasi enim quia eum quia quia iusto. ?', '1', '3', '26', '16', 'Ipsum id eos ab et ducimus repellendus delectus cumque quia excepturi perferendis dolor labore dolorum tempore earum maxime vel iure voluptas sit temporibus numquam aliquid pariatur culpa.');
INSERT INTO `question` VALUES ('368', 'Omnis voluptatem voluptate provident est aliquid praesentium voluptas error repellendus aliquid blanditiis tempora veniam. ?', '1', '3', '26', '16', 'Est atque beatae qui nihil quidem ut placeat cum doloribus culpa aut natus ea fuga laudantium consectetur veritatis dignissimos qui vel architecto dolore vel sequi ut vel rerum quia maxime aut eos officiis expedita culpa et laboriosam soluta et quia.');
INSERT INTO `question` VALUES ('369', 'Dolores omnis vero eligendi architecto aspernatur provident at illum labore quia omnis laborum. ?', '1', '3', '26', '16', 'Odio vitae qui voluptatem dolorem amet perspiciatis nostrum quia sint in sed repellat ut a fuga dignissimos distinctio molestiae excepturi consequatur vitae quia alias facere amet id quidem quia nihil non ut assumenda id provident consectetur eligendi doloribus nemo.');
INSERT INTO `question` VALUES ('370', 'Dolorum quae commodi facere deserunt ut velit molestias accusamus neque quasi tempora maxime officiis officiis a et quos. ?', '1', '3', '26', '16', 'Doloribus quos iste sed officia quae rerum blanditiis esse dignissimos aut explicabo quod placeat recusandae libero debitis maiores beatae aliquid ullam rerum error eaque est in voluptates nesciunt impedit deserunt est.');
INSERT INTO `question` VALUES ('371', 'Aliquid veniam velit quia facilis ea in dicta illo odit soluta et pariatur debitis eos perferendis excepturi ducimus ipsum officia consequuntur. ?', '1', '3', '26', '16', 'Nulla iure animi itaque inventore eos hic laudantium laborum consequatur nulla molestiae quia harum possimus molestiae consequuntur dolore perferendis dolorem nobis debitis iste fugit labore qui quas et ab modi veritatis voluptatem enim est sapiente quo dicta quibusdam eius odit.');
INSERT INTO `question` VALUES ('372', 'Sunt eligendi dolor nobis aut fugiat et similique vitae maxime optio ea cum et soluta perferendis dignissimos optio est. ?', '1', '3', '26', '16', 'Sit corporis cumque deleniti inventore dolore neque repudiandae officiis nam maiores ut at at blanditiis voluptate totam alias vel doloremque placeat fugit architecto suscipit enim qui omnis et blanditiis aperiam id sapiente eos voluptate nihil sint.');
INSERT INTO `question` VALUES ('373', 'Hic rerum quia omnis et ab reprehenderit ducimus quas ut totam vitae rerum nihil dolor autem et vel officia modi id iste. ?', '1', '3', '26', '16', 'Aspernatur doloremque error dolore quia et dolor alias aut autem voluptate illo laboriosam accusantium asperiores atque est id sunt quis quia ipsam id iusto est in eos quidem dolorem doloribus non consequuntur est libero odit illum minus.');
INSERT INTO `question` VALUES ('374', 'Eligendi optio aut suscipit repellat recusandae nihil commodi vel autem et minus accusamus officia illum velit optio dolor. ?', '1', '3', '26', '16', 'Consequuntur voluptas facilis deleniti ut perspiciatis perferendis adipisci non sint aut voluptatem ea iure dolorem ullam omnis ut ut at numquam quaerat ut nemo officiis.');
INSERT INTO `question` VALUES ('375', 'Quam aliquam dolor sint magnam voluptatibus natus incidunt velit deserunt quis harum. ?', '1', '3', '26', '16', 'Omnis inventore nam ad quae similique expedita libero dolor ad sit saepe reiciendis veritatis aliquid necessitatibus consectetur unde unde aut enim sed quisquam deserunt quaerat et eveniet est iure qui in facilis et fuga est dolores.');
INSERT INTO `question` VALUES ('376', 'Consequatur rerum quas et sit velit ad quaerat commodi exercitationem animi dicta eos odit necessitatibus necessitatibus nulla ut qui et voluptatem sapiente nisi. ?', '1', '3', '26', '16', 'Laborum quod ut nulla deleniti ut quia et omnis quo quisquam et nostrum provident voluptatem vel nihil tenetur id excepturi et suscipit ut id expedita debitis sed dolor commodi facere quam esse eius.');
INSERT INTO `question` VALUES ('377', 'Dolorum impedit non incidunt nostrum odit expedita voluptatem est eius quo enim voluptatem fuga ullam id praesentium quas ut voluptatem at minima. ?', '1', '3', '26', '16', 'Voluptatibus ut nam itaque possimus blanditiis rem dolores possimus reprehenderit adipisci ea totam ut repudiandae repudiandae quibusdam magnam aut ut asperiores sequi qui sed veniam libero voluptatem.');
INSERT INTO `question` VALUES ('378', 'Temporibus consequuntur consequuntur blanditiis et consequatur laudantium cum atque fuga sunt qui aut ab quia consectetur aut debitis sed rerum molestiae. ?', '1', '3', '26', '16', 'Delectus nulla aut ut voluptate ut maiores ab eveniet tenetur rerum accusamus sunt nesciunt et earum nulla quos et eaque iste soluta reprehenderit provident commodi et.');
INSERT INTO `question` VALUES ('379', 'Quasi eum et sint voluptatem quam voluptas qui delectus aut dicta quia voluptate laboriosam unde ea repudiandae rem aperiam eos ut qui saepe dolores. ?', '1', '3', '26', '16', 'Sunt iure dolores aut quam amet praesentium velit fuga amet quod quo error voluptas ut maiores ad ab ut numquam.');
INSERT INTO `question` VALUES ('380', 'Nisi sed labore fugiat est cupiditate atque sed quis odit repellendus nostrum fugit. ?', '1', '3', '26', '16', 'Deleniti ipsa quis corporis dolor maiores velit in laboriosam vel autem adipisci nam assumenda quia dolorem laborum natus eum neque officia consequatur eveniet eaque similique ea reprehenderit tempora maxime et odit exercitationem et.');
INSERT INTO `question` VALUES ('381', 'Reiciendis odit facilis nulla earum neque minus et labore in libero amet deserunt sint sit. ?', '1', '3', '26', '16', 'Voluptatum quibusdam pariatur provident placeat architecto qui vel repellat eligendi quia qui laborum hic ut et in quia quidem sint.');
INSERT INTO `question` VALUES ('382', 'Nesciunt pariatur ut vel ut harum ipsa sed et ut aut voluptate aut asperiores qui sit atque nihil itaque dolores eos voluptas quia adipisci. ?', '1', '3', '26', '16', 'Fugit nisi omnis dignissimos eligendi eum vitae adipisci iusto delectus omnis et officiis distinctio officia sit qui nulla quos aut eos et aut placeat harum voluptatem inventore necessitatibus fuga molestiae ut aperiam est expedita et ut.');
INSERT INTO `question` VALUES ('383', 'Ut modi ullam suscipit quia consectetur eum voluptas alias libero temporibus. ?', '1', '3', '26', '16', 'Aspernatur eum libero omnis est ab et voluptatem quia ullam beatae tempore aut vero quia iste consequatur sint et reiciendis labore tenetur facilis fugiat magnam atque.');
INSERT INTO `question` VALUES ('384', 'Facere enim enim perspiciatis et sit incidunt totam tenetur enim necessitatibus at necessitatibus esse earum enim quia et. ?', '1', '3', '26', '16', 'Eos rerum recusandae eos iusto hic atque quo exercitationem quia et ipsum voluptas quam ea sunt excepturi praesentium ea optio quos blanditiis exercitationem eos ipsam nemo illum explicabo facere consequatur.');
INSERT INTO `question` VALUES ('385', 'Consequatur ut molestiae tempora laborum consequatur dolores rem et voluptatem aut reiciendis corporis eos alias eum harum magni. ?', '1', '3', '26', '16', 'Mollitia corrupti optio ab vel odio iure totam quibusdam quis est aut assumenda enim nesciunt tempora dolores facere consequuntur enim quia eligendi qui repudiandae rerum iure natus animi eum omnis dolor ducimus assumenda rerum.');
INSERT INTO `question` VALUES ('386', 'Quia beatae ullam quia eaque quia voluptatem excepturi ipsa eligendi qui voluptas sequi esse at iusto odio dolorum veniam. ?', '1', '3', '26', '16', 'Enim expedita aut reiciendis sit qui sed aut dicta excepturi ipsa et voluptas recusandae enim repellendus sequi eius quis voluptatem mollitia inventore nihil distinctio quaerat aliquam eum excepturi.');
INSERT INTO `question` VALUES ('387', 'Tempora harum voluptates omnis laudantium eius dolorem molestiae magni fuga debitis. ?', '1', '3', '26', '16', 'Dolore similique laudantium qui blanditiis ipsa ut harum voluptatem nulla consequuntur sapiente quia quibusdam sunt est dolor id modi.');
INSERT INTO `question` VALUES ('388', 'Dicta aliquam beatae ducimus ducimus quia explicabo aut quis maxime libero ut odio velit vel. ?', '1', '3', '26', '16', 'Aut officia minus quis nemo labore facere adipisci dignissimos tempore quibusdam voluptas eaque architecto suscipit numquam tempora corrupti optio dicta sint minima dolor beatae sed natus quis quo.');
INSERT INTO `question` VALUES ('389', 'Sed omnis accusantium eaque eligendi neque ea et sapiente totam harum fuga sint ipsam repudiandae dolores doloribus. ?', '1', '3', '26', '16', 'Nam ipsum adipisci sit et eveniet beatae repellendus nobis odit corrupti voluptates ducimus reprehenderit vel est velit repudiandae numquam qui sint eius quibusdam.');
INSERT INTO `question` VALUES ('390', 'Debitis enim ab illum in quaerat accusantium voluptatem corporis quia natus rerum dolore quibusdam dolorum architecto laudantium ut quis qui tenetur fugiat. ?', '1', '3', '26', '16', 'Ut repellendus totam facere ipsam voluptatum asperiores earum vitae quaerat asperiores neque rerum rerum necessitatibus repellat cum voluptatem nulla repellendus vel repudiandae in.');
INSERT INTO `question` VALUES ('391', 'Totam aliquid vel quisquam velit dolorum rerum voluptatem alias quae deleniti suscipit et sequi accusamus sint quisquam dignissimos voluptate. ?', '1', '3', '26', '16', 'Eos quas delectus sit eaque cumque tempore accusantium est rem consectetur sunt est culpa molestiae esse fugiat est non nihil numquam.');
INSERT INTO `question` VALUES ('392', 'Dicta ab eos aut iste et quidem tempora laborum repellat ab sed ratione rerum asperiores odit quis autem explicabo nisi. ?', '1', '3', '26', '16', 'Labore natus quis qui itaque laborum dignissimos repellat sed quo ipsum voluptates maxime inventore qui ut et natus iste et ad architecto ea aut tenetur laborum quos deserunt ut omnis eaque deserunt in dicta est nobis aut adipisci molestias quo.');
INSERT INTO `question` VALUES ('393', 'Nostrum repellendus aut hic ipsam omnis et laborum aut qui quis quidem dignissimos qui sed non repellat quo est assumenda repellendus ea nihil. ?', '1', '3', '26', '16', 'Consequuntur quas animi ut quis perferendis et nemo ipsa ut est et nemo laboriosam temporibus dignissimos qui sunt voluptatibus quia consequuntur labore.');
INSERT INTO `question` VALUES ('394', 'Aliquid omnis quo aut ex ut et doloribus expedita doloremque incidunt consequatur nihil rerum eveniet aliquid voluptatem expedita in qui. ?', '1', '3', '26', '16', 'Tempore sit id sapiente recusandae sit unde alias quod omnis maiores blanditiis quod consequatur magni quia id a et temporibus odit est molestiae quas expedita quo minus eveniet id animi molestiae autem perspiciatis iusto soluta harum.');
INSERT INTO `question` VALUES ('395', 'Et et sequi et sit nihil et et et sequi possimus qui praesentium dignissimos velit quibusdam. ?', '1', '3', '26', '16', 'Debitis voluptatum quas tempore beatae vel eligendi alias ducimus iure beatae non id ut laboriosam ex quae porro ut nobis error quia magnam occaecati voluptatem quis rem cupiditate voluptatem.');
INSERT INTO `question` VALUES ('396', 'Aut in voluptatum qui asperiores eum iusto non excepturi amet ut laudantium a culpa accusamus mollitia sunt eum ut. ?', '1', '3', '26', '16', 'Aperiam odio et ipsam illo est cupiditate temporibus repellat nihil facilis et exercitationem temporibus perferendis possimus qui eum reprehenderit voluptatem aperiam qui omnis perferendis praesentium eum aspernatur.');
INSERT INTO `question` VALUES ('397', 'Quasi sequi hic dignissimos reprehenderit et non quaerat ab nihil amet qui. ?', '1', '3', '26', '16', 'Quasi qui officia consequatur atque totam voluptatem veniam debitis et unde voluptas eum nostrum sed quo omnis dolores velit at velit aut veniam asperiores officia est sunt vel voluptatem dolorem non impedit corrupti hic voluptates rerum esse tempore molestiae voluptas modi.');
INSERT INTO `question` VALUES ('398', 'Similique consequuntur libero mollitia dolorem velit temporibus amet et necessitatibus sunt aut ut doloribus assumenda optio eligendi hic hic nihil at molestiae et. ?', '1', '3', '26', '16', 'Dolorem voluptates quia aliquam aperiam cumque sit corporis itaque sunt numquam qui hic exercitationem qui libero sapiente temporibus ullam distinctio animi et impedit tempora sapiente molestiae officiis qui enim rerum.');
INSERT INTO `question` VALUES ('399', 'Voluptatum omnis architecto et neque et atque quo odio cumque qui ea consectetur veritatis praesentium nobis eos eaque nisi numquam ex labore. ?', '1', '3', '26', '16', 'Dolores nostrum aspernatur magni qui nemo molestiae aut nemo dignissimos dolor consequuntur fuga veritatis rerum esse voluptas qui tempora quae tempore vel voluptas natus dolorem.');
INSERT INTO `question` VALUES ('400', 'Porro corrupti non asperiores quae et et quos veniam illo neque sed facilis mollitia non est voluptate officia ducimus ipsa. ?', '1', '3', '26', '16', 'Dolores culpa ut dolores voluptatum quod vel optio esse debitis tenetur blanditiis beatae voluptas aut quis odit dignissimos placeat repudiandae.');
INSERT INTO `question` VALUES ('401', 'Fuga quia pariatur aliquam quod esse molestiae exercitationem suscipit corrupti optio sint ut reiciendis sint fugiat soluta rem quo quod ut nihil dolorum molestiae. ?', '1', '7', '31', '17', 'Sit nulla quasi eius nostrum voluptatem a ut ratione et rem in veniam consectetur nostrum enim consectetur vero veritatis veritatis harum mollitia dolores.');
INSERT INTO `question` VALUES ('402', 'Sapiente commodi asperiores aliquid tempora dicta voluptate molestias in eum quasi magni nihil qui. ?', '1', '7', '31', '17', 'Eum commodi dolore blanditiis et dolorem distinctio maiores voluptatem expedita similique quo labore eaque ipsa non rem magnam porro recusandae tempore eligendi incidunt ratione maxime sapiente sapiente necessitatibus quo quas repellendus in autem earum doloremque totam et iure nobis.');
INSERT INTO `question` VALUES ('403', 'Eaque quidem quam iste qui quisquam quidem quia architecto ut ut et ullam vero occaecati nostrum libero similique nihil autem et soluta ipsum. ?', '1', '7', '31', '17', 'Iste animi unde nisi et earum sed ea accusamus quam maiores quos dicta et qui autem voluptates quia tempore sit occaecati excepturi ut non esse distinctio facere rerum quis.');
INSERT INTO `question` VALUES ('404', 'Aliquid natus et omnis aperiam adipisci praesentium aut ex quae qui accusantium debitis. ?', '1', '7', '31', '17', 'Ipsam repudiandae adipisci quasi dolores eligendi quisquam accusamus quasi omnis nobis ad deleniti blanditiis cum est error fugit quia ut eos quia ratione consequuntur est et.');
INSERT INTO `question` VALUES ('405', 'Aliquid animi praesentium officia libero sequi impedit commodi sit deserunt beatae neque necessitatibus soluta natus sint qui sit. ?', '1', '7', '31', '17', 'Tempora voluptatum sunt maxime tempora occaecati consequatur eveniet et repellat sequi nisi ut qui dolor soluta aut et fuga ex exercitationem enim.');
INSERT INTO `question` VALUES ('406', 'Consectetur non aut recusandae officiis consequatur ducimus dolorem natus in eum voluptatem eligendi et. ?', '1', '7', '31', '17', 'Hic veniam consectetur consequuntur ex mollitia minima itaque eligendi inventore delectus occaecati sit aut ut autem nihil accusamus ex explicabo ad quibusdam eos velit aliquam est et officia nihil magnam facere nobis iste aliquam libero occaecati sed temporibus dolorum culpa.');
INSERT INTO `question` VALUES ('407', 'Voluptas repudiandae et omnis expedita quia voluptas ipsam facere voluptas consectetur et vel repudiandae blanditiis sed accusantium dolores magni cumque quo. ?', '1', '7', '31', '17', 'Et omnis corrupti voluptas earum et quae rem quidem provident sed earum at harum beatae vero quidem nobis modi repudiandae culpa porro impedit adipisci corrupti corporis incidunt harum eum maiores est voluptatem fugit omnis dignissimos nihil fugit et.');
INSERT INTO `question` VALUES ('408', 'Quibusdam recusandae atque sint quidem corrupti voluptatem eius quia at perspiciatis voluptas saepe provident eum corporis maiores eligendi. ?', '1', '7', '31', '17', 'Soluta non molestiae ut incidunt autem et quia ducimus nisi sapiente et magni atque dolore corrupti quia minus architecto voluptatem mollitia unde expedita maiores perspiciatis quo provident fugit aliquam illum repudiandae nulla ullam assumenda nobis reprehenderit aut tempora quisquam porro.');
INSERT INTO `question` VALUES ('409', 'Laudantium tempora quae corrupti et deleniti consectetur perferendis qui rerum consequatur quae adipisci facilis possimus provident voluptatem. ?', '1', '7', '31', '17', 'Magnam aspernatur aliquam provident voluptas praesentium adipisci rem nostrum aut modi voluptas voluptas enim sit impedit molestiae et consequatur id placeat error voluptates quia amet ducimus eveniet.');
INSERT INTO `question` VALUES ('410', 'Quibusdam quidem perspiciatis assumenda quidem asperiores praesentium quas at odio nisi sint voluptatem inventore atque voluptas. ?', '1', '7', '31', '17', 'Atque et voluptatibus perspiciatis pariatur et cum nulla recusandae in ipsam labore ut cupiditate est quis cum commodi mollitia est id.');
INSERT INTO `question` VALUES ('411', 'Laborum nemo qui rerum et dolores amet autem dignissimos quos quia recusandae cupiditate in eos quia voluptatem nulla id repellendus. ?', '1', '7', '31', '17', 'Porro voluptas tempora nobis omnis porro rerum facilis et omnis harum facere laboriosam sunt doloribus a deserunt praesentium eveniet beatae sint ut reiciendis qui aspernatur autem ut.');
INSERT INTO `question` VALUES ('412', 'Nam recusandae tenetur eius possimus voluptatibus dicta magnam ut id sed minus quaerat libero pariatur voluptates et harum dignissimos voluptas temporibus facere tenetur quod. ?', '1', '7', '31', '17', 'Excepturi aliquid molestiae eos ut adipisci quo fuga commodi repudiandae aut in tempora eligendi nobis sit maxime unde quidem ullam et illum cum delectus qui a ut ratione consequatur omnis reiciendis qui velit vero.');
INSERT INTO `question` VALUES ('413', 'Quos quia porro minima possimus voluptatem sunt ipsum dolorum dolor numquam quis aut corrupti nesciunt eum iste qui adipisci cupiditate. ?', '1', '7', '31', '17', 'Labore nemo et expedita voluptatem neque et dolorem voluptates pariatur quia facilis atque quo adipisci voluptatem rerum praesentium enim omnis inventore corporis accusantium sit sapiente minima debitis autem molestias dicta perferendis totam odio nam.');
INSERT INTO `question` VALUES ('414', 'Et ea a inventore perferendis et voluptatem amet aut aut voluptas quos assumenda. ?', '1', '7', '31', '17', 'Modi voluptas molestiae in sed perspiciatis quia rerum velit quae sapiente rem laborum odio ut id aut blanditiis facere tempora voluptates incidunt odio et delectus quibusdam eligendi qui rerum cupiditate officia repudiandae sapiente impedit.');
INSERT INTO `question` VALUES ('415', 'Eos commodi unde enim odio sint nesciunt totam magnam pariatur aliquid enim odio. ?', '1', '7', '31', '17', 'Vitae dolore veniam sed qui quod est animi et totam in repellat officiis eaque quod debitis esse illo qui iste et vel.');
INSERT INTO `question` VALUES ('416', 'Soluta delectus blanditiis autem quia at ut animi sed dolor numquam blanditiis consequatur aut expedita corrupti. ?', '1', '7', '31', '17', 'Necessitatibus aut aut sed impedit ad odio qui accusantium labore dolores dolores facere voluptate aliquid odio eum debitis laborum et blanditiis nulla voluptas delectus tempore unde ex autem eius vitae voluptatem earum asperiores ut.');
INSERT INTO `question` VALUES ('417', 'Accusamus quidem ex culpa et reprehenderit provident dolorum officia ipsum eum et quis voluptate vitae labore enim provident explicabo ad error. ?', '1', '7', '31', '17', 'Eligendi dignissimos dolorem recusandae mollitia voluptas nobis ad dolor tempora dolor vel quasi labore in ea inventore rerum magni corrupti in nihil deserunt hic dolorum eveniet dolorum eligendi non fuga id est deserunt quasi laborum error voluptas qui sint.');
INSERT INTO `question` VALUES ('418', 'Ducimus molestiae aut vitae modi pariatur repellat ut minima aut sed minima quae quos quo sunt repellat et sequi ut beatae sed. ?', '1', '7', '31', '17', 'Delectus quia qui in laboriosam exercitationem culpa voluptatem distinctio doloribus iure delectus aut totam et quae occaecati fugit voluptatem eveniet quidem et perspiciatis facilis eveniet veniam aliquam et eaque dolorem voluptatem quia recusandae esse consequatur nam nostrum.');
INSERT INTO `question` VALUES ('419', 'Aut totam sed pariatur veritatis molestias incidunt distinctio numquam et sequi sed et nisi nihil non quia dolores et nesciunt consequatur unde. ?', '1', '7', '31', '17', 'Velit velit numquam ullam ullam enim dolor nisi nulla qui voluptatibus dicta architecto nostrum dolore velit at vel quas in voluptatibus quia omnis sit.');
INSERT INTO `question` VALUES ('420', 'Vitae qui et tempore consequuntur saepe culpa dolorem necessitatibus voluptatem pariatur ex illum qui quas doloribus reprehenderit. ?', '1', '7', '31', '17', 'Similique unde sit est quia quis consequatur et itaque aliquam assumenda excepturi reprehenderit impedit dolores id eum quia quia porro cumque.');
INSERT INTO `question` VALUES ('421', 'Magnam amet totam ipsa est rerum expedita ratione tempore laborum quia perspiciatis ducimus ipsum aut iure non neque eius voluptas tenetur dolorem. ?', '1', '5', '1', '18', 'Quod sit repellendus fuga nobis cumque quia voluptas debitis dolores esse quo qui vel ipsam nulla natus itaque enim possimus vel et.');
INSERT INTO `question` VALUES ('422', 'Optio ut aut molestiae delectus et ducimus aperiam consectetur vel in a minus quia eaque libero fugit. ?', '1', '5', '1', '18', 'Dolor deserunt tenetur officiis quaerat omnis illo quia voluptas nisi sunt libero sint repudiandae et velit enim earum libero adipisci.');
INSERT INTO `question` VALUES ('423', 'Eius aut qui vero corrupti voluptatibus aliquid cum minima molestiae dolorem et. ?', '1', '5', '1', '18', 'Similique a sunt at unde assumenda dicta voluptates unde repellendus recusandae pariatur sunt repellendus voluptas laudantium aut culpa et debitis enim earum dicta aut itaque tempore quia ipsam inventore.');
INSERT INTO `question` VALUES ('424', 'Saepe culpa illum doloremque in voluptatum maiores et iste velit corporis iure. ?', '1', '5', '1', '18', 'Explicabo neque voluptatem repudiandae quis quod culpa qui ut fuga repudiandae minima at voluptas earum neque suscipit officia rerum.');
INSERT INTO `question` VALUES ('425', 'Voluptatibus voluptatem veritatis occaecati ex corrupti magni autem ex porro facilis in in officiis vel dignissimos impedit. ?', '1', '5', '1', '18', 'Et ipsum ut animi in eos adipisci ut officiis corporis et fugit maiores ea officia nobis porro temporibus autem qui odit rem nobis eos praesentium accusamus aut omnis ratione provident voluptatibus sunt necessitatibus voluptatem tempore blanditiis.');
INSERT INTO `question` VALUES ('426', 'Minus harum aliquam ut necessitatibus nam aspernatur excepturi cupiditate vero id corrupti doloremque aut voluptate sit voluptatem culpa vel ut repellat sed et iusto. ?', '1', '5', '1', '18', 'Dolorem repellendus eum quibusdam nulla qui qui quia eius rerum accusamus illum tempore officiis est dolore quod qui asperiores et illum omnis.');
INSERT INTO `question` VALUES ('427', 'Eaque nam esse maxime nemo beatae maiores aut sequi nemo eaque et harum voluptatem qui consequatur magni commodi. ?', '1', '5', '1', '18', 'Non vel quaerat suscipit quam vitae soluta qui est nihil alias qui vel rerum et nam velit placeat eaque qui inventore quae error et eaque fuga quam sed unde excepturi animi qui ea nemo sed natus mollitia architecto laboriosam eaque vel sunt.');
INSERT INTO `question` VALUES ('428', 'Recusandae nemo dolorem omnis id blanditiis voluptatem at saepe quae numquam ut ut facilis nulla maxime quos voluptatem amet velit blanditiis neque laboriosam. ?', '1', '5', '1', '18', 'Veritatis aut impedit ut maiores maiores quo facilis saepe repellendus culpa ea ipsum et id et nihil est repellat molestias maxime pariatur porro ullam cupiditate voluptas aut similique itaque quisquam iure non molestiae saepe officia labore aperiam maxime et.');
INSERT INTO `question` VALUES ('429', 'Est consequatur totam corporis esse libero sapiente cum sint excepturi eum et aliquid tempore quidem aut sed et. ?', '1', '5', '1', '18', 'Voluptates id pariatur in hic voluptate aspernatur reiciendis et mollitia ea quae nemo aspernatur provident voluptatum natus omnis nihil fugiat suscipit est dolorum excepturi quas et enim ratione qui est.');
INSERT INTO `question` VALUES ('430', 'Rerum fugit reprehenderit et animi aliquam aperiam voluptate rerum perferendis natus error. ?', '1', '5', '1', '18', 'Qui est praesentium consectetur asperiores hic vero ea saepe delectus cupiditate officia dolores et magni et quo est vitae voluptatem sed magnam.');
INSERT INTO `question` VALUES ('431', 'Earum sunt sunt delectus harum laborum reprehenderit ut ipsa est maxime minima id. ?', '1', '5', '1', '18', 'Corrupti enim rerum nostrum nostrum ipsam beatae necessitatibus dolorem vel doloremque velit quae doloremque et ut et est mollitia at ducimus ut laborum deserunt ex pariatur reiciendis dolores cum culpa optio distinctio dolor facere harum non eveniet maiores.');
INSERT INTO `question` VALUES ('432', 'Et aliquam sunt tempora voluptatem atque nisi est ducimus error et dolores ipsam aspernatur cum voluptatum nam fugit ea nihil vitae numquam suscipit. ?', '1', '5', '1', '18', 'Voluptas consequatur non earum suscipit tempore reiciendis mollitia voluptatem animi ut optio nihil omnis vero et similique id autem et quidem sunt voluptatem quaerat ut distinctio nisi iure hic.');
INSERT INTO `question` VALUES ('433', 'Harum commodi magni officiis ducimus veritatis laboriosam dolorum quis perspiciatis deleniti quia et quisquam velit ea aut omnis. ?', '1', '5', '1', '18', 'Occaecati eos tempore recusandae nesciunt tenetur dolorem velit dignissimos repellendus soluta ipsum aperiam voluptatem repudiandae vero aliquid sed ad quis consequatur nihil ut.');
INSERT INTO `question` VALUES ('434', 'Ea ad officiis eaque ut ut in qui ducimus culpa illum eveniet est quo ut et omnis facilis est veritatis voluptas rerum pariatur vel. ?', '1', '5', '1', '18', 'Sed ex minus unde est aut laudantium velit et sint eaque deleniti doloribus eaque repellat magni laudantium ipsam possimus.');
INSERT INTO `question` VALUES ('435', 'Nihil veritatis ea illo cupiditate vero aut eum explicabo molestiae et vel reiciendis sed veniam velit error exercitationem laboriosam laboriosam. ?', '1', '5', '1', '18', 'Iure fuga veniam nostrum blanditiis dolorem reiciendis nisi est sunt laudantium ea cumque molestiae aut sed recusandae ut et in a eos molestias qui in consequuntur tempora libero consequatur ea ut sint quia magni nostrum.');
INSERT INTO `question` VALUES ('436', 'Doloremque autem velit eos atque voluptatem natus similique commodi velit laboriosam provident ipsam cumque vitae corrupti repudiandae aut omnis. ?', '1', '5', '1', '18', 'Quidem in accusamus eius omnis consequuntur quod culpa est nihil natus officia molestiae quidem libero eum illo autem sint laborum eius possimus praesentium eum natus nam tempora modi sed sed tempora ut esse sit ea qui assumenda ut maiores sed est.');
INSERT INTO `question` VALUES ('437', 'Consequatur officia et similique natus mollitia reiciendis laboriosam laboriosam ut distinctio minus eligendi quia aut officia. ?', '1', '5', '1', '18', 'Ratione dolorum dignissimos eum quos repudiandae qui sit rerum fugit veniam reprehenderit dolore consequatur dolor nihil non ducimus sit alias est autem ut et sit vero eum debitis magni porro rerum sint repellat ut rerum eos at nesciunt sed culpa ut molestiae.');
INSERT INTO `question` VALUES ('438', 'Ratione non iste voluptatem expedita rerum perspiciatis non est ullam nobis consequuntur. ?', '1', '5', '1', '18', 'Modi quisquam voluptatem voluptas delectus voluptatem dolorem non unde eum consequatur eaque sapiente quas corporis hic hic nisi sit possimus debitis error recusandae alias facilis ut delectus et rerum aut quis doloribus unde est sed hic aut ullam cumque.');
INSERT INTO `question` VALUES ('439', 'Deserunt amet sunt cum doloremque ut perspiciatis dolor mollitia dignissimos ut sit quis voluptates et iusto dolores aut tenetur incidunt facilis. ?', '1', '5', '1', '18', 'Impedit sed pariatur reiciendis magni quis voluptatem nobis est commodi sint molestiae perferendis perspiciatis est in debitis et voluptas est earum rerum enim harum modi atque quisquam excepturi voluptate sit vel ea aut voluptatem accusamus eum harum quos explicabo eum fugit aliquam.');
INSERT INTO `question` VALUES ('440', 'Excepturi et qui quas facere amet quod explicabo enim et omnis vitae neque exercitationem repellendus nostrum. ?', '1', '5', '1', '18', 'Rem maxime commodi suscipit velit inventore dignissimos voluptatem voluptates suscipit non distinctio qui tempora dolorum officiis eum ut omnis minima commodi sapiente alias incidunt laboriosam ipsam asperiores aut voluptatem nemo aspernatur.');
INSERT INTO `question` VALUES ('441', 'Sunt voluptas similique cumque voluptate maxime non dolorem ad neque accusantium tempore dignissimos ratione. ?', '1', '4', '21', '19', 'Consequatur est occaecati temporibus quibusdam porro dolores dolorem culpa cum at autem aliquid similique iure expedita est id aliquam rerum suscipit ea odit at rerum sequi quidem provident sit nihil inventore autem rerum numquam officia distinctio dicta et placeat.');
INSERT INTO `question` VALUES ('442', 'Illum mollitia quod quia repellat voluptatem quisquam eos reprehenderit aperiam deleniti aut doloremque voluptates error minus doloribus nam eum facilis fugit quia ipsum odit. ?', '1', '4', '21', '19', 'A minima similique iste aut in sed blanditiis quam sunt modi quia blanditiis corrupti rerum illum et doloremque commodi officia porro enim.');
INSERT INTO `question` VALUES ('443', 'Perspiciatis nobis non aut aut sint voluptate quos occaecati ea sed est eius illum voluptas voluptatibus facilis hic et dolores est autem. ?', '1', '4', '21', '19', 'Molestias non nesciunt ratione hic rerum dolorem voluptatem quia corporis voluptatem asperiores praesentium et quis maiores quod ipsa voluptatem consequatur nostrum recusandae explicabo sed.');
INSERT INTO `question` VALUES ('444', 'Adipisci autem dicta eum laboriosam facere sequi ut dolores cumque eum quo fugit tenetur libero et qui mollitia exercitationem adipisci qui. ?', '1', '4', '21', '19', 'Aut vel natus unde fugit et dolores eaque alias modi dolore nihil rerum id ut dolor veritatis fugiat error quibusdam aut aperiam voluptates dolorem ut sint excepturi quis reprehenderit non pariatur commodi mollitia harum natus sint at nostrum numquam suscipit.');
INSERT INTO `question` VALUES ('445', 'Est voluptate ut aliquam molestiae et aut est nobis aut quos dolorem excepturi doloremque eum reiciendis rerum praesentium saepe iusto quaerat ut sint quod. ?', '1', '4', '21', '19', 'Incidunt repellat hic veritatis saepe sunt blanditiis veniam modi dolores et optio quas quisquam unde architecto porro distinctio nam sint est doloribus.');
INSERT INTO `question` VALUES ('446', 'Exercitationem minus cupiditate magnam blanditiis in facilis ducimus sit eaque mollitia porro animi consequatur deserunt molestiae magni tempore laudantium. ?', '1', '4', '21', '19', 'Qui odio enim consequuntur facilis veniam dolorem blanditiis alias quis quo et iure omnis quos eos deserunt voluptatum voluptatem quis consequatur dolores iusto sed alias quidem aliquid repellat velit magnam asperiores doloremque cupiditate sunt adipisci quasi consequatur nesciunt tempora.');
INSERT INTO `question` VALUES ('447', 'Aut earum dolores minus perferendis illo ut rerum ex quia quod in dolores ut dolores dolorem molestias quaerat sapiente aut autem sed rerum. ?', '1', '4', '21', '19', 'Illum et inventore ut omnis qui illo excepturi doloribus necessitatibus quibusdam corrupti quo sunt dolorem totam ad labore saepe voluptates sit veniam assumenda fugiat beatae maxime culpa.');
INSERT INTO `question` VALUES ('448', 'Suscipit qui omnis voluptas ut excepturi ea autem alias at maxime rerum cupiditate officia non. ?', '1', '4', '21', '19', 'Voluptatem reiciendis soluta quis qui et perspiciatis dignissimos autem quod et ea eius quasi dolor sunt sint architecto exercitationem consequatur voluptas sit eligendi dolorem enim voluptas error debitis et et cupiditate.');
INSERT INTO `question` VALUES ('449', 'Ad quasi est dolores est eaque doloremque et voluptatem temporibus illum nam labore fugiat id nemo sint ut sunt est nisi. ?', '1', '4', '21', '19', 'Voluptatem consectetur hic nulla nemo enim vero praesentium beatae veritatis nostrum est magnam voluptate possimus at et necessitatibus ipsa porro ut vel minima necessitatibus quos hic.');
INSERT INTO `question` VALUES ('450', 'Veniam nobis dolores aut rerum quis unde incidunt odio minima ullam assumenda est numquam dolorem maxime id repellendus est suscipit blanditiis. ?', '1', '4', '21', '19', 'Corrupti repudiandae qui atque vel quidem reprehenderit non eius quibusdam dolorum quo doloribus minima consequatur dolore eveniet voluptas omnis tempora dolores qui.');
INSERT INTO `question` VALUES ('451', 'Sint magnam dolorum et quia esse aliquam eaque culpa dolor itaque laboriosam blanditiis quod et voluptatem enim alias fugit. ?', '1', '4', '21', '19', 'Velit nulla fugiat rerum id dolores id expedita sequi eaque aspernatur tenetur similique quo quam labore magnam dignissimos eum sed molestiae sint iusto voluptatem ullam.');
INSERT INTO `question` VALUES ('452', 'Ab dolores vero dolor maiores nam corporis dolorem rerum qui ea cumque alias et doloribus laudantium aut dolor laboriosam fuga perspiciatis expedita harum. ?', '1', '4', '21', '19', 'Nobis consectetur est deleniti soluta placeat soluta earum ducimus explicabo possimus dicta eos itaque dolor aliquam quia similique earum voluptatum facere praesentium at ad quos quas dolorum id sit quasi.');
INSERT INTO `question` VALUES ('453', 'Velit commodi laborum consequatur necessitatibus optio aut est ducimus iusto quisquam. ?', '1', '4', '21', '19', 'At animi occaecati ad animi dolore nisi ad error enim consequatur ratione et magni ab et voluptatem illum id voluptatem.');
INSERT INTO `question` VALUES ('454', 'Et quod qui non doloremque atque repellendus natus dicta ipsam numquam quis rerum qui animi delectus et reprehenderit et quidem. ?', '1', '4', '21', '19', 'Qui tempora ea molestiae debitis aut fuga vel earum voluptas est ex expedita impedit voluptas ut vero ipsum perspiciatis eos minima nesciunt saepe quo officiis sunt aliquam qui sapiente quae.');
INSERT INTO `question` VALUES ('455', 'Vero perspiciatis error repellat sed odit unde officia distinctio dignissimos facere. ?', '1', '4', '21', '19', 'Nemo expedita earum non magni distinctio molestiae dolor eos soluta qui in omnis et ex quibusdam placeat excepturi rerum alias nemo.');
INSERT INTO `question` VALUES ('456', 'Aut ut est repellat tempore neque quasi assumenda amet soluta corporis quas deserunt. ?', '1', '4', '21', '19', 'Voluptatibus sequi modi repellat doloribus earum aut aut ut sint molestiae facere voluptatum et ut aliquam itaque et ipsa neque hic vel voluptatem reprehenderit eveniet voluptatem aspernatur eligendi ut sequi sunt optio explicabo non eum quo iste.');
INSERT INTO `question` VALUES ('457', 'Qui molestiae voluptatem ea nobis reiciendis voluptatum placeat a accusamus natus aperiam accusantium quibusdam. ?', '1', '4', '21', '19', 'Culpa ab odit praesentium velit suscipit dolor architecto iste reiciendis illum dignissimos autem nihil fugit consequatur dolores nisi velit ea et excepturi qui voluptates qui autem sint occaecati iste.');
INSERT INTO `question` VALUES ('458', 'Debitis repudiandae voluptatibus omnis sapiente aperiam quas repellat officiis eum officiis. ?', '1', '4', '21', '19', 'Doloremque et iste saepe est aut iure rerum sapiente labore autem recusandae molestiae exercitationem sunt ea autem odit deserunt.');
INSERT INTO `question` VALUES ('459', 'Voluptate repellendus rerum ut deserunt quo ut odio alias doloremque voluptate error impedit animi dolor ad officiis sit. ?', '1', '4', '21', '19', 'Illum dolores eos est eos nobis ex odit unde eum dolores dolor perspiciatis dignissimos quis dolorem esse aut quis dignissimos inventore accusantium at magni rerum tenetur quasi sed autem mollitia quisquam odit laborum voluptatum laboriosam ducimus.');
INSERT INTO `question` VALUES ('460', 'Dolorum velit quia corporis ipsam quia sunt rem aut sit quia culpa quae voluptas asperiores fuga et fuga nesciunt ex eius. ?', '1', '4', '21', '19', 'Consequuntur incidunt ipsum repellendus non distinctio suscipit officia et impedit ut assumenda ut aliquam doloremque mollitia minus voluptatem ut quisquam itaque voluptatibus quasi earum eius sint quia asperiores.');
INSERT INTO `question` VALUES ('461', 'Ab et consequuntur atque cumque sit blanditiis eveniet molestias natus quas ab et perferendis. ?', '1', '2', '18', '20', 'Ab sapiente sed nisi repellendus excepturi facere corrupti dolorem laudantium voluptates pariatur autem velit distinctio rem qui officiis voluptatem consequuntur ad deserunt sit in sequi nobis cupiditate.');
INSERT INTO `question` VALUES ('462', 'Quisquam eos sunt mollitia consequatur quasi optio quo maiores itaque velit necessitatibus veniam consequatur optio laborum et magnam nisi at impedit. ?', '1', '2', '18', '20', 'Voluptatem ut molestiae atque enim quae exercitationem vel et harum est voluptatibus facere minima doloremque consequatur earum sed tenetur qui sapiente dolorem mollitia molestias sint amet et ex aut voluptatem.');
INSERT INTO `question` VALUES ('463', 'Eum labore voluptatibus eum repellat ut et laudantium maiores neque corrupti quod cumque dolorem animi atque exercitationem. ?', '1', '2', '18', '20', 'Soluta a quisquam mollitia dignissimos et dolor dignissimos vero magnam exercitationem et consequatur iure optio vel ea qui possimus voluptates ut consequuntur officia non qui quae error consequatur.');
INSERT INTO `question` VALUES ('464', 'Mollitia sint similique ea nemo officia officiis ut earum laborum officiis eaque ipsa doloribus quia sed et debitis dolor doloremque quia dignissimos. ?', '1', '2', '18', '20', 'Labore reiciendis odit odio labore iusto et dolorem commodi repellendus ipsa sed numquam amet magnam accusamus eum laborum cupiditate ipsam qui nihil maxime in et porro hic reiciendis illo unde nihil dignissimos est nihil quisquam ut.');
INSERT INTO `question` VALUES ('465', 'Quibusdam illo repellendus ex sit officiis ducimus repudiandae est quod accusamus in ipsum et eos eos vel blanditiis molestiae adipisci quo voluptatem tenetur. ?', '1', '2', '18', '20', 'Molestias vero assumenda reiciendis similique iusto autem minus tenetur esse aut voluptatibus rerum ut molestiae explicabo dolorum sequi perspiciatis.');
INSERT INTO `question` VALUES ('466', 'Excepturi ex doloribus non quos cupiditate sed vero et ut odit quam id molestiae corporis culpa omnis nihil totam nisi non cumque eos numquam. ?', '1', '2', '18', '20', 'Inventore hic quia porro temporibus quam adipisci aut qui ea quae et sint repellat id et autem ea reprehenderit asperiores consectetur dolorem sit vitae.');
INSERT INTO `question` VALUES ('467', 'Facere recusandae magni quasi sed minima voluptatem facere ea cum perferendis autem veritatis voluptatibus itaque consequatur nostrum aut qui. ?', '1', '2', '18', '20', 'Earum pariatur expedita minus non impedit neque rerum consequatur aut tempore aut quae dignissimos sequi vitae officia quae et natus soluta laudantium asperiores saepe rerum eaque deleniti rem non vel incidunt ex necessitatibus debitis.');
INSERT INTO `question` VALUES ('468', 'Natus rerum accusantium excepturi consequatur veritatis ut odit dolore minus eos blanditiis. ?', '1', '2', '18', '20', 'Qui quia aut quia ut nemo doloremque neque voluptate omnis officia ut autem laudantium ut consectetur maiores similique nemo ut non inventore corrupti neque atque delectus nobis sed vero unde molestiae rem odit.');
INSERT INTO `question` VALUES ('469', 'Velit cum facere minus minima quia qui quas tempore quidem repellendus saepe repellendus porro qui. ?', '1', '2', '18', '20', 'Rem velit nostrum maxime alias temporibus repellendus esse facilis laborum rerum labore dignissimos assumenda in consequatur quis dolore commodi molestias in quo voluptatum molestiae tempora excepturi unde nesciunt modi quis sit aspernatur omnis voluptas unde possimus aliquid necessitatibus perspiciatis voluptas molestiae dolorum placeat.');
INSERT INTO `question` VALUES ('470', 'Officiis commodi magnam harum doloremque ut ea omnis enim est aperiam voluptatibus sint occaecati vel sed. ?', '1', '2', '18', '20', 'Unde quas repellat incidunt accusamus ipsam alias tempore voluptatibus sed voluptas ducimus autem molestias repellendus quidem dolorum occaecati id saepe.');
INSERT INTO `question` VALUES ('471', 'Iure esse officiis beatae dolores atque blanditiis ut eius quaerat in atque qui dolorem laborum libero sit omnis earum et culpa unde nulla. ?', '1', '2', '18', '20', 'Sit recusandae esse in voluptates odio qui quas et non illo autem non ipsum repudiandae cumque aut quia nisi quo deleniti sunt voluptatem dolorem minima nesciunt at repellat.');
INSERT INTO `question` VALUES ('472', 'Dicta rem sed iure earum necessitatibus voluptatem similique alias natus recusandae vel soluta placeat similique quis rerum voluptatem in exercitationem praesentium. ?', '1', '2', '18', '20', 'Voluptatem ea dicta sunt qui ut vel cupiditate non in harum quidem ipsa nihil voluptate eum aspernatur odit suscipit eos alias alias fuga omnis ut numquam aperiam quasi omnis aut ullam minus mollitia qui.');
INSERT INTO `question` VALUES ('473', 'Temporibus accusamus et aut autem eius eveniet velit ut nihil quod adipisci velit quidem aut perspiciatis possimus placeat accusantium ea ut quisquam voluptatem. ?', '1', '2', '18', '20', 'Quis tempore provident quidem hic ipsam ut omnis fuga perferendis accusantium dolores consequatur minima fuga eos porro velit dolorum sit occaecati odio deleniti voluptatem voluptas soluta rerum ut voluptatem aut exercitationem nesciunt a autem sit nobis aut magni doloremque.');
INSERT INTO `question` VALUES ('474', 'Possimus est dolorem voluptas facere nihil facere dolorum exercitationem modi incidunt ut rerum et enim aut et molestias ut et dolorem dolorem nihil. ?', '1', '2', '18', '20', 'Et dolor reprehenderit voluptatum autem labore similique voluptatum sunt ratione similique quibusdam qui beatae laborum eaque aspernatur autem fugiat dicta dolorum quam et vitae rem impedit consequatur exercitationem dolorum corrupti et similique officiis sapiente repudiandae aut quia molestiae quaerat sapiente sunt dignissimos.');
INSERT INTO `question` VALUES ('475', 'Enim aliquid possimus in nostrum doloremque nihil molestias quis aut harum eveniet tempore excepturi ab totam porro. ?', '1', '2', '18', '20', 'Quis dolorem saepe doloremque facilis labore est officia dicta qui nisi et tempora enim ipsam corporis omnis laborum exercitationem inventore eos et illo ut et sed delectus magni et iusto provident.');
INSERT INTO `question` VALUES ('476', 'Architecto tempore rem doloribus omnis est ut ratione dolores omnis enim culpa dolore nisi ut. ?', '1', '2', '18', '20', 'Sed magni ut possimus architecto in magnam iste accusamus accusamus qui nostrum ut mollitia et quam qui iusto sit est magni.');
INSERT INTO `question` VALUES ('477', 'Vel voluptatem molestiae non ducimus optio sit neque nihil nam et soluta architecto accusamus rerum harum. ?', '1', '2', '18', '20', 'Perspiciatis id pariatur deleniti omnis quo doloremque odit voluptatibus et vel illum dolor provident error ut facilis error eum voluptate est veniam et iusto sit.');
INSERT INTO `question` VALUES ('478', 'Nesciunt expedita magni a possimus et quia velit laboriosam reiciendis eveniet odit deleniti vitae rerum illo. ?', '1', '2', '18', '20', 'Voluptate illo blanditiis eum et voluptate porro nam nesciunt autem nihil cupiditate eos sapiente atque est et magni laudantium ut impedit voluptas optio.');
INSERT INTO `question` VALUES ('479', 'Qui culpa harum et neque eius accusamus in ut voluptatem et placeat voluptatum nemo molestiae repellendus dolorem dolore. ?', '1', '2', '18', '20', 'In nobis consequatur eius quam ea iure quasi animi amet iusto et eos dolor doloremque consequuntur facilis est fuga qui nam qui eaque tenetur optio molestias sed quae doloremque ut aut minima ut.');
INSERT INTO `question` VALUES ('480', 'Similique provident odit dolorem vel nihil explicabo et cumque esse nobis tempora eveniet et minus odit aliquam dolorem debitis sit amet at ut vel. ?', '1', '2', '18', '20', 'Magni quia libero ipsa voluptatibus velit doloremque sequi quia corporis impedit et qui saepe eos sint velit modi autem autem facere ut voluptatem animi deleniti id quae saepe aut et quibusdam ipsa aperiam blanditiis iste incidunt cupiditate velit et sit aut architecto.');
INSERT INTO `question` VALUES ('481', 'Asperiores amet est accusamus reiciendis qui et culpa voluptatem dolor reprehenderit suscipit praesentium quia nesciunt voluptas cumque autem laborum. ?', '1', '2', '2', '21', 'Nam aspernatur nisi sit recusandae repellat quibusdam vitae sed sed quidem praesentium incidunt error quam dicta corrupti odio dolorem nisi aut voluptatem magni accusantium magni aliquid pariatur dolorem assumenda impedit magnam nesciunt id sed nisi animi ut repellendus veniam nisi ex magni.');
INSERT INTO `question` VALUES ('482', 'Voluptas ut dolorum amet similique explicabo in est molestiae quaerat voluptas. ?', '1', '2', '2', '21', 'Natus assumenda quidem ut facilis non distinctio assumenda sit aut quos rem aut et voluptatem atque ut ea sint quasi voluptatem fugit facilis corporis exercitationem quasi earum qui voluptas et alias sit aliquid consequatur amet.');
INSERT INTO `question` VALUES ('483', 'Animi modi sed ut aut illo officia reiciendis quod saepe laborum quis vel dolore perferendis iure blanditiis et nam atque commodi. ?', '1', '2', '2', '21', 'Possimus aperiam est mollitia magnam autem minima eum cumque tenetur sapiente consequatur ut magni similique nam consectetur est unde aut iure nam quas.');
INSERT INTO `question` VALUES ('484', 'Suscipit cumque nesciunt rerum quo doloremque odit quisquam corporis eveniet animi aut natus a. ?', '1', '2', '2', '21', 'Sit et non minima corporis nostrum minus eum ea consequatur molestias quos modi et qui sed doloremque eius autem odio et aliquam aliquid et reiciendis omnis ipsa doloremque et sunt consequuntur accusantium deserunt voluptate.');
INSERT INTO `question` VALUES ('485', 'Magni magnam esse delectus numquam rerum odit autem sit nihil rerum sit voluptatibus quod. ?', '1', '2', '2', '21', 'Inventore omnis totam nostrum at rem nemo sed aliquam dolores minus quam et exercitationem et est iusto natus repudiandae sint a et facilis ut earum iure omnis delectus molestias repudiandae eos perspiciatis numquam laboriosam itaque distinctio sint perspiciatis.');
INSERT INTO `question` VALUES ('486', 'Reiciendis omnis ad aliquam ut odio quaerat ex officia repellendus ratione sed saepe nesciunt culpa molestiae vitae sint sit minus ut ut est. ?', '1', '2', '2', '21', 'Quia fugiat est ut cupiditate perferendis impedit nobis modi voluptas corporis quidem consequatur ad fuga fugit dolorem numquam aut ex consectetur asperiores dolores aut sunt modi exercitationem porro sed natus quo omnis necessitatibus qui repellat.');
INSERT INTO `question` VALUES ('487', 'Fuga sed voluptatem numquam rerum voluptatem nam debitis fuga adipisci quasi veniam a quaerat ipsum incidunt vero voluptatibus molestiae delectus dolorum quisquam. ?', '1', '2', '2', '21', 'Sed repellat et rerum libero voluptas dolorem placeat nisi recusandae ea est inventore amet exercitationem aut ex incidunt magni quia ipsam.');
INSERT INTO `question` VALUES ('488', 'Recusandae sunt fugit ipsam blanditiis quia occaecati sapiente autem error provident omnis iure ea ea ad. ?', '1', '2', '2', '21', 'Illo totam totam aut dignissimos tempore nemo perspiciatis quaerat necessitatibus nulla non qui corrupti et esse magnam molestias sed qui voluptatibus earum tenetur nesciunt praesentium neque quis alias quaerat sed repudiandae eligendi sit voluptatem modi est blanditiis sed in odit.');
INSERT INTO `question` VALUES ('489', 'Voluptas et accusantium sunt ipsam explicabo accusamus illo ab placeat omnis exercitationem deleniti explicabo sit. ?', '1', '2', '2', '21', 'Qui est qui rerum ea expedita sapiente ut dolore dolorum aut a voluptate et rerum ipsa nesciunt est voluptatem non fugiat omnis possimus unde nesciunt quasi corporis quo reiciendis deserunt voluptatem et ratione praesentium dolores veniam neque quia culpa.');
INSERT INTO `question` VALUES ('490', 'Quia nesciunt expedita ut voluptate voluptates et iste officia architecto doloremque quam molestiae est vitae dolorem autem magni magnam cumque. ?', '1', '2', '2', '21', 'A debitis non quis debitis ad dicta eos ut quo animi eos numquam voluptatibus et soluta quas tempora velit voluptatem esse quos et dignissimos omnis esse cum animi incidunt excepturi impedit.');
INSERT INTO `question` VALUES ('491', 'Omnis culpa fuga asperiores placeat aliquam aut non eum in quia dolorem veniam alias voluptatem velit. ?', '1', '2', '2', '21', 'Eaque qui voluptate sint dolorem dolorem aut voluptas aut accusantium repellendus natus non et vero sit sint dolorem voluptas ut.');
INSERT INTO `question` VALUES ('492', 'Sint veritatis numquam modi totam corrupti nihil voluptate et unde commodi nesciunt nemo non. ?', '1', '2', '2', '21', 'Et et autem sit est iure eveniet quidem facilis illum in ipsa beatae sed consequatur quis et ullam accusantium ut ut aperiam ut id dolorum nam qui ullam ab rerum eum reiciendis ratione autem mollitia est eaque asperiores occaecati sequi tempore.');
INSERT INTO `question` VALUES ('493', 'A qui incidunt sed omnis atque temporibus nemo unde iste magnam ea perferendis repellendus iusto ducimus laudantium sint nulla officiis fugit. ?', '1', '2', '2', '21', 'Mollitia odit sed ut possimus doloribus qui voluptatem quas dolorum dolorem sit possimus minima laudantium consectetur quis iusto vitae minus.');
INSERT INTO `question` VALUES ('494', 'Rerum optio et deleniti voluptatum sunt ullam et eaque nostrum eaque sint nihil quia vitae quos enim voluptatem corporis blanditiis possimus. ?', '1', '2', '2', '21', 'Voluptas quia praesentium voluptatem vitae eum et delectus earum aut debitis voluptatem qui praesentium quisquam dolorum omnis nulla ipsum in voluptatum magnam voluptatum voluptas vel iusto ab est voluptatem dolor temporibus tempora.');
INSERT INTO `question` VALUES ('495', 'Placeat eaque labore officiis voluptatem rerum voluptatibus consequatur voluptas et nam eum velit dolor ea a et sed sunt. ?', '1', '2', '2', '21', 'Id sed ut asperiores placeat ab dolorem sit nobis minus cupiditate fuga sunt error maiores hic vitae tempora quis sit illum qui sit unde quibusdam consectetur.');
INSERT INTO `question` VALUES ('496', 'Iusto atque autem nemo excepturi excepturi repellendus et veniam optio dolorum id modi non facere suscipit. ?', '1', '2', '2', '21', 'Nulla debitis alias repudiandae labore commodi blanditiis rerum enim enim eum molestiae maiores suscipit qui in distinctio error rerum aliquam et cumque.');
INSERT INTO `question` VALUES ('497', 'Qui quo et voluptate alias unde consectetur dignissimos doloribus officia voluptatem voluptas sit vel vitae ut laudantium aut eaque. ?', '1', '2', '2', '21', 'Unde odio aut ut odit qui nam in laborum molestiae totam consequatur nostrum dolore excepturi et illo neque autem illum non eveniet earum in ad.');
INSERT INTO `question` VALUES ('498', 'Odit veritatis expedita dicta ut ipsum dolorem impedit exercitationem ut id adipisci id sit ut. ?', '1', '2', '2', '21', 'At deserunt reprehenderit omnis velit animi magni rerum quos eum praesentium nemo ullam dolor harum commodi ipsum et consequatur quia est sequi hic aliquid.');
INSERT INTO `question` VALUES ('499', 'Minima necessitatibus fugiat pariatur in molestias iure dicta corrupti error quis accusantium nam nemo iste adipisci rerum. ?', '1', '2', '2', '21', 'Autem itaque consequatur facere ut tempora nobis cupiditate voluptas praesentium et beatae molestiae sint sed eligendi temporibus dolor cum rem ipsa libero dolor voluptas non laudantium quia repellat totam quidem sunt dolor dolorum amet consequuntur rerum illo molestiae ut qui.');
INSERT INTO `question` VALUES ('500', 'Consequuntur nesciunt ex similique nostrum quasi autem asperiores cumque ipsum perferendis rem eligendi. ?', '1', '2', '2', '21', 'Illo sed mollitia et in aut rerum nulla hic unde ea quae ipsa fugiat eaque itaque facilis repudiandae quam cumque sit quas nobis reiciendis officiis iusto ipsa sed magni soluta quos aspernatur molestias inventore consequuntur.');
INSERT INTO `question` VALUES ('501', 'Est deleniti voluptatem repudiandae et dicta quisquam molestiae molestias voluptatibus officiis eius quia alias enim dolores. ?', '1', '2', '2', '21', 'Ea inventore est qui dolorum et sit ad veniam repudiandae ipsum quod voluptas dolorem alias quia at sunt consequatur.');
INSERT INTO `question` VALUES ('502', 'Inventore commodi numquam quod autem laudantium id animi libero quibusdam voluptas et tempore deleniti. ?', '1', '2', '2', '21', 'Quae dignissimos dolor facere dolor reiciendis corrupti quam in magni placeat dolor autem voluptas maiores totam et dolores rerum explicabo qui minus sit porro ratione ipsum ducimus debitis maiores aut nobis neque debitis consequatur fugit suscipit enim corrupti sit incidunt.');
INSERT INTO `question` VALUES ('503', 'Sunt cum vitae facere ab et et architecto soluta quas dicta qui officiis molestiae est ex. ?', '1', '2', '2', '21', 'Veniam et tenetur sequi perspiciatis harum vel eveniet est sint recusandae exercitationem molestiae necessitatibus maxime minus in nam incidunt assumenda sunt ducimus cum voluptate aut iure quasi natus cupiditate est perspiciatis libero culpa hic.');
INSERT INTO `question` VALUES ('504', 'Aut aspernatur illum autem maxime dolorum dolorem natus itaque quia rem et inventore. ?', '1', '2', '2', '21', 'Minima iusto est eius omnis error iusto sit esse omnis veritatis laborum tempora quidem numquam id debitis cumque ex minus omnis minima aut enim et nisi optio aut accusamus esse quisquam quo deleniti et voluptatem perferendis dolorem.');
INSERT INTO `question` VALUES ('505', 'Ut cupiditate non sed fugit sequi voluptatibus magni sunt repellat voluptate voluptatem ab qui sint voluptas rerum temporibus sed eius. ?', '1', '2', '2', '21', 'Quis quod libero delectus consequuntur sint modi et sunt ipsum sed dolorem omnis sapiente quod qui quia laudantium laudantium error officiis iusto quisquam aut.');
INSERT INTO `question` VALUES ('506', 'Voluptatem inventore optio dignissimos blanditiis consequatur perferendis quia dolorum saepe aut. ?', '1', '2', '2', '21', 'Quia occaecati asperiores harum in fugiat sunt dolore sed sit officia tenetur voluptatem maiores esse quo qui voluptas hic repellendus quam quo beatae ipsum sequi qui ex sunt.');
INSERT INTO `question` VALUES ('507', 'Sapiente rerum aut unde quae qui tempore omnis quisquam officiis libero quis beatae deleniti libero iure qui cupiditate ut. ?', '1', '2', '2', '21', 'Illum odit recusandae consequatur soluta molestiae velit labore modi est voluptatem et repellat aut et architecto ut saepe molestias voluptatem velit quia natus ipsam veniam veritatis ab molestiae quis quia.');
INSERT INTO `question` VALUES ('508', 'Quisquam ratione voluptas voluptas quibusdam porro exercitationem distinctio sed qui quos accusantium. ?', '1', '2', '2', '21', 'Quam fugit eius voluptatem labore blanditiis quos iure voluptatem est quia odio sunt aut facere officiis itaque ut porro doloremque consequatur adipisci rerum rerum aut voluptatem distinctio molestias vel hic reiciendis aut soluta exercitationem eligendi repellat.');
INSERT INTO `question` VALUES ('509', 'Aut placeat repudiandae sapiente maiores ut quaerat impedit et et et aliquam dolor. ?', '1', '2', '2', '21', 'Dicta amet aperiam pariatur voluptatem nihil aut earum aspernatur odio ab laboriosam alias nihil et consequuntur cupiditate velit velit corporis consequuntur labore veniam et neque quis consequatur nulla animi odio assumenda iusto repellendus error eum aut.');
INSERT INTO `question` VALUES ('510', 'Atque tempore aliquid tempora voluptas explicabo vitae assumenda soluta sed quo qui consequatur harum. ?', '1', '2', '2', '21', 'Omnis inventore doloribus rerum est deleniti quas aliquam sit minus eos in aliquid enim omnis saepe et velit dolorem nostrum eum dolorem nihil.');
INSERT INTO `question` VALUES ('511', 'Ut iste eum sit eum pariatur itaque facere tempore libero eaque voluptas officiis facilis labore maxime non debitis fuga id et nostrum dolor consectetur. ?', '1', '3', '32', '22', 'Similique illo ut provident aperiam quasi dolor suscipit quia qui qui dolorem quis nihil ipsa nihil minus omnis modi voluptate facilis eius quos consequuntur ea.');
INSERT INTO `question` VALUES ('512', 'Ullam incidunt ipsum quas iste sint ullam repellat nihil necessitatibus nesciunt. ?', '1', '3', '32', '22', 'Voluptatem rerum quidem pariatur voluptatibus quis mollitia eum eligendi ea beatae veniam rerum eveniet architecto repudiandae omnis id voluptate amet illum aspernatur reiciendis optio iure in eum unde ut beatae et beatae magni esse consequatur qui tempora nisi.');
INSERT INTO `question` VALUES ('513', 'Et consequatur amet repellendus similique ut corrupti et consectetur esse libero voluptas ut id. ?', '1', '3', '32', '22', 'Hic mollitia ut vero eos suscipit vero cupiditate commodi optio et laborum molestiae voluptatem omnis eum soluta non incidunt delectus libero velit qui maxime beatae a rerum aut sit atque in voluptate quo rerum commodi veritatis ut expedita reiciendis saepe.');
INSERT INTO `question` VALUES ('514', 'Tempore quis vero maiores aut ipsa odio officiis aperiam soluta beatae veritatis quis necessitatibus in quo excepturi iusto. ?', '1', '3', '32', '22', 'Qui asperiores sit sit et ut reiciendis facilis est autem qui aut omnis magni sit nemo iusto eveniet excepturi expedita.');
INSERT INTO `question` VALUES ('515', 'Perspiciatis saepe nam explicabo eum dolores qui a sit dolores nesciunt ea et. ?', '1', '3', '32', '22', 'Ipsa dicta earum numquam eveniet ut dolor temporibus est sapiente porro voluptates officia aut omnis quia alias vero quibusdam animi et animi aut et cupiditate quod ducimus ut exercitationem iure quia alias esse veniam blanditiis nisi voluptatem voluptatem iste voluptatem.');
INSERT INTO `question` VALUES ('516', 'Necessitatibus at vel et autem quo iste et et fugit ex dolorum sed ut aut inventore. ?', '1', '3', '32', '22', 'Aut ut omnis expedita voluptatum autem aut tenetur repellendus amet ratione necessitatibus doloremque est ut non recusandae nihil molestiae accusantium rerum voluptatem aut voluptas et molestiae adipisci cupiditate aspernatur.');
INSERT INTO `question` VALUES ('517', 'Doloremque deserunt et hic culpa et qui atque aut hic provident esse voluptatem laudantium. ?', '1', '3', '32', '22', 'Aut iste maiores ut eum occaecati asperiores autem dolorem voluptas nostrum ea aut nobis optio et vero quo occaecati accusamus dolorem ipsum quo neque.');
INSERT INTO `question` VALUES ('518', 'Consectetur quaerat impedit omnis in quia molestiae non consectetur cumque vel nihil libero ut dicta asperiores laudantium sint qui mollitia sunt aut. ?', '1', '3', '32', '22', 'Aliquam reprehenderit et quibusdam culpa perspiciatis consequatur minima magnam quaerat nobis ipsam in ipsum nesciunt laboriosam officia sapiente qui hic quis adipisci et aut sunt cumque voluptas aliquid eum.');
INSERT INTO `question` VALUES ('519', 'Et quam iure quae et enim beatae explicabo pariatur dicta vel explicabo porro. ?', '1', '3', '32', '22', 'Quas voluptas et aliquam totam laborum ea eum quis et est qui qui quisquam omnis fugit ut at incidunt veniam expedita.');
INSERT INTO `question` VALUES ('520', 'Et nulla voluptatum est quia doloribus officia at nam esse sequi quod voluptas ut aut sint pariatur aperiam eligendi rerum rerum architecto adipisci. ?', '1', '3', '32', '22', 'Quia et hic est a cupiditate dolor commodi voluptatibus a qui vel ut officiis itaque exercitationem inventore porro placeat libero eum quia non ad est nesciunt illo qui doloribus quia excepturi et et sequi et a iure et doloremque.');
INSERT INTO `question` VALUES ('521', 'Et rerum magnam impedit sed reiciendis repellendus velit repellendus qui repellat sed aut a ducimus id cumque ad at aut deleniti iusto cum sed. ?', '1', '2', '5', '23', 'Nihil alias fuga similique omnis eius minima numquam consequuntur explicabo voluptas maxime sed voluptatum sit et dicta in aut animi quia quia rem id sint et aut libero ea labore dolor blanditiis officiis laborum recusandae quae sed.');
INSERT INTO `question` VALUES ('522', 'Eius dolore culpa sed magnam dolor et aliquid perspiciatis laboriosam dolorum deleniti sunt. ?', '1', '2', '5', '23', 'Inventore iste rerum occaecati voluptatibus omnis qui et quo autem ut ut excepturi nihil aliquam quia nemo aliquam cupiditate qui rerum.');
INSERT INTO `question` VALUES ('523', 'Similique et vel impedit aliquam numquam error et maxime tempore officia facilis nostrum accusantium ut magnam quibusdam. ?', '1', '2', '5', '23', 'Est omnis voluptatem est consequuntur voluptatum at tenetur natus non vel quia qui dicta iure ut ducimus est hic aliquam error aut praesentium rerum at.');
INSERT INTO `question` VALUES ('524', 'Molestias rerum sit est ex aut at modi vel ipsam qui non et vel sed ut earum quae possimus ex totam delectus excepturi at. ?', '1', '2', '5', '23', 'Id aut ipsa ea temporibus dolorem ut nam ullam et est voluptas pariatur veniam minima minima eveniet magnam exercitationem quasi dolor atque corrupti atque labore qui consequatur tempore reprehenderit tempore optio quisquam illo at animi reprehenderit.');
INSERT INTO `question` VALUES ('525', 'Molestiae suscipit voluptatem autem sapiente occaecati iure sed aliquid libero vero vitae facere expedita molestiae sit molestiae amet fugiat cupiditate dolore. ?', '1', '2', '5', '23', 'At non est nemo quas nulla et rerum odio corporis consectetur non aut officiis temporibus qui sequi voluptatem saepe ut ut ullam similique nihil cupiditate rerum sequi officiis illum est commodi voluptates eum ut dolor ad praesentium reprehenderit.');
INSERT INTO `question` VALUES ('526', 'Et et hic modi in quisquam mollitia possimus omnis aperiam voluptate amet nemo cumque quo iure enim in fuga sit dolor sit molestias. ?', '1', '2', '5', '23', 'Veritatis perferendis repudiandae et saepe incidunt voluptatibus hic quidem placeat dolor non labore pariatur quam eius facere praesentium ex rerum eum eos ut occaecati voluptates nam provident sed animi in vitae aliquid et voluptatem.');
INSERT INTO `question` VALUES ('527', 'Quas impedit nulla sit nemo omnis rem alias unde qui tempora placeat nemo est sequi quisquam nulla similique qui quam maiores. ?', '1', '2', '5', '23', 'Est ullam saepe libero ut omnis id occaecati cupiditate temporibus sint possimus maiores et fugiat ea eos quidem quis quasi rerum qui sunt hic impedit rerum accusamus quos perspiciatis sint enim placeat asperiores et numquam reprehenderit unde provident velit nulla ratione.');
INSERT INTO `question` VALUES ('528', 'Doloribus quae dicta necessitatibus cum vitae totam ut aut omnis iste repudiandae aliquid non itaque aut et sit ex ex non dolor perspiciatis omnis. ?', '1', '2', '5', '23', 'Et asperiores labore et veritatis reiciendis et cumque in eum quam voluptatem et autem eligendi ut ad sunt alias autem quia quo laudantium explicabo aliquid molestiae provident assumenda officia quam illo aperiam.');
INSERT INTO `question` VALUES ('529', 'Labore velit architecto modi et officiis occaecati quam omnis voluptatem dolorem doloribus quisquam esse in delectus quidem alias. ?', '1', '2', '5', '23', 'Odio sunt aut id iure ipsam fugiat provident ut animi laudantium et officia ad est est illum impedit odio aut minima officiis ducimus dolor architecto quis quasi ullam excepturi fugiat at a voluptatem suscipit qui eos enim voluptas et.');
INSERT INTO `question` VALUES ('530', 'Voluptatibus similique ipsum deleniti vero velit eveniet illum et sed molestiae vitae eos nobis autem dignissimos voluptatum qui nam quos quasi. ?', '1', '2', '5', '23', 'Pariatur ducimus culpa fuga voluptatum non numquam repellat cupiditate repellat repellat eos modi aut nihil ut animi unde explicabo et rerum iste explicabo molestiae cumque repudiandae cupiditate.');
INSERT INTO `question` VALUES ('531', 'Quam et ut aspernatur eos aut earum rerum et est dolores consequatur optio quaerat voluptatum vero consequatur nostrum quia temporibus fugit dolorem iusto. ?', '1', '2', '5', '23', 'Dolorum illo tempora nam qui facere vitae iste expedita non sit repellendus quis dolorem explicabo natus ut dignissimos id voluptatem accusantium ut unde enim repudiandae sed ab voluptatem est voluptates qui repellendus rerum.');
INSERT INTO `question` VALUES ('532', 'Facere beatae quidem ea inventore quis ex rem consequuntur nemo similique est libero tempora sit ex similique libero cumque deserunt quia ea quo quibusdam. ?', '1', '2', '5', '23', 'Tempore qui molestiae ratione voluptas velit deleniti voluptatem delectus repudiandae aut voluptas placeat dolor veritatis sunt saepe numquam occaecati tenetur optio quia voluptas vero.');
INSERT INTO `question` VALUES ('533', 'Delectus incidunt cupiditate libero labore et odio ducimus voluptatum ipsam ab repellendus. ?', '1', '2', '5', '23', 'Nam cum enim delectus voluptatem quia quos sit sunt consequatur in non suscipit aut aut aspernatur deserunt voluptas autem quaerat numquam cum ipsum nobis asperiores aspernatur dolor cupiditate tempora quis aut.');
INSERT INTO `question` VALUES ('534', 'Sed sint quas et quibusdam quaerat neque accusantium laboriosam non ad quis sunt. ?', '1', '2', '5', '23', 'Qui ut unde assumenda eveniet natus sint fugit omnis unde eum qui repellendus et cum animi velit esse voluptatem corporis nobis voluptatem quia nostrum aspernatur dolor omnis dolorem.');
INSERT INTO `question` VALUES ('535', 'Qui non dolore tempora omnis consectetur consequatur vel dolores consectetur qui impedit unde. ?', '1', '2', '5', '23', 'Nemo minima corrupti et sed qui et blanditiis fuga animi quasi veritatis ex nam ratione commodi architecto fuga asperiores placeat accusantium ipsum non et qui.');
INSERT INTO `question` VALUES ('536', 'Iste architecto ad et explicabo quia quaerat modi a enim ipsa harum sit aut dolor est blanditiis voluptatum. ?', '1', '2', '5', '23', 'Similique minima qui sed sunt veniam aliquam aut ea nulla beatae accusantium rerum qui animi ea non eum in consequuntur labore sequi labore corporis ullam repellat aut dolores ex enim enim nihil sed sunt provident harum sint veniam molestiae ut quia eius.');
INSERT INTO `question` VALUES ('537', 'Ut facere nesciunt illum debitis quod ducimus facere praesentium quisquam debitis in sit aut accusamus placeat rerum nihil esse consequatur velit dignissimos. ?', '1', '2', '5', '23', 'Et optio iure dolorem omnis provident deleniti numquam aliquid at eos eum reiciendis aut nulla earum natus rerum neque ut cumque non ea mollitia est.');
INSERT INTO `question` VALUES ('538', 'Quis voluptatum consequuntur et omnis omnis id temporibus labore minus veritatis ex aut natus aliquam tempora quis voluptatem deserunt dolores est cum quis. ?', '1', '2', '5', '23', 'Magni cumque eum minus officiis qui quos ipsam eum ut et autem atque nostrum fugiat similique officia et eius qui et veniam aliquam necessitatibus et voluptatem est iusto alias aut.');
INSERT INTO `question` VALUES ('539', 'Est nostrum ipsam excepturi pariatur dolorum itaque enim ipsum minima quo fugit ullam molestiae iusto perspiciatis sit. ?', '1', '2', '5', '23', 'Sint fugit atque optio culpa modi ab sunt nam sunt voluptatibus non saepe commodi vel omnis ea in animi ut.');
INSERT INTO `question` VALUES ('540', 'Nam debitis quis deserunt eius ut est id officiis fuga voluptatem sit eius voluptatem sit omnis officia eos aperiam modi laudantium labore. ?', '1', '2', '5', '23', 'Eaque inventore suscipit dolores deleniti iste eum nam doloribus quo porro itaque aliquid a possimus eos aliquam dolores consequatur repellat exercitationem aut corporis modi est.');
INSERT INTO `question` VALUES ('541', 'A nam dolor sed autem illo nulla quis necessitatibus quos qui quia sed illum. ?', '1', '7', '15', '24', 'Aliquam facilis non modi quaerat et aliquam eveniet sed quas laborum maiores nam eos minima iste et sit sed recusandae necessitatibus dolores maxime ut.');
INSERT INTO `question` VALUES ('542', 'Doloribus odit et architecto ex sint rerum qui at ut corporis dicta mollitia praesentium omnis impedit nesciunt et. ?', '1', '7', '15', '24', 'Illum et suscipit voluptatibus ad aliquid nihil alias totam quo minima dolorum consequuntur consectetur a tempore corrupti incidunt repudiandae dolor iusto libero repellat aliquid.');
INSERT INTO `question` VALUES ('543', 'Id magnam ipsam animi unde quas sed saepe assumenda ut sunt numquam cupiditate atque doloribus nemo voluptatem vitae ut dignissimos ullam. ?', '1', '7', '15', '24', 'Recusandae voluptatem quisquam asperiores adipisci iste ex qui quis et consectetur est quod voluptatibus et vero natus quidem molestiae fugit ullam sunt odit explicabo quibusdam sit quia similique illum tempore et corporis tempora molestias voluptatem eaque numquam officiis eum.');
INSERT INTO `question` VALUES ('544', 'Veniam iusto aperiam aut recusandae quo quae maxime ipsam consequatur quia expedita officia ut. ?', '1', '7', '15', '24', 'Quibusdam ex ab omnis consequuntur alias sequi voluptatem expedita eaque in est autem optio officiis excepturi error voluptates sit voluptatem ipsum quia in illo id.');
INSERT INTO `question` VALUES ('545', 'Iste illum pariatur atque eveniet nam veritatis in praesentium ipsam repellendus harum non est placeat aliquid quas ipsum rem non atque. ?', '1', '7', '15', '24', 'Explicabo fuga animi ea atque odio enim similique illo consequatur eveniet nulla consequatur dicta similique voluptatem sed non quis quo commodi consequatur accusamus voluptatem rerum quibusdam et doloremque non velit quia aperiam.');
INSERT INTO `question` VALUES ('546', 'Laborum ea autem reiciendis corporis labore inventore nihil ab quis ea ut perspiciatis quam voluptas rerum ut et debitis inventore dolor corrupti asperiores cupiditate. ?', '1', '7', '15', '24', 'Sed autem voluptates labore aperiam beatae dolor sunt sapiente hic magni ullam praesentium optio illum aut fuga rerum in cupiditate nostrum odio et non molestiae quis officiis ab tempore quae quo ut cumque quam ut rem libero ea quisquam exercitationem.');
INSERT INTO `question` VALUES ('547', 'Doloremque explicabo labore aut ab et incidunt magnam explicabo commodi distinctio quas et sit. ?', '1', '7', '15', '24', 'Aliquid tempore atque illum neque velit ad eos quam est placeat doloribus fugiat adipisci dolores maxime maxime laudantium odio dolorem tempore est aut exercitationem eos veniam non aut voluptatem similique eum veritatis.');
INSERT INTO `question` VALUES ('548', 'Velit repellat reprehenderit blanditiis odio voluptatem tempore porro magnam nisi ipsam quia sint neque modi non quod cupiditate assumenda soluta beatae eaque. ?', '1', '7', '15', '24', 'Voluptas officia consequatur quia odit et corporis quidem sapiente qui non pariatur quaerat quasi omnis tenetur quis voluptatem ab inventore necessitatibus repellendus sunt ab ea nemo ut maiores earum laboriosam facere voluptates nam autem nihil aliquid iusto qui repellat eum quae libero.');
INSERT INTO `question` VALUES ('549', 'Atque laborum itaque modi ad labore nemo earum blanditiis qui ipsam incidunt et nulla repellendus beatae ut unde est. ?', '1', '7', '15', '24', 'Ratione blanditiis repudiandae ut iure molestias qui in eum facilis esse id praesentium qui dolorem quo voluptatum aliquid et minima et tempore odit sint tempora recusandae ratione occaecati ea voluptatem praesentium voluptatem aspernatur.');
INSERT INTO `question` VALUES ('550', 'Non laborum voluptatum iure deserunt quaerat nemo consequatur et velit et nam illo consequatur accusantium consectetur est qui. ?', '1', '7', '15', '24', 'Doloremque molestiae iure doloremque recusandae dolorem voluptate sit aliquam tenetur quod laboriosam dolor qui saepe tempora commodi harum officia non delectus rerum nulla voluptas sed nihil ut itaque perspiciatis dolor tempora delectus quas cumque deserunt harum sunt quis qui.');

-- ----------------------------
-- Table structure for question_answer
-- ----------------------------
DROP TABLE IF EXISTS `question_answer`;
CREATE TABLE `question_answer` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `is_true` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1: true, 0:false',
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_answer
-- ----------------------------
INSERT INTO `question_answer` VALUES ('1', '1', 'Optio mollitia.', '1');
INSERT INTO `question_answer` VALUES ('2', '1', 'Nemo itaque delectus.', '0');
INSERT INTO `question_answer` VALUES ('3', '1', 'Ab ut.', '0');
INSERT INTO `question_answer` VALUES ('4', '1', 'Quis non quasi.', '0');
INSERT INTO `question_answer` VALUES ('5', '2', 'Non nostrum sed.', '0');
INSERT INTO `question_answer` VALUES ('6', '2', 'Accusamus dolor quas.', '1');
INSERT INTO `question_answer` VALUES ('7', '2', 'Et deserunt.', '0');
INSERT INTO `question_answer` VALUES ('8', '2', 'Sit aut eum.', '0');
INSERT INTO `question_answer` VALUES ('9', '3', 'Optio excepturi.', '0');
INSERT INTO `question_answer` VALUES ('10', '3', 'Facere impedit.', '1');
INSERT INTO `question_answer` VALUES ('11', '3', 'Natus enim nulla.', '0');
INSERT INTO `question_answer` VALUES ('12', '3', 'Doloremque veniam est.', '0');
INSERT INTO `question_answer` VALUES ('13', '4', 'Cupiditate esse.', '0');
INSERT INTO `question_answer` VALUES ('14', '4', 'Laudantium ut.', '0');
INSERT INTO `question_answer` VALUES ('15', '4', 'Natus dolore voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('16', '4', 'Aut id aut.', '1');
INSERT INTO `question_answer` VALUES ('17', '5', 'Et labore.', '1');
INSERT INTO `question_answer` VALUES ('18', '5', 'Accusamus adipisci placeat.', '0');
INSERT INTO `question_answer` VALUES ('19', '5', 'Ullam molestiae.', '0');
INSERT INTO `question_answer` VALUES ('20', '5', 'Accusantium ut et.', '0');
INSERT INTO `question_answer` VALUES ('21', '6', 'Accusamus et molestiae.', '0');
INSERT INTO `question_answer` VALUES ('22', '6', 'Labore accusantium.', '0');
INSERT INTO `question_answer` VALUES ('23', '6', 'Accusamus ipsa qui.', '1');
INSERT INTO `question_answer` VALUES ('24', '6', 'Velit et tempore.', '0');
INSERT INTO `question_answer` VALUES ('25', '7', 'Saepe sed.', '1');
INSERT INTO `question_answer` VALUES ('26', '7', 'Quasi consequatur commodi.', '0');
INSERT INTO `question_answer` VALUES ('27', '7', 'Provident ad.', '0');
INSERT INTO `question_answer` VALUES ('28', '7', 'Id id.', '0');
INSERT INTO `question_answer` VALUES ('29', '8', 'Earum non nulla.', '0');
INSERT INTO `question_answer` VALUES ('30', '8', 'Quos reiciendis deleniti.', '1');
INSERT INTO `question_answer` VALUES ('31', '8', 'Rerum ut.', '0');
INSERT INTO `question_answer` VALUES ('32', '8', 'Adipisci eligendi.', '0');
INSERT INTO `question_answer` VALUES ('33', '9', 'Aliquid doloribus.', '0');
INSERT INTO `question_answer` VALUES ('34', '9', 'Dolorum ad.', '1');
INSERT INTO `question_answer` VALUES ('35', '9', 'Aut natus sit.', '0');
INSERT INTO `question_answer` VALUES ('36', '9', 'Omnis expedita quas.', '0');
INSERT INTO `question_answer` VALUES ('37', '10', 'Quae aspernatur.', '1');
INSERT INTO `question_answer` VALUES ('38', '10', 'Architecto assumenda.', '0');
INSERT INTO `question_answer` VALUES ('39', '10', 'Eos harum sint.', '0');
INSERT INTO `question_answer` VALUES ('40', '10', 'Ut ut modi.', '0');
INSERT INTO `question_answer` VALUES ('41', '11', 'Explicabo consequatur.', '0');
INSERT INTO `question_answer` VALUES ('42', '11', 'Quod et qui.', '0');
INSERT INTO `question_answer` VALUES ('43', '11', 'Dignissimos quia optio.', '1');
INSERT INTO `question_answer` VALUES ('44', '11', 'Neque et et.', '0');
INSERT INTO `question_answer` VALUES ('45', '12', 'Doloribus maxime quis.', '0');
INSERT INTO `question_answer` VALUES ('46', '12', 'Dignissimos magnam aspernatur.', '1');
INSERT INTO `question_answer` VALUES ('47', '12', 'Rem fugiat.', '0');
INSERT INTO `question_answer` VALUES ('48', '12', 'Qui doloremque.', '0');
INSERT INTO `question_answer` VALUES ('49', '13', 'Similique est.', '0');
INSERT INTO `question_answer` VALUES ('50', '13', 'Et sit est.', '1');
INSERT INTO `question_answer` VALUES ('51', '13', 'Aut molestiae.', '0');
INSERT INTO `question_answer` VALUES ('52', '13', 'Consectetur ut voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('53', '14', 'Harum recusandae assumenda.', '1');
INSERT INTO `question_answer` VALUES ('54', '14', 'Id eius.', '0');
INSERT INTO `question_answer` VALUES ('55', '14', 'Quo excepturi est.', '0');
INSERT INTO `question_answer` VALUES ('56', '14', 'Nulla at.', '0');
INSERT INTO `question_answer` VALUES ('57', '15', 'Voluptas modi.', '0');
INSERT INTO `question_answer` VALUES ('58', '15', 'Ad mollitia.', '0');
INSERT INTO `question_answer` VALUES ('59', '15', 'Delectus repudiandae cumque.', '1');
INSERT INTO `question_answer` VALUES ('60', '15', 'Iure inventore natus.', '0');
INSERT INTO `question_answer` VALUES ('61', '16', 'Pariatur aspernatur vitae.', '0');
INSERT INTO `question_answer` VALUES ('62', '16', 'Nobis enim ipsa.', '0');
INSERT INTO `question_answer` VALUES ('63', '16', 'Et distinctio.', '1');
INSERT INTO `question_answer` VALUES ('64', '16', 'Eum dolores.', '0');
INSERT INTO `question_answer` VALUES ('65', '17', 'Sapiente blanditiis molestiae.', '0');
INSERT INTO `question_answer` VALUES ('66', '17', 'In consectetur.', '1');
INSERT INTO `question_answer` VALUES ('67', '17', 'Voluptatem voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('68', '17', 'Saepe adipisci mollitia.', '0');
INSERT INTO `question_answer` VALUES ('69', '18', 'Qui eligendi suscipit.', '0');
INSERT INTO `question_answer` VALUES ('70', '18', 'Porro accusantium.', '0');
INSERT INTO `question_answer` VALUES ('71', '18', 'Voluptatem excepturi.', '0');
INSERT INTO `question_answer` VALUES ('72', '18', 'Tempora eos voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('73', '19', 'Nihil voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('74', '19', 'Nostrum quam autem.', '1');
INSERT INTO `question_answer` VALUES ('75', '19', 'Exercitationem voluptatem in.', '0');
INSERT INTO `question_answer` VALUES ('76', '19', 'Fuga nihil eum.', '0');
INSERT INTO `question_answer` VALUES ('77', '20', 'Omnis tempora.', '0');
INSERT INTO `question_answer` VALUES ('78', '20', 'Cupiditate quia aspernatur.', '0');
INSERT INTO `question_answer` VALUES ('79', '20', 'Voluptatibus voluptates voluptates.', '0');
INSERT INTO `question_answer` VALUES ('80', '20', 'Ut recusandae.', '1');
INSERT INTO `question_answer` VALUES ('81', '21', 'Aperiam laudantium est.', '0');
INSERT INTO `question_answer` VALUES ('82', '21', 'Veritatis veritatis non.', '0');
INSERT INTO `question_answer` VALUES ('83', '21', 'Consequatur occaecati ut.', '0');
INSERT INTO `question_answer` VALUES ('84', '21', 'Pariatur quia reiciendis.', '1');
INSERT INTO `question_answer` VALUES ('85', '22', 'Et velit.', '1');
INSERT INTO `question_answer` VALUES ('86', '22', 'Maiores autem.', '0');
INSERT INTO `question_answer` VALUES ('87', '22', 'Tempora animi.', '0');
INSERT INTO `question_answer` VALUES ('88', '22', 'Dolorem et.', '0');
INSERT INTO `question_answer` VALUES ('89', '23', 'Quaerat quos praesentium.', '1');
INSERT INTO `question_answer` VALUES ('90', '23', 'Soluta qui corrupti.', '0');
INSERT INTO `question_answer` VALUES ('91', '23', 'Soluta sed.', '0');
INSERT INTO `question_answer` VALUES ('92', '23', 'Id beatae.', '0');
INSERT INTO `question_answer` VALUES ('93', '24', 'Laboriosam aut quidem.', '0');
INSERT INTO `question_answer` VALUES ('94', '24', 'Ea non quia.', '1');
INSERT INTO `question_answer` VALUES ('95', '24', 'Eum aperiam omnis.', '0');
INSERT INTO `question_answer` VALUES ('96', '24', 'Fugiat sit.', '0');
INSERT INTO `question_answer` VALUES ('97', '25', 'Ea quo quidem.', '0');
INSERT INTO `question_answer` VALUES ('98', '25', 'Soluta enim.', '0');
INSERT INTO `question_answer` VALUES ('99', '25', 'Facilis et tempore.', '1');
INSERT INTO `question_answer` VALUES ('100', '25', 'In et illum.', '0');
INSERT INTO `question_answer` VALUES ('101', '26', 'Consectetur odit assumenda.', '0');
INSERT INTO `question_answer` VALUES ('102', '26', 'Expedita nam eum.', '0');
INSERT INTO `question_answer` VALUES ('103', '26', 'Quod non ipsa.', '1');
INSERT INTO `question_answer` VALUES ('104', '26', 'Quo sit at.', '0');
INSERT INTO `question_answer` VALUES ('105', '27', 'Animi qui.', '0');
INSERT INTO `question_answer` VALUES ('106', '27', 'Qui repellendus iusto.', '0');
INSERT INTO `question_answer` VALUES ('107', '27', 'Officia ad.', '0');
INSERT INTO `question_answer` VALUES ('108', '27', 'Voluptate vel officia.', '1');
INSERT INTO `question_answer` VALUES ('109', '28', 'Hic beatae.', '0');
INSERT INTO `question_answer` VALUES ('110', '28', 'Eligendi aliquam.', '0');
INSERT INTO `question_answer` VALUES ('111', '28', 'Velit optio autem.', '0');
INSERT INTO `question_answer` VALUES ('112', '28', 'Architecto nisi.', '1');
INSERT INTO `question_answer` VALUES ('113', '29', 'Mollitia nostrum.', '0');
INSERT INTO `question_answer` VALUES ('114', '29', 'Velit praesentium unde.', '0');
INSERT INTO `question_answer` VALUES ('115', '29', 'Quibusdam et molestiae.', '0');
INSERT INTO `question_answer` VALUES ('116', '29', 'Aut animi.', '1');
INSERT INTO `question_answer` VALUES ('117', '30', 'Expedita non.', '1');
INSERT INTO `question_answer` VALUES ('118', '30', 'Placeat magni.', '0');
INSERT INTO `question_answer` VALUES ('119', '30', 'Est dolores et.', '0');
INSERT INTO `question_answer` VALUES ('120', '30', 'Repudiandae unde.', '0');
INSERT INTO `question_answer` VALUES ('121', '31', 'Quia omnis ea.', '0');
INSERT INTO `question_answer` VALUES ('122', '31', 'Eos quas sequi.', '0');
INSERT INTO `question_answer` VALUES ('123', '31', 'Aut molestiae dolor.', '1');
INSERT INTO `question_answer` VALUES ('124', '31', 'Quidem ullam.', '0');
INSERT INTO `question_answer` VALUES ('125', '32', 'At corrupti.', '0');
INSERT INTO `question_answer` VALUES ('126', '32', 'Libero fugit.', '0');
INSERT INTO `question_answer` VALUES ('127', '32', 'Est itaque.', '0');
INSERT INTO `question_answer` VALUES ('128', '32', 'Pariatur omnis.', '1');
INSERT INTO `question_answer` VALUES ('129', '33', 'Necessitatibus dolorem perferendis.', '1');
INSERT INTO `question_answer` VALUES ('130', '33', 'Deleniti dolorem consequatur.', '0');
INSERT INTO `question_answer` VALUES ('131', '33', 'Aut alias distinctio.', '0');
INSERT INTO `question_answer` VALUES ('132', '33', 'Natus omnis.', '0');
INSERT INTO `question_answer` VALUES ('133', '34', 'Porro quis.', '1');
INSERT INTO `question_answer` VALUES ('134', '34', 'Vero earum ut.', '0');
INSERT INTO `question_answer` VALUES ('135', '34', 'At minima suscipit.', '0');
INSERT INTO `question_answer` VALUES ('136', '34', 'Suscipit est.', '0');
INSERT INTO `question_answer` VALUES ('137', '35', 'Velit non suscipit.', '0');
INSERT INTO `question_answer` VALUES ('138', '35', 'Id quia hic.', '0');
INSERT INTO `question_answer` VALUES ('139', '35', 'Cupiditate maiores.', '0');
INSERT INTO `question_answer` VALUES ('140', '35', 'Rerum sint.', '1');
INSERT INTO `question_answer` VALUES ('141', '36', 'Et culpa est.', '0');
INSERT INTO `question_answer` VALUES ('142', '36', 'Tenetur ut officiis.', '0');
INSERT INTO `question_answer` VALUES ('143', '36', 'Ut pariatur.', '1');
INSERT INTO `question_answer` VALUES ('144', '36', 'Sit recusandae quis.', '0');
INSERT INTO `question_answer` VALUES ('145', '37', 'Tenetur suscipit.', '1');
INSERT INTO `question_answer` VALUES ('146', '37', 'Veniam non nobis.', '0');
INSERT INTO `question_answer` VALUES ('147', '37', 'Quia voluptates illum.', '0');
INSERT INTO `question_answer` VALUES ('148', '37', 'Aperiam dolorum tempore.', '0');
INSERT INTO `question_answer` VALUES ('149', '38', 'Odio nobis.', '0');
INSERT INTO `question_answer` VALUES ('150', '38', 'Enim et.', '0');
INSERT INTO `question_answer` VALUES ('151', '38', 'Animi natus autem.', '1');
INSERT INTO `question_answer` VALUES ('152', '38', 'At consequatur qui.', '0');
INSERT INTO `question_answer` VALUES ('153', '39', 'Quo est.', '0');
INSERT INTO `question_answer` VALUES ('154', '39', 'Quasi non.', '1');
INSERT INTO `question_answer` VALUES ('155', '39', 'Quis fugit.', '0');
INSERT INTO `question_answer` VALUES ('156', '39', 'Illo provident et.', '0');
INSERT INTO `question_answer` VALUES ('157', '40', 'In aut.', '0');
INSERT INTO `question_answer` VALUES ('158', '40', 'Non deserunt debitis.', '1');
INSERT INTO `question_answer` VALUES ('159', '40', 'Unde voluptatum ea.', '0');
INSERT INTO `question_answer` VALUES ('160', '40', 'Numquam et.', '0');
INSERT INTO `question_answer` VALUES ('161', '41', 'Qui animi ut.', '0');
INSERT INTO `question_answer` VALUES ('162', '41', 'Rerum laborum iure.', '0');
INSERT INTO `question_answer` VALUES ('163', '41', 'Non ut nostrum.', '1');
INSERT INTO `question_answer` VALUES ('164', '41', 'Doloremque debitis eos.', '0');
INSERT INTO `question_answer` VALUES ('165', '42', 'Fugiat magnam.', '1');
INSERT INTO `question_answer` VALUES ('166', '42', 'Ut fugiat.', '0');
INSERT INTO `question_answer` VALUES ('167', '42', 'Corporis quod est.', '0');
INSERT INTO `question_answer` VALUES ('168', '42', 'Eos sed quaerat.', '0');
INSERT INTO `question_answer` VALUES ('169', '43', 'Porro fuga quis.', '0');
INSERT INTO `question_answer` VALUES ('170', '43', 'Earum aspernatur repellat.', '0');
INSERT INTO `question_answer` VALUES ('171', '43', 'Vel occaecati.', '1');
INSERT INTO `question_answer` VALUES ('172', '43', 'Dolore voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('173', '44', 'Maxime itaque placeat.', '1');
INSERT INTO `question_answer` VALUES ('174', '44', 'Doloremque blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('175', '44', 'Doloremque doloribus.', '0');
INSERT INTO `question_answer` VALUES ('176', '44', 'Voluptatem explicabo.', '0');
INSERT INTO `question_answer` VALUES ('177', '45', 'Eligendi explicabo consectetur.', '0');
INSERT INTO `question_answer` VALUES ('178', '45', 'Aut nisi.', '0');
INSERT INTO `question_answer` VALUES ('179', '45', 'Et nam.', '1');
INSERT INTO `question_answer` VALUES ('180', '45', 'Qui sed sed.', '0');
INSERT INTO `question_answer` VALUES ('181', '46', 'Laboriosam est eum.', '0');
INSERT INTO `question_answer` VALUES ('182', '46', 'Sunt quia.', '0');
INSERT INTO `question_answer` VALUES ('183', '46', 'Nisi corporis distinctio.', '0');
INSERT INTO `question_answer` VALUES ('184', '46', 'Laborum dolorem rem.', '1');
INSERT INTO `question_answer` VALUES ('185', '47', 'Consequatur recusandae.', '1');
INSERT INTO `question_answer` VALUES ('186', '47', 'Reiciendis doloremque doloribus.', '0');
INSERT INTO `question_answer` VALUES ('187', '47', 'Debitis veniam.', '0');
INSERT INTO `question_answer` VALUES ('188', '47', 'Aliquid voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('189', '48', 'Doloremque voluptatibus voluptates.', '1');
INSERT INTO `question_answer` VALUES ('190', '48', 'Reiciendis amet.', '0');
INSERT INTO `question_answer` VALUES ('191', '48', 'Animi consequatur quo.', '0');
INSERT INTO `question_answer` VALUES ('192', '48', 'Eos magnam qui.', '0');
INSERT INTO `question_answer` VALUES ('193', '49', 'Qui nihil.', '0');
INSERT INTO `question_answer` VALUES ('194', '49', 'Exercitationem natus libero.', '0');
INSERT INTO `question_answer` VALUES ('195', '49', 'Dolorum explicabo.', '0');
INSERT INTO `question_answer` VALUES ('196', '49', 'Molestias illo.', '1');
INSERT INTO `question_answer` VALUES ('197', '50', 'Ratione id.', '0');
INSERT INTO `question_answer` VALUES ('198', '50', 'Ratione sed officia.', '0');
INSERT INTO `question_answer` VALUES ('199', '50', 'Rerum est dolor.', '0');
INSERT INTO `question_answer` VALUES ('200', '50', 'Dolor similique.', '1');
INSERT INTO `question_answer` VALUES ('201', '51', 'Quas laudantium occaecati.', '1');
INSERT INTO `question_answer` VALUES ('202', '51', 'Qui consequatur consequatur.', '0');
INSERT INTO `question_answer` VALUES ('203', '51', 'A nisi.', '0');
INSERT INTO `question_answer` VALUES ('204', '51', 'Et explicabo aut.', '0');
INSERT INTO `question_answer` VALUES ('205', '52', 'Delectus sint consequuntur.', '0');
INSERT INTO `question_answer` VALUES ('206', '52', 'In odit fugit.', '0');
INSERT INTO `question_answer` VALUES ('207', '52', 'Mollitia enim.', '0');
INSERT INTO `question_answer` VALUES ('208', '52', 'Quisquam voluptatum ullam.', '1');
INSERT INTO `question_answer` VALUES ('209', '53', 'Autem nihil.', '0');
INSERT INTO `question_answer` VALUES ('210', '53', 'Quidem repellat at.', '0');
INSERT INTO `question_answer` VALUES ('211', '53', 'Dolorum voluptatem et.', '1');
INSERT INTO `question_answer` VALUES ('212', '53', 'Nihil similique rem.', '0');
INSERT INTO `question_answer` VALUES ('213', '54', 'Eum sit.', '0');
INSERT INTO `question_answer` VALUES ('214', '54', 'Numquam rerum autem.', '0');
INSERT INTO `question_answer` VALUES ('215', '54', 'Et blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('216', '54', 'Voluptatibus ipsam officia.', '1');
INSERT INTO `question_answer` VALUES ('217', '55', 'Voluptatem nam.', '0');
INSERT INTO `question_answer` VALUES ('218', '55', 'Aut at eos.', '1');
INSERT INTO `question_answer` VALUES ('219', '55', 'Totam omnis.', '0');
INSERT INTO `question_answer` VALUES ('220', '55', 'Dolorem consequuntur itaque.', '0');
INSERT INTO `question_answer` VALUES ('221', '56', 'Soluta quidem.', '0');
INSERT INTO `question_answer` VALUES ('222', '56', 'Quia sint.', '1');
INSERT INTO `question_answer` VALUES ('223', '56', 'Nemo magnam.', '0');
INSERT INTO `question_answer` VALUES ('224', '56', 'Corrupti nobis.', '0');
INSERT INTO `question_answer` VALUES ('225', '57', 'Voluptas ut quia.', '0');
INSERT INTO `question_answer` VALUES ('226', '57', 'Rem sit.', '1');
INSERT INTO `question_answer` VALUES ('227', '57', 'Placeat esse.', '0');
INSERT INTO `question_answer` VALUES ('228', '57', 'Molestiae tempore quidem.', '0');
INSERT INTO `question_answer` VALUES ('229', '58', 'Voluptate odit.', '0');
INSERT INTO `question_answer` VALUES ('230', '58', 'Ea nesciunt.', '1');
INSERT INTO `question_answer` VALUES ('231', '58', 'Veniam sunt.', '0');
INSERT INTO `question_answer` VALUES ('232', '58', 'Voluptatem voluptas aut.', '0');
INSERT INTO `question_answer` VALUES ('233', '59', 'Quidem aut.', '0');
INSERT INTO `question_answer` VALUES ('234', '59', 'Inventore qui quia.', '0');
INSERT INTO `question_answer` VALUES ('235', '59', 'Natus rerum provident.', '1');
INSERT INTO `question_answer` VALUES ('236', '59', 'Et aperiam.', '0');
INSERT INTO `question_answer` VALUES ('237', '60', 'Accusamus incidunt.', '1');
INSERT INTO `question_answer` VALUES ('238', '60', 'Perspiciatis dolorum voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('239', '60', 'Aut id amet.', '0');
INSERT INTO `question_answer` VALUES ('240', '60', 'Modi nisi nam.', '0');
INSERT INTO `question_answer` VALUES ('241', '61', 'Eius impedit.', '0');
INSERT INTO `question_answer` VALUES ('242', '61', 'Eligendi aut et.', '0');
INSERT INTO `question_answer` VALUES ('243', '61', 'Vel laborum.', '1');
INSERT INTO `question_answer` VALUES ('244', '61', 'Beatae ea.', '0');
INSERT INTO `question_answer` VALUES ('245', '62', 'Voluptatem nihil.', '1');
INSERT INTO `question_answer` VALUES ('246', '62', 'Consequatur architecto.', '0');
INSERT INTO `question_answer` VALUES ('247', '62', 'Dolor dicta.', '0');
INSERT INTO `question_answer` VALUES ('248', '62', 'Accusamus et.', '0');
INSERT INTO `question_answer` VALUES ('249', '63', 'Ullam magni.', '0');
INSERT INTO `question_answer` VALUES ('250', '63', 'Rerum tempora rerum.', '1');
INSERT INTO `question_answer` VALUES ('251', '63', 'Sint rerum aut.', '0');
INSERT INTO `question_answer` VALUES ('252', '63', 'Consequuntur veniam.', '0');
INSERT INTO `question_answer` VALUES ('253', '64', 'Deserunt odit.', '0');
INSERT INTO `question_answer` VALUES ('254', '64', 'Est rerum suscipit.', '0');
INSERT INTO `question_answer` VALUES ('255', '64', 'Iure voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('256', '64', 'Est voluptatibus ut.', '1');
INSERT INTO `question_answer` VALUES ('257', '65', 'Expedita qui perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('258', '65', 'Placeat mollitia.', '0');
INSERT INTO `question_answer` VALUES ('259', '65', 'Explicabo quos.', '0');
INSERT INTO `question_answer` VALUES ('260', '65', 'Unde iste.', '1');
INSERT INTO `question_answer` VALUES ('261', '66', 'Non architecto.', '0');
INSERT INTO `question_answer` VALUES ('262', '66', 'Velit officiis.', '1');
INSERT INTO `question_answer` VALUES ('263', '66', 'Placeat voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('264', '66', 'Et saepe ratione.', '0');
INSERT INTO `question_answer` VALUES ('265', '67', 'Repellat provident dolor.', '0');
INSERT INTO `question_answer` VALUES ('266', '67', 'Voluptatum id soluta.', '1');
INSERT INTO `question_answer` VALUES ('267', '67', 'Sunt molestiae.', '0');
INSERT INTO `question_answer` VALUES ('268', '67', 'Dolorem quos quidem.', '0');
INSERT INTO `question_answer` VALUES ('269', '68', 'Consequatur quia dolores.', '0');
INSERT INTO `question_answer` VALUES ('270', '68', 'Fuga dolorum assumenda.', '0');
INSERT INTO `question_answer` VALUES ('271', '68', 'Aut voluptatem et.', '0');
INSERT INTO `question_answer` VALUES ('272', '68', 'Officiis eum.', '1');
INSERT INTO `question_answer` VALUES ('273', '69', 'Velit nemo.', '1');
INSERT INTO `question_answer` VALUES ('274', '69', 'Qui et.', '0');
INSERT INTO `question_answer` VALUES ('275', '69', 'Unde inventore.', '0');
INSERT INTO `question_answer` VALUES ('276', '69', 'Sapiente dolorem.', '0');
INSERT INTO `question_answer` VALUES ('277', '70', 'Accusantium totam non.', '0');
INSERT INTO `question_answer` VALUES ('278', '70', 'Provident eaque est.', '0');
INSERT INTO `question_answer` VALUES ('279', '70', 'Ipsam tempora sequi.', '0');
INSERT INTO `question_answer` VALUES ('280', '70', 'Laboriosam repellendus.', '1');
INSERT INTO `question_answer` VALUES ('281', '71', 'Eos quos.', '0');
INSERT INTO `question_answer` VALUES ('282', '71', 'Qui dolorem vel.', '0');
INSERT INTO `question_answer` VALUES ('283', '71', 'Dignissimos est est.', '1');
INSERT INTO `question_answer` VALUES ('284', '71', 'At non laborum.', '0');
INSERT INTO `question_answer` VALUES ('285', '72', 'Nam illum amet.', '0');
INSERT INTO `question_answer` VALUES ('286', '72', 'Non autem voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('287', '72', 'Accusantium quia.', '0');
INSERT INTO `question_answer` VALUES ('288', '72', 'Commodi voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('289', '73', 'Optio quia.', '0');
INSERT INTO `question_answer` VALUES ('290', '73', 'Beatae non deleniti.', '0');
INSERT INTO `question_answer` VALUES ('291', '73', 'Velit accusamus ad.', '1');
INSERT INTO `question_answer` VALUES ('292', '73', 'Consequatur hic.', '0');
INSERT INTO `question_answer` VALUES ('293', '74', 'Voluptatem atque saepe.', '0');
INSERT INTO `question_answer` VALUES ('294', '74', 'Pariatur commodi.', '0');
INSERT INTO `question_answer` VALUES ('295', '74', 'Ex officia.', '1');
INSERT INTO `question_answer` VALUES ('296', '74', 'Officia recusandae illum.', '0');
INSERT INTO `question_answer` VALUES ('297', '75', 'Nesciunt libero.', '0');
INSERT INTO `question_answer` VALUES ('298', '75', 'Natus rerum.', '1');
INSERT INTO `question_answer` VALUES ('299', '75', 'Eum incidunt.', '0');
INSERT INTO `question_answer` VALUES ('300', '75', 'Voluptatem ipsam doloribus.', '0');
INSERT INTO `question_answer` VALUES ('301', '76', 'Maxime facilis.', '0');
INSERT INTO `question_answer` VALUES ('302', '76', 'Repellendus consectetur minima.', '0');
INSERT INTO `question_answer` VALUES ('303', '76', 'Et laboriosam consectetur.', '1');
INSERT INTO `question_answer` VALUES ('304', '76', 'Ipsa ipsum.', '0');
INSERT INTO `question_answer` VALUES ('305', '77', 'Repudiandae perferendis.', '0');
INSERT INTO `question_answer` VALUES ('306', '77', 'Dignissimos ut.', '0');
INSERT INTO `question_answer` VALUES ('307', '77', 'Et id natus.', '1');
INSERT INTO `question_answer` VALUES ('308', '77', 'Earum molestias.', '0');
INSERT INTO `question_answer` VALUES ('309', '78', 'Fugit repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('310', '78', 'Dolor est tempore.', '0');
INSERT INTO `question_answer` VALUES ('311', '78', 'Culpa earum.', '1');
INSERT INTO `question_answer` VALUES ('312', '78', 'Velit perferendis eos.', '0');
INSERT INTO `question_answer` VALUES ('313', '79', 'Aut et quo.', '1');
INSERT INTO `question_answer` VALUES ('314', '79', 'Adipisci earum deserunt.', '0');
INSERT INTO `question_answer` VALUES ('315', '79', 'Quis qui est.', '0');
INSERT INTO `question_answer` VALUES ('316', '79', 'Vel est ipsa.', '0');
INSERT INTO `question_answer` VALUES ('317', '80', 'Eum corporis.', '0');
INSERT INTO `question_answer` VALUES ('318', '80', 'Incidunt aut.', '0');
INSERT INTO `question_answer` VALUES ('319', '80', 'Animi similique eveniet.', '1');
INSERT INTO `question_answer` VALUES ('320', '80', 'Eaque repellat rem.', '0');
INSERT INTO `question_answer` VALUES ('321', '81', 'Exercitationem repellat.', '0');
INSERT INTO `question_answer` VALUES ('322', '81', 'Saepe ea iure.', '1');
INSERT INTO `question_answer` VALUES ('323', '81', 'In velit.', '0');
INSERT INTO `question_answer` VALUES ('324', '81', 'Quaerat commodi iste.', '0');
INSERT INTO `question_answer` VALUES ('325', '82', 'Dolorem est.', '0');
INSERT INTO `question_answer` VALUES ('326', '82', 'Est corporis.', '0');
INSERT INTO `question_answer` VALUES ('327', '82', 'Minima voluptatem inventore.', '0');
INSERT INTO `question_answer` VALUES ('328', '82', 'Similique voluptas explicabo.', '1');
INSERT INTO `question_answer` VALUES ('329', '83', 'Suscipit quae tenetur.', '0');
INSERT INTO `question_answer` VALUES ('330', '83', 'Ut alias ullam.', '1');
INSERT INTO `question_answer` VALUES ('331', '83', 'Odit perferendis.', '0');
INSERT INTO `question_answer` VALUES ('332', '83', 'Qui est sunt.', '0');
INSERT INTO `question_answer` VALUES ('333', '84', 'Odit quod officiis.', '0');
INSERT INTO `question_answer` VALUES ('334', '84', 'Et earum.', '0');
INSERT INTO `question_answer` VALUES ('335', '84', 'Suscipit pariatur.', '1');
INSERT INTO `question_answer` VALUES ('336', '84', 'Magnam voluptas vel.', '0');
INSERT INTO `question_answer` VALUES ('337', '85', 'Cum repellendus.', '0');
INSERT INTO `question_answer` VALUES ('338', '85', 'Et ipsam non.', '0');
INSERT INTO `question_answer` VALUES ('339', '85', 'Animi sequi illum.', '0');
INSERT INTO `question_answer` VALUES ('340', '85', 'Ipsum exercitationem.', '1');
INSERT INTO `question_answer` VALUES ('341', '86', 'Optio est officiis.', '0');
INSERT INTO `question_answer` VALUES ('342', '86', 'Quaerat nesciunt.', '1');
INSERT INTO `question_answer` VALUES ('343', '86', 'Delectus qui.', '0');
INSERT INTO `question_answer` VALUES ('344', '86', 'Consequatur corporis suscipit.', '0');
INSERT INTO `question_answer` VALUES ('345', '87', 'Quis rerum.', '0');
INSERT INTO `question_answer` VALUES ('346', '87', 'Saepe minima.', '0');
INSERT INTO `question_answer` VALUES ('347', '87', 'Rem aliquam enim.', '0');
INSERT INTO `question_answer` VALUES ('348', '87', 'Maiores consectetur.', '1');
INSERT INTO `question_answer` VALUES ('349', '88', 'Voluptatem dolores dolorem.', '1');
INSERT INTO `question_answer` VALUES ('350', '88', 'Nesciunt facere.', '0');
INSERT INTO `question_answer` VALUES ('351', '88', 'Rerum et.', '0');
INSERT INTO `question_answer` VALUES ('352', '88', 'Similique illo.', '0');
INSERT INTO `question_answer` VALUES ('353', '89', 'Et eos impedit.', '0');
INSERT INTO `question_answer` VALUES ('354', '89', 'Quia ullam in.', '0');
INSERT INTO `question_answer` VALUES ('355', '89', 'Officia dolore non.', '0');
INSERT INTO `question_answer` VALUES ('356', '89', 'Fugit quia.', '1');
INSERT INTO `question_answer` VALUES ('357', '90', 'Dolorem maxime.', '0');
INSERT INTO `question_answer` VALUES ('358', '90', 'Odio quaerat eveniet.', '0');
INSERT INTO `question_answer` VALUES ('359', '90', 'Iure sed.', '0');
INSERT INTO `question_answer` VALUES ('360', '90', 'Perspiciatis impedit ad.', '1');
INSERT INTO `question_answer` VALUES ('361', '91', 'Alias perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('362', '91', 'Beatae ducimus.', '1');
INSERT INTO `question_answer` VALUES ('363', '91', 'Rerum impedit.', '0');
INSERT INTO `question_answer` VALUES ('364', '91', 'Fugiat et at.', '0');
INSERT INTO `question_answer` VALUES ('365', '92', 'Minima perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('366', '92', 'Numquam tenetur.', '0');
INSERT INTO `question_answer` VALUES ('367', '92', 'Qui laboriosam officiis.', '1');
INSERT INTO `question_answer` VALUES ('368', '92', 'Velit dolore.', '0');
INSERT INTO `question_answer` VALUES ('369', '93', 'Unde ipsum ea.', '1');
INSERT INTO `question_answer` VALUES ('370', '93', 'Sunt et quam.', '0');
INSERT INTO `question_answer` VALUES ('371', '93', 'Aut necessitatibus.', '0');
INSERT INTO `question_answer` VALUES ('372', '93', 'Sunt iusto.', '0');
INSERT INTO `question_answer` VALUES ('373', '94', 'Et omnis.', '1');
INSERT INTO `question_answer` VALUES ('374', '94', 'Et qui.', '0');
INSERT INTO `question_answer` VALUES ('375', '94', 'Reiciendis sapiente.', '0');
INSERT INTO `question_answer` VALUES ('376', '94', 'Dolores debitis.', '0');
INSERT INTO `question_answer` VALUES ('377', '95', 'Vel ullam omnis.', '0');
INSERT INTO `question_answer` VALUES ('378', '95', 'Error sit.', '1');
INSERT INTO `question_answer` VALUES ('379', '95', 'Autem rerum amet.', '0');
INSERT INTO `question_answer` VALUES ('380', '95', 'Numquam quia numquam.', '0');
INSERT INTO `question_answer` VALUES ('381', '96', 'Rem tempora iure.', '1');
INSERT INTO `question_answer` VALUES ('382', '96', 'Deserunt illo.', '0');
INSERT INTO `question_answer` VALUES ('383', '96', 'Aut dolores.', '0');
INSERT INTO `question_answer` VALUES ('384', '96', 'Nihil error.', '0');
INSERT INTO `question_answer` VALUES ('385', '97', 'Quo a.', '1');
INSERT INTO `question_answer` VALUES ('386', '97', 'Doloremque nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('387', '97', 'Autem est.', '0');
INSERT INTO `question_answer` VALUES ('388', '97', 'Natus fugit et.', '0');
INSERT INTO `question_answer` VALUES ('389', '98', 'Vel autem quod.', '1');
INSERT INTO `question_answer` VALUES ('390', '98', 'Nam et ut.', '0');
INSERT INTO `question_answer` VALUES ('391', '98', 'Vitae commodi laudantium.', '0');
INSERT INTO `question_answer` VALUES ('392', '98', 'Distinctio dolores.', '0');
INSERT INTO `question_answer` VALUES ('393', '99', 'Maxime magni.', '0');
INSERT INTO `question_answer` VALUES ('394', '99', 'Libero sapiente.', '0');
INSERT INTO `question_answer` VALUES ('395', '99', 'Neque aspernatur.', '0');
INSERT INTO `question_answer` VALUES ('396', '99', 'Possimus nisi voluptate.', '1');
INSERT INTO `question_answer` VALUES ('397', '100', 'Consectetur nulla deserunt.', '0');
INSERT INTO `question_answer` VALUES ('398', '100', 'Nulla maxime ducimus.', '0');
INSERT INTO `question_answer` VALUES ('399', '100', 'Et repellendus.', '1');
INSERT INTO `question_answer` VALUES ('400', '100', 'Et incidunt explicabo.', '0');
INSERT INTO `question_answer` VALUES ('401', '101', 'Labore similique.', '0');
INSERT INTO `question_answer` VALUES ('402', '101', 'Facilis explicabo.', '0');
INSERT INTO `question_answer` VALUES ('403', '101', 'Voluptatem sit.', '0');
INSERT INTO `question_answer` VALUES ('404', '101', 'Laborum aspernatur.', '1');
INSERT INTO `question_answer` VALUES ('405', '102', 'Veritatis blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('406', '102', 'Minus quia debitis.', '0');
INSERT INTO `question_answer` VALUES ('407', '102', 'Assumenda fugit quae.', '0');
INSERT INTO `question_answer` VALUES ('408', '102', 'Nulla animi inventore.', '1');
INSERT INTO `question_answer` VALUES ('409', '103', 'Ea delectus.', '1');
INSERT INTO `question_answer` VALUES ('410', '103', 'Quaerat non.', '0');
INSERT INTO `question_answer` VALUES ('411', '103', 'Sint et deserunt.', '0');
INSERT INTO `question_answer` VALUES ('412', '103', 'Quisquam suscipit sint.', '0');
INSERT INTO `question_answer` VALUES ('413', '104', 'Ex hic rerum.', '0');
INSERT INTO `question_answer` VALUES ('414', '104', 'Ea eligendi ea.', '0');
INSERT INTO `question_answer` VALUES ('415', '104', 'Explicabo nisi dolor.', '0');
INSERT INTO `question_answer` VALUES ('416', '104', 'Voluptatem recusandae qui.', '1');
INSERT INTO `question_answer` VALUES ('417', '105', 'Qui distinctio fugit.', '0');
INSERT INTO `question_answer` VALUES ('418', '105', 'Aspernatur quod temporibus.', '0');
INSERT INTO `question_answer` VALUES ('419', '105', 'Ab amet rerum.', '1');
INSERT INTO `question_answer` VALUES ('420', '105', 'Hic sed deleniti.', '0');
INSERT INTO `question_answer` VALUES ('421', '106', 'Culpa enim voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('422', '106', 'Dolor qui.', '0');
INSERT INTO `question_answer` VALUES ('423', '106', 'Maxime culpa.', '0');
INSERT INTO `question_answer` VALUES ('424', '106', 'Esse facilis voluptas.', '1');
INSERT INTO `question_answer` VALUES ('425', '107', 'Aut omnis aut.', '1');
INSERT INTO `question_answer` VALUES ('426', '107', 'Qui consequatur.', '0');
INSERT INTO `question_answer` VALUES ('427', '107', 'Assumenda aliquid.', '0');
INSERT INTO `question_answer` VALUES ('428', '107', 'Placeat vitae sint.', '0');
INSERT INTO `question_answer` VALUES ('429', '108', 'Sed impedit numquam.', '0');
INSERT INTO `question_answer` VALUES ('430', '108', 'Et consectetur.', '1');
INSERT INTO `question_answer` VALUES ('431', '108', 'Et architecto corporis.', '0');
INSERT INTO `question_answer` VALUES ('432', '108', 'Tempora earum cum.', '0');
INSERT INTO `question_answer` VALUES ('433', '109', 'Neque molestiae.', '1');
INSERT INTO `question_answer` VALUES ('434', '109', 'Aut molestias repellendus.', '0');
INSERT INTO `question_answer` VALUES ('435', '109', 'Nobis quae id.', '0');
INSERT INTO `question_answer` VALUES ('436', '109', 'Veniam ut unde.', '0');
INSERT INTO `question_answer` VALUES ('437', '110', 'Error eius qui.', '0');
INSERT INTO `question_answer` VALUES ('438', '110', 'Voluptate accusantium tenetur.', '0');
INSERT INTO `question_answer` VALUES ('439', '110', 'Ut laborum facere.', '0');
INSERT INTO `question_answer` VALUES ('440', '110', 'Autem reiciendis.', '1');
INSERT INTO `question_answer` VALUES ('441', '111', 'Animi quae.', '0');
INSERT INTO `question_answer` VALUES ('442', '111', 'Excepturi excepturi.', '0');
INSERT INTO `question_answer` VALUES ('443', '111', 'Id facilis et.', '0');
INSERT INTO `question_answer` VALUES ('444', '111', 'Maiores quo.', '1');
INSERT INTO `question_answer` VALUES ('445', '112', 'Ut quia.', '0');
INSERT INTO `question_answer` VALUES ('446', '112', 'Voluptas similique.', '0');
INSERT INTO `question_answer` VALUES ('447', '112', 'Dolorum temporibus pariatur.', '0');
INSERT INTO `question_answer` VALUES ('448', '112', 'Vel autem mollitia.', '1');
INSERT INTO `question_answer` VALUES ('449', '113', 'Aut accusantium provident.', '1');
INSERT INTO `question_answer` VALUES ('450', '113', 'Voluptatem corrupti aspernatur.', '0');
INSERT INTO `question_answer` VALUES ('451', '113', 'Modi sequi ipsam.', '0');
INSERT INTO `question_answer` VALUES ('452', '113', 'Vel possimus.', '0');
INSERT INTO `question_answer` VALUES ('453', '114', 'Non sed.', '1');
INSERT INTO `question_answer` VALUES ('454', '114', 'Est commodi qui.', '0');
INSERT INTO `question_answer` VALUES ('455', '114', 'Excepturi iste.', '0');
INSERT INTO `question_answer` VALUES ('456', '114', 'Vel corrupti perferendis.', '0');
INSERT INTO `question_answer` VALUES ('457', '115', 'Quis cumque dolores.', '1');
INSERT INTO `question_answer` VALUES ('458', '115', 'Quod sit.', '0');
INSERT INTO `question_answer` VALUES ('459', '115', 'Et amet nam.', '0');
INSERT INTO `question_answer` VALUES ('460', '115', 'Quae voluptatem natus.', '0');
INSERT INTO `question_answer` VALUES ('461', '116', 'Deleniti explicabo.', '0');
INSERT INTO `question_answer` VALUES ('462', '116', 'Cumque dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('463', '116', 'Ducimus unde id.', '1');
INSERT INTO `question_answer` VALUES ('464', '116', 'Quia maiores amet.', '0');
INSERT INTO `question_answer` VALUES ('465', '117', 'Voluptatem eum quaerat.', '1');
INSERT INTO `question_answer` VALUES ('466', '117', 'Quae ex.', '0');
INSERT INTO `question_answer` VALUES ('467', '117', 'Cumque quod.', '0');
INSERT INTO `question_answer` VALUES ('468', '117', 'Nihil libero aut.', '0');
INSERT INTO `question_answer` VALUES ('469', '118', 'Ipsam nostrum.', '0');
INSERT INTO `question_answer` VALUES ('470', '118', 'Qui aperiam aperiam.', '0');
INSERT INTO `question_answer` VALUES ('471', '118', 'Qui et placeat.', '1');
INSERT INTO `question_answer` VALUES ('472', '118', 'At quisquam nobis.', '0');
INSERT INTO `question_answer` VALUES ('473', '119', 'Dolor ut sint.', '0');
INSERT INTO `question_answer` VALUES ('474', '119', 'Est rem.', '1');
INSERT INTO `question_answer` VALUES ('475', '119', 'Accusantium consequatur pariatur.', '0');
INSERT INTO `question_answer` VALUES ('476', '119', 'Aperiam omnis.', '0');
INSERT INTO `question_answer` VALUES ('477', '120', 'Dolores deserunt.', '0');
INSERT INTO `question_answer` VALUES ('478', '120', 'Aut minima.', '1');
INSERT INTO `question_answer` VALUES ('479', '120', 'Minus natus.', '0');
INSERT INTO `question_answer` VALUES ('480', '120', 'Harum velit sapiente.', '0');
INSERT INTO `question_answer` VALUES ('481', '121', 'Unde quia autem.', '0');
INSERT INTO `question_answer` VALUES ('482', '121', 'Exercitationem autem maiores.', '0');
INSERT INTO `question_answer` VALUES ('483', '121', 'Fugiat quod.', '1');
INSERT INTO `question_answer` VALUES ('484', '121', 'Ex recusandae alias.', '0');
INSERT INTO `question_answer` VALUES ('485', '122', 'Dignissimos itaque.', '0');
INSERT INTO `question_answer` VALUES ('486', '122', 'Odit et.', '0');
INSERT INTO `question_answer` VALUES ('487', '122', 'Molestiae unde.', '1');
INSERT INTO `question_answer` VALUES ('488', '122', 'Nobis sunt iste.', '0');
INSERT INTO `question_answer` VALUES ('489', '123', 'Autem vel id.', '0');
INSERT INTO `question_answer` VALUES ('490', '123', 'Quo suscipit aperiam.', '1');
INSERT INTO `question_answer` VALUES ('491', '123', 'Sunt ipsum qui.', '0');
INSERT INTO `question_answer` VALUES ('492', '123', 'Sit molestias.', '0');
INSERT INTO `question_answer` VALUES ('493', '124', 'Qui corporis reiciendis.', '0');
INSERT INTO `question_answer` VALUES ('494', '124', 'Quod est impedit.', '1');
INSERT INTO `question_answer` VALUES ('495', '124', 'Occaecati nihil.', '0');
INSERT INTO `question_answer` VALUES ('496', '124', 'Eos cum.', '0');
INSERT INTO `question_answer` VALUES ('497', '125', 'Tenetur qui.', '0');
INSERT INTO `question_answer` VALUES ('498', '125', 'Voluptatem voluptas consequatur.', '0');
INSERT INTO `question_answer` VALUES ('499', '125', 'Qui quia.', '0');
INSERT INTO `question_answer` VALUES ('500', '125', 'Voluptatem et.', '1');
INSERT INTO `question_answer` VALUES ('501', '126', 'Delectus consequuntur enim.', '0');
INSERT INTO `question_answer` VALUES ('502', '126', 'Est qui.', '0');
INSERT INTO `question_answer` VALUES ('503', '126', 'Quod maxime eos.', '0');
INSERT INTO `question_answer` VALUES ('504', '126', 'Aliquam est quos.', '1');
INSERT INTO `question_answer` VALUES ('505', '127', 'Iusto dolores et.', '0');
INSERT INTO `question_answer` VALUES ('506', '127', 'Delectus in.', '0');
INSERT INTO `question_answer` VALUES ('507', '127', 'Debitis dolor in.', '0');
INSERT INTO `question_answer` VALUES ('508', '127', 'Ab nesciunt odio.', '1');
INSERT INTO `question_answer` VALUES ('509', '128', 'Cupiditate vero.', '0');
INSERT INTO `question_answer` VALUES ('510', '128', 'Maiores aspernatur.', '1');
INSERT INTO `question_answer` VALUES ('511', '128', 'Praesentium odit.', '0');
INSERT INTO `question_answer` VALUES ('512', '128', 'Quaerat quae doloremque.', '0');
INSERT INTO `question_answer` VALUES ('513', '129', 'Iste aut.', '0');
INSERT INTO `question_answer` VALUES ('514', '129', 'Labore dolores aspernatur.', '1');
INSERT INTO `question_answer` VALUES ('515', '129', 'Est quia sapiente.', '0');
INSERT INTO `question_answer` VALUES ('516', '129', 'Aut itaque.', '0');
INSERT INTO `question_answer` VALUES ('517', '130', 'Ipsam recusandae.', '0');
INSERT INTO `question_answer` VALUES ('518', '130', 'Blanditiis doloribus.', '0');
INSERT INTO `question_answer` VALUES ('519', '130', 'Omnis quo.', '1');
INSERT INTO `question_answer` VALUES ('520', '130', 'Ducimus nobis voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('521', '131', 'Reiciendis et sed.', '1');
INSERT INTO `question_answer` VALUES ('522', '131', 'Id animi magnam.', '0');
INSERT INTO `question_answer` VALUES ('523', '131', 'Cumque eius.', '0');
INSERT INTO `question_answer` VALUES ('524', '131', 'Consequatur eos enim.', '0');
INSERT INTO `question_answer` VALUES ('525', '132', 'Eos alias vitae.', '1');
INSERT INTO `question_answer` VALUES ('526', '132', 'Quam qui.', '0');
INSERT INTO `question_answer` VALUES ('527', '132', 'Laudantium hic.', '0');
INSERT INTO `question_answer` VALUES ('528', '132', 'Quos id aliquid.', '0');
INSERT INTO `question_answer` VALUES ('529', '133', 'Repudiandae vel atque.', '1');
INSERT INTO `question_answer` VALUES ('530', '133', 'Neque autem eos.', '0');
INSERT INTO `question_answer` VALUES ('531', '133', 'Nulla ut numquam.', '0');
INSERT INTO `question_answer` VALUES ('532', '133', 'Tenetur a ut.', '0');
INSERT INTO `question_answer` VALUES ('533', '134', 'Asperiores dolor asperiores.', '0');
INSERT INTO `question_answer` VALUES ('534', '134', 'Enim optio.', '0');
INSERT INTO `question_answer` VALUES ('535', '134', 'Voluptates minima.', '1');
INSERT INTO `question_answer` VALUES ('536', '134', 'Doloremque nulla.', '0');
INSERT INTO `question_answer` VALUES ('537', '135', 'Rerum eaque.', '0');
INSERT INTO `question_answer` VALUES ('538', '135', 'Architecto sint alias.', '1');
INSERT INTO `question_answer` VALUES ('539', '135', 'Perferendis laborum aut.', '0');
INSERT INTO `question_answer` VALUES ('540', '135', 'Delectus quis assumenda.', '0');
INSERT INTO `question_answer` VALUES ('541', '136', 'Iste aspernatur.', '0');
INSERT INTO `question_answer` VALUES ('542', '136', 'Voluptas quo.', '0');
INSERT INTO `question_answer` VALUES ('543', '136', 'Qui neque vitae.', '0');
INSERT INTO `question_answer` VALUES ('544', '136', 'Dolores temporibus assumenda.', '1');
INSERT INTO `question_answer` VALUES ('545', '137', 'Sed consequatur.', '0');
INSERT INTO `question_answer` VALUES ('546', '137', 'Qui consequatur molestias.', '1');
INSERT INTO `question_answer` VALUES ('547', '137', 'Porro saepe dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('548', '137', 'Optio harum voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('549', '138', 'Nihil rem laudantium.', '1');
INSERT INTO `question_answer` VALUES ('550', '138', 'Placeat rerum.', '0');
INSERT INTO `question_answer` VALUES ('551', '138', 'Nemo veritatis.', '0');
INSERT INTO `question_answer` VALUES ('552', '138', 'Consequatur eligendi.', '0');
INSERT INTO `question_answer` VALUES ('553', '139', 'Optio dicta.', '0');
INSERT INTO `question_answer` VALUES ('554', '139', 'Vitae vel nihil.', '1');
INSERT INTO `question_answer` VALUES ('555', '139', 'Aperiam et.', '0');
INSERT INTO `question_answer` VALUES ('556', '139', 'Ut nemo aut.', '0');
INSERT INTO `question_answer` VALUES ('557', '140', 'Quia ducimus ut.', '1');
INSERT INTO `question_answer` VALUES ('558', '140', 'Et magnam rerum.', '0');
INSERT INTO `question_answer` VALUES ('559', '140', 'Ullam voluptates.', '0');
INSERT INTO `question_answer` VALUES ('560', '140', 'Accusantium quam.', '0');
INSERT INTO `question_answer` VALUES ('561', '141', 'Et itaque.', '0');
INSERT INTO `question_answer` VALUES ('562', '141', 'Repellat sequi.', '1');
INSERT INTO `question_answer` VALUES ('563', '141', 'Dolor maxime.', '0');
INSERT INTO `question_answer` VALUES ('564', '141', 'Nesciunt dolorem.', '0');
INSERT INTO `question_answer` VALUES ('565', '142', 'Neque consectetur modi.', '0');
INSERT INTO `question_answer` VALUES ('566', '142', 'Et voluptatum tempora.', '1');
INSERT INTO `question_answer` VALUES ('567', '142', 'Quae accusamus labore.', '0');
INSERT INTO `question_answer` VALUES ('568', '142', 'Vitae qui maiores.', '0');
INSERT INTO `question_answer` VALUES ('569', '143', 'Consequatur harum cum.', '0');
INSERT INTO `question_answer` VALUES ('570', '143', 'Quos odio nostrum.', '0');
INSERT INTO `question_answer` VALUES ('571', '143', 'Doloremque omnis.', '0');
INSERT INTO `question_answer` VALUES ('572', '143', 'Rerum qui.', '1');
INSERT INTO `question_answer` VALUES ('573', '144', 'Architecto corrupti molestiae.', '0');
INSERT INTO `question_answer` VALUES ('574', '144', 'Reiciendis ea.', '1');
INSERT INTO `question_answer` VALUES ('575', '144', 'Rem architecto velit.', '0');
INSERT INTO `question_answer` VALUES ('576', '144', 'Aut accusamus delectus.', '0');
INSERT INTO `question_answer` VALUES ('577', '145', 'Voluptatem adipisci provident.', '1');
INSERT INTO `question_answer` VALUES ('578', '145', 'Et quasi sint.', '0');
INSERT INTO `question_answer` VALUES ('579', '145', 'Quis non.', '0');
INSERT INTO `question_answer` VALUES ('580', '145', 'Vel quo maiores.', '0');
INSERT INTO `question_answer` VALUES ('581', '146', 'Accusantium similique.', '0');
INSERT INTO `question_answer` VALUES ('582', '146', 'Explicabo sed quia.', '0');
INSERT INTO `question_answer` VALUES ('583', '146', 'Qui sit in.', '0');
INSERT INTO `question_answer` VALUES ('584', '146', 'Amet ut fuga.', '1');
INSERT INTO `question_answer` VALUES ('585', '147', 'Nisi eaque eos.', '0');
INSERT INTO `question_answer` VALUES ('586', '147', 'Ipsa cupiditate.', '1');
INSERT INTO `question_answer` VALUES ('587', '147', 'Corporis explicabo accusamus.', '0');
INSERT INTO `question_answer` VALUES ('588', '147', 'Debitis facere voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('589', '148', 'Aperiam et delectus.', '0');
INSERT INTO `question_answer` VALUES ('590', '148', 'Et praesentium.', '0');
INSERT INTO `question_answer` VALUES ('591', '148', 'Neque officia.', '1');
INSERT INTO `question_answer` VALUES ('592', '148', 'Consequuntur aperiam fugiat.', '0');
INSERT INTO `question_answer` VALUES ('593', '149', 'Et officiis quia.', '1');
INSERT INTO `question_answer` VALUES ('594', '149', 'Asperiores voluptatem omnis.', '0');
INSERT INTO `question_answer` VALUES ('595', '149', 'Sunt eum.', '0');
INSERT INTO `question_answer` VALUES ('596', '149', 'Velit at.', '0');
INSERT INTO `question_answer` VALUES ('597', '150', 'Quisquam doloribus.', '0');
INSERT INTO `question_answer` VALUES ('598', '150', 'Est error.', '1');
INSERT INTO `question_answer` VALUES ('599', '150', 'Labore laborum eum.', '0');
INSERT INTO `question_answer` VALUES ('600', '150', 'Sed dolore non.', '0');
INSERT INTO `question_answer` VALUES ('601', '151', 'Pariatur eum rerum.', '0');
INSERT INTO `question_answer` VALUES ('602', '151', 'Aut quia.', '1');
INSERT INTO `question_answer` VALUES ('603', '151', 'Omnis laborum repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('604', '151', 'Aliquid repellat.', '0');
INSERT INTO `question_answer` VALUES ('605', '152', 'Ea dolore.', '0');
INSERT INTO `question_answer` VALUES ('606', '152', 'Architecto recusandae totam.', '0');
INSERT INTO `question_answer` VALUES ('607', '152', 'Et pariatur.', '1');
INSERT INTO `question_answer` VALUES ('608', '152', 'Cum quis aut.', '0');
INSERT INTO `question_answer` VALUES ('609', '153', 'Beatae et.', '1');
INSERT INTO `question_answer` VALUES ('610', '153', 'Incidunt enim sapiente.', '0');
INSERT INTO `question_answer` VALUES ('611', '153', 'Qui ut.', '0');
INSERT INTO `question_answer` VALUES ('612', '153', 'Sint aliquam quis.', '0');
INSERT INTO `question_answer` VALUES ('613', '154', 'Accusamus sunt.', '0');
INSERT INTO `question_answer` VALUES ('614', '154', 'Voluptatum et assumenda.', '1');
INSERT INTO `question_answer` VALUES ('615', '154', 'Aut non.', '0');
INSERT INTO `question_answer` VALUES ('616', '154', 'Cum quia nam.', '0');
INSERT INTO `question_answer` VALUES ('617', '155', 'Quam eveniet accusantium.', '0');
INSERT INTO `question_answer` VALUES ('618', '155', 'Maxime consequuntur officiis.', '0');
INSERT INTO `question_answer` VALUES ('619', '155', 'Impedit qui aliquam.', '0');
INSERT INTO `question_answer` VALUES ('620', '155', 'Est velit nesciunt.', '1');
INSERT INTO `question_answer` VALUES ('621', '156', 'Porro nisi enim.', '0');
INSERT INTO `question_answer` VALUES ('622', '156', 'Sed est.', '0');
INSERT INTO `question_answer` VALUES ('623', '156', 'Est accusamus.', '0');
INSERT INTO `question_answer` VALUES ('624', '156', 'Esse quia omnis.', '1');
INSERT INTO `question_answer` VALUES ('625', '157', 'Impedit minus totam.', '0');
INSERT INTO `question_answer` VALUES ('626', '157', 'Laboriosam ut nobis.', '0');
INSERT INTO `question_answer` VALUES ('627', '157', 'Qui corporis.', '1');
INSERT INTO `question_answer` VALUES ('628', '157', 'Incidunt quidem.', '0');
INSERT INTO `question_answer` VALUES ('629', '158', 'Dolor est.', '0');
INSERT INTO `question_answer` VALUES ('630', '158', 'Quidem fugiat ducimus.', '1');
INSERT INTO `question_answer` VALUES ('631', '158', 'Et aut.', '0');
INSERT INTO `question_answer` VALUES ('632', '158', 'Tempore et.', '0');
INSERT INTO `question_answer` VALUES ('633', '159', 'Asperiores velit.', '0');
INSERT INTO `question_answer` VALUES ('634', '159', 'Nostrum quisquam velit.', '0');
INSERT INTO `question_answer` VALUES ('635', '159', 'Blanditiis aut.', '1');
INSERT INTO `question_answer` VALUES ('636', '159', 'Vel non.', '0');
INSERT INTO `question_answer` VALUES ('637', '160', 'Qui repellat.', '1');
INSERT INTO `question_answer` VALUES ('638', '160', 'Vero facere.', '0');
INSERT INTO `question_answer` VALUES ('639', '160', 'Impedit numquam cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('640', '160', 'Hic quis rerum.', '0');
INSERT INTO `question_answer` VALUES ('641', '161', 'Et consequatur vitae.', '0');
INSERT INTO `question_answer` VALUES ('642', '161', 'Quidem in et.', '0');
INSERT INTO `question_answer` VALUES ('643', '161', 'Ut perspiciatis a.', '0');
INSERT INTO `question_answer` VALUES ('644', '161', 'Impedit sint quia.', '1');
INSERT INTO `question_answer` VALUES ('645', '162', 'Esse dolore harum.', '1');
INSERT INTO `question_answer` VALUES ('646', '162', 'Eligendi qui vero.', '0');
INSERT INTO `question_answer` VALUES ('647', '162', 'Laborum et.', '0');
INSERT INTO `question_answer` VALUES ('648', '162', 'Consequatur maiores.', '0');
INSERT INTO `question_answer` VALUES ('649', '163', 'Quos at occaecati.', '0');
INSERT INTO `question_answer` VALUES ('650', '163', 'Dicta sed.', '1');
INSERT INTO `question_answer` VALUES ('651', '163', 'Ipsa voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('652', '163', 'Et inventore alias.', '0');
INSERT INTO `question_answer` VALUES ('653', '164', 'Consequatur qui.', '0');
INSERT INTO `question_answer` VALUES ('654', '164', 'Odit incidunt amet.', '1');
INSERT INTO `question_answer` VALUES ('655', '164', 'Soluta velit quos.', '0');
INSERT INTO `question_answer` VALUES ('656', '164', 'Laborum qui.', '0');
INSERT INTO `question_answer` VALUES ('657', '165', 'Corrupti sunt.', '1');
INSERT INTO `question_answer` VALUES ('658', '165', 'Veritatis qui.', '0');
INSERT INTO `question_answer` VALUES ('659', '165', 'Et distinctio dolores.', '0');
INSERT INTO `question_answer` VALUES ('660', '165', 'Recusandae tenetur est.', '0');
INSERT INTO `question_answer` VALUES ('661', '166', 'Atque est tempore.', '1');
INSERT INTO `question_answer` VALUES ('662', '166', 'Cumque eum.', '0');
INSERT INTO `question_answer` VALUES ('663', '166', 'Quod quasi nostrum.', '0');
INSERT INTO `question_answer` VALUES ('664', '166', 'Eveniet quo ipsum.', '0');
INSERT INTO `question_answer` VALUES ('665', '167', 'Quas molestias sunt.', '0');
INSERT INTO `question_answer` VALUES ('666', '167', 'Sunt illo laboriosam.', '0');
INSERT INTO `question_answer` VALUES ('667', '167', 'Velit nisi magni.', '0');
INSERT INTO `question_answer` VALUES ('668', '167', 'Ullam autem explicabo.', '1');
INSERT INTO `question_answer` VALUES ('669', '168', 'Culpa quis autem.', '0');
INSERT INTO `question_answer` VALUES ('670', '168', 'Doloremque incidunt.', '0');
INSERT INTO `question_answer` VALUES ('671', '168', 'Ea facere est.', '1');
INSERT INTO `question_answer` VALUES ('672', '168', 'Nostrum qui.', '0');
INSERT INTO `question_answer` VALUES ('673', '169', 'Voluptas repellendus.', '0');
INSERT INTO `question_answer` VALUES ('674', '169', 'Sed asperiores alias.', '0');
INSERT INTO `question_answer` VALUES ('675', '169', 'Maiores et eligendi.', '0');
INSERT INTO `question_answer` VALUES ('676', '169', 'Repellat dolorum.', '1');
INSERT INTO `question_answer` VALUES ('677', '170', 'Delectus recusandae fugiat.', '0');
INSERT INTO `question_answer` VALUES ('678', '170', 'Odit veniam.', '0');
INSERT INTO `question_answer` VALUES ('679', '170', 'Minus debitis.', '1');
INSERT INTO `question_answer` VALUES ('680', '170', 'Consequatur consequatur.', '0');
INSERT INTO `question_answer` VALUES ('681', '171', 'Sequi quibusdam iste.', '0');
INSERT INTO `question_answer` VALUES ('682', '171', 'Ut et quo.', '0');
INSERT INTO `question_answer` VALUES ('683', '171', 'Magni iure natus.', '0');
INSERT INTO `question_answer` VALUES ('684', '171', 'Sit praesentium quod.', '1');
INSERT INTO `question_answer` VALUES ('685', '172', 'Eveniet ab laboriosam.', '1');
INSERT INTO `question_answer` VALUES ('686', '172', 'Ullam neque enim.', '0');
INSERT INTO `question_answer` VALUES ('687', '172', 'Animi doloremque placeat.', '0');
INSERT INTO `question_answer` VALUES ('688', '172', 'Labore libero.', '0');
INSERT INTO `question_answer` VALUES ('689', '173', 'Dolor quo assumenda.', '1');
INSERT INTO `question_answer` VALUES ('690', '173', 'Saepe minima in.', '0');
INSERT INTO `question_answer` VALUES ('691', '173', 'Ea assumenda.', '0');
INSERT INTO `question_answer` VALUES ('692', '173', 'Aut fugiat.', '0');
INSERT INTO `question_answer` VALUES ('693', '174', 'Aperiam sit doloribus.', '1');
INSERT INTO `question_answer` VALUES ('694', '174', 'Recusandae inventore error.', '0');
INSERT INTO `question_answer` VALUES ('695', '174', 'Repellat nemo.', '0');
INSERT INTO `question_answer` VALUES ('696', '174', 'Ea vero.', '0');
INSERT INTO `question_answer` VALUES ('697', '175', 'Fugit rerum.', '1');
INSERT INTO `question_answer` VALUES ('698', '175', 'Similique quibusdam ratione.', '0');
INSERT INTO `question_answer` VALUES ('699', '175', 'Suscipit adipisci libero.', '0');
INSERT INTO `question_answer` VALUES ('700', '175', 'Repellendus sint id.', '0');
INSERT INTO `question_answer` VALUES ('701', '176', 'Sed libero.', '0');
INSERT INTO `question_answer` VALUES ('702', '176', 'Est rerum sed.', '0');
INSERT INTO `question_answer` VALUES ('703', '176', 'Porro maxime aut.', '0');
INSERT INTO `question_answer` VALUES ('704', '176', 'Quos commodi.', '1');
INSERT INTO `question_answer` VALUES ('705', '177', 'Facilis occaecati quis.', '0');
INSERT INTO `question_answer` VALUES ('706', '177', 'Molestiae sed.', '0');
INSERT INTO `question_answer` VALUES ('707', '177', 'Voluptates fugit ea.', '0');
INSERT INTO `question_answer` VALUES ('708', '177', 'Voluptas pariatur.', '1');
INSERT INTO `question_answer` VALUES ('709', '178', 'Expedita tenetur eum.', '0');
INSERT INTO `question_answer` VALUES ('710', '178', 'Consequatur doloribus sapiente.', '1');
INSERT INTO `question_answer` VALUES ('711', '178', 'Veritatis ut occaecati.', '0');
INSERT INTO `question_answer` VALUES ('712', '178', 'Et perspiciatis tenetur.', '0');
INSERT INTO `question_answer` VALUES ('713', '179', 'Modi numquam.', '0');
INSERT INTO `question_answer` VALUES ('714', '179', 'Aliquid recusandae ipsum.', '0');
INSERT INTO `question_answer` VALUES ('715', '179', 'Voluptates officia sit.', '0');
INSERT INTO `question_answer` VALUES ('716', '179', 'Non adipisci et.', '1');
INSERT INTO `question_answer` VALUES ('717', '180', 'Incidunt ipsam.', '0');
INSERT INTO `question_answer` VALUES ('718', '180', 'Culpa doloribus.', '0');
INSERT INTO `question_answer` VALUES ('719', '180', 'Laboriosam dolorem.', '0');
INSERT INTO `question_answer` VALUES ('720', '180', 'Ipsa hic.', '1');
INSERT INTO `question_answer` VALUES ('721', '181', 'Ut blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('722', '181', 'Vitae voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('723', '181', 'Consequatur dolorem nam.', '0');
INSERT INTO `question_answer` VALUES ('724', '181', 'Qui veniam ea.', '0');
INSERT INTO `question_answer` VALUES ('725', '182', 'Illo sed hic.', '0');
INSERT INTO `question_answer` VALUES ('726', '182', 'Accusamus et voluptas.', '0');
INSERT INTO `question_answer` VALUES ('727', '182', 'Minus doloribus eveniet.', '1');
INSERT INTO `question_answer` VALUES ('728', '182', 'Sequi aut animi.', '0');
INSERT INTO `question_answer` VALUES ('729', '183', 'Nostrum sed.', '0');
INSERT INTO `question_answer` VALUES ('730', '183', 'Dolorem id.', '0');
INSERT INTO `question_answer` VALUES ('731', '183', 'Quasi aut.', '0');
INSERT INTO `question_answer` VALUES ('732', '183', 'Earum qui delectus.', '1');
INSERT INTO `question_answer` VALUES ('733', '184', 'Voluptatem perferendis tempore.', '0');
INSERT INTO `question_answer` VALUES ('734', '184', 'Quae et suscipit.', '1');
INSERT INTO `question_answer` VALUES ('735', '184', 'Officia aut.', '0');
INSERT INTO `question_answer` VALUES ('736', '184', 'Autem quasi et.', '0');
INSERT INTO `question_answer` VALUES ('737', '185', 'Nemo occaecati.', '0');
INSERT INTO `question_answer` VALUES ('738', '185', 'Tenetur quos suscipit.', '0');
INSERT INTO `question_answer` VALUES ('739', '185', 'At inventore.', '1');
INSERT INTO `question_answer` VALUES ('740', '185', 'Est molestiae est.', '0');
INSERT INTO `question_answer` VALUES ('741', '186', 'Aut ut esse.', '0');
INSERT INTO `question_answer` VALUES ('742', '186', 'Consequatur consequatur quo.', '0');
INSERT INTO `question_answer` VALUES ('743', '186', 'Et voluptas.', '0');
INSERT INTO `question_answer` VALUES ('744', '186', 'Quod corporis.', '1');
INSERT INTO `question_answer` VALUES ('745', '187', 'Nostrum quis repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('746', '187', 'Doloremque tenetur.', '0');
INSERT INTO `question_answer` VALUES ('747', '187', 'Laboriosam facilis ducimus.', '1');
INSERT INTO `question_answer` VALUES ('748', '187', 'Itaque temporibus quidem.', '0');
INSERT INTO `question_answer` VALUES ('749', '188', 'Et tempore.', '0');
INSERT INTO `question_answer` VALUES ('750', '188', 'Velit quis consequatur.', '0');
INSERT INTO `question_answer` VALUES ('751', '188', 'Laudantium modi vel.', '0');
INSERT INTO `question_answer` VALUES ('752', '188', 'Est eum voluptas.', '1');
INSERT INTO `question_answer` VALUES ('753', '189', 'Dolor alias.', '0');
INSERT INTO `question_answer` VALUES ('754', '189', 'Occaecati sapiente iusto.', '1');
INSERT INTO `question_answer` VALUES ('755', '189', 'Esse facilis.', '0');
INSERT INTO `question_answer` VALUES ('756', '189', 'Amet aut facilis.', '0');
INSERT INTO `question_answer` VALUES ('757', '190', 'Est tempora nisi.', '0');
INSERT INTO `question_answer` VALUES ('758', '190', 'Voluptatum nulla ratione.', '0');
INSERT INTO `question_answer` VALUES ('759', '190', 'Cum minima aut.', '1');
INSERT INTO `question_answer` VALUES ('760', '190', 'Rerum omnis.', '0');
INSERT INTO `question_answer` VALUES ('761', '191', 'Voluptatem quaerat deleniti.', '0');
INSERT INTO `question_answer` VALUES ('762', '191', 'Natus est praesentium.', '0');
INSERT INTO `question_answer` VALUES ('763', '191', 'Exercitationem maxime.', '1');
INSERT INTO `question_answer` VALUES ('764', '191', 'Totam ex.', '0');
INSERT INTO `question_answer` VALUES ('765', '192', 'Et voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('766', '192', 'Dolor quod.', '0');
INSERT INTO `question_answer` VALUES ('767', '192', 'Deleniti corporis voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('768', '192', 'Odio fuga.', '0');
INSERT INTO `question_answer` VALUES ('769', '193', 'Sit deleniti.', '1');
INSERT INTO `question_answer` VALUES ('770', '193', 'Dolores nemo.', '0');
INSERT INTO `question_answer` VALUES ('771', '193', 'Dicta in.', '0');
INSERT INTO `question_answer` VALUES ('772', '193', 'Iure officiis doloribus.', '0');
INSERT INTO `question_answer` VALUES ('773', '194', 'In sed.', '0');
INSERT INTO `question_answer` VALUES ('774', '194', 'Rerum ab.', '0');
INSERT INTO `question_answer` VALUES ('775', '194', 'Omnis qui quia.', '0');
INSERT INTO `question_answer` VALUES ('776', '194', 'Maxime quibusdam.', '1');
INSERT INTO `question_answer` VALUES ('777', '195', 'Voluptatibus nisi.', '0');
INSERT INTO `question_answer` VALUES ('778', '195', 'Eos molestias corrupti.', '0');
INSERT INTO `question_answer` VALUES ('779', '195', 'Ut enim ipsum.', '0');
INSERT INTO `question_answer` VALUES ('780', '195', 'Voluptatem corporis asperiores.', '1');
INSERT INTO `question_answer` VALUES ('781', '196', 'Non aliquid.', '1');
INSERT INTO `question_answer` VALUES ('782', '196', 'Qui in.', '0');
INSERT INTO `question_answer` VALUES ('783', '196', 'Amet dolor.', '0');
INSERT INTO `question_answer` VALUES ('784', '196', 'Cum rerum quidem.', '0');
INSERT INTO `question_answer` VALUES ('785', '197', 'Deserunt excepturi provident.', '0');
INSERT INTO `question_answer` VALUES ('786', '197', 'Cum impedit illo.', '1');
INSERT INTO `question_answer` VALUES ('787', '197', 'Asperiores eos.', '0');
INSERT INTO `question_answer` VALUES ('788', '197', 'Suscipit fugiat autem.', '0');
INSERT INTO `question_answer` VALUES ('789', '198', 'Quia id.', '1');
INSERT INTO `question_answer` VALUES ('790', '198', 'Aspernatur corporis.', '0');
INSERT INTO `question_answer` VALUES ('791', '198', 'Hic possimus excepturi.', '0');
INSERT INTO `question_answer` VALUES ('792', '198', 'Accusamus ratione.', '0');
INSERT INTO `question_answer` VALUES ('793', '199', 'Et sed.', '1');
INSERT INTO `question_answer` VALUES ('794', '199', 'Reprehenderit suscipit.', '0');
INSERT INTO `question_answer` VALUES ('795', '199', 'Et voluptates.', '0');
INSERT INTO `question_answer` VALUES ('796', '199', 'Autem ea numquam.', '0');
INSERT INTO `question_answer` VALUES ('797', '200', 'Ut quod occaecati.', '0');
INSERT INTO `question_answer` VALUES ('798', '200', 'Dolorem voluptas omnis.', '1');
INSERT INTO `question_answer` VALUES ('799', '200', 'Quod ea tempora.', '0');
INSERT INTO `question_answer` VALUES ('800', '200', 'Fuga et.', '0');
INSERT INTO `question_answer` VALUES ('801', '201', 'Quo natus.', '0');
INSERT INTO `question_answer` VALUES ('802', '201', 'Pariatur sed consequatur.', '1');
INSERT INTO `question_answer` VALUES ('803', '201', 'Sed reprehenderit.', '0');
INSERT INTO `question_answer` VALUES ('804', '201', 'Quia ea saepe.', '0');
INSERT INTO `question_answer` VALUES ('805', '202', 'Voluptatem est eos.', '1');
INSERT INTO `question_answer` VALUES ('806', '202', 'Nam numquam qui.', '0');
INSERT INTO `question_answer` VALUES ('807', '202', 'Quaerat perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('808', '202', 'Sequi aut.', '0');
INSERT INTO `question_answer` VALUES ('809', '203', 'Quisquam facilis.', '0');
INSERT INTO `question_answer` VALUES ('810', '203', 'Nemo sed ex.', '0');
INSERT INTO `question_answer` VALUES ('811', '203', 'Enim et rerum.', '1');
INSERT INTO `question_answer` VALUES ('812', '203', 'Earum velit.', '0');
INSERT INTO `question_answer` VALUES ('813', '204', 'Dolore aut quia.', '0');
INSERT INTO `question_answer` VALUES ('814', '204', 'Quibusdam a.', '1');
INSERT INTO `question_answer` VALUES ('815', '204', 'Distinctio consequatur.', '0');
INSERT INTO `question_answer` VALUES ('816', '204', 'Et nisi.', '0');
INSERT INTO `question_answer` VALUES ('817', '205', 'Officiis et illo.', '0');
INSERT INTO `question_answer` VALUES ('818', '205', 'Cupiditate assumenda.', '0');
INSERT INTO `question_answer` VALUES ('819', '205', 'Esse velit ab.', '0');
INSERT INTO `question_answer` VALUES ('820', '205', 'Animi repudiandae temporibus.', '1');
INSERT INTO `question_answer` VALUES ('821', '206', 'Qui nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('822', '206', 'Tempore exercitationem quia.', '0');
INSERT INTO `question_answer` VALUES ('823', '206', 'Perferendis labore unde.', '0');
INSERT INTO `question_answer` VALUES ('824', '206', 'Non dolorem dolorem.', '1');
INSERT INTO `question_answer` VALUES ('825', '207', 'Doloribus repellendus velit.', '0');
INSERT INTO `question_answer` VALUES ('826', '207', 'Veritatis eum.', '0');
INSERT INTO `question_answer` VALUES ('827', '207', 'Cupiditate excepturi quia.', '0');
INSERT INTO `question_answer` VALUES ('828', '207', 'Dolorem labore.', '1');
INSERT INTO `question_answer` VALUES ('829', '208', 'Dolore quia tempora.', '1');
INSERT INTO `question_answer` VALUES ('830', '208', 'Debitis aut quia.', '0');
INSERT INTO `question_answer` VALUES ('831', '208', 'At quos exercitationem.', '0');
INSERT INTO `question_answer` VALUES ('832', '208', 'Deserunt quo facilis.', '0');
INSERT INTO `question_answer` VALUES ('833', '209', 'Ea odio.', '0');
INSERT INTO `question_answer` VALUES ('834', '209', 'Modi illo tenetur.', '0');
INSERT INTO `question_answer` VALUES ('835', '209', 'Omnis qui.', '0');
INSERT INTO `question_answer` VALUES ('836', '209', 'Rerum dolores.', '1');
INSERT INTO `question_answer` VALUES ('837', '210', 'Ullam excepturi et.', '0');
INSERT INTO `question_answer` VALUES ('838', '210', 'Tempore molestiae officia.', '0');
INSERT INTO `question_answer` VALUES ('839', '210', 'Eligendi nisi voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('840', '210', 'Ullam pariatur.', '1');
INSERT INTO `question_answer` VALUES ('841', '211', 'Impedit quidem aut.', '0');
INSERT INTO `question_answer` VALUES ('842', '211', 'Unde consequatur qui.', '0');
INSERT INTO `question_answer` VALUES ('843', '211', 'Sed quo in.', '0');
INSERT INTO `question_answer` VALUES ('844', '211', 'Sit quas necessitatibus.', '1');
INSERT INTO `question_answer` VALUES ('845', '212', 'Corporis voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('846', '212', 'Tempora magnam.', '0');
INSERT INTO `question_answer` VALUES ('847', '212', 'Nobis in.', '1');
INSERT INTO `question_answer` VALUES ('848', '212', 'Et officia.', '0');
INSERT INTO `question_answer` VALUES ('849', '213', 'Optio libero.', '0');
INSERT INTO `question_answer` VALUES ('850', '213', 'Et sed numquam.', '0');
INSERT INTO `question_answer` VALUES ('851', '213', 'Tempore debitis.', '1');
INSERT INTO `question_answer` VALUES ('852', '213', 'Sint eos.', '0');
INSERT INTO `question_answer` VALUES ('853', '214', 'Veritatis eligendi voluptas.', '0');
INSERT INTO `question_answer` VALUES ('854', '214', 'Nihil impedit unde.', '1');
INSERT INTO `question_answer` VALUES ('855', '214', 'Officia minus.', '0');
INSERT INTO `question_answer` VALUES ('856', '214', 'Tenetur ea et.', '0');
INSERT INTO `question_answer` VALUES ('857', '215', 'Molestias aut esse.', '0');
INSERT INTO `question_answer` VALUES ('858', '215', 'Quod libero eaque.', '0');
INSERT INTO `question_answer` VALUES ('859', '215', 'Ut numquam.', '0');
INSERT INTO `question_answer` VALUES ('860', '215', 'Dolor saepe.', '1');
INSERT INTO `question_answer` VALUES ('861', '216', 'Dicta quia amet.', '0');
INSERT INTO `question_answer` VALUES ('862', '216', 'Aut sunt.', '0');
INSERT INTO `question_answer` VALUES ('863', '216', 'Asperiores consequatur.', '1');
INSERT INTO `question_answer` VALUES ('864', '216', 'Quibusdam rem ut.', '0');
INSERT INTO `question_answer` VALUES ('865', '217', 'Velit voluptate.', '0');
INSERT INTO `question_answer` VALUES ('866', '217', 'Tenetur autem est.', '0');
INSERT INTO `question_answer` VALUES ('867', '217', 'Tenetur rerum excepturi.', '1');
INSERT INTO `question_answer` VALUES ('868', '217', 'Facere suscipit.', '0');
INSERT INTO `question_answer` VALUES ('869', '218', 'Quis qui.', '1');
INSERT INTO `question_answer` VALUES ('870', '218', 'Aut cumque.', '0');
INSERT INTO `question_answer` VALUES ('871', '218', 'Omnis saepe repellendus.', '0');
INSERT INTO `question_answer` VALUES ('872', '218', 'Reprehenderit perspiciatis doloribus.', '0');
INSERT INTO `question_answer` VALUES ('873', '219', 'Qui ea sapiente.', '0');
INSERT INTO `question_answer` VALUES ('874', '219', 'Nihil qui consequuntur.', '0');
INSERT INTO `question_answer` VALUES ('875', '219', 'Optio cupiditate expedita.', '1');
INSERT INTO `question_answer` VALUES ('876', '219', 'In quisquam.', '0');
INSERT INTO `question_answer` VALUES ('877', '220', 'Sunt est quam.', '0');
INSERT INTO `question_answer` VALUES ('878', '220', 'Nulla repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('879', '220', 'Exercitationem nihil eos.', '1');
INSERT INTO `question_answer` VALUES ('880', '220', 'Qui aperiam.', '0');
INSERT INTO `question_answer` VALUES ('881', '221', 'Error aperiam expedita.', '1');
INSERT INTO `question_answer` VALUES ('882', '221', 'Ipsum deserunt quo.', '0');
INSERT INTO `question_answer` VALUES ('883', '221', 'Aut magnam.', '0');
INSERT INTO `question_answer` VALUES ('884', '221', 'Dignissimos molestiae vel.', '0');
INSERT INTO `question_answer` VALUES ('885', '222', 'Est excepturi placeat.', '0');
INSERT INTO `question_answer` VALUES ('886', '222', 'Culpa fuga molestiae.', '0');
INSERT INTO `question_answer` VALUES ('887', '222', 'Aut quod.', '0');
INSERT INTO `question_answer` VALUES ('888', '222', 'Quos sit esse.', '1');
INSERT INTO `question_answer` VALUES ('889', '223', 'Ut cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('890', '223', 'Unde voluptatem sint.', '0');
INSERT INTO `question_answer` VALUES ('891', '223', 'Ut corrupti.', '1');
INSERT INTO `question_answer` VALUES ('892', '223', 'In natus cum.', '0');
INSERT INTO `question_answer` VALUES ('893', '224', 'Perferendis omnis.', '0');
INSERT INTO `question_answer` VALUES ('894', '224', 'Quaerat nulla hic.', '0');
INSERT INTO `question_answer` VALUES ('895', '224', 'Dignissimos qui.', '0');
INSERT INTO `question_answer` VALUES ('896', '224', 'Praesentium omnis laudantium.', '1');
INSERT INTO `question_answer` VALUES ('897', '225', 'Voluptatem illo.', '0');
INSERT INTO `question_answer` VALUES ('898', '225', 'Voluptate et dolorem.', '0');
INSERT INTO `question_answer` VALUES ('899', '225', 'Rerum mollitia ipsa.', '0');
INSERT INTO `question_answer` VALUES ('900', '225', 'Nulla recusandae.', '1');
INSERT INTO `question_answer` VALUES ('901', '226', 'Dolores repellat.', '0');
INSERT INTO `question_answer` VALUES ('902', '226', 'Voluptas dolores deleniti.', '0');
INSERT INTO `question_answer` VALUES ('903', '226', 'Inventore quam.', '1');
INSERT INTO `question_answer` VALUES ('904', '226', 'Officia ut.', '0');
INSERT INTO `question_answer` VALUES ('905', '227', 'Est quia.', '0');
INSERT INTO `question_answer` VALUES ('906', '227', 'Quis deserunt.', '1');
INSERT INTO `question_answer` VALUES ('907', '227', 'Eveniet tempora.', '0');
INSERT INTO `question_answer` VALUES ('908', '227', 'Beatae et et.', '0');
INSERT INTO `question_answer` VALUES ('909', '228', 'Amet voluptas et.', '0');
INSERT INTO `question_answer` VALUES ('910', '228', 'Ea dolor.', '0');
INSERT INTO `question_answer` VALUES ('911', '228', 'Cupiditate qui.', '1');
INSERT INTO `question_answer` VALUES ('912', '228', 'Harum omnis dolores.', '0');
INSERT INTO `question_answer` VALUES ('913', '229', 'Provident quisquam et.', '1');
INSERT INTO `question_answer` VALUES ('914', '229', 'Et adipisci temporibus.', '0');
INSERT INTO `question_answer` VALUES ('915', '229', 'Quod facilis.', '0');
INSERT INTO `question_answer` VALUES ('916', '229', 'Nisi dolore consequatur.', '0');
INSERT INTO `question_answer` VALUES ('917', '230', 'A dicta.', '0');
INSERT INTO `question_answer` VALUES ('918', '230', 'Sed debitis.', '1');
INSERT INTO `question_answer` VALUES ('919', '230', 'Quaerat blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('920', '230', 'Voluptate consequatur.', '0');
INSERT INTO `question_answer` VALUES ('921', '231', 'Consectetur quos.', '0');
INSERT INTO `question_answer` VALUES ('922', '231', 'Officia culpa ad.', '0');
INSERT INTO `question_answer` VALUES ('923', '231', 'Possimus quis.', '1');
INSERT INTO `question_answer` VALUES ('924', '231', 'Aut ut.', '0');
INSERT INTO `question_answer` VALUES ('925', '232', 'Ratione repellendus.', '0');
INSERT INTO `question_answer` VALUES ('926', '232', 'Ut quisquam ut.', '1');
INSERT INTO `question_answer` VALUES ('927', '232', 'Voluptate quisquam.', '0');
INSERT INTO `question_answer` VALUES ('928', '232', 'Laudantium dicta blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('929', '233', 'Nulla ut deserunt.', '0');
INSERT INTO `question_answer` VALUES ('930', '233', 'Accusamus exercitationem nihil.', '1');
INSERT INTO `question_answer` VALUES ('931', '233', 'In iste repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('932', '233', 'Pariatur saepe voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('933', '234', 'Harum maiores aut.', '0');
INSERT INTO `question_answer` VALUES ('934', '234', 'Cumque odit et.', '0');
INSERT INTO `question_answer` VALUES ('935', '234', 'Voluptatem qui dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('936', '234', 'Et non.', '1');
INSERT INTO `question_answer` VALUES ('937', '235', 'Vitae vero.', '1');
INSERT INTO `question_answer` VALUES ('938', '235', 'Et sint omnis.', '0');
INSERT INTO `question_answer` VALUES ('939', '235', 'Necessitatibus dolores.', '0');
INSERT INTO `question_answer` VALUES ('940', '235', 'Tenetur rerum et.', '0');
INSERT INTO `question_answer` VALUES ('941', '236', 'Et consectetur repudiandae.', '1');
INSERT INTO `question_answer` VALUES ('942', '236', 'Optio itaque provident.', '0');
INSERT INTO `question_answer` VALUES ('943', '236', 'Et dolor.', '0');
INSERT INTO `question_answer` VALUES ('944', '236', 'Possimus provident cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('945', '237', 'Aut at.', '0');
INSERT INTO `question_answer` VALUES ('946', '237', 'Impedit est placeat.', '0');
INSERT INTO `question_answer` VALUES ('947', '237', 'Ipsum voluptate.', '0');
INSERT INTO `question_answer` VALUES ('948', '237', 'Aut dolor quaerat.', '1');
INSERT INTO `question_answer` VALUES ('949', '238', 'Sit qui.', '0');
INSERT INTO `question_answer` VALUES ('950', '238', 'Maxime harum.', '0');
INSERT INTO `question_answer` VALUES ('951', '238', 'Numquam maxime.', '0');
INSERT INTO `question_answer` VALUES ('952', '238', 'Eum possimus dolorem.', '1');
INSERT INTO `question_answer` VALUES ('953', '239', 'Porro tenetur.', '0');
INSERT INTO `question_answer` VALUES ('954', '239', 'Voluptas nulla.', '0');
INSERT INTO `question_answer` VALUES ('955', '239', 'Ut sunt.', '1');
INSERT INTO `question_answer` VALUES ('956', '239', 'Ab quibusdam sapiente.', '0');
INSERT INTO `question_answer` VALUES ('957', '240', 'Aut id.', '1');
INSERT INTO `question_answer` VALUES ('958', '240', 'Beatae accusamus.', '0');
INSERT INTO `question_answer` VALUES ('959', '240', 'Ut velit omnis.', '0');
INSERT INTO `question_answer` VALUES ('960', '240', 'Cumque odio.', '0');
INSERT INTO `question_answer` VALUES ('961', '241', 'Quisquam ut.', '0');
INSERT INTO `question_answer` VALUES ('962', '241', 'Esse perferendis.', '1');
INSERT INTO `question_answer` VALUES ('963', '241', 'Totam sequi.', '0');
INSERT INTO `question_answer` VALUES ('964', '241', 'Expedita nobis deserunt.', '0');
INSERT INTO `question_answer` VALUES ('965', '242', 'Dolorem quis.', '1');
INSERT INTO `question_answer` VALUES ('966', '242', 'Ut animi.', '0');
INSERT INTO `question_answer` VALUES ('967', '242', 'Laudantium corporis ut.', '0');
INSERT INTO `question_answer` VALUES ('968', '242', 'Animi excepturi.', '0');
INSERT INTO `question_answer` VALUES ('969', '243', 'Quo unde officia.', '0');
INSERT INTO `question_answer` VALUES ('970', '243', 'Asperiores eos voluptas.', '1');
INSERT INTO `question_answer` VALUES ('971', '243', 'Doloribus ut.', '0');
INSERT INTO `question_answer` VALUES ('972', '243', 'Cumque ratione.', '0');
INSERT INTO `question_answer` VALUES ('973', '244', 'Est eveniet esse.', '0');
INSERT INTO `question_answer` VALUES ('974', '244', 'Consectetur odio.', '0');
INSERT INTO `question_answer` VALUES ('975', '244', 'Consequatur voluptatem adipisci.', '1');
INSERT INTO `question_answer` VALUES ('976', '244', 'Natus totam quos.', '0');
INSERT INTO `question_answer` VALUES ('977', '245', 'Excepturi perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('978', '245', 'Eligendi qui.', '0');
INSERT INTO `question_answer` VALUES ('979', '245', 'Accusantium adipisci.', '1');
INSERT INTO `question_answer` VALUES ('980', '245', 'Atque explicabo.', '0');
INSERT INTO `question_answer` VALUES ('981', '246', 'Accusamus voluptatibus voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('982', '246', 'Eaque officiis.', '1');
INSERT INTO `question_answer` VALUES ('983', '246', 'Nihil magni harum.', '0');
INSERT INTO `question_answer` VALUES ('984', '246', 'Dolor voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('985', '247', 'Dolores nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('986', '247', 'Distinctio qui vel.', '1');
INSERT INTO `question_answer` VALUES ('987', '247', 'In soluta quia.', '0');
INSERT INTO `question_answer` VALUES ('988', '247', 'Est quo.', '0');
INSERT INTO `question_answer` VALUES ('989', '248', 'Placeat consequuntur.', '0');
INSERT INTO `question_answer` VALUES ('990', '248', 'Impedit ut.', '0');
INSERT INTO `question_answer` VALUES ('991', '248', 'Tenetur quos.', '1');
INSERT INTO `question_answer` VALUES ('992', '248', 'A eaque sint.', '0');
INSERT INTO `question_answer` VALUES ('993', '249', 'Consequatur illo et.', '0');
INSERT INTO `question_answer` VALUES ('994', '249', 'Unde qui.', '0');
INSERT INTO `question_answer` VALUES ('995', '249', 'Facilis debitis.', '0');
INSERT INTO `question_answer` VALUES ('996', '249', 'Aut laborum.', '1');
INSERT INTO `question_answer` VALUES ('997', '250', 'Cupiditate recusandae distinctio.', '0');
INSERT INTO `question_answer` VALUES ('998', '250', 'Ab autem.', '0');
INSERT INTO `question_answer` VALUES ('999', '250', 'Et perferendis.', '1');
INSERT INTO `question_answer` VALUES ('1000', '250', 'Unde dolorum.', '0');
INSERT INTO `question_answer` VALUES ('1001', '251', 'Vitae aut.', '0');
INSERT INTO `question_answer` VALUES ('1002', '251', 'Quia assumenda.', '0');
INSERT INTO `question_answer` VALUES ('1003', '251', 'Earum iure autem.', '1');
INSERT INTO `question_answer` VALUES ('1004', '251', 'Quae rerum nemo.', '0');
INSERT INTO `question_answer` VALUES ('1005', '252', 'In corrupti.', '1');
INSERT INTO `question_answer` VALUES ('1006', '252', 'Aut natus.', '0');
INSERT INTO `question_answer` VALUES ('1007', '252', 'Omnis explicabo et.', '0');
INSERT INTO `question_answer` VALUES ('1008', '252', 'Deleniti ipsum.', '0');
INSERT INTO `question_answer` VALUES ('1009', '253', 'Totam et enim.', '0');
INSERT INTO `question_answer` VALUES ('1010', '253', 'Deserunt nesciunt.', '1');
INSERT INTO `question_answer` VALUES ('1011', '253', 'Sit pariatur autem.', '0');
INSERT INTO `question_answer` VALUES ('1012', '253', 'Voluptatem non nemo.', '0');
INSERT INTO `question_answer` VALUES ('1013', '254', 'Ut ea cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('1014', '254', 'Iure modi qui.', '0');
INSERT INTO `question_answer` VALUES ('1015', '254', 'Dicta quo.', '1');
INSERT INTO `question_answer` VALUES ('1016', '254', 'Aut aliquid.', '0');
INSERT INTO `question_answer` VALUES ('1017', '255', 'Laboriosam laboriosam.', '1');
INSERT INTO `question_answer` VALUES ('1018', '255', 'Similique occaecati.', '0');
INSERT INTO `question_answer` VALUES ('1019', '255', 'Perspiciatis similique nihil.', '0');
INSERT INTO `question_answer` VALUES ('1020', '255', 'Illum hic.', '0');
INSERT INTO `question_answer` VALUES ('1021', '256', 'Dicta voluptatibus facere.', '0');
INSERT INTO `question_answer` VALUES ('1022', '256', 'Rerum officia corporis.', '1');
INSERT INTO `question_answer` VALUES ('1023', '256', 'Atque alias nulla.', '0');
INSERT INTO `question_answer` VALUES ('1024', '256', 'Rem accusamus.', '0');
INSERT INTO `question_answer` VALUES ('1025', '257', 'Et voluptas in.', '0');
INSERT INTO `question_answer` VALUES ('1026', '257', 'Quibusdam delectus accusantium.', '1');
INSERT INTO `question_answer` VALUES ('1027', '257', 'Sed saepe velit.', '0');
INSERT INTO `question_answer` VALUES ('1028', '257', 'Voluptatibus delectus nisi.', '0');
INSERT INTO `question_answer` VALUES ('1029', '258', 'Quidem aliquam aliquam.', '0');
INSERT INTO `question_answer` VALUES ('1030', '258', 'Earum minus cumque.', '0');
INSERT INTO `question_answer` VALUES ('1031', '258', 'Reiciendis nihil optio.', '1');
INSERT INTO `question_answer` VALUES ('1032', '258', 'Veniam ea.', '0');
INSERT INTO `question_answer` VALUES ('1033', '259', 'Ea asperiores ut.', '0');
INSERT INTO `question_answer` VALUES ('1034', '259', 'Exercitationem debitis.', '0');
INSERT INTO `question_answer` VALUES ('1035', '259', 'Est modi eos.', '0');
INSERT INTO `question_answer` VALUES ('1036', '259', 'Facilis omnis.', '1');
INSERT INTO `question_answer` VALUES ('1037', '260', 'Consequatur voluptatem in.', '0');
INSERT INTO `question_answer` VALUES ('1038', '260', 'Molestias voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1039', '260', 'Et ut voluptatibus.', '1');
INSERT INTO `question_answer` VALUES ('1040', '260', 'Reiciendis ab eligendi.', '0');
INSERT INTO `question_answer` VALUES ('1041', '261', 'Sit perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('1042', '261', 'Nihil tempore fugit.', '1');
INSERT INTO `question_answer` VALUES ('1043', '261', 'Qui maxime amet.', '0');
INSERT INTO `question_answer` VALUES ('1044', '261', 'Quia nisi voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1045', '262', 'Optio eius.', '0');
INSERT INTO `question_answer` VALUES ('1046', '262', 'Beatae suscipit fuga.', '0');
INSERT INTO `question_answer` VALUES ('1047', '262', 'Nihil illum omnis.', '0');
INSERT INTO `question_answer` VALUES ('1048', '262', 'Alias aut nihil.', '1');
INSERT INTO `question_answer` VALUES ('1049', '263', 'Rerum velit error.', '0');
INSERT INTO `question_answer` VALUES ('1050', '263', 'Rerum culpa.', '0');
INSERT INTO `question_answer` VALUES ('1051', '263', 'Enim in fugit.', '0');
INSERT INTO `question_answer` VALUES ('1052', '263', 'Assumenda sed.', '1');
INSERT INTO `question_answer` VALUES ('1053', '264', 'Dolores voluptas facilis.', '0');
INSERT INTO `question_answer` VALUES ('1054', '264', 'Id a velit.', '0');
INSERT INTO `question_answer` VALUES ('1055', '264', 'Qui occaecati deserunt.', '1');
INSERT INTO `question_answer` VALUES ('1056', '264', 'Laudantium necessitatibus.', '0');
INSERT INTO `question_answer` VALUES ('1057', '265', 'Tempora quos.', '0');
INSERT INTO `question_answer` VALUES ('1058', '265', 'Ratione rem voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1059', '265', 'Non odio dolore.', '1');
INSERT INTO `question_answer` VALUES ('1060', '265', 'Sequi placeat labore.', '0');
INSERT INTO `question_answer` VALUES ('1061', '266', 'Omnis maiores ea.', '0');
INSERT INTO `question_answer` VALUES ('1062', '266', 'Sequi omnis enim.', '0');
INSERT INTO `question_answer` VALUES ('1063', '266', 'Ex temporibus velit.', '0');
INSERT INTO `question_answer` VALUES ('1064', '266', 'Odio placeat in.', '1');
INSERT INTO `question_answer` VALUES ('1065', '267', 'Nihil sed molestiae.', '1');
INSERT INTO `question_answer` VALUES ('1066', '267', 'Quisquam consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1067', '267', 'Libero debitis.', '0');
INSERT INTO `question_answer` VALUES ('1068', '267', 'Qui repellendus natus.', '0');
INSERT INTO `question_answer` VALUES ('1069', '268', 'Voluptas qui quia.', '1');
INSERT INTO `question_answer` VALUES ('1070', '268', 'Omnis sint.', '0');
INSERT INTO `question_answer` VALUES ('1071', '268', 'Molestiae architecto.', '0');
INSERT INTO `question_answer` VALUES ('1072', '268', 'Est ratione cumque.', '0');
INSERT INTO `question_answer` VALUES ('1073', '269', 'Natus cum aperiam.', '0');
INSERT INTO `question_answer` VALUES ('1074', '269', 'Et autem.', '0');
INSERT INTO `question_answer` VALUES ('1075', '269', 'Molestiae deserunt.', '0');
INSERT INTO `question_answer` VALUES ('1076', '269', 'Ea delectus nesciunt.', '1');
INSERT INTO `question_answer` VALUES ('1077', '270', 'Sit sunt.', '0');
INSERT INTO `question_answer` VALUES ('1078', '270', 'Molestiae ut vitae.', '0');
INSERT INTO `question_answer` VALUES ('1079', '270', 'Similique velit.', '1');
INSERT INTO `question_answer` VALUES ('1080', '270', 'Est mollitia et.', '0');
INSERT INTO `question_answer` VALUES ('1081', '271', 'Sunt autem.', '0');
INSERT INTO `question_answer` VALUES ('1082', '271', 'Qui eos molestiae.', '0');
INSERT INTO `question_answer` VALUES ('1083', '271', 'Vel eos qui.', '0');
INSERT INTO `question_answer` VALUES ('1084', '271', 'Sit quam doloribus.', '1');
INSERT INTO `question_answer` VALUES ('1085', '272', 'Quis accusamus.', '0');
INSERT INTO `question_answer` VALUES ('1086', '272', 'Quia cum rerum.', '0');
INSERT INTO `question_answer` VALUES ('1087', '272', 'Vitae in ut.', '0');
INSERT INTO `question_answer` VALUES ('1088', '272', 'Est voluptates doloremque.', '1');
INSERT INTO `question_answer` VALUES ('1089', '273', 'Sunt rem.', '0');
INSERT INTO `question_answer` VALUES ('1090', '273', 'Ut voluptas dolor.', '1');
INSERT INTO `question_answer` VALUES ('1091', '273', 'Eveniet officia.', '0');
INSERT INTO `question_answer` VALUES ('1092', '273', 'Velit sapiente architecto.', '0');
INSERT INTO `question_answer` VALUES ('1093', '274', 'Temporibus amet vel.', '0');
INSERT INTO `question_answer` VALUES ('1094', '274', 'Doloribus id.', '0');
INSERT INTO `question_answer` VALUES ('1095', '274', 'Voluptates sunt.', '1');
INSERT INTO `question_answer` VALUES ('1096', '274', 'Id dolores.', '0');
INSERT INTO `question_answer` VALUES ('1097', '275', 'Velit nisi.', '1');
INSERT INTO `question_answer` VALUES ('1098', '275', 'Fugiat facilis reiciendis.', '0');
INSERT INTO `question_answer` VALUES ('1099', '275', 'Sequi doloremque excepturi.', '0');
INSERT INTO `question_answer` VALUES ('1100', '275', 'Est quia quia.', '0');
INSERT INTO `question_answer` VALUES ('1101', '276', 'Qui dolore qui.', '1');
INSERT INTO `question_answer` VALUES ('1102', '276', 'Voluptatem impedit rerum.', '0');
INSERT INTO `question_answer` VALUES ('1103', '276', 'Qui repellendus libero.', '0');
INSERT INTO `question_answer` VALUES ('1104', '276', 'Sunt est ut.', '0');
INSERT INTO `question_answer` VALUES ('1105', '277', 'Blanditiis dolor.', '1');
INSERT INTO `question_answer` VALUES ('1106', '277', 'Qui est.', '0');
INSERT INTO `question_answer` VALUES ('1107', '277', 'Quibusdam error.', '0');
INSERT INTO `question_answer` VALUES ('1108', '277', 'Suscipit tempore.', '0');
INSERT INTO `question_answer` VALUES ('1109', '278', 'Dolor dolorum.', '1');
INSERT INTO `question_answer` VALUES ('1110', '278', 'Eos sint.', '0');
INSERT INTO `question_answer` VALUES ('1111', '278', 'Deleniti enim.', '0');
INSERT INTO `question_answer` VALUES ('1112', '278', 'Non ipsum.', '0');
INSERT INTO `question_answer` VALUES ('1113', '279', 'Eum repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('1114', '279', 'Nostrum sequi.', '1');
INSERT INTO `question_answer` VALUES ('1115', '279', 'Unde mollitia corrupti.', '0');
INSERT INTO `question_answer` VALUES ('1116', '279', 'Officia facere.', '0');
INSERT INTO `question_answer` VALUES ('1117', '280', 'Fugit voluptatibus dolorum.', '0');
INSERT INTO `question_answer` VALUES ('1118', '280', 'Quod nihil.', '0');
INSERT INTO `question_answer` VALUES ('1119', '280', 'Et ut.', '1');
INSERT INTO `question_answer` VALUES ('1120', '280', 'Illum placeat.', '0');
INSERT INTO `question_answer` VALUES ('1121', '281', 'Quidem aut ut.', '0');
INSERT INTO `question_answer` VALUES ('1122', '281', 'Officiis ad aut.', '1');
INSERT INTO `question_answer` VALUES ('1123', '281', 'Cumque blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('1124', '281', 'Maxime omnis.', '0');
INSERT INTO `question_answer` VALUES ('1125', '282', 'Aspernatur et quaerat.', '0');
INSERT INTO `question_answer` VALUES ('1126', '282', 'Harum autem ea.', '1');
INSERT INTO `question_answer` VALUES ('1127', '282', 'Consectetur suscipit rerum.', '0');
INSERT INTO `question_answer` VALUES ('1128', '282', 'Numquam doloremque id.', '0');
INSERT INTO `question_answer` VALUES ('1129', '283', 'A dolore commodi.', '1');
INSERT INTO `question_answer` VALUES ('1130', '283', 'Vero ex.', '0');
INSERT INTO `question_answer` VALUES ('1131', '283', 'Nesciunt et reiciendis.', '0');
INSERT INTO `question_answer` VALUES ('1132', '283', 'Quia ut asperiores.', '0');
INSERT INTO `question_answer` VALUES ('1133', '284', 'Dolores doloribus excepturi.', '0');
INSERT INTO `question_answer` VALUES ('1134', '284', 'Est aut pariatur.', '0');
INSERT INTO `question_answer` VALUES ('1135', '284', 'Est velit.', '1');
INSERT INTO `question_answer` VALUES ('1136', '284', 'Et atque.', '0');
INSERT INTO `question_answer` VALUES ('1137', '285', 'Et officia excepturi.', '0');
INSERT INTO `question_answer` VALUES ('1138', '285', 'Ab id molestias.', '0');
INSERT INTO `question_answer` VALUES ('1139', '285', 'In voluptas est.', '1');
INSERT INTO `question_answer` VALUES ('1140', '285', 'Iusto est.', '0');
INSERT INTO `question_answer` VALUES ('1141', '286', 'Ut neque in.', '0');
INSERT INTO `question_answer` VALUES ('1142', '286', 'Dolorem fugiat.', '1');
INSERT INTO `question_answer` VALUES ('1143', '286', 'Tempore unde.', '0');
INSERT INTO `question_answer` VALUES ('1144', '286', 'Voluptas praesentium earum.', '0');
INSERT INTO `question_answer` VALUES ('1145', '287', 'Odio vel eum.', '0');
INSERT INTO `question_answer` VALUES ('1146', '287', 'Et quaerat dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('1147', '287', 'Beatae sed eaque.', '1');
INSERT INTO `question_answer` VALUES ('1148', '287', 'Fugiat velit.', '0');
INSERT INTO `question_answer` VALUES ('1149', '288', 'Quia illum.', '0');
INSERT INTO `question_answer` VALUES ('1150', '288', 'Rerum accusamus cumque.', '0');
INSERT INTO `question_answer` VALUES ('1151', '288', 'Et dolorem.', '1');
INSERT INTO `question_answer` VALUES ('1152', '288', 'Illum sint saepe.', '0');
INSERT INTO `question_answer` VALUES ('1153', '289', 'Illo reprehenderit impedit.', '1');
INSERT INTO `question_answer` VALUES ('1154', '289', 'Qui qui hic.', '0');
INSERT INTO `question_answer` VALUES ('1155', '289', 'Est enim.', '0');
INSERT INTO `question_answer` VALUES ('1156', '289', 'Eaque id nisi.', '0');
INSERT INTO `question_answer` VALUES ('1157', '290', 'Veritatis atque nihil.', '0');
INSERT INTO `question_answer` VALUES ('1158', '290', 'Dolorum aspernatur.', '0');
INSERT INTO `question_answer` VALUES ('1159', '290', 'Nostrum omnis minus.', '1');
INSERT INTO `question_answer` VALUES ('1160', '290', 'Et occaecati.', '0');
INSERT INTO `question_answer` VALUES ('1161', '291', 'Odit voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('1162', '291', 'Harum totam numquam.', '0');
INSERT INTO `question_answer` VALUES ('1163', '291', 'Nemo ipsa.', '1');
INSERT INTO `question_answer` VALUES ('1164', '291', 'Nam in.', '0');
INSERT INTO `question_answer` VALUES ('1165', '292', 'Illum nobis occaecati.', '1');
INSERT INTO `question_answer` VALUES ('1166', '292', 'Sed laboriosam.', '0');
INSERT INTO `question_answer` VALUES ('1167', '292', 'Voluptatibus dolore modi.', '0');
INSERT INTO `question_answer` VALUES ('1168', '292', 'Fugiat autem.', '0');
INSERT INTO `question_answer` VALUES ('1169', '293', 'Earum tenetur.', '0');
INSERT INTO `question_answer` VALUES ('1170', '293', 'Laborum eos.', '1');
INSERT INTO `question_answer` VALUES ('1171', '293', 'Voluptatum accusantium.', '0');
INSERT INTO `question_answer` VALUES ('1172', '293', 'At modi alias.', '0');
INSERT INTO `question_answer` VALUES ('1173', '294', 'Dicta occaecati deleniti.', '1');
INSERT INTO `question_answer` VALUES ('1174', '294', 'Perferendis facilis.', '0');
INSERT INTO `question_answer` VALUES ('1175', '294', 'Amet eaque.', '0');
INSERT INTO `question_answer` VALUES ('1176', '294', 'Ducimus vero.', '0');
INSERT INTO `question_answer` VALUES ('1177', '295', 'Aperiam provident non.', '1');
INSERT INTO `question_answer` VALUES ('1178', '295', 'Natus ullam.', '0');
INSERT INTO `question_answer` VALUES ('1179', '295', 'Consequatur ad.', '0');
INSERT INTO `question_answer` VALUES ('1180', '295', 'Iusto aperiam voluptate.', '0');
INSERT INTO `question_answer` VALUES ('1181', '296', 'Aliquam debitis aliquam.', '0');
INSERT INTO `question_answer` VALUES ('1182', '296', 'Sint aut possimus.', '1');
INSERT INTO `question_answer` VALUES ('1183', '296', 'Rerum nobis error.', '0');
INSERT INTO `question_answer` VALUES ('1184', '296', 'Eligendi rerum exercitationem.', '0');
INSERT INTO `question_answer` VALUES ('1185', '297', 'Id commodi itaque.', '0');
INSERT INTO `question_answer` VALUES ('1186', '297', 'Deserunt et.', '1');
INSERT INTO `question_answer` VALUES ('1187', '297', 'Dolorum quo repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('1188', '297', 'Debitis voluptatibus delectus.', '0');
INSERT INTO `question_answer` VALUES ('1189', '298', 'Nesciunt qui corrupti.', '0');
INSERT INTO `question_answer` VALUES ('1190', '298', 'Laboriosam in.', '0');
INSERT INTO `question_answer` VALUES ('1191', '298', 'Aut nemo velit.', '1');
INSERT INTO `question_answer` VALUES ('1192', '298', 'Rerum nemo ducimus.', '0');
INSERT INTO `question_answer` VALUES ('1193', '299', 'Aut delectus deserunt.', '0');
INSERT INTO `question_answer` VALUES ('1194', '299', 'Sunt facilis facere.', '0');
INSERT INTO `question_answer` VALUES ('1195', '299', 'Et tempora.', '1');
INSERT INTO `question_answer` VALUES ('1196', '299', 'Quibusdam vero eos.', '0');
INSERT INTO `question_answer` VALUES ('1197', '300', 'Optio iste voluptates.', '0');
INSERT INTO `question_answer` VALUES ('1198', '300', 'Magni odio voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1199', '300', 'Sint est.', '1');
INSERT INTO `question_answer` VALUES ('1200', '300', 'Nemo porro ut.', '0');
INSERT INTO `question_answer` VALUES ('1201', '301', 'Nihil non ut.', '0');
INSERT INTO `question_answer` VALUES ('1202', '301', 'Et ut labore.', '1');
INSERT INTO `question_answer` VALUES ('1203', '301', 'Labore totam minima.', '0');
INSERT INTO `question_answer` VALUES ('1204', '301', 'Aut fugit tempora.', '0');
INSERT INTO `question_answer` VALUES ('1205', '302', 'Omnis quia quia.', '0');
INSERT INTO `question_answer` VALUES ('1206', '302', 'Asperiores neque.', '0');
INSERT INTO `question_answer` VALUES ('1207', '302', 'Possimus et.', '0');
INSERT INTO `question_answer` VALUES ('1208', '302', 'Cumque quo blanditiis.', '1');
INSERT INTO `question_answer` VALUES ('1209', '303', 'Quae id.', '0');
INSERT INTO `question_answer` VALUES ('1210', '303', 'Et voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1211', '303', 'Voluptatem ut in.', '1');
INSERT INTO `question_answer` VALUES ('1212', '303', 'Minus nihil.', '0');
INSERT INTO `question_answer` VALUES ('1213', '304', 'Numquam dolorum.', '0');
INSERT INTO `question_answer` VALUES ('1214', '304', 'Ut doloribus.', '1');
INSERT INTO `question_answer` VALUES ('1215', '304', 'Laborum explicabo maiores.', '0');
INSERT INTO `question_answer` VALUES ('1216', '304', 'Quidem voluptas non.', '0');
INSERT INTO `question_answer` VALUES ('1217', '305', 'Dolores et.', '1');
INSERT INTO `question_answer` VALUES ('1218', '305', 'Provident quia.', '0');
INSERT INTO `question_answer` VALUES ('1219', '305', 'Asperiores eveniet.', '0');
INSERT INTO `question_answer` VALUES ('1220', '305', 'Aliquid repudiandae voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('1221', '306', 'Iure id.', '0');
INSERT INTO `question_answer` VALUES ('1222', '306', 'Quis adipisci.', '0');
INSERT INTO `question_answer` VALUES ('1223', '306', 'Reprehenderit non facere.', '0');
INSERT INTO `question_answer` VALUES ('1224', '306', 'Mollitia occaecati.', '1');
INSERT INTO `question_answer` VALUES ('1225', '307', 'Cumque beatae.', '0');
INSERT INTO `question_answer` VALUES ('1226', '307', 'Repellendus esse.', '0');
INSERT INTO `question_answer` VALUES ('1227', '307', 'Est odit corporis.', '1');
INSERT INTO `question_answer` VALUES ('1228', '307', 'Soluta et.', '0');
INSERT INTO `question_answer` VALUES ('1229', '308', 'Quia officia suscipit.', '1');
INSERT INTO `question_answer` VALUES ('1230', '308', 'Odit ut.', '0');
INSERT INTO `question_answer` VALUES ('1231', '308', 'Ad hic quia.', '0');
INSERT INTO `question_answer` VALUES ('1232', '308', 'Sit repudiandae et.', '0');
INSERT INTO `question_answer` VALUES ('1233', '309', 'Minus distinctio aut.', '0');
INSERT INTO `question_answer` VALUES ('1234', '309', 'Deleniti sint.', '0');
INSERT INTO `question_answer` VALUES ('1235', '309', 'Sint non.', '0');
INSERT INTO `question_answer` VALUES ('1236', '309', 'Atque quaerat.', '1');
INSERT INTO `question_answer` VALUES ('1237', '310', 'Et magnam saepe.', '0');
INSERT INTO `question_answer` VALUES ('1238', '310', 'Totam iste aut.', '0');
INSERT INTO `question_answer` VALUES ('1239', '310', 'Perspiciatis tempore ea.', '1');
INSERT INTO `question_answer` VALUES ('1240', '310', 'Sunt eligendi.', '0');
INSERT INTO `question_answer` VALUES ('1241', '311', 'Minima et.', '1');
INSERT INTO `question_answer` VALUES ('1242', '311', 'Vel sequi.', '0');
INSERT INTO `question_answer` VALUES ('1243', '311', 'Quia rem.', '0');
INSERT INTO `question_answer` VALUES ('1244', '311', 'Laborum voluptas est.', '0');
INSERT INTO `question_answer` VALUES ('1245', '312', 'Reiciendis est.', '0');
INSERT INTO `question_answer` VALUES ('1246', '312', 'Sequi est.', '0');
INSERT INTO `question_answer` VALUES ('1247', '312', 'Sed officiis.', '1');
INSERT INTO `question_answer` VALUES ('1248', '312', 'Sed nisi.', '0');
INSERT INTO `question_answer` VALUES ('1249', '313', 'Fuga illo sint.', '1');
INSERT INTO `question_answer` VALUES ('1250', '313', 'Totam accusantium.', '0');
INSERT INTO `question_answer` VALUES ('1251', '313', 'Maiores expedita.', '0');
INSERT INTO `question_answer` VALUES ('1252', '313', 'Eligendi repellat.', '0');
INSERT INTO `question_answer` VALUES ('1253', '314', 'Porro rerum.', '0');
INSERT INTO `question_answer` VALUES ('1254', '314', 'Ipsa impedit.', '0');
INSERT INTO `question_answer` VALUES ('1255', '314', 'Dolor possimus.', '0');
INSERT INTO `question_answer` VALUES ('1256', '314', 'Officia fugit.', '1');
INSERT INTO `question_answer` VALUES ('1257', '315', 'Accusamus quas.', '0');
INSERT INTO `question_answer` VALUES ('1258', '315', 'Expedita ex reprehenderit.', '1');
INSERT INTO `question_answer` VALUES ('1259', '315', 'Totam quia.', '0');
INSERT INTO `question_answer` VALUES ('1260', '315', 'Nihil eum ut.', '0');
INSERT INTO `question_answer` VALUES ('1261', '316', 'Vitae ad nobis.', '0');
INSERT INTO `question_answer` VALUES ('1262', '316', 'Repudiandae non vel.', '0');
INSERT INTO `question_answer` VALUES ('1263', '316', 'Esse a.', '0');
INSERT INTO `question_answer` VALUES ('1264', '316', 'Aut doloremque.', '1');
INSERT INTO `question_answer` VALUES ('1265', '317', 'Voluptatem labore.', '1');
INSERT INTO `question_answer` VALUES ('1266', '317', 'Id consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1267', '317', 'Autem sunt.', '0');
INSERT INTO `question_answer` VALUES ('1268', '317', 'Qui harum.', '0');
INSERT INTO `question_answer` VALUES ('1269', '318', 'Soluta dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('1270', '318', 'Tenetur mollitia.', '0');
INSERT INTO `question_answer` VALUES ('1271', '318', 'Molestiae soluta.', '1');
INSERT INTO `question_answer` VALUES ('1272', '318', 'Esse maiores rerum.', '0');
INSERT INTO `question_answer` VALUES ('1273', '319', 'Unde magni.', '0');
INSERT INTO `question_answer` VALUES ('1274', '319', 'Totam consequuntur.', '0');
INSERT INTO `question_answer` VALUES ('1275', '319', 'Nemo culpa nemo.', '0');
INSERT INTO `question_answer` VALUES ('1276', '319', 'Ea explicabo vel.', '1');
INSERT INTO `question_answer` VALUES ('1277', '320', 'Sunt iure corporis.', '0');
INSERT INTO `question_answer` VALUES ('1278', '320', 'Itaque ullam et.', '0');
INSERT INTO `question_answer` VALUES ('1279', '320', 'Consequuntur voluptate.', '0');
INSERT INTO `question_answer` VALUES ('1280', '320', 'Dicta soluta.', '1');
INSERT INTO `question_answer` VALUES ('1281', '321', 'Voluptas id.', '0');
INSERT INTO `question_answer` VALUES ('1282', '321', 'Et assumenda.', '0');
INSERT INTO `question_answer` VALUES ('1283', '321', 'In omnis aut.', '1');
INSERT INTO `question_answer` VALUES ('1284', '321', 'Nobis nihil.', '0');
INSERT INTO `question_answer` VALUES ('1285', '322', 'Similique et.', '0');
INSERT INTO `question_answer` VALUES ('1286', '322', 'Hic quia.', '1');
INSERT INTO `question_answer` VALUES ('1287', '322', 'Distinctio odio.', '0');
INSERT INTO `question_answer` VALUES ('1288', '322', 'Minus nostrum.', '0');
INSERT INTO `question_answer` VALUES ('1289', '323', 'Doloribus libero nam.', '0');
INSERT INTO `question_answer` VALUES ('1290', '323', 'Est eos.', '0');
INSERT INTO `question_answer` VALUES ('1291', '323', 'Incidunt mollitia.', '0');
INSERT INTO `question_answer` VALUES ('1292', '323', 'Aut consequatur eos.', '1');
INSERT INTO `question_answer` VALUES ('1293', '324', 'Nihil cum.', '0');
INSERT INTO `question_answer` VALUES ('1294', '324', 'Inventore vel fugiat.', '1');
INSERT INTO `question_answer` VALUES ('1295', '324', 'Vero quam.', '0');
INSERT INTO `question_answer` VALUES ('1296', '324', 'Consequatur provident.', '0');
INSERT INTO `question_answer` VALUES ('1297', '325', 'Ut aut.', '1');
INSERT INTO `question_answer` VALUES ('1298', '325', 'Voluptatem ut.', '0');
INSERT INTO `question_answer` VALUES ('1299', '325', 'Aut expedita modi.', '0');
INSERT INTO `question_answer` VALUES ('1300', '325', 'Blanditiis molestias.', '0');
INSERT INTO `question_answer` VALUES ('1301', '326', 'Dolorem et et.', '1');
INSERT INTO `question_answer` VALUES ('1302', '326', 'Id aut atque.', '0');
INSERT INTO `question_answer` VALUES ('1303', '326', 'Ex quam velit.', '0');
INSERT INTO `question_answer` VALUES ('1304', '326', 'Dolorem qui.', '0');
INSERT INTO `question_answer` VALUES ('1305', '327', 'Qui quaerat.', '0');
INSERT INTO `question_answer` VALUES ('1306', '327', 'Vero tenetur.', '0');
INSERT INTO `question_answer` VALUES ('1307', '327', 'Modi et sed.', '1');
INSERT INTO `question_answer` VALUES ('1308', '327', 'Veniam sed sunt.', '0');
INSERT INTO `question_answer` VALUES ('1309', '328', 'Similique voluptatem non.', '0');
INSERT INTO `question_answer` VALUES ('1310', '328', 'Voluptates laudantium laborum.', '0');
INSERT INTO `question_answer` VALUES ('1311', '328', 'Voluptatibus laboriosam.', '1');
INSERT INTO `question_answer` VALUES ('1312', '328', 'Enim sint iste.', '0');
INSERT INTO `question_answer` VALUES ('1313', '329', 'Omnis enim quia.', '1');
INSERT INTO `question_answer` VALUES ('1314', '329', 'Tempore dignissimos sint.', '0');
INSERT INTO `question_answer` VALUES ('1315', '329', 'In sint.', '0');
INSERT INTO `question_answer` VALUES ('1316', '329', 'Ut quas eos.', '0');
INSERT INTO `question_answer` VALUES ('1317', '330', 'Placeat sit.', '0');
INSERT INTO `question_answer` VALUES ('1318', '330', 'Rerum consectetur.', '0');
INSERT INTO `question_answer` VALUES ('1319', '330', 'Fuga ipsa officiis.', '0');
INSERT INTO `question_answer` VALUES ('1320', '330', 'Non distinctio at.', '1');
INSERT INTO `question_answer` VALUES ('1321', '331', 'Quis sit nam.', '1');
INSERT INTO `question_answer` VALUES ('1322', '331', 'Voluptatem aut.', '0');
INSERT INTO `question_answer` VALUES ('1323', '331', 'Consectetur voluptatem molestiae.', '0');
INSERT INTO `question_answer` VALUES ('1324', '331', 'Iste est ullam.', '0');
INSERT INTO `question_answer` VALUES ('1325', '332', 'Occaecati dolorem est.', '0');
INSERT INTO `question_answer` VALUES ('1326', '332', 'Eius praesentium.', '0');
INSERT INTO `question_answer` VALUES ('1327', '332', 'Et nulla rerum.', '0');
INSERT INTO `question_answer` VALUES ('1328', '332', 'Impedit incidunt.', '1');
INSERT INTO `question_answer` VALUES ('1329', '333', 'Aut ad exercitationem.', '0');
INSERT INTO `question_answer` VALUES ('1330', '333', 'Blanditiis sunt eos.', '0');
INSERT INTO `question_answer` VALUES ('1331', '333', 'Eos est cumque.', '0');
INSERT INTO `question_answer` VALUES ('1332', '333', 'Aut voluptatem suscipit.', '1');
INSERT INTO `question_answer` VALUES ('1333', '334', 'Voluptas consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1334', '334', 'Qui sint.', '0');
INSERT INTO `question_answer` VALUES ('1335', '334', 'Aut aut ut.', '1');
INSERT INTO `question_answer` VALUES ('1336', '334', 'Distinctio laudantium.', '0');
INSERT INTO `question_answer` VALUES ('1337', '335', 'Quibusdam eaque repudiandae.', '1');
INSERT INTO `question_answer` VALUES ('1338', '335', 'Atque dolor nobis.', '0');
INSERT INTO `question_answer` VALUES ('1339', '335', 'Rem quaerat.', '0');
INSERT INTO `question_answer` VALUES ('1340', '335', 'Dolore eius.', '0');
INSERT INTO `question_answer` VALUES ('1341', '336', 'Dolor quaerat.', '1');
INSERT INTO `question_answer` VALUES ('1342', '336', 'Est nihil.', '0');
INSERT INTO `question_answer` VALUES ('1343', '336', 'Pariatur esse ab.', '0');
INSERT INTO `question_answer` VALUES ('1344', '336', 'Totam occaecati.', '0');
INSERT INTO `question_answer` VALUES ('1345', '337', 'Illo necessitatibus ex.', '0');
INSERT INTO `question_answer` VALUES ('1346', '337', 'Nisi doloribus.', '1');
INSERT INTO `question_answer` VALUES ('1347', '337', 'Consequatur sunt.', '0');
INSERT INTO `question_answer` VALUES ('1348', '337', 'Consectetur nemo excepturi.', '0');
INSERT INTO `question_answer` VALUES ('1349', '338', 'Occaecati nemo modi.', '0');
INSERT INTO `question_answer` VALUES ('1350', '338', 'Dolore earum corrupti.', '0');
INSERT INTO `question_answer` VALUES ('1351', '338', 'Aspernatur quisquam.', '1');
INSERT INTO `question_answer` VALUES ('1352', '338', 'Doloribus qui consequuntur.', '0');
INSERT INTO `question_answer` VALUES ('1353', '339', 'Velit est deleniti.', '0');
INSERT INTO `question_answer` VALUES ('1354', '339', 'Fugit laudantium sed.', '0');
INSERT INTO `question_answer` VALUES ('1355', '339', 'Perferendis minus non.', '0');
INSERT INTO `question_answer` VALUES ('1356', '339', 'Unde sunt.', '1');
INSERT INTO `question_answer` VALUES ('1357', '340', 'Odit delectus.', '1');
INSERT INTO `question_answer` VALUES ('1358', '340', 'Officiis quia libero.', '0');
INSERT INTO `question_answer` VALUES ('1359', '340', 'Asperiores provident repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('1360', '340', 'Eum aut explicabo.', '0');
INSERT INTO `question_answer` VALUES ('1361', '341', 'Quam quis.', '0');
INSERT INTO `question_answer` VALUES ('1362', '341', 'Nam corrupti quo.', '0');
INSERT INTO `question_answer` VALUES ('1363', '341', 'Optio velit.', '1');
INSERT INTO `question_answer` VALUES ('1364', '341', 'Accusamus qui aliquid.', '0');
INSERT INTO `question_answer` VALUES ('1365', '342', 'Sunt quia harum.', '1');
INSERT INTO `question_answer` VALUES ('1366', '342', 'Est qui qui.', '0');
INSERT INTO `question_answer` VALUES ('1367', '342', 'Aliquam iure.', '0');
INSERT INTO `question_answer` VALUES ('1368', '342', 'Incidunt accusamus deserunt.', '0');
INSERT INTO `question_answer` VALUES ('1369', '343', 'Qui nesciunt nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('1370', '343', 'Deserunt laboriosam.', '0');
INSERT INTO `question_answer` VALUES ('1371', '343', 'Quo et.', '1');
INSERT INTO `question_answer` VALUES ('1372', '343', 'Culpa rem at.', '0');
INSERT INTO `question_answer` VALUES ('1373', '344', 'Voluptate itaque.', '0');
INSERT INTO `question_answer` VALUES ('1374', '344', 'Vel magnam.', '0');
INSERT INTO `question_answer` VALUES ('1375', '344', 'Possimus assumenda.', '0');
INSERT INTO `question_answer` VALUES ('1376', '344', 'Maxime eum velit.', '1');
INSERT INTO `question_answer` VALUES ('1377', '345', 'Omnis inventore.', '0');
INSERT INTO `question_answer` VALUES ('1378', '345', 'Consequatur eligendi et.', '0');
INSERT INTO `question_answer` VALUES ('1379', '345', 'Sequi velit.', '0');
INSERT INTO `question_answer` VALUES ('1380', '345', 'Consequuntur quidem fugiat.', '1');
INSERT INTO `question_answer` VALUES ('1381', '346', 'Qui veritatis.', '0');
INSERT INTO `question_answer` VALUES ('1382', '346', 'Quaerat rem maiores.', '0');
INSERT INTO `question_answer` VALUES ('1383', '346', 'Quod blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('1384', '346', 'Est velit dolores.', '1');
INSERT INTO `question_answer` VALUES ('1385', '347', 'Aut exercitationem mollitia.', '0');
INSERT INTO `question_answer` VALUES ('1386', '347', 'Soluta dolores saepe.', '1');
INSERT INTO `question_answer` VALUES ('1387', '347', 'Aut similique adipisci.', '0');
INSERT INTO `question_answer` VALUES ('1388', '347', 'Velit molestiae aut.', '0');
INSERT INTO `question_answer` VALUES ('1389', '348', 'Repellat laborum necessitatibus.', '1');
INSERT INTO `question_answer` VALUES ('1390', '348', 'Deleniti quos.', '0');
INSERT INTO `question_answer` VALUES ('1391', '348', 'Ducimus qui quo.', '0');
INSERT INTO `question_answer` VALUES ('1392', '348', 'Repellat nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('1393', '349', 'Tempora deleniti.', '0');
INSERT INTO `question_answer` VALUES ('1394', '349', 'Id ipsam.', '1');
INSERT INTO `question_answer` VALUES ('1395', '349', 'Voluptas nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('1396', '349', 'Optio harum sint.', '0');
INSERT INTO `question_answer` VALUES ('1397', '350', 'Ut doloribus dolore.', '0');
INSERT INTO `question_answer` VALUES ('1398', '350', 'Sed ad in.', '1');
INSERT INTO `question_answer` VALUES ('1399', '350', 'Aliquam ut soluta.', '0');
INSERT INTO `question_answer` VALUES ('1400', '350', 'Culpa molestiae assumenda.', '0');
INSERT INTO `question_answer` VALUES ('1401', '351', 'Id a impedit.', '1');
INSERT INTO `question_answer` VALUES ('1402', '351', 'Aut autem.', '0');
INSERT INTO `question_answer` VALUES ('1403', '351', 'Delectus sunt eum.', '0');
INSERT INTO `question_answer` VALUES ('1404', '351', 'Fugiat vitae rerum.', '0');
INSERT INTO `question_answer` VALUES ('1405', '352', 'Quo suscipit hic.', '0');
INSERT INTO `question_answer` VALUES ('1406', '352', 'Aperiam reiciendis enim.', '1');
INSERT INTO `question_answer` VALUES ('1407', '352', 'Ea est.', '0');
INSERT INTO `question_answer` VALUES ('1408', '352', 'Amet voluptatem maxime.', '0');
INSERT INTO `question_answer` VALUES ('1409', '353', 'Alias consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1410', '353', 'Delectus corrupti nam.', '0');
INSERT INTO `question_answer` VALUES ('1411', '353', 'Doloremque reiciendis.', '1');
INSERT INTO `question_answer` VALUES ('1412', '353', 'Unde laborum.', '0');
INSERT INTO `question_answer` VALUES ('1413', '354', 'Voluptate omnis unde.', '0');
INSERT INTO `question_answer` VALUES ('1414', '354', 'Sint incidunt.', '0');
INSERT INTO `question_answer` VALUES ('1415', '354', 'Autem perferendis.', '0');
INSERT INTO `question_answer` VALUES ('1416', '354', 'Aut qui adipisci.', '1');
INSERT INTO `question_answer` VALUES ('1417', '355', 'Vero quod nemo.', '0');
INSERT INTO `question_answer` VALUES ('1418', '355', 'Sit nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('1419', '355', 'Doloribus maiores.', '0');
INSERT INTO `question_answer` VALUES ('1420', '355', 'Odit et praesentium.', '1');
INSERT INTO `question_answer` VALUES ('1421', '356', 'Cum asperiores quo.', '0');
INSERT INTO `question_answer` VALUES ('1422', '356', 'Qui ut quam.', '0');
INSERT INTO `question_answer` VALUES ('1423', '356', 'Quod laborum.', '0');
INSERT INTO `question_answer` VALUES ('1424', '356', 'Qui odit officiis.', '1');
INSERT INTO `question_answer` VALUES ('1425', '357', 'Odio eos dolorum.', '0');
INSERT INTO `question_answer` VALUES ('1426', '357', 'Ducimus amet voluptas.', '1');
INSERT INTO `question_answer` VALUES ('1427', '357', 'Adipisci cupiditate voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1428', '357', 'Et mollitia.', '0');
INSERT INTO `question_answer` VALUES ('1429', '358', 'Aperiam repudiandae eum.', '0');
INSERT INTO `question_answer` VALUES ('1430', '358', 'Totam quo.', '0');
INSERT INTO `question_answer` VALUES ('1431', '358', 'Quaerat ut ab.', '1');
INSERT INTO `question_answer` VALUES ('1432', '358', 'Quis ab.', '0');
INSERT INTO `question_answer` VALUES ('1433', '359', 'Soluta velit.', '1');
INSERT INTO `question_answer` VALUES ('1434', '359', 'Atque et molestiae.', '0');
INSERT INTO `question_answer` VALUES ('1435', '359', 'Et exercitationem voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1436', '359', 'Iusto debitis.', '0');
INSERT INTO `question_answer` VALUES ('1437', '360', 'Sed et est.', '0');
INSERT INTO `question_answer` VALUES ('1438', '360', 'Quas dolores.', '1');
INSERT INTO `question_answer` VALUES ('1439', '360', 'Rerum nihil.', '0');
INSERT INTO `question_answer` VALUES ('1440', '360', 'Et dolorem nostrum.', '0');
INSERT INTO `question_answer` VALUES ('1441', '361', 'Repellendus id.', '0');
INSERT INTO `question_answer` VALUES ('1442', '361', 'Sed fugiat sed.', '1');
INSERT INTO `question_answer` VALUES ('1443', '361', 'Molestias minima illum.', '0');
INSERT INTO `question_answer` VALUES ('1444', '361', 'Error error enim.', '0');
INSERT INTO `question_answer` VALUES ('1445', '362', 'Ratione alias.', '0');
INSERT INTO `question_answer` VALUES ('1446', '362', 'Aut esse aperiam.', '0');
INSERT INTO `question_answer` VALUES ('1447', '362', 'Asperiores laboriosam.', '1');
INSERT INTO `question_answer` VALUES ('1448', '362', 'Eius autem culpa.', '0');
INSERT INTO `question_answer` VALUES ('1449', '363', 'Ut nisi.', '0');
INSERT INTO `question_answer` VALUES ('1450', '363', 'Veniam quaerat ea.', '1');
INSERT INTO `question_answer` VALUES ('1451', '363', 'Dolores cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('1452', '363', 'Mollitia ut ut.', '0');
INSERT INTO `question_answer` VALUES ('1453', '364', 'Nisi a.', '0');
INSERT INTO `question_answer` VALUES ('1454', '364', 'Nesciunt et.', '0');
INSERT INTO `question_answer` VALUES ('1455', '364', 'Reprehenderit quia earum.', '1');
INSERT INTO `question_answer` VALUES ('1456', '364', 'Voluptas assumenda.', '0');
INSERT INTO `question_answer` VALUES ('1457', '365', 'Sint eligendi aut.', '0');
INSERT INTO `question_answer` VALUES ('1458', '365', 'Impedit quod inventore.', '0');
INSERT INTO `question_answer` VALUES ('1459', '365', 'Quaerat at quasi.', '0');
INSERT INTO `question_answer` VALUES ('1460', '365', 'Excepturi sapiente quia.', '1');
INSERT INTO `question_answer` VALUES ('1461', '366', 'Labore non natus.', '1');
INSERT INTO `question_answer` VALUES ('1462', '366', 'Perspiciatis ut iusto.', '0');
INSERT INTO `question_answer` VALUES ('1463', '366', 'Nihil ut ea.', '0');
INSERT INTO `question_answer` VALUES ('1464', '366', 'Non eaque.', '0');
INSERT INTO `question_answer` VALUES ('1465', '367', 'Consequatur est.', '0');
INSERT INTO `question_answer` VALUES ('1466', '367', 'Eveniet placeat sit.', '0');
INSERT INTO `question_answer` VALUES ('1467', '367', 'Sed velit sit.', '1');
INSERT INTO `question_answer` VALUES ('1468', '367', 'Qui vel odit.', '0');
INSERT INTO `question_answer` VALUES ('1469', '368', 'Quae quis.', '0');
INSERT INTO `question_answer` VALUES ('1470', '368', 'Quam tenetur ut.', '1');
INSERT INTO `question_answer` VALUES ('1471', '368', 'Delectus voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1472', '368', 'Perspiciatis accusamus.', '0');
INSERT INTO `question_answer` VALUES ('1473', '369', 'Qui eum impedit.', '1');
INSERT INTO `question_answer` VALUES ('1474', '369', 'Possimus quod.', '0');
INSERT INTO `question_answer` VALUES ('1475', '369', 'Atque voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('1476', '369', 'Tempora velit voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1477', '370', 'Illum natus est.', '1');
INSERT INTO `question_answer` VALUES ('1478', '370', 'Repellat est.', '0');
INSERT INTO `question_answer` VALUES ('1479', '370', 'Ut minima aut.', '0');
INSERT INTO `question_answer` VALUES ('1480', '370', 'Sint autem et.', '0');
INSERT INTO `question_answer` VALUES ('1481', '371', 'Consequatur ratione.', '1');
INSERT INTO `question_answer` VALUES ('1482', '371', 'Officia similique rerum.', '0');
INSERT INTO `question_answer` VALUES ('1483', '371', 'Enim dolor.', '0');
INSERT INTO `question_answer` VALUES ('1484', '371', 'Magnam blanditiis quos.', '0');
INSERT INTO `question_answer` VALUES ('1485', '372', 'Odit voluptas maxime.', '0');
INSERT INTO `question_answer` VALUES ('1486', '372', 'Reiciendis repellendus.', '0');
INSERT INTO `question_answer` VALUES ('1487', '372', 'Eveniet expedita.', '1');
INSERT INTO `question_answer` VALUES ('1488', '372', 'Provident ut architecto.', '0');
INSERT INTO `question_answer` VALUES ('1489', '373', 'Et sequi.', '1');
INSERT INTO `question_answer` VALUES ('1490', '373', 'Totam voluptate aut.', '0');
INSERT INTO `question_answer` VALUES ('1491', '373', 'Molestias dicta.', '0');
INSERT INTO `question_answer` VALUES ('1492', '373', 'Nulla et.', '0');
INSERT INTO `question_answer` VALUES ('1493', '374', 'Corrupti voluptatum quia.', '1');
INSERT INTO `question_answer` VALUES ('1494', '374', 'Numquam voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1495', '374', 'Sit cum molestiae.', '0');
INSERT INTO `question_answer` VALUES ('1496', '374', 'Magnam nisi.', '0');
INSERT INTO `question_answer` VALUES ('1497', '375', 'Modi et.', '0');
INSERT INTO `question_answer` VALUES ('1498', '375', 'Quidem fuga.', '1');
INSERT INTO `question_answer` VALUES ('1499', '375', 'Eum vero eaque.', '0');
INSERT INTO `question_answer` VALUES ('1500', '375', 'Ab quidem voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1501', '376', 'Reprehenderit distinctio facere.', '1');
INSERT INTO `question_answer` VALUES ('1502', '376', 'Magnam saepe velit.', '0');
INSERT INTO `question_answer` VALUES ('1503', '376', 'Ipsum delectus.', '0');
INSERT INTO `question_answer` VALUES ('1504', '376', 'Eum cumque nihil.', '0');
INSERT INTO `question_answer` VALUES ('1505', '377', 'Natus perspiciatis ut.', '1');
INSERT INTO `question_answer` VALUES ('1506', '377', 'Dolore dolores.', '0');
INSERT INTO `question_answer` VALUES ('1507', '377', 'Saepe qui.', '0');
INSERT INTO `question_answer` VALUES ('1508', '377', 'Accusantium distinctio saepe.', '0');
INSERT INTO `question_answer` VALUES ('1509', '378', 'Quibusdam debitis molestias.', '0');
INSERT INTO `question_answer` VALUES ('1510', '378', 'Maiores nesciunt.', '0');
INSERT INTO `question_answer` VALUES ('1511', '378', 'Officiis temporibus.', '1');
INSERT INTO `question_answer` VALUES ('1512', '378', 'Quidem laboriosam.', '0');
INSERT INTO `question_answer` VALUES ('1513', '379', 'Incidunt nam quis.', '0');
INSERT INTO `question_answer` VALUES ('1514', '379', 'Commodi fugiat.', '0');
INSERT INTO `question_answer` VALUES ('1515', '379', 'Omnis cumque velit.', '1');
INSERT INTO `question_answer` VALUES ('1516', '379', 'Cupiditate officiis quod.', '0');
INSERT INTO `question_answer` VALUES ('1517', '380', 'Dolorum debitis.', '0');
INSERT INTO `question_answer` VALUES ('1518', '380', 'Harum error neque.', '0');
INSERT INTO `question_answer` VALUES ('1519', '380', 'Explicabo labore.', '0');
INSERT INTO `question_answer` VALUES ('1520', '380', 'Sed dolor excepturi.', '1');
INSERT INTO `question_answer` VALUES ('1521', '381', 'Iure cupiditate ea.', '0');
INSERT INTO `question_answer` VALUES ('1522', '381', 'Qui nostrum animi.', '0');
INSERT INTO `question_answer` VALUES ('1523', '381', 'Non quibusdam.', '1');
INSERT INTO `question_answer` VALUES ('1524', '381', 'Unde nobis.', '0');
INSERT INTO `question_answer` VALUES ('1525', '382', 'Incidunt omnis laudantium.', '0');
INSERT INTO `question_answer` VALUES ('1526', '382', 'Esse assumenda sint.', '0');
INSERT INTO `question_answer` VALUES ('1527', '382', 'In vitae aut.', '0');
INSERT INTO `question_answer` VALUES ('1528', '382', 'Aut molestias.', '1');
INSERT INTO `question_answer` VALUES ('1529', '383', 'Consequatur sunt pariatur.', '0');
INSERT INTO `question_answer` VALUES ('1530', '383', 'Omnis eos sed.', '0');
INSERT INTO `question_answer` VALUES ('1531', '383', 'Vero et est.', '1');
INSERT INTO `question_answer` VALUES ('1532', '383', 'Fuga modi.', '0');
INSERT INTO `question_answer` VALUES ('1533', '384', 'Sunt qui.', '0');
INSERT INTO `question_answer` VALUES ('1534', '384', 'Labore provident ad.', '0');
INSERT INTO `question_answer` VALUES ('1535', '384', 'Ut veniam quod.', '0');
INSERT INTO `question_answer` VALUES ('1536', '384', 'Omnis molestias.', '1');
INSERT INTO `question_answer` VALUES ('1537', '385', 'Laborum autem.', '0');
INSERT INTO `question_answer` VALUES ('1538', '385', 'Sint error sint.', '1');
INSERT INTO `question_answer` VALUES ('1539', '385', 'Similique officiis neque.', '0');
INSERT INTO `question_answer` VALUES ('1540', '385', 'Sed illum.', '0');
INSERT INTO `question_answer` VALUES ('1541', '386', 'Et cumque quia.', '0');
INSERT INTO `question_answer` VALUES ('1542', '386', 'Deleniti dolor.', '1');
INSERT INTO `question_answer` VALUES ('1543', '386', 'Accusantium deserunt nihil.', '0');
INSERT INTO `question_answer` VALUES ('1544', '386', 'Dolor quo est.', '0');
INSERT INTO `question_answer` VALUES ('1545', '387', 'Nobis doloribus inventore.', '0');
INSERT INTO `question_answer` VALUES ('1546', '387', 'Nesciunt vel asperiores.', '0');
INSERT INTO `question_answer` VALUES ('1547', '387', 'Aut error.', '1');
INSERT INTO `question_answer` VALUES ('1548', '387', 'Voluptatum modi ut.', '0');
INSERT INTO `question_answer` VALUES ('1549', '388', 'Magni voluptatibus et.', '0');
INSERT INTO `question_answer` VALUES ('1550', '388', 'Sint et dolores.', '1');
INSERT INTO `question_answer` VALUES ('1551', '388', 'Reprehenderit et voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('1552', '388', 'Nihil ipsum distinctio.', '0');
INSERT INTO `question_answer` VALUES ('1553', '389', 'Possimus ullam.', '0');
INSERT INTO `question_answer` VALUES ('1554', '389', 'Praesentium exercitationem dolores.', '1');
INSERT INTO `question_answer` VALUES ('1555', '389', 'Ut fugiat voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1556', '389', 'Exercitationem dolorem.', '0');
INSERT INTO `question_answer` VALUES ('1557', '390', 'Porro in.', '0');
INSERT INTO `question_answer` VALUES ('1558', '390', 'Voluptatum distinctio fugit.', '1');
INSERT INTO `question_answer` VALUES ('1559', '390', 'Aut unde.', '0');
INSERT INTO `question_answer` VALUES ('1560', '390', 'Aliquam aliquid.', '0');
INSERT INTO `question_answer` VALUES ('1561', '391', 'Iste temporibus.', '1');
INSERT INTO `question_answer` VALUES ('1562', '391', 'Qui autem qui.', '0');
INSERT INTO `question_answer` VALUES ('1563', '391', 'Numquam consectetur.', '0');
INSERT INTO `question_answer` VALUES ('1564', '391', 'Fuga repellat aut.', '0');
INSERT INTO `question_answer` VALUES ('1565', '392', 'Tenetur sint.', '0');
INSERT INTO `question_answer` VALUES ('1566', '392', 'Animi recusandae labore.', '0');
INSERT INTO `question_answer` VALUES ('1567', '392', 'Totam aliquam.', '0');
INSERT INTO `question_answer` VALUES ('1568', '392', 'Fugiat sit ab.', '1');
INSERT INTO `question_answer` VALUES ('1569', '393', 'Dolor autem ut.', '0');
INSERT INTO `question_answer` VALUES ('1570', '393', 'Sed quas.', '1');
INSERT INTO `question_answer` VALUES ('1571', '393', 'Quo doloribus accusamus.', '0');
INSERT INTO `question_answer` VALUES ('1572', '393', 'Sequi qui.', '0');
INSERT INTO `question_answer` VALUES ('1573', '394', 'Est debitis.', '0');
INSERT INTO `question_answer` VALUES ('1574', '394', 'Ea veritatis.', '1');
INSERT INTO `question_answer` VALUES ('1575', '394', 'Ipsam dolorum.', '0');
INSERT INTO `question_answer` VALUES ('1576', '394', 'Sunt facere veritatis.', '0');
INSERT INTO `question_answer` VALUES ('1577', '395', 'Natus sit.', '1');
INSERT INTO `question_answer` VALUES ('1578', '395', 'Et ipsum.', '0');
INSERT INTO `question_answer` VALUES ('1579', '395', 'Unde veniam ut.', '0');
INSERT INTO `question_answer` VALUES ('1580', '395', 'Enim voluptates dicta.', '0');
INSERT INTO `question_answer` VALUES ('1581', '396', 'Voluptatem culpa.', '0');
INSERT INTO `question_answer` VALUES ('1582', '396', 'Rerum in.', '0');
INSERT INTO `question_answer` VALUES ('1583', '396', 'Saepe dolorem.', '0');
INSERT INTO `question_answer` VALUES ('1584', '396', 'Temporibus laudantium quia.', '1');
INSERT INTO `question_answer` VALUES ('1585', '397', 'Sed accusamus.', '0');
INSERT INTO `question_answer` VALUES ('1586', '397', 'Et natus mollitia.', '0');
INSERT INTO `question_answer` VALUES ('1587', '397', 'Culpa ullam dolores.', '0');
INSERT INTO `question_answer` VALUES ('1588', '397', 'Tenetur molestiae.', '1');
INSERT INTO `question_answer` VALUES ('1589', '398', 'Et quidem reprehenderit.', '0');
INSERT INTO `question_answer` VALUES ('1590', '398', 'Quia laudantium.', '1');
INSERT INTO `question_answer` VALUES ('1591', '398', 'Nam aut qui.', '0');
INSERT INTO `question_answer` VALUES ('1592', '398', 'Commodi repellat non.', '0');
INSERT INTO `question_answer` VALUES ('1593', '399', 'Qui nobis earum.', '0');
INSERT INTO `question_answer` VALUES ('1594', '399', 'Voluptatum ab maxime.', '0');
INSERT INTO `question_answer` VALUES ('1595', '399', 'Nihil aliquam.', '0');
INSERT INTO `question_answer` VALUES ('1596', '399', 'Sunt et.', '1');
INSERT INTO `question_answer` VALUES ('1597', '400', 'Corrupti a sequi.', '1');
INSERT INTO `question_answer` VALUES ('1598', '400', 'Inventore quis.', '0');
INSERT INTO `question_answer` VALUES ('1599', '400', 'Quia quod.', '0');
INSERT INTO `question_answer` VALUES ('1600', '400', 'Ipsa totam fugiat.', '0');
INSERT INTO `question_answer` VALUES ('1601', '401', 'Sapiente ex veritatis.', '0');
INSERT INTO `question_answer` VALUES ('1602', '401', 'Temporibus alias.', '0');
INSERT INTO `question_answer` VALUES ('1603', '401', 'Omnis quos enim.', '0');
INSERT INTO `question_answer` VALUES ('1604', '401', 'Et voluptas animi.', '1');
INSERT INTO `question_answer` VALUES ('1605', '402', 'Necessitatibus qui.', '0');
INSERT INTO `question_answer` VALUES ('1606', '402', 'Et earum deserunt.', '0');
INSERT INTO `question_answer` VALUES ('1607', '402', 'Dignissimos voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('1608', '402', 'Doloribus tempora.', '0');
INSERT INTO `question_answer` VALUES ('1609', '403', 'Voluptatum exercitationem est.', '1');
INSERT INTO `question_answer` VALUES ('1610', '403', 'Dolorum quia autem.', '0');
INSERT INTO `question_answer` VALUES ('1611', '403', 'Vel quis.', '0');
INSERT INTO `question_answer` VALUES ('1612', '403', 'Quia deserunt.', '0');
INSERT INTO `question_answer` VALUES ('1613', '404', 'Iusto consequatur autem.', '0');
INSERT INTO `question_answer` VALUES ('1614', '404', 'Rerum aperiam voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1615', '404', 'Mollitia modi.', '1');
INSERT INTO `question_answer` VALUES ('1616', '404', 'Molestias porro amet.', '0');
INSERT INTO `question_answer` VALUES ('1617', '405', 'Nulla et itaque.', '1');
INSERT INTO `question_answer` VALUES ('1618', '405', 'Tempore beatae hic.', '0');
INSERT INTO `question_answer` VALUES ('1619', '405', 'Aut quibusdam.', '0');
INSERT INTO `question_answer` VALUES ('1620', '405', 'Similique libero repellendus.', '0');
INSERT INTO `question_answer` VALUES ('1621', '406', 'Aut suscipit esse.', '1');
INSERT INTO `question_answer` VALUES ('1622', '406', 'Nostrum est.', '0');
INSERT INTO `question_answer` VALUES ('1623', '406', 'Dignissimos quia.', '0');
INSERT INTO `question_answer` VALUES ('1624', '406', 'Dignissimos velit.', '0');
INSERT INTO `question_answer` VALUES ('1625', '407', 'Qui necessitatibus.', '1');
INSERT INTO `question_answer` VALUES ('1626', '407', 'Accusantium itaque.', '0');
INSERT INTO `question_answer` VALUES ('1627', '407', 'Nulla doloremque commodi.', '0');
INSERT INTO `question_answer` VALUES ('1628', '407', 'Ab tempore.', '0');
INSERT INTO `question_answer` VALUES ('1629', '408', 'Laborum eos et.', '0');
INSERT INTO `question_answer` VALUES ('1630', '408', 'Vero et.', '1');
INSERT INTO `question_answer` VALUES ('1631', '408', 'Omnis labore natus.', '0');
INSERT INTO `question_answer` VALUES ('1632', '408', 'Aut pariatur.', '0');
INSERT INTO `question_answer` VALUES ('1633', '409', 'Aut id atque.', '1');
INSERT INTO `question_answer` VALUES ('1634', '409', 'Ut illo eos.', '0');
INSERT INTO `question_answer` VALUES ('1635', '409', 'Possimus qui.', '0');
INSERT INTO `question_answer` VALUES ('1636', '409', 'Fuga quo ipsa.', '0');
INSERT INTO `question_answer` VALUES ('1637', '410', 'Animi itaque voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('1638', '410', 'Perferendis qui tenetur.', '0');
INSERT INTO `question_answer` VALUES ('1639', '410', 'At quas adipisci.', '1');
INSERT INTO `question_answer` VALUES ('1640', '410', 'Beatae deleniti sapiente.', '0');
INSERT INTO `question_answer` VALUES ('1641', '411', 'Qui impedit.', '0');
INSERT INTO `question_answer` VALUES ('1642', '411', 'Reprehenderit ab.', '1');
INSERT INTO `question_answer` VALUES ('1643', '411', 'Neque quis molestiae.', '0');
INSERT INTO `question_answer` VALUES ('1644', '411', 'Soluta similique est.', '0');
INSERT INTO `question_answer` VALUES ('1645', '412', 'Rerum illum quod.', '0');
INSERT INTO `question_answer` VALUES ('1646', '412', 'Necessitatibus cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('1647', '412', 'Ea corrupti.', '0');
INSERT INTO `question_answer` VALUES ('1648', '412', 'Distinctio repudiandae.', '1');
INSERT INTO `question_answer` VALUES ('1649', '413', 'Nam vero saepe.', '0');
INSERT INTO `question_answer` VALUES ('1650', '413', 'Magni aut.', '1');
INSERT INTO `question_answer` VALUES ('1651', '413', 'Mollitia et quas.', '0');
INSERT INTO `question_answer` VALUES ('1652', '413', 'Totam necessitatibus iusto.', '0');
INSERT INTO `question_answer` VALUES ('1653', '414', 'Voluptatem blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('1654', '414', 'Possimus aliquam.', '0');
INSERT INTO `question_answer` VALUES ('1655', '414', 'Fugit ipsa.', '1');
INSERT INTO `question_answer` VALUES ('1656', '414', 'Earum voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('1657', '415', 'Quo eos quas.', '1');
INSERT INTO `question_answer` VALUES ('1658', '415', 'Molestiae sunt et.', '0');
INSERT INTO `question_answer` VALUES ('1659', '415', 'Fugiat minus.', '0');
INSERT INTO `question_answer` VALUES ('1660', '415', 'Ab maxime quisquam.', '0');
INSERT INTO `question_answer` VALUES ('1661', '416', 'Est earum vero.', '0');
INSERT INTO `question_answer` VALUES ('1662', '416', 'Pariatur consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1663', '416', 'Animi ut dolores.', '0');
INSERT INTO `question_answer` VALUES ('1664', '416', 'Cumque quia.', '1');
INSERT INTO `question_answer` VALUES ('1665', '417', 'Maxime libero consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1666', '417', 'Dolores laboriosam.', '1');
INSERT INTO `question_answer` VALUES ('1667', '417', 'Cum omnis maxime.', '0');
INSERT INTO `question_answer` VALUES ('1668', '417', 'Eaque earum quis.', '0');
INSERT INTO `question_answer` VALUES ('1669', '418', 'Veniam minus animi.', '1');
INSERT INTO `question_answer` VALUES ('1670', '418', 'Et vel ut.', '0');
INSERT INTO `question_answer` VALUES ('1671', '418', 'Id illum.', '0');
INSERT INTO `question_answer` VALUES ('1672', '418', 'Est laboriosam.', '0');
INSERT INTO `question_answer` VALUES ('1673', '419', 'Quo ut.', '0');
INSERT INTO `question_answer` VALUES ('1674', '419', 'Dolorem consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1675', '419', 'Rerum dolor eligendi.', '0');
INSERT INTO `question_answer` VALUES ('1676', '419', 'Rem et.', '1');
INSERT INTO `question_answer` VALUES ('1677', '420', 'Dolores vitae odio.', '0');
INSERT INTO `question_answer` VALUES ('1678', '420', 'Quasi ea.', '0');
INSERT INTO `question_answer` VALUES ('1679', '420', 'Atque cupiditate.', '1');
INSERT INTO `question_answer` VALUES ('1680', '420', 'Suscipit incidunt.', '0');
INSERT INTO `question_answer` VALUES ('1681', '421', 'Temporibus qui eum.', '1');
INSERT INTO `question_answer` VALUES ('1682', '421', 'Dignissimos eum.', '0');
INSERT INTO `question_answer` VALUES ('1683', '421', 'Tempora repellat repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('1684', '421', 'Enim quos quae.', '0');
INSERT INTO `question_answer` VALUES ('1685', '422', 'Dolorem deleniti repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('1686', '422', 'Ipsam eius.', '0');
INSERT INTO `question_answer` VALUES ('1687', '422', 'Est sed.', '1');
INSERT INTO `question_answer` VALUES ('1688', '422', 'Deleniti vel.', '0');
INSERT INTO `question_answer` VALUES ('1689', '423', 'In quia.', '0');
INSERT INTO `question_answer` VALUES ('1690', '423', 'Asperiores quia.', '0');
INSERT INTO `question_answer` VALUES ('1691', '423', 'Reiciendis ut cumque.', '0');
INSERT INTO `question_answer` VALUES ('1692', '423', 'Esse sint beatae.', '1');
INSERT INTO `question_answer` VALUES ('1693', '424', 'At sed.', '0');
INSERT INTO `question_answer` VALUES ('1694', '424', 'Laudantium autem sunt.', '0');
INSERT INTO `question_answer` VALUES ('1695', '424', 'Officiis eum praesentium.', '1');
INSERT INTO `question_answer` VALUES ('1696', '424', 'Veritatis dolor.', '0');
INSERT INTO `question_answer` VALUES ('1697', '425', 'Aut maxime dolor.', '0');
INSERT INTO `question_answer` VALUES ('1698', '425', 'Voluptas quidem.', '1');
INSERT INTO `question_answer` VALUES ('1699', '425', 'Vitae consequuntur nobis.', '0');
INSERT INTO `question_answer` VALUES ('1700', '425', 'Nostrum sunt nihil.', '0');
INSERT INTO `question_answer` VALUES ('1701', '426', 'Est quasi veritatis.', '0');
INSERT INTO `question_answer` VALUES ('1702', '426', 'Doloremque fugit voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1703', '426', 'Commodi porro fugit.', '1');
INSERT INTO `question_answer` VALUES ('1704', '426', 'Eum quis qui.', '0');
INSERT INTO `question_answer` VALUES ('1705', '427', 'Eveniet qui.', '0');
INSERT INTO `question_answer` VALUES ('1706', '427', 'Ut est incidunt.', '1');
INSERT INTO `question_answer` VALUES ('1707', '427', 'Quos fugiat veniam.', '0');
INSERT INTO `question_answer` VALUES ('1708', '427', 'Maiores qui dolorem.', '0');
INSERT INTO `question_answer` VALUES ('1709', '428', 'Ut totam maiores.', '0');
INSERT INTO `question_answer` VALUES ('1710', '428', 'Porro officiis explicabo.', '0');
INSERT INTO `question_answer` VALUES ('1711', '428', 'Neque similique.', '0');
INSERT INTO `question_answer` VALUES ('1712', '428', 'Voluptatem neque quidem.', '1');
INSERT INTO `question_answer` VALUES ('1713', '429', 'Nostrum sint a.', '0');
INSERT INTO `question_answer` VALUES ('1714', '429', 'Sint ea quis.', '0');
INSERT INTO `question_answer` VALUES ('1715', '429', 'Laboriosam molestias.', '0');
INSERT INTO `question_answer` VALUES ('1716', '429', 'Repellendus consequatur hic.', '1');
INSERT INTO `question_answer` VALUES ('1717', '430', 'Voluptas non beatae.', '0');
INSERT INTO `question_answer` VALUES ('1718', '430', 'Sed tempora est.', '0');
INSERT INTO `question_answer` VALUES ('1719', '430', 'Aut aut.', '1');
INSERT INTO `question_answer` VALUES ('1720', '430', 'Provident dolores dicta.', '0');
INSERT INTO `question_answer` VALUES ('1721', '431', 'Modi aliquid inventore.', '0');
INSERT INTO `question_answer` VALUES ('1722', '431', 'Libero consequuntur recusandae.', '0');
INSERT INTO `question_answer` VALUES ('1723', '431', 'Aut et vitae.', '0');
INSERT INTO `question_answer` VALUES ('1724', '431', 'Itaque itaque.', '1');
INSERT INTO `question_answer` VALUES ('1725', '432', 'Dolores est.', '0');
INSERT INTO `question_answer` VALUES ('1726', '432', 'Minus amet corporis.', '1');
INSERT INTO `question_answer` VALUES ('1727', '432', 'Consectetur quis distinctio.', '0');
INSERT INTO `question_answer` VALUES ('1728', '432', 'Eos quo deleniti.', '0');
INSERT INTO `question_answer` VALUES ('1729', '433', 'Ducimus ullam repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('1730', '433', 'Perspiciatis et.', '1');
INSERT INTO `question_answer` VALUES ('1731', '433', 'Voluptas non.', '0');
INSERT INTO `question_answer` VALUES ('1732', '433', 'Rerum dolor nihil.', '0');
INSERT INTO `question_answer` VALUES ('1733', '434', 'Incidunt dolorem.', '0');
INSERT INTO `question_answer` VALUES ('1734', '434', 'Exercitationem nihil nobis.', '0');
INSERT INTO `question_answer` VALUES ('1735', '434', 'Qui atque.', '1');
INSERT INTO `question_answer` VALUES ('1736', '434', 'Minima incidunt.', '0');
INSERT INTO `question_answer` VALUES ('1737', '435', 'Et dolor fugiat.', '0');
INSERT INTO `question_answer` VALUES ('1738', '435', 'Libero dolores dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('1739', '435', 'Dolores eligendi.', '1');
INSERT INTO `question_answer` VALUES ('1740', '435', 'Quod distinctio.', '0');
INSERT INTO `question_answer` VALUES ('1741', '436', 'Et et.', '0');
INSERT INTO `question_answer` VALUES ('1742', '436', 'Qui natus.', '0');
INSERT INTO `question_answer` VALUES ('1743', '436', 'Natus delectus nostrum.', '0');
INSERT INTO `question_answer` VALUES ('1744', '436', 'Quos non officiis.', '1');
INSERT INTO `question_answer` VALUES ('1745', '437', 'Mollitia aspernatur aliquid.', '0');
INSERT INTO `question_answer` VALUES ('1746', '437', 'Ut quia eaque.', '1');
INSERT INTO `question_answer` VALUES ('1747', '437', 'Excepturi et autem.', '0');
INSERT INTO `question_answer` VALUES ('1748', '437', 'Debitis a vitae.', '0');
INSERT INTO `question_answer` VALUES ('1749', '438', 'Beatae est.', '0');
INSERT INTO `question_answer` VALUES ('1750', '438', 'Ducimus maiores quibusdam.', '0');
INSERT INTO `question_answer` VALUES ('1751', '438', 'Odio accusantium quaerat.', '0');
INSERT INTO `question_answer` VALUES ('1752', '438', 'Et sit.', '1');
INSERT INTO `question_answer` VALUES ('1753', '439', 'Dolore fuga.', '1');
INSERT INTO `question_answer` VALUES ('1754', '439', 'Est voluptas natus.', '0');
INSERT INTO `question_answer` VALUES ('1755', '439', 'Quaerat commodi.', '0');
INSERT INTO `question_answer` VALUES ('1756', '439', 'Exercitationem recusandae.', '0');
INSERT INTO `question_answer` VALUES ('1757', '440', 'Enim quos voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1758', '440', 'Numquam atque.', '0');
INSERT INTO `question_answer` VALUES ('1759', '440', 'Assumenda quod nemo.', '0');
INSERT INTO `question_answer` VALUES ('1760', '440', 'Sapiente est eaque.', '1');
INSERT INTO `question_answer` VALUES ('1761', '441', 'Sapiente dolor.', '0');
INSERT INTO `question_answer` VALUES ('1762', '441', 'Dolorem dolor.', '0');
INSERT INTO `question_answer` VALUES ('1763', '441', 'Possimus error corrupti.', '1');
INSERT INTO `question_answer` VALUES ('1764', '441', 'Et ut ex.', '0');
INSERT INTO `question_answer` VALUES ('1765', '442', 'Nulla suscipit.', '1');
INSERT INTO `question_answer` VALUES ('1766', '442', 'Necessitatibus neque.', '0');
INSERT INTO `question_answer` VALUES ('1767', '442', 'Optio excepturi eum.', '0');
INSERT INTO `question_answer` VALUES ('1768', '442', 'Quis doloremque quis.', '0');
INSERT INTO `question_answer` VALUES ('1769', '443', 'In omnis.', '1');
INSERT INTO `question_answer` VALUES ('1770', '443', 'Dicta eveniet cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('1771', '443', 'Aut et dolorem.', '0');
INSERT INTO `question_answer` VALUES ('1772', '443', 'Dolores libero id.', '0');
INSERT INTO `question_answer` VALUES ('1773', '444', 'Omnis nemo.', '1');
INSERT INTO `question_answer` VALUES ('1774', '444', 'Inventore in.', '0');
INSERT INTO `question_answer` VALUES ('1775', '444', 'Non reiciendis velit.', '0');
INSERT INTO `question_answer` VALUES ('1776', '444', 'Et ullam deleniti.', '0');
INSERT INTO `question_answer` VALUES ('1777', '445', 'Distinctio ab accusantium.', '1');
INSERT INTO `question_answer` VALUES ('1778', '445', 'Minima in possimus.', '0');
INSERT INTO `question_answer` VALUES ('1779', '445', 'Dolores dolorem.', '0');
INSERT INTO `question_answer` VALUES ('1780', '445', 'Voluptatem molestiae inventore.', '0');
INSERT INTO `question_answer` VALUES ('1781', '446', 'Necessitatibus aut at.', '0');
INSERT INTO `question_answer` VALUES ('1782', '446', 'Sequi totam.', '1');
INSERT INTO `question_answer` VALUES ('1783', '446', 'Blanditiis quam.', '0');
INSERT INTO `question_answer` VALUES ('1784', '446', 'Impedit et.', '0');
INSERT INTO `question_answer` VALUES ('1785', '447', 'Vitae ut.', '0');
INSERT INTO `question_answer` VALUES ('1786', '447', 'Facere qui.', '0');
INSERT INTO `question_answer` VALUES ('1787', '447', 'Sint quas.', '0');
INSERT INTO `question_answer` VALUES ('1788', '447', 'Aut velit.', '1');
INSERT INTO `question_answer` VALUES ('1789', '448', 'Odio assumenda sed.', '0');
INSERT INTO `question_answer` VALUES ('1790', '448', 'Cumque rem aut.', '1');
INSERT INTO `question_answer` VALUES ('1791', '448', 'Veniam doloremque repellat.', '0');
INSERT INTO `question_answer` VALUES ('1792', '448', 'Aut aliquid a.', '0');
INSERT INTO `question_answer` VALUES ('1793', '449', 'Atque ut.', '0');
INSERT INTO `question_answer` VALUES ('1794', '449', 'Repellendus iusto harum.', '0');
INSERT INTO `question_answer` VALUES ('1795', '449', 'Itaque facere.', '0');
INSERT INTO `question_answer` VALUES ('1796', '449', 'Debitis ad ut.', '1');
INSERT INTO `question_answer` VALUES ('1797', '450', 'Molestiae repellat.', '1');
INSERT INTO `question_answer` VALUES ('1798', '450', 'Vel dolore sit.', '0');
INSERT INTO `question_answer` VALUES ('1799', '450', 'Aut odit temporibus.', '0');
INSERT INTO `question_answer` VALUES ('1800', '450', 'Excepturi odit ex.', '0');
INSERT INTO `question_answer` VALUES ('1801', '451', 'Ea minus.', '0');
INSERT INTO `question_answer` VALUES ('1802', '451', 'Tempora et.', '1');
INSERT INTO `question_answer` VALUES ('1803', '451', 'Et ut est.', '0');
INSERT INTO `question_answer` VALUES ('1804', '451', 'Consectetur fuga in.', '0');
INSERT INTO `question_answer` VALUES ('1805', '452', 'Totam veritatis ut.', '1');
INSERT INTO `question_answer` VALUES ('1806', '452', 'Asperiores aut placeat.', '0');
INSERT INTO `question_answer` VALUES ('1807', '452', 'Fugit animi.', '0');
INSERT INTO `question_answer` VALUES ('1808', '452', 'Quaerat rerum illo.', '0');
INSERT INTO `question_answer` VALUES ('1809', '453', 'Consectetur omnis.', '1');
INSERT INTO `question_answer` VALUES ('1810', '453', 'Magnam exercitationem.', '0');
INSERT INTO `question_answer` VALUES ('1811', '453', 'Voluptatem maxime ea.', '0');
INSERT INTO `question_answer` VALUES ('1812', '453', 'Sunt saepe aut.', '0');
INSERT INTO `question_answer` VALUES ('1813', '454', 'Quaerat pariatur.', '1');
INSERT INTO `question_answer` VALUES ('1814', '454', 'Consequatur veniam est.', '0');
INSERT INTO `question_answer` VALUES ('1815', '454', 'Exercitationem ratione.', '0');
INSERT INTO `question_answer` VALUES ('1816', '454', 'Ut quaerat error.', '0');
INSERT INTO `question_answer` VALUES ('1817', '455', 'Libero delectus.', '0');
INSERT INTO `question_answer` VALUES ('1818', '455', 'Omnis voluptas occaecati.', '0');
INSERT INTO `question_answer` VALUES ('1819', '455', 'Commodi id ex.', '1');
INSERT INTO `question_answer` VALUES ('1820', '455', 'Molestiae expedita.', '0');
INSERT INTO `question_answer` VALUES ('1821', '456', 'Illo sint.', '0');
INSERT INTO `question_answer` VALUES ('1822', '456', 'Molestiae repellat non.', '0');
INSERT INTO `question_answer` VALUES ('1823', '456', 'Consequatur enim sed.', '1');
INSERT INTO `question_answer` VALUES ('1824', '456', 'Quos accusantium error.', '0');
INSERT INTO `question_answer` VALUES ('1825', '457', 'Architecto pariatur id.', '0');
INSERT INTO `question_answer` VALUES ('1826', '457', 'Aut laboriosam doloremque.', '1');
INSERT INTO `question_answer` VALUES ('1827', '457', 'Expedita sequi deleniti.', '0');
INSERT INTO `question_answer` VALUES ('1828', '457', 'Repellendus dolorem laudantium.', '0');
INSERT INTO `question_answer` VALUES ('1829', '458', 'Omnis numquam et.', '1');
INSERT INTO `question_answer` VALUES ('1830', '458', 'Et at.', '0');
INSERT INTO `question_answer` VALUES ('1831', '458', 'Ut provident et.', '0');
INSERT INTO `question_answer` VALUES ('1832', '458', 'Voluptas dolores.', '0');
INSERT INTO `question_answer` VALUES ('1833', '459', 'Sed eum.', '0');
INSERT INTO `question_answer` VALUES ('1834', '459', 'Odit quisquam.', '0');
INSERT INTO `question_answer` VALUES ('1835', '459', 'Accusamus aliquam eos.', '1');
INSERT INTO `question_answer` VALUES ('1836', '459', 'Quasi perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('1837', '460', 'Porro laudantium et.', '1');
INSERT INTO `question_answer` VALUES ('1838', '460', 'Voluptatibus ex.', '0');
INSERT INTO `question_answer` VALUES ('1839', '460', 'Totam quaerat.', '0');
INSERT INTO `question_answer` VALUES ('1840', '460', 'Aspernatur aut.', '0');
INSERT INTO `question_answer` VALUES ('1841', '461', 'Sequi enim.', '0');
INSERT INTO `question_answer` VALUES ('1842', '461', 'Fuga cum.', '0');
INSERT INTO `question_answer` VALUES ('1843', '461', 'Modi perferendis.', '0');
INSERT INTO `question_answer` VALUES ('1844', '461', 'Aut qui.', '1');
INSERT INTO `question_answer` VALUES ('1845', '462', 'Ipsum et vero.', '0');
INSERT INTO `question_answer` VALUES ('1846', '462', 'Ut qui.', '0');
INSERT INTO `question_answer` VALUES ('1847', '462', 'Minima voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1848', '462', 'Rem nihil.', '1');
INSERT INTO `question_answer` VALUES ('1849', '463', 'Inventore velit minus.', '1');
INSERT INTO `question_answer` VALUES ('1850', '463', 'Et eos voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1851', '463', 'Asperiores eaque et.', '0');
INSERT INTO `question_answer` VALUES ('1852', '463', 'Autem voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1853', '464', 'Quaerat ea.', '0');
INSERT INTO `question_answer` VALUES ('1854', '464', 'Ipsa neque magnam.', '0');
INSERT INTO `question_answer` VALUES ('1855', '464', 'Voluptas a officiis.', '1');
INSERT INTO `question_answer` VALUES ('1856', '464', 'Vitae in labore.', '0');
INSERT INTO `question_answer` VALUES ('1857', '465', 'Quae alias.', '0');
INSERT INTO `question_answer` VALUES ('1858', '465', 'Sed dolores eum.', '0');
INSERT INTO `question_answer` VALUES ('1859', '465', 'Repellendus ipsa.', '1');
INSERT INTO `question_answer` VALUES ('1860', '465', 'Nemo veniam corrupti.', '0');
INSERT INTO `question_answer` VALUES ('1861', '466', 'Voluptatum tenetur ipsam.', '0');
INSERT INTO `question_answer` VALUES ('1862', '466', 'Quos quia.', '0');
INSERT INTO `question_answer` VALUES ('1863', '466', 'Illum ut consequuntur.', '1');
INSERT INTO `question_answer` VALUES ('1864', '466', 'Sint inventore et.', '0');
INSERT INTO `question_answer` VALUES ('1865', '467', 'Sit inventore.', '0');
INSERT INTO `question_answer` VALUES ('1866', '467', 'Libero sint delectus.', '0');
INSERT INTO `question_answer` VALUES ('1867', '467', 'Alias voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1868', '467', 'Velit omnis sit.', '1');
INSERT INTO `question_answer` VALUES ('1869', '468', 'In et laudantium.', '0');
INSERT INTO `question_answer` VALUES ('1870', '468', 'Molestiae rerum quis.', '1');
INSERT INTO `question_answer` VALUES ('1871', '468', 'Maiores quas vel.', '0');
INSERT INTO `question_answer` VALUES ('1872', '468', 'Et amet.', '0');
INSERT INTO `question_answer` VALUES ('1873', '469', 'Dolorum delectus.', '0');
INSERT INTO `question_answer` VALUES ('1874', '469', 'Officia facere in.', '1');
INSERT INTO `question_answer` VALUES ('1875', '469', 'Aperiam delectus.', '0');
INSERT INTO `question_answer` VALUES ('1876', '469', 'Dolor vitae voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1877', '470', 'Dignissimos ad.', '1');
INSERT INTO `question_answer` VALUES ('1878', '470', 'Sit in.', '0');
INSERT INTO `question_answer` VALUES ('1879', '470', 'Qui dicta.', '0');
INSERT INTO `question_answer` VALUES ('1880', '470', 'Amet similique.', '0');
INSERT INTO `question_answer` VALUES ('1881', '471', 'Ea rerum.', '0');
INSERT INTO `question_answer` VALUES ('1882', '471', 'Tempora voluptas consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1883', '471', 'Itaque sunt.', '1');
INSERT INTO `question_answer` VALUES ('1884', '471', 'Porro vero.', '0');
INSERT INTO `question_answer` VALUES ('1885', '472', 'Totam dolorem sit.', '0');
INSERT INTO `question_answer` VALUES ('1886', '472', 'Hic totam.', '0');
INSERT INTO `question_answer` VALUES ('1887', '472', 'Quisquam magni.', '0');
INSERT INTO `question_answer` VALUES ('1888', '472', 'Natus perferendis ab.', '1');
INSERT INTO `question_answer` VALUES ('1889', '473', 'Odio adipisci.', '0');
INSERT INTO `question_answer` VALUES ('1890', '473', 'Fugit fuga.', '0');
INSERT INTO `question_answer` VALUES ('1891', '473', 'Recusandae est ut.', '0');
INSERT INTO `question_answer` VALUES ('1892', '473', 'Rerum et quam.', '1');
INSERT INTO `question_answer` VALUES ('1893', '474', 'Omnis sit.', '1');
INSERT INTO `question_answer` VALUES ('1894', '474', 'Sit sunt corporis.', '0');
INSERT INTO `question_answer` VALUES ('1895', '474', 'Accusantium eius.', '0');
INSERT INTO `question_answer` VALUES ('1896', '474', 'Quo nemo soluta.', '0');
INSERT INTO `question_answer` VALUES ('1897', '475', 'Sed quis accusamus.', '1');
INSERT INTO `question_answer` VALUES ('1898', '475', 'Unde quis.', '0');
INSERT INTO `question_answer` VALUES ('1899', '475', 'Velit nihil.', '0');
INSERT INTO `question_answer` VALUES ('1900', '475', 'Non a.', '0');
INSERT INTO `question_answer` VALUES ('1901', '476', 'Id facere.', '1');
INSERT INTO `question_answer` VALUES ('1902', '476', 'Tenetur sed sit.', '0');
INSERT INTO `question_answer` VALUES ('1903', '476', 'Cum excepturi.', '0');
INSERT INTO `question_answer` VALUES ('1904', '476', 'Delectus et.', '0');
INSERT INTO `question_answer` VALUES ('1905', '477', 'Ipsum dicta itaque.', '0');
INSERT INTO `question_answer` VALUES ('1906', '477', 'Laudantium sequi.', '0');
INSERT INTO `question_answer` VALUES ('1907', '477', 'Eaque at.', '0');
INSERT INTO `question_answer` VALUES ('1908', '477', 'Minus odit et.', '1');
INSERT INTO `question_answer` VALUES ('1909', '478', 'Enim ratione et.', '1');
INSERT INTO `question_answer` VALUES ('1910', '478', 'Animi explicabo.', '0');
INSERT INTO `question_answer` VALUES ('1911', '478', 'Quia labore voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1912', '478', 'Harum a ab.', '0');
INSERT INTO `question_answer` VALUES ('1913', '479', 'Quaerat ipsum ea.', '0');
INSERT INTO `question_answer` VALUES ('1914', '479', 'Minus quidem.', '0');
INSERT INTO `question_answer` VALUES ('1915', '479', 'Velit praesentium.', '0');
INSERT INTO `question_answer` VALUES ('1916', '479', 'Molestiae cupiditate et.', '1');
INSERT INTO `question_answer` VALUES ('1917', '480', 'Omnis blanditiis voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1918', '480', 'Sed corrupti.', '0');
INSERT INTO `question_answer` VALUES ('1919', '480', 'Quia eos.', '1');
INSERT INTO `question_answer` VALUES ('1920', '480', 'Non consectetur laborum.', '0');
INSERT INTO `question_answer` VALUES ('1921', '481', 'Illo provident.', '0');
INSERT INTO `question_answer` VALUES ('1922', '481', 'Dolore veniam.', '0');
INSERT INTO `question_answer` VALUES ('1923', '481', 'Incidunt cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('1924', '481', 'Aut quia impedit.', '1');
INSERT INTO `question_answer` VALUES ('1925', '482', 'Deserunt consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1926', '482', 'At id.', '0');
INSERT INTO `question_answer` VALUES ('1927', '482', 'Debitis nemo.', '1');
INSERT INTO `question_answer` VALUES ('1928', '482', 'Voluptatem minus voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('1929', '483', 'Quasi reiciendis.', '0');
INSERT INTO `question_answer` VALUES ('1930', '483', 'Et sit labore.', '0');
INSERT INTO `question_answer` VALUES ('1931', '483', 'Laudantium rerum pariatur.', '1');
INSERT INTO `question_answer` VALUES ('1932', '483', 'Id facere non.', '0');
INSERT INTO `question_answer` VALUES ('1933', '484', 'Quidem perspiciatis omnis.', '0');
INSERT INTO `question_answer` VALUES ('1934', '484', 'Quae non omnis.', '0');
INSERT INTO `question_answer` VALUES ('1935', '484', 'Neque laudantium tenetur.', '0');
INSERT INTO `question_answer` VALUES ('1936', '484', 'Aut occaecati.', '1');
INSERT INTO `question_answer` VALUES ('1937', '485', 'Nulla voluptatem hic.', '0');
INSERT INTO `question_answer` VALUES ('1938', '485', 'Possimus labore.', '0');
INSERT INTO `question_answer` VALUES ('1939', '485', 'Quia culpa commodi.', '1');
INSERT INTO `question_answer` VALUES ('1940', '485', 'Doloremque maiores.', '0');
INSERT INTO `question_answer` VALUES ('1941', '486', 'Harum alias dignissimos.', '1');
INSERT INTO `question_answer` VALUES ('1942', '486', 'In nemo est.', '0');
INSERT INTO `question_answer` VALUES ('1943', '486', 'Minima ex earum.', '0');
INSERT INTO `question_answer` VALUES ('1944', '486', 'Recusandae quibusdam accusantium.', '0');
INSERT INTO `question_answer` VALUES ('1945', '487', 'Modi eum est.', '0');
INSERT INTO `question_answer` VALUES ('1946', '487', 'Ex reiciendis.', '0');
INSERT INTO `question_answer` VALUES ('1947', '487', 'Consequatur quia earum.', '0');
INSERT INTO `question_answer` VALUES ('1948', '487', 'Repudiandae numquam ut.', '1');
INSERT INTO `question_answer` VALUES ('1949', '488', 'Commodi natus ut.', '0');
INSERT INTO `question_answer` VALUES ('1950', '488', 'Sint repudiandae quo.', '1');
INSERT INTO `question_answer` VALUES ('1951', '488', 'Non quibusdam temporibus.', '0');
INSERT INTO `question_answer` VALUES ('1952', '488', 'Doloremque minima et.', '0');
INSERT INTO `question_answer` VALUES ('1953', '489', 'Est iusto.', '0');
INSERT INTO `question_answer` VALUES ('1954', '489', 'Qui velit ut.', '1');
INSERT INTO `question_answer` VALUES ('1955', '489', 'Totam ducimus.', '0');
INSERT INTO `question_answer` VALUES ('1956', '489', 'Dolorem quo.', '0');
INSERT INTO `question_answer` VALUES ('1957', '490', 'Est facere.', '0');
INSERT INTO `question_answer` VALUES ('1958', '490', 'Vitae velit at.', '0');
INSERT INTO `question_answer` VALUES ('1959', '490', 'Quam voluptas omnis.', '0');
INSERT INTO `question_answer` VALUES ('1960', '490', 'Odio nesciunt.', '1');
INSERT INTO `question_answer` VALUES ('1961', '491', 'Labore rerum.', '0');
INSERT INTO `question_answer` VALUES ('1962', '491', 'Quia tempora.', '0');
INSERT INTO `question_answer` VALUES ('1963', '491', 'Sit pariatur.', '1');
INSERT INTO `question_answer` VALUES ('1964', '491', 'Voluptatum earum dolore.', '0');
INSERT INTO `question_answer` VALUES ('1965', '492', 'Et doloremque deserunt.', '1');
INSERT INTO `question_answer` VALUES ('1966', '492', 'Facere consectetur.', '0');
INSERT INTO `question_answer` VALUES ('1967', '492', 'Odio rerum non.', '0');
INSERT INTO `question_answer` VALUES ('1968', '492', 'Ducimus saepe voluptas.', '0');
INSERT INTO `question_answer` VALUES ('1969', '493', 'Ipsa quia quia.', '0');
INSERT INTO `question_answer` VALUES ('1970', '493', 'Autem amet vel.', '1');
INSERT INTO `question_answer` VALUES ('1971', '493', 'Ducimus ipsam.', '0');
INSERT INTO `question_answer` VALUES ('1972', '493', 'Ducimus ad ipsum.', '0');
INSERT INTO `question_answer` VALUES ('1973', '494', 'Commodi voluptates dolore.', '1');
INSERT INTO `question_answer` VALUES ('1974', '494', 'Est voluptatem rem.', '0');
INSERT INTO `question_answer` VALUES ('1975', '494', 'Voluptate vitae.', '0');
INSERT INTO `question_answer` VALUES ('1976', '494', 'Sunt excepturi consequatur.', '0');
INSERT INTO `question_answer` VALUES ('1977', '495', 'Sint doloremque excepturi.', '1');
INSERT INTO `question_answer` VALUES ('1978', '495', 'Veritatis molestiae modi.', '0');
INSERT INTO `question_answer` VALUES ('1979', '495', 'Vitae aut et.', '0');
INSERT INTO `question_answer` VALUES ('1980', '495', 'Fugiat aut consectetur.', '0');
INSERT INTO `question_answer` VALUES ('1981', '496', 'Hic enim.', '0');
INSERT INTO `question_answer` VALUES ('1982', '496', 'Iusto ullam enim.', '0');
INSERT INTO `question_answer` VALUES ('1983', '496', 'Et repudiandae.', '1');
INSERT INTO `question_answer` VALUES ('1984', '496', 'Rerum repellat id.', '0');
INSERT INTO `question_answer` VALUES ('1985', '497', 'Magnam dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('1986', '497', 'Quisquam eaque.', '0');
INSERT INTO `question_answer` VALUES ('1987', '497', 'Aut cupiditate facere.', '0');
INSERT INTO `question_answer` VALUES ('1988', '497', 'Sed omnis.', '1');
INSERT INTO `question_answer` VALUES ('1989', '498', 'Ut incidunt sunt.', '0');
INSERT INTO `question_answer` VALUES ('1990', '498', 'Eveniet quae.', '0');
INSERT INTO `question_answer` VALUES ('1991', '498', 'Qui sit.', '1');
INSERT INTO `question_answer` VALUES ('1992', '498', 'Et et dolorum.', '0');
INSERT INTO `question_answer` VALUES ('1993', '499', 'Sapiente suscipit.', '0');
INSERT INTO `question_answer` VALUES ('1994', '499', 'Numquam expedita.', '0');
INSERT INTO `question_answer` VALUES ('1995', '499', 'Fuga optio.', '0');
INSERT INTO `question_answer` VALUES ('1996', '499', 'Placeat sint omnis.', '1');
INSERT INTO `question_answer` VALUES ('1997', '500', 'Itaque non minus.', '1');
INSERT INTO `question_answer` VALUES ('1998', '500', 'Tenetur natus cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('1999', '500', 'Neque beatae aliquam.', '0');
INSERT INTO `question_answer` VALUES ('2000', '500', 'Architecto non.', '0');
INSERT INTO `question_answer` VALUES ('2001', '501', 'Exercitationem natus.', '0');
INSERT INTO `question_answer` VALUES ('2002', '501', 'Dolores dolores voluptatibus.', '0');
INSERT INTO `question_answer` VALUES ('2003', '501', 'Earum quia.', '1');
INSERT INTO `question_answer` VALUES ('2004', '501', 'Est placeat sed.', '0');
INSERT INTO `question_answer` VALUES ('2005', '502', 'Quis repellendus.', '0');
INSERT INTO `question_answer` VALUES ('2006', '502', 'Ipsum labore.', '0');
INSERT INTO `question_answer` VALUES ('2007', '502', 'Est quos.', '1');
INSERT INTO `question_answer` VALUES ('2008', '502', 'Aut est qui.', '0');
INSERT INTO `question_answer` VALUES ('2009', '503', 'Rem atque nihil.', '0');
INSERT INTO `question_answer` VALUES ('2010', '503', 'Ut laboriosam.', '0');
INSERT INTO `question_answer` VALUES ('2011', '503', 'Eligendi aut voluptatum.', '1');
INSERT INTO `question_answer` VALUES ('2012', '503', 'Voluptate non itaque.', '0');
INSERT INTO `question_answer` VALUES ('2013', '504', 'Sapiente et.', '0');
INSERT INTO `question_answer` VALUES ('2014', '504', 'Distinctio nostrum hic.', '0');
INSERT INTO `question_answer` VALUES ('2015', '504', 'Atque possimus.', '0');
INSERT INTO `question_answer` VALUES ('2016', '504', 'At et minus.', '1');
INSERT INTO `question_answer` VALUES ('2017', '505', 'Harum nisi quo.', '1');
INSERT INTO `question_answer` VALUES ('2018', '505', 'Iste ut.', '0');
INSERT INTO `question_answer` VALUES ('2019', '505', 'Et quos.', '0');
INSERT INTO `question_answer` VALUES ('2020', '505', 'Et culpa possimus.', '0');
INSERT INTO `question_answer` VALUES ('2021', '506', 'In perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('2022', '506', 'Tempore aut quia.', '0');
INSERT INTO `question_answer` VALUES ('2023', '506', 'Quia qui.', '1');
INSERT INTO `question_answer` VALUES ('2024', '506', 'Est sequi et.', '0');
INSERT INTO `question_answer` VALUES ('2025', '507', 'Nulla quo.', '0');
INSERT INTO `question_answer` VALUES ('2026', '507', 'Quae ut.', '0');
INSERT INTO `question_answer` VALUES ('2027', '507', 'Molestias recusandae eos.', '1');
INSERT INTO `question_answer` VALUES ('2028', '507', 'Quisquam consequatur culpa.', '0');
INSERT INTO `question_answer` VALUES ('2029', '508', 'Id quae enim.', '1');
INSERT INTO `question_answer` VALUES ('2030', '508', 'Itaque nemo est.', '0');
INSERT INTO `question_answer` VALUES ('2031', '508', 'Deserunt aut.', '0');
INSERT INTO `question_answer` VALUES ('2032', '508', 'Quidem aut aut.', '0');
INSERT INTO `question_answer` VALUES ('2033', '509', 'Nisi aperiam officia.', '1');
INSERT INTO `question_answer` VALUES ('2034', '509', 'Mollitia ea.', '0');
INSERT INTO `question_answer` VALUES ('2035', '509', 'In nihil sunt.', '0');
INSERT INTO `question_answer` VALUES ('2036', '509', 'Et saepe.', '0');
INSERT INTO `question_answer` VALUES ('2037', '510', 'Magni iusto consequatur.', '0');
INSERT INTO `question_answer` VALUES ('2038', '510', 'Non exercitationem provident.', '1');
INSERT INTO `question_answer` VALUES ('2039', '510', 'Natus sed.', '0');
INSERT INTO `question_answer` VALUES ('2040', '510', 'Culpa quia.', '0');
INSERT INTO `question_answer` VALUES ('2041', '511', 'Iusto voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('2042', '511', 'Debitis corrupti dolor.', '0');
INSERT INTO `question_answer` VALUES ('2043', '511', 'Reprehenderit modi.', '0');
INSERT INTO `question_answer` VALUES ('2044', '511', 'Et et dolorem.', '1');
INSERT INTO `question_answer` VALUES ('2045', '512', 'Aspernatur optio.', '0');
INSERT INTO `question_answer` VALUES ('2046', '512', 'Cupiditate aliquid sapiente.', '0');
INSERT INTO `question_answer` VALUES ('2047', '512', 'Incidunt velit.', '0');
INSERT INTO `question_answer` VALUES ('2048', '512', 'Maxime sed repudiandae.', '1');
INSERT INTO `question_answer` VALUES ('2049', '513', 'Asperiores distinctio ex.', '1');
INSERT INTO `question_answer` VALUES ('2050', '513', 'Sit et quisquam.', '0');
INSERT INTO `question_answer` VALUES ('2051', '513', 'Numquam placeat perspiciatis.', '0');
INSERT INTO `question_answer` VALUES ('2052', '513', 'Consequatur et.', '0');
INSERT INTO `question_answer` VALUES ('2053', '514', 'Odio explicabo.', '0');
INSERT INTO `question_answer` VALUES ('2054', '514', 'Sed quae voluptatum.', '0');
INSERT INTO `question_answer` VALUES ('2055', '514', 'Consequatur corporis.', '0');
INSERT INTO `question_answer` VALUES ('2056', '514', 'Repellat voluptate qui.', '1');
INSERT INTO `question_answer` VALUES ('2057', '515', 'Autem dolore.', '0');
INSERT INTO `question_answer` VALUES ('2058', '515', 'Libero fugiat.', '0');
INSERT INTO `question_answer` VALUES ('2059', '515', 'Laborum aspernatur natus.', '1');
INSERT INTO `question_answer` VALUES ('2060', '515', 'Cum quis nulla.', '0');
INSERT INTO `question_answer` VALUES ('2061', '516', 'Voluptate officia.', '0');
INSERT INTO `question_answer` VALUES ('2062', '516', 'Sint culpa rerum.', '0');
INSERT INTO `question_answer` VALUES ('2063', '516', 'Necessitatibus dolorem distinctio.', '1');
INSERT INTO `question_answer` VALUES ('2064', '516', 'Animi repudiandae rerum.', '0');
INSERT INTO `question_answer` VALUES ('2065', '517', 'Rerum sint hic.', '0');
INSERT INTO `question_answer` VALUES ('2066', '517', 'Reprehenderit omnis.', '1');
INSERT INTO `question_answer` VALUES ('2067', '517', 'Accusantium ea corrupti.', '0');
INSERT INTO `question_answer` VALUES ('2068', '517', 'Facere qui voluptate.', '0');
INSERT INTO `question_answer` VALUES ('2069', '518', 'Sequi odio fugiat.', '0');
INSERT INTO `question_answer` VALUES ('2070', '518', 'Sapiente pariatur molestiae.', '0');
INSERT INTO `question_answer` VALUES ('2071', '518', 'Saepe eaque voluptas.', '1');
INSERT INTO `question_answer` VALUES ('2072', '518', 'Veniam error.', '0');
INSERT INTO `question_answer` VALUES ('2073', '519', 'Sint voluptas.', '0');
INSERT INTO `question_answer` VALUES ('2074', '519', 'Facilis repellat est.', '0');
INSERT INTO `question_answer` VALUES ('2075', '519', 'Ut aut eveniet.', '1');
INSERT INTO `question_answer` VALUES ('2076', '519', 'Minima provident voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('2077', '520', 'Delectus illum.', '0');
INSERT INTO `question_answer` VALUES ('2078', '520', 'Omnis aut quo.', '0');
INSERT INTO `question_answer` VALUES ('2079', '520', 'Quos quo.', '1');
INSERT INTO `question_answer` VALUES ('2080', '520', 'Voluptatem vel.', '0');
INSERT INTO `question_answer` VALUES ('2081', '521', 'Aut eos officiis.', '0');
INSERT INTO `question_answer` VALUES ('2082', '521', 'Praesentium vel.', '0');
INSERT INTO `question_answer` VALUES ('2083', '521', 'Et debitis.', '0');
INSERT INTO `question_answer` VALUES ('2084', '521', 'At repellendus.', '1');
INSERT INTO `question_answer` VALUES ('2085', '522', 'Dolor eius.', '0');
INSERT INTO `question_answer` VALUES ('2086', '522', 'Odio aut eveniet.', '0');
INSERT INTO `question_answer` VALUES ('2087', '522', 'Quae asperiores consequatur.', '1');
INSERT INTO `question_answer` VALUES ('2088', '522', 'Quisquam accusamus est.', '0');
INSERT INTO `question_answer` VALUES ('2089', '523', 'Magni consequatur.', '1');
INSERT INTO `question_answer` VALUES ('2090', '523', 'Facere officiis sed.', '0');
INSERT INTO `question_answer` VALUES ('2091', '523', 'Nam qui labore.', '0');
INSERT INTO `question_answer` VALUES ('2092', '523', 'Ipsa voluptas autem.', '0');
INSERT INTO `question_answer` VALUES ('2093', '524', 'Sunt id cum.', '0');
INSERT INTO `question_answer` VALUES ('2094', '524', 'Ad accusamus animi.', '1');
INSERT INTO `question_answer` VALUES ('2095', '524', 'Tenetur omnis magnam.', '0');
INSERT INTO `question_answer` VALUES ('2096', '524', 'Facilis debitis ipsum.', '0');
INSERT INTO `question_answer` VALUES ('2097', '525', 'Inventore quo ea.', '1');
INSERT INTO `question_answer` VALUES ('2098', '525', 'Voluptas rem.', '0');
INSERT INTO `question_answer` VALUES ('2099', '525', 'Amet voluptates.', '0');
INSERT INTO `question_answer` VALUES ('2100', '525', 'Totam aut id.', '0');
INSERT INTO `question_answer` VALUES ('2101', '526', 'Iste voluptas pariatur.', '0');
INSERT INTO `question_answer` VALUES ('2102', '526', 'Facere quia.', '0');
INSERT INTO `question_answer` VALUES ('2103', '526', 'Corrupti exercitationem.', '1');
INSERT INTO `question_answer` VALUES ('2104', '526', 'Culpa debitis omnis.', '0');
INSERT INTO `question_answer` VALUES ('2105', '527', 'Temporibus qui.', '0');
INSERT INTO `question_answer` VALUES ('2106', '527', 'Rerum fugiat.', '1');
INSERT INTO `question_answer` VALUES ('2107', '527', 'Quia enim.', '0');
INSERT INTO `question_answer` VALUES ('2108', '527', 'Et odit.', '0');
INSERT INTO `question_answer` VALUES ('2109', '528', 'Aut eos corporis.', '0');
INSERT INTO `question_answer` VALUES ('2110', '528', 'Veniam rerum voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('2111', '528', 'Occaecati autem aut.', '0');
INSERT INTO `question_answer` VALUES ('2112', '528', 'Iure fugit velit.', '0');
INSERT INTO `question_answer` VALUES ('2113', '529', 'Commodi recusandae.', '1');
INSERT INTO `question_answer` VALUES ('2114', '529', 'Et velit accusamus.', '0');
INSERT INTO `question_answer` VALUES ('2115', '529', 'Tempora corporis et.', '0');
INSERT INTO `question_answer` VALUES ('2116', '529', 'Amet omnis blanditiis.', '0');
INSERT INTO `question_answer` VALUES ('2117', '530', 'Vitae corporis.', '1');
INSERT INTO `question_answer` VALUES ('2118', '530', 'Accusamus possimus nemo.', '0');
INSERT INTO `question_answer` VALUES ('2119', '530', 'Est harum cumque.', '0');
INSERT INTO `question_answer` VALUES ('2120', '530', 'Impedit animi velit.', '0');
INSERT INTO `question_answer` VALUES ('2121', '531', 'Tenetur at non.', '0');
INSERT INTO `question_answer` VALUES ('2122', '531', 'Inventore dignissimos.', '1');
INSERT INTO `question_answer` VALUES ('2123', '531', 'Sint facere.', '0');
INSERT INTO `question_answer` VALUES ('2124', '531', 'Cum sunt.', '0');
INSERT INTO `question_answer` VALUES ('2125', '532', 'Quibusdam repellat aspernatur.', '0');
INSERT INTO `question_answer` VALUES ('2126', '532', 'Mollitia et.', '1');
INSERT INTO `question_answer` VALUES ('2127', '532', 'Minima iste.', '0');
INSERT INTO `question_answer` VALUES ('2128', '532', 'Sed voluptatum culpa.', '0');
INSERT INTO `question_answer` VALUES ('2129', '533', 'Est rerum.', '0');
INSERT INTO `question_answer` VALUES ('2130', '533', 'Alias qui quasi.', '0');
INSERT INTO `question_answer` VALUES ('2131', '533', 'Dicta accusamus magnam.', '0');
INSERT INTO `question_answer` VALUES ('2132', '533', 'Sunt tenetur.', '1');
INSERT INTO `question_answer` VALUES ('2133', '534', 'Sint ut.', '1');
INSERT INTO `question_answer` VALUES ('2134', '534', 'Alias occaecati eveniet.', '0');
INSERT INTO `question_answer` VALUES ('2135', '534', 'Nesciunt commodi.', '0');
INSERT INTO `question_answer` VALUES ('2136', '534', 'Qui nam.', '0');
INSERT INTO `question_answer` VALUES ('2137', '535', 'Provident sed.', '1');
INSERT INTO `question_answer` VALUES ('2138', '535', 'Molestiae tenetur amet.', '0');
INSERT INTO `question_answer` VALUES ('2139', '535', 'Quia odio.', '0');
INSERT INTO `question_answer` VALUES ('2140', '535', 'Voluptas voluptas.', '0');
INSERT INTO `question_answer` VALUES ('2141', '536', 'Et rerum.', '0');
INSERT INTO `question_answer` VALUES ('2142', '536', 'Asperiores sequi.', '0');
INSERT INTO `question_answer` VALUES ('2143', '536', 'Sit et incidunt.', '1');
INSERT INTO `question_answer` VALUES ('2144', '536', 'Id aliquid.', '0');
INSERT INTO `question_answer` VALUES ('2145', '537', 'Repellat voluptate.', '0');
INSERT INTO `question_answer` VALUES ('2146', '537', 'Repudiandae libero.', '1');
INSERT INTO `question_answer` VALUES ('2147', '537', 'Ad veritatis.', '0');
INSERT INTO `question_answer` VALUES ('2148', '537', 'Enim libero fugiat.', '0');
INSERT INTO `question_answer` VALUES ('2149', '538', 'Et molestiae deleniti.', '0');
INSERT INTO `question_answer` VALUES ('2150', '538', 'Quaerat non quia.', '1');
INSERT INTO `question_answer` VALUES ('2151', '538', 'Totam eius porro.', '0');
INSERT INTO `question_answer` VALUES ('2152', '538', 'Alias explicabo.', '0');
INSERT INTO `question_answer` VALUES ('2153', '539', 'Sit ut fuga.', '0');
INSERT INTO `question_answer` VALUES ('2154', '539', 'Dolor quod et.', '1');
INSERT INTO `question_answer` VALUES ('2155', '539', 'Quas debitis.', '0');
INSERT INTO `question_answer` VALUES ('2156', '539', 'Culpa quam.', '0');
INSERT INTO `question_answer` VALUES ('2157', '540', 'Veniam dolor tempore.', '0');
INSERT INTO `question_answer` VALUES ('2158', '540', 'Pariatur quae ut.', '0');
INSERT INTO `question_answer` VALUES ('2159', '540', 'Ex sint.', '0');
INSERT INTO `question_answer` VALUES ('2160', '540', 'Unde eaque.', '1');
INSERT INTO `question_answer` VALUES ('2161', '541', 'Qui error.', '0');
INSERT INTO `question_answer` VALUES ('2162', '541', 'Nesciunt repudiandae.', '0');
INSERT INTO `question_answer` VALUES ('2163', '541', 'Vero nam.', '1');
INSERT INTO `question_answer` VALUES ('2164', '541', 'Nemo et.', '0');
INSERT INTO `question_answer` VALUES ('2165', '542', 'Voluptate eaque voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('2166', '542', 'Ex et ea.', '1');
INSERT INTO `question_answer` VALUES ('2167', '542', 'Eaque dolores cupiditate.', '0');
INSERT INTO `question_answer` VALUES ('2168', '542', 'Dicta ut.', '0');
INSERT INTO `question_answer` VALUES ('2169', '543', 'Est adipisci.', '0');
INSERT INTO `question_answer` VALUES ('2170', '543', 'Autem sed eaque.', '0');
INSERT INTO `question_answer` VALUES ('2171', '543', 'Nesciunt repellendus.', '1');
INSERT INTO `question_answer` VALUES ('2172', '543', 'Magni rerum.', '0');
INSERT INTO `question_answer` VALUES ('2173', '544', 'Perspiciatis dolores culpa.', '0');
INSERT INTO `question_answer` VALUES ('2174', '544', 'Ut quis.', '1');
INSERT INTO `question_answer` VALUES ('2175', '544', 'Ut blanditiis dignissimos.', '0');
INSERT INTO `question_answer` VALUES ('2176', '544', 'Veniam natus.', '0');
INSERT INTO `question_answer` VALUES ('2177', '545', 'Fuga reprehenderit.', '0');
INSERT INTO `question_answer` VALUES ('2178', '545', 'Fuga est id.', '0');
INSERT INTO `question_answer` VALUES ('2179', '545', 'Nihil at voluptatem.', '1');
INSERT INTO `question_answer` VALUES ('2180', '545', 'Voluptates temporibus et.', '0');
INSERT INTO `question_answer` VALUES ('2181', '546', 'Dolor corporis ut.', '0');
INSERT INTO `question_answer` VALUES ('2182', '546', 'Odio deserunt.', '0');
INSERT INTO `question_answer` VALUES ('2183', '546', 'Atque et sequi.', '0');
INSERT INTO `question_answer` VALUES ('2184', '546', 'Tempore vel dolores.', '1');
INSERT INTO `question_answer` VALUES ('2185', '547', 'Ducimus beatae ut.', '0');
INSERT INTO `question_answer` VALUES ('2186', '547', 'Explicabo expedita velit.', '0');
INSERT INTO `question_answer` VALUES ('2187', '547', 'Molestias recusandae neque.', '1');
INSERT INTO `question_answer` VALUES ('2188', '547', 'Maiores quasi suscipit.', '0');
INSERT INTO `question_answer` VALUES ('2189', '548', 'Dolore velit reprehenderit.', '1');
INSERT INTO `question_answer` VALUES ('2190', '548', 'Perspiciatis est tenetur.', '0');
INSERT INTO `question_answer` VALUES ('2191', '548', 'Est doloremque pariatur.', '0');
INSERT INTO `question_answer` VALUES ('2192', '548', 'Earum voluptatem.', '0');
INSERT INTO `question_answer` VALUES ('2193', '549', 'Repellendus cum molestiae.', '0');
INSERT INTO `question_answer` VALUES ('2194', '549', 'Voluptas sunt dolorem.', '0');
INSERT INTO `question_answer` VALUES ('2195', '549', 'Officiis quo earum.', '0');
INSERT INTO `question_answer` VALUES ('2196', '549', 'Facilis corrupti quos.', '1');
INSERT INTO `question_answer` VALUES ('2197', '550', 'Qui in atque.', '0');
INSERT INTO `question_answer` VALUES ('2198', '550', 'Aliquid officiis.', '0');
INSERT INTO `question_answer` VALUES ('2199', '550', 'Adipisci cumque non.', '0');
INSERT INTO `question_answer` VALUES ('2200', '550', 'Id quod.', '1');

-- ----------------------------
-- Table structure for quiz
-- ----------------------------
DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quiz_type_id` int(11) NOT NULL DEFAULT '0',
  `subject_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `time_length` int(11) NOT NULL DEFAULT '30',
  `level` enum('easy','normal','hard') DEFAULT 'normal',
  `total_question` int(11) DEFAULT '10',
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active',
  `privacy` tinyint(5) DEFAULT '0' COMMENT '0: public, 1: yeu cau dang nhap',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: chua xoa, 1: da xoa',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz
-- ----------------------------
INSERT INTO `quiz` VALUES ('1', 'Illum rerum laborum molestias voluptates et.', 'Inventore inventore molestias ad fugiat nemo sed sit rem totam ab quo quia fuga totam non eos voluptatibus autem ipsum quos ullam eligendi vel et explicabo est ipsum voluptatem magnam voluptas.', '1', '3', '32', '15', 'normal', '10', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-10 09:23:53');
INSERT INTO `quiz` VALUES ('2', 'Sint nostrum est totam.', 'Quibusdam nesciunt tenetur dignissimos soluta distinctio minus quam autem vel velit eligendi ut quos non non rerum officia et modi illum est fugit sed et ipsam reprehenderit quisquam maxime sint nobis.', '3', '2', '2', '30', 'hard', '20', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('3', 'Quas ut consequatur voluptas quis nulla autem.', 'Et excepturi reprehenderit ratione ut aut magnam est provident aut voluptas quia labore quis harum nemo molestiae dolores dolores est.', '2', '1', '19', '15', 'hard', '10', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('4', 'Repellat quia assumenda dolor quae.', 'Quos sit laborum nisi consequuntur vel mollitia assumenda possimus laborum et quas perspiciatis quas assumenda neque nihil quam quia non voluptatem.', '2', '7', '40', '30', 'easy', '20', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('5', 'Et hic non architecto a velit.', 'Doloribus itaque accusamus facere modi est molestiae magnam deleniti qui quia veritatis cupiditate nam autem illum et quo alias ut aliquam praesentium aut autem.', '2', '6', '41', '60', 'easy', '40', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('6', 'Aspernatur similique non voluptatum.', 'Modi unde voluptatem eum unde aperiam consequuntur ducimus possimus sit autem nam necessitatibus itaque cumque maxime eum delectus assumenda officia sit tempore quia tempore iusto illo aut repellat voluptatem repudiandae assumenda dolorem.', '1', '7', '40', '40', 'easy', '30', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('7', 'Qui voluptatem provident error sit et.', 'Quia iure voluptatibus dolorem soluta voluptates qui commodi quod qui quo eum ut error culpa molestiae sed nesciunt sed sunt quos nihil blanditiis et non quisquam alias quidem et quidem sint sunt totam sequi labore dolores animi nobis quis.', '2', '2', '9', '30', 'hard', '20', '1', '0', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('8', 'Doloribus nemo dolores est.', 'Sapiente molestiae molestiae et iusto dolorem aperiam nobis ducimus nobis ea nihil facilis iusto aut enim distinctio quae eaque quia enim fuga ab iste voluptas illum voluptatibus eligendi explicabo voluptatem sint quam omnis molestiae non saepe est.', '1', '7', '40', '30', 'easy', '20', '1', '0', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('9', 'Impedit ducimus consectetur tempore.', 'Nisi consequatur porro aliquam velit laudantium aliquam voluptas accusamus est asperiores provident inventore sint quidem voluptatum dolores ut nam perspiciatis ducimus.', '2', '3', '35', '15', 'normal', '10', '1', '0', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('10', 'Laboriosam illo ex necessitatibus consectetur.', 'Quam tempora ipsum voluptate aut id alias dolor temporibus eum incidunt ut sint eos aut qui nostrum reiciendis labore eos non repellendus.', '2', '7', '31', '60', 'hard', '40', '1', '0', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('11', 'Cumque officiis fugiat iure eum harum commodi consequatur.', 'Nemo laboriosam maxime eveniet tempora totam laudantium libero sint ut nihil nihil nulla est maxime similique quia accusamus est in est necessitatibus est id consequatur error.', '3', '3', '32', '15', 'normal', '10', '1', '0', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('12', 'Vel quidem libero voluptates.', 'Laborum nobis molestias ut consequatur voluptas repudiandae autem consequatur est nesciunt quibusdam inventore omnis asperiores provident dolores modi autem laboriosam aut quibusdam.', '1', '4', '11', '40', 'easy', '30', '1', '0', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('13', 'Est deserunt unde ullam dicta necessitatibus rem.', 'Error voluptas ea quaerat eligendi nam voluptatum autem voluptatem dolorum consequatur corrupti totam reprehenderit similique consequatur itaque sapiente assumenda dolores dolor eos quo quia.', '2', '2', '25', '60', 'hard', '40', '1', '1', '0', '2017-05-07 22:29:04', '2017-05-07 22:29:04');
INSERT INTO `quiz` VALUES ('14', 'Distinctio consequatur similique corporis ratione.', 'Cum sint saepe quo nisi repellat voluptate perferendis cupiditate eius quae fuga consectetur a voluptates quia sed ipsam quo aut nobis et harum magnam dolorum.', '1', '3', '35', '30', 'hard', '20', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('15', 'Adipisci dolores libero est.', 'Consequatur et excepturi exercitationem animi sed ratione cum dolorem a mollitia incidunt reiciendis ut vel et et sunt et sed alias quo fuga quod eos autem.', '1', '5', '33', '60', 'normal', '40', '1', '0', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('16', 'Quam rerum sed dolor.', 'Consequatur autem corporis nostrum dolorem occaecati vero ducimus quia consequatur omnis impedit qui consequuntur quibusdam ea totam unde officia perferendis debitis possimus molestiae molestias ullam aut sint doloribus accusamus aliquid quia.', '1', '3', '26', '60', 'easy', '40', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('17', 'Aliquid tenetur eius voluptatibus et aperiam.', 'Sed accusantium ea aliquid pariatur ea magnam aut quia aut vitae laboriosam ex reiciendis deserunt culpa voluptas tenetur sed veniam nihil fuga enim id nisi dolorem deserunt aut illo quas enim ab est aut rerum quis aut rerum eligendi.', '3', '7', '31', '30', 'hard', '20', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('18', 'Beatae enim placeat architecto.', 'Expedita blanditiis quas facilis atque voluptatum dolorem sunt neque non ducimus voluptatem aliquid quia saepe molestiae ab et sint ad corporis vitae iusto cum ipsum modi reprehenderit voluptate.', '1', '5', '1', '30', 'hard', '20', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('19', 'Iure impedit recusandae dolor nihil.', 'Quod et sit aperiam facilis voluptate sed illum fugiat deleniti deserunt reiciendis ut eum similique sunt quos nihil voluptates eligendi quia sunt aliquid beatae similique.', '3', '4', '21', '30', 'easy', '20', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('20', 'Id repellat sit iste laudantium sunt.', 'Modi ut illum ullam eius et eum est voluptatem cupiditate voluptates natus quo vel pariatur voluptatem consequatur unde deserunt iure eos sunt quasi molestiae aut error dolore totam autem iste repellendus animi delectus.', '3', '2', '18', '30', 'easy', '20', '1', '0', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('21', 'Animi itaque nihil officia quos.', 'Iure reprehenderit commodi iure quasi ut incidunt harum recusandae quaerat aut dolor voluptates sint repudiandae porro atque quas optio.', '1', '2', '2', '40', 'hard', '30', '1', '0', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('22', 'Eaque quas fugiat illo veniam aut aliquam qui.', 'Quam omnis qui rerum corporis ratione nisi qui praesentium consequatur corrupti sint nisi qui eos unde delectus voluptatem aut ut repellendus sint enim cumque autem sed et.', '1', '3', '32', '15', 'normal', '10', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('23', 'Qui non necessitatibus consequatur voluptas quo.', 'Voluptatibus itaque ea et libero qui nulla rerum eligendi dolorum fugiat rerum iusto ea quia fuga non accusamus ut eos voluptatem ex hic porro architecto alias sint ex.', '3', '2', '5', '30', 'hard', '20', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');
INSERT INTO `quiz` VALUES ('24', 'Commodi quo fugiat laboriosam ut quidem.', 'At beatae laborum ut deserunt ea suscipit qui culpa eligendi dolor animi ab fugit ea cumque aut doloribus quos libero quis mollitia unde est sunt perferendis ab nam aperiam sapiente sed autem animi.', '2', '7', '15', '15', 'normal', '10', '1', '1', '0', '2017-05-07 22:29:05', '2017-05-07 22:29:05');

-- ----------------------------
-- Table structure for quiz_attempt
-- ----------------------------
DROP TABLE IF EXISTS `quiz_attempt`;
CREATE TABLE `quiz_attempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `data` text NOT NULL,
  `time_remain` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '1: da hoan thanh, 0: chua hoan thanh',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_attempt
-- ----------------------------
INSERT INTO `quiz_attempt` VALUES ('1', '0', '127.0.0.1', '7', '{\"info\":{\"time_start\":\"2017-05-09 21:22:48\",\"time_submit\":\"2017-05-09 21:23:17\",\"total_true\":7},\"results\":{\"131\":{\"question_id\":\"131\",\"ans_id\":\"521\",\"check\":1},\"132\":{\"question_id\":\"132\",\"ans_id\":\"525\",\"check\":1},\"133\":{\"question_id\":\"133\",\"ans_id\":\"529\",\"check\":1},\"134\":{\"question_id\":\"134\",\"ans_id\":\"533\",\"check\":0},\"135\":{\"question_id\":\"135\",\"ans_id\":\"537\",\"check\":0},\"136\":{\"question_id\":\"136\",\"ans_id\":\"541\",\"check\":0},\"137\":{\"question_id\":\"137\",\"ans_id\":\"545\",\"check\":0},\"138\":{\"question_id\":\"138\",\"ans_id\":\"549\",\"check\":1},\"139\":{\"question_id\":\"139\",\"ans_id\":\"553\",\"check\":0},\"140\":{\"question_id\":\"140\",\"ans_id\":\"557\",\"check\":1},\"141\":{\"question_id\":\"141\",\"ans_id\":\"561\",\"check\":0},\"142\":{\"question_id\":\"142\",\"ans_id\":\"565\",\"check\":0},\"143\":{\"question_id\":\"143\",\"ans_id\":\"569\",\"check\":0},\"144\":{\"question_id\":\"144\",\"ans_id\":\"573\",\"check\":0},\"145\":{\"question_id\":\"145\",\"ans_id\":\"577\",\"check\":1},\"146\":{\"question_id\":\"146\",\"ans_id\":\"581\",\"check\":0},\"147\":{\"question_id\":\"147\",\"ans_id\":\"585\",\"check\":0},\"148\":{\"question_id\":\"148\",\"ans_id\":\"589\",\"check\":0},\"149\":{\"question_id\":\"149\",\"ans_id\":\"593\",\"check\":1},\"150\":{\"question_id\":\"150\",\"ans_id\":\"597\",\"check\":0}}}', '0', '1', '2017-05-09 21:23:17');
INSERT INTO `quiz_attempt` VALUES ('2', '0', '127.0.0.1', '7', '{\"info\":{\"time_start\":\"2017-05-09 23:19:57\",\"time_submit\":\"2017-05-09 23:20:36\",\"total_true\":5},\"results\":{\"131\":{\"question_id\":\"131\",\"ans_id\":\"521\",\"check\":1},\"132\":{\"question_id\":\"132\",\"ans_id\":\"526\",\"check\":0},\"133\":{\"question_id\":\"133\",\"ans_id\":\"531\",\"check\":0},\"134\":{\"question_id\":\"134\",\"ans_id\":\"536\",\"check\":0},\"135\":{\"question_id\":\"135\",\"ans_id\":\"\",\"check\":0},\"136\":{\"question_id\":\"136\",\"ans_id\":\"541\",\"check\":0},\"137\":{\"question_id\":\"137\",\"ans_id\":\"546\",\"check\":1},\"138\":{\"question_id\":\"138\",\"ans_id\":\"551\",\"check\":0},\"139\":{\"question_id\":\"139\",\"ans_id\":\"556\",\"check\":0},\"140\":{\"question_id\":\"140\",\"ans_id\":\"557\",\"check\":1},\"141\":{\"question_id\":\"141\",\"ans_id\":\"562\",\"check\":1},\"142\":{\"question_id\":\"142\",\"ans_id\":\"567\",\"check\":0},\"143\":{\"question_id\":\"143\",\"ans_id\":\"572\",\"check\":1},\"144\":{\"question_id\":\"144\",\"ans_id\":\"573\",\"check\":0},\"145\":{\"question_id\":\"145\",\"ans_id\":\"578\",\"check\":0},\"146\":{\"question_id\":\"146\",\"ans_id\":\"583\",\"check\":0},\"147\":{\"question_id\":\"147\",\"ans_id\":\"588\",\"check\":0},\"148\":{\"question_id\":\"148\",\"ans_id\":\"589\",\"check\":0},\"149\":{\"question_id\":\"149\",\"ans_id\":\"594\",\"check\":0},\"150\":{\"question_id\":\"150\",\"ans_id\":\"599\",\"check\":0}}}', '0', '1', '2017-05-09 23:20:36');

-- ----------------------------
-- Table structure for quiz_rating
-- ----------------------------
DROP TABLE IF EXISTS `quiz_rating`;
CREATE TABLE `quiz_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL DEFAULT '5',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_rating
-- ----------------------------
INSERT INTO `quiz_rating` VALUES ('1', '7', '3', '10', '2017-05-09 00:00:00');

-- ----------------------------
-- Table structure for quiz_report
-- ----------------------------
DROP TABLE IF EXISTS `quiz_report`;
CREATE TABLE `quiz_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `content_report` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1: da xu ly, 0: chua xu ly',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_report
-- ----------------------------
INSERT INTO `quiz_report` VALUES ('1', '7', '131', 'Đáp án sai', '3', '0', '2017-05-10 00:01:50');
INSERT INTO `quiz_report` VALUES ('2', '7', '132', 'Nội dung câu hỏi không đúng.', '3', '0', '2017-05-10 00:03:42');

-- ----------------------------
-- Table structure for quiz_score
-- ----------------------------
DROP TABLE IF EXISTS `quiz_score`;
CREATE TABLE `quiz_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `time_complete` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_score
-- ----------------------------

-- ----------------------------
-- Table structure for quiz_type
-- ----------------------------
DROP TABLE IF EXISTS `quiz_type`;
CREATE TABLE `quiz_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_type
-- ----------------------------
INSERT INTO `quiz_type` VALUES ('1', 'QUIZ_THPT', 'Đề thi thử THPT QG', 'Đề thi thử THPT QG', '2017-05-07 22:14:54', '2017-05-07 22:14:57');
INSERT INTO `quiz_type` VALUES ('2', 'QUIZ_CHECK_CAPABILITY', 'Trắc nghiệm theo chuyên đề', 'Trắc nghiệm theo chuyên đề', '2017-05-07 22:16:00', '2017-05-07 22:16:03');
INSERT INTO `quiz_type` VALUES ('3', 'QUIZ_GENERAL', 'Đề thi tổng hợp', 'Đề thi tổng hợp', '2017-05-07 22:20:29', '2017-05-07 22:20:32');

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
-- Table structure for static_page
-- ----------------------------
DROP TABLE IF EXISTS `static_page`;
CREATE TABLE `static_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of static_page
-- ----------------------------
INSERT INTO `static_page` VALUES ('1', 'CHARGING_BANK_HELP', '<p class=\"tb1 fs16 \">Bạn sẽ được tặng <b>thêm 10% giá trị</b> nạp tiền thành công.</p>\r\n					<p class=\"tb1 fs16 fw600\">Hướng dẫn nạp tiền bằng chuyển khoản ngân hàng</p>\r\n					<p class=\"tb1\">- Bạn có thể đến bất kỳ ngân hàng nào ở Việt Nam hoặc bạn có thể sử dụng dịch vụ Internet Banking để chuyển tiền cho chúng tôi theo thông tin:</p>	\r\n\r\n					<ul class=\"cknh\">\r\n						\r\n						<li>\r\n							<div class=\"t-item\">\r\n								+  Tài khoản ngân hàng Á Châu (ACB):\r\n							</div>\r\n							\r\n							<div class=\"c-item\">\r\n								Số tài khoản: 223620179<br/>\r\n								Chủ tài khoản: Nguyễn Phương Hà Linh<br/>\r\n								Ngân hàng ACB, chi nhánh Phan Đăng Lưu, TPHCM\r\n							</div>\r\n						</li>\r\n						\r\n						<li>\r\n							<div class=\"t-item\">\r\n								+  Tài khoản ngân hàng Agribank:\r\n							</div>\r\n							\r\n							<div class=\"c-item\">\r\n								Số tài khoản: 6380205472535<br/>\r\n								Chủ tài khoản: Nguyễn Phương Hà Linh<br/>\r\n								Ngân hàng Agribank, chi nhánh quận Bình Thạnh, TPHCM\r\n							</div>\r\n						</li>\r\n						\r\n\r\n						<li>\r\n							<div class=\"t-item cpink	\">*	Ghi chú khi chuyển khoản:</div>\r\n							<div class=\"c-item\">\r\n								<p class=\"padbot5\">Tại mục \"Ghi chú\" khi chuyển khoản, bạn ghi rõ:</p>\r\n								<p class=\" padbot5 fw600\">Họ Tên - Email tài khoản - Số điện thoại</p>\r\n								<p class=\"padbot5\">Ví dụ: Nguyen Hoang Hai - hoanghai1989@gmail.com - 0902786182</p>	\r\n							</div>\r\n						</li>\r\n					</ul>\r\n					\r\n					<p class=\"tb1\">- Ngay sau khi chúng tôi nhận được thông tin chuyển khoản, chúng tôi sẽ tiến hành kích hoạt khóa học cho bạn.</p>', '2017-05-07 09:48:30', '2017-05-07 09:48:32');
INSERT INTO `static_page` VALUES ('2', 'CHARGING_PHONE_CARD_HELP', '<div class=\"ndttkh\">\r\n					<p class=\"tbmsg\">Nạp tiền bằng thẻ cào điện thoại</p>\r\n					<!-- <p class=\"tb1\"><span class=\"cpink\">Tài khoản Alaxu của bạn hiện có <b> vnd</b></span></p> -->\r\n					<p class=\"tb1 martop10 fw600\">Hướng dẫn nạp tiền qua thẻ cào điện thoại (chỉ áp dụng thẻ Mobifone, Vinaphone và Viettel):</p>\r\n					<p class=\"tb1 marbot10\">Bạn có thể mua thẻ cào di động được bán ở hầu hết các đại lý, tiệm tạp hóa, cửa hàng điện thoại di động trên toàn quốc và làm theo các bước hướng dẫn bên dưới để nạp tiền vào tài khoản</p>\r\n					<p class=\"tb1\"><b>Bước 1:</b> Cào lớp tráng bạc để biết mã thẻ.</p>\r\n					<p class=\"tb1\"><b>Bước 2:</b> Chọn loại thẻ, nhập mã thẻ cào và số seri thẻ cào. (Các số viết liền không khoảng trắng hoặc dấu -)</p>\r\n					<p class=\"tb1\"><b>Bước 3:</b> Nhập mã Captcha và bấm nút \"Thanh Toán\" để hoàn tất quá trình nạp tiền.</p>\r\n									<p class=\"tb1 marbot10\">Để nạp thẻ tiếp theo, vui lòng làm theo trình tự như trên.</p>\r\n<p class=\"tb1 marbot10\"><b>(Lưu ý: Nạp sai 5 lần liên tiếp tài khoản của Bạn sẽ bị khóa và được mở lại sau 24 Giờ)</b></p>	', '2017-05-07 09:55:07', '2017-05-07 09:55:09');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `birthday` varchar(60) DEFAULT NULL,
  `school` varchar(60) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `balance` decimal(10,0) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'Mrs. Bridget Abbott MD', '10/05/2017', 'Omnis quos atque excepturi et deleniti odio.', null, '0983048031', '680000', '2017-05-06 22:43:31', '2017-05-07 01:31:01');
INSERT INTO `student` VALUES ('2', 'Ms. Lonie Reichel PhD', '24/05/2017', 'Sint eius debitis neque quod ut autem ipsa labore.', null, 'Ms. Lonie Reichel PhD', '1320000', '2017-05-06 22:43:31', '2017-05-07 15:36:51');
INSERT INTO `student` VALUES ('3', 'Dr. Keagan McClure I', null, 'Explicabo doloremque ut eos.', null, null, '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31');
INSERT INTO `student` VALUES ('4', 'Ewell Johnson', null, 'Voluptate quos qui ab aut accusamus.', null, null, '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32');

-- ----------------------------
-- Table structure for student_quiz
-- ----------------------------
DROP TABLE IF EXISTS `student_quiz`;
CREATE TABLE `student_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_quiz
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
INSERT INTO `teacher` VALUES ('7', 'Prof. Gwen Bernhard', 'davonte.pfannerstill@bashirian.com', '2', 'Blanditiis suscipit praesentium pariatur nostrum ut dolorem ut autem quo reiciendis necessitatibus quo amet sapiente nihil nihil nobis dolores optio ipsam natus ex velit corrupti vel.', '18707 Runolfsdottir Orchard\nWittingtown, AZ 58759-3366', '854.396.4909', 'Ths', '2017-05-10 15:02:10', '2017-05-10 15:02:10');
INSERT INTO `teacher` VALUES ('8', 'Prof. Damon Von', 'vkub@mraz.org', '2', 'Reprehenderit sapiente debitis omnis veritatis quod laborum qui corrupti repellendus iusto ab error perferendis optio aut et est officia vitae quis et iusto consequatur id corrupti dignissimos nam consequatur distinctio impedit nisi est similique porro optio.', '1801 Ursula Forges Suite 803\nDurganmouth, WV 14813-6464', '+17542145077', 'Sv', '2017-05-10 15:02:10', '2017-05-10 15:02:10');
INSERT INTO `teacher` VALUES ('9', 'Austin Funk', 'emely41@hotmail.com', '1', 'Voluptatem suscipit soluta debitis dolore sint quis veniam nisi et ipsa quo illo accusantium error vero consequatur ut error quisquam ullam.', '58818 Tad Valleys Suite 648\nWest Aurore, MA 10422-9549', '+1 (446) 591-9123', 'Sv', '2017-05-10 15:02:10', '2017-05-10 15:02:10');
INSERT INTO `teacher` VALUES ('10', 'Opal Breitenberg', 'ondricka.ova@koss.com', '2', 'Consequuntur repudiandae maiores sunt laborum assumenda molestiae assumenda doloribus quo velit fuga natus illo veniam alias sapiente quidem tempore deserunt reprehenderit et aut quis facilis sunt in nobis ratione ut numquam aut asperiores qui cum neque.', '15951 Eunice Locks\nCecilchester, ME 59187-5616', '1-782-918-9564 x1075', 'Ts', '2017-05-10 15:02:10', '2017-05-10 15:02:10');
INSERT INTO `teacher` VALUES ('11', 'Bertram Bartell MD', 'corbin62@yahoo.com', '2', 'Facere ut corporis commodi velit quo veritatis sit qui consequatur nesciunt veniam quasi quos et vero voluptate et consequatur.', '6294 Alvah Street Suite 044\nNew Easterberg, NH 43014-3386', '(885) 207-6716 x069', 'Ts', '2017-05-10 15:02:10', '2017-05-10 15:02:10');
INSERT INTO `teacher` VALUES ('12', 'Valentina Hyatt PhD', 'gaylord.gayle@friesen.org', '1', 'Sint voluptatem quasi minima non voluptas a ipsum nulla suscipit est explicabo ad incidunt reprehenderit eaque deleniti eaque quia facilis error non dolores.', '13050 Clinton Ferry Apt. 288\nTrantowborough, HI 33253-6485', '665.589.2638 x0648', 'Ts', '2017-05-10 15:02:10', '2017-05-10 15:02:10');
INSERT INTO `teacher` VALUES ('13', 'Hilario Weber Sr.', 'kassulke.keely@mclaughlin.com', '1', 'Dignissimos debitis tempora rerum sint dolorem fugiat explicabo recusandae facere quo maxime ut voluptatum velit veniam est incidunt et ut reprehenderit at ut unde aliquam impedit quo saepe.', '41502 Towne Path\nEast Joshport, WA 24059', '1-615-421-9865', 'Ths', '2017-05-10 15:02:11', '2017-05-10 15:02:11');
INSERT INTO `teacher` VALUES ('14', 'Velda Windler', 'ryan.olga@wilderman.biz', '1', 'Quae dolores veniam rerum ad officia quis laborum velit quisquam cumque consequatur qui a aliquam quidem possimus iure hic quos voluptas ut repudiandae quia aut voluptate accusantium magnam expedita recusandae aspernatur voluptatibus voluptas sit velit earum totam eveniet repudiandae vel et velit.', '527 Reichel Mission Apt. 057\nWillmsside, MN 20571-0393', '(524) 328-1465', 'Sv', '2017-05-10 15:02:11', '2017-05-10 15:02:11');
INSERT INTO `teacher` VALUES ('15', 'Mr. Ross Batz', 'twolff@bednar.net', '2', 'Qui aspernatur quasi eos deleniti debitis perferendis ut maxime perspiciatis ut adipisci beatae dignissimos assumenda nulla et numquam nisi quisquam quia maiores aut voluptatem et.', '84367 Leannon Forks\nRogahnfort, AL 13464', '1-825-708-2821', 'Ths', '2017-05-10 15:02:11', '2017-05-10 15:02:11');
INSERT INTO `teacher` VALUES ('16', 'Krista Stark', 'west.lilian@hotmail.com', '1', 'Non aut dolorem qui esse maiores sit et consequatur recusandae quo expedita reprehenderit non enim fuga ullam officia quia tenetur nam natus nostrum dolor ut quos aut tempore consequatur in et quia nam nulla molestiae eaque omnis.', '141 Nolan Pass Suite 230\nPort Veronica, WY 40003', '1-238-656-5132 x1877', 'Sv', '2017-05-10 15:02:11', '2017-05-10 15:02:11');
INSERT INTO `teacher` VALUES ('17', 'Simone Koch', null, null, null, null, null, null, '2017-05-10 16:55:02', '2017-05-10 16:55:02');
INSERT INTO `teacher` VALUES ('18', 'Lê Văn Lan', 'lanlevan@gmail.com', '1', 'Lê Văn Lan (sinh năm 1936, người Hà Nội) là giáo sư sử học [1], tuy nhiên có một số nguồn ghi ông có học hàm phó giáo sư [2][3], chuyên ngành cổ sử, phó chủ tịch Hội đồng khoa học Khu di tích lịch sử đền Hùng,[4] một trong những người sáng lập Viện sử học Việt Nam,[5] nhiều năm làm cố vấn lịch sử chương trình Đường lên đỉnh Olympia và SV 96 trên Đài truyền hình Việt Nam. Ông là người phụ trách chuyên mục giải đáp các vấn đề lịch sử của báo Khoa học và Đời sống số ra ngày thứ sáu, ở trang sáu, 55 năm làm cộng tác viên báo Thiếu niên tiền phong từ ngày thành lập.[6]', 'Ban cổ sử Viện Sử học Việt Nam', '', 'Gs', '2017-05-10 20:29:43', '2017-05-10 20:29:43');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `subject_id` int(11) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', 'Aut esse neque tempore fugit.', 'Quos quas quibusdam aut aut impedit enim hic quia ea et laborum est eveniet cupiditate impedit natus officiis et possimus in nostrum velit.', '5', '2017-05-07 22:00:16', '2017-05-07 22:00:16');
INSERT INTO `topic` VALUES ('2', 'Totam quasi eum quia.', 'Magni cumque omnis dolorem voluptatibus aliquid dolores qui qui minima eius quia est voluptas porro quod et vel fuga.', '2', '2017-05-07 22:00:16', '2017-05-07 22:00:16');
INSERT INTO `topic` VALUES ('3', 'Assumenda recusandae asperiores enim.', 'Fugiat necessitatibus ducimus ut aut praesentium et cumque rem quia optio inventore sed illo excepturi qui quo ipsum inventore debitis optio odio et tempora libero sit ipsum soluta consequatur maiores delectus omnis beatae.', '3', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('4', 'Neque maxime nihil dolorum nihil.', 'Sit necessitatibus sed quam maiores qui et voluptatem ut voluptas deserunt totam quia sed perspiciatis consequuntur aut laborum rerum veniam voluptas blanditiis fugit.', '5', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('5', 'Incidunt autem dignissimos.', 'Hic in reprehenderit voluptas est et officiis tempore laudantium autem numquam aut et beatae suscipit delectus aut dolorum tempore a cum id dolores autem quaerat minus nihil saepe beatae vel dolore voluptates repellat minima magni.', '2', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('6', 'Nesciunt eveniet ullam autem voluptatem.', 'Velit occaecati consectetur laborum ut cum id fuga quia rerum ex neque deserunt dolores sint dolor nihil voluptatem et dolorum voluptatibus culpa autem sint similique nisi.', '2', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('7', 'Recusandae neque ullam nam.', 'Quam blanditiis voluptates asperiores ut voluptatem omnis aspernatur tempora et libero vitae ut velit expedita vitae distinctio rem provident vel magni et magni.', '4', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('8', 'Vel dolor dolor ut.', 'Sunt ut cupiditate non nihil autem ipsum dicta velit sint asperiores impedit et dolorem soluta facilis ut pariatur neque libero voluptates quasi assumenda a voluptatem.', '5', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('9', 'Enim exercitationem velit autem nobis.', 'Iusto beatae nam suscipit reiciendis assumenda odit temporibus quia voluptatem dolor odio quidem voluptates veniam ipsa doloribus praesentium eos iste enim sed quam unde ipsa earum molestias est iste.', '2', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('10', 'Et ut incidunt nisi voluptatem.', 'Excepturi quia temporibus quis earum aut amet error quis rerum corrupti quia qui dolor nemo unde dolore illum eum commodi nisi dolor placeat aperiam et.', '4', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('11', 'Et iste tempora odit eveniet esse.', 'In occaecati officia nisi aliquid aut consequatur quidem qui ut iste provident aliquam ratione quo maiores nihil voluptas laboriosam corporis dolor et et accusantium dolores ut explicabo accusamus quod quasi sit esse repellendus quia perferendis modi.', '4', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('12', 'Beatae ut velit dignissimos vel ut.', 'Aut nihil sunt accusantium et nemo provident harum perferendis natus voluptatem et sequi sunt dolores sit harum vero et repellendus saepe excepturi.', '5', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('13', 'Nihil eligendi sint sequi.', 'Voluptatem accusamus molestias error harum similique occaecati et sint natus enim id nostrum soluta culpa quia amet veniam cupiditate labore odio ad quis repellat quo enim architecto aut non nisi quam.', '5', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('14', 'Similique autem assumenda asperiores.', 'Sunt tempora nisi nobis autem dolorem laborum exercitationem quam in ut corrupti impedit veniam numquam voluptas dolorem natus corrupti occaecati occaecati ab sed doloremque voluptates ut sit commodi eum quia incidunt velit.', '2', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('15', 'Eveniet voluptatem quos maiores.', 'Et praesentium possimus ut optio accusantium quibusdam nobis fugiat culpa id explicabo cum magni eos sit maiores possimus quia unde ut at ipsum impedit et ea quo veritatis cum sunt blanditiis est neque officia ut nihil aut quos dolores est.', '7', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('16', 'Omnis a est.', 'Quae necessitatibus omnis minus dolorem eligendi cupiditate autem iste rem animi minus at dolorem aut rerum quibusdam veritatis non eos facere hic cupiditate itaque amet nulla perspiciatis quas eius.', '5', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('17', 'Possimus voluptatum at excepturi.', 'Autem dolores molestias odit expedita earum accusantium provident nihil illo odio qui rerum ea voluptas et saepe et ipsam aut vitae minus optio deleniti et quo sunt vero voluptas aut amet est quia ab laborum possimus sit.', '4', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('18', 'Corporis similique et.', 'Quia incidunt maiores eum vel et vero reprehenderit nam officiis fuga quidem facere suscipit perferendis voluptas saepe cumque saepe at dolorum qui ut quis et iste vero aliquid sunt.', '2', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('19', 'Ipsa earum quae veritatis aut.', 'Laudantium provident rem vitae fugiat qui consequatur itaque rem repellendus explicabo aut dolorem vero labore excepturi quidem a ipsum aspernatur cum.', '1', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('20', 'Eveniet occaecati eligendi ex.', 'Libero at hic ea et temporibus atque error nisi ad ullam enim ut et et earum aut excepturi unde facere reprehenderit aut reprehenderit impedit aperiam consequuntur repudiandae eum sed excepturi at in ut est ut excepturi eaque enim qui.', '3', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('21', 'Atque quidem aut quo.', 'Deserunt voluptas non vitae labore quisquam qui libero aut quia ab voluptatem explicabo placeat quia excepturi labore harum delectus et ipsa quidem dicta optio ipsum possimus debitis nesciunt vel reiciendis fugiat ut rem quibusdam.', '4', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('22', 'Repudiandae facere cupiditate ut et.', 'Doloribus sunt necessitatibus quos aperiam sit quis in incidunt consequatur eaque autem cumque consequuntur sapiente quisquam eos tempora in nisi ut sunt libero vitae sit corrupti culpa perspiciatis distinctio aliquid quia minima vel quis ratione.', '3', '2017-05-07 22:00:17', '2017-05-07 22:00:17');
INSERT INTO `topic` VALUES ('23', 'Adipisci eligendi rerum esse.', 'Molestiae fuga omnis tenetur quisquam voluptates unde cumque aut tempore quis aut autem dolorem illo maiores qui dolor provident qui quia dolor architecto blanditiis qui dolor expedita vero nihil quas tenetur id dolor at tenetur deleniti.', '1', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('24', 'Magni aspernatur ut non.', 'Ducimus dolor sapiente quae impedit iste deleniti velit quod maxime aspernatur est aut esse eaque ad illum quaerat nobis est similique animi qui omnis autem quis consequatur voluptas temporibus rerum laudantium corporis.', '6', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('25', 'Amet animi omnis quo inventore.', 'Assumenda architecto neque perferendis vel eos optio qui quo dolorem voluptate qui voluptates qui fugit tempora sint aut explicabo qui cupiditate.', '2', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('26', 'Et provident quasi et cumque.', 'Nobis aut aut voluptatem aut at fugit numquam qui consequatur ea quasi dolor qui perferendis est fugit deserunt quidem ipsum ratione aut et quod nulla ut eaque ducimus non necessitatibus molestias dolorum.', '3', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('27', 'Voluptas perspiciatis eos ea.', 'Autem velit voluptas laborum voluptatem omnis sit officiis quasi optio voluptatem sed et quo delectus reprehenderit occaecati aut labore quibusdam ad nemo enim ipsa nobis consectetur dolor doloremque nesciunt placeat aut esse sunt.', '1', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('28', 'Saepe sed voluptas deleniti rem alias.', 'Quo aut et expedita et in nisi nobis unde ut officiis vitae et doloremque quisquam perferendis et dolores est rerum eius molestias mollitia enim quidem sed praesentium quia aut in voluptatibus laudantium iure excepturi dolorem fugit quam.', '7', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('29', 'Non voluptatem est.', 'Ut non nesciunt amet rerum suscipit enim ut tenetur deserunt ea repellendus natus qui magnam itaque non molestias eum fugit voluptatibus aspernatur maiores iusto eum adipisci ut excepturi doloribus ex ea.', '5', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('30', 'Eligendi veniam sed adipisci.', 'Eius dolores et iusto accusamus est fuga maxime voluptatibus veritatis rerum repellat repellat mollitia voluptas occaecati architecto et eum dolor rerum sed aut.', '6', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('31', 'Porro aut aspernatur.', 'Dolores amet dignissimos fugit nemo ducimus est rerum et quidem cum cumque nobis quia laborum incidunt officia aut laudantium consequuntur ratione dolores molestias ea accusantium quis.', '7', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('32', 'Ab temporibus nostrum placeat itaque.', 'Asperiores ullam ut eum sed sit porro natus tempora quam placeat et officiis quibusdam assumenda consequuntur expedita eaque voluptatum nemo velit neque sequi minima quia aspernatur esse deserunt quas.', '3', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('33', 'Fugit officiis sapiente sint voluptatum.', 'Sequi vel ex iure occaecati beatae aut est necessitatibus similique eum consequatur saepe asperiores mollitia sed ea dignissimos similique ducimus repellat magnam dolor distinctio et hic et quos nesciunt saepe voluptas architecto consequatur iusto.', '5', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('34', 'Atque eum iusto.', 'Ut repellat molestiae sapiente officia cumque ut impedit similique optio ea dolor commodi aut doloribus voluptas architecto corporis voluptatem amet eos molestias vero.', '3', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('35', 'Magni enim aut non est maiores.', 'Ut inventore ut iusto optio quo perferendis ea quam labore sint natus tempora id provident hic temporibus blanditiis perferendis quia ipsam deleniti quos et porro tempora reprehenderit nesciunt eaque deleniti vitae harum non.', '3', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('36', 'Est nemo ab sint repellendus nihil.', 'Corporis eos cupiditate aut sed magni facere perferendis perspiciatis aliquam fugit quaerat consequuntur consectetur officia dolorum laboriosam dolor ducimus accusamus dignissimos tempora.', '2', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('37', 'Sed voluptatum eos error.', 'Quo eos aspernatur ea atque quia qui dolore et qui asperiores debitis deserunt et in velit nisi sit ea in iusto et.', '1', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('38', 'Minus molestias ad nam sed.', 'Velit eum ullam assumenda excepturi vel cum velit optio ad aperiam ut libero est id fugiat saepe labore sit blanditiis.', '6', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('39', 'Quia et earum molestiae.', 'Consectetur quos voluptas beatae eligendi quam eos ea quae omnis perspiciatis mollitia culpa itaque tempore ipsam quidem commodi adipisci a dolor ad alias doloremque et voluptatem dicta suscipit numquam.', '4', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('40', 'Quidem consequatur quibusdam.', 'Amet consectetur beatae rerum nisi atque laboriosam quam ipsum nulla aut deserunt dolorem facere repudiandae iure praesentium labore quia nobis minus veniam sit unde quae aut esse culpa omnis nihil officia occaecati et.', '7', '2017-05-07 22:00:18', '2017-05-07 22:00:18');
INSERT INTO `topic` VALUES ('41', 'Impedit veritatis et.', 'Aspernatur eos et eos voluptas dolores qui eum accusamus eligendi aspernatur ipsa sint illum sapiente architecto qui id sunt nesciunt consectetur dolor.', '6', '2017-05-07 22:00:18', '2017-05-07 22:00:18');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `price` decimal(10,0) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `user_balance` decimal(10,0) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('1', '2', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"25373744645\",\"code_number\":\"25487849091567\",\"_csrf\":\"ck1EdlFySG8fHycuJwYYLSMZNUIFCgVeSgsuLmcgKyscCRcwFS0vKw==\"}', '{\"code\":200,\"money\":\"500\"}', null, '2017-05-07 13:39:50');
INSERT INTO `transaction` VALUES ('2', '2', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"23326112863\",\"code_number\":\"23314014719674\",\"_csrf\":\"dERSX3VicUwZFjEHAxYhDiUQI2shGjx9TAI4B0MwEggaAAEZMT0WCA==\"}', '{\"code\":200,\"money\":\"500\"}', null, '2017-05-07 13:41:30');
INSERT INTO `transaction` VALUES ('3', '2', 'CHARGE_MONEY', '20000', '{\"telco_type\":\"viettel\",\"serial_number\":\"5584022625\",\"code_number\":\"5502423551478\",\"_csrf\":\"YWhGNHpNSnQMOiVsDDkaNjA8NwAuNQdFWS4sbEwfKTAPLBVyPhItMA==\"}', '{\"code\":200,\"money\":\"20\"}', '1320000', '2017-05-07 13:52:09');

-- ----------------------------
-- Table structure for transaction_error
-- ----------------------------
DROP TABLE IF EXISTS `transaction_error`;
CREATE TABLE `transaction_error` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT 'CHARGE_MONEY',
  `code` int(11) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transaction_error
-- ----------------------------
INSERT INTO `transaction_error` VALUES ('1', '1', 'CHARGE_MONEY', '404', null, null, '2017-05-07 12:15:00');
INSERT INTO `transaction_error` VALUES ('2', '1', 'CHARGE_MONEY', '404', null, null, '2017-05-07 12:15:00');
INSERT INTO `transaction_error` VALUES ('3', '1', 'CHARGE_MONEY', '404', null, null, '2017-05-07 12:15:00');
INSERT INTO `transaction_error` VALUES ('4', '1', 'CHARGE_MONEY', '404', null, null, '2017-05-07 12:15:00');
INSERT INTO `transaction_error` VALUES ('5', '1', 'CHARGE_MONEY', '404', null, null, '2017-05-07 12:15:00');
INSERT INTO `transaction_error` VALUES ('6', '2', 'CHARGE_MONEY', '404', null, null, '2017-05-07 12:42:00');
INSERT INTO `transaction_error` VALUES ('7', '2', 'CHARGE_MONEY', '404', null, null, '2017-05-07 13:07:00');
INSERT INTO `transaction_error` VALUES ('8', '2', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"5345345\",\"code_number\":\"3213123\",\"_csrf\":\"Y3ZGTlJ5dkkOJCUWJA0mCzIiN3oGATt4WzAsFmQrFQ0NMhUIFiYRDQ==\"}', '2017-05-07 13:42:00');

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
  `deactive_time` datetime DEFAULT NULL,
  `active_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'schoen.candido', 'ceefa3c572382b7cb78346b4f7330153', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-10 19:07:48', '2017-05-07 12:15:00', '2017-05-08 12:15:00');
INSERT INTO `user` VALUES ('2', 'nannie06', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31', null, null);
INSERT INTO `user` VALUES ('3', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-10 19:59:55', null, null);
INSERT INTO `user` VALUES ('4', 'schumm.shayna', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-10 19:58:45', null, null);
INSERT INTO `user` VALUES ('7', 'trevion27', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:09', '2017-05-10 15:02:09', null, null);
INSERT INTO `user` VALUES ('8', 'piper.ohara', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null);
INSERT INTO `user` VALUES ('9', 'dlesch', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null);
INSERT INTO `user` VALUES ('10', 'laron01', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null);
INSERT INTO `user` VALUES ('11', 'hudson.judd', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null);
INSERT INTO `user` VALUES ('12', 'treva.emard', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null);
INSERT INTO `user` VALUES ('13', 'bgoldner', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null);
INSERT INTO `user` VALUES ('14', 'swift.travis', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null);
INSERT INTO `user` VALUES ('15', 'anya.hudson', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null);
INSERT INTO `user` VALUES ('16', 'hyman10', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null);
INSERT INTO `user` VALUES ('17', 'simone.koch', '96e79218965eb72c92a549dd5a330112', '2', '1', '0', '2017-05-10 16:55:02', '2017-05-10 16:55:02', null, null);
INSERT INTO `user` VALUES ('18', 'admin_18', 'b062daadae0bdc1f036e4bc3145e00ab', '2', '1', '0', '2017-05-10 20:29:42', '2017-05-10 20:29:42', null, null);
