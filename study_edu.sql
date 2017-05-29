/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : study_edu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-30 02:38:00
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
INSERT INTO `admin` VALUES ('1', 'admin', '$2y$13$FdBwweRDXoVFhcSmqQTfPe7Jsix28jVrmgEcb8HZP4/XdJ5qEfyOS', 'Administrator', 'admin@study.edu.vn', 'Programmer', '1994-04-17', '1', '1', '0', '2017-05-10 13:26:18', '[\"1\"]', '0', '1', null, '2017-05-27 15:40:27', null, null);
INSERT INTO `admin` VALUES ('18', 'hd_bichphuong', '$2y$13$oiTgfHQN8DremU1TfZjxVOQlSEgPTpowxT2GasmFf4KH6ohCcebUW', 'bich phuong', '', '', null, '1', '1', '0', '2017-05-27 12:47:33', '[\"4\"]', '0', '18', '2017-05-10 18:02:03', '2017-05-27 12:47:33', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_action
-- ----------------------------
INSERT INTO `admin_action` VALUES ('1', '1', 'Admin', 'Index', 'Danh sách quản trị viên', '2017-05-27 10:45:39');
INSERT INTO `admin_action` VALUES ('2', '1', 'Admin', 'View', 'Xem thông tin quản trị viên', '2017-05-27 10:47:15');
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
INSERT INTO `admin_action` VALUES ('139', '29', 'User', 'ActiveAccount', null, '2017-05-16 01:48:38');
INSERT INTO `admin_action` VALUES ('140', '29', 'User', 'DeleteAccount', null, '2017-05-16 01:48:38');
INSERT INTO `admin_action` VALUES ('141', '31', 'Event', 'Index', null, '2017-05-27 09:48:55');
INSERT INTO `admin_action` VALUES ('142', '31', 'Event', 'View', null, '2017-05-27 09:48:55');
INSERT INTO `admin_action` VALUES ('143', '31', 'Event', 'Create', null, '2017-05-27 09:48:55');
INSERT INTO `admin_action` VALUES ('144', '31', 'Event', 'Update', null, '2017-05-27 09:48:55');
INSERT INTO `admin_action` VALUES ('145', '31', 'Event', 'Delete', null, '2017-05-27 09:48:55');
INSERT INTO `admin_action` VALUES ('146', '32', 'EventGroup', 'Index', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('147', '32', 'EventGroup', 'View', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('148', '32', 'EventGroup', 'Create', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('149', '32', 'EventGroup', 'Update', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('150', '32', 'EventGroup', 'Delete', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('151', '33', 'Lesson', 'Index', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('152', '33', 'Lesson', 'View', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('153', '33', 'Lesson', 'Create', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('154', '33', 'Lesson', 'Update', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('155', '33', 'Lesson', 'Delete', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('156', '34', 'LessonDocument', 'Index', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('157', '34', 'LessonDocument', 'View', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('158', '34', 'LessonDocument', 'Create', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('159', '34', 'LessonDocument', 'Update', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('160', '34', 'LessonDocument', 'Delete', null, '2017-05-27 09:48:56');
INSERT INTO `admin_action` VALUES ('161', '35', 'LessonQuiz', 'Index', null, '2017-05-27 09:48:57');
INSERT INTO `admin_action` VALUES ('162', '35', 'LessonQuiz', 'View', null, '2017-05-27 09:48:57');
INSERT INTO `admin_action` VALUES ('163', '35', 'LessonQuiz', 'Create', null, '2017-05-27 09:48:57');
INSERT INTO `admin_action` VALUES ('164', '35', 'LessonQuiz', 'Update', null, '2017-05-27 09:48:57');
INSERT INTO `admin_action` VALUES ('165', '35', 'LessonQuiz', 'Delete', null, '2017-05-27 09:48:57');
INSERT INTO `admin_action` VALUES ('166', '36', 'Report', 'AccessStatistic', null, '2017-05-27 09:48:57');
INSERT INTO `admin_action` VALUES ('167', '2', 'AdminGroup', 'UpdateController', 'UpdateController', '2017-05-27 12:07:57');
INSERT INTO `admin_action` VALUES ('168', '2', 'AdminGroup', 'UpdateAction', 'UpdateAction', '2017-05-27 12:07:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_controller
-- ----------------------------
INSERT INTO `admin_controller` VALUES ('1', 'Admin', 'Quản lý người quản trị', '2017-05-27 10:42:49');
INSERT INTO `admin_controller` VALUES ('2', 'AdminGroup', 'Nhóm quyền quản trị', '2017-05-27 10:47:49');
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
INSERT INTO `admin_controller` VALUES ('29', 'User', 'User', '2017-05-16 01:48:36');
INSERT INTO `admin_controller` VALUES ('30', 'ElFinder', 'ElFinder', '2017-05-27 09:48:53');
INSERT INTO `admin_controller` VALUES ('31', 'Event', 'Event', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('32', 'EventGroup', 'EventGroup', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('33', 'Lesson', 'Lesson', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('34', 'LessonDocument', 'LessonDocument', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('35', 'LessonQuiz', 'LessonQuiz', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('36', 'Report', 'Report', '2017-05-27 09:48:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_group
-- ----------------------------
INSERT INTO `admin_group` VALUES ('1', 'Administator', 'Quản trị hệ thống, Phát triển hệ thống', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]', '1', '2017-03-08 00:33:05', '2017-05-10 13:33:34');
INSERT INTO `admin_group` VALUES ('2', 'Quản lý hợp đồng', 'Nhóm admin quản lý hợp đồng', '[\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\"]', '1', '2017-05-10 17:27:17', '2017-05-10 17:27:17');
INSERT INTO `admin_group` VALUES ('4', 'Đối soát', '<p><strong>Đối so&aacute;t</strong></p>', '[\"38\",\"39\",\"40\",\"41\",\"42\",\"81\",\"82\",\"83\",\"84\",\"85\",\"166\"]', '1', '2017-05-27 10:50:07', '2017-05-27 12:23:37');

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
  `agreement_type_id` int(11) NOT NULL,
  `mg` float DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: chu xoa, 1: da xoa',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement
-- ----------------------------
INSERT INTO `agreement` VALUES ('1', 'HT/LUYEN THI TOAN/HOCMAI.VN', '1', '11', '2017-03-06', '2017-03-06', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('2', 'HT/LUYEN THI VAT LY/HOCMAI.VN', '1', '11', '2015-07-16', '2015-07-16', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('3', 'MD/LUYEN THI TOAN/MOON.VN', '1', '8', '2016-12-21', '2016-12-21', '1', '343911000', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('4', 'HT/LUYEN THI NGU VAN/CAO NHAT VUONG', '1', '10', '2016-12-03', '2016-12-03', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', null, null, '0');
INSERT INTO `agreement` VALUES ('5', 'MD/LUYEN THI TOAN/TRAN TRUNG HIEU', '1', '3', '2015-08-10', '2015-08-10', '1', '812214', '2017-03-25 10:12:49', '2017-03-25 10:17:00', null, '1', '0');
INSERT INTO `agreement` VALUES ('6', 'HT/LUYEN THI TOAN/VU TU LONG', '1', '2', '2017-05-17', '2017-05-17', '2', null, '2017-05-16 02:03:30', '2017-05-16 02:03:30', '1', '1', '0');

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
  `limit` int(11) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Khoá T1 - Luyện thi THPT Quốc gia môn Toán năm 2017 - Thầy Phạm Sỹ Nam', '[\"7\"]', '2', '<p>Study.EDU thiết kế v&agrave; cung cấp chương tr&igrave;nh <strong>luyện thi to&agrave;n diện</strong> THPT Quốc gia m&ocirc;n To&aacute;n năm 2018 theo <strong>cấu tr&uacute;c MỚI&nbsp;</strong>m&agrave; Bộ Gi&aacute;o Dục v&agrave; Đ&agrave;o Tạo vừa ban h&agrave;nh. Một trong những kh&oacute;a học quan trọng nhất l&agrave; <strong>Kh&oacute;a nền tảng H2</strong> được giảng dạy bởi <strong><em>TS. Phạm Sỹ Nam</em></strong> - Gi&aacute;o vi&ecirc;n To&aacute;n <strong><em>trường THPT Chuy&ecirc;n L&ecirc; Hồng Phong &ndash; TP.HCM</em></strong>; Cựu <strong><em>GV trường THPT Chuy&ecirc;n Phan Bội Ch&acirc;u &ndash; TP.Vinh</em></strong>; Giảng vi&ecirc;n trường <strong><em>Đại Học S&agrave;i G&ograve;n.</em></strong></p>\r\n<p>Kh&oacute;a học n&agrave;y sẽ cung cấp cho c&aacute;c em đầy đủ kiến thức cơ bản, kiến thức trọng t&acirc;m v&agrave; bao qu&aacute;t to&agrave;n diện <strong><strong>chương tr&igrave;nh lớp 12</strong></strong>&nbsp;v&agrave; <strong><strong>nội dung trọng t&acirc;m chương tr&igrave;nh lớp 11 </strong></strong>nhằm chuẩn bị cho k&igrave; thi <strong><strong>THPT Quốc gia m&ocirc;n To&aacute;n năm 2018</strong></strong>&nbsp;đạt kết quả tốt nhất. Phương ph&aacute;p giải to&aacute;n được tr&igrave;nh b&agrave;y một c&aacute;ch hệ thống, dễ hiểu, dễ nhớ th&ocirc;ng qua c&aacute;c v&iacute; dụ minh họa từ cơ bản đến n&acirc;ng cao.</p>\r\n<p>Sau mỗi b&agrave;i giảng c&aacute;c em được luyện tập qua b&agrave;i thi<strong><strong> Trắc nghiệm </strong></strong>với c&aacute;c c&acirc;u hỏi được chọn lọc kĩ lu&otilde;c&oacute; đ&aacute;p &aacute;n v&agrave; lời giải <strong><strong>chi </strong></strong><strong><strong>tiết&nbsp;</strong></strong>nhằm hiểu s&acirc;u l&yacute; thuyết, &aacute;p dụng phương ph&aacute;p giải thuần thục v&agrave; ho&agrave;n thiện kỹ năng l&agrave;m b&agrave;i.</p>\r\n<p>Kết th&uacute;c một số b&agrave;i học quan trọng c&aacute;c em được l&agrave;m c&aacute;c&nbsp;<strong><strong>b&agrave;i kiểm tra trắc nghiệm Online</strong></strong>&nbsp;nhằm đ&aacute;nh gi&aacute; ch&iacute;nh x&aacute;c năng lực tiếp thu kiến thức trong từng phần cụ thể. Cuối c&aacute;c chuy&ecirc;n đề c&aacute;c em được bổ sung th&ecirc;m c&aacute;c b&agrave;i to&aacute;n n&acirc;ng cao v&agrave; tham gia đề <strong><strong>thi trắc nghiệm Online</strong></strong> nhằm đ&aacute;nh gi&aacute; chất lượng m&agrave; c&aacute;c em học chuy&ecirc;n đề đ&oacute; v&agrave; gi&uacute;p c&aacute;c em l&agrave;m quen với loại h&igrave;nh thi trắc nghiệm mới của Bộ GD&amp;ĐT.</p>\r\n<p>Hệ thống phần mềm<strong><strong> ưu</strong></strong> <strong><strong>việt</strong></strong> của <strong><strong>Study.EDU</strong></strong>sẽ theo s&aacute;t qu&aacute; tr&igrave;nh học tập của c&aacute;c em, <strong><strong>chấm điểm</strong></strong>, đưa ra <strong><strong>đ&aacute;nh gi&aacute; năng lực</strong></strong> v&agrave; tư vấn gi&uacute;p c&aacute;c em ho&agrave;n th&agrave;nh việc học của m&igrave;nh một c&aacute;ch hiệu quả nhất.</p>\r\n<p><strong><strong>NỘI DUNG KH&Oacute;A HỌC</strong></strong></p>\r\n<ul>\r\n<li>9 chuy&ecirc;n đề bao qu&aacute;t to&agrave;n bộ chương tr&igrave;nh lớp 12 m&ocirc;n To&aacute;n</li>\r\n<li>1 chuy&ecirc;n đề &ocirc;n tập chương tr&igrave;nh lớp 11 m&ocirc;n To&aacute;n.</li>\r\n<li>89 video b&agrave;i giảng b&agrave;i giảng gi&uacute;p c&aacute;c em nắm vững kiến thức m&ocirc;n To&aacute;n.</li>\r\n<li>23 đề trắc nghiệm kiểm tra online c&oacute; video hướng dẫn sửa.</li>\r\n<li>Hơn 500 b&agrave;i tập tự luận v&agrave; trắc nghiệm c&oacute; lời giải chi tiết.</li>\r\n</ul>\r\n<p>Ch&uacute;c c&aacute;c em c&oacute; những giờ học th&uacute; vị, bổ &iacute;ch v&agrave; hiệu quả qua sự dẫn dắt của Thầy&nbsp;<strong><strong>TS.</strong></strong>&nbsp;<strong><strong><em>Phạm Sỹ Nam</em></strong></strong>!</p>', '2017-06-10', '0', '0', '0', null, '300000', '1', '1', '0', '2017-05-28 15:47:02', '2017-05-28 16:04:20');

-- ----------------------------
-- Table structure for course_news
-- ----------------------------
DROP TABLE IF EXISTS `course_news`;
CREATE TABLE `course_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(700) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_news
-- ----------------------------

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
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `event_group` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `point` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES ('1', 'Đăng ký tài khoản ngay hôm nay tại hệ thống STUDY.EDU', '0', '', '300', '1', null, null);
INSERT INTO `event` VALUES ('2', 'Trở thành thành viên tích cực nhất của STUDY.EDU', '0', '', '0', '1', null, null);
INSERT INTO `event` VALUES ('3', 'Tặng ngay 50% khi nạp tiền trong ngày hôm nay', '0', '', '0', '1', null, null);
INSERT INTO `event` VALUES ('4', 'Đua thành tích để nhận những phần thưởng giá trị', '0', '', '0', '1', null, null);

-- ----------------------------
-- Table structure for event_group
-- ----------------------------
DROP TABLE IF EXISTS `event_group`;
CREATE TABLE `event_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_group
-- ----------------------------

-- ----------------------------
-- Table structure for event_log
-- ----------------------------
DROP TABLE IF EXISTS `event_log`;
CREATE TABLE `event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `experience` int(11) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_log
-- ----------------------------

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
-- Table structure for free_student_course
-- ----------------------------
DROP TABLE IF EXISTS `free_student_course`;
CREATE TABLE `free_student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `number_lesson_learning` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of free_student_course
-- ----------------------------
INSERT INTO `free_student_course` VALUES ('2', '3', '17', '2');
INSERT INTO `free_student_course` VALUES ('3', '3', '11', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_file
-- ----------------------------
INSERT INTO `import_file` VALUES ('3', 'Chuyên đề môn Toán', '1', 'topic_subject', '2017-05-28 03:43:40', '2017-05-28 03:43:40', '1', '1');
INSERT INTO `import_file` VALUES ('4', 'Đề thi thử THPT môn Toán', '1', 'quiz', '2017-05-28 10:14:41', '2017-05-28 10:14:41', '1', '1');
INSERT INTO `import_file` VALUES ('5', 'Đề thi thử THPT môn Lịch sử part 1', '1', 'quiz', '2017-05-28 11:19:53', '2017-05-28 11:19:53', '1', '1');
INSERT INTO `import_file` VALUES ('6', 'Câu hỏi đề thi thử THPT môn Lịch sử - Đề số 1', '1', 'question_quiz', '2017-05-28 11:29:37', '2017-05-28 11:29:37', '1', '1');

-- ----------------------------
-- Table structure for import_question
-- ----------------------------
DROP TABLE IF EXISTS `import_question`;
CREATE TABLE `import_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_content` varchar(500) DEFAULT NULL,
  `question_solution` varchar(500) DEFAULT NULL,
  `answer_1` varchar(500) DEFAULT NULL,
  `answer_2` varchar(500) DEFAULT NULL,
  `answer_3` varchar(500) DEFAULT NULL,
  `answer_4` varchar(500) DEFAULT NULL,
  `answer_5` varchar(500) DEFAULT NULL,
  `answer_6` varchar(500) DEFAULT NULL,
  `ans_true` int(3) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1: da xu ly, 0: chua xu ly',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_question
-- ----------------------------
INSERT INTO `import_question` VALUES ('1', '4', 'Hội nghị Ianta (2-1945) không đưa ra quyết định nào dưới đây?', '', 'Thành lập tổ chức Liên hợp quốc.', 'Giải giáp quân Nhật ở Đông Dương', 'Tiêu diệt tận gốc chủ nghĩa phát xít.', 'Tiêu diệt tận gốc chủ nghĩa phát xít.', '', '', '1', '1');
INSERT INTO `import_question` VALUES ('2', '4', 'Ngày 24-10-1945, sau khi Quốc hội các nước thành viên phê chuẩn, bản Hiến chương của Liên hợp quốc\n', '', 'được bổ sung, hoàn chỉnh.', 'chính thức được công bố.', 'B. chính thức được công bố.', 'được chính thức thông qua', '', '', '2', '1');
INSERT INTO `import_question` VALUES ('3', '4', 'Những năm đầu sau khi Liên Xô tan rã, Liên bang Nga thực hiện chính sách đối ngoại ngả về phương Tây với hi vọng\n', '', 'thành lập một liên minh chính trị ở châu Âu', 'xây dựng một liên minh kinh tế lớn ở châu Âu', 'nhận được sự ủng hộ về chính trị và sự viện trợ về kinh tế', ' tăng cường hợp tác khoa học-kĩ thuật với các nước châu Âu', '', '', '3', '1');
INSERT INTO `import_question` VALUES ('4', '4', 'Tại Quốc hội Mĩ (12-3-1947), Tổng thống Truman đề nghị?', '', ' tăng cường hợp tác khoa học-kĩ thuật với các nước châu Âu', ' tăng cường hợp tác khoa học-kĩ thuật với các nước châu Âu', 'thực hiện Kế hoạch Mácsan, giúp Tây Âu phục hồi kinh tế.', 'viện trợ khẩn cấp 400 triệu USD cho Hi Lạp và Thổ Nhĩ Kì', '', '', '2', '1');

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
  `video_name` varchar(255) DEFAULT NULL,
  `time_length` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `number_view` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active, 0: inactive',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '1: deleted, 0: not delete',
  `publish_date` date DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES ('15', '1', 'Tìm Khoảng Đơn Điệu Của Hàm Số', '<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">B&agrave;i giảng sẽ gi&uacute;p c&aacute;c em nắm được kiến thức cơ bản về c&aacute;ch t&igrave;m khoảng đơn điệu của h&agrave;m số như:</p>\r\n<ul>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">Định nghĩa</span></li>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">Điều kiện đủ để h&agrave;m số đơn điệu</span></li>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">C&aacute;c bước t&igrave;m khoảng đơn điệu của h&agrave;m số</span></li>\r\n</ul>', 'https://www.youtube.com/watch?v=_p1gDjihbXk', null, '23', '1', '0', '1', '0', '2017-05-28', '2017-05-14 04:17:00', '2017-05-28 16:15:52');
INSERT INTO `lesson` VALUES ('144', '1', 'Tìm Tham Số Để Hàm Số Đơn Điệu Trên Một Miền', '<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">B&agrave;i giảng sẽ gi&uacute;p c&aacute;c em nắm được kiến thức cơ bản về c&aacute;ch t&igrave;m tham số để h&agrave;m số đơn điệu tr&ecirc;n một miền như:</p>\r\n<ul>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">C&ocirc;ng thức t&iacute;nh.</span></li>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">Điều kiện đủ để h&agrave;m số đơn điệu tr&ecirc;n một miền.</span></li>\r\n</ul>', 'https://www.youtube.com/watch?v=SAvJwbilrcI', null, '16', '2', '0', '1', '0', '2017-05-29', '2017-05-14 04:17:07', '2017-05-28 16:19:27');
INSERT INTO `lesson` VALUES ('1002', '1', 'Ứng dụng tính đơn điệu giải phương trình', '<p><span style=\"color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">B&agrave;i giảng sẽ gi&uacute;p c&aacute;c em nắm kỹ hơn về l&yacute; thuyết v&agrave; một số v&iacute; dụ cụ thể về ứng dụng t&iacute;nh đơn điệu giải phương tr&igrave;nh.</span></p>', 'https://www.youtube.com/watch?v=-FDA6Wga574', null, null, null, '0', '1', '0', null, '2017-05-29 21:51:40', '2017-05-29 21:51:40');
INSERT INTO `lesson` VALUES ('1003', '1', 'Ứng dụng tính đơn điệu giải bất phương trình', '<p><span style=\"color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">B&agrave;i giảng Ứng dụng t&iacute;nh đơn điệu giải bất phương tr&igrave;nh sẽ gi&uacute;p c&aacute;c em nắm được l&yacute; thuyết v&agrave; b&agrave;i tập để c&aacute;c em củng cố kiến thức.</span></p>', '', null, null, null, '0', '0', '0', '2017-05-31', '2017-05-29 21:53:53', '2017-05-29 21:53:53');

-- ----------------------------
-- Table structure for lesson_comment
-- ----------------------------
DROP TABLE IF EXISTS `lesson_comment`;
CREATE TABLE `lesson_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `lesson_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_comment
-- ----------------------------

-- ----------------------------
-- Table structure for lesson_document
-- ----------------------------
DROP TABLE IF EXISTS `lesson_document`;
CREATE TABLE `lesson_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_document
-- ----------------------------
INSERT INTO `lesson_document` VALUES ('3', '10', 'mau-de-cuong-nghien-cuu-do-an-tn-ck14.doc', '2017-05-16 12:18:04');
INSERT INTO `lesson_document` VALUES ('4', '10', 'datn-template-cntt-2012-1-.doc', '2017-05-16 12:18:04');
INSERT INTO `lesson_document` VALUES ('5', '158', 'bai-02-2.pdf', '2017-05-16 22:32:49');
INSERT INTO `lesson_document` VALUES ('6', '158', 'mau-de-cuong-nghien-cuu-do-an-tn-ck14.doc', '2017-05-16 22:32:49');
INSERT INTO `lesson_document` VALUES ('7', '15', 'thiet-ke-chi-tiet-cac-bieu-do-lop.pdf', '2017-05-29 22:24:02');
INSERT INTO `lesson_document` VALUES ('8', '15', 'yiruma-as-you-wish.pdf', '2017-05-29 21:55:04');

-- ----------------------------
-- Table structure for lesson_quiz
-- ----------------------------
DROP TABLE IF EXISTS `lesson_quiz`;
CREATE TABLE `lesson_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `pass_exam` int(11) DEFAULT '0',
  `total_question` int(11) DEFAULT '0',
  `time_length` int(11) DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_quiz
-- ----------------------------
INSERT INTO `lesson_quiz` VALUES ('1', '1', '15', '3', '5', '10');
INSERT INTO `lesson_quiz` VALUES ('2', '1', '15', '3', '5', '10');
INSERT INTO `lesson_quiz` VALUES ('3', '1', '15', '4', '6', '10');
INSERT INTO `lesson_quiz` VALUES ('92', '1', '15', '6', '10', '10');

-- ----------------------------
-- Table structure for lesson_quiz_question
-- ----------------------------
DROP TABLE IF EXISTS `lesson_quiz_question`;
CREATE TABLE `lesson_quiz_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_quiz_question
-- ----------------------------
INSERT INTO `lesson_quiz_question` VALUES ('1', '15', '1', '<p>Đường thẳng n&agrave;o sau đ&acirc;y l&agrave; tiệm cận đứng của đồ thị h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mstyle displaystyle=\"false\"><mfrac><mrow><mn>2</mn><mi>x</mi><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>1</mn></mrow><mrow><mi>x</mi><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>1</mn></mrow></mfrac></mstyle></math></p>');

-- ----------------------------
-- Table structure for lesson_quiz_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `lesson_quiz_question_answer`;
CREATE TABLE `lesson_quiz_question_answer` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ans_content` varchar(255) NOT NULL,
  `is_true` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2773 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_quiz_question_answer
-- ----------------------------
INSERT INTO `lesson_quiz_question_answer` VALUES ('1', '15', '1', '<p>H&agrave;m số nghịch biến tr&ecirc;n khoảng <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced><mstyle displaystyle=\"false\"><mfrac><mn>1</mn><mn>3</mn></mfrac><mo>;</mo><mo>&#160;</mo><mn>1</mn></mstyle></mfenced></math></p>', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2', '15', '1', 'Et voluptas eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('3', '15', '1', 'Voluptatibus et perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('4', '15', '1', 'In quam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('5', '15', '2', 'Id rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('6', '15', '2', 'Deleniti aspernatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('7', '15', '2', 'Enim illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('8', '15', '2', 'Recusandae voluptatum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('9', '15', '3', 'Excepturi placeat unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('10', '15', '3', 'Alias consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('11', '15', '3', 'Eligendi maxime sequi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('12', '15', '3', 'Ut odio nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('13', '15', '4', 'Minus adipisci sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('14', '15', '4', 'Numquam voluptatibus culpa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('15', '15', '4', 'Beatae nam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('16', '15', '4', 'Qui ipsum quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('17', '15', '5', 'Suscipit nostrum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('18', '15', '5', 'Quia aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('19', '15', '5', 'Quia nam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('20', '15', '5', 'Explicabo amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('21', '15', '6', 'Veritatis est nihil.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('22', '15', '6', 'Nihil molestiae est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('23', '15', '6', 'Qui aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('24', '15', '6', 'Veniam minima.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('25', '15', '7', 'Dolore ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('26', '15', '7', 'Labore ut ab.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('27', '15', '7', 'Nam voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('28', '15', '7', 'Temporibus debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('29', '15', '8', 'Repellat est harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('30', '15', '8', 'Natus odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('31', '15', '8', 'Quia quidem voluptates.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('32', '15', '8', 'Sequi maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('33', '15', '9', 'Et odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('34', '15', '9', 'Totam rerum vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('35', '15', '9', 'Asperiores libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('36', '15', '9', 'Est dolores harum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('37', '15', '10', 'Natus voluptas deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('38', '15', '10', 'Deserunt ipsam qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('39', '15', '10', 'Inventore explicabo est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('40', '15', '10', 'Est ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('41', '15', '11', 'Porro inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('42', '15', '11', 'Hic rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('43', '15', '11', 'In voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('44', '15', '11', 'Suscipit et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('45', '15', '12', 'Quaerat laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('46', '15', '12', 'Adipisci quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('47', '15', '12', 'Cum aspernatur nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('48', '15', '12', 'Nisi illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('49', '15', '13', 'Quia sunt consectetur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('50', '15', '13', 'Nihil suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('51', '15', '13', 'Est saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('52', '15', '13', 'Ea numquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('53', '15', '14', 'Et aut sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('54', '15', '14', 'Alias aut voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('55', '15', '14', 'Totam itaque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('56', '15', '14', 'At et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('57', '15', '15', 'Est eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('58', '15', '15', 'Sit dolorem vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('59', '15', '15', 'Dicta enim voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('60', '15', '15', 'Rerum autem reiciendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('61', '15', '16', 'Voluptatum earum illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('62', '15', '16', 'Nihil veritatis enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('63', '15', '16', 'Ea vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('64', '15', '16', 'Pariatur sint ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('65', '144', '17', 'Sunt eligendi et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('66', '144', '17', 'Occaecati perferendis cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('67', '144', '17', 'Et vitae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('68', '144', '17', 'Quis rerum ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('69', '144', '18', 'Eveniet rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('70', '144', '18', 'Eveniet voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('71', '144', '18', 'Facilis non consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('72', '144', '18', 'Expedita soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('73', '144', '19', 'Voluptatum nihil aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('74', '144', '19', 'Voluptas sit minus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('75', '144', '19', 'Suscipit similique laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('76', '144', '19', 'Ea consectetur tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('77', '144', '20', 'Praesentium earum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('78', '144', '20', 'Voluptatem ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('79', '144', '20', 'Laborum ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('80', '144', '20', 'Vero eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('81', '144', '21', 'Ad voluptate qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('82', '144', '21', 'Non voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('83', '144', '21', 'Qui ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('84', '144', '21', 'Eaque animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('85', '144', '22', 'Neque quaerat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('86', '144', '22', 'Quia voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('87', '144', '22', 'Et sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('88', '144', '22', 'Qui eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('89', '144', '23', 'Optio saepe recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('90', '144', '23', 'Non sed culpa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('91', '144', '23', 'Modi et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('92', '144', '23', 'Rerum quidem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('93', '144', '24', 'Ut corporis dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('94', '144', '24', 'Labore assumenda.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('95', '144', '24', 'A voluptatem nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('96', '144', '24', 'Consequatur provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('97', '144', '25', 'Quia qui saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('98', '144', '25', 'Aut neque nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('99', '144', '25', 'Aliquam est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('100', '144', '25', 'Est et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('101', '144', '26', 'Et magnam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('102', '144', '26', 'Sit voluptatibus est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('103', '144', '26', 'Est id quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('104', '144', '26', 'Totam neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('105', '144', '27', 'Reprehenderit sit corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('106', '144', '27', 'Cumque sed fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('107', '144', '27', 'Voluptatem facilis animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('108', '144', '27', 'Laboriosam repellat facilis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('109', '144', '28', 'Dolor sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('110', '144', '28', 'Doloribus et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('111', '144', '28', 'Pariatur non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('112', '144', '28', 'Facere eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('113', '144', '29', 'Voluptatibus rerum voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('114', '144', '29', 'Quam suscipit reprehenderit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('115', '144', '29', 'Eius qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('116', '144', '29', 'Amet maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('117', '144', '30', 'Nostrum eius.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('118', '144', '30', 'Aspernatur inventore ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('119', '144', '30', 'Distinctio omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('120', '144', '30', 'Non cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('121', '144', '31', 'Ut dolorum quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('122', '144', '31', 'Ratione molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('123', '144', '31', 'Molestiae non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('124', '144', '31', 'Similique tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('125', '144', '32', 'Nulla laudantium officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('126', '144', '32', 'Iusto nobis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('127', '144', '32', 'Quia quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('128', '144', '32', 'Est autem et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('129', '144', '33', 'Exercitationem exercitationem inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('130', '144', '33', 'Aut magni sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('131', '144', '33', 'Ab quisquam sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('132', '144', '33', 'Et pariatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('133', '144', '34', 'Autem similique molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('134', '144', '34', 'Natus nostrum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('135', '144', '34', 'Ut occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('136', '144', '34', 'Accusantium hic.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('137', '144', '35', 'Est ex ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('138', '144', '35', 'Minus iste exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('139', '144', '35', 'Accusantium qui repellat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('140', '144', '35', 'Consequatur libero fuga.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('141', '144', '36', 'At laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('142', '144', '36', 'Aliquam sed necessitatibus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('143', '144', '36', 'Repellat odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('144', '144', '36', 'Aspernatur et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('145', '144', '37', 'Quas voluptate sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('146', '144', '37', 'Qui eligendi consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('147', '144', '37', 'Corporis rerum rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('148', '144', '37', 'Similique qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('149', '153', '38', 'Iste iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('150', '153', '38', 'Nisi optio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('151', '153', '38', 'Eos autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('152', '153', '38', 'Architecto sint tempora.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('153', '153', '39', 'Placeat qui soluta.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('154', '153', '39', 'Quisquam iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('155', '153', '39', 'Dolores id ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('156', '153', '39', 'Explicabo quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('157', '153', '40', 'Laudantium tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('158', '153', '40', 'Nemo qui saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('159', '153', '40', 'Id rerum placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('160', '153', '40', 'Excepturi ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('161', '153', '41', 'Delectus maiores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('162', '153', '41', 'Fugiat tempore aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('163', '153', '41', 'Aut est voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('164', '153', '41', 'Dignissimos maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('165', '153', '42', 'Et nemo expedita.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('166', '153', '42', 'Voluptatum eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('167', '153', '42', 'Odit earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('168', '153', '42', 'Distinctio id rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('169', '153', '43', 'Distinctio distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('170', '153', '43', 'Omnis et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('171', '153', '43', 'Nostrum qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('172', '153', '43', 'Saepe cumque corporis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('173', '153', '44', 'Quia vel dicta.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('174', '153', '44', 'Ut optio qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('175', '153', '44', 'Delectus et velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('176', '153', '44', 'Libero accusamus et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('177', '153', '45', 'Vero sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('178', '153', '45', 'Totam maiores et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('179', '153', '45', 'Itaque illo blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('180', '153', '45', 'Et cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('181', '153', '46', 'Commodi in.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('182', '153', '46', 'Consequatur quibusdam eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('183', '153', '46', 'Mollitia ipsum rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('184', '153', '46', 'Voluptatibus enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('185', '153', '47', 'Nobis et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('186', '153', '47', 'Eum cum et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('187', '153', '47', 'Suscipit atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('188', '153', '47', 'Et perspiciatis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('189', '153', '48', 'Sed est at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('190', '153', '48', 'Consequatur error dolorum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('191', '153', '48', 'Non repudiandae voluptates.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('192', '153', '48', 'Et dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('193', '153', '49', 'Dolorem corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('194', '153', '49', 'Omnis natus maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('195', '153', '49', 'Odio dolorum expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('196', '153', '49', 'Eveniet voluptates omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('197', '153', '50', 'Nam excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('198', '153', '50', 'Voluptatem maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('199', '153', '50', 'Odit voluptatibus suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('200', '153', '50', 'Quos expedita.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('201', '153', '51', 'Neque voluptatum qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('202', '153', '51', 'Soluta consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('203', '153', '51', 'Facere est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('204', '153', '51', 'Doloremque repellat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('205', '153', '52', 'Quibusdam blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('206', '153', '52', 'Fugit autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('207', '153', '52', 'Iusto ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('208', '153', '52', 'Magnam consequatur qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('209', '153', '53', 'Sed dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('210', '153', '53', 'Veritatis officiis eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('211', '153', '53', 'Aut autem eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('212', '153', '53', 'Sunt animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('213', '153', '54', 'Vitae eaque neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('214', '153', '54', 'Quibusdam earum aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('215', '153', '54', 'At quibusdam ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('216', '153', '54', 'Qui vitae nesciunt.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('217', '153', '55', 'Recusandae fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('218', '153', '55', 'Sunt repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('219', '153', '55', 'Cumque minima sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('220', '153', '55', 'Debitis illum occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('221', '153', '56', 'Exercitationem consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('222', '153', '56', 'Nulla aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('223', '153', '56', 'Ducimus sit accusantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('224', '153', '56', 'Aliquid mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('225', '153', '57', 'Sit rerum ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('226', '153', '57', 'Perferendis corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('227', '153', '57', 'Tempore tenetur velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('228', '153', '57', 'Ex eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('229', '153', '58', 'Ratione dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('230', '153', '58', 'Totam natus doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('231', '153', '58', 'Inventore aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('232', '153', '58', 'Autem quia pariatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('233', '153', '59', 'Illum ea est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('234', '153', '59', 'Odit excepturi corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('235', '153', '59', 'Esse quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('236', '153', '59', 'Et nam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('237', '190', '60', 'A quam natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('238', '190', '60', 'Non neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('239', '190', '60', 'Rerum odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('240', '190', '60', 'Voluptatum aliquam fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('241', '190', '61', 'Velit odio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('242', '190', '61', 'Quos neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('243', '190', '61', 'Tempora enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('244', '190', '61', 'Aut quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('245', '190', '62', 'Odio neque iure.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('246', '190', '62', 'Laboriosam quo adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('247', '190', '62', 'Aut maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('248', '190', '62', 'Consectetur nobis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('249', '190', '63', 'Nihil aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('250', '190', '63', 'Aspernatur quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('251', '190', '63', 'Temporibus temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('252', '190', '63', 'Odio provident pariatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('253', '190', '64', 'Vel sunt eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('254', '190', '64', 'Dignissimos ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('255', '190', '64', 'Non rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('256', '190', '64', 'Deserunt eaque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('257', '190', '65', 'Iure sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('258', '190', '65', 'Aut dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('259', '190', '65', 'Ipsam commodi rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('260', '190', '65', 'Quos ut quaerat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('261', '190', '66', 'Non nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('262', '190', '66', 'Quis ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('263', '190', '66', 'Optio deleniti perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('264', '190', '66', 'Ipsum et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('265', '190', '67', 'Corrupti nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('266', '190', '67', 'Reprehenderit aut neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('267', '190', '67', 'Ullam et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('268', '190', '67', 'Quibusdam quas ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('269', '190', '68', 'Voluptatem sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('270', '190', '68', 'Magni et et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('271', '190', '68', 'Est illo adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('272', '190', '68', 'Odit consectetur aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('273', '190', '69', 'Quibusdam porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('274', '190', '69', 'Est a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('275', '190', '69', 'Est perspiciatis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('276', '190', '69', 'Voluptatem sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('277', '190', '70', 'Sit commodi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('278', '190', '70', 'Labore ipsam veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('279', '190', '70', 'Id illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('280', '190', '70', 'Facilis qui ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('281', '190', '71', 'Voluptas ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('282', '190', '71', 'Tenetur officiis architecto.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('283', '190', '71', 'Nisi odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('284', '190', '71', 'Tempora in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('285', '190', '72', 'Sequi corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('286', '190', '72', 'Sit sit sequi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('287', '190', '72', 'Dicta est qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('288', '190', '72', 'Repellat quia quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('289', '190', '73', 'Odit atque veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('290', '190', '73', 'Nihil aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('291', '190', '73', 'Quia ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('292', '190', '73', 'Odio similique.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('293', '190', '74', 'Nobis quia est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('294', '190', '74', 'Aliquid odit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('295', '190', '74', 'Cumque aut aspernatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('296', '190', '74', 'Nemo vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('297', '190', '75', 'Corrupti totam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('298', '190', '75', 'Consequatur voluptate quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('299', '190', '75', 'Aut sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('300', '190', '75', 'Tenetur voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('301', '190', '76', 'Ut accusantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('302', '190', '76', 'Voluptas occaecati incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('303', '190', '76', 'Officiis cumque neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('304', '190', '76', 'Ab nihil.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('305', '190', '77', 'Provident architecto maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('306', '190', '77', 'Non voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('307', '190', '77', 'Ipsam ex quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('308', '190', '77', 'Quia aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('309', '308', '78', 'Ut illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('310', '308', '78', 'Dolores soluta.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('311', '308', '78', 'Voluptas temporibus eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('312', '308', '78', 'Maiores aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('313', '308', '79', 'Atque quia dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('314', '308', '79', 'Debitis ad illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('315', '308', '79', 'Nihil velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('316', '308', '79', 'Dicta quia architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('317', '308', '80', 'Magni maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('318', '308', '80', 'Harum soluta sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('319', '308', '80', 'Voluptatem et asperiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('320', '308', '80', 'Repudiandae ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('321', '308', '81', 'Asperiores voluptatem unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('322', '308', '81', 'Est quibusdam sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('323', '308', '81', 'Sed et et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('324', '308', '81', 'Et quo delectus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('325', '308', '82', 'Dicta non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('326', '308', '82', 'Beatae sed dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('327', '308', '82', 'Soluta exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('328', '308', '82', 'Ea non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('329', '308', '83', 'Repellat voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('330', '308', '83', 'Doloremque a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('331', '308', '83', 'Delectus occaecati accusamus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('332', '308', '83', 'Ea impedit temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('333', '308', '84', 'Sit vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('334', '308', '84', 'Sunt aut voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('335', '308', '84', 'Nostrum omnis rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('336', '308', '84', 'Vero ut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('337', '308', '85', 'Error optio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('338', '308', '85', 'Consequatur quidem eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('339', '308', '85', 'Doloremque consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('340', '308', '85', 'Consequatur ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('341', '308', '86', 'Et facere mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('342', '308', '86', 'Molestiae culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('343', '308', '86', 'Aperiam quam enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('344', '308', '86', 'Facilis fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('345', '308', '87', 'Enim exercitationem voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('346', '308', '87', 'Voluptatem aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('347', '308', '87', 'Rerum quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('348', '308', '87', 'Accusamus assumenda ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('349', '308', '88', 'Labore sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('350', '308', '88', 'Reprehenderit qui deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('351', '308', '88', 'Fugiat saepe culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('352', '308', '88', 'Dolor architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('353', '308', '89', 'Ad velit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('354', '308', '89', 'Perferendis exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('355', '308', '89', 'Vero in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('356', '308', '89', 'Quo id quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('357', '308', '90', 'Quo aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('358', '308', '90', 'Sed ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('359', '308', '90', 'Consequatur ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('360', '308', '90', 'Velit eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('361', '308', '91', 'Sapiente hic quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('362', '308', '91', 'Qui vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('363', '308', '91', 'Consequatur rem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('364', '308', '91', 'Occaecati tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('365', '308', '92', 'Suscipit amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('366', '308', '92', 'Optio eius eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('367', '308', '92', 'Nihil incidunt et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('368', '308', '92', 'Molestias eum ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('369', '308', '93', 'Assumenda quas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('370', '308', '93', 'Sit velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('371', '308', '93', 'Quia nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('372', '308', '93', 'Tempore impedit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('373', '308', '94', 'Aperiam minus ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('374', '308', '94', 'Iusto autem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('375', '308', '94', 'Necessitatibus omnis incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('376', '308', '94', 'Error consequatur qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('377', '308', '95', 'Voluptatem culpa perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('378', '308', '95', 'Autem ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('379', '308', '95', 'Sed ratione.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('380', '308', '95', 'Facere rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('381', '308', '96', 'Et minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('382', '308', '96', 'Minima consequuntur rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('383', '308', '96', 'Praesentium rem accusamus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('384', '308', '96', 'Nesciunt rerum id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('385', '308', '97', 'Quod impedit suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('386', '308', '97', 'Aspernatur quasi ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('387', '308', '97', 'Ut blanditiis voluptate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('388', '308', '97', 'Voluptatem ducimus voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('389', '308', '98', 'Consectetur est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('390', '308', '98', 'Rerum quibusdam autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('391', '308', '98', 'Nostrum voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('392', '308', '98', 'Eligendi reiciendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('393', '308', '99', 'Quo quia distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('394', '308', '99', 'Porro perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('395', '308', '99', 'Sint quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('396', '308', '99', 'Quae repudiandae animi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('397', '308', '100', 'Vitae ratione qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('398', '308', '100', 'Libero animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('399', '308', '100', 'Adipisci sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('400', '308', '100', 'Ipsum et laborum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('401', '308', '101', 'Sequi et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('402', '308', '101', 'Laudantium aut ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('403', '308', '101', 'Deserunt dicta praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('404', '308', '101', 'Qui nesciunt eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('405', '308', '102', 'Nobis voluptate ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('406', '308', '102', 'Accusantium porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('407', '308', '102', 'Et fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('408', '308', '102', 'Id ut nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('409', '367', '103', 'Autem voluptatum sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('410', '367', '103', 'Accusantium atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('411', '367', '103', 'Modi quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('412', '367', '103', 'Perferendis est molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('413', '367', '104', 'Et voluptates ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('414', '367', '104', 'Ratione quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('415', '367', '104', 'Dolor suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('416', '367', '104', 'Ipsa nam eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('417', '367', '105', 'Ipsa aut dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('418', '367', '105', 'Voluptate eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('419', '367', '105', 'Est est omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('420', '367', '105', 'Voluptatibus debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('421', '367', '106', 'Voluptate enim et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('422', '367', '106', 'Assumenda tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('423', '367', '106', 'Corrupti itaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('424', '367', '106', 'Assumenda eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('425', '367', '107', 'Sunt ipsa rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('426', '367', '107', 'Repellendus consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('427', '367', '107', 'Omnis praesentium sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('428', '367', '107', 'Voluptatem enim.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('429', '367', '108', 'Quis et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('430', '367', '108', 'Eum est et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('431', '367', '108', 'Amet mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('432', '367', '108', 'Veritatis deleniti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('433', '367', '109', 'Quas est eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('434', '367', '109', 'Amet earum porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('435', '367', '109', 'Et natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('436', '367', '109', 'Tenetur voluptatem provident.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('437', '367', '110', 'Atque maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('438', '367', '110', 'Aliquid eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('439', '367', '110', 'Quisquam dicta neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('440', '367', '110', 'Natus aut in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('441', '367', '111', 'Omnis voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('442', '367', '111', 'Ipsum perferendis dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('443', '367', '111', 'Vel voluptatem voluptates.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('444', '367', '111', 'Consequatur voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('445', '367', '112', 'Sed ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('446', '367', '112', 'Ut iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('447', '367', '112', 'Accusantium magnam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('448', '367', '112', 'Dolores officiis sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('449', '367', '113', 'Quia ut sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('450', '367', '113', 'Possimus sint.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('451', '367', '113', 'Consequuntur provident sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('452', '367', '113', 'Est non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('453', '367', '114', 'Vero qui explicabo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('454', '367', '114', 'Voluptate rem porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('455', '367', '114', 'Rerum eius ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('456', '367', '114', 'Voluptatem voluptas tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('457', '367', '115', 'Nostrum quaerat laboriosam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('458', '367', '115', 'Et deserunt tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('459', '367', '115', 'Ut ut ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('460', '367', '115', 'Culpa delectus accusamus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('461', '367', '116', 'Architecto voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('462', '367', '116', 'Magnam itaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('463', '367', '116', 'Voluptatibus aliquid voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('464', '367', '116', 'Velit est quo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('465', '367', '117', 'Ut ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('466', '367', '117', 'Sed voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('467', '367', '117', 'Maiores iure sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('468', '367', '117', 'Rerum ullam dolorum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('469', '367', '118', 'Eveniet nemo excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('470', '367', '118', 'Tempore aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('471', '367', '118', 'Dignissimos sed quam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('472', '367', '118', 'Est id doloremque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('473', '367', '119', 'Sint enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('474', '367', '119', 'Voluptas nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('475', '367', '119', 'Accusamus id voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('476', '367', '119', 'Tenetur et molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('477', '369', '120', 'Fuga dicta.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('478', '369', '120', 'Recusandae molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('479', '369', '120', 'Adipisci blanditiis deserunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('480', '369', '120', 'Laudantium molestias ullam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('481', '369', '121', 'Eos tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('482', '369', '121', 'Aut quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('483', '369', '121', 'Quos qui dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('484', '369', '121', 'Beatae labore ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('485', '369', '122', 'Ut a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('486', '369', '122', 'Qui suscipit veritatis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('487', '369', '122', 'Sunt eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('488', '369', '122', 'Voluptatem officia molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('489', '369', '123', 'Consequatur minus magni.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('490', '369', '123', 'Et est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('491', '369', '123', 'Sequi quis eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('492', '369', '123', 'Est et est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('493', '369', '124', 'Autem deleniti similique.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('494', '369', '124', 'Quos non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('495', '369', '124', 'Et laborum ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('496', '369', '124', 'Occaecati fuga deserunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('497', '369', '125', 'Mollitia quae est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('498', '369', '125', 'Et suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('499', '369', '125', 'Voluptas odit fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('500', '369', '125', 'Ut omnis voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('501', '369', '126', 'Atque temporibus modi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('502', '369', '126', 'Eos qui ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('503', '369', '126', 'Autem perferendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('504', '369', '126', 'Ut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('505', '369', '127', 'Dolore quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('506', '369', '127', 'Eos laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('507', '369', '127', 'Totam ab harum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('508', '369', '127', 'Quibusdam voluptatem assumenda.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('509', '369', '128', 'Ullam quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('510', '369', '128', 'Rerum facilis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('511', '369', '128', 'Ullam est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('512', '369', '128', 'Qui blanditiis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('513', '369', '129', 'Ab explicabo quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('514', '369', '129', 'Illum quia quos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('515', '369', '129', 'Ut sunt tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('516', '369', '129', 'Est ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('517', '369', '130', 'Quia fugiat earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('518', '369', '130', 'Rerum repellat minus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('519', '369', '130', 'Numquam iure et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('520', '369', '130', 'Consequuntur molestiae et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('521', '369', '131', 'Autem quo sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('522', '369', '131', 'Provident ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('523', '369', '131', 'Iure consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('524', '369', '131', 'Magni architecto explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('525', '369', '132', 'Maiores dolorem deserunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('526', '369', '132', 'Aut fuga nihil.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('527', '369', '132', 'Hic a rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('528', '369', '132', 'Nobis consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('529', '369', '133', 'Facere natus et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('530', '369', '133', 'Qui ab et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('531', '369', '133', 'Nesciunt qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('532', '369', '133', 'Est sunt sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('533', '369', '134', 'Facilis consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('534', '369', '134', 'Deserunt doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('535', '369', '134', 'Aut veritatis quam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('536', '369', '134', 'Et cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('537', '369', '135', 'Aspernatur sint.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('538', '369', '135', 'Eligendi perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('539', '369', '135', 'Vero quia ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('540', '369', '135', 'Et sed impedit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('541', '369', '136', 'Commodi repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('542', '369', '136', 'Omnis quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('543', '369', '136', 'Minima voluptatum vitae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('544', '369', '136', 'Porro ut quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('545', '369', '137', 'Error iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('546', '369', '137', 'Rerum officiis nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('547', '369', '137', 'Perferendis commodi molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('548', '369', '137', 'Labore tempora odit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('549', '369', '138', 'Vitae omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('550', '369', '138', 'Aut id commodi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('551', '369', '138', 'Vel explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('552', '369', '138', 'Culpa modi voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('553', '369', '139', 'Sed reprehenderit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('554', '369', '139', 'Maxime occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('555', '369', '139', 'Veniam quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('556', '369', '139', 'Et rerum debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('557', '369', '140', 'Explicabo quisquam et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('558', '369', '140', 'Voluptatem excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('559', '369', '140', 'Dolorum animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('560', '369', '140', 'Impedit incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('561', '369', '141', 'Eum et et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('562', '369', '141', 'Deserunt debitis nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('563', '369', '141', 'Voluptatibus et sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('564', '369', '141', 'Enim rerum dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('565', '369', '142', 'Atque recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('566', '369', '142', 'Dolores nobis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('567', '369', '142', 'Itaque perferendis odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('568', '369', '142', 'Qui quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('569', '369', '143', 'Neque at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('570', '369', '143', 'Quo sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('571', '369', '143', 'Perspiciatis deserunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('572', '369', '143', 'Velit quod quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('573', '369', '144', 'Dolor est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('574', '369', '144', 'Labore molestiae nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('575', '369', '144', 'Laudantium non aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('576', '369', '144', 'Et aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('577', '471', '145', 'Laborum aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('578', '471', '145', 'Voluptate ullam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('579', '471', '145', 'Provident rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('580', '471', '145', 'Quidem quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('581', '471', '146', 'Et repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('582', '471', '146', 'Ut veniam iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('583', '471', '146', 'Et aliquid tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('584', '471', '146', 'Quae et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('585', '471', '147', 'Et distinctio alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('586', '471', '147', 'Id dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('587', '471', '147', 'Et velit vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('588', '471', '147', 'Et sit cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('589', '471', '148', 'Incidunt voluptatum voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('590', '471', '148', 'Facilis accusantium iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('591', '471', '148', 'Sit porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('592', '471', '148', 'Cumque ullam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('593', '471', '149', 'Dolore possimus sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('594', '471', '149', 'Repellendus est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('595', '471', '149', 'Qui animi et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('596', '471', '149', 'Eum ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('597', '471', '150', 'Voluptas sint minima.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('598', '471', '150', 'Quisquam consequuntur at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('599', '471', '150', 'Dolore id ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('600', '471', '150', 'Architecto recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('601', '471', '151', 'Omnis quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('602', '471', '151', 'Maxime est ab.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('603', '471', '151', 'Corporis ut et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('604', '471', '151', 'Dicta consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('605', '471', '152', 'Eum qui et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('606', '471', '152', 'Et harum nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('607', '471', '152', 'Consequatur error totam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('608', '471', '152', 'Quis repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('609', '471', '153', 'Earum culpa cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('610', '471', '153', 'Facilis quaerat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('611', '471', '153', 'Aut non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('612', '471', '153', 'Quod sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('613', '471', '154', 'Est hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('614', '471', '154', 'Dolorem consequatur dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('615', '471', '154', 'Pariatur et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('616', '471', '154', 'Est magni tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('617', '471', '155', 'Illo sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('618', '471', '155', 'Ratione aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('619', '471', '155', 'Ab libero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('620', '471', '155', 'Illum nihil fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('621', '471', '156', 'Iste id.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('622', '471', '156', 'Aspernatur nulla temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('623', '471', '156', 'Veniam vitae rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('624', '471', '156', 'Suscipit dicta quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('625', '471', '157', 'Mollitia expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('626', '471', '157', 'Doloribus possimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('627', '471', '157', 'Architecto dolores iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('628', '471', '157', 'Exercitationem asperiores eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('629', '471', '158', 'Consequuntur voluptate quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('630', '471', '158', 'Labore omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('631', '471', '158', 'Libero quod eius.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('632', '471', '158', 'Nisi expedita aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('633', '471', '159', 'Sint ut eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('634', '471', '159', 'At voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('635', '471', '159', 'Ea tempora doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('636', '471', '159', 'Et autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('637', '471', '160', 'Nulla et atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('638', '471', '160', 'Est itaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('639', '471', '160', 'Ea hic et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('640', '471', '160', 'Nulla molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('641', '471', '161', 'Quia vitae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('642', '471', '161', 'Vero quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('643', '471', '161', 'Ratione facere eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('644', '471', '161', 'Laudantium et asperiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('645', '471', '162', 'Error sed cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('646', '471', '162', 'Dolores molestiae voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('647', '471', '162', 'Modi voluptatum non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('648', '471', '162', 'Et accusamus mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('649', '471', '163', 'Consequatur a sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('650', '471', '163', 'Autem eum quae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('651', '471', '163', 'Consequatur harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('652', '471', '163', 'Voluptate sit dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('653', '471', '164', 'Ut corrupti qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('654', '471', '164', 'Reprehenderit quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('655', '471', '164', 'Consectetur rerum eius.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('656', '471', '164', 'Quo dolore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('657', '471', '165', 'Quo error.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('658', '471', '165', 'Ex voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('659', '471', '165', 'Aperiam corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('660', '471', '165', 'Ut id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('661', '471', '166', 'Expedita officia ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('662', '471', '166', 'Officiis id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('663', '471', '166', 'Quidem autem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('664', '471', '166', 'Reiciendis eos qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('665', '471', '167', 'Omnis sapiente.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('666', '471', '167', 'Perspiciatis est iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('667', '471', '167', 'Aspernatur consequatur sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('668', '471', '167', 'Blanditiis exercitationem distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('669', '471', '168', 'Aperiam est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('670', '471', '168', 'Dolorum in omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('671', '471', '168', 'Eius aperiam illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('672', '471', '168', 'Enim laborum velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('673', '471', '169', 'Et expedita amet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('674', '471', '169', 'Facilis vel iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('675', '471', '169', 'Ea repellat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('676', '471', '169', 'Minima similique omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('677', '471', '170', 'Officiis modi nam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('678', '471', '170', 'Dicta ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('679', '471', '170', 'Eligendi ullam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('680', '471', '170', 'Ab eum voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('681', '471', '171', 'Repellat numquam aperiam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('682', '471', '171', 'Ipsum quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('683', '471', '171', 'Doloremque recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('684', '471', '171', 'Tenetur tempora eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('685', '471', '172', 'Consequuntur animi architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('686', '471', '172', 'Qui laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('687', '471', '172', 'Iusto et dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('688', '471', '172', 'Commodi perferendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('689', '471', '173', 'Voluptatem nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('690', '471', '173', 'Vel autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('691', '471', '173', 'Consequatur aut molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('692', '471', '173', 'Dignissimos repellat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('693', '471', '174', 'Dicta quaerat molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('694', '471', '174', 'Labore quis ratione.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('695', '471', '174', 'Sequi hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('696', '471', '174', 'Nihil vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('697', '471', '175', 'Voluptas consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('698', '471', '175', 'Eaque laudantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('699', '471', '175', 'Voluptatem eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('700', '471', '175', 'Quia et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('701', '471', '176', 'Qui ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('702', '471', '176', 'Est perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('703', '471', '176', 'Error dolor alias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('704', '471', '176', 'Atque est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('705', '471', '177', 'Voluptatem aut quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('706', '471', '177', 'Voluptatibus quos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('707', '471', '177', 'Vitae velit eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('708', '471', '177', 'Sint recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('709', '477', '178', 'Error rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('710', '477', '178', 'Quod a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('711', '477', '178', 'Ad reprehenderit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('712', '477', '178', 'Accusamus voluptates aperiam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('713', '477', '179', 'Quibusdam possimus hic.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('714', '477', '179', 'Id aut totam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('715', '477', '179', 'Velit rerum occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('716', '477', '179', 'Asperiores tempora unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('717', '477', '180', 'Sequi similique.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('718', '477', '180', 'Veniam qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('719', '477', '180', 'Vitae rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('720', '477', '180', 'Qui fuga qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('721', '477', '181', 'Commodi consectetur placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('722', '477', '181', 'Suscipit omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('723', '477', '181', 'Ut eius harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('724', '477', '181', 'Eum sapiente tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('725', '477', '182', 'Autem sapiente.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('726', '477', '182', 'Dolorum iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('727', '477', '182', 'Odit qui aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('728', '477', '182', 'Et recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('729', '477', '183', 'Reiciendis quis illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('730', '477', '183', 'Molestiae vero non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('731', '477', '183', 'Commodi veniam nostrum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('732', '477', '183', 'Placeat ad perferendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('733', '477', '184', 'Quia omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('734', '477', '184', 'Excepturi labore aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('735', '477', '184', 'Magnam corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('736', '477', '184', 'Velit alias soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('737', '477', '185', 'Natus nemo laborum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('738', '477', '185', 'Accusantium quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('739', '477', '185', 'Enim autem in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('740', '477', '185', 'Voluptas at sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('741', '477', '186', 'Sint voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('742', '477', '186', 'Pariatur qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('743', '477', '186', 'Porro qui officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('744', '477', '186', 'Vero consequuntur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('745', '477', '187', 'Ipsa deserunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('746', '477', '187', 'Est quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('747', '477', '187', 'Expedita voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('748', '477', '187', 'Nesciunt veritatis quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('749', '477', '188', 'Assumenda minima delectus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('750', '477', '188', 'Aspernatur sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('751', '477', '188', 'In eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('752', '477', '188', 'Tempore unde incidunt.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('753', '477', '189', 'Qui odit incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('754', '477', '189', 'Labore odit nostrum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('755', '477', '189', 'Laboriosam dignissimos voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('756', '477', '189', 'Sapiente vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('757', '477', '190', 'Ut eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('758', '477', '190', 'Repudiandae labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('759', '477', '190', 'Enim magnam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('760', '477', '190', 'Doloremque quod cupiditate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('761', '477', '191', 'Fugit modi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('762', '477', '191', 'Quibusdam voluptates cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('763', '477', '191', 'Eos rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('764', '477', '191', 'Quia rem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('765', '477', '192', 'Et placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('766', '477', '192', 'Optio ratione aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('767', '477', '192', 'Non omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('768', '477', '192', 'Consectetur quod fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('769', '477', '193', 'Commodi ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('770', '477', '193', 'Omnis tempora repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('771', '477', '193', 'Minus aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('772', '477', '193', 'Exercitationem quia excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('773', '477', '194', 'Assumenda commodi rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('774', '477', '194', 'Id nostrum sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('775', '477', '194', 'Est cupiditate blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('776', '477', '194', 'Dolores velit saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('777', '580', '195', 'Dolor dolorum laboriosam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('778', '580', '195', 'Dignissimos eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('779', '580', '195', 'Odio fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('780', '580', '195', 'Sapiente temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('781', '580', '196', 'Sequi optio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('782', '580', '196', 'Sed ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('783', '580', '196', 'Voluptatem magnam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('784', '580', '196', 'Reiciendis quia consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('785', '580', '197', 'Nihil rerum quo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('786', '580', '197', 'Dolor qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('787', '580', '197', 'Delectus unde et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('788', '580', '197', 'Vel perferendis aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('789', '580', '198', 'Reiciendis in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('790', '580', '198', 'Quia enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('791', '580', '198', 'Asperiores consectetur cupiditate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('792', '580', '198', 'Et cupiditate vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('793', '580', '199', 'Molestiae voluptates quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('794', '580', '199', 'Ut non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('795', '580', '199', 'Qui nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('796', '580', '199', 'Est similique dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('797', '580', '200', 'Magni ex perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('798', '580', '200', 'Iusto qui voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('799', '580', '200', 'Natus reprehenderit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('800', '580', '200', 'Quidem eligendi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('801', '580', '201', 'Dolorem omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('802', '580', '201', 'Tenetur perspiciatis aspernatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('803', '580', '201', 'Nulla aspernatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('804', '580', '201', 'Harum provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('805', '580', '202', 'Illum voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('806', '580', '202', 'Vero dolore officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('807', '580', '202', 'Rerum aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('808', '580', '202', 'Doloremque officia qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('809', '580', '203', 'Praesentium numquam sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('810', '580', '203', 'Numquam minima ratione.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('811', '580', '203', 'Quod cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('812', '580', '203', 'Amet omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('813', '580', '204', 'Tenetur maiores quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('814', '580', '204', 'Quae cupiditate enim.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('815', '580', '204', 'Esse incidunt voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('816', '580', '204', 'Vitae id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('817', '580', '205', 'Sed dolor cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('818', '580', '205', 'Quisquam neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('819', '580', '205', 'Voluptatem qui numquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('820', '580', '205', 'Rem expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('821', '580', '206', 'Ut quis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('822', '580', '206', 'Non ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('823', '580', '206', 'Fugit molestiae aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('824', '580', '206', 'Excepturi quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('825', '580', '207', 'Voluptatibus fuga.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('826', '580', '207', 'Qui repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('827', '580', '207', 'Odit eius officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('828', '580', '207', 'Incidunt cum doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('829', '580', '208', 'Voluptatem et explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('830', '580', '208', 'Voluptas perferendis quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('831', '580', '208', 'Expedita et nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('832', '580', '208', 'Fugit harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('833', '580', '209', 'Expedita alias molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('834', '580', '209', 'Et nemo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('835', '580', '209', 'Voluptatibus sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('836', '580', '209', 'Molestiae odit ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('837', '580', '210', 'Officiis quam quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('838', '580', '210', 'Perferendis velit et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('839', '580', '210', 'Mollitia eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('840', '580', '210', 'Magnam voluptatem est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('841', '580', '211', 'Unde aperiam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('842', '580', '211', 'Beatae sit non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('843', '580', '211', 'Voluptas accusantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('844', '580', '211', 'Sit alias vero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('845', '580', '212', 'Asperiores nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('846', '580', '212', 'Sunt et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('847', '580', '212', 'Quasi libero occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('848', '580', '212', 'Libero eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('849', '580', '213', 'Explicabo beatae eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('850', '580', '213', 'Eius facere.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('851', '580', '213', 'Sint molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('852', '580', '213', 'Et ipsum maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('853', '580', '214', 'Sit numquam qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('854', '580', '214', 'Est repudiandae et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('855', '580', '214', 'Velit iusto aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('856', '580', '214', 'Amet atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('857', '580', '215', 'Omnis ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('858', '580', '215', 'Officiis aut explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('859', '580', '215', 'Eveniet eveniet rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('860', '580', '215', 'Consequuntur ut consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('861', '580', '216', 'Iusto harum debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('862', '580', '216', 'Aperiam voluptatem nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('863', '580', '216', 'Aliquam eos debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('864', '580', '216', 'Hic optio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('865', '580', '217', 'Doloribus reprehenderit sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('866', '580', '217', 'Porro veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('867', '580', '217', 'Voluptatem vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('868', '580', '217', 'Nam magnam aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('869', '580', '218', 'Quibusdam aspernatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('870', '580', '218', 'Sed nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('871', '580', '218', 'Quo debitis cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('872', '580', '218', 'Hic culpa sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('873', '580', '219', 'Molestias quia consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('874', '580', '219', 'Pariatur sint.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('875', '580', '219', 'Officia repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('876', '580', '219', 'Odio adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('877', '580', '220', 'Quod et voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('878', '580', '220', 'Tenetur et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('879', '580', '220', 'Sed maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('880', '580', '220', 'Quisquam et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('881', '580', '221', 'Sit eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('882', '580', '221', 'Autem cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('883', '580', '221', 'Dolores consequuntur non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('884', '580', '221', 'Exercitationem doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('885', '580', '222', 'Odio ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('886', '580', '222', 'Ad aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('887', '580', '222', 'Id nihil.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('888', '580', '222', 'Dolorem laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('889', '580', '223', 'Sit in omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('890', '580', '223', 'Voluptate facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('891', '580', '223', 'Qui fugiat et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('892', '580', '223', 'Cum enim.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('893', '611', '224', 'Consectetur non dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('894', '611', '224', 'Fugit exercitationem eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('895', '611', '224', 'Doloremque mollitia quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('896', '611', '224', 'Et qui ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('897', '611', '225', 'Et ab doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('898', '611', '225', 'Similique ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('899', '611', '225', 'Ipsum ipsam eius.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('900', '611', '225', 'Eveniet eveniet corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('901', '611', '226', 'Eos atque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('902', '611', '226', 'Perferendis occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('903', '611', '226', 'A et et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('904', '611', '226', 'Repudiandae voluptas reprehenderit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('905', '611', '227', 'At et exercitationem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('906', '611', '227', 'Culpa assumenda quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('907', '611', '227', 'Nihil mollitia incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('908', '611', '227', 'Fugit consequatur est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('909', '611', '228', 'Error aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('910', '611', '228', 'Voluptatum autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('911', '611', '228', 'Necessitatibus harum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('912', '611', '228', 'Omnis maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('913', '611', '229', 'Cum doloremque possimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('914', '611', '229', 'Velit architecto.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('915', '611', '229', 'Esse aut et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('916', '611', '229', 'Eius fugiat explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('917', '611', '230', 'Doloribus quo rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('918', '611', '230', 'Reprehenderit vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('919', '611', '230', 'Unde in qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('920', '611', '230', 'Quam suscipit nisi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('921', '611', '231', 'Blanditiis vel quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('922', '611', '231', 'Rem quas impedit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('923', '611', '231', 'Et aut eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('924', '611', '231', 'Voluptas voluptatum nemo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('925', '611', '232', 'Quia aut rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('926', '611', '232', 'Distinctio et alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('927', '611', '232', 'Consequuntur corporis necessitatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('928', '611', '232', 'Molestiae nemo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('929', '611', '233', 'Numquam aut iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('930', '611', '233', 'Consequatur voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('931', '611', '233', 'Tenetur labore veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('932', '611', '233', 'Voluptatem dolorem et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('933', '611', '234', 'Itaque asperiores magnam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('934', '611', '234', 'A accusantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('935', '611', '234', 'Mollitia veniam est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('936', '611', '234', 'Reiciendis ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('937', '611', '235', 'Sit tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('938', '611', '235', 'In et eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('939', '611', '235', 'In architecto est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('940', '611', '235', 'Qui qui rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('941', '611', '236', 'Dicta quos omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('942', '611', '236', 'Eos ut voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('943', '611', '236', 'Unde placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('944', '611', '236', 'Nobis fuga dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('945', '611', '237', 'Incidunt rerum laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('946', '611', '237', 'Molestiae occaecati velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('947', '611', '237', 'Nemo laudantium omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('948', '611', '237', 'Amet veniam error.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('949', '611', '238', 'Qui labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('950', '611', '238', 'Non maiores distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('951', '611', '238', 'Sit laborum veniam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('952', '611', '238', 'Eos fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('953', '611', '239', 'Ex ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('954', '611', '239', 'Reprehenderit soluta.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('955', '611', '239', 'Aut ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('956', '611', '239', 'Qui a aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('957', '611', '240', 'In odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('958', '611', '240', 'Quaerat eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('959', '611', '240', 'Occaecati quam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('960', '611', '240', 'Voluptatem quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('961', '611', '241', 'Ut exercitationem molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('962', '611', '241', 'Alias praesentium.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('963', '611', '241', 'Magni velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('964', '611', '241', 'Aspernatur illum libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('965', '611', '242', 'Recusandae animi quis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('966', '611', '242', 'Sed et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('967', '611', '242', 'Dolor necessitatibus eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('968', '611', '242', 'Voluptas ducimus qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('969', '611', '243', 'Ipsa vel iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('970', '611', '243', 'Est velit quis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('971', '611', '243', 'Debitis omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('972', '611', '243', 'Necessitatibus deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('973', '611', '244', 'Amet et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('974', '611', '244', 'Beatae quo earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('975', '611', '244', 'Autem dolores alias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('976', '611', '244', 'Consequatur nihil cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('977', '611', '245', 'Modi consequuntur non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('978', '611', '245', 'Laboriosam mollitia sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('979', '611', '245', 'Dolorem rerum praesentium.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('980', '611', '245', 'Nisi eum cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('981', '611', '246', 'Tempora accusamus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('982', '611', '246', 'Natus temporibus molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('983', '611', '246', 'Illo dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('984', '611', '246', 'Molestias deserunt blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('985', '611', '247', 'Ut ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('986', '611', '247', 'Voluptate et error.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('987', '611', '247', 'Delectus placeat et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('988', '611', '247', 'Iure delectus id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('989', '611', '248', 'Vitae dolor iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('990', '611', '248', 'Consequatur ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('991', '611', '248', 'Numquam id suscipit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('992', '611', '248', 'Enim officia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('993', '611', '249', 'Eaque quod est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('994', '611', '249', 'A cum ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('995', '611', '249', 'Sapiente debitis vel.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('996', '611', '249', 'Aut possimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('997', '611', '250', 'Nemo qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('998', '611', '250', 'Dolor fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('999', '611', '250', 'Ipsa cupiditate deleniti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1000', '611', '250', 'Nostrum quidem fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1001', '611', '251', 'Est voluptate qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1002', '611', '251', 'Esse sint dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1003', '611', '251', 'Et ut similique.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1004', '611', '251', 'Laboriosam et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1005', '611', '252', 'Possimus et fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1006', '611', '252', 'Molestiae quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1007', '611', '252', 'Et nobis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1008', '611', '252', 'Ipsam provident neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1009', '611', '253', 'Ducimus nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1010', '611', '253', 'Animi necessitatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1011', '611', '253', 'Voluptates asperiores non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1012', '611', '253', 'Eum ut esse.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1013', '611', '254', 'Numquam maxime.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1014', '611', '254', 'Distinctio perferendis eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1015', '611', '254', 'Id voluptas et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1016', '611', '254', 'Dolor veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1017', '611', '255', 'Qui eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1018', '611', '255', 'Autem quisquam ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1019', '611', '255', 'Id consequatur ipsam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1020', '611', '255', 'Sed qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1021', '611', '256', 'Voluptatum enim.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1022', '611', '256', 'Ipsam fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1023', '611', '256', 'Quis provident est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1024', '611', '256', 'Voluptatem quaerat facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1025', '611', '257', 'Voluptatibus eum dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1026', '611', '257', 'Sit voluptatem libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1027', '611', '257', 'Dicta et dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1028', '611', '257', 'Tempore explicabo at.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1029', '611', '258', 'Saepe corrupti laboriosam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1030', '611', '258', 'Id non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1031', '611', '258', 'Ratione consequatur vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1032', '611', '258', 'Illo quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1033', '611', '259', 'Deserunt tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1034', '611', '259', 'Vitae voluptas ipsa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1035', '611', '259', 'Quia quaerat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1036', '611', '259', 'Rerum consequuntur eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1037', '645', '260', 'Deleniti sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1038', '645', '260', 'A culpa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1039', '645', '260', 'Unde et impedit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1040', '645', '260', 'Eligendi sit aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1041', '645', '261', 'Inventore fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1042', '645', '261', 'Expedita odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1043', '645', '261', 'Ducimus officiis eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1044', '645', '261', 'Necessitatibus et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1045', '645', '262', 'Nihil minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1046', '645', '262', 'Dignissimos quia provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1047', '645', '262', 'Incidunt quia maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1048', '645', '262', 'Autem recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1049', '645', '263', 'Nesciunt ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1050', '645', '263', 'Nihil provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1051', '645', '263', 'Aut ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1052', '645', '263', 'Itaque sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1053', '645', '264', 'Inventore veniam dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1054', '645', '264', 'Magnam sunt aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1055', '645', '264', 'Officia ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1056', '645', '264', 'Est cum deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1057', '645', '265', 'Quo quis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1058', '645', '265', 'Totam commodi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1059', '645', '265', 'Quidem qui eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1060', '645', '265', 'Facilis explicabo et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1061', '645', '266', 'Quaerat quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1062', '645', '266', 'Reiciendis doloribus quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1063', '645', '266', 'Dolorum excepturi corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1064', '645', '266', 'Possimus dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1065', '645', '267', 'Reprehenderit molestiae omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1066', '645', '267', 'Eligendi aliquid aspernatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1067', '645', '267', 'Est eos neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1068', '645', '267', 'Repellendus iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1069', '645', '268', 'Atque culpa id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1070', '645', '268', 'Ipsum ut nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1071', '645', '268', 'Eum qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1072', '645', '268', 'Fugiat dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1073', '645', '269', 'Ea consectetur iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1074', '645', '269', 'Modi ullam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1075', '645', '269', 'Commodi pariatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1076', '645', '269', 'Molestiae quam quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1077', '645', '270', 'Molestiae suscipit ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1078', '645', '270', 'Velit est saepe.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1079', '645', '270', 'Maxime vitae minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1080', '645', '270', 'Incidunt saepe tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1081', '645', '271', 'Excepturi nisi eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1082', '645', '271', 'In ut accusamus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1083', '645', '271', 'Repudiandae soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1084', '645', '271', 'Consequatur eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1085', '645', '272', 'Consequuntur esse.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1086', '645', '272', 'Inventore est laudantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1087', '645', '272', 'Qui sit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1088', '645', '272', 'Non libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1089', '645', '273', 'Distinctio quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1090', '645', '273', 'Iusto ducimus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1091', '645', '273', 'Quas dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1092', '645', '273', 'Delectus omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1093', '645', '274', 'Unde voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1094', '645', '274', 'Corporis qui architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1095', '645', '274', 'Maiores voluptatum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1096', '645', '274', 'Magni dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1097', '645', '275', 'Veritatis sit fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1098', '645', '275', 'Omnis assumenda.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1099', '645', '275', 'Necessitatibus aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1100', '645', '275', 'Facilis ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1101', '645', '276', 'Distinctio iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1102', '645', '276', 'Sapiente ad dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1103', '645', '276', 'Dolorem nobis maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1104', '645', '276', 'In sit maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1105', '645', '277', 'Soluta quam temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1106', '645', '277', 'Rerum nam et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1107', '645', '277', 'Assumenda dolore esse.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1108', '645', '277', 'Aliquid est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1109', '645', '278', 'Culpa fugiat et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1110', '645', '278', 'Ab aut qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1111', '645', '278', 'Ipsa consectetur maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1112', '645', '278', 'Voluptas rerum ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1113', '645', '279', 'Dolore eius.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1114', '645', '279', 'Occaecati aperiam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1115', '645', '279', 'Nostrum eum a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1116', '645', '279', 'Blanditiis dignissimos est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1117', '645', '280', 'Et architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1118', '645', '280', 'Delectus illum inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1119', '645', '280', 'Ad animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1120', '645', '280', 'Atque voluptatem neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1121', '645', '281', 'Est nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1122', '645', '281', 'Labore quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1123', '645', '281', 'Facere iste voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1124', '645', '281', 'Dolor et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1125', '645', '282', 'Sed rerum tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1126', '645', '282', 'Mollitia tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1127', '645', '282', 'Delectus est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1128', '645', '282', 'Quaerat libero enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1129', '645', '283', 'Non quibusdam quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1130', '645', '283', 'Earum commodi consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1131', '645', '283', 'Voluptates iusto vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1132', '645', '283', 'Nostrum iusto omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1133', '645', '284', 'Ab temporibus mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1134', '645', '284', 'Natus facere perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1135', '645', '284', 'Adipisci aspernatur quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1136', '645', '284', 'Impedit velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1137', '645', '285', 'Consequatur temporibus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1138', '645', '285', 'Quis alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1139', '645', '285', 'Autem voluptatum odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1140', '645', '285', 'Vel nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1141', '645', '286', 'Inventore dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1142', '645', '286', 'Tempora cumque ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1143', '645', '286', 'Et totam eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1144', '645', '286', 'Beatae quis iure.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1145', '645', '287', 'Omnis dolores provident.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1146', '645', '287', 'Optio consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1147', '645', '287', 'Sed dolor minima.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1148', '645', '287', 'Saepe ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1149', '645', '288', 'Aliquam optio illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1150', '645', '288', 'Sint explicabo est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1151', '645', '288', 'Maxime ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1152', '645', '288', 'Earum repellat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1153', '645', '289', 'Aut repellendus quaerat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1154', '645', '289', 'Error soluta repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1155', '645', '289', 'Nihil aperiam placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1156', '645', '289', 'Dolores earum dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1157', '652', '290', 'Exercitationem voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1158', '652', '290', 'Consequuntur iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1159', '652', '290', 'Non corporis est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1160', '652', '290', 'Mollitia qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1161', '652', '291', 'Delectus ut enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1162', '652', '291', 'Voluptatem ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1163', '652', '291', 'Voluptatem aut molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1164', '652', '291', 'Qui veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1165', '652', '292', 'Reprehenderit distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1166', '652', '292', 'Enim ad et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1167', '652', '292', 'Et non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1168', '652', '292', 'Quas facilis ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1169', '652', '293', 'Dolorem ullam id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1170', '652', '293', 'Provident dolores delectus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1171', '652', '293', 'Aperiam porro maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1172', '652', '293', 'Sed quia voluptate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1173', '652', '294', 'Illum eius sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1174', '652', '294', 'Perspiciatis odio dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1175', '652', '294', 'Magnam nemo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1176', '652', '294', 'Aut distinctio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1177', '652', '295', 'Et voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1178', '652', '295', 'Officiis similique aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1179', '652', '295', 'Sed vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1180', '652', '295', 'Aut impedit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1181', '652', '296', 'Dignissimos aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1182', '652', '296', 'Odio dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1183', '652', '296', 'Repellat ut ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1184', '652', '296', 'Nobis accusantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1185', '652', '297', 'Repellat facilis tenetur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1186', '652', '297', 'At qui omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1187', '652', '297', 'Autem eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1188', '652', '297', 'Iure inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1189', '652', '298', 'Doloribus velit adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1190', '652', '298', 'Occaecati corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1191', '652', '298', 'Optio aliquid id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1192', '652', '298', 'Quisquam natus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1193', '652', '299', 'Eum quidem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1194', '652', '299', 'Sequi tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1195', '652', '299', 'Quia rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1196', '652', '299', 'Amet ut molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1197', '652', '300', 'Ut sunt sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1198', '652', '300', 'Suscipit ex.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1199', '652', '300', 'Dignissimos nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1200', '652', '300', 'Consequuntur qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1201', '652', '301', 'Deserunt magnam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1202', '652', '301', 'Consequuntur cupiditate ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1203', '652', '301', 'Nesciunt est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1204', '652', '301', 'Occaecati perspiciatis omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1205', '652', '302', 'Molestiae cupiditate et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1206', '652', '302', 'Qui non et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1207', '652', '302', 'Tempore illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1208', '652', '302', 'Velit quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1209', '652', '303', 'Unde ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1210', '652', '303', 'Quo blanditiis ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1211', '652', '303', 'Sed consequatur sit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1212', '652', '303', 'Illo ut laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1213', '652', '304', 'Eaque neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1214', '652', '304', 'Magni aut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1215', '652', '304', 'A earum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1216', '652', '304', 'Perferendis distinctio hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1217', '652', '305', 'Unde et iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1218', '652', '305', 'Et voluptas rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1219', '652', '305', 'Architecto adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1220', '652', '305', 'Sunt voluptates illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1221', '652', '306', 'In facilis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1222', '652', '306', 'Exercitationem voluptatem consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1223', '652', '306', 'Nobis aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1224', '652', '306', 'Voluptas quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1225', '652', '307', 'Hic totam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1226', '652', '307', 'Et quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1227', '652', '307', 'Dolorem eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1228', '652', '307', 'Nam alias quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1229', '652', '308', 'Odit esse.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1230', '652', '308', 'Explicabo tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1231', '652', '308', 'Temporibus voluptas eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1232', '652', '308', 'Distinctio qui fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1233', '652', '309', 'Sint dolores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1234', '652', '309', 'Qui nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1235', '652', '309', 'Nisi et quam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1236', '652', '309', 'Recusandae tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1237', '652', '310', 'A ut fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1238', '652', '310', 'Nisi porro omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1239', '652', '310', 'Aut architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1240', '652', '310', 'Sunt illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1241', '652', '311', 'Est cupiditate sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1242', '652', '311', 'Aut ea et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1243', '652', '311', 'Dolorum distinctio dignissimos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1244', '652', '311', 'Esse rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1245', '652', '312', 'Consequatur qui officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1246', '652', '312', 'Eveniet magni.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1247', '652', '312', 'Error molestiae quidem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1248', '652', '312', 'Error quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1249', '652', '313', 'Consequatur natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1250', '652', '313', 'Dolorum et et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1251', '652', '313', 'Illo excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1252', '652', '313', 'Tenetur itaque autem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1253', '652', '314', 'Omnis nihil.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1254', '652', '314', 'Quo et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1255', '652', '314', 'Sit ut molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1256', '652', '314', 'Sit adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1257', '652', '315', 'Ut veniam ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1258', '652', '315', 'Ullam quam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1259', '652', '315', 'Architecto est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1260', '652', '315', 'Quod ut cupiditate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1261', '652', '316', 'Placeat voluptate sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1262', '652', '316', 'Dicta voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1263', '652', '316', 'Dolor consectetur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1264', '652', '316', 'Consequuntur itaque qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1265', '652', '317', 'Sapiente consequatur corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1266', '652', '317', 'Saepe nemo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1267', '652', '317', 'Dignissimos dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1268', '652', '317', 'Voluptas eum minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1269', '652', '318', 'Aut nulla odit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1270', '652', '318', 'Vero ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1271', '652', '318', 'Aspernatur accusamus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1272', '652', '318', 'Aspernatur quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1273', '652', '319', 'Aspernatur vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1274', '652', '319', 'Dolores doloremque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1275', '652', '319', 'Laborum repellendus nemo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1276', '652', '319', 'Nesciunt architecto dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1277', '652', '320', 'Error id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1278', '652', '320', 'Pariatur quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1279', '652', '320', 'Qui id dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1280', '652', '320', 'Perspiciatis sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1281', '652', '321', 'Accusamus nemo ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1282', '652', '321', 'Aperiam rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1283', '652', '321', 'Nesciunt pariatur est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1284', '652', '321', 'Et suscipit temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1285', '652', '322', 'Incidunt neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1286', '652', '322', 'Animi ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1287', '652', '322', 'Soluta quas adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1288', '652', '322', 'Et voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1289', '739', '323', 'Ut consequuntur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1290', '739', '323', 'Qui minima earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1291', '739', '323', 'Dolores enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1292', '739', '323', 'Est soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1293', '739', '324', 'Aut aut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1294', '739', '324', 'Vel illo et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1295', '739', '324', 'Sit ratione iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1296', '739', '324', 'Et veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1297', '739', '325', 'Non quisquam voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1298', '739', '325', 'Necessitatibus culpa non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1299', '739', '325', 'Facilis debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1300', '739', '325', 'Quia quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1301', '739', '326', 'Rerum veniam omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1302', '739', '326', 'Occaecati molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1303', '739', '326', 'Ab possimus id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1304', '739', '326', 'Aliquid ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1305', '739', '327', 'Voluptas facere.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1306', '739', '327', 'Modi voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1307', '739', '327', 'Et natus molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1308', '739', '327', 'Nihil illo quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1309', '739', '328', 'Id similique.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1310', '739', '328', 'Deleniti quia occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1311', '739', '328', 'Sequi tenetur rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1312', '739', '328', 'Voluptas laudantium iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1313', '739', '329', 'Velit fugiat et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1314', '739', '329', 'Sed natus earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1315', '739', '329', 'Sequi perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1316', '739', '329', 'Magni temporibus aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1317', '739', '330', 'In est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1318', '739', '330', 'Dolorum et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1319', '739', '330', 'Magnam ab minima.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1320', '739', '330', 'Voluptatem velit pariatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1321', '739', '331', 'Dolores provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1322', '739', '331', 'Suscipit fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1323', '739', '331', 'Iure eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1324', '739', '331', 'Possimus omnis possimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1325', '739', '332', 'Sit expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1326', '739', '332', 'Maiores non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1327', '739', '332', 'Rerum voluptates.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1328', '739', '332', 'Voluptatum eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1329', '739', '333', 'Non nobis magni.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1330', '739', '333', 'Omnis mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1331', '739', '333', 'Vero fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1332', '739', '333', 'Magnam perspiciatis explicabo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1333', '739', '334', 'Repellat neque minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1334', '739', '334', 'Illo inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1335', '739', '334', 'Rerum consequatur a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1336', '739', '334', 'Sequi quia ea.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1337', '739', '335', 'Illo ut explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1338', '739', '335', 'Voluptatibus iusto cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1339', '739', '335', 'Reprehenderit aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1340', '739', '335', 'Nihil laboriosam fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1341', '743', '336', 'Quisquam illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1342', '743', '336', 'Aliquam facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1343', '743', '336', 'Ducimus repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1344', '743', '336', 'Quidem sit explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1345', '743', '337', 'Ducimus dolorem corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1346', '743', '337', 'Et placeat repudiandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1347', '743', '337', 'Vitae nihil possimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1348', '743', '337', 'Iusto sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1349', '743', '338', 'Itaque doloribus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1350', '743', '338', 'Dicta culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1351', '743', '338', 'Facilis praesentium rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1352', '743', '338', 'Ad tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1353', '743', '339', 'Velit autem et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1354', '743', '339', 'Dolorem odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1355', '743', '339', 'Assumenda praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1356', '743', '339', 'Quo ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1357', '743', '340', 'Sit perferendis dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1358', '743', '340', 'Non maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1359', '743', '340', 'Quasi facilis placeat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1360', '743', '340', 'Natus et aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1361', '743', '341', 'Magni quidem doloribus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1362', '743', '341', 'Ut eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1363', '743', '341', 'Ea officiis quam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1364', '743', '341', 'Assumenda similique eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1365', '743', '342', 'Cumque quam fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1366', '743', '342', 'Molestias ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1367', '743', '342', 'Explicabo nostrum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1368', '743', '342', 'Nesciunt libero voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1369', '743', '343', 'Quia dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1370', '743', '343', 'Quis iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1371', '743', '343', 'Delectus ad.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1372', '743', '343', 'Commodi eaque sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1373', '743', '344', 'Ipsa error.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1374', '743', '344', 'Laudantium doloribus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1375', '743', '344', 'Quia vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1376', '743', '344', 'Labore perferendis qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1377', '743', '345', 'Quisquam iure numquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1378', '743', '345', 'Non et sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1379', '743', '345', 'Similique aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1380', '743', '345', 'Iure et at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1381', '743', '346', 'Vel perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1382', '743', '346', 'Dolores libero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1383', '743', '346', 'Exercitationem quas consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1384', '743', '346', 'Quasi quibusdam aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1385', '743', '347', 'Ipsa nihil sapiente.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1386', '743', '347', 'Ipsum aperiam excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1387', '743', '347', 'Consequatur et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1388', '743', '347', 'Dolor optio repellat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1389', '743', '348', 'Nemo molestiae molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1390', '743', '348', 'Nemo tempora molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1391', '743', '348', 'Enim tempore architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1392', '743', '348', 'Est aperiam in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1393', '743', '349', 'Et ad veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1394', '743', '349', 'Est a laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1395', '743', '349', 'Esse velit dolores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1396', '743', '349', 'Iusto amet perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1397', '743', '350', 'Eius modi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1398', '743', '350', 'Rerum culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1399', '743', '350', 'Earum quam qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1400', '743', '350', 'Dolore quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1401', '743', '351', 'Earum id tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1402', '743', '351', 'Vel nihil culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1403', '743', '351', 'Sapiente nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1404', '743', '351', 'Cupiditate enim ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1405', '743', '352', 'Qui saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1406', '743', '352', 'Minus aspernatur ex.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1407', '743', '352', 'Placeat quam autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1408', '743', '352', 'Quia unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1409', '743', '353', 'Officiis rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1410', '743', '353', 'Aut molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1411', '743', '353', 'Modi aspernatur veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1412', '743', '353', 'Labore maxime qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1413', '743', '354', 'Magni qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1414', '743', '354', 'Doloremque sint.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1415', '743', '354', 'Enim fuga veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1416', '743', '354', 'Ut nemo quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1417', '743', '355', 'Eveniet quasi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1418', '743', '355', 'Corrupti molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1419', '743', '355', 'Possimus error.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1420', '743', '355', 'Modi laboriosam aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1421', '743', '356', 'Beatae id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1422', '743', '356', 'Laborum maxime.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1423', '743', '356', 'Enim id minima.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1424', '743', '356', 'Incidunt eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1425', '750', '357', 'Officia laudantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1426', '750', '357', 'Incidunt est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1427', '750', '357', 'Id dolor hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1428', '750', '357', 'Recusandae distinctio sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1429', '750', '358', 'Alias at.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1430', '750', '358', 'Dolorum a qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1431', '750', '358', 'Ea nisi molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1432', '750', '358', 'Impedit ab ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1433', '750', '359', 'Quaerat amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1434', '750', '359', 'Et nostrum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1435', '750', '359', 'Molestias corporis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1436', '750', '359', 'Quis ipsum repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1437', '750', '360', 'Deserunt quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1438', '750', '360', 'Autem placeat optio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1439', '750', '360', 'Dolores in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1440', '750', '360', 'Laudantium tempore quaerat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1441', '750', '361', 'Id in rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1442', '750', '361', 'Nobis iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1443', '750', '361', 'Molestias eius molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1444', '750', '361', 'Voluptas dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1445', '750', '362', 'Repellat quod voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1446', '750', '362', 'Eos qui vitae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1447', '750', '362', 'Veritatis asperiores quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1448', '750', '362', 'Non modi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1449', '750', '363', 'Esse similique enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1450', '750', '363', 'Omnis ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1451', '750', '363', 'Qui illo et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1452', '750', '363', 'Minus tenetur velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1453', '750', '364', 'Aperiam est necessitatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1454', '750', '364', 'Vel dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1455', '750', '364', 'Aut voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1456', '750', '364', 'Fugiat qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1457', '750', '365', 'Impedit recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1458', '750', '365', 'Laboriosam ut voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1459', '750', '365', 'Recusandae qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1460', '750', '365', 'Nisi officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1461', '750', '366', 'Quas quis deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1462', '750', '366', 'Omnis doloremque quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1463', '750', '366', 'Fugit enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1464', '750', '366', 'Et consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1465', '750', '367', 'Sint quibusdam nam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1466', '750', '367', 'Aut voluptas dolorum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1467', '750', '367', 'Aut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1468', '750', '367', 'Et asperiores rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1469', '750', '368', 'Expedita accusamus est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1470', '750', '368', 'Est quaerat sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1471', '750', '368', 'Nesciunt officia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1472', '750', '368', 'Libero optio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1473', '750', '369', 'Accusamus et distinctio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1474', '750', '369', 'Optio quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1475', '750', '369', 'Corrupti eos eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1476', '750', '369', 'Molestiae aut natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1477', '750', '370', 'Qui enim qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1478', '750', '370', 'Magnam officiis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1479', '750', '370', 'Quo eum id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1480', '750', '370', 'Odit debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1481', '750', '371', 'Mollitia voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1482', '750', '371', 'Et voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1483', '750', '371', 'Rem exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1484', '750', '371', 'Error et commodi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1485', '769', '372', 'Cum voluptatum consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1486', '769', '372', 'Vel impedit occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1487', '769', '372', 'Magni enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1488', '769', '372', 'Perspiciatis quos aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1489', '769', '373', 'Laudantium repellendus possimus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1490', '769', '373', 'Non non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1491', '769', '373', 'Laboriosam iure in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1492', '769', '373', 'Eveniet fugiat voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1493', '769', '374', 'Deleniti ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1494', '769', '374', 'Corrupti qui aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1495', '769', '374', 'Voluptatem qui suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1496', '769', '374', 'Debitis et eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1497', '769', '375', 'Nulla sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1498', '769', '375', 'Illum quae modi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1499', '769', '375', 'Eligendi ullam alias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1500', '769', '375', 'Enim porro alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1501', '769', '376', 'Repudiandae deserunt ullam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1502', '769', '376', 'Qui quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1503', '769', '376', 'Vel quae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1504', '769', '376', 'Adipisci ad iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1505', '769', '377', 'Omnis ut sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1506', '769', '377', 'Rerum adipisci id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1507', '769', '377', 'Neque molestias nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1508', '769', '377', 'Tempore et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1509', '769', '378', 'Maiores illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1510', '769', '378', 'Nesciunt et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1511', '769', '378', 'Officiis at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1512', '769', '378', 'Ea quos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1513', '769', '379', 'Tempora labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1514', '769', '379', 'Repellendus dolores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1515', '769', '379', 'Et veritatis veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1516', '769', '379', 'Impedit alias vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1517', '769', '380', 'Minus nam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1518', '769', '380', 'Mollitia numquam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1519', '769', '380', 'Laboriosam vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1520', '769', '380', 'Suscipit cupiditate quasi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1521', '769', '381', 'Corrupti sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1522', '769', '381', 'Ipsum quo ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1523', '769', '381', 'Officiis ex mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1524', '769', '381', 'Illo quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1525', '769', '382', 'Deleniti cupiditate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1526', '769', '382', 'Sint officiis eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1527', '769', '382', 'Iusto inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1528', '769', '382', 'Rem ut voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1529', '769', '383', 'Facilis quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1530', '769', '383', 'Facere id qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1531', '769', '383', 'Ipsam est et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1532', '769', '383', 'Vitae molestias libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1533', '769', '384', 'Illo eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1534', '769', '384', 'Et nihil molestiae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1535', '769', '384', 'Dolor eius quasi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1536', '769', '384', 'Sint et omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1537', '769', '385', 'Quod aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1538', '769', '385', 'Nisi adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1539', '769', '385', 'Quae sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1540', '769', '385', 'Atque in consequuntur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1541', '769', '386', 'Qui et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1542', '769', '386', 'Sequi molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1543', '769', '386', 'Odio est qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1544', '769', '386', 'Optio enim suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1545', '769', '387', 'Nesciunt officiis fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1546', '769', '387', 'Amet nihil reiciendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1547', '769', '387', 'Praesentium iste omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1548', '769', '387', 'Molestiae quia debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1549', '769', '388', 'Aliquam quo dolores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1550', '769', '388', 'Nihil vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1551', '769', '388', 'Officia veritatis animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1552', '769', '388', 'Illum quia eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1553', '769', '389', 'Provident culpa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1554', '769', '389', 'Nemo et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1555', '769', '389', 'Omnis iste non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1556', '769', '389', 'Unde distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1557', '769', '390', 'Sunt delectus ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1558', '769', '390', 'Qui nobis qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1559', '769', '390', 'Sint quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1560', '769', '390', 'Pariatur incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1561', '769', '391', 'Maiores fugiat minima.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1562', '769', '391', 'Porro sunt maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1563', '769', '391', 'Perferendis nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1564', '769', '391', 'Aut molestias corporis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1565', '769', '392', 'Corporis enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1566', '769', '392', 'Et sed adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1567', '769', '392', 'Et accusantium est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1568', '769', '392', 'Voluptas accusamus eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1569', '769', '393', 'Alias et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1570', '769', '393', 'Autem est eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1571', '769', '393', 'Qui omnis voluptatibus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1572', '769', '393', 'Maiores est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1573', '769', '394', 'Alias voluptatum aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1574', '769', '394', 'Ipsam eum harum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1575', '769', '394', 'Nemo et numquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1576', '769', '394', 'Incidunt sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1577', '769', '395', 'Eum et sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1578', '769', '395', 'Accusamus vero nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1579', '769', '395', 'Iusto debitis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1580', '769', '395', 'Laboriosam iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1581', '769', '396', 'Fugit voluptas corporis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1582', '769', '396', 'Voluptates laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1583', '769', '396', 'Enim consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1584', '769', '396', 'Nostrum pariatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1585', '770', '397', 'Excepturi harum natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1586', '770', '397', 'Facere dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1587', '770', '397', 'Eveniet et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1588', '770', '397', 'Nulla quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1589', '770', '398', 'Et magnam voluptates.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1590', '770', '398', 'Accusamus reiciendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1591', '770', '398', 'Quis eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1592', '770', '398', 'Minima sit sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1593', '770', '399', 'Minus accusamus aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1594', '770', '399', 'Odio voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1595', '770', '399', 'Omnis occaecati nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1596', '770', '399', 'Quos nemo saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1597', '770', '400', 'In minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1598', '770', '400', 'Architecto qui minus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1599', '770', '400', 'Beatae exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1600', '770', '400', 'Autem molestiae alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1601', '770', '401', 'Mollitia omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1602', '770', '401', 'Illum fugiat sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1603', '770', '401', 'Vel sit vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1604', '770', '401', 'Dolores eum voluptate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1605', '770', '402', 'Tempore quasi voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1606', '770', '402', 'Est esse.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1607', '770', '402', 'Perferendis quas quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1608', '770', '402', 'Esse voluptatibus sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1609', '770', '403', 'Vitae fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1610', '770', '403', 'Quia ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1611', '770', '403', 'Labore non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1612', '770', '403', 'Excepturi dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1613', '770', '404', 'Et voluptatem voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1614', '770', '404', 'Vel facere corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1615', '770', '404', 'Qui est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1616', '770', '404', 'Eveniet dolores provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1617', '770', '405', 'Rerum hic at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1618', '770', '405', 'Enim accusantium quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1619', '770', '405', 'Illum unde.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1620', '770', '405', 'Laudantium iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1621', '770', '406', 'Ratione inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1622', '770', '406', 'Nobis fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1623', '770', '406', 'Molestias autem alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1624', '770', '406', 'Maiores sint ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1625', '770', '407', 'Autem officiis sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1626', '770', '407', 'Quisquam ratione.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1627', '770', '407', 'Ducimus impedit ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1628', '770', '407', 'Quae qui eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1629', '770', '408', 'Amet qui enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1630', '770', '408', 'Quod quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1631', '770', '408', 'Culpa est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1632', '770', '408', 'Illo laborum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1633', '770', '409', 'Corrupti ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1634', '770', '409', 'Repudiandae quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1635', '770', '409', 'Recusandae quia dolorum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1636', '770', '409', 'Incidunt autem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1637', '770', '410', 'Ut quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1638', '770', '410', 'Accusantium molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1639', '770', '410', 'Voluptatum ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1640', '770', '410', 'Veritatis cupiditate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1641', '770', '411', 'Dolorem voluptates cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1642', '770', '411', 'Ea dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1643', '770', '411', 'Modi numquam vel.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1644', '770', '411', 'Eius quas qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1645', '770', '412', 'Tenetur voluptatum itaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1646', '770', '412', 'Consectetur aspernatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1647', '770', '412', 'Impedit maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1648', '770', '412', 'Velit voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1649', '770', '413', 'Nihil facere quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1650', '770', '413', 'Perspiciatis ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1651', '770', '413', 'Culpa consequuntur ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1652', '770', '413', 'Ad dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1653', '770', '414', 'Exercitationem ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1654', '770', '414', 'Voluptas aut tempore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1655', '770', '414', 'Velit id consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1656', '770', '414', 'Aut vel suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1657', '770', '415', 'Distinctio voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1658', '770', '415', 'Ratione dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1659', '770', '415', 'Non totam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1660', '770', '415', 'Laboriosam sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1661', '770', '416', 'Reiciendis eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1662', '770', '416', 'Accusamus et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1663', '770', '416', 'Asperiores eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1664', '770', '416', 'Illo blanditiis impedit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1665', '770', '417', 'Dolores qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1666', '770', '417', 'Cumque repellat magnam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1667', '770', '417', 'Harum molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1668', '770', '417', 'Qui aspernatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1669', '770', '418', 'Ut est omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1670', '770', '418', 'Ut voluptas in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1671', '770', '418', 'Voluptatem rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1672', '770', '418', 'Blanditiis eos quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1673', '770', '419', 'Repellendus excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1674', '770', '419', 'Saepe sed sunt.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1675', '770', '419', 'Expedita qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1676', '770', '419', 'Neque at est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1677', '774', '420', 'Consequuntur magnam in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1678', '774', '420', 'Quis quam quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1679', '774', '420', 'Voluptas voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1680', '774', '420', 'Veniam numquam corporis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1681', '774', '421', 'In et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1682', '774', '421', 'Qui officia qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1683', '774', '421', 'Sed laudantium autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1684', '774', '421', 'Pariatur mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1685', '774', '422', 'Et facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1686', '774', '422', 'Esse iure.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1687', '774', '422', 'Est ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1688', '774', '422', 'Molestiae ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1689', '774', '423', 'Enim minima occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1690', '774', '423', 'Et soluta aspernatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1691', '774', '423', 'Perferendis incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1692', '774', '423', 'Ut corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1693', '774', '424', 'Veritatis quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1694', '774', '424', 'Quia saepe.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1695', '774', '424', 'Omnis aliquam et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1696', '774', '424', 'Et perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1697', '774', '425', 'Dolores itaque debitis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1698', '774', '425', 'Voluptates aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1699', '774', '425', 'Minima voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1700', '774', '425', 'Laboriosam quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1701', '774', '426', 'Consectetur sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1702', '774', '426', 'Aperiam quisquam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1703', '774', '426', 'Totam nihil est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1704', '774', '426', 'Ea dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1705', '774', '427', 'Mollitia eveniet saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1706', '774', '427', 'Repellat sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1707', '774', '427', 'Dolores cum reiciendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1708', '774', '427', 'Provident sit aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1709', '774', '428', 'Et dolores cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1710', '774', '428', 'Maxime cumque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1711', '774', '428', 'Ut et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1712', '774', '428', 'Minima nemo ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1713', '774', '429', 'Aut facilis temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1714', '774', '429', 'Similique consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1715', '774', '429', 'Qui ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1716', '774', '429', 'Qui ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1717', '774', '430', 'Ut vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1718', '774', '430', 'Consequuntur voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1719', '774', '430', 'Dolore ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1720', '774', '430', 'Exercitationem porro natus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1721', '774', '431', 'Doloribus eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1722', '774', '431', 'Nostrum recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1723', '774', '431', 'Ut expedita et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1724', '774', '431', 'Quibusdam aliquam amet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1725', '774', '432', 'Voluptatem excepturi sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1726', '774', '432', 'Reprehenderit quod nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1727', '774', '432', 'Rem et alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1728', '774', '432', 'Placeat ratione.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1729', '774', '433', 'Eius fugiat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1730', '774', '433', 'Non officia provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1731', '774', '433', 'Ea error.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1732', '774', '433', 'Consequatur id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1733', '774', '434', 'Id optio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1734', '774', '434', 'Quia sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1735', '774', '434', 'Repudiandae provident quisquam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1736', '774', '434', 'Nihil molestiae veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1737', '774', '435', 'Quia provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1738', '774', '435', 'Dicta id saepe.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1739', '774', '435', 'Ut debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1740', '774', '435', 'Beatae molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1741', '774', '436', 'Quia unde ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1742', '774', '436', 'Eligendi quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1743', '774', '436', 'Rem sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1744', '774', '436', 'Ut aut maxime.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1745', '774', '437', 'Nulla non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1746', '774', '437', 'Sed quae vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1747', '774', '437', 'Quis doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1748', '774', '437', 'Consequatur est veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1749', '774', '438', 'Iure vel ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1750', '774', '438', 'Et quos voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1751', '774', '438', 'Nisi recusandae vero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1752', '774', '438', 'Ducimus eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1753', '774', '439', 'Qui unde.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1754', '774', '439', 'Deserunt itaque temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1755', '774', '439', 'Sequi eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1756', '774', '439', 'Unde magni quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1757', '774', '440', 'Dicta voluptas ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1758', '774', '440', 'Est voluptatem dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1759', '774', '440', 'Eos odit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1760', '774', '440', 'Omnis hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1761', '774', '441', 'Consequatur aliquam a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1762', '774', '441', 'Molestiae sit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1763', '774', '441', 'Est est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1764', '774', '441', 'Est et ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1765', '774', '442', 'Dolorem consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1766', '774', '442', 'Voluptatibus odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1767', '774', '442', 'Sunt amet fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1768', '774', '442', 'Atque consequatur ducimus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1769', '795', '443', 'Corrupti esse.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1770', '795', '443', 'Consequuntur ut amet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1771', '795', '443', 'Debitis soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1772', '795', '443', 'Doloribus mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1773', '795', '444', 'Autem optio harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1774', '795', '444', 'Exercitationem dolor est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1775', '795', '444', 'Aut a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1776', '795', '444', 'Qui adipisci quisquam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1777', '795', '445', 'Voluptatem suscipit ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1778', '795', '445', 'Ad maxime voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1779', '795', '445', 'Illum qui eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1780', '795', '445', 'Perspiciatis consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1781', '795', '446', 'Asperiores incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1782', '795', '446', 'Rerum ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1783', '795', '446', 'Omnis doloribus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1784', '795', '446', 'Dolorem et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1785', '795', '447', 'Et saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1786', '795', '447', 'Eos ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1787', '795', '447', 'Suscipit est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1788', '795', '447', 'Doloribus dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1789', '795', '448', 'Doloremque maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1790', '795', '448', 'Deleniti ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1791', '795', '448', 'Atque quis tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1792', '795', '448', 'Impedit quasi nostrum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1793', '795', '449', 'Quia perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1794', '795', '449', 'Repudiandae amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1795', '795', '449', 'Deleniti et recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1796', '795', '449', 'Quia ullam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1797', '795', '450', 'Magnam sit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1798', '795', '450', 'Ex reprehenderit ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1799', '795', '450', 'Itaque nemo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1800', '795', '450', 'Id unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1801', '795', '451', 'Itaque deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1802', '795', '451', 'Error aut ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1803', '795', '451', 'Eligendi fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1804', '795', '451', 'Dicta quia voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1805', '795', '452', 'Quisquam qui accusamus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1806', '795', '452', 'Voluptas id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1807', '795', '452', 'Facilis maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1808', '795', '452', 'Molestias praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1809', '795', '453', 'Voluptatum et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1810', '795', '453', 'Et mollitia at.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1811', '795', '453', 'Qui voluptas ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1812', '795', '453', 'Eos nemo dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1813', '795', '454', 'Et nam est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1814', '795', '454', 'Non dolore illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1815', '795', '454', 'Consequuntur non ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1816', '795', '454', 'Ut ut iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1817', '795', '455', 'Eligendi consequatur explicabo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1818', '795', '455', 'Eos magnam earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1819', '795', '455', 'Explicabo quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1820', '795', '455', 'Non dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1821', '795', '456', 'Animi earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1822', '795', '456', 'Nihil explicabo aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1823', '795', '456', 'Quia praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1824', '795', '456', 'Quidem ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1825', '795', '457', 'Eum dolore sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1826', '795', '457', 'Quas nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1827', '795', '457', 'Eos voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1828', '795', '457', 'Possimus dolor eveniet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1829', '795', '458', 'Quod sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1830', '795', '458', 'Dolor voluptate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1831', '795', '458', 'Veniam adipisci cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1832', '795', '458', 'Dolorem minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1833', '805', '459', 'Enim dolorum voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1834', '805', '459', 'Unde blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1835', '805', '459', 'Harum rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1836', '805', '459', 'Voluptas et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1837', '805', '460', 'Et adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1838', '805', '460', 'Ut harum neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1839', '805', '460', 'Cupiditate vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1840', '805', '460', 'Sunt similique ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1841', '805', '461', 'Unde eveniet corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1842', '805', '461', 'Vel cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1843', '805', '461', 'Fuga est eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1844', '805', '461', 'Laborum in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1845', '805', '462', 'Quia dolorem nam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1846', '805', '462', 'Dolor ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1847', '805', '462', 'Ullam quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1848', '805', '462', 'Accusamus mollitia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1849', '805', '463', 'Corrupti illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1850', '805', '463', 'Est exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1851', '805', '463', 'Ratione est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1852', '805', '463', 'Quisquam culpa vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1853', '805', '464', 'Modi sit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1854', '805', '464', 'In quas sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1855', '805', '464', 'Quam ea expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1856', '805', '464', 'Suscipit eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1857', '805', '465', 'Quo eos optio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1858', '805', '465', 'Eos eius.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1859', '805', '465', 'Quam dignissimos amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1860', '805', '465', 'Aut eum ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1861', '805', '466', 'Dolorem quis nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1862', '805', '466', 'Officia aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1863', '805', '466', 'Illo reiciendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1864', '805', '466', 'Nostrum provident.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1865', '805', '467', 'Non quisquam fugit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1866', '805', '467', 'Qui alias ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1867', '805', '467', 'Qui laudantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1868', '805', '467', 'Quis placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1869', '805', '468', 'In facere dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1870', '805', '468', 'Blanditiis nulla aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1871', '805', '468', 'Asperiores eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1872', '805', '468', 'Facilis distinctio id.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1873', '805', '469', 'Ut cum aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1874', '805', '469', 'Dolor consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1875', '805', '469', 'Cum aut aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1876', '805', '469', 'Recusandae aut labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1877', '805', '470', 'In quod eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1878', '805', '470', 'Enim excepturi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1879', '805', '470', 'Dolores reprehenderit qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1880', '805', '470', 'Numquam est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1881', '805', '471', 'Eos odio quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1882', '805', '471', 'Corporis odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1883', '805', '471', 'Reprehenderit corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1884', '805', '471', 'Qui laborum et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1885', '805', '472', 'Veritatis aspernatur aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1886', '805', '472', 'Incidunt reiciendis velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1887', '805', '472', 'Tempore ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1888', '805', '472', 'Corrupti minima.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1889', '805', '473', 'Et libero dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1890', '805', '473', 'Ut atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1891', '805', '473', 'Praesentium ad minima.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1892', '805', '473', 'Veniam quis adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1893', '805', '474', 'Sed officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1894', '805', '474', 'Molestiae qui debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1895', '805', '474', 'Vero repellat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1896', '805', '474', 'Eos voluptas nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1897', '805', '475', 'Officia non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1898', '805', '475', 'Dolores nisi qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1899', '805', '475', 'Est sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1900', '805', '475', 'Placeat ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1901', '805', '476', 'Facere maxime placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1902', '805', '476', 'Commodi aspernatur ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1903', '805', '476', 'Vel repellat illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1904', '805', '476', 'Eum dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1905', '805', '477', 'Sunt quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1906', '805', '477', 'Voluptas deserunt delectus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1907', '805', '477', 'Nostrum et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1908', '805', '477', 'Tempora rem sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1909', '805', '478', 'Quo cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1910', '805', '478', 'Tempora unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1911', '805', '478', 'Quo debitis sapiente.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1912', '805', '478', 'Laboriosam aliquam rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1913', '805', '479', 'Voluptas molestiae fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1914', '805', '479', 'Eum et dolore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1915', '805', '479', 'Pariatur quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1916', '805', '479', 'Accusantium voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1917', '805', '480', 'Debitis assumenda aliquid.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1918', '805', '480', 'Aspernatur nostrum veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1919', '805', '480', 'Eligendi vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1920', '805', '480', 'Qui recusandae velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1921', '805', '481', 'Alias error molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1922', '805', '481', 'Tenetur dolorum est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1923', '805', '481', 'Et veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1924', '805', '481', 'Corporis sunt.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1925', '805', '482', 'Consequatur iure quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1926', '805', '482', 'Aut ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1927', '805', '482', 'Impedit cupiditate cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1928', '805', '482', 'Est sit porro.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1929', '805', '483', 'Non enim rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1930', '805', '483', 'Eaque et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1931', '805', '483', 'Dolorem recusandae sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1932', '805', '483', 'Excepturi nostrum illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1933', '805', '484', 'Voluptate quo atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1934', '805', '484', 'Aut quia ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1935', '805', '484', 'Ipsa est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1936', '805', '484', 'Illum voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1937', '821', '485', 'Doloremque reiciendis asperiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1938', '821', '485', 'Quaerat voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1939', '821', '485', 'Enim natus voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1940', '821', '485', 'Rem iusto libero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1941', '821', '486', 'Error aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1942', '821', '486', 'Quo aut et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1943', '821', '486', 'Aut amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1944', '821', '486', 'Voluptate ea deserunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1945', '821', '487', 'Rerum nemo eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1946', '821', '487', 'Fuga at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1947', '821', '487', 'Dolore qui rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1948', '821', '487', 'Exercitationem laudantium quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1949', '821', '488', 'Velit esse.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1950', '821', '488', 'Aspernatur nulla.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1951', '821', '488', 'Iusto magnam rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1952', '821', '488', 'Commodi dolorem illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1953', '821', '489', 'Ut in est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1954', '821', '489', 'Temporibus qui beatae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1955', '821', '489', 'Excepturi est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1956', '821', '489', 'Aliquid tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1957', '821', '490', 'Ab mollitia vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1958', '821', '490', 'Animi quo eveniet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1959', '821', '490', 'Rem qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1960', '821', '490', 'Praesentium qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1961', '821', '491', 'Eveniet non quae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1962', '821', '491', 'Cumque iusto magnam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1963', '821', '491', 'Nulla distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1964', '821', '491', 'Voluptas omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1965', '821', '492', 'Error et perferendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1966', '821', '492', 'Fugit molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1967', '821', '492', 'Sit sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1968', '821', '492', 'Officiis cumque earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1969', '821', '493', 'Harum reiciendis omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1970', '821', '493', 'Aut inventore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1971', '821', '493', 'Quaerat cumque distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1972', '821', '493', 'Corporis eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1973', '821', '494', 'Veniam placeat sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1974', '821', '494', 'Ipsa omnis quo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1975', '821', '494', 'Commodi eveniet cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1976', '821', '494', 'Et accusamus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1977', '821', '495', 'Ut et quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1978', '821', '495', 'Incidunt nesciunt sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1979', '821', '495', 'Quis soluta consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1980', '821', '495', 'Tempora est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1981', '821', '496', 'Soluta illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1982', '821', '496', 'Unde soluta facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1983', '821', '496', 'Eveniet eligendi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1984', '821', '496', 'Vel labore soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1985', '821', '497', 'Quo optio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1986', '821', '497', 'In incidunt quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1987', '821', '497', 'Nostrum quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1988', '821', '497', 'Tempore nam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1989', '821', '498', 'Qui dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1990', '821', '498', 'Eos dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1991', '821', '498', 'Quidem et aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1992', '821', '498', 'Quam illo dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1993', '826', '499', 'Minima et alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1994', '826', '499', 'Tempore repudiandae provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1995', '826', '499', 'Mollitia nobis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1996', '826', '499', 'Eum debitis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1997', '826', '500', 'Quia laborum iusto.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1998', '826', '500', 'Ab non cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('1999', '826', '500', 'Aut quam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2000', '826', '500', 'Cum sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2001', '826', '501', 'A omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2002', '826', '501', 'Debitis id.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2003', '826', '501', 'Quaerat eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2004', '826', '501', 'Asperiores maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2005', '826', '502', 'Quae tempore id.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2006', '826', '502', 'Laboriosam est non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2007', '826', '502', 'Aut ullam inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2008', '826', '502', 'Quidem sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2009', '826', '503', 'Sunt soluta sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2010', '826', '503', 'Veniam laboriosam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2011', '826', '503', 'Nihil consequatur voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2012', '826', '503', 'Aut laborum dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2013', '826', '504', 'Eaque necessitatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2014', '826', '504', 'Aut saepe natus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2015', '826', '504', 'Molestiae quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2016', '826', '504', 'Sequi non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2017', '826', '505', 'Culpa aliquam debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2018', '826', '505', 'Illo accusamus reiciendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2019', '826', '505', 'Laborum mollitia reprehenderit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2020', '826', '505', 'Autem ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2021', '826', '506', 'Dicta pariatur quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2022', '826', '506', 'Possimus exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2023', '826', '506', 'Corrupti assumenda adipisci.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2024', '826', '506', 'Voluptas dignissimos quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2025', '826', '507', 'Exercitationem harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2026', '826', '507', 'Dolores natus omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2027', '826', '507', 'Reiciendis beatae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2028', '826', '507', 'Perspiciatis qui amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2029', '826', '508', 'Quaerat placeat illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2030', '826', '508', 'Necessitatibus sunt placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2031', '826', '508', 'Cupiditate atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2032', '826', '508', 'Saepe dolor temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2033', '826', '509', 'Eos et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2034', '826', '509', 'Possimus et praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2035', '826', '509', 'Earum voluptatem aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2036', '826', '509', 'Repudiandae enim quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2037', '826', '510', 'Officia assumenda.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2038', '826', '510', 'Labore sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2039', '826', '510', 'Eum nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2040', '826', '510', 'Est iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2041', '826', '511', 'Veniam voluptatem beatae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2042', '826', '511', 'Dolorem quo ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2043', '826', '511', 'Quasi autem ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2044', '826', '511', 'Et eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2045', '826', '512', 'Quas vel cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2046', '826', '512', 'Perspiciatis molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2047', '826', '512', 'Officiis fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2048', '826', '512', 'Ratione sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2049', '826', '513', 'Voluptas quod ad.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2050', '826', '513', 'Beatae asperiores est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2051', '826', '513', 'Officia sit animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2052', '826', '513', 'Eius reiciendis repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2053', '826', '514', 'A iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2054', '826', '514', 'Debitis rerum est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2055', '826', '514', 'Consectetur aperiam similique.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2056', '826', '514', 'Consequuntur ipsam in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2057', '826', '515', 'Non aliquid quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2058', '826', '515', 'Doloribus qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2059', '826', '515', 'Dolores delectus atque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2060', '826', '515', 'Magni ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2061', '826', '516', 'Id nihil molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2062', '826', '516', 'Voluptas corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2063', '826', '516', 'Ad fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2064', '826', '516', 'Vel facere blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2065', '826', '517', 'Neque incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2066', '826', '517', 'Repudiandae sed modi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2067', '826', '517', 'Voluptas reiciendis est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2068', '826', '517', 'Dolores quisquam non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2069', '826', '518', 'Perferendis tenetur eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2070', '826', '518', 'Veniam hic et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2071', '826', '518', 'Facilis doloribus odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2072', '826', '518', 'Maxime qui neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2073', '826', '519', 'Similique est harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2074', '826', '519', 'Fuga pariatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2075', '826', '519', 'Est vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2076', '826', '519', 'Rerum molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2077', '826', '520', 'Culpa modi doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2078', '826', '520', 'Blanditiis impedit in.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2079', '826', '520', 'Alias sapiente.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2080', '826', '520', 'Consequatur iusto eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2081', '826', '521', 'Quae officia reprehenderit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2082', '826', '521', 'Reprehenderit dolore aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2083', '826', '521', 'Nam ut autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2084', '826', '521', 'Facilis velit repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2085', '826', '522', 'Dignissimos nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2086', '826', '522', 'Eum aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2087', '826', '522', 'Deserunt aut molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2088', '826', '522', 'Labore omnis esse.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2089', '826', '523', 'Esse aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2090', '826', '523', 'Sed consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2091', '826', '523', 'Modi quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2092', '826', '523', 'Cupiditate non inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2093', '826', '524', 'Doloremque et atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2094', '826', '524', 'Tempore est nam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2095', '826', '524', 'Assumenda aspernatur vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2096', '826', '524', 'Cumque dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2097', '826', '525', 'Officiis et ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2098', '826', '525', 'Neque enim sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2099', '826', '525', 'Aut deserunt corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2100', '826', '525', 'Non sed quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2101', '826', '526', 'Beatae error quasi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2102', '826', '526', 'Fugit facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2103', '826', '526', 'Harum hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2104', '826', '526', 'Quae velit nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2105', '826', '527', 'Optio suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2106', '826', '527', 'Aut voluptas consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2107', '826', '527', 'Saepe eos recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2108', '826', '527', 'Velit amet possimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2109', '833', '528', 'Neque inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2110', '833', '528', 'Soluta amet maiores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2111', '833', '528', 'Voluptas quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2112', '833', '528', 'Soluta qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2113', '833', '529', 'Iusto rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2114', '833', '529', 'Ut inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2115', '833', '529', 'Et odio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2116', '833', '529', 'Consequatur maiores dicta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2117', '833', '530', 'Dolores sunt fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2118', '833', '530', 'Sit saepe ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2119', '833', '530', 'Eius ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2120', '833', '530', 'Cumque et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2121', '833', '531', 'Consequatur est eveniet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2122', '833', '531', 'Tenetur sint impedit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2123', '833', '531', 'Atque asperiores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2124', '833', '531', 'Omnis dolore qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2125', '833', '532', 'Nobis illo nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2126', '833', '532', 'Odio corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2127', '833', '532', 'Dolorem ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2128', '833', '532', 'Nulla nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2129', '833', '533', 'Quibusdam ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2130', '833', '533', 'Sint harum similique.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2131', '833', '533', 'Vitae sed tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2132', '833', '533', 'Consectetur quam inventore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2133', '833', '534', 'Ab sit et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2134', '833', '534', 'Perspiciatis sit sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2135', '833', '534', 'Commodi adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2136', '833', '534', 'Quibusdam impedit voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2137', '833', '535', 'Consequuntur eius.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2138', '833', '535', 'Reiciendis ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2139', '833', '535', 'Ea aut dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2140', '833', '535', 'Sit quo aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2141', '833', '536', 'Laboriosam temporibus impedit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2142', '833', '536', 'Natus et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2143', '833', '536', 'Voluptatem voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2144', '833', '536', 'Omnis dolor.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2145', '833', '537', 'Ad ratione perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2146', '833', '537', 'Unde et accusamus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2147', '833', '537', 'At dolorum praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2148', '833', '537', 'Perspiciatis accusantium ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2149', '833', '538', 'Beatae accusantium sequi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2150', '833', '538', 'Accusamus minus sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2151', '833', '538', 'Voluptatum nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2152', '833', '538', 'Tempore hic est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2153', '833', '539', 'Et quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2154', '833', '539', 'Alias quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2155', '833', '539', 'Dolores dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2156', '833', '539', 'Necessitatibus provident incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2157', '833', '540', 'Reprehenderit qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2158', '833', '540', 'Aliquam ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2159', '833', '540', 'Consequuntur iste illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2160', '833', '540', 'Unde molestiae quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2161', '833', '541', 'Est quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2162', '833', '541', 'Corrupti provident molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2163', '833', '541', 'Quasi et natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2164', '833', '541', 'Alias voluptas repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2165', '833', '542', 'Non distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2166', '833', '542', 'Id omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2167', '833', '542', 'Eius necessitatibus quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2168', '833', '542', 'Voluptatum sapiente harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2169', '833', '543', 'Nam ipsa similique.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2170', '833', '543', 'Consequatur ducimus a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2171', '833', '543', 'Illo quas quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2172', '833', '543', 'Voluptas iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2173', '833', '544', 'Nesciunt quidem quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2174', '833', '544', 'Nemo animi quidem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2175', '833', '544', 'Assumenda repellendus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2176', '833', '544', 'Distinctio velit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2177', '833', '545', 'Facere quam qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2178', '833', '545', 'Aliquid dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2179', '833', '545', 'Officia voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2180', '833', '545', 'Eos et impedit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2181', '833', '546', 'Sed sed cum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2182', '833', '546', 'Commodi non sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2183', '833', '546', 'Quo perferendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2184', '833', '546', 'Beatae sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2185', '833', '547', 'Nobis doloribus molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2186', '833', '547', 'Quod et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2187', '833', '547', 'Corporis ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2188', '833', '547', 'Rem ab.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2189', '833', '548', 'Rerum vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2190', '833', '548', 'Nam illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2191', '833', '548', 'Nobis corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2192', '833', '548', 'Facilis quia ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2193', '833', '549', 'Quidem voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2194', '833', '549', 'Possimus ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2195', '833', '549', 'Voluptatem beatae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2196', '833', '549', 'Temporibus non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2197', '833', '550', 'Accusantium ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2198', '833', '550', 'Pariatur consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2199', '833', '550', 'Aut officiis nulla.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2200', '833', '550', 'Modi illo voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2201', '833', '551', 'Iusto natus consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2202', '833', '551', 'Quasi unde quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2203', '833', '551', 'Et quia error.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2204', '833', '551', 'Quo ipsam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2205', '833', '552', 'Aut et voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2206', '833', '552', 'Repellendus fugiat hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2207', '833', '552', 'Vero necessitatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2208', '833', '552', 'Debitis tempora ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2209', '833', '553', 'Recusandae quas voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2210', '833', '553', 'Eaque dolorum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2211', '833', '553', 'Voluptates voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2212', '833', '553', 'Modi odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2213', '833', '554', 'Necessitatibus aut officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2214', '833', '554', 'Architecto debitis rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2215', '833', '554', 'Rerum quia eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2216', '833', '554', 'Rerum ipsum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2217', '833', '555', 'Qui qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2218', '833', '555', 'Aut maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2219', '833', '555', 'Non modi suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2220', '833', '555', 'Alias fugit sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2221', '833', '556', 'Culpa aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2222', '833', '556', 'Est aperiam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2223', '833', '556', 'Reiciendis dolores enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2224', '833', '556', 'Aliquam quos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2225', '833', '557', 'Quidem et doloremque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2226', '833', '557', 'Placeat ipsa nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2227', '833', '557', 'Nihil ipsam veritatis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2228', '833', '557', 'Officiis ipsam et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2229', '834', '558', 'Et et dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2230', '834', '558', 'Dolores fuga ea.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2231', '834', '558', 'Animi quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2232', '834', '558', 'Non in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2233', '834', '559', 'Illum vel occaecati.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2234', '834', '559', 'Minus vero eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2235', '834', '559', 'Voluptas eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2236', '834', '559', 'Odio temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2237', '834', '560', 'Maxime a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2238', '834', '560', 'Cupiditate necessitatibus quisquam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2239', '834', '560', 'Dolor ullam in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2240', '834', '560', 'Sit ea velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2241', '834', '561', 'Non iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2242', '834', '561', 'Ea quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2243', '834', '561', 'Labore labore omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2244', '834', '561', 'Quis consectetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2245', '834', '562', 'Molestias aut sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2246', '834', '562', 'In voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2247', '834', '562', 'Sed non esse.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2248', '834', '562', 'Nulla nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2249', '834', '563', 'Maxime ex distinctio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2250', '834', '563', 'Non voluptas amet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2251', '834', '563', 'Sequi officia est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2252', '834', '563', 'Ut architecto expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2253', '834', '564', 'Non quasi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2254', '834', '564', 'Quas sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2255', '834', '564', 'Aliquid soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2256', '834', '564', 'Voluptatem placeat quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2257', '834', '565', 'Ea consequuntur amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2258', '834', '565', 'Harum sed asperiores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2259', '834', '565', 'Asperiores quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2260', '834', '565', 'Ullam ad.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2261', '834', '566', 'Odit exercitationem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2262', '834', '566', 'Ad vero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2263', '834', '566', 'Expedita ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2264', '834', '566', 'Magni adipisci voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2265', '834', '567', 'Fuga eius.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2266', '834', '567', 'Est magnam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2267', '834', '567', 'Et vel cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2268', '834', '567', 'Sed maxime quae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2269', '834', '568', 'At quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2270', '834', '568', 'Ea ea officia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2271', '834', '568', 'Dolorem aliquid est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2272', '834', '568', 'Reprehenderit eum velit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2273', '834', '569', 'Ipsa quia ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2274', '834', '569', 'Earum neque dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2275', '834', '569', 'Aut placeat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2276', '834', '569', 'Aperiam impedit corporis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2277', '834', '570', 'Quis quis ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2278', '834', '570', 'Voluptatem consequuntur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2279', '834', '570', 'Porro consectetur tempora.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2280', '834', '570', 'Molestiae cupiditate labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2281', '834', '571', 'Iure ratione.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2282', '834', '571', 'Soluta maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2283', '834', '571', 'Nihil quibusdam expedita.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2284', '834', '571', 'Itaque voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2285', '834', '572', 'Natus non et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2286', '834', '572', 'Nisi expedita vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2287', '834', '572', 'Enim mollitia quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2288', '834', '572', 'Quasi eos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2289', '834', '573', 'Aut velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2290', '834', '573', 'Aperiam facere.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2291', '834', '573', 'Distinctio dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2292', '834', '573', 'Eos recusandae sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2293', '834', '574', 'Quis aliquam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2294', '834', '574', 'Numquam labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2295', '834', '574', 'Aliquid consectetur nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2296', '834', '574', 'Et cupiditate saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2297', '834', '575', 'Est possimus dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2298', '834', '575', 'Dolores dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2299', '834', '575', 'Similique quo rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2300', '834', '575', 'Magni aut corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2301', '834', '576', 'At assumenda.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2302', '834', '576', 'Architecto consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2303', '834', '576', 'Qui alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2304', '834', '576', 'Non illo.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2305', '834', '577', 'Et deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2306', '834', '577', 'Soluta sit a.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2307', '834', '577', 'Et soluta.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2308', '834', '577', 'Consequatur fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2309', '834', '578', 'Culpa sunt iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2310', '834', '578', 'Sint enim voluptatibus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2311', '834', '578', 'Est reprehenderit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2312', '834', '578', 'Dolores neque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2313', '834', '579', 'Eum sed perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2314', '834', '579', 'Quia officia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2315', '834', '579', 'Eum quidem maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2316', '834', '579', 'Veniam omnis molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2317', '887', '580', 'Assumenda expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2318', '887', '580', 'Facilis omnis quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2319', '887', '580', 'In tenetur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2320', '887', '580', 'Sed repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2321', '887', '581', 'Alias totam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2322', '887', '581', 'Velit et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2323', '887', '581', 'Vitae repellat non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2324', '887', '581', 'Molestias voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2325', '887', '582', 'Necessitatibus voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2326', '887', '582', 'Iste quasi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2327', '887', '582', 'Eligendi cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2328', '887', '582', 'Aperiam nisi quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2329', '887', '583', 'Voluptas laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2330', '887', '583', 'Voluptas odio.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2331', '887', '583', 'Sint ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2332', '887', '583', 'Autem est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2333', '887', '584', 'Quae eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2334', '887', '584', 'Voluptatem vel et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2335', '887', '584', 'Occaecati voluptas odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2336', '887', '584', 'Voluptatem perspiciatis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2337', '887', '585', 'Aliquam aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2338', '887', '585', 'Et voluptatem deleniti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2339', '887', '585', 'Maxime vel omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2340', '887', '585', 'Ipsum qui dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2341', '887', '586', 'Qui voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2342', '887', '586', 'Quas non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2343', '887', '586', 'Voluptatum reprehenderit veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2344', '887', '586', 'Est sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2345', '887', '587', 'Eum facere natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2346', '887', '587', 'Occaecati provident quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2347', '887', '587', 'Qui eveniet quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2348', '887', '587', 'Autem repellat accusantium.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2349', '887', '588', 'Et fugiat consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2350', '887', '588', 'Voluptas quam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2351', '887', '588', 'Voluptatem asperiores laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2352', '887', '588', 'Qui ea suscipit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2353', '887', '589', 'Neque et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2354', '887', '589', 'Deserunt pariatur explicabo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2355', '887', '589', 'Omnis rem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2356', '887', '589', 'Molestias officia porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2357', '887', '590', 'Cupiditate reiciendis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2358', '887', '590', 'Aut odit voluptatibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2359', '887', '590', 'Doloribus blanditiis dolorum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2360', '887', '590', 'Eaque laboriosam quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2361', '887', '591', 'Est et quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2362', '887', '591', 'Excepturi alias porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2363', '887', '591', 'Cupiditate sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2364', '887', '591', 'Voluptas commodi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2365', '887', '592', 'Consectetur id ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2366', '887', '592', 'Cupiditate velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2367', '887', '592', 'Error animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2368', '887', '592', 'Earum sunt libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2369', '887', '593', 'Nemo amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2370', '887', '593', 'Facere est ratione.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2371', '887', '593', 'Vel laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2372', '887', '593', 'Quisquam rerum eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2373', '887', '594', 'Est rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2374', '887', '594', 'Ut harum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2375', '887', '594', 'Quibusdam aut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2376', '887', '594', 'Incidunt voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2377', '887', '595', 'Rem ex enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2378', '887', '595', 'Qui cupiditate fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2379', '887', '595', 'Sed optio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2380', '887', '595', 'Et molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2381', '887', '596', 'Dolorem blanditiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2382', '887', '596', 'Amet eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2383', '887', '596', 'Hic provident.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2384', '887', '596', 'Qui reiciendis ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2385', '887', '597', 'Ut sint est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2386', '887', '597', 'Et voluptas impedit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2387', '887', '597', 'Sit enim consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2388', '887', '597', 'Ea corporis tenetur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2389', '887', '598', 'Reiciendis vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2390', '887', '598', 'Est ratione consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2391', '887', '598', 'Sunt nobis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2392', '887', '598', 'Aperiam qui quod.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2393', '887', '599', 'Pariatur inventore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2394', '887', '599', 'Debitis vero consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2395', '887', '599', 'Iure sit possimus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2396', '887', '599', 'Ut provident velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2397', '887', '600', 'Culpa consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2398', '887', '600', 'Est qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2399', '887', '600', 'Molestiae porro.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2400', '887', '600', 'Quia vel cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2401', '887', '601', 'Tempora recusandae officiis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2402', '887', '601', 'Dolorem et totam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2403', '887', '601', 'Quasi et vel.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2404', '887', '601', 'Aut fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2405', '899', '602', 'Veritatis omnis eaque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2406', '899', '602', 'Est aut aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2407', '899', '602', 'Rem ea iste.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2408', '899', '602', 'Vitae enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2409', '899', '603', 'Sed magnam molestiae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2410', '899', '603', 'Hic temporibus officia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2411', '899', '603', 'Culpa veritatis cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2412', '899', '603', 'Ullam expedita fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2413', '899', '604', 'Ex corporis quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2414', '899', '604', 'Eos delectus et.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2415', '899', '604', 'Excepturi rerum omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2416', '899', '604', 'Reiciendis natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2417', '899', '605', 'Quis consequatur nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2418', '899', '605', 'Ea odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2419', '899', '605', 'Nulla autem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2420', '899', '605', 'Id qui corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2421', '899', '606', 'Dolores eum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2422', '899', '606', 'Est nam praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2423', '899', '606', 'Non nihil rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2424', '899', '606', 'Qui illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2425', '899', '607', 'Est impedit molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2426', '899', '607', 'Molestiae praesentium.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2427', '899', '607', 'Rem veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2428', '899', '607', 'Deserunt rerum facilis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2429', '899', '608', 'Ex esse corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2430', '899', '608', 'Suscipit ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2431', '899', '608', 'Eos sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2432', '899', '608', 'Soluta aperiam ut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2433', '899', '609', 'Blanditiis et hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2434', '899', '609', 'Id ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2435', '899', '609', 'Rerum in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2436', '899', '609', 'Dolorum quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2437', '899', '610', 'Magni est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2438', '899', '610', 'Neque enim voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2439', '899', '610', 'Voluptatem illo velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2440', '899', '610', 'Commodi est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2441', '899', '611', 'Mollitia vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2442', '899', '611', 'Repellendus ab vel.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2443', '899', '611', 'Error quia hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2444', '899', '611', 'Culpa sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2445', '899', '612', 'Ullam repudiandae in.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2446', '899', '612', 'Quasi itaque consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2447', '899', '612', 'Inventore facilis quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2448', '899', '612', 'Commodi asperiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2449', '899', '613', 'In maxime.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2450', '899', '613', 'Ex beatae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2451', '899', '613', 'Facere sunt praesentium.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2452', '899', '613', 'Laboriosam velit labore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2453', '899', '614', 'Vel ad itaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2454', '899', '614', 'Consequatur eveniet aperiam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2455', '899', '614', 'Architecto cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2456', '899', '614', 'Et a quod.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2457', '899', '615', 'Qui est itaque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2458', '899', '615', 'Quas aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2459', '899', '615', 'Similique deserunt voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2460', '899', '615', 'Qui et ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2461', '899', '616', 'Quam iste cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2462', '899', '616', 'Aliquam repellendus rerum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2463', '899', '616', 'Est fugit omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2464', '899', '616', 'Vel tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2465', '899', '617', 'Consequuntur ducimus sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2466', '899', '617', 'Repellat corrupti.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2467', '899', '617', 'Possimus non.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2468', '899', '617', 'Officiis recusandae eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2469', '899', '618', 'Quas repellat alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2470', '899', '618', 'Maiores molestiae et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2471', '899', '618', 'Dolor dolor delectus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2472', '899', '618', 'Voluptas molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2473', '899', '619', 'Deserunt atque illum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2474', '899', '619', 'Est deleniti quisquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2475', '899', '619', 'In quasi tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2476', '899', '619', 'Rerum et ducimus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2477', '899', '620', 'Neque eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2478', '899', '620', 'Voluptas doloremque labore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2479', '899', '620', 'Ullam ullam ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2480', '899', '620', 'Accusamus est est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2481', '899', '621', 'Est blanditiis dolorum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2482', '899', '621', 'Assumenda saepe laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2483', '899', '621', 'Sed voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2484', '899', '621', 'Nesciunt qui quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2485', '899', '622', 'Molestiae aut earum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2486', '899', '622', 'Sequi saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2487', '899', '622', 'Fuga quas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2488', '899', '622', 'Omnis ipsum aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2489', '899', '623', 'Et dolores fugiat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2490', '899', '623', 'Ea ipsam est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2491', '899', '623', 'Ab quis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2492', '899', '623', 'Et hic rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2493', '899', '624', 'Reprehenderit tempora.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2494', '899', '624', 'Qui occaecati velit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2495', '899', '624', 'Eos fugit sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2496', '899', '624', 'Tenetur accusantium voluptatem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2497', '899', '625', 'Quia eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2498', '899', '625', 'Laudantium molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2499', '899', '625', 'Sed asperiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2500', '899', '625', 'Dolores illum placeat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2501', '900', '626', 'Commodi eius est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2502', '900', '626', 'Earum ad voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2503', '900', '626', 'Non itaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2504', '900', '626', 'Praesentium dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2505', '900', '627', 'Sunt est.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2506', '900', '627', 'Qui hic rem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2507', '900', '627', 'Asperiores qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2508', '900', '627', 'Rerum est quasi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2509', '900', '628', 'Et dolorem aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2510', '900', '628', 'Nesciunt ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2511', '900', '628', 'Quia explicabo cupiditate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2512', '900', '628', 'Iusto itaque voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2513', '900', '629', 'Molestiae aut soluta.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2514', '900', '629', 'Sapiente minus recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2515', '900', '629', 'Est omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2516', '900', '629', 'At nam consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2517', '900', '630', 'Necessitatibus natus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2518', '900', '630', 'Molestiae placeat repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2519', '900', '630', 'Natus omnis eaque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2520', '900', '630', 'Officiis consectetur amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2521', '900', '631', 'Id voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2522', '900', '631', 'Et at qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2523', '900', '631', 'Provident aut earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2524', '900', '631', 'Possimus iste molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2525', '900', '632', 'Vel dolor doloribus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2526', '900', '632', 'Voluptatem architecto pariatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2527', '900', '632', 'Dolorem a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2528', '900', '632', 'Cupiditate dolor sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2529', '900', '633', 'Ipsa sint tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2530', '900', '633', 'Neque provident sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2531', '900', '633', 'Aliquid inventore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2532', '900', '633', 'Facilis facilis laboriosam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2533', '900', '634', 'Blanditiis harum veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2534', '900', '634', 'Voluptatem voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2535', '900', '634', 'Inventore harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2536', '900', '634', 'Unde consequatur omnis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2537', '900', '635', 'Illum rem est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2538', '900', '635', 'Sed corrupti ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2539', '900', '635', 'Totam voluptatem eaque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2540', '900', '635', 'Atque voluptas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2541', '900', '636', 'Sequi aspernatur at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2542', '900', '636', 'Iusto aut.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2543', '900', '636', 'Eligendi corrupti ipsum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2544', '900', '636', 'Ullam modi qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2545', '900', '637', 'Quisquam velit ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2546', '900', '637', 'Numquam veniam consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2547', '900', '637', 'Perferendis dolores voluptatum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2548', '900', '637', 'Quod voluptatem omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2549', '900', '638', 'Consequuntur atque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2550', '900', '638', 'Laudantium odio sint.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2551', '900', '638', 'Consequatur aut aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2552', '900', '638', 'Consequatur maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2553', '900', '639', 'Amet nam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2554', '900', '639', 'Sint beatae ad.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2555', '900', '639', 'Vitae praesentium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2556', '900', '639', 'Quis debitis eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2557', '900', '640', 'Voluptas ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2558', '900', '640', 'Error dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2559', '900', '640', 'Quia commodi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2560', '900', '640', 'Nemo ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2561', '900', '641', 'Et sapiente quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2562', '900', '641', 'Eum et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2563', '900', '641', 'Rerum rerum amet.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2564', '900', '641', 'Numquam iusto qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2565', '900', '642', 'Ut sunt reiciendis.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2566', '900', '642', 'Provident fuga consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2567', '900', '642', 'Sed dicta molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2568', '900', '642', 'Nisi omnis vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2569', '900', '643', 'Similique quasi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2570', '900', '643', 'Molestiae maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2571', '900', '643', 'Rerum voluptate est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2572', '900', '643', 'Rerum ex.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2573', '900', '644', 'Voluptatem consequatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2574', '900', '644', 'Eius explicabo aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2575', '900', '644', 'Qui eos voluptate.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2576', '900', '644', 'Incidunt voluptatem cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2577', '919', '645', 'Explicabo ex consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2578', '919', '645', 'Aspernatur provident nihil.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2579', '919', '645', 'Magni corrupti quae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2580', '919', '645', 'Iusto earum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2581', '919', '646', 'Et corporis exercitationem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2582', '919', '646', 'Aperiam ea voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2583', '919', '646', 'Rerum nam voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2584', '919', '646', 'Quo nesciunt quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2585', '919', '647', 'Commodi perspiciatis sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2586', '919', '647', 'Corrupti vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2587', '919', '647', 'Sunt est autem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2588', '919', '647', 'Sed id a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2589', '919', '648', 'Velit unde.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2590', '919', '648', 'Libero perspiciatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2591', '919', '648', 'Quia cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2592', '919', '648', 'Repellendus commodi recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2593', '919', '649', 'Occaecati sunt ducimus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2594', '919', '649', 'Numquam qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2595', '919', '649', 'Illo aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2596', '919', '649', 'Architecto repellendus hic.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2597', '919', '650', 'Tenetur quisquam reprehenderit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2598', '919', '650', 'Eius ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2599', '919', '650', 'Voluptatem et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2600', '919', '650', 'Corrupti alias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2601', '919', '651', 'Assumenda quas libero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2602', '919', '651', 'Ratione earum dolorem.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2603', '919', '651', 'Impedit esse.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2604', '919', '651', 'Eligendi quidem et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2605', '919', '652', 'Non sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2606', '919', '652', 'Neque rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2607', '919', '652', 'Modi ea dignissimos.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2608', '919', '652', 'Molestiae nihil expedita.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2609', '919', '653', 'Quae sed.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2610', '919', '653', 'Voluptas incidunt qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2611', '919', '653', 'Facere laborum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2612', '919', '653', 'Perferendis dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2613', '919', '654', 'Esse esse illum.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2614', '919', '654', 'Aliquid maxime veritatis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2615', '919', '654', 'Dolore accusantium.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2616', '919', '654', 'Iure quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2617', '919', '655', 'Velit possimus totam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2618', '919', '655', 'Dignissimos vero.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2619', '919', '655', 'Hic ut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2620', '919', '655', 'Natus eum officia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2621', '961', '656', 'Vel vitae et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2622', '961', '656', 'Earum a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2623', '961', '656', 'Rerum natus ea.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2624', '961', '656', 'Praesentium consequuntur cumque.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2625', '961', '657', 'Tempora nisi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2626', '961', '657', 'Doloribus ipsa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2627', '961', '657', 'Rerum harum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2628', '961', '657', 'Ullam nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2629', '961', '658', 'Atque eligendi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2630', '961', '658', 'Officia eveniet et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2631', '961', '658', 'Molestiae quaerat ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2632', '961', '658', 'Aliquam rerum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2633', '961', '659', 'Vitae hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2634', '961', '659', 'Omnis enim.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2635', '961', '659', 'Ea molestiae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2636', '961', '659', 'Rem placeat quaerat.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2637', '961', '660', 'Est delectus qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2638', '961', '660', 'Quia illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2639', '961', '660', 'Occaecati corrupti voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2640', '961', '660', 'Dicta sunt eos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2641', '961', '661', 'Voluptatum officiis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2642', '961', '661', 'Est aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2643', '961', '661', 'Voluptatem labore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2644', '961', '661', 'Perspiciatis animi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2645', '961', '662', 'Odio architecto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2646', '961', '662', 'Aspernatur quo sunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2647', '961', '662', 'Occaecati aut culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2648', '961', '662', 'Eum debitis aliquid.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2649', '961', '663', 'Numquam sit tenetur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2650', '961', '663', 'Sed dignissimos et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2651', '961', '663', 'Ut alias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2652', '961', '663', 'Ut nihil voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2653', '961', '664', 'Totam dolorem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2654', '961', '664', 'Aut totam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2655', '961', '664', 'Et modi sequi.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2656', '961', '664', 'Ut at.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2657', '961', '665', 'Sunt molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2658', '961', '665', 'Sint aut tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2659', '961', '665', 'Est recusandae saepe.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2660', '961', '665', 'Ad culpa.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2661', '961', '666', 'Omnis qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2662', '961', '666', 'Quis dolor eveniet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2663', '961', '666', 'Enim maiores dolore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2664', '961', '666', 'Consequatur nesciunt a.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2665', '961', '667', 'Numquam labore accusamus.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2666', '961', '667', 'Quos esse.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2667', '961', '667', 'Quo nisi corporis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2668', '961', '667', 'Deserunt aliquam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2669', '961', '668', 'Eum totam eum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2670', '961', '668', 'Est vero.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2671', '961', '668', 'Eius voluptatum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2672', '961', '668', 'Voluptatem similique ab.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2673', '961', '669', 'Assumenda qui molestiae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2674', '961', '669', 'Labore est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2675', '961', '669', 'Unde sed quos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2676', '961', '669', 'Quisquam sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2677', '961', '670', 'Ea suscipit sint.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2678', '961', '670', 'Dolorem cupiditate est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2679', '961', '670', 'Perspiciatis sit asperiores.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2680', '961', '670', 'Ratione rerum molestias.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2681', '961', '671', 'Et ea.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2682', '961', '671', 'Necessitatibus dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2683', '961', '671', 'Doloribus iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2684', '961', '671', 'Dolorem ratione totam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2685', '961', '672', 'Dolor ratione dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2686', '961', '672', 'Deleniti dolores molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2687', '961', '672', 'Cumque quisquam hic.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2688', '961', '672', 'Quo perferendis qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2689', '961', '673', 'Minus ducimus illo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2690', '961', '673', 'Et incidunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2691', '961', '673', 'Sit atque minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2692', '961', '673', 'Unde eius ad.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2693', '961', '674', 'Dolore nisi molestiae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2694', '961', '674', 'Eum sit iusto.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2695', '961', '674', 'Et maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2696', '961', '674', 'Qui sed.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2697', '971', '675', 'Sed consectetur in.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2698', '971', '675', 'Sint laboriosam dignissimos.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2699', '971', '675', 'Molestias recusandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2700', '971', '675', 'Itaque cum.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2701', '971', '676', 'Non quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2702', '971', '676', 'Officiis accusamus ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2703', '971', '676', 'Rerum et veniam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2704', '971', '676', 'Dolorum rerum eius.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2705', '971', '677', 'Dolores ab voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2706', '971', '677', 'Numquam saepe quia.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2707', '971', '677', 'Unde quibusdam.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2708', '971', '677', 'Doloribus dolor.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2709', '971', '678', 'Sunt pariatur.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2710', '971', '678', 'Pariatur deleniti adipisci.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2711', '971', '678', 'Illo voluptas placeat.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2712', '971', '678', 'Laboriosam qui.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2713', '971', '679', 'Eaque sed tempore.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2714', '971', '679', 'Fugiat autem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2715', '971', '679', 'Sequi iusto inventore.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2716', '971', '679', 'Dolor ratione minus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2717', '971', '680', 'Sed explicabo beatae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2718', '971', '680', 'Vero rerum voluptatem.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2719', '971', '680', 'Exercitationem natus nesciunt.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2720', '971', '680', 'Et minima qui.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2721', '971', '681', 'Veritatis et commodi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2722', '971', '681', 'Alias recusandae.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2723', '971', '681', 'Quaerat odit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2724', '971', '681', 'Cum fugit iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2725', '971', '682', 'Asperiores temporibus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2726', '971', '682', 'Velit quibusdam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2727', '971', '682', 'Vel voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2728', '971', '682', 'Dolorem eos enim.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2729', '971', '683', 'Repellat omnis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2730', '971', '683', 'Dolore et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2731', '971', '683', 'Et quo quo.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2732', '971', '683', 'Quia consequatur.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2733', '971', '684', 'Odit repudiandae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2734', '971', '684', 'A debitis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2735', '971', '684', 'Nihil accusamus.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2736', '971', '684', 'Et omnis id.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2737', '971', '685', 'Repellendus laudantium quam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2738', '971', '685', 'Odio dolor velit.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2739', '971', '685', 'Odit consequuntur facilis.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2740', '971', '685', 'Voluptatum voluptas.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2741', '971', '686', 'Dolorem rem eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2742', '971', '686', 'Atque ipsam.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2743', '971', '686', 'Quae quas.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2744', '971', '686', 'Expedita a vitae.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2745', '971', '687', 'Numquam sint nisi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2746', '971', '687', 'Quibusdam odio eligendi.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2747', '971', '687', 'Aliquam aut odio.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2748', '971', '687', 'Consequatur officia culpa.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2749', '971', '688', 'Possimus id fugit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2750', '971', '688', 'Quasi minima.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2751', '971', '688', 'In fuga.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2752', '971', '688', 'Esse sed maiores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2753', '971', '689', 'Architecto illo est.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2754', '971', '689', 'Debitis modi molestias.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2755', '971', '689', 'Provident reprehenderit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2756', '971', '689', 'Deserunt aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2757', '971', '690', 'Sint maxime quia.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2758', '971', '690', 'Esse voluptas eius.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2759', '971', '690', 'Pariatur eum non.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2760', '971', '690', 'Adipisci occaecati.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2761', '971', '691', 'Iste ea corrupti.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2762', '971', '691', 'Voluptas voluptate.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2763', '971', '691', 'Earum deleniti dolores.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2764', '971', '691', 'Labore aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2765', '971', '692', 'Aliquam rem et.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2766', '971', '692', 'Quo amet.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2767', '971', '692', 'Sit blanditiis aut.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2768', '971', '692', 'Voluptatibus eligendi sit.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2769', '971', '693', 'Quia cupiditate iure.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2770', '971', '693', 'Perspiciatis voluptates.', '0');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2771', '971', '693', 'Minus neque.', '1');
INSERT INTO `lesson_quiz_question_answer` VALUES ('2772', '971', '693', 'Aliquam laborum.', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', 'Cấu hình hệ thống', '1', 'menu/index', 'cog', '1', '1', null, '2017-03-14 21:57:14', '2017-05-16 01:57:17');
INSERT INTO `menu` VALUES ('2', '1', 'Quản lý người dùng', '1', 'admin/index', 'user-circle', '1', '1', '2', '2017-03-14 21:59:04', '2017-03-14 21:59:07');
INSERT INTO `menu` VALUES ('3', '1', 'Menu hệ thống', '1', 'menu/index', 'bars', '1', '1', '3', '2017-03-14 22:00:31', '2017-03-14 22:00:33');
INSERT INTO `menu` VALUES ('4', '1', 'Nhóm quyền quản trị', '1', 'admin-group/index', 'users', '1', '1', '1', '2017-03-15 00:14:23', '2017-03-15 00:14:25');
INSERT INTO `menu` VALUES ('5', '0', 'Quản lý hợp đồng', '1', 'agreement/index', 'sticky-note', '1', '1', null, '2017-03-15 00:25:20', '2017-03-15 00:25:23');
INSERT INTO `menu` VALUES ('6', '5', 'Loại hợp đồng', '1', 'agreement-type/index', 'tags', '1', '1', '2', '2017-03-15 00:26:29', '2017-03-15 00:26:32');
INSERT INTO `menu` VALUES ('7', '5', 'Hợp đồng', '1', 'agreement/index', 'newspaper-o', '1', '1', '1', '2017-03-15 00:29:13', '2017-03-15 00:29:16');
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
INSERT INTO `menu` VALUES ('21', '0', 'Quản lý gói cước', '1', 'package/index', 'space-shuttle ', '1', '0', null, '2017-03-23 00:51:05', '2017-03-23 00:51:07');
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
INSERT INTO `menu` VALUES ('33', '30', 'Thống kê truy cập', '1', 'report/access-statistic', 'book', '1', '1', '1', '2017-04-04 23:21:48', '2017-04-04 23:21:49');
INSERT INTO `menu` VALUES ('34', '30', 'Thống kê giao dịch', '1', 'report/transaction-statistic', 'book', '1', '1', '2', '2017-04-04 23:23:25', '2017-04-04 23:23:27');
INSERT INTO `menu` VALUES ('35', '30', 'Báo cáo đối soát', '1', 'report/index', 'book', '1', '1', '3', '2017-04-04 23:23:51', '2017-04-04 23:23:53');
INSERT INTO `menu` VALUES ('36', '0', 'Quản lý khóa học', '3', 'course/index', 'book', '1', '1', '1', '2017-05-03 07:29:18', '2017-05-03 07:29:20');
INSERT INTO `menu` VALUES ('37', '0', 'Gamification', '1', 'event/index', 'book', '1', '1', null, null, null);
INSERT INTO `menu` VALUES ('38', '37', 'Nhóm sự kiện', '1', 'event-group/index', 'book', '1', '1', '1', null, null);
INSERT INTO `menu` VALUES ('39', '37', 'Sự kiện', '1', 'event/index', 'book', '1', '1', '2', null, null);
INSERT INTO `menu` VALUES ('40', '37', 'Log người dùng', '1', 'event/log', 'book', '1', '1', '3', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party
-- ----------------------------
INSERT INTO `party` VALUES ('1', '2', 'Hệ thống Study.EDU', 'TVB', 'Hà Nội', '111111111', '+84909929229', '2017-03-16 00:42:26', '2017-03-16 00:42:29', '0', '0');
INSERT INTO `party` VALUES ('2', '1', 'Phạm Sỹ Nam', 'Phạm Sỹ Nam', 'Khoa Toán - Trường Đại học Sài Gòn - TP.HCM', '19591752233', '098677388', '1984-01-24 11:04:41', '2017-05-28 15:44:29', '0', '1');
INSERT INTO `party` VALUES ('3', '1', 'Trần Trung Hiếu', 'Justyn Von', '1227 Ondricka Knolls\nWinonaton, VT 05395', '202083621(9)', '621.505.1303 x70975', '1999-01-07 20:20:04', '1997-12-21 12:09:35', '0', '0');
INSERT INTO `party` VALUES ('4', '1', 'Prof. Gianni Anderson I', 'Mrs. Karianne Ferry', '11407 Lexus Path Apt. 039\nLake Colt, OH 53460-6615', '159303(9)', '+1-510-690-2425', '1999-03-24 17:49:48', '2007-04-09 01:19:57', '0', '0');
INSERT INTO `party` VALUES ('5', '1', 'Isabel Moore', 'Burnice Wolf', '28343 Edward Union\nLuettgenmouth, OR 13234-1894', '2342(9)', '+1-861-416-8934', '1995-01-08 10:30:28', '1975-08-17 02:44:03', '0', '0');
INSERT INTO `party` VALUES ('6', '1', 'Roger Lynch', 'Lisette Von', '25134 Gutkowski Mission Suite 751\nPort Joaquinside, NC 96856-1406', '7987895(9)', '+1.915.386.6502', '2004-12-22 23:57:42', '1999-02-22 03:21:00', '0', '0');
INSERT INTO `party` VALUES ('7', '1', 'Ceasar Yundt', 'Walker Wilderman', '234 Runte Trail\nMorissetteburgh, AR 60551-3789', '1(9)', '+12728329370', '1989-04-27 21:48:21', '1991-11-14 05:25:13', '0', '0');
INSERT INTO `party` VALUES ('8', '1', 'Hệ thống moon.vn', 'Markus Reynolds', '848 Selina Keys Apt. 431\nPort Arthur, PA 25464', '50259911(9)', '(852) 816-8527 x096', '1988-01-31 15:05:56', '1974-06-28 23:02:48', '0', '0');
INSERT INTO `party` VALUES ('9', '1', 'Dr. Jarret Krajcik I', 'Dr. Eldridge Dickens', '7149 White Centers Suite 286\nLake Carytown, NV 49379', '165967(9)', '390.851.8184', '1984-02-22 13:49:15', '2007-03-28 11:24:59', '0', '0');
INSERT INTO `party` VALUES ('10', '1', 'Cao Nhật Vượng', 'Virginie Lang', '259 Kelley Trace\nSouth Daisyhaven, MI 94981', '986(9)', '+1-776-943-9701', '1998-04-07 03:21:38', '1980-03-15 02:52:07', '0', '0');
INSERT INTO `party` VALUES ('11', '1', 'Hệ thống hocmai.vn', 'Maximus Cartwright III', '8658 McGlynn Ports\nWest Micah, MN 26825-8973', '96114(9)', '225.757.0973 x414', '2011-12-24 15:10:23', '1982-12-14 01:25:31', '0', '0');
INSERT INTO `party` VALUES ('12', '1', 'dasd', 'dasd', 'adssad', 'adsads', 'dasad', null, '2017-05-28 02:06:06', '0', '1');

-- ----------------------------
-- Table structure for party_type
-- ----------------------------
DROP TABLE IF EXISTS `party_type`;
CREATE TABLE `party_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '<p>Hội nghị <em><strong>Ianta</strong> </em>(<em>2-1945</em>) kh&ocirc;ng đưa ra quyết định n&agrave;o dưới đ&acirc;y?</p>', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('2', 'Ngày 24-10-1945, sau khi Quốc hội các nước thành viên phê chuẩn, bản Hiến chương của Liên hợp quốc\n', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('3', 'Những năm đầu sau khi Liên Xô tan rã, Liên bang Nga thực hiện chính sách đối ngoại ngả về phương Tây với hi vọng\n', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('4', 'Tại Quốc hội Mĩ (12-3-1947), Tổng thống Truman đề nghị?', '1', '8', null, '4', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_answer
-- ----------------------------
INSERT INTO `question_answer` VALUES ('1', '1', 'Thành lập tổ chức Liên hợp quốc.', '1');
INSERT INTO `question_answer` VALUES ('2', '1', 'Giải giáp quân Nhật ở Đông Dương', '0');
INSERT INTO `question_answer` VALUES ('3', '1', 'Tiêu diệt tận gốc chủ nghĩa phát xít.', '0');
INSERT INTO `question_answer` VALUES ('4', '1', 'Tiêu diệt tận gốc chủ nghĩa phát xít.', '0');
INSERT INTO `question_answer` VALUES ('5', '2', 'được bổ sung, hoàn chỉnh.', '0');
INSERT INTO `question_answer` VALUES ('6', '2', 'chính thức được công bố.', '1');
INSERT INTO `question_answer` VALUES ('7', '2', 'B. chính thức được công bố.', '0');
INSERT INTO `question_answer` VALUES ('8', '2', 'được chính thức thông qua', '0');
INSERT INTO `question_answer` VALUES ('9', '3', 'thành lập một liên minh chính trị ở châu Âu', '0');
INSERT INTO `question_answer` VALUES ('10', '3', 'xây dựng một liên minh kinh tế lớn ở châu Âu', '0');
INSERT INTO `question_answer` VALUES ('11', '3', 'nhận được sự ủng hộ về chính trị và sự viện trợ về kinh tế', '1');
INSERT INTO `question_answer` VALUES ('12', '3', ' tăng cường hợp tác khoa học-kĩ thuật với các nước châu Âu', '0');
INSERT INTO `question_answer` VALUES ('13', '4', ' tăng cường hợp tác khoa học-kĩ thuật với các nước châu Âu', '0');
INSERT INTO `question_answer` VALUES ('14', '4', ' tăng cường hợp tác khoa học-kĩ thuật với các nước châu Âu', '1');
INSERT INTO `question_answer` VALUES ('15', '4', 'thực hiện Kế hoạch Mácsan, giúp Tây Âu phục hồi kinh tế.', '0');
INSERT INTO `question_answer` VALUES ('16', '4', 'viện trợ khẩn cấp 400 triệu USD cho Hi Lạp và Thổ Nhĩ Kì', '0');

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
  `topic_id` int(11) DEFAULT NULL,
  `time_length` int(11) NOT NULL DEFAULT '30',
  `level` enum('easy','normal','hard') DEFAULT 'normal',
  `total_question` int(11) DEFAULT '10',
  `status` tinyint(1) DEFAULT '0' COMMENT '1: active',
  `privacy` tinyint(5) DEFAULT '0' COMMENT '0: public, 1: yeu cau dang nhap',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: chua xoa, 1: da xoa',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz
-- ----------------------------
INSERT INTO `quiz` VALUES ('1', 'Đề số 1: Đề thi thử THPT Quốc Gia năm 2017 môn Toán', 'Đề thi thử THPT Quốc Gia năm 2017 môn Toán -Sở Giáo Dục và Đào Tạo Bắc Ninh - Phòng Khảo Thi và Kiểm Định', '1', '1', null, '90', 'normal', '50', '0', '1', '0', '2017-05-28 10:32:05', '2017-05-28 10:32:05');
INSERT INTO `quiz` VALUES ('2', 'Đề số 2: Đề thi thử THPT Quốc Gia năm 2017 môn Toán', 'Đề thi thử THPT Quốc Gia năm 2017 môn Toán -Sở Giáo Dục và Đào Tạo Thanh Hóa - Trường THPT Quảng Xương 1', '1', '1', null, '90', 'normal', '50', '0', '1', '0', '2017-05-28 10:32:05', '2017-05-28 10:32:05');
INSERT INTO `quiz` VALUES ('3', 'Đề số 3: Đề thi thử THPT Quốc Gia năm 2017 môn Toán', 'Đề thi thử THPT Quốc Gia năm 2017 môn Toán -Trường Đại Học Vinh - Trường THPT Chuyên', '1', '1', null, '90', 'normal', '50', '0', '1', '0', '2017-05-28 10:32:05', '2017-05-28 10:32:05');
INSERT INTO `quiz` VALUES ('4', 'Đề số 1: Đề thi thử THPT Quốc Gia năm 2017 môn Lịch sử', 'Đề thi thử THPT Quốc Gia năm 2017 môn Lịch sử - BỘ GIÁO DỤC VÀ ĐÀO TẠO', '1', '8', null, '50', 'normal', '40', '0', '1', '0', '2017-05-28 11:20:13', '2017-05-28 11:20:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_attempt
-- ----------------------------
INSERT INTO `quiz_attempt` VALUES ('1', '0', '127.0.0.1', '7', '{\"info\":{\"time_start\":\"2017-05-09 21:22:48\",\"time_submit\":\"2017-05-09 21:23:17\",\"total_true\":7},\"results\":{\"131\":{\"question_id\":\"131\",\"ans_id\":\"521\",\"check\":1},\"132\":{\"question_id\":\"132\",\"ans_id\":\"525\",\"check\":1},\"133\":{\"question_id\":\"133\",\"ans_id\":\"529\",\"check\":1},\"134\":{\"question_id\":\"134\",\"ans_id\":\"533\",\"check\":0},\"135\":{\"question_id\":\"135\",\"ans_id\":\"537\",\"check\":0},\"136\":{\"question_id\":\"136\",\"ans_id\":\"541\",\"check\":0},\"137\":{\"question_id\":\"137\",\"ans_id\":\"545\",\"check\":0},\"138\":{\"question_id\":\"138\",\"ans_id\":\"549\",\"check\":1},\"139\":{\"question_id\":\"139\",\"ans_id\":\"553\",\"check\":0},\"140\":{\"question_id\":\"140\",\"ans_id\":\"557\",\"check\":1},\"141\":{\"question_id\":\"141\",\"ans_id\":\"561\",\"check\":0},\"142\":{\"question_id\":\"142\",\"ans_id\":\"565\",\"check\":0},\"143\":{\"question_id\":\"143\",\"ans_id\":\"569\",\"check\":0},\"144\":{\"question_id\":\"144\",\"ans_id\":\"573\",\"check\":0},\"145\":{\"question_id\":\"145\",\"ans_id\":\"577\",\"check\":1},\"146\":{\"question_id\":\"146\",\"ans_id\":\"581\",\"check\":0},\"147\":{\"question_id\":\"147\",\"ans_id\":\"585\",\"check\":0},\"148\":{\"question_id\":\"148\",\"ans_id\":\"589\",\"check\":0},\"149\":{\"question_id\":\"149\",\"ans_id\":\"593\",\"check\":1},\"150\":{\"question_id\":\"150\",\"ans_id\":\"597\",\"check\":0}}}', '0', '1', '2017-05-09 21:23:17');
INSERT INTO `quiz_attempt` VALUES ('2', '0', '127.0.0.1', '7', '{\"info\":{\"time_start\":\"2017-05-09 23:19:57\",\"time_submit\":\"2017-05-09 23:20:36\",\"total_true\":5},\"results\":{\"131\":{\"question_id\":\"131\",\"ans_id\":\"521\",\"check\":1},\"132\":{\"question_id\":\"132\",\"ans_id\":\"526\",\"check\":0},\"133\":{\"question_id\":\"133\",\"ans_id\":\"531\",\"check\":0},\"134\":{\"question_id\":\"134\",\"ans_id\":\"536\",\"check\":0},\"135\":{\"question_id\":\"135\",\"ans_id\":\"\",\"check\":0},\"136\":{\"question_id\":\"136\",\"ans_id\":\"541\",\"check\":0},\"137\":{\"question_id\":\"137\",\"ans_id\":\"546\",\"check\":1},\"138\":{\"question_id\":\"138\",\"ans_id\":\"551\",\"check\":0},\"139\":{\"question_id\":\"139\",\"ans_id\":\"556\",\"check\":0},\"140\":{\"question_id\":\"140\",\"ans_id\":\"557\",\"check\":1},\"141\":{\"question_id\":\"141\",\"ans_id\":\"562\",\"check\":1},\"142\":{\"question_id\":\"142\",\"ans_id\":\"567\",\"check\":0},\"143\":{\"question_id\":\"143\",\"ans_id\":\"572\",\"check\":1},\"144\":{\"question_id\":\"144\",\"ans_id\":\"573\",\"check\":0},\"145\":{\"question_id\":\"145\",\"ans_id\":\"578\",\"check\":0},\"146\":{\"question_id\":\"146\",\"ans_id\":\"583\",\"check\":0},\"147\":{\"question_id\":\"147\",\"ans_id\":\"588\",\"check\":0},\"148\":{\"question_id\":\"148\",\"ans_id\":\"589\",\"check\":0},\"149\":{\"question_id\":\"149\",\"ans_id\":\"594\",\"check\":0},\"150\":{\"question_id\":\"150\",\"ans_id\":\"599\",\"check\":0}}}', '0', '1', '2017-05-09 23:20:36');
INSERT INTO `quiz_attempt` VALUES ('3', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-15 12:04:05\",\"time_submit\":\"2017-05-15 12:04:17\",\"total_true\":1},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"2169\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"2177\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"2187\",\"check\":1},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-15 12:04:17');
INSERT INTO `quiz_attempt` VALUES ('4', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-15 12:07:22\",\"time_submit\":\"2017-05-15 12:07:31\",\"total_true\":3},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2168\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"2171\",\"check\":1},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"2179\",\"check\":1},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"2187\",\"check\":1},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-15 12:07:31');
INSERT INTO `quiz_attempt` VALUES ('5', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-15 12:08:38\",\"time_submit\":\"2017-05-15 12:08:43\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"2170\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-15 12:08:43');
INSERT INTO `quiz_attempt` VALUES ('6', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-15 13:00:19\",\"time_submit\":\"2017-05-15 13:00:28\",\"total_true\":1},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2166\",\"check\":1},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"2176\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-15 13:00:28');
INSERT INTO `quiz_attempt` VALUES ('7', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-15 13:21:56\",\"time_submit\":\"2017-05-15 13:24:49\",\"total_true\":2},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2167\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"2169\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"2175\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"2177\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"2183\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"2185\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"2189\",\"check\":1},\"549\":{\"question_id\":\"549\",\"ans_id\":\"2195\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"2200\",\"check\":1}}}', '0', '1', '2017-05-15 13:24:49');
INSERT INTO `quiz_attempt` VALUES ('8', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-15 13:26:26\",\"time_submit\":\"2017-05-15 13:27:19\",\"total_true\":1},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"2170\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"2173\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"2177\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"2181\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"2185\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"2189\",\"check\":1},\"549\":{\"question_id\":\"549\",\"ans_id\":\"2193\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"2197\",\"check\":0}}}', '0', '1', '2017-05-15 13:27:19');
INSERT INTO `quiz_attempt` VALUES ('9', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:41:38\",\"time_submit\":\"2017-05-17 10:42:04\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:42:04');
INSERT INTO `quiz_attempt` VALUES ('10', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:43:03\",\"time_submit\":\"2017-05-17 10:43:08\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:43:08');
INSERT INTO `quiz_attempt` VALUES ('11', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:43:44\",\"time_submit\":\"2017-05-17 10:43:48\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:43:48');
INSERT INTO `quiz_attempt` VALUES ('12', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:47:16\",\"time_submit\":\"2017-05-17 10:47:21\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:47:21');
INSERT INTO `quiz_attempt` VALUES ('13', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:48:02\",\"time_submit\":\"2017-05-17 10:48:06\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:48:06');
INSERT INTO `quiz_attempt` VALUES ('14', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:48:53\",\"time_submit\":\"2017-05-17 10:48:58\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:48:58');
INSERT INTO `quiz_attempt` VALUES ('15', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:49:31\",\"time_submit\":\"2017-05-17 10:49:35\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:49:35');
INSERT INTO `quiz_attempt` VALUES ('16', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:50:17\",\"time_submit\":\"2017-05-17 10:50:21\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:50:21');
INSERT INTO `quiz_attempt` VALUES ('17', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:50:51\",\"time_submit\":\"2017-05-17 10:50:54\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:50:54');
INSERT INTO `quiz_attempt` VALUES ('18', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:51:30\",\"time_submit\":\"2017-05-17 10:51:35\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:51:35');
INSERT INTO `quiz_attempt` VALUES ('19', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:52:50\",\"time_submit\":\"2017-05-17 10:52:55\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:52:55');
INSERT INTO `quiz_attempt` VALUES ('20', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-17 10:53:51\",\"time_submit\":\"2017-05-17 10:53:59\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"2161\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"2165\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-05-17 10:53:59');
INSERT INTO `quiz_attempt` VALUES ('21', '3', '127.0.0.1', '24', '{\"info\":{\"time_start\":\"2017-05-24 14:44:28\",\"time_submit\":\"2017-05-24 14:44:36\",\"total_true\":0},\"results\":{\"541\":{\"question_id\":\"541\",\"ans_id\":\"\",\"check\":0},\"542\":{\"question_id\":\"542\",\"ans_id\":\"\",\"check\":0},\"543\":{\"question_id\":\"543\",\"ans_id\":\"\",\"check\":0},\"544\":{\"question_id\":\"544\",\"ans_id\":\"\",\"check\":0},\"545\":{\"question_id\":\"545\",\"ans_id\":\"\",\"check\":0},\"546\":{\"question_id\":\"546\",\"ans_id\":\"\",\"check\":0},\"547\":{\"question_id\":\"547\",\"ans_id\":\"\",\"check\":0},\"548\":{\"question_id\":\"548\",\"ans_id\":\"\",\"check\":0},\"549\":{\"question_id\":\"549\",\"ans_id\":\"\",\"check\":0},\"550\":{\"question_id\":\"550\",\"ans_id\":\"\",\"check\":0}}}', '14', '0', '2017-05-24 14:44:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_rating
-- ----------------------------
INSERT INTO `quiz_rating` VALUES ('1', '7', '3', '10', '2017-05-09 00:00:00');
INSERT INTO `quiz_rating` VALUES ('2', '24', '3', '10', '2017-05-15 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_report
-- ----------------------------
INSERT INTO `quiz_report` VALUES ('1', '7', '131', 'Đáp án sai', '3', '0', '2017-05-10 00:01:50');
INSERT INTO `quiz_report` VALUES ('2', '7', '132', 'Nội dung câu hỏi không đúng.', '3', '0', '2017-05-10 00:03:42');
INSERT INTO `quiz_report` VALUES ('3', '24', '541', 'ggg', '3', '0', '2017-05-17 10:54:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_score
-- ----------------------------
INSERT INTO `quiz_score` VALUES ('1', '3', '24', '0', '5', '2017-05-15 12:26:39');
INSERT INTO `quiz_score` VALUES ('2', '1', '12', '28', '29', '2017-05-16 18:04:41');
INSERT INTO `quiz_score` VALUES ('3', '4', '1', '2', '44', '2017-05-17 18:04:42');
INSERT INTO `quiz_score` VALUES ('4', '1', '19', '12', '24', '2017-05-15 18:04:42');
INSERT INTO `quiz_score` VALUES ('5', '4', '12', '33', '56', '2017-05-20 18:04:42');
INSERT INTO `quiz_score` VALUES ('6', '4', '8', '0', '44', '2017-05-19 18:04:42');
INSERT INTO `quiz_score` VALUES ('7', '3', '12', '45', '50', '2017-05-20 18:04:42');
INSERT INTO `quiz_score` VALUES ('8', '4', '13', '2', '13', '2017-05-15 18:04:42');
INSERT INTO `quiz_score` VALUES ('9', '2', '18', '22', '4', '2017-05-17 18:04:42');
INSERT INTO `quiz_score` VALUES ('10', '4', '7', '38', '49', '2017-05-13 18:04:42');
INSERT INTO `quiz_score` VALUES ('11', '1', '1', '40', '54', '2017-05-14 18:04:42');
INSERT INTO `quiz_score` VALUES ('12', '2', '17', '0', '22', '2017-05-20 18:04:42');
INSERT INTO `quiz_score` VALUES ('13', '1', '18', '20', '27', '2017-05-20 18:04:42');
INSERT INTO `quiz_score` VALUES ('14', '2', '3', '2', '51', '2017-05-19 18:04:42');
INSERT INTO `quiz_score` VALUES ('15', '3', '21', '8', '7', '2017-05-20 18:04:42');
INSERT INTO `quiz_score` VALUES ('16', '3', '14', '27', '38', '2017-05-16 18:04:42');
INSERT INTO `quiz_score` VALUES ('17', '2', '3', '16', '22', '2017-05-20 18:04:42');
INSERT INTO `quiz_score` VALUES ('18', '3', '16', '28', '44', '2017-05-17 18:04:42');
INSERT INTO `quiz_score` VALUES ('19', '1', '7', '20', '16', '2017-05-19 18:04:42');
INSERT INTO `quiz_score` VALUES ('20', '4', '15', '43', '36', '2017-05-17 18:04:42');
INSERT INTO `quiz_score` VALUES ('21', '3', '17', '49', '10', '2017-05-16 18:04:42');
INSERT INTO `quiz_score` VALUES ('22', '2', '20', '11', '15', '2017-05-20 18:08:32');
INSERT INTO `quiz_score` VALUES ('23', '4', '22', '41', '12', '2017-05-20 18:08:32');
INSERT INTO `quiz_score` VALUES ('24', '2', '11', '28', '53', '2017-05-13 18:08:32');
INSERT INTO `quiz_score` VALUES ('25', '1', '4', '4', '34', '2017-05-17 18:08:32');
INSERT INTO `quiz_score` VALUES ('26', '4', '21', '45', '49', '2017-05-12 18:08:32');
INSERT INTO `quiz_score` VALUES ('27', '3', '18', '37', '17', '2017-05-19 18:08:32');
INSERT INTO `quiz_score` VALUES ('28', '2', '24', '6', '5', '2017-05-13 18:08:32');
INSERT INTO `quiz_score` VALUES ('29', '2', '1', '2', '13', '2017-05-14 18:08:32');
INSERT INTO `quiz_score` VALUES ('30', '2', '4', '16', '51', '2017-05-14 18:08:33');
INSERT INTO `quiz_score` VALUES ('31', '1', '17', '18', '44', '2017-05-15 18:08:33');
INSERT INTO `quiz_score` VALUES ('32', '3', '3', '30', '56', '2017-05-16 18:08:33');
INSERT INTO `quiz_score` VALUES ('33', '1', '19', '1', '49', '2017-05-18 18:08:33');
INSERT INTO `quiz_score` VALUES ('34', '4', '17', '22', '55', '2017-05-18 18:08:33');
INSERT INTO `quiz_score` VALUES ('35', '3', '1', '14', '50', '2017-05-16 18:08:33');
INSERT INTO `quiz_score` VALUES ('36', '3', '23', '28', '55', '2017-05-13 18:08:33');
INSERT INTO `quiz_score` VALUES ('37', '1', '15', '17', '20', '2017-05-12 18:08:33');
INSERT INTO `quiz_score` VALUES ('38', '3', '12', '14', '8', '2017-05-17 18:08:33');
INSERT INTO `quiz_score` VALUES ('39', '2', '3', '49', '36', '2017-05-17 18:08:33');
INSERT INTO `quiz_score` VALUES ('40', '1', '17', '8', '15', '2017-05-14 18:08:33');
INSERT INTO `quiz_score` VALUES ('41', '4', '21', '7', '29', '2017-05-17 18:08:33');
INSERT INTO `quiz_score` VALUES ('42', '3', '17', '16', '50', '2017-05-20 18:08:34');
INSERT INTO `quiz_score` VALUES ('43', '4', '5', '50', '19', '2017-05-15 18:08:34');
INSERT INTO `quiz_score` VALUES ('44', '1', '18', '15', '27', '2017-05-13 18:08:34');
INSERT INTO `quiz_score` VALUES ('45', '3', '10', '43', '24', '2017-05-17 18:08:34');
INSERT INTO `quiz_score` VALUES ('46', '1', '9', '48', '14', '2017-05-13 18:08:35');
INSERT INTO `quiz_score` VALUES ('47', '4', '21', '24', '8', '2017-05-16 18:08:35');
INSERT INTO `quiz_score` VALUES ('48', '4', '23', '32', '30', '2017-05-18 18:08:35');
INSERT INTO `quiz_score` VALUES ('49', '3', '11', '4', '19', '2017-05-19 18:08:35');
INSERT INTO `quiz_score` VALUES ('50', '2', '19', '16', '9', '2017-05-13 18:08:35');
INSERT INTO `quiz_score` VALUES ('51', '1', '13', '31', '24', '2017-05-20 18:08:35');
INSERT INTO `quiz_score` VALUES ('52', '2', '7', '30', '49', '2017-05-15 18:08:35');
INSERT INTO `quiz_score` VALUES ('53', '3', '24', '0', '39', '2017-05-20 18:08:35');
INSERT INTO `quiz_score` VALUES ('54', '2', '11', '8', '44', '2017-05-18 18:08:35');
INSERT INTO `quiz_score` VALUES ('55', '1', '7', '44', '60', '2017-05-15 18:08:35');
INSERT INTO `quiz_score` VALUES ('56', '1', '19', '19', '16', '2017-05-13 18:08:35');
INSERT INTO `quiz_score` VALUES ('57', '1', '10', '37', '57', '2017-05-19 18:08:35');
INSERT INTO `quiz_score` VALUES ('58', '1', '3', '33', '35', '2017-05-18 18:08:35');
INSERT INTO `quiz_score` VALUES ('59', '1', '15', '38', '41', '2017-05-17 18:08:35');
INSERT INTO `quiz_score` VALUES ('60', '1', '20', '48', '49', '2017-05-19 18:08:35');
INSERT INTO `quiz_score` VALUES ('61', '3', '14', '24', '47', '2017-05-12 18:08:35');

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
INSERT INTO `quiz_type` VALUES ('2', 'QUIZ_THEMATIC', 'Trắc nghiệm theo chuyên đề', 'Trắc nghiệm theo chuyên đề', '2017-05-07 22:16:00', '2017-05-28 04:30:47');
INSERT INTO `quiz_type` VALUES ('3', 'QUIZ_GENERAL', 'Đề thi tổng hợp', 'Đề thi tổng hợp', '2017-05-07 22:20:29', '2017-05-07 22:20:32');

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('1', 'Slide 1', 'Slide 1', 'Slide 1', null, '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');
INSERT INTO `slideshow` VALUES ('2', 'Slide 2', 'Slide 2', 'Slide 2', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');
INSERT INTO `slideshow` VALUES ('3', 'Slide 3', 'Slide 3', 'Slide 3', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');
INSERT INTO `slideshow` VALUES ('4', 'Slide  4', 'Slide 4', 'Slide 4', null, '1', '2017-05-06 18:32:34', '2017-05-06 18:32:37');
INSERT INTO `slideshow` VALUES ('5', 'Slide 5', 'Slide 5', 'Slide 5', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');
INSERT INTO `slideshow` VALUES ('6', 'Slide 6', 'Slide 6', 'Slide 6', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');

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
  `experience` double DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'Nguyễn Văn Đạt', '10/05/2017', 'THPT Chuyên Hưng Yên', null, '0983048031', '680000', '2017-05-06 22:43:31', '2017-05-07 01:31:01', '0');
INSERT INTO `student` VALUES ('2', 'Trần Thị Chinh', '24/05/2017', 'THPT Chuyên ĐHKHTH', null, '03221331223', '1320000', '2017-05-06 22:43:31', '2017-05-07 15:36:51', '0');
INSERT INTO `student` VALUES ('3', 'Nguyễn Lan Phương', '', 'THPT Chuyên Lê Hồng Phong, Nam Định', null, '087739943', '730000', '2017-05-06 22:43:31', '2017-05-26 03:19:17', '0');
INSERT INTO `student` VALUES ('4', 'Trần Chí Linh', null, 'THPT Chuyên Quốc Học Huế', null, '012388499', '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32', '0');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `progress` float(11,0) DEFAULT '0',
  `signed_date` date DEFAULT NULL,
  PRIMARY KEY (`course_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', '3', '0', '2017-05-15');
INSERT INTO `student_course` VALUES ('8', '3', '0', '2017-05-15');
INSERT INTO `student_course` VALUES ('20', '3', '0', '2017-05-17');
INSERT INTO `student_course` VALUES ('26', '3', '0', '2017-05-26');
INSERT INTO `student_course` VALUES ('30', '3', '0', '2017-05-15');

-- ----------------------------
-- Table structure for student_lesson
-- ----------------------------
DROP TABLE IF EXISTS `student_lesson`;
CREATE TABLE `student_lesson` (
  `student_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_lesson
-- ----------------------------

-- ----------------------------
-- Table structure for student_lesson_quiz
-- ----------------------------
DROP TABLE IF EXISTS `student_lesson_quiz`;
CREATE TABLE `student_lesson_quiz` (
  `student_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `grade` int(11) DEFAULT '0',
  `pass` tinyint(1) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`,`lesson_id`,`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_lesson_quiz
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
  `icon_color` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'Toán Học', 'Toán', 'toan-hoc', 'calculator', '#993534', '1', '0');
INSERT INTO `subject` VALUES ('2', 'Vật Lý', 'Vật Lý', 'vat-ly', 'thermometer', '#2e4091', '1', '0');
INSERT INTO `subject` VALUES ('3', 'Hóa Học', 'Hóa Học', 'hoa-hoc', 'flask', '#d1c414', '1', '0');
INSERT INTO `subject` VALUES ('4', 'Sinh Học', 'Sinh Học', 'sinh-hoc', 'mars', '#d1149e', '1', '0');
INSERT INTO `subject` VALUES ('5', 'Địa Lý', 'Địa Lý', 'dia-ly', 'flag', '#3d0516', '1', '0');
INSERT INTO `subject` VALUES ('6', 'Ngữ Văn', 'Ngữ Văn', 'ngu-van', 'pencil-square-o', '#631187', '1', '0');
INSERT INTO `subject` VALUES ('7', 'Tiếng Anh', 'Tiếng Anh', 'tieng-anh', 'users', '#03aa49', '1', '0');
INSERT INTO `subject` VALUES ('8', 'Lịch sử', 'Sử', 'lich-su', 'book', '#008080', '1', '0');

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
INSERT INTO `teacher` VALUES ('7', 'Phạm Sỹ Nam', 'namps@gmail.com', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Khoa To&aacute;n - Trường Đại học S&agrave;i G&ograve;n - TP.HCM</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị cộng t&aacute;c giảng dạy:&nbsp;</h3>\r\n<ul style=\"list-style-type: square;\">\r\n<li>Thầy c&oacute; thời gian d&agrave;i giảng dạy tại trường THPT chuy&ecirc;n Phan Bội Ch&acirc;u - Nghệ An, một trong những c&aacute;i n&ocirc;i đ&agrave;o tạo nh&acirc;n t&agrave;i cho xứ Nghệ.</li>\r\n<li>Hiện thầy đang bồi dưỡng đội tuyển thi học sinh giỏi Quốc gia cho TP. HCM.</li>\r\n<li>Gi&aacute;o vi&ecirc;n tại trường THPT chuy&ecirc;n L&ecirc; Hồng Phong - TP.HCM.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul style=\"list-style-type: square;\">\r\n<li>Thầy đ&atilde; từng giảng dạy v&agrave; bồi dưỡng rất nhiều học sinh giỏi Quốc gia. C&oacute; rất nhiều em l&agrave; thủ khoa, &aacute; khoa trong k&igrave; thi tuyển sinh đại học.&nbsp;</li>\r\n<li>Tham gia b&aacute;o c&aacute;o tại nhiều hội thảo Quốc tế về gi&aacute;o dục To&aacute;n học ở c&aacute;c nước như: Th&aacute;i Lan, Indonesia, Malaysia, Đại học Melbourne - Australia v&agrave; trung t&acirc;m gi&aacute;o dục Đ&ocirc;ng Nam &Aacute; RECSAM.</li>\r\n</ul>', 'Khoa Toán - Trường Đại học Sài Gòn - TP.HCM', '098677388', 'Ts', '2017-05-10 15:02:10', '2017-05-28 15:22:53');
INSERT INTO `teacher` VALUES ('8', 'Nguyễn Ngọc Vũ', 'vung@mraz.org', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul>\r\n<li>Trưởng khoa tiếng Anh Trường Đại học Sư phạm TP. Hồ Ch&iacute; Minh.</li>\r\n<li>Ủy vi&ecirc;n BCH Hội Giảng Dạy Tiếng Anh TP.HCM.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">C&aacute;c lĩnh giảng dạy v&agrave; nghi&ecirc;n cứu</h3>\r\n<ul>\r\n<li>Phương ph&aacute;p nghi&ecirc;n cứu ng&ocirc;n ngữ học ứng dụng.</li>\r\n<li>L&yacute; luận v&agrave; phương ph&aacute;p giảng dạy tiếng Anh.</li>\r\n<li>Ng&ocirc;n ngữ học tri nhận &amp;&nbsp;Ng&ocirc;n ngữ học so s&aacute;nh đối chiếu.</li>\r\n<li>Dạy học e-Learning &amp;&nbsp;Ứng dụng CNTT trong dạy học.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:</h3>\r\n<ul>\r\n<li>Được Microsoft Việt Nam c&ocirc;ng nhận danh hiệu MIE (Microsoft Innovative Educator) Master Trainer 2014.</li>\r\n<li>Bằng khen của Bộ khoa học v&agrave; C&ocirc;ng nghệ, Trung ương Đo&agrave;n TNCS, Li&ecirc;n đo&agrave;n lao động Việt Nam, Li&ecirc;n hiệp hội khoa học v&agrave; kĩ thuật Việt Nam; Huy chương s&aacute;ng tạo; Giấy chứng nhận lao động s&aacute;ng tạo của Li&ecirc;n đo&agrave;n lao động Việt Nam.</li>\r\n<li>Giải thưởng s&aacute;ng tạo kỹ thuật to&agrave;n quốc 2010-2011.</li>\r\n<li>Được Microsoft c&ocirc;ng nhận l&agrave; 1 trong 50 gi&aacute;o vi&ecirc;n s&aacute;ng tạo nhất to&agrave;n cầu trong khu&ocirc;n khổ chương tr&igrave;nh &ldquo;Đối t&aacute;c gi&aacute;o dục Microsft&rdquo; 2011.</li>\r\n<li>Danh hiệu giảng vi&ecirc;n trẻ ti&ecirc;u biểu TP.Hồ Ch&iacute; Minh 2008 v&agrave; 2009.</li>\r\n<li>Ph&aacute;t triển nhiều phần mềm v&agrave; c&aacute;c website gi&aacute;o dục phục vụ việc dạy v&agrave; học Tiếng Anh như:&nbsp;Phần mềm luyện thi Toefl iBT 2.1 gồm 4 kĩ năng (Nghe, N&oacute;i, Đọc v&agrave; Viết) được nhiều cơ sở đ&agrave;o tạo sử dụng để x&acirc;y dựng t&agrave;i liệu giảng dạy v&agrave; luyện thi Toefl iBT.&nbsp;Phần mềm ED Quiz gồm 3 phi&ecirc;n bản (Teacher, Student v&agrave; Server) được sử dụng để tổ chức thi trắc nghiệm trong ph&ograve;ng lab ở nhiều cơ sở gi&aacute;o dục trong cả nước.</li>\r\n<li>C&oacute; nhiều b&agrave;i b&aacute;o c&aacute;o khoa học đ&atilde; được c&ocirc;ng bố v&agrave; tham gia b&aacute;o c&aacute;o tại nhiều hội thảo khoa học cả trong lẫn ngo&agrave;i nước.</li>\r\n</ul>', 'Trưởng khoa tiếng Anh Trường Đại học Sư phạm TP. Hồ Chí Minh', '0983048031', 'Ts', '2017-05-10 15:02:10', '2017-05-28 15:10:30');
INSERT INTO `teacher` VALUES ('9', 'Bùi Đức Tiến', 'tienbuiduc@gmail.com', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul>\r\n<li>Trường Đại học Sư phạm TP. Hồ Ch&iacute; Minh.</li>\r\n<li>Trung T&acirc;m Ngoại ngữ Đại học Sư phạm.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">C&aacute;c lĩnh vực giảng dạy:</h3>\r\n<ul>\r\n<li>Giảng dạy c&aacute;c m&ocirc;n kỹ năng Nghe, N&oacute;i, Đọc Viết.</li>\r\n<li>Giảng dạy c&aacute;c m&ocirc;n Ng&ocirc;n ngữ học.</li>\r\n<li>Giảng dạy c&aacute;c m&ocirc;n Bi&ecirc;n Phi&ecirc;n Dịch.</li>\r\n<li>Luyện thi THPT Quốc Gia, TOEIC, IELTS.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:</h3>\r\n<ul>\r\n<li>C&oacute; nhiều kinh nghiệm trong việc ứng dụng CNTT trong giảng dạy, đặc biệt l&agrave; d&ugrave;ng c&aacute;c phần mềm, ứng dụng để thiết kế c&aacute;c b&agrave;i học mang t&iacute;nh tương t&aacute;c cao.</li>\r\n<li>Tham gia \"Đề &aacute;n Ngoại Ngữ Quốc Gia 2020\", bồi dưỡng Tiếng Anh cho gi&aacute;o vi&ecirc;n ở tỉnh Đồng Nai v&agrave; TP. Hồ Ch&iacute; Minh.</li>\r\n<li>Tham gia x&acirc;y dựng m&ocirc; h&igrave;nh \"Tiếng Anh Cộng Đồng\" tại trường Đại học Sư phạm TP.HCM.</li>\r\n<li>C&oacute; nhiều b&aacute;o c&aacute;o khoa học tại c&aacute;c Hội thảo quốc tế.</li>\r\n</ul>', 'Trường Đại học Sư phạm TP. Hồ Chí Minh', '0983049994', 'Ths', '2017-05-10 15:02:10', '2017-05-28 15:12:10');
INSERT INTO `teacher` VALUES ('10', 'Vũ Thị Thùy Dương', 'thuyduongvu@koss.com', '2', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bộ m&ocirc;n Tiếng Anh - Trường THPT Nguyễn Ch&iacute; Thanh - Tp. HCM.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:</h3>\r\n<ul>\r\n<li>Chuy&ecirc;n luyện thi tốt nghiệp THPT Quốc gia &amp; Đại học</li>\r\n<li>Nhiều năm kinh nghiệm giảng dạy c&aacute;c khối lớp 10, 11, 12.</li>\r\n<li>Chịu tr&aacute;ch nhiệm giảng dạy c&aacute;c lớp tăng cường Tiếng Anh.</li>\r\n</ul>', 'Bộ môn Tiếng Anh - Trường THPT Nguyễn Chí Thanh - Tp. HCM', '01332568934', 'GV', '2017-05-10 15:02:10', '2017-05-28 15:13:46');
INSERT INTO `teacher` VALUES ('11', 'Hồ Sỹ Thạnh', 'hosthanh577@yahoo.com', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Gi&aacute;o vi&ecirc;n trường THCS - THPT Nguyễn Khuyến - Tp. HCM.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị cộng t&aacute;c giảng dạy:</h3>\r\n<ul>\r\n<li>Trung t&acirc;m bồi dưỡng văn h&oacute;a Vĩnh Viễn - TP.HCM.</li>\r\n<li>Chương tr&igrave;nh \"Bổ trợ kiến thức lớp 12\" k&ecirc;nh HTV2, HTV4 - Đ&agrave;i truyền h&igrave;nh TP. HCM.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul>\r\n<li>C&oacute; hơn 20 năm giảng dạy c&aacute;c lớp chuy&ecirc;n h&oacute;a tại trường THCS - THPT Nguyễn Khuyến.</li>\r\n<li>Tham gia đ&agrave;o tạo học sinh giỏi m&ocirc;n H&oacute;a học.&nbsp;</li>\r\n<li>Luyện thi đại học cho c&aacute;c khối A, B.</li>\r\n<li>Tham gia giảng dạy chương tr&igrave;nh: \"Bổ trợ kiến thức lớp 12\" tr&ecirc;n k&ecirc;nh HTV2, HTV4- Đ&agrave;i Truyền h&igrave;nh Tp.Hồ Ch&iacute; Minh.</li>\r\n</ul>', 'Giáo viên trường THCS - THPT Nguyễn Khuyến - Tp. HCM', '09833222333', 'Gv', '2017-05-10 15:02:10', '2017-05-28 15:15:12');
INSERT INTO `teacher` VALUES ('12', 'Nguyễn Văn Quang', 'quangnguyenvan@friesen.org', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Trường THPT Trần Khai Nguy&ecirc;n - TP.HCM.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul>\r\n<li>Tổ trưởng tổ Sinh trường THPT Trần Khai Nguy&ecirc;n.</li>\r\n<li>Kinh nghiệm: 12 năm giảng dạy m&ocirc;n Sinh học.</li>\r\n<li>Chiến sĩ thi đua, Giải Nh&igrave; Gi&aacute;o &aacute;n điện tử do Sở GD v&agrave; ĐT TP. HCM khen tặng.</li>\r\n</ul>', 'Trường THPT Trần Khai Nguyên - TP.HCM', '32423122332', 'Ths', '2017-05-10 15:02:10', '2017-05-28 15:16:32');
INSERT INTO `teacher` VALUES ('13', 'Cao Minh Sáng', 'caominhsang@mclaughlin.com', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bộ m&ocirc;n Sinh học - Trường THPT Nguyễn Thượng Hiền - TP. HCM.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị cộng t&aacute;c giảng dạy:</h3>\r\n<ul>\r\n<li>Trung t&acirc;m luyện thi đại học T&ocirc; Hiến Th&agrave;nh - Q.10 - TP.HCM.</li>\r\n<li>Trung t&acirc;m luyện thi đại học Th&agrave;nh Hưng - Q. T&acirc;n B&igrave;nh - TP.HCM.</li>\r\n</ul>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul>\r\n<li>Bồi dưỡng đội tuyển học sinh giỏi m&ocirc;n Sinh học cho trường THPT Nguyễn Thượng Hiền.</li>\r\n<li>Gi&aacute;o vi&ecirc;n chuy&ecirc;n luyện thi đại học khối B, nhiều năm liền đạt th&agrave;nh t&iacute;ch cao.</li>\r\n</ul>', 'Bộ môn Sinh học - Trường THPT Nguyễn Thượng Hiền - TP. HCM', '01322456343', 'Ths', '2017-05-10 15:02:11', '2017-05-28 15:17:29');
INSERT INTO `teacher` VALUES ('14', 'Phan Thị Mỹ Huệ', 'phanmyhue@wilderman.biz', '2', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Trường THPT Nguyễn Khuyến - TP.HCM.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm &amp; Th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:&nbsp;</h3>\r\n<ul>\r\n<li>Cử nh&acirc;n chuy&ecirc;n ng&agrave;nh Ngữ văn.</li>\r\n<li>Cử nh&acirc;n chuy&ecirc;n ng&agrave;nh T&acirc;m l&yacute; học.</li>\r\n<li>C&oacute; kinh nghiệm 15 năm giảng dạy lớp 12 v&agrave; luyện thi Đại học.</li>\r\n<li>Đ&atilde; đ&agrave;o tạo rất nhiều thế hệ học tr&ograve;, gi&uacute;p c&aacute;c em nắm vững kiến thức từ cơ bản đến n&acirc;ng cao.</li>\r\n<li>Gi&uacute;p c&aacute;c em c&oacute; kỹ năng xử l&iacute; tất cả c&aacute;c dạng đề của Bộ Gi&aacute;o dục &amp; Đ&agrave;o tạo để tự tin bước v&agrave;o cổng trường Đại học m&agrave; m&igrave;nh mơ ước.</li>\r\n</ul>', 'Trường THPT Nguyễn Khuyến - TP.HCM', '0987345678', 'Gv', '2017-05-10 15:02:11', '2017-05-28 15:18:26');
INSERT INTO `teacher` VALUES ('15', 'Vũ Thị Hà Trang', 'trangvuha@bednar.net', '2', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;\">Đơn vị c&ocirc;ng t&aacute;c:</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bộ m&ocirc;n Địa l&yacute; - Trường Phổ Th&ocirc;ng Năng Khiếu - TP. HCM</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;\">Đơn vị cộng t&aacute;c giảng dạy:&nbsp;</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Trường THCS - THPT Nguyễn Khuyến - TP. HCM</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;\">Kinh nghiệm &amp; th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c:</strong></p>\r\n<ul>\r\n<li>Danh hiệu &ldquo;Nh&agrave; gi&aacute;o trẻ ti&ecirc;u biểu&nbsp;th&agrave;nh phố&rdquo; năm 2009, 2014,&nbsp;2015.</li>\r\n<li>C&aacute;n bộ trẻ ti&ecirc;u biểu trường Đại học&nbsp;Khoa Học Tự Nhi&ecirc;n năm 2009,&nbsp;2011, 2013, 2015.</li>\r\n<li>C&aacute;n bộ trẻ ti&ecirc;u biểu cấp Đại học Quốc&nbsp;Gia năm 2011, 2013, 2015.</li>\r\n<li>Bằng khen của Gi&aacute;m Đốc Đại học&nbsp;Quốc Gia TP.HCM về th&agrave;nh t&iacute;ch giảng dạy&nbsp;học sinh đạt giải cao trong k&igrave; thi&nbsp;Tốt nghiệp v&agrave; Đại học năm 2011.</li>\r\n<li>Cộng t&aacute;c với b&aacute;o Tuổi trẻ trong&nbsp;Chương tr&igrave;nh &ocirc;n thi tốt nghiệp&nbsp;năm 2012, 2013.</li>\r\n</ul>', 'Bộ môn Địa lý - Trường Phổ Thông Năng Khiếu - TP. HCM', '0987465774', 'Gv', '2017-05-10 15:02:11', '2017-05-28 15:19:44');
INSERT INTO `teacher` VALUES ('16', 'Huỳnh Thanh Tuấn', 'tuanhuynhthanh@hotmail.com', '1', '<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Đơn vị c&ocirc;ng t&aacute;c:</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Bộ m&ocirc;n Lịch Sử - Trường THPT Gia Định &ndash; Q. B&igrave;nh Thạnh &ndash; Tp HCM.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 20px 0px 10px; padding: 0px; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-weight: 500; line-height: 1.1; color: #333333; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Kinh nghiệm v&agrave; th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c</h3>\r\n<ul>\r\n<li>L&agrave; cựu học sinh trường THPT chuy&ecirc;n Lương Văn Ch&aacute;nh &ndash; Ph&uacute; Y&ecirc;n; đạt nhiều th&agrave;nh t&iacute;ch trong c&aacute;c k&igrave; thi học sinh giỏi cấp Tỉnh, Olympic 30/4&hellip;</li>\r\n<li>Tốt nghiệp loại Giỏi khoa Lịch sử Trường Đại học sư phạm Tp HCM.</li>\r\n<li>Cộng t&aacute;c giảng dạy tại nhiều trường THPT tr&ecirc;n địa b&agrave;n Tp. HCM như: TrườngTHPT Gia Định, Trường THPT Lương Thế Vinh, Trung t&acirc;m gi&aacute;o dục thường xuy&ecirc;n quận B&igrave;nh Thạnh&hellip;</li>\r\n<li>Tham gia luyện thi đại học, tốt nghiệp THPT,...</li>\r\n</ul>', 'Bộ môn Lịch Sử - Trường THPT Gia Định – Q. Bình Thạnh – Tp HCM', '0123354789', 'Ths', '2017-05-10 15:02:11', '2017-05-28 15:20:50');
INSERT INTO `teacher` VALUES ('17', 'Nguyễn Phạm Phúc', 'phucnguyen@hotmail.com', '1', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: large;\">Địa chỉ c&ocirc;ng t&aacute;c</span></strong>&nbsp;</p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Bộ m&ocirc;n Gi&aacute;o dục C&ocirc;ng d&acirc;n - Trường THPT Gia Định &ndash; Q. B&igrave;nh Thạnh &ndash; TP HCM.</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: large;\">Kinh nghiệm v&agrave; th&agrave;nh t&iacute;ch c&ocirc;ng t&aacute;c</span></strong>&nbsp;</p>\r\n<ul>\r\n<li>Tốt nghiệp trường THPT chuy&ecirc;n Nguyễn Bỉnh Khi&ecirc;m - Tỉnh Vĩnh Long</li>\r\n<li>Tốt nghiệp Top 10 khoa Gi&aacute;o dục Ch&iacute;nh trị - Trường ĐH Sư phạm TP HCM</li>\r\n<li>Tốt nghiệp Sĩ quan Binh chủng Hợp th&agrave;nh - Trường Qu&acirc;n sự Qu&acirc;n khu 7</li>\r\n<li>Đạt giải 3 gi&aacute;o vi&ecirc;n s&aacute;ng tạo tr&ecirc;n nền tảng CNTT cấp th&agrave;nh phố năm 2016</li>\r\n</ul>', 'Bộ môn Giáo dục Công dân - Trường THPT Gia Định – Q. Bình Thạnh – TP HCM.', '098788365', 'Gv', '2017-05-10 16:55:02', '2017-05-28 15:22:04');
INSERT INTO `teacher` VALUES ('18', 'Lê Văn Lan', 'lanlevan@gmail.com', '1', 'Lê Văn Lan (sinh năm 1936, người Hà Nội) là giáo sư sử học [1], tuy nhiên có một số nguồn ghi ông có học hàm phó giáo sư [2][3], chuyên ngành cổ sử, phó chủ tịch Hội đồng khoa học Khu di tích lịch sử đền Hùng,[4] một trong những người sáng lập Viện sử học Việt Nam,[5] nhiều năm làm cố vấn lịch sử chương trình Đường lên đỉnh Olympia và SV 96 trên Đài truyền hình Việt Nam. Ông là người phụ trách chuyên mục giải đáp các vấn đề lịch sử của báo Khoa học và Đời sống số ra ngày thứ sáu, ở trang sáu, 55 năm làm cộng tác viên báo Thiếu niên tiền phong từ ngày thành lập.[6]', 'Ban cổ sử Viện Sử học Việt Nam', '', 'Gs', '2017-05-10 20:29:43', '2017-05-10 20:29:43');
INSERT INTO `teacher` VALUES ('19', 'Bac Truong Van', 'bactv1704@gmail.com', null, null, null, '0983048031', null, '2017-05-20 22:48:15', '2017-05-20 22:50:47');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(700) DEFAULT NULL,
  `subject_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', 'Khảo Sát Sự Biến Thiên Và Vẽ Đồ Thị Hàm Số', '<p>1. Đa Thức</p>\r\n<p>2. T&iacute;nh Đơn Điệu Của H&agrave;m Số</p>\r\n<p>3. Cực Trị Của H&agrave;m Số</p>\r\n<p>4. Gi&aacute; Trị Lớn Nhất V&agrave; Gi&aacute; Trị Nhỏ Nhất Của H&agrave;m Số</p>\r\n<p>5. Đường Tiệm Cận Của Đồ Thị H&agrave;m Số</p>\r\n<p>6. Khảo S&aacute;t Sự Biến Thi&ecirc;n V&agrave; Vẽ Đồ Thị H&agrave;m Số</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:24:08');
INSERT INTO `topic` VALUES ('2', 'Các Bài Toán Liên Quan Đến Khảo Sát Hàm Số', '<p>1. Cực Trị Thỏa M&atilde;n Điều Kiện Cho Trước</p>\r\n<p>2. Tương Giao Giữa Hai Đồ Thị</p>\r\n<p>3. Tiếp Tuyến Của Đồ Thị H&agrave;m Số</p>\r\n<p>4. Biện Luận Số Nghiệm Phương Tr&igrave;nh Bằng Đồ Thị</p>\r\n<p>5. Điểm Thuộc Đồ Thị</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:25:41');
INSERT INTO `topic` VALUES ('3', 'Hàm Số Lũy Thừa. Hàm Số Mũ Và Hàm Số Lôgarit', '<p>1. Lũy Thừa</p>\r\n<p>2. L&ocirc;garit</p>\r\n<p>3. H&agrave;m Số Lũy Thừa, H&agrave;m Số Mũ V&agrave; H&agrave;m Số L&ocirc;garit</p>\r\n<p>4. Phương Tr&igrave;nh, Bất Phương Tr&igrave;nh Mũ</p>\r\n<p>5. Phương Tr&igrave;nh, Bất Phương Tr&igrave;nh L&ocirc;garit</p>\r\n<p>6. Hệ Phương Tr&igrave;nh Mũ V&agrave; L&ocirc;garit</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:27:08');
INSERT INTO `topic` VALUES ('4', 'Hình Học Không Gian', '<p>1. Thể T&iacute;ch Khối Đa Diện</p>\r\n<p>2. Mặt Cầu, Mặt Trụ, Mặt N&oacute;n</p>\r\n<p>3. Quan Hệ Vu&ocirc;ng G&oacute;c</p>\r\n<p>4. G&oacute;c V&agrave; Khoảng C&aacute;ch</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:27:25');
INSERT INTO `topic` VALUES ('5', 'Nguyên Hàm - Tích Phân', '<p>1. Nguy&ecirc;n H&agrave;m</p>\r\n<p>2. Một Số Phương Ph&aacute;p T&igrave;m Nguy&ecirc;n H&agrave;m</p>\r\n<p>3. T&iacute;ch Ph&acirc;n</p>\r\n<p>4. Một Số Phương Ph&aacute;p T&iacute;nh T&iacute;ch Ph&acirc;n</p>\r\n<p>5. T&iacute;ch Ph&acirc;n Của C&aacute;c H&agrave;m Số Thường Gặp</p>\r\n<p>6. Ứng Dụng Của T&iacute;ch Ph&acirc;n</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:27:36');
INSERT INTO `topic` VALUES ('6', 'Số Phức', '<p>1. Dạng Đại Số Của Số Phức</p>\r\n<p>2. Phương Tr&igrave;nh Bậc Hai Nghiệm Phức</p>\r\n<p>3. Dạng Lượng Gi&aacute;c Của Số Phức</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:27:55');
INSERT INTO `topic` VALUES ('7', 'Phương Pháp Tọa Độ Trong Không Gian ', '<p>1. Tọa Độ Trong Kh&ocirc;ng Gian</p>\r\n<p>2. Phương Tr&igrave;nh Mặt Phẳng</p>\r\n<p>3. Nguyễn Minh Hiếu</p>\r\n<p>4. Phương Tr&igrave;nh Đường Thẳng</p>\r\n<p>5. Phương Tr&igrave;nh Mặt Cầu</p>\r\n<p>6. B&agrave;i To&aacute;n Tổng Hợp</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:28:04');
INSERT INTO `topic` VALUES ('8', 'Lượng Giác', '<p>1. Gi&aacute; Trị Lượng Gi&aacute;c Của Một Cung</p>\r\n<p>2. C&ocirc;ng Thức Lượng Gi&aacute;c</p>\r\n<p>3. Phương Tr&igrave;nh Lượng Gi&aacute;c Cơ Bản</p>\r\n<p>4. Phương Tr&igrave;nh Lượng Gi&aacute;c Thường Gặp</p>\r\n<p>5. Phương Tr&igrave;nh Lượng Gi&aacute;c Kh&aacute;c</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:28:11');
INSERT INTO `topic` VALUES ('9', 'Tổ Hợp - Xác Suất', '<p>1. Ho&aacute;n Vị - Chỉnh Hợp - Tổ Hợp</p>\r\n<p>2. X&aacute;c Suất</p>\r\n<p>3. Nhị Thức Newton</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:28:32');
INSERT INTO `topic` VALUES ('10', 'Phương Pháp Tọa Độ Trong Mặt Phẳng', '<p>1. Tọa Độ Trong Mặt Phẳng</p>\r\n<p>2. Phương Tr&igrave;nh Đường Thẳng</p>\r\n<p>3. Tam Gi&aacute;c V&agrave; Tứ Gi&aacute;c</p>\r\n<p>4. Phương Tr&igrave;nh Đường Tr&ograve;n</p>\r\n<p>5. Phương Tr&igrave;nh Elip</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:28:39');
INSERT INTO `topic` VALUES ('11', 'Phương Trình, Bất Phương Trình Và Hệ Phương Trình Đại Số', '<p>1. Phương Tr&igrave;nh, Bất Phương Tr&igrave;nh Đa Thức</p>\r\n<p>2. Phương Tr&igrave;nh, Bất Phương Tr&igrave;nh Chứa Dấu Gi&aacute; Trị Tuyệt Đối</p>\r\n<p>3. Phương Tr&igrave;nh, Bất Phương Tr&igrave;nh Chứa Căn</p>\r\n<p>4. Hệ Phương Tr&igrave;nh Mẫu Mực</p>\r\n<p>5. Hệ Phương Tr&igrave;nh Kh&ocirc;ng Mẫu Mực</p>\r\n<p>6. Phương Tr&igrave;nh, Bất Phương Tr&igrave;nh Chứa Tham Số</p>', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:28:49');
INSERT INTO `topic` VALUES ('12', 'Bất Đẳng Thức, Giá Trị Lớn Nhất Và Giá Trị Nhỏ Nhất', '1. Một Số Phương Pháp Chứng Minh Bất Đẳng Thức \n2. Một Số Kỹ Thuật Sử Dụng Bất Đẳng Thức AM − GM \n3. Kỹ Thuật Đánh Giá Để Sử Dụng Phương Pháp Hàm Số', '1', '1', '0', '2017-05-28 04:23:19', '2017-05-28 04:23:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('1', '2', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"25373744645\",\"code_number\":\"25487849091567\",\"_csrf\":\"ck1EdlFySG8fHycuJwYYLSMZNUIFCgVeSgsuLmcgKyscCRcwFS0vKw==\"}', '{\"code\":200,\"money\":\"500\"}', null, '2017-05-07 13:39:50');
INSERT INTO `transaction` VALUES ('2', '2', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"23326112863\",\"code_number\":\"23314014719674\",\"_csrf\":\"dERSX3VicUwZFjEHAxYhDiUQI2shGjx9TAI4B0MwEggaAAEZMT0WCA==\"}', '{\"code\":200,\"money\":\"500\"}', null, '2017-05-07 13:41:30');
INSERT INTO `transaction` VALUES ('3', '2', 'CHARGE_MONEY', '20000', '{\"telco_type\":\"viettel\",\"serial_number\":\"5584022625\",\"code_number\":\"5502423551478\",\"_csrf\":\"YWhGNHpNSnQMOiVsDDkaNjA8NwAuNQdFWS4sbEwfKTAPLBVyPhItMA==\"}', '{\"code\":200,\"money\":\"20\"}', '1320000', '2017-05-07 13:52:09');
INSERT INTO `transaction` VALUES ('4', '3', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"978246796182\",\"code_number\":\"978444319649697\",\"_csrf\":\"eEp5TjJjanQbKx4EaAIDIi0VDRwHDSwrPgMVfkowLj4iHQ0qRjI\\/Rg==\"}', '{\"code\":200,\"money\":\"500\"}', '500000', '2017-05-15 14:09:21');
INSERT INTO `transaction` VALUES ('5', '3', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"997925784034\",\"code_number\":\"997391899329360\",\"_csrf\":\"VkZlaU9FR3k1JwIjFSQuLwMZETt6KwEmEA8JWTcWAzMMERENOxQSSw==\"}', '{\"code\":200,\"money\":\"500\"}', '1000000', '2017-05-15 14:09:39');
INSERT INTO `transaction` VALUES ('6', '3', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"985160229557\",\"code_number\":\"985196822342054\",\"_csrf\":\"ZHlvWWpxd0MHGAgTMBAeFTEmGwtfHzEcIjADaRIiMwk.Lhs9HiAicQ==\"}', '{\"code\":200,\"money\":\"500\"}', '1500000', '2017-05-15 14:09:55');
INSERT INTO `transaction` VALUES ('7', '3', 'CHARGE_MONEY', '20000', '{\"telco_type\":\"viettel\",\"serial_number\":\"14419302885\",\"code_number\":\"14919667813202\",\"_csrf\":\"eWR4MnZpV3EyVlVcRTwAHSYVL1UGLmVBFjFPVgAtHCYpIQ4fOioVNA==\"}', '{\"code\":200,\"money\":\"20\"}', '420000', '2017-05-26 02:54:33');
INSERT INTO `transaction` VALUES ('8', '3', 'CHARGE_MONEY', '10000', '{\"telco_type\":\"viettel\",\"serial_number\":\"16201640710\",\"code_number\":\"16127962862962\",\"_csrf\":\"WWYwY21aRzYSVB0NXg8QWgYXZwQdHXUGNjMHBxseDGEJI0ZOIRkFcw==\"}', '{\"code\":200,\"money\":\"10\"}', '430000', '2017-05-26 02:54:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
INSERT INTO `transaction_error` VALUES ('9', '3', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"1233\",\"code_number\":\"321312\",\"_csrf\":\"eWR4MnZpV3EyVlVcRTwAHSYVL1UGLmVBFjFPVgAtHCYpIQ4fOioVNA==\"}', '2017-05-26 02:48:00');
INSERT INTO `transaction_error` VALUES ('10', '3', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"2312\",\"code_number\":\"3123123\",\"_csrf\":\"U2JjeWRYNW0YUE4XVw1iAQwTNB4UHwddPDdUHRIcfjoDJxVUKBt3KA==\"}', '2017-05-26 02:55:00');
INSERT INTO `transaction_error` VALUES ('11', '3', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"2312\",\"code_number\":\"3123123\",\"_csrf\":\"U2JjeWRYNW0YUE4XVw1iAQwTNB4UHwddPDdUHRIcfjoDJxVUKBt3KA==\"}', '2017-05-26 02:55:00');
INSERT INTO `transaction_error` VALUES ('12', '3', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"2312\",\"code_number\":\"3123123\",\"_csrf\":\"U2JjeWRYNW0YUE4XVw1iAQwTNB4UHwddPDdUHRIcfjoDJxVUKBt3KA==\"}', '2017-05-26 02:55:00');
INSERT INTO `transaction_error` VALUES ('13', '3', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"2312\",\"code_number\":\"3123123\",\"_csrf\":\"U2JjeWRYNW0YUE4XVw1iAQwTNB4UHwddPDdUHRIcfjoDJxVUKBt3KA==\"}', '2017-05-26 02:55:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'schoen.candido', 'ceefa3c572382b7cb78346b4f7330153', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-10 19:07:48', '2017-05-07 12:15:00', '2017-05-08 12:15:00');
INSERT INTO `user` VALUES ('2', 'nannie06', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31', null, null);
INSERT INTO `user` VALUES ('3', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-26 02:55:59', '2017-05-26 02:55:00', '2017-05-27 02:55:00');
INSERT INTO `user` VALUES ('4', 'schumm.shayna', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-28 15:35:31', null, null);
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
INSERT INTO `user` VALUES ('17', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 16:55:02', '2017-05-10 16:55:02', null, null);
INSERT INTO `user` VALUES ('18', 'admin_18', 'b062daadae0bdc1f036e4bc3145e00ab', '2', '1', '1', '2017-05-10 20:29:42', '2017-05-28 15:22:30', null, null);
INSERT INTO `user` VALUES ('19', 'bactv', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '1', '2017-05-20 22:48:15', '2017-05-28 15:22:24', null, null);
