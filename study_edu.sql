/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : study_edu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-06 15:56:24
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '$2y$13$FdBwweRDXoVFhcSmqQTfPe7Jsix28jVrmgEcb8HZP4/XdJ5qEfyOS', 'Administrator', 'admin@study.edu.vn', 'Programmer', '1994-04-17', '1', '1', '0', '2017-06-06 13:25:09', '[\"1\"]', '0', '1', null, '2017-06-06 13:25:09', null, null);
INSERT INTO `admin` VALUES ('18', 'hd_bichphuong', '$2y$13$oiTgfHQN8DremU1TfZjxVOQlSEgPTpowxT2GasmFf4KH6ohCcebUW', 'bich phuong', '', '', null, '1', '1', '0', '2017-05-27 12:47:33', '[\"4\"]', '0', '18', '2017-05-10 18:02:03', '2017-05-27 12:47:33', null, null);
INSERT INTO `admin` VALUES ('22', 'bactv', '$2y$13$3e5aYHb4S7vAHdSkkDndY.kONr/IZG56VG1hsNBM3Cwy5YmHEr.uK', '', '', '', null, '0', '1', '0', '2017-06-03 22:11:51', '[\"2\",\"5\"]', '1', '22', '2017-06-03 22:11:05', '2017-06-03 22:11:51', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

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
INSERT INTO `admin_action` VALUES ('169', '7', 'Agreement', 'AgreementCourse', 'AgreementCourse', '2017-06-03 21:48:59');
INSERT INTO `admin_action` VALUES ('170', '19', 'QuestionAnswer', 'UpdateAnsTrue', 'UpdateAnsTrue', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('171', '37', 'AgreementCourseShareRate', 'Index', 'Index', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('172', '37', 'AgreementCourseShareRate', 'View', 'View', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('173', '37', 'AgreementCourseShareRate', 'Create', 'Create', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('174', '37', 'AgreementCourseShareRate', 'Update', 'Update', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('175', '37', 'AgreementCourseShareRate', 'Delete', 'Delete', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('176', '38', 'LessonQuizQuestionAnswer', 'Index', 'Index', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('177', '38', 'LessonQuizQuestionAnswer', 'View', 'View', '2017-06-03 21:49:00');
INSERT INTO `admin_action` VALUES ('178', '38', 'LessonQuizQuestionAnswer', 'Create', 'Create', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('179', '38', 'LessonQuizQuestionAnswer', 'Update', 'Update', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('180', '38', 'LessonQuizQuestionAnswer', 'Delete', 'Delete', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('181', '38', 'LessonQuizQuestionAnswer', 'ListAnswer', 'ListAnswer', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('182', '38', 'LessonQuizQuestionAnswer', 'UpdateAnsTrue', 'UpdateAnsTrue', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('183', '39', 'LessonQuizQuestion', 'Index', 'Index', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('184', '39', 'LessonQuizQuestion', 'View', 'View', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('185', '39', 'LessonQuizQuestion', 'Create', 'Create', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('186', '39', 'LessonQuizQuestion', 'Update', 'Update', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('187', '39', 'LessonQuizQuestion', 'Delete', 'Delete', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('188', '40', 'StaticPage', 'Index', 'Index', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('189', '40', 'StaticPage', 'View', 'View', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('190', '40', 'StaticPage', 'Create', 'Create', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('191', '40', 'StaticPage', 'Update', 'Update', '2017-06-03 21:49:01');
INSERT INTO `admin_action` VALUES ('192', '40', 'StaticPage', 'Delete', 'Delete', '2017-06-03 21:49:01');

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

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
INSERT INTO `admin_controller` VALUES ('31', 'Event', 'Event', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('32', 'EventGroup', 'EventGroup', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('33', 'Lesson', 'Lesson', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('34', 'LessonDocument', 'LessonDocument', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('35', 'LessonQuiz', 'LessonQuiz', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('36', 'Report', 'Report', '2017-05-27 09:48:54');
INSERT INTO `admin_controller` VALUES ('37', 'AgreementCourseShareRate', 'AgreementCourseShareRate', '2017-06-03 21:48:59');
INSERT INTO `admin_controller` VALUES ('38', 'LessonQuizQuestionAnswer', 'LessonQuizQuestionAnswer', '2017-06-03 21:48:59');
INSERT INTO `admin_controller` VALUES ('39', 'LessonQuizQuestion', 'LessonQuizQuestion', '2017-06-03 21:48:59');
INSERT INTO `admin_controller` VALUES ('40', 'StaticPage', 'StaticPage', '2017-06-03 21:48:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_group
-- ----------------------------
INSERT INTO `admin_group` VALUES ('1', 'Administator', 'Quản trị hệ thống, Phát triển hệ thống', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]', '1', '2017-03-08 00:33:05', '2017-05-10 13:33:34');
INSERT INTO `admin_group` VALUES ('2', 'Quản lý hợp đồng', 'Nhóm admin quản lý hợp đồng', '[\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\"]', '1', '2017-05-10 17:27:17', '2017-05-10 17:27:17');
INSERT INTO `admin_group` VALUES ('4', 'Đối soát', '<p><strong>Đối so&aacute;t</strong></p>', '[\"38\",\"39\",\"40\",\"41\",\"42\",\"81\",\"82\",\"83\",\"84\",\"85\",\"166\"]', '1', '2017-05-27 10:50:07', '2017-05-27 12:23:37');
INSERT INTO `admin_group` VALUES ('5', 'Quản lý nội dung đề thi, câu hỏi', '<p>Nh&oacute;m quản l&yacute; nội dung đề thi, c&acirc;u hỏi</p>', '[\"91\",\"92\",\"93\",\"94\",\"95\",\"132\",\"170\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"133\",\"106\",\"107\",\"108\",\"109\",\"110\",\"121\",\"122\",\"123\",\"124\",\"125\",\"134\",\"135\",\"136\",\"137\",\"138\"]', '1', '2017-06-03 21:50:38', '2017-06-03 21:50:38');

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
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement
-- ----------------------------
INSERT INTO `agreement` VALUES ('1', 'HT/LUYEN THI TOAN/HOCMAI.VN', '1', '11', '2017-03-06', '2017-03-06', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', '1', '1', '0', null);
INSERT INTO `agreement` VALUES ('2', 'HT/LUYEN THI VAT LY/HOCMAI.VN', '1', '11', '2015-07-16', '2015-07-16', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', '1', '1', '0', null);
INSERT INTO `agreement` VALUES ('3', 'MD/LUYEN THI TOAN/MOON.VN', '1', '8', '2017-06-06', '2017-06-06', '1', '34391', '2017-03-25 10:12:49', '2017-06-02 02:25:43', '1', '1', '0', null);
INSERT INTO `agreement` VALUES ('4', 'HT/LUYEN THI NGU VAN/CAO NHAT VUONG', '1', '10', '2016-12-03', '2016-12-03', '2', '0', '2017-03-25 10:12:49', '2017-03-25 10:12:49', '1', '1', '0', null);
INSERT INTO `agreement` VALUES ('5', 'MD/LUYEN THI TOAN/TRAN TRUNG HIEU', '1', '3', '2015-08-10', '2015-08-10', '1', '812214', '2017-03-25 10:12:49', '2017-03-25 10:17:00', '1', '1', '0', null);
INSERT INTO `agreement` VALUES ('6', 'HT/LUYEN THI TOAN/VU TU LONG', '1', '2', '2017-05-17', '2017-05-17', '2', null, '2017-05-16 02:03:30', '2017-05-16 02:03:30', '1', '1', '0', null);
INSERT INTO `agreement` VALUES ('7', 'HT/LUYEN THI TOAN/HOCMAI.VNN', '1', '11', '2017-06-27', '2017-06-29', '2', null, '2017-06-02 02:22:04', '2017-06-02 02:22:20', '1', '1', '1', null);
INSERT INTO `agreement` VALUES ('8', 'Test', '1', '3', '2017-06-14', '2017-06-28', '2', null, '2017-06-03 23:12:08', '2017-06-06 09:35:42', '1', '1', '1', null);
INSERT INTO `agreement` VALUES ('9', '[[HĐHT] - Luyện thi THPT môn Tiếng Anh - Trần Trung Hiếu', '1', '3', '2017-06-06', '2017-06-06', '2', null, '2017-06-06 09:28:58', '2017-06-06 09:28:58', '1', '1', '0', null);

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
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`addendum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agreement_addendum
-- ----------------------------
INSERT INTO `agreement_addendum` VALUES ('1', '1', 'PL 01', '<p>PL01</p>\r\n<p>Hợp t&aacute;c kh&oacute;a học: Luyện thi THPT Quốc Gia m&ocirc;n To&aacute;n - L&ecirc; B&aacute; Trần Phương</p>', '2017-06-02 02:42:13', '2017-06-02 02:42:13', '1', '1', null, null);
INSERT INTO `agreement_addendum` VALUES ('2', '9', 'PL01 - Chia sẻ doanh thu khóa học', '<p>Tỷ lệ chia sẻ doanh thu cho kh&oacute;a học: Chuy&ecirc;n đề trọng &acirc;m : 30%</p>', '2017-06-06 09:34:30', '2017-06-06 09:34:30', '1', '1', '2017-06-06', '2018-06-06');

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
INSERT INTO `agreement_course_share_rate` VALUES ('1', '2', '50');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Khoá T1 - Luyện thi THPT Quốc gia môn Toán năm 2017 - Thầy Phạm Sỹ Nam', '[\"7\"]', '2', '<p>Study.EDU thiết kế v&agrave; cung cấp chương tr&igrave;nh <strong>luyện thi to&agrave;n diện</strong> THPT Quốc gia m&ocirc;n To&aacute;n năm 2018 theo <strong>cấu tr&uacute;c MỚI&nbsp;</strong>m&agrave; Bộ Gi&aacute;o Dục v&agrave; Đ&agrave;o Tạo vừa ban h&agrave;nh. Một trong những kh&oacute;a học quan trọng nhất l&agrave; <strong>Kh&oacute;a nền tảng H2</strong> được giảng dạy bởi <strong><em>TS. Phạm Sỹ Nam</em></strong> - Gi&aacute;o vi&ecirc;n To&aacute;n <strong><em>trường THPT Chuy&ecirc;n L&ecirc; Hồng Phong &ndash; TP.HCM</em></strong>; Cựu <strong><em>GV trường THPT Chuy&ecirc;n Phan Bội Ch&acirc;u &ndash; TP.Vinh</em></strong>; Giảng vi&ecirc;n trường <strong><em>Đại Học S&agrave;i G&ograve;n.</em></strong></p>\r\n<p>Kh&oacute;a học n&agrave;y sẽ cung cấp cho c&aacute;c em đầy đủ kiến thức cơ bản, kiến thức trọng t&acirc;m v&agrave; bao qu&aacute;t to&agrave;n diện <strong><strong>chương tr&igrave;nh lớp 12</strong></strong>&nbsp;v&agrave; <strong><strong>nội dung trọng t&acirc;m chương tr&igrave;nh lớp 11 </strong></strong>nhằm chuẩn bị cho k&igrave; thi <strong><strong>THPT Quốc gia m&ocirc;n To&aacute;n năm 2018</strong></strong>&nbsp;đạt kết quả tốt nhất. Phương ph&aacute;p giải to&aacute;n được tr&igrave;nh b&agrave;y một c&aacute;ch hệ thống, dễ hiểu, dễ nhớ th&ocirc;ng qua c&aacute;c v&iacute; dụ minh họa từ cơ bản đến n&acirc;ng cao.</p>\r\n<p>Sau mỗi b&agrave;i giảng c&aacute;c em được luyện tập qua b&agrave;i thi<strong><strong> Trắc nghiệm </strong></strong>với c&aacute;c c&acirc;u hỏi được chọn lọc kĩ lu&otilde;c&oacute; đ&aacute;p &aacute;n v&agrave; lời giải <strong><strong>chi </strong></strong><strong><strong>tiết&nbsp;</strong></strong>nhằm hiểu s&acirc;u l&yacute; thuyết, &aacute;p dụng phương ph&aacute;p giải thuần thục v&agrave; ho&agrave;n thiện kỹ năng l&agrave;m b&agrave;i.</p>\r\n<p>Kết th&uacute;c một số b&agrave;i học quan trọng c&aacute;c em được l&agrave;m c&aacute;c&nbsp;<strong><strong>b&agrave;i kiểm tra trắc nghiệm Online</strong></strong>&nbsp;nhằm đ&aacute;nh gi&aacute; ch&iacute;nh x&aacute;c năng lực tiếp thu kiến thức trong từng phần cụ thể. Cuối c&aacute;c chuy&ecirc;n đề c&aacute;c em được bổ sung th&ecirc;m c&aacute;c b&agrave;i to&aacute;n n&acirc;ng cao v&agrave; tham gia đề <strong><strong>thi trắc nghiệm Online</strong></strong> nhằm đ&aacute;nh gi&aacute; chất lượng m&agrave; c&aacute;c em học chuy&ecirc;n đề đ&oacute; v&agrave; gi&uacute;p c&aacute;c em l&agrave;m quen với loại h&igrave;nh thi trắc nghiệm mới của Bộ GD&amp;ĐT.</p>\r\n<p>Hệ thống phần mềm<strong><strong> ưu</strong></strong> <strong><strong>việt</strong></strong> của <strong><strong>Study.EDU</strong></strong>sẽ theo s&aacute;t qu&aacute; tr&igrave;nh học tập của c&aacute;c em, <strong><strong>chấm điểm</strong></strong>, đưa ra <strong><strong>đ&aacute;nh gi&aacute; năng lực</strong></strong> v&agrave; tư vấn gi&uacute;p c&aacute;c em ho&agrave;n th&agrave;nh việc học của m&igrave;nh một c&aacute;ch hiệu quả nhất.</p>\r\n<p><strong><strong>NỘI DUNG KH&Oacute;A HỌC</strong></strong></p>\r\n<ul>\r\n<li>9 chuy&ecirc;n đề bao qu&aacute;t to&agrave;n bộ chương tr&igrave;nh lớp 12 m&ocirc;n To&aacute;n</li>\r\n<li>1 chuy&ecirc;n đề &ocirc;n tập chương tr&igrave;nh lớp 11 m&ocirc;n To&aacute;n.</li>\r\n<li>89 video b&agrave;i giảng b&agrave;i giảng gi&uacute;p c&aacute;c em nắm vững kiến thức m&ocirc;n To&aacute;n.</li>\r\n<li>23 đề trắc nghiệm kiểm tra online c&oacute; video hướng dẫn sửa.</li>\r\n<li>Hơn 500 b&agrave;i tập tự luận v&agrave; trắc nghiệm c&oacute; lời giải chi tiết.</li>\r\n</ul>\r\n<p>Ch&uacute;c c&aacute;c em c&oacute; những giờ học th&uacute; vị, bổ &iacute;ch v&agrave; hiệu quả qua sự dẫn dắt của Thầy&nbsp;<strong><strong>TS.</strong></strong>&nbsp;<strong><strong><em>Phạm Sỹ Nam</em></strong></strong>!</p>', '2017-06-10', '0', '0', '0', null, '300000', '1', '1', '0', '2017-05-28 15:47:02', '2017-05-28 16:04:20');
INSERT INTO `course` VALUES ('2', 'Khoá V1 - Luyện thi THPT Quốc gia môn Vật Lý năm 2017 - Thầy Nguyễn Phạm Phúc', '[17]', null, '<p>Study.EDU thiết kế v&agrave; cung cấp chương tr&igrave;nh&nbsp;<strong>luyện thi to&agrave;n diện</strong>&nbsp;THPT Quốc gia m&ocirc;n Vật L&yacute; năm 2018 theo&nbsp;<strong>cấu tr&uacute;c MỚI&nbsp;</strong>m&agrave; Bộ Gi&aacute;o Dục v&agrave; Đ&agrave;o Tạo vừa ban h&agrave;nh. Một trong những kh&oacute;a học quan trọng nhất l&agrave;&nbsp;<strong>Kh&oacute;a nền tảng H2</strong>&nbsp;được giảng dạy bởi&nbsp;Thầy <em><strong>Nguyễn Phạm Ph&uacute;c</strong></em> - Gi&aacute;o vi&ecirc;n chuy&ecirc;n Vật L&yacute; <em><strong>trường THPT Nguyễn Ch&iacute; Thanh.</strong></em></p>\r\n<p>Kh&oacute;a học n&agrave;y sẽ cung cấp cho c&aacute;c em đầy đủ kiến thức cơ bản, kiến thức trọng t&acirc;m v&agrave; bao qu&aacute;t to&agrave;n diện&nbsp;<strong>chương tr&igrave;nh lớp 12</strong>&nbsp;v&agrave;&nbsp;<strong>nội dung trọng t&acirc;m chương tr&igrave;nh lớp 11&nbsp;</strong>nhằm chuẩn bị cho k&igrave; thi&nbsp;<strong>THPT Quốc gia m&ocirc;n Vật L&yacute; năm 2018</strong>&nbsp;đạt kết quả tốt nhất. Phương ph&aacute;p giải to&aacute;n được tr&igrave;nh b&agrave;y một c&aacute;ch hệ thống, dễ hiểu, dễ nhớ th&ocirc;ng qua c&aacute;c v&iacute; dụ minh họa từ cơ bản đến n&acirc;ng cao.</p>\r\n<p>Sau mỗi b&agrave;i giảng c&aacute;c em được luyện tập qua c&aacute;c b&agrave;i tập&nbsp;<strong>tự luận v&agrave; trắc nghiệm</strong>&nbsp;chọn lọc c&oacute; đ&aacute;p &aacute;n v&agrave; lời giải&nbsp;<strong>chi&nbsp;</strong><strong>tiết&nbsp;</strong>nhằm hiểu s&acirc;u l&yacute; thuyết, &aacute;p dụng phương ph&aacute;p giải thuần thục v&agrave; ho&agrave;n thiện kỹ năng l&agrave;m b&agrave;i.</p>\r\n<p>Kết th&uacute;c một số b&agrave;i học quan trọng c&aacute;c em được l&agrave;m c&aacute;c&nbsp;<strong>b&agrave;i kiểm tra trắc nghiệm Online</strong>&nbsp;nhằm đ&aacute;nh gi&aacute; ch&iacute;nh x&aacute;c năng lực tiếp thu kiến thức trong từng phần cụ thể. Cuối c&aacute;c chuy&ecirc;n đề c&aacute;c em được bổ sung th&ecirc;m c&aacute;c b&agrave;i to&aacute;n n&acirc;ng cao v&agrave; tham gia đề&nbsp;<strong>thi trắc nghiệm Online</strong>&nbsp;nhằm đ&aacute;nh gi&aacute; chất lượng m&agrave; c&aacute;c em học chuy&ecirc;n đề đ&oacute; v&agrave; gi&uacute;p c&aacute;c em l&agrave;m quen với loại h&igrave;nh thi trắc nghiệm của Bộ GD&amp;ĐT.</p>\r\n<p>Hệ thống phần mềm<strong>&nbsp;ưu</strong>&nbsp;<strong>việt</strong>&nbsp;của Study.EDUsẽ theo s&aacute;t qu&aacute; tr&igrave;nh học tập của c&aacute;c em,&nbsp;<strong>chấm điểm</strong>, đưa ra&nbsp;<strong>đ&aacute;nh gi&aacute; năng lực</strong>&nbsp;v&agrave; tư vấn gi&uacute;p c&aacute;c em ho&agrave;n th&agrave;nh việc học của m&igrave;nh một c&aacute;ch hiệu quả nhất.</p>\r\n<p><strong>NỘI DUNG KH&Oacute;A HỌC</strong></p>\r\n<ul>\r\n<li>7 chuy&ecirc;n đề bao qu&aacute;t to&agrave;n bộ chương tr&igrave;nh lớp 12 m&ocirc;n&nbsp;Vật L&yacute;.</li>\r\n<li>1 chuy&ecirc;n đề &ocirc;n tập chương tr&igrave;nh lớp 11 m&ocirc;n Vật L&yacute;..</li>\r\n<li>101 video b&agrave;i giảng gi&uacute;p c&aacute;c em nắm vững kiến thức m&ocirc;n&nbsp;Vật L&yacute;.</li>\r\n<li>18 đề trắc nghiệm kiểm tra online c&oacute; video hướng dẫn sửa.</li>\r\n<li>Hơn 1000 b&agrave;i tập tự luận v&agrave; trắc nghiệm c&oacute; lời giải chi tiết.</li>\r\n</ul>\r\n<p>Ch&uacute;c c&aacute;c em c&oacute; những giờ học th&uacute; vị, bổ &iacute;ch v&agrave; hiệu quả qua sự dẫn dắt của Thầy <em><strong>Nguyễn Phạm Ph&uacute;c</strong></em> !</p>', '2017-08-17', '1', '0', '1', null, '300000', '2', '2', '10', '2017-05-30 23:28:13', '2017-05-30 23:34:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_news
-- ----------------------------
INSERT INTO `course_news` VALUES ('1', '2', 'Thay đổi thời gian học ', '<p>Th&ocirc;ng b&aacute;o c&aacute;c em thay đổi thời gian học h&ocirc;m nay sang ng&agrave;y 20/04</p>', '0', '2017-06-06 10:19:08', '2017-06-06 10:19:08');

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
INSERT INTO `course_teacher` VALUES ('2', '17', 'Khoá T1 - Luyện thi THPT Quốc gia môn Toán năm 2017 - Thầy Phạm Sỹ Nam', 'Nguyễn Phạm Phúc');

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
  `money` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES ('1', 'Nhận ngay 100k khi đăng ký tài khoản ngày hôm nay', '1', '<p>Nhận ngay 100k khi đăng k&yacute; t&agrave;i khoản ng&agrave;y h&ocirc;m nay</p>', '0', '100', '1', '2017-06-04', '2017-06-13', null, '2017-06-05 21:50:40');
INSERT INTO `event` VALUES ('2', 'Trở thành thành viên tích cực nhất của STUDY.EDU để nhận những phần thưởng giá trị', '1', '<p>Truy cập v&agrave; tương t&aacute;c với ứng dụng 5 ng&agrave;y liện tiếp</p>', '1000', '0', '1', '2017-06-21', '2017-06-28', null, '2017-06-05 22:01:29');
INSERT INTO `event` VALUES ('3', 'Tặng ngay 50% khi nạp tiền trong ngày hôm nay', '1', '<p>Tặng 50% số tiền nạp</p>', '0', '0', '1', '2017-06-05', '2017-06-14', null, '2017-06-05 22:02:04');
INSERT INTO `event` VALUES ('4', 'Đua thành tích với những bài kiểm tra trắc nghiệm để nhận những phần thưởng thú vị từ STUDY.EDU', '2', '<p>L&agrave;m đề thi thử m&ocirc;n H&oacute;a - Trường THPT Chuy&ecirc;n Hưng Y&ecirc;n</p>', '0', '50', '1', '2017-06-14', '2017-06-21', null, '2017-06-05 22:04:18');

-- ----------------------------
-- Table structure for event_group
-- ----------------------------
DROP TABLE IF EXISTS `event_group`;
CREATE TABLE `event_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_group
-- ----------------------------
INSERT INTO `event_group` VALUES ('1', 'Tặng, thưởng thành viên', '<p>Tặng thưởng cho th&agrave;nh vi&ecirc;n đăng k&yacute; t&agrave;i khoản mới, th&agrave;nh vi&ecirc;n t&iacute;ch cực, th&agrave;nh vi&ecirc;n nạp tiền trong khoảng thời gian khuyến m&atilde;i.</p>');
INSERT INTO `event_group` VALUES ('2', 'Thách đấu', '<p>Th&aacute;ch đấu giải đề thi</p>');

-- ----------------------------
-- Table structure for event_log
-- ----------------------------
DROP TABLE IF EXISTS `event_log`;
CREATE TABLE `event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `point` int(11) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_log
-- ----------------------------
INSERT INTO `event_log` VALUES ('1', '20', '1', '0', '100', '2017-06-05 22:27:00');
INSERT INTO `event_log` VALUES ('2', '27', '1', '0', '100', '2017-06-05 22:34:13');
INSERT INTO `event_log` VALUES ('3', '27', '1', '0', '250000', '2017-06-05 22:54:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of free_student_course
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of import_file
-- ----------------------------
INSERT INTO `import_file` VALUES ('3', 'Chuyên đề môn Toán', '1', 'topic_subject', '2017-05-28 03:43:40', '2017-05-28 03:43:40', '1', '1');
INSERT INTO `import_file` VALUES ('4', 'Đề thi thử THPT môn Toán', '1', 'quiz', '2017-05-28 10:14:41', '2017-05-28 10:14:41', '1', '1');
INSERT INTO `import_file` VALUES ('5', 'Đề thi thử THPT môn Lịch sử part 1', '1', 'quiz', '2017-05-28 11:19:53', '2017-05-28 11:19:53', '1', '1');
INSERT INTO `import_file` VALUES ('6', 'Câu hỏi đề thi thử THPT môn Lịch sử - Đề số 1', '1', 'question_quiz', '2017-05-28 11:29:37', '2017-05-28 11:29:37', '1', '1');
INSERT INTO `import_file` VALUES ('7', 'Chuyên đề môn Vật lý', '1', 'topic_subject', '2017-06-02 00:52:55', '2017-06-02 00:52:55', '1', '1');
INSERT INTO `import_file` VALUES ('8', 'Chuyên đề môn Hóa', '1', 'topic_subject', '2017-06-02 01:03:28', '2017-06-02 01:03:28', '1', '1');
INSERT INTO `import_file` VALUES ('9', 'Chuyên đề môn SInh', '1', 'topic_subject', '2017-06-02 01:18:16', '2017-06-02 01:18:16', '1', '1');
INSERT INTO `import_file` VALUES ('10', 'Đề thi thử THPT môn toán - part 1', '1', 'quiz', '2017-06-06 09:39:53', '2017-06-06 09:39:53', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES ('15', '1', 'Tìm Khoảng Đơn Điệu Của Hàm Số', '<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">B&agrave;i giảng sẽ gi&uacute;p c&aacute;c em nắm được kiến thức cơ bản về c&aacute;ch t&igrave;m khoảng đơn điệu của h&agrave;m số như:</p>\r\n<ul>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">Định nghĩa</span></li>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">Điều kiện đủ để h&agrave;m số đơn điệu</span></li>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">C&aacute;c bước t&igrave;m khoảng đơn điệu của h&agrave;m số</span></li>\r\n</ul>', 'https://www.youtube.com/watch?v=_p1gDjihbXk', null, '23', '1', '0', '1', '0', '2017-05-28', '2017-05-14 04:17:00', '2017-05-28 16:15:52');
INSERT INTO `lesson` VALUES ('144', '1', 'Tìm Tham Số Để Hàm Số Đơn Điệu Trên Một Miền', '<p style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px; color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">B&agrave;i giảng sẽ gi&uacute;p c&aacute;c em nắm được kiến thức cơ bản về c&aacute;ch t&igrave;m tham số để h&agrave;m số đơn điệu tr&ecirc;n một miền như:</p>\r\n<ul>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">C&ocirc;ng thức t&iacute;nh.</span></li>\r\n<li><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6;\">Điều kiện đủ để h&agrave;m số đơn điệu tr&ecirc;n một miền.</span></li>\r\n</ul>', 'https://www.youtube.com/watch?v=SAvJwbilrcI', null, '16', '2', '0', '1', '0', '2017-05-29', '2017-05-14 04:17:07', '2017-05-28 16:19:27');
INSERT INTO `lesson` VALUES ('1002', '1', 'Ứng dụng tính đơn điệu giải phương trình', '<p><span style=\"color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">B&agrave;i giảng sẽ gi&uacute;p c&aacute;c em nắm kỹ hơn về l&yacute; thuyết v&agrave; một số v&iacute; dụ cụ thể về ứng dụng t&iacute;nh đơn điệu giải phương tr&igrave;nh.</span></p>', 'https://www.youtube.com/watch?v=-FDA6Wga574', null, null, null, '0', '1', '0', null, '2017-05-29 21:51:40', '2017-05-29 21:51:40');
INSERT INTO `lesson` VALUES ('1003', '1', 'Ứng dụng tính đơn điệu giải bất phương trình', '<p><span style=\"color: #333333; font-family: \'Roboto Condensed\', Roboto, Tahoma, Helvetica, Verdana, Arial; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">B&agrave;i giảng Ứng dụng t&iacute;nh đơn điệu giải bất phương tr&igrave;nh sẽ gi&uacute;p c&aacute;c em nắm được l&yacute; thuyết v&agrave; b&agrave;i tập để c&aacute;c em củng cố kiến thức.</span></p>', '', null, null, null, '0', '0', '0', '2017-05-31', '2017-05-29 21:53:53', '2017-05-29 21:53:53');
INSERT INTO `lesson` VALUES ('1004', '2', 'Dao động điều hòa', '<p>B&agrave;i học gi&uacute;p c&aacute;c em nắm được những kiến thức cơ bản về:</p>\r\n<p>1. C&aacute;c phương tr&igrave;nh dao động điều h&ograve;a:</p>\r\n<ul>\r\n<li>Phương tr&igrave;nh li độ.</li>\r\n<li>Phương tr&igrave;nh vận tốc.</li>\r\n<li>Phương tr&igrave;nh gia tốc.</li>\r\n</ul>\r\n<p>2.&nbsp;Mối li&ecirc;n hệ về pha - C&ocirc;ng thức độc lập với thời gian</p>\r\n<ul>\r\n<li>Mối li&ecirc;n hệ về pha.</li>\r\n<li>C&ocirc;ng thức độc lập thời gian.</li>\r\n</ul>\r\n<p>3. Li&ecirc;n hệ giữa chuyển động tr&ograve;n đều v&agrave; dao động điều h&ograve;a.</p>', 'https://www.youtube.com/watch?v=_p1gDjihbXk', null, '30', null, '14', '1', '0', '2017-05-31', '2017-05-30 23:34:02', '2017-05-30 23:34:02');
INSERT INTO `lesson` VALUES ('1005', '2', 'Xác định các đại lượng và trạng thái của vật dao động điều hoà', '<p>B&agrave;i giảng cung cấp cho học sinh t&igrave;m hiểu mối li&ecirc;n hệ giữa c&aacute;c đại lượng v&agrave; trạng th&aacute;i của vật trong qu&aacute; tr&igrave;nh dao động. Ngo&agrave;i ra nắm được c&aacute;c nội dung ch&iacute;nh của b&agrave;i:</p>\r\n<ul>\r\n<li>C&ocirc;ng thức t&iacute;nh tần số g&oacute;c.</li>\r\n<li>Kh&aacute;i niệm chu kỳ (T).</li>\r\n<li>Kh&aacute;i niệm tần số (f).</li>\r\n<li>X&aacute;c định vị tr&iacute;, vận tốc, gia tốc tại thời điểm ban đầu.</li>\r\n<li>X&aacute;c định trạng th&aacute;i của vật tại thời điểm ban đầu.</li>\r\n</ul>', '', null, '40', null, '2', '1', '0', '2017-06-07', '2017-05-30 23:38:53', '2017-05-30 23:38:53');
INSERT INTO `lesson` VALUES ('1006', '2', 'Áp dụng công thức độc lập với thời gian', '<p><span style=\"font-family: Arial, Helvetica, sans-serif; line-height: 16px;\">Th&ocirc;ng qua b&agrave;i học c&aacute;c em sử dụng c&aacute;c c&ocirc;ng thức độc lập thời gian để giải c&aacute;c b&agrave;i to&aacute;n li&ecirc;n quan v&agrave; t&igrave;m c&aacute;c đại lượng.</span></p>', '', null, '50', null, '3', '1', '0', '2017-06-09', '2017-05-30 23:40:19', '2017-05-30 23:40:19');
INSERT INTO `lesson` VALUES ('1007', '2', 'Viết phương trình dao động của vật', '<p>B&agrave;i học hướng dẫn học sinh th&agrave;nh lập phương tr&igrave;nh dao động điều h&ograve;a của vật. Qua đ&oacute; &aacute;p dụng phương tr&igrave;nh dao động điều h&ograve;a t&igrave;m c&aacute;c đại lượng A,&nbsp;<span style=\"color: #333333; font-family: \'Cambria Math\', serif; font-size: 14pt; line-height: 115%;\">⍵,...</span></p>', '', null, '60', null, '1', '1', '0', '2017-06-14', '2017-05-30 23:40:58', '2017-05-30 23:40:58');
INSERT INTO `lesson` VALUES ('1008', '2', 'Xác định ly độ của vật sau thời gian ∆t', '<p>Với b&agrave;i học n&agrave;y, học sinh sẽ được củng cố c&aacute;c kiến thức về:</p>\r\n<ul>\r\n<li>X&aacute;c định ly độ của vật.</li>\r\n<li>Nắm v&agrave; vận dụng c&aacute;c c&ocirc;ng thức x&aacute;c định vị tr&iacute;.</li>\r\n<li>Biết được c&aacute;c trường hợp đặc biệt khi x&aacute;c định vị tr&iacute; của vật tại thời điểm ∆t.</li>\r\n<li>X<span style=\"font-family: Arial, Helvetica, sans-serif; line-height: 16px;\">&aacute;c định vị tr&iacute; của vật dao động điều h&ograve;a tại một thời điểm cho trước.</span></li>\r\n</ul>', '', null, '50', null, '1', '1', '0', '2017-06-16', '2017-05-30 23:44:46', '2017-05-30 23:44:46');
INSERT INTO `lesson` VALUES ('1010', '2', 'test', '<p>test</p>', 'https://www.youtube.com/watch?v=9XdFUgN-IFM', 'alan-walker-spectre-ncs-release-.mp4', '120', null, '0', '1', '0', '2017-06-14', '2017-06-06 10:29:28', '2017-06-06 10:30:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_document
-- ----------------------------
INSERT INTO `lesson_document` VALUES ('3', '10', 'mau-de-cuong-nghien-cuu-do-an-tn-ck14.doc', '2017-05-16 12:18:04');
INSERT INTO `lesson_document` VALUES ('4', '10', 'datn-template-cntt-2012-1-.doc', '2017-05-16 12:18:04');
INSERT INTO `lesson_document` VALUES ('5', '158', 'bai-02-2.pdf', '2017-05-16 22:32:49');
INSERT INTO `lesson_document` VALUES ('6', '158', 'mau-de-cuong-nghien-cuu-do-an-tn-ck14.doc', '2017-05-16 22:32:49');
INSERT INTO `lesson_document` VALUES ('7', '15', 'thiet-ke-chi-tiet-cac-bieu-do-lop.pdf', '2017-05-29 22:24:02');
INSERT INTO `lesson_document` VALUES ('8', '15', 'yiruma-as-you-wish.pdf', '2017-05-29 21:55:04');
INSERT INTO `lesson_document` VALUES ('9', '1010', 'de-on-thi-thptqg-2017-1-1-.doc', '2017-06-06 10:38:41');
INSERT INTO `lesson_document` VALUES ('10', '1010', '6-de-lichsu-thunghiem-k17.docx', '2017-06-06 10:37:56');
INSERT INTO `lesson_document` VALUES ('11', '1010', 'yeu-cau-noi-dung-bao-cao-tom-tat-do-an-tot-nghiep.doc', '2017-06-06 10:37:56');
INSERT INTO `lesson_document` VALUES ('12', '1010', '6-de-lichsu-thunghiem-k17.docx', '2017-06-06 10:38:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_quiz
-- ----------------------------
INSERT INTO `lesson_quiz` VALUES ('1', '1', '15', '3', '5', '10');
INSERT INTO `lesson_quiz` VALUES ('2', '1', '15', '3', '5', '10');
INSERT INTO `lesson_quiz` VALUES ('3', '1', '15', '4', '6', '10');
INSERT INTO `lesson_quiz` VALUES ('92', '1', '15', '6', '10', '10');
INSERT INTO `lesson_quiz` VALUES ('93', '2', '1004', '6', '10', '15');
INSERT INTO `lesson_quiz` VALUES ('94', '2', '1010', '25', '30', '40');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_quiz_question
-- ----------------------------
INSERT INTO `lesson_quiz_question` VALUES ('1', '15', '1', '<p>Đường thẳng n&agrave;o sau đ&acirc;y l&agrave; tiệm cận đứng của đồ thị h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mstyle displaystyle=\"false\"><mfrac><mrow><mn>2</mn><mi>x</mi><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>1</mn></mrow><mrow><mi>x</mi><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>1</mn></mrow></mfrac></mstyle></math></p>');
INSERT INTO `lesson_quiz_question` VALUES ('2', '1004', '93', '<p>dadds</p>');
INSERT INTO `lesson_quiz_question` VALUES ('3', '1010', '94', '<p>C&acirc;u hỏi 1</p>');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_quiz_question_answer
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

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
INSERT INTO `menu` VALUES ('22', '0', 'Feedback người dùng', '1', 'notification/index', 'ravelry', '1', '1', null, null, null);
INSERT INTO `menu` VALUES ('23', '0', 'Giới thiệu', '2', 'site/intro', null, '1', '1', '1', '2017-03-29 00:07:15', '2017-03-29 00:07:17');
INSERT INTO `menu` VALUES ('24', '0', 'Khóa học', '2', 'course/list-course', null, '1', '1', '2', '2017-03-29 00:08:27', '2017-03-29 00:08:29');
INSERT INTO `menu` VALUES ('25', '0', 'Giáo viên', '2', 'teacher/index', null, '1', '1', '3', '2017-03-29 00:09:16', '2017-03-29 00:09:18');
INSERT INTO `menu` VALUES ('26', '0', 'Luyện thi', '2', 'quiz/list-contest', null, '1', '1', '4', '2017-03-29 00:10:00', '2017-03-29 00:10:02');
INSERT INTO `menu` VALUES ('27', '0', 'Hỏi đáp', '2', 'forum/index', null, '1', '1', '6', '2017-03-29 00:10:31', '2017-03-29 00:10:33');
INSERT INTO `menu` VALUES ('28', '0', 'Thách đấu', '2', 'competiton/index', null, '1', '0', '5', '2017-03-29 00:16:43', '2017-03-29 00:16:45');
INSERT INTO `menu` VALUES ('29', '0', 'Quản lý khóa học', '1', 'course/index', 'graduation-cap', '1', '1', null, '2017-04-04 22:55:04', '2017-04-04 22:55:06');
INSERT INTO `menu` VALUES ('30', '0', 'Báo cáo, thống kê', '1', 'report/index', 'tree', '1', '1', null, '2017-04-04 22:55:38', '2017-04-04 22:55:40');
INSERT INTO `menu` VALUES ('31', '29', 'Danh sách khóa học', '1', 'course/index', 'book', '1', '1', '1', '2017-04-04 23:19:38', '2017-04-04 23:19:39');
INSERT INTO `menu` VALUES ('32', '29', 'Quản lý video buổi học', '1', 'course/index', 'book', '1', '0', '2', '2017-04-04 23:20:56', '2017-04-04 23:20:57');
INSERT INTO `menu` VALUES ('33', '30', 'Thống kê truy cập', '1', 'report/access-statistic', 'book', '1', '1', '1', '2017-04-04 23:21:48', '2017-04-04 23:21:49');
INSERT INTO `menu` VALUES ('34', '30', 'Thống kê tổng hợp', '1', 'report/total-statistic', 'book', '1', '1', '2', '2017-04-04 23:23:25', '2017-04-04 23:23:27');
INSERT INTO `menu` VALUES ('35', '30', 'Báo cáo đối soát', '1', 'report/index', 'book', '1', '0', '3', '2017-04-04 23:23:51', '2017-04-04 23:23:53');
INSERT INTO `menu` VALUES ('36', '0', 'Quản lý khóa học', '3', 'course/index', 'book', '1', '1', '1', '2017-05-03 07:29:18', '2017-05-03 07:29:20');
INSERT INTO `menu` VALUES ('37', '0', 'Quản lý sự kiện', '1', 'event/index', 'book', '1', '1', null, null, null);
INSERT INTO `menu` VALUES ('38', '37', 'Nhóm sự kiện', '1', 'event-group/index', 'book', '1', '1', '1', null, null);
INSERT INTO `menu` VALUES ('39', '37', 'Sự kiện', '1', 'event/index', 'book', '1', '1', '2', null, null);
INSERT INTO `menu` VALUES ('40', '37', 'Log người dùng', '1', 'event-log/index', 'book', '1', '1', '3', null, null);
INSERT INTO `menu` VALUES ('41', '0', 'Nội dung', '1', 'content/index', 'ravelry ', '1', '1', null, '2017-06-05 09:06:50', '2017-06-05 09:06:50');
INSERT INTO `menu` VALUES ('42', '41', 'Slideshow', '1', 'slideshow/index', 'wpexplorer ', '1', '1', null, '2017-06-05 09:10:16', '2017-06-05 09:10:16');
INSERT INTO `menu` VALUES ('43', '41', 'Trang nội dung tĩnh', '1', 'static-page/index', 'wpexplorer', '1', '1', null, '2017-06-05 09:11:32', '2017-06-05 09:11:32');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL DEFAULT '0' COMMENT '0: hệ thống, ngược lại là user',
  `receiver_id` int(11) NOT NULL DEFAULT '0' COMMENT '0: hệ thống, ngược lại là user',
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1 : da xem, 0: chua xem',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES ('1', '17', '0', 'send_request_course', 'Xét duyệt khóa học: ID = 2###Khoá V1 - Luyện thi THPT Quốc gia môn Vật Lý năm 2017 - Thầy Nguyễn Phạm Phúc', '1', '2017-05-31 00:11:19');
INSERT INTO `notification` VALUES ('6', '0', '20', 'system_feedback', 'Xin chúc mừng, tài khoản của bạn đã được cộng thêm 100,000 theo chương trình khuyến mãi của trung tâm', '0', '2017-06-05 22:27:00');
INSERT INTO `notification` VALUES ('7', '0', '27', 'system_feedback', 'Xin chúc mừng, tài khoản của bạn đã được cộng thêm 100,000 theo chương trình khuyến mãi của trung tâm', '0', '2017-06-05 22:34:13');
INSERT INTO `notification` VALUES ('8', '0', '27', 'system_feedback', 'Xin chúc mừng, tài khoản của bạn đã được cộng thêm 250,000,000 VNĐ theo chương trình khuyến mãi của trung tâm', '0', '2017-06-05 22:54:58');
INSERT INTO `notification` VALUES ('9', '0', '3', 'system_feedback', '[THÔNG BÁO - Khoá V1 - Luyện thi THPT Quốc gia môn Vật Lý năm 2017 - Thầy Nguyễn Phạm Phúc]Thay đổi thời gian học ', '1', '2017-06-06 10:19:08');
INSERT INTO `notification` VALUES ('10', '0', '27', 'system_feedback', '[THÔNG BÁO - Khoá V1 - Luyện thi THPT Quốc gia môn Vật Lý năm 2017 - Thầy Nguyễn Phạm Phúc]Thay đổi thời gian học ', '0', '2017-06-06 10:19:08');
INSERT INTO `notification` VALUES ('11', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: /lesson/live-streaming.io?lesson_id=1004&session_id=1496737121', '1', '2017-06-06 15:18:53');
INSERT INTO `notification` VALUES ('12', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: /lesson/live-streaming.io?lesson_id=1004&session_id=1496737121', '0', '2017-06-06 15:18:53');
INSERT INTO `notification` VALUES ('13', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=1004&session_id=1496737246\"></a>', '1', '2017-06-06 15:20:53');
INSERT INTO `notification` VALUES ('14', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=1004&session_id=1496737246\"></a>', '0', '2017-06-06 15:20:53');
INSERT INTO `notification` VALUES ('15', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=1004&session_id=1496737246\">/lesson/live-streaming.io?lesson_id=1004&session_id=1496737246</a>', '0', '2017-06-06 15:22:21');
INSERT INTO `notification` VALUES ('16', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=1004&session_id=1496737246\">/lesson/live-streaming.io?lesson_id=1004&session_id=1496737246</a>', '0', '2017-06-06 15:22:21');
INSERT INTO `notification` VALUES ('17', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:23:29');
INSERT INTO `notification` VALUES ('18', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:23:29');
INSERT INTO `notification` VALUES ('19', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:28:21');
INSERT INTO `notification` VALUES ('20', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:28:21');
INSERT INTO `notification` VALUES ('21', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:31:06');
INSERT INTO `notification` VALUES ('22', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:31:06');
INSERT INTO `notification` VALUES ('23', '17', '3', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:33:13');
INSERT INTO `notification` VALUES ('24', '17', '27', 'teacher_notification', '[BÀI GIẢNG ĐANG DIÊN RA] - Link: <a href=\"/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng\">/lesson/live-streaming.io?lesson_id=MTAwNA&session_id=MTQ5NjczNzI0Ng</a>', '0', '2017-06-06 15:33:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
INSERT INTO `party` VALUES ('13', '2', 'Tran Van A', 'Tran Van A', 'Ha Noi, Ha Ba Trung', '1321312312312', '54645654', '2017-06-03 23:06:06', '2017-06-03 23:06:06', '1', '1');

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
  `content` text NOT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active',
  `subject_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) NOT NULL,
  `solution` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '<p>Hội nghị <em><strong>Ianta</strong> </em>(<em>2-1945</em>) kh&ocirc;ng đưa ra quyết định n&agrave;o dưới đ&acirc;y?</p>', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('2', 'Ngày 24-10-1945, sau khi Quốc hội các nước thành viên phê chuẩn, bản Hiến chương của Liên hợp quốc\n', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('3', 'Những năm đầu sau khi Liên Xô tan rã, Liên bang Nga thực hiện chính sách đối ngoại ngả về phương Tây với hi vọng\n', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('4', 'Tại Quốc hội Mĩ (12-3-1947), Tổng thống Truman đề nghị?', '1', '8', null, '4', '');
INSERT INTO `question` VALUES ('5', '<p>H&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mrow><mn>3</mn><mo>&#160;</mo></mrow></msup><mo>-</mo><mo>&#160;</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>3</mn><mi>x</mi><mo>&#160;</mo><mo>-</mo><mo>&#160;</mo><mn>4</mn></math>&nbsp;c&oacute; bao nhi&ecirc;u cực trị ?</p>', '1', '1', null, '1', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>\'</mo><mo>=</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup><mo>&#160;</mo><mo>-</mo><mo>&#160;</mo><mn>6</mn><mi>x</mi><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>3</mn><mo>&#160;</mo><mo>=</mo><mo>&#160;</mo><mn>3</mn><mo>&#160;</mo><mo>(</mo><mi>x</mi><mo>&#160;</mo><mo>-</mo><mo>&#160;</mo><mn>1</mn><msup><mo>)</mo><mn>2</mn></msup><mo>&#160;</mo><mo>&#8805;</mo><mn>0</mn><mo>,</mo><mo>&#160;</mo><mo>&#8704;</mo><mi>x</mi><mo>&#160;</mo><mo>&#8712;</mo><mi>R</mi></math></p>\r\n<p>Do đ&oacute; h&agrave;m số lu&ocirc;n đồng biến tr&ecirc;n tập x&aacute;c định dẫn tới kh&ocirc;ng c&oacute; cực trị.</p>');
INSERT INTO `question` VALUES ('6', '<p>Đồ thị h&agrave;m số &nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>2</mn><mi>x</mi><mo>-</mo><mn>1</mn></math> cắt đồ thị h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>1</mn></math>&nbsp;tại hai điểm ph&acirc;n biệt A, B. Khi đ&oacute; độ d&agrave;i AB l&agrave; bao nhi&ecirc;u ?</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('7', '<p>Cho h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mrow><mo>-</mo><mn>4</mn></mrow><mn>3</mn></mfrac><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>2</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mi>x</mi><mo>-</mo><mn>3</mn></math> . Khẳng định n&agrave;o sau đ&acirc;y l&agrave; đ&uacute;ng?</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('10', '<p>H&agrave;m số n&agrave;o sau đ&acirc;y đồng biến tr&ecirc;n R ?</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('11', '<p>Trong c&aacute;c h&agrave;m số sau, h&agrave;m số n&agrave;o đồng biến tr&ecirc;n R ?</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('12', '<p>Cho h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msqrt><mn>1</mn><mo>-</mo><msup><mi>x</mi><mn>2</mn></msup></msqrt></math> . Khẳng định n&agrave;o sau đ&acirc;y l&agrave; đ&uacute;ng ?</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('13', '<p>T&igrave;m gi&aacute; trị nhỏ nhất của h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mrow><mi>x</mi><mn>2</mn><mo>-</mo><mn>5</mn></mrow><mrow><mi>x</mi><mo>+</mo><mn>3</mn></mrow></mfrac></math> tr&ecirc;n đoạn [0; 2]</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('14', '<p>T&igrave;m tất cả c&aacute;c gi&aacute; trị thực của m sao cho đồ thị h&agrave;m số &nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mn>4</mn></msup><mo>-</mo><mn>2</mn><mi>m</mi><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>2</mn><mi>m</mi><mo>+</mo><msup><mi>m</mi><mn>4</mn></msup></math> c&oacute; ba điểm cực trị tạo th&agrave;nh một tam gi&aacute;c đều</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('15', '<p>T&igrave;m tất cả c&aacute;c gi&aacute; trị thực của m để đồ thị h&agrave;m số <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mrow><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>2</mn></mrow><msqrt><mi>m</mi><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><mn>3</mn></msqrt></mfrac></math>&nbsp;c&oacute; hai đường tiệm cận ngang.</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('16', '<p>Cho h&agrave;m số&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mrow><mn>3</mn><mi>x</mi><mo>-</mo><mn>1</mn></mrow><mrow><mi>x</mi><mo>-</mo><mn>3</mn></mrow></mfrac></math>&nbsp; c&oacute; đồ thị l&agrave; (C). T&igrave;m điểm M thuộc đồ thị (C) sao cho khoảng c&aacute;ch từ M đến tiệm cận đứng bằng hai lần khoảng c&aacute;ch từ M đến tiệm cận ngang.</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('17', '<p>Một đại l&yacute; xăng dầu cần l&agrave;m một c&aacute;i bồn dầu h&igrave;nh trụ bằng t&ocirc;n c&oacute; thể t&iacute;ch&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>16</mn><msup><mi>&#960;m</mi><mn>3</mn></msup></math> . T&igrave;m b&aacute;n k&iacute;nh đ&aacute;y r của h&igrave;nh trụ sao cho h&igrave;nh trụ được l&agrave;m ra &iacute;t tốn nguy&ecirc;n vật liệu nhất.</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('18', '<p>Cho số dương a, biểu thức <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msqrt><mi>a</mi></msqrt><mroot><mi>a</mi><mn>3</mn></mroot><mroot><msup><mi>a</mi><mn>5</mn></msup><mn>6</mn></mroot></math>&nbsp;viết dưới dạng hữu tỷ l&agrave;:</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('19', '<p>H&agrave;m số &nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mo>(</mo><mn>4</mn><msup><mi>x</mi><mn>2</mn></msup><mo>-</mo><mn>1</mn><msup><mo>)</mo><mrow><mo>-</mo><mn>4</mn></mrow></msup></math> c&oacute; tập x&aacute;c định l&agrave;:</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('20', '<p>Phương tr&igrave;nh tiếp tuyến của đồ thị h&agrave;m số&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac></msup></math>&nbsp; tại điểm thuộc đồ thị c&oacute; ho&agrave;nh độ bằng 1 l&agrave;:</p>', '1', '1', null, '1', '');
INSERT INTO `question` VALUES ('21', '<p><strong>Mark the letter A, B, C, or D on your answer sheet to indicate the word whose underlined part differs from the other three in pronunciation in each of the following questions.</strong></p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('22', '<p><strong>Mark the letter A, B, C, or D on your answer sheet to indicate the word whose underlined part differs from the other three in pronunciation in each of the following questions. </strong></p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('23', '<p><strong>Mark the letter A, B, C, or D on your answer sheet to indicate the word that differs from the other three in the position of the primary stress in each of the following questions.</strong></p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('24', '<p><strong>Mark the letter A, B, C, or D on your answer sheet to indicate the word that differs from the other three in the position of the primary stress in each of the following questions.</strong></p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('25', '<p>By the time their babies arrive, the Johnsons hope _______ painting the nursery.</p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('26', '<p>This is a picture of a _______ bus</p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('27', '<p>Marie Curie, ______, was awarded a Nobel Prize for her work.</p>', '1', '7', '0', '5', '');
INSERT INTO `question` VALUES ('28', '<p>Cho h&agrave;m số: <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-1-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mfrac&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/mfrac&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-1\" class=\"mjx-math\"><span id=\"MJXc-Node-2\" class=\"mjx-mrow\"><span id=\"MJXc-Node-3\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-4\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-5\" class=\"mjx-mfrac MJXc-space3\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 1.078em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 1.078em; top: -1.144em;\"><span id=\"MJXc-Node-6\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span></span><span class=\"mjx-denominator\" style=\"width: 1.078em; bottom: -0.735em;\"><span id=\"MJXc-Node-7\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span></span><span id=\"MJXc-Node-8\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-9\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-10\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-11\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-12\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-13\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-14\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-15\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span><span id=\"MJXc-Node-16\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-17\" class=\"mjx-mrow MJXc-space2\"><span id=\"MJXc-Node-18\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-19\" class=\"mjx-texatom\"><span id=\"MJXc-Node-20\" class=\"mjx-mrow\"><span id=\"MJXc-Node-21\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-22\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-23\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-24\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span><span id=\"MJXc-Node-25\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-26\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-27\" class=\"mjx-mi MJXc-space2\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span></span></span></span></span><br />Biết rằng h&agrave;m số lu&ocirc;n đồng biến khi đ&oacute; m nhận gi&aacute; trị l&agrave;:</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('29', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-6-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;msup&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi&gt;n&lt;/mi&gt;&lt;msup&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-50\" class=\"mjx-math\"><span id=\"MJXc-Node-51\" class=\"mjx-mrow\"><span id=\"MJXc-Node-52\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-53\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-54\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-55\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-56\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-57\" class=\"mjx-mi MJXc-space2\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-58\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-59\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-60\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-61\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-62\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-63\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-64\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-65\" class=\"mjx-mi MJXc-space2\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">n</span></span><span id=\"MJXc-Node-66\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-67\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-68\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-69\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-70\" class=\"mjx-msubsup MJXc-space2\"><span class=\"mjx-base\"><span id=\"MJXc-Node-71\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-72\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span></span></span></span></span> đồng biến tr&ecirc;n R khi :</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('30', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-11-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;msup&gt;&lt;mi&gt;e&lt;/mi&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/mrow&gt;&lt;/msup&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-121\" class=\"mjx-math\"><span id=\"MJXc-Node-122\" class=\"mjx-mrow\"><span id=\"MJXc-Node-123\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-124\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-125\" class=\"mjx-msubsup MJXc-space3\"><span class=\"mjx-base\"><span id=\"MJXc-Node-126\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">e</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-127\" class=\"mjx-texatom\"><span id=\"MJXc-Node-128\" class=\"mjx-mrow\"><span id=\"MJXc-Node-129\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-130\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.513em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-131\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-132\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-133\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span></span></span></span></span></span></span> đồng biến tr&ecirc;n c&aacute;c khoảng n&agrave;o trong c&aacute;c khoảng sau:</p>', '1', '1', '1', '6', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-12-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;R&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-134\" class=\"mjx-math\"><span id=\"MJXc-Node-135\" class=\"mjx-mrow\"><span id=\"MJXc-Node-136\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.483em; padding-bottom: 0.303em;\">&nbsp;</span></span></span></span></span></span></p>');
INSERT INTO `question` VALUES ('31', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-16-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mfrac&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/mfrac&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-163\" class=\"mjx-math\"><span id=\"MJXc-Node-164\" class=\"mjx-mrow\"><span id=\"MJXc-Node-165\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-166\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-167\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-168\" class=\"mjx-mfrac\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.7em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.7em; top: -1.368em;\"><span id=\"MJXc-Node-169\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.7em; bottom: -0.735em;\"><span id=\"MJXc-Node-170\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span></span><span id=\"MJXc-Node-171\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-172\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-173\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-174\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-175\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-176\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-177\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-178\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-179\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span><span id=\"MJXc-Node-180\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-181\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-182\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span><span id=\"MJXc-Node-183\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-184\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-185\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-186\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-187\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span><span id=\"MJXc-Node-188\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span><span id=\"MJXc-Node-189\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span></span></span></span> đồng biến tr&ecirc;n (0;3) th&igrave; m thuộc khoảng n&agrave;o sau đ&acirc;y?</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('32', '<p>H&agrave;m số: <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-21-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mfrac&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msup&gt;&lt;/mrow&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;/mrow&gt;&lt;/mfrac&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-235\" class=\"mjx-math\"><span id=\"MJXc-Node-236\" class=\"mjx-mrow\"><span id=\"MJXc-Node-237\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-238\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-239\" class=\"mjx-mfrac MJXc-space3\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 2.494em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 2.494em; top: -1.528em;\"><span id=\"MJXc-Node-240\" class=\"mjx-texatom\"><span id=\"MJXc-Node-241\" class=\"mjx-mrow\"><span id=\"MJXc-Node-242\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-243\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.513em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-244\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></span><span class=\"mjx-denominator\" style=\"width: 2.494em; bottom: -0.725em;\"><span id=\"MJXc-Node-245\" class=\"mjx-texatom\"><span id=\"MJXc-Node-246\" class=\"mjx-mrow\"><span id=\"MJXc-Node-247\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-248\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-249\" class=\"mjx-mi MJXc-space2\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span></span></span></span></span></span></span></span></span> Đồng biến tr&ecirc;n khoảng.</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('33', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-30-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;msqrt&gt;&lt;msup&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;/msqrt&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-360\" class=\"mjx-math\"><span id=\"MJXc-Node-361\" class=\"mjx-mrow\"><span id=\"MJXc-Node-362\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-363\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-364\" class=\"mjx-mi MJXc-space3\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-365\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-366\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-367\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-368\" class=\"mjx-msqrt MJXc-space2\"><span class=\"mjx-box\" style=\"padding-top: 0.045em;\"><span class=\"mjx-surd\"><span class=\"mjx-char MJXc-TeX-size1-R\" style=\"padding-top: 0.603em; padding-bottom: 0.603em;\">&radic;</span></span><span class=\"mjx-box\" style=\"padding-top: 0.071em; border-top: 1.2px solid;\"><span id=\"MJXc-Node-369\" class=\"mjx-mrow\"><span id=\"MJXc-Node-370\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-371\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-372\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span><span id=\"MJXc-Node-373\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-374\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span></span></span></span></span></span></span></span></span> đồng biến tr&ecirc;n khoảng n&agrave;o trong c&aacute;c khoảng n&agrave;o sau đ&acirc;y:</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('34', '<p>Cho h&agrave;m số y = x<sup>3</sup> - 3x<sup>2</sup> - 7x + 5. <br />Chọn phương &aacute;n <strong>đ&uacute;ng</strong></p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('35', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-36-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;msqrt&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msqrt&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;msqrt&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;/msqrt&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-419\" class=\"mjx-math\"><span id=\"MJXc-Node-420\" class=\"mjx-mrow\"><span id=\"MJXc-Node-421\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-422\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-423\" class=\"mjx-msqrt MJXc-space3\"><span class=\"mjx-box\" style=\"padding-top: 0.045em;\"><span class=\"mjx-surd\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.543em; padding-bottom: 0.543em;\">&radic;</span></span><span class=\"mjx-box\" style=\"padding-top: 0.076em; border-top: 1.2px solid;\"><span id=\"MJXc-Node-424\" class=\"mjx-mrow\"><span id=\"MJXc-Node-425\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-426\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-427\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span><span id=\"MJXc-Node-428\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-429\" class=\"mjx-msqrt MJXc-space2\"><span class=\"mjx-box\" style=\"padding-top: 0.045em;\"><span class=\"mjx-surd\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.543em; padding-bottom: 0.543em;\">&radic;</span></span><span class=\"mjx-box\" style=\"padding-top: 0.071em; border-top: 1.2px solid;\"><span id=\"MJXc-Node-430\" class=\"mjx-mrow\"><span id=\"MJXc-Node-431\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-432\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-433\" class=\"mjx-mi MJXc-space2\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span></span></span></span></span></span></span></span> nghịch biến tr&ecirc;n khoảng:</p>', '1', '1', '1', '6', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-37-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-434\" class=\"mjx-math\"><span id=\"MJXc-Node-435\" class=\"mjx-mrow\"><span id=\"MJXc-Node-436\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\"><br /></span></span><span id=\"MJXc-Node-440\" class=\"mjx-mo\"></span></span></span></span></span></p>');
INSERT INTO `question` VALUES ('36', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-41-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;msqrt&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/msqrt&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-468\" class=\"mjx-math\"><span id=\"MJXc-Node-469\" class=\"mjx-mrow\"><span id=\"MJXc-Node-470\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-471\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-472\" class=\"mjx-mi MJXc-space3\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-473\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-474\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-475\" class=\"mjx-msqrt\"><span class=\"mjx-box\" style=\"padding-top: 0.045em;\"><span class=\"mjx-surd\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.543em; padding-bottom: 0.543em;\">&radic;</span></span><span class=\"mjx-box\" style=\"padding-top: 0.076em; border-top: 1.2px solid;\"><span id=\"MJXc-Node-476\" class=\"mjx-mrow\"><span id=\"MJXc-Node-477\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-478\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-479\" class=\"mjx-mn MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span></span></span></span></span></span></span> đồng biến tr&ecirc;n khoảng:</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('37', '<p>H&agrave;m số <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-46-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;y&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;msqrt&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;/msqrt&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi&gt;ln&lt;/mi&gt;&lt;mo&gt;&amp;#x2061;&lt;/mo&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-511\" class=\"mjx-math\"><span id=\"MJXc-Node-512\" class=\"mjx-mrow\"><span id=\"MJXc-Node-513\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.483em; padding-right: 0.006em;\">y</span></span><span id=\"MJXc-Node-514\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-515\" class=\"mjx-msqrt MJXc-space3\"><span class=\"mjx-box\" style=\"padding-top: 0.045em;\"><span class=\"mjx-surd\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.543em; padding-bottom: 0.543em;\">&radic;</span></span><span class=\"mjx-box\" style=\"padding-top: 0.188em; border-top: 1.2px solid;\"><span id=\"MJXc-Node-516\" class=\"mjx-mrow\"><span id=\"MJXc-Node-517\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span></span></span></span><span id=\"MJXc-Node-518\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-519\" class=\"mjx-mi MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.423em; padding-bottom: 0.363em;\">ln</span></span><span id=\"MJXc-Node-520\" class=\"mjx-mo\"></span><span id=\"MJXc-Node-521\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span></span></span></span></span> nghịch biến tr&ecirc;n khoảng:</p>', '1', '1', '1', '6', '');
INSERT INTO `question` VALUES ('38', '<p>Chọn c&acirc;u <strong><em>đ&uacute;ng</em></strong>. Trong phương tr&igrave;nh dao động điều ho&agrave; x = Acos(&omega;t + &phi;) c&aacute;c đại lượng &omega;, &phi;, &omega;t + &phi; l&agrave; những đại lượng trung gian cho ph&eacute;p x&aacute;c định:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('39', '<p>Chọn c&acirc;u <strong><em>đ&uacute;ng</em></strong>. Chu kỳ của dao động l&agrave;:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('40', '<p>Một con lắc l&ograve; xo dao động điều h&ograve;a theo phương ngang. Vận tốc cực đại của vật 16cm/s. Biết khi li độ x = 2&radic;2 cm th&igrave; động năng bằng thế năng. Chu kỳ dao động của con lắc l&agrave;:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('41', '<p>D&ograve;ng điện d&acirc;n dụng c&oacute; tần số 50Hz th&igrave;</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('42', '<p>Một con lắc l&ograve; xo gồm quả nặng khối lượng 1 kg v&agrave; một l&ograve; xo c&oacute; độ cứng 1600 N/m. Khi quả nặng ở VTCB, người ta truyền cho n&oacute; vận tốc ban đầu bằng 2 m/s theo chiều dương trục toạ độ. Phương tr&igrave;nh li độ dao động của quả nặng l&agrave;</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('43', '<p>Vật dao động điều ho&agrave;: Thời gian ngắn nhất vật đi từ vị tr&iacute; c&acirc;n bằng đến li độ x = 0,5A l&agrave; 0,1 s. Chu kỳ dao động của vật l&agrave;:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('44', '<p>Vật dao động điều h&ograve;a thực hiện 20 dao động trong 10 s, khi qua vị tr&iacute; c&acirc;n bằng c&oacute; vận tốc 62,8 cm/s. Chọn gốc thời gian l&uacute;c vật c&oacute; li độ <img class=\"texrender\" style=\"vertical-align: middle;\" src=\"http://hocmai.vn/filter/tex/pix.php/abed7e97ffb8440ebef1e34217b28739.gif\" alt=\"\" border=\"0\" /> v&agrave; đang chuyển động về vị tr&iacute; c&acirc;n bằng. Phương tr&igrave;nh dao động của vật l&agrave;:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('45', '<p>Vật dao động điều ho&agrave;: Thời gian ngắn nhất vật đi từ vị tr&iacute; c&acirc;n bằng đến li độ cực đại l&agrave; 0,1s. Chu kỳ dao động của vật l&agrave;:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('46', '<p>Chọn c&acirc;u <strong><em>đ&uacute;ng</em></strong>. Phương tr&igrave;nh dao động của một vật dao động điều ho&agrave; c&oacute; dạng x = 6cos(10&pi;t + &pi;) (cm, s). Li độ của vật khi pha dao động bằng -30<sup><span style=\"font-size: small;\">0</span></sup> l&agrave;</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('47', '<p>Chọn c&acirc;u <span style=\"font-weight: bold;\">đ&uacute;ng</span>. Một vật dao động điều ho&agrave;, c&oacute; qu&atilde;ng đường đi được trong một chu kỳ l&agrave; 16cm. Bi&ecirc;n độ dao động của vật l&agrave;:</p>', '1', '2', '14', '7', '');
INSERT INTO `question` VALUES ('48', '<p>Cặp chất n&agrave;o sau đ&acirc;y khi phản ứng với H<sub>2</sub> (x&uacute;c t&aacute;c Ni, to) đều tạo ra sobitol?</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('49', '<p>Thực nghiệm n&agrave;o sau đ&acirc;y <strong><em>kh&ocirc;ng</em></strong> tương ứng với cấu tr&uacute;c của glucozơ?</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('50', '<p>T&iacute;nh lượng kết tủa đồng (I) oxit tạo th&agrave;nh khi đun n&oacute;ng dung dịch hỗn hợp chứa 9 gam glucozơ v&agrave; lượng dư đồng (II) hiđroxit trong m&ocirc;i trường kiềm.</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('51', '<p>Cho 50 ml dung dịch glucozơ chưa r&otilde; nồng độ t&aacute;c dụng với một lượng dư dung dịch AgNO<sub>3</sub> trong NH<sub>3</sub> thu được 2,16 gam bạc kết tủa. Nồng độ mol của dung dịch glucozơ đ&atilde; d&ugrave;ng l&agrave;</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('52', '<p>Cho a gam glucozơ l&ecirc;n men với hiệu suất 70%, hấp thụ to&agrave;n bộ sản phẩm kh&iacute; tho&aacute;t ra v&agrave;o 2 l&iacute;t dung dịch NaOH 0,5M (d = 1,05 g/ml) thu được dung dịch chứa hai muối với tổng nồng độ l&agrave; <span style=\"font-size: 12pt;\">3,21%</span>. Khối lương glucozơ đ&atilde; d&ugrave;ng l&agrave;:</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('53', '<p>Ph&aacute;t biểu n&agrave;o dưới đ&acirc;y <strong><em>chưa</em></strong> ch&iacute;nh x&aacute;c:</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('54', '<p>Rượu etylic được tạo ra khi</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('55', '<p>Để x&aacute;c định glucozơ trong nước tiểu của người bị bệnh đ&aacute;i th&aacute;o đường người ta d&ugrave;ng</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('56', '<p>Cho c&aacute;c chất: fructozơ, fomanđehit v&agrave; etanol. Thuốc thử n&agrave;o sau đ&acirc;y c&oacute; thể ph&acirc;n biệt c&aacute;c dung dịch tr&ecirc;n?</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('57', '<p>Ứng dụng n&agrave;o dưới đ&acirc;y <strong>kh&ocirc;ng</strong> phải l&agrave; ứng dụng của glucozơ?</p>', '1', '3', '27', '8', '');
INSERT INTO `question` VALUES ('58', '<p>C&aacute;c hệ sinh th&aacute;i tự nhi&ecirc;n gồm:</p>', '1', '4', '43', '9', '');
INSERT INTO `question` VALUES ('59', '<p>C&aacute;c hệ sinh th&aacute;i tự nhi&ecirc;n tr&ecirc;n Tr&aacute;i Đất rất đa dạng được chia th&agrave;nh:</p>', '1', '4', '43', '9', '');

-- ----------------------------
-- Table structure for question_answer
-- ----------------------------
DROP TABLE IF EXISTS `question_answer`;
CREATE TABLE `question_answer` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `content` text,
  `is_true` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1: true, 0:false',
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_answer` VALUES ('17', '5', '<p>0</p>', '1');
INSERT INTO `question_answer` VALUES ('18', '5', '<p>1</p>', '0');
INSERT INTO `question_answer` VALUES ('19', '5', '<p>2</p>', '0');
INSERT INTO `question_answer` VALUES ('20', '5', '<p>3</p>', '0');
INSERT INTO `question_answer` VALUES ('41', '6', '<p>AB = 3</p>', '0');
INSERT INTO `question_answer` VALUES ('42', '6', '<p>AB = <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>2</mn><msqrt><mn>2</mn></msqrt></math></p>', '1');
INSERT INTO `question_answer` VALUES ('43', '6', '<p>AB = 2</p>', '0');
INSERT INTO `question_answer` VALUES ('44', '6', '<p>1</p>', '0');
INSERT INTO `question_answer` VALUES ('45', '7', '<p>H&agrave;m số đ&atilde; cho nghịch biến tr&ecirc;n <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced><mrow><mo>-</mo><mo>&#8734;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mrow><mo>-</mo><mn>1</mn></mrow><mn>2</mn></mfrac></mrow></mfenced></math></p>', '0');
INSERT INTO `question_answer` VALUES ('46', '7', '<p>H&agrave;m số đ&atilde; cho nghịch biến tr&ecirc;n <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced><mrow><mfrac><mrow><mo>-</mo><mn>1</mn></mrow><mn>2</mn></mfrac><mo>;</mo><mo>&#160;</mo><mo>+</mo><mo>&#8734;</mo></mrow></mfenced></math></p>', '0');
INSERT INTO `question_answer` VALUES ('47', '7', '<p>H&agrave;m số đ&atilde; cho nghịch biến tr&ecirc;n <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced><mrow><mo>-</mo><mo>&#8734;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mrow><mo>-</mo><mn>1</mn></mrow><mn>2</mn></mfrac></mrow></mfenced><mo>&#8746;</mo><mfenced><mrow><mfrac><mrow><mo>-</mo><mn>1</mn></mrow><mn>2</mn></mfrac><mo>;</mo><mo>&#160;</mo><mo>+</mo><mo>&#8734;</mo></mrow></mfenced></math></p>', '0');
INSERT INTO `question_answer` VALUES ('48', '7', '<p>H&agrave;m số đ&atilde; cho nghịch biến tr&ecirc;n <math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi mathvariant=\"normal\">&#8477;</mi></math></p>', '1');
INSERT INTO `question_answer` VALUES ('49', '10', '<p>y = tan x</p>', '0');
INSERT INTO `question_answer` VALUES ('50', '10', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mn>2</mn><msup><mi>x</mi><mn>4</mn></msup><mo>+</mo><msup><mi>x</mi><mn>2</mn></msup></math></p>', '0');
INSERT INTO `question_answer` VALUES ('51', '10', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><mn>3</mn><mi>x</mi><mo>+</mo><mn>1</mn></math></p>', '1');
INSERT INTO `question_answer` VALUES ('52', '10', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>2</mn></math></p>', '0');
INSERT INTO `question_answer` VALUES ('53', '11', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mn>4</mn><mi>x</mi><mo>-</mo><mfrac><mn>3</mn><mi>x</mi></mfrac></math></p>', '0');
INSERT INTO `question_answer` VALUES ('54', '11', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mn>4</mn><mi>x</mi><mo>-</mo><mn>3</mn><mi>sin</mi><mi>x</mi><mo>+</mo><mi>cos</mi><mi>x</mi></math></p>', '0');
INSERT INTO `question_answer` VALUES ('55', '11', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mn>3</mn><msup><mi>x</mi><mn>3</mn></msup><mo>-</mo><msup><mi>x</mi><mn>2</mn></msup><mo>+</mo><mn>2</mn><mi>x</mi><mo>-</mo><mn>7</mn></math></p>', '0');
INSERT INTO `question_answer` VALUES ('56', '11', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><msup><mi>x</mi><mn>3</mn></msup><mo>+</mo><mi>x</mi></math></p>', '1');
INSERT INTO `question_answer` VALUES ('57', '12', '<p>H&agrave;m số đ&atilde; cho đồng biến tr&ecirc;n <strong>[0; 1]</strong></p>', '0');
INSERT INTO `question_answer` VALUES ('58', '12', '<p>H&agrave;m số đ&atilde; cho đồng biến tr&ecirc;n (0; 1)<strong><br /></strong></p>', '0');
INSERT INTO `question_answer` VALUES ('59', '12', '<p>H&agrave;m số đ&atilde; cho nghịch biến tr&ecirc;n(0; 1)</p>', '0');
INSERT INTO `question_answer` VALUES ('60', '12', '<p>H&agrave;m số đ&atilde; cho nghịch biến tr&ecirc;n(-1; 0)</p>', '1');
INSERT INTO `question_answer` VALUES ('61', '13', '<p>-5/3</p>', '0');
INSERT INTO `question_answer` VALUES ('62', '13', '<p>-1/3</p>', '1');
INSERT INTO `question_answer` VALUES ('63', '13', '<p>-2</p>', '0');
INSERT INTO `question_answer` VALUES ('64', '13', '<p>-10</p>', '0');
INSERT INTO `question_answer` VALUES ('65', '14', '<p>m=0</p>', '1');
INSERT INTO `question_answer` VALUES ('66', '14', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>m</mi><mo>=</mo><mroot><mn>3</mn><mn>3</mn></mroot></math></p>', '0');
INSERT INTO `question_answer` VALUES ('67', '14', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>m</mi><mo>=</mo><mo>-</mo><mroot><mn>3</mn><mn>3</mn></mroot></math></p>', '0');
INSERT INTO `question_answer` VALUES ('68', '14', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>m</mi><mo>=</mo><msqrt><mn>3</mn></msqrt></math></p>', '0');
INSERT INTO `question_answer` VALUES ('69', '15', '<p>m=0</p>', '0');
INSERT INTO `question_answer` VALUES ('70', '15', '<p>m &lt; 0</p>', '0');
INSERT INTO `question_answer` VALUES ('71', '15', '<p>m &gt; 0</p>', '0');
INSERT INTO `question_answer` VALUES ('72', '15', '<p>m &gt; 3</p>', '1');
INSERT INTO `question_answer` VALUES ('73', '16', '<p>M1 (1; -1); M2 (7; 5)</p>', '0');
INSERT INTO `question_answer` VALUES ('74', '16', '<p>M1 (1; 1); M2 (-7; 5)</p>', '1');
INSERT INTO `question_answer` VALUES ('75', '16', '<p>M1 (-1; 1); M2 (7; 5)</p>', '0');
INSERT INTO `question_answer` VALUES ('76', '16', '<p>M1 (1; 1); M2 (7; -5)</p>', '0');
INSERT INTO `question_answer` VALUES ('77', '17', '<p>0,8m</p>', '1');
INSERT INTO `question_answer` VALUES ('78', '17', '<p>1,2m</p>', '0');
INSERT INTO `question_answer` VALUES ('79', '17', '<p>2m</p>', '0');
INSERT INTO `question_answer` VALUES ('80', '17', '<p>2,4m</p>', '0');
INSERT INTO `question_answer` VALUES ('81', '18', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><mi>a</mi><mfrac><mn>7</mn><mn>3</mn></mfrac></msup></math></p>', '0');
INSERT INTO `question_answer` VALUES ('82', '18', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><mi>a</mi><mfrac><mn>5</mn><mn>7</mn></mfrac></msup></math></p>', '1');
INSERT INTO `question_answer` VALUES ('83', '18', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><mi>a</mi><mfrac><mn>1</mn><mn>6</mn></mfrac></msup></math></p>', '0');
INSERT INTO `question_answer` VALUES ('84', '18', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><msup><mi>a</mi><mfrac><mn>5</mn><mn>3</mn></mfrac></msup></math></p>', '0');
INSERT INTO `question_answer` VALUES ('85', '19', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mo>(</mo><mn>0</mn><mo>;</mo><mo>&#160;</mo><mo>+</mo><mo>&#8734;</mo><mo>]</mo></math></p>', '0');
INSERT INTO `question_answer` VALUES ('86', '19', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi mathvariant=\"normal\">&#8477;</mi><mo>\\</mo><mfenced open=\"{\" close=\"}\"><mrow><mfrac><mrow><mo>-</mo><mn>1</mn></mrow><mn>2</mn></mfrac><mo>;</mo><mo>&#160;</mo><mfrac><mn>1</mn><mn>2</mn></mfrac></mrow></mfenced><mspace linebreak=\"newline\"/></math></p>', '0');
INSERT INTO `question_answer` VALUES ('87', '19', '<p>R</p>', '1');
INSERT INTO `question_answer` VALUES ('88', '19', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced><mrow><mfrac><mrow><mo>-</mo><mn>1</mn></mrow><mn>2</mn></mfrac><mo>;</mo><mfrac><mn>1</mn><mn>2</mn></mfrac></mrow></mfenced></math></p>', '0');
INSERT INTO `question_answer` VALUES ('89', '20', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mn>1</mn></math></p>', '1');
INSERT INTO `question_answer` VALUES ('90', '20', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac><mi>x</mi><mo>-</mo><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac><mo>+</mo><mn>1</mn></math></p>', '0');
INSERT INTO `question_answer` VALUES ('91', '20', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac><mi>x</mi><mo>-</mo><mn>1</mn></math></p>', '0');
INSERT INTO `question_answer` VALUES ('92', '20', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>y</mi><mo>=</mo><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac><mi>x</mi><mo>+</mo><mfrac><mi mathvariant=\"normal\">&#960;</mi><mn>2</mn></mfrac><mo>-</mo><mn>1</mn></math></p>', '0');
INSERT INTO `question_answer` VALUES ('93', '21', '<p>dr<u>ought</u></p>', '1');
INSERT INTO `question_answer` VALUES ('94', '21', '<p>f<u>ought</u></p>', '0');
INSERT INTO `question_answer` VALUES ('95', '21', '<p>br<u>ought</u></p>', '0');
INSERT INTO `question_answer` VALUES ('96', '21', '<p>b<u>ought</u></p>', '0');
INSERT INTO `question_answer` VALUES ('97', '22', '<p>build<u>s</u></p>', '0');
INSERT INTO `question_answer` VALUES ('98', '22', '<p>destroy<u>s</u></p>', '1');
INSERT INTO `question_answer` VALUES ('99', '22', '<p>occur<u>s</u></p>', '0');
INSERT INTO `question_answer` VALUES ('100', '22', '<p>prevent<u>s</u></p>', '0');
INSERT INTO `question_answer` VALUES ('101', '23', '<p>include</p>', '1');
INSERT INTO `question_answer` VALUES ('102', '23', '<p>achieve &nbsp;</p>', '0');
INSERT INTO `question_answer` VALUES ('103', '23', '<p>replace &nbsp;</p>', '0');
INSERT INTO `question_answer` VALUES ('104', '23', '<p>comment</p>', '0');
INSERT INTO `question_answer` VALUES ('105', '24', '<p>comfortable</p>', '0');
INSERT INTO `question_answer` VALUES ('106', '24', '<p>attractive</p>', '0');
INSERT INTO `question_answer` VALUES ('107', '24', '<p>necessary</p>', '1');
INSERT INTO `question_answer` VALUES ('108', '24', '<p>secretive &nbsp;</p>', '0');
INSERT INTO `question_answer` VALUES ('109', '25', '<p>have finished</p>', '0');
INSERT INTO `question_answer` VALUES ('110', '25', '<p>to finish &nbsp;</p>', '1');
INSERT INTO `question_answer` VALUES ('111', '25', '<p>finished &nbsp;</p>', '0');
INSERT INTO `question_answer` VALUES ('112', '25', '<p>finish</p>', '0');
INSERT INTO `question_answer` VALUES ('113', '26', '<p>red bright London</p>', '0');
INSERT INTO `question_answer` VALUES ('114', '26', '<p>bright red London</p>', '0');
INSERT INTO `question_answer` VALUES ('115', '26', '<p>Londonbright red</p>', '0');
INSERT INTO `question_answer` VALUES ('116', '26', '<p>London red bright</p>', '1');
INSERT INTO `question_answer` VALUES ('117', '27', '<p>was the scientist who discovered radium</p>', '1');
INSERT INTO `question_answer` VALUES ('118', '27', '<p>whosescientific discovery of radium</p>', '0');
INSERT INTO `question_answer` VALUES ('119', '27', '<p>the scientist discovered radium &nbsp;</p>', '0');
INSERT INTO `question_answer` VALUES ('120', '27', '<p>the scientist discovered radium &nbsp;</p>', '0');
INSERT INTO `question_answer` VALUES ('121', '28', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-2-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;gt;&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-28\" class=\"mjx-math\"><span id=\"MJXc-Node-29\" class=\"mjx-mrow\"><span id=\"MJXc-Node-30\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-31\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.243em; padding-bottom: 0.363em;\">&gt;</span></span><span id=\"MJXc-Node-32\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('122', '28', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-3-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;lt;&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-33\" class=\"mjx-math\"><span id=\"MJXc-Node-34\" class=\"mjx-mrow\"><span id=\"MJXc-Node-35\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-36\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.243em; padding-bottom: 0.363em;\">&lt;</span></span><span id=\"MJXc-Node-37\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-38\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('123', '28', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-4-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;#x2264;&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-39\" class=\"mjx-math\"><span id=\"MJXc-Node-40\" class=\"mjx-mrow\"><span id=\"MJXc-Node-41\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-42\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.483em;\">&le;</span></span><span id=\"MJXc-Node-43\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-44\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('124', '28', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-5-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;#x2265;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-45\" class=\"mjx-math\"><span id=\"MJXc-Node-46\" class=\"mjx-mrow\"><span id=\"MJXc-Node-47\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-48\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.483em;\">&ge;</span></span><span id=\"MJXc-Node-49\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('125', '29', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-7-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;n&lt;/mi&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;gt;&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-73\" class=\"mjx-math\"><span id=\"MJXc-Node-74\" class=\"mjx-mrow\"><span id=\"MJXc-Node-75\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">n</span></span><span id=\"MJXc-Node-76\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-77\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.243em; padding-bottom: 0.363em;\">&gt;</span></span><span id=\"MJXc-Node-78\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('126', '29', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced open=\"{\" close=\"\"><mtable columnalign=\"left\"><mtr><mtd><mi>m</mi><mo>&#62;</mo><mn>0</mn></mtd></mtr><mtr><mtd><mi>n</mi><mo>&#62;</mo><mn>0</mn></mtd></mtr></mtable></mfenced></math></p>', '1');
INSERT INTO `question_answer` VALUES ('127', '29', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-9-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;n&lt;/mi&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;mo&gt;&amp;#x2264;&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-97\" class=\"mjx-math\"><span id=\"MJXc-Node-98\" class=\"mjx-mrow\"><span id=\"MJXc-Node-99\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">n</span></span><span id=\"MJXc-Node-100\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span><span id=\"MJXc-Node-101\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.483em;\">&le;</span></span><span id=\"MJXc-Node-102\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('128', '29', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfenced open=\"{\" close=\"\"><mtable columnalign=\"left\"><mtr><mtd><mi>m</mi><mo>&#60;</mo><mn>0</mn></mtd></mtr><mtr><mtd><mi>n</mi><mo>&#60;</mo><mn>0</mn></mtd></mtr></mtable></mfenced></math></p>', '0');
INSERT INTO `question_answer` VALUES ('129', '30', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-13-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;msup&gt;&lt;mi&gt;e&lt;/mi&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-137\" class=\"mjx-math\"><span id=\"MJXc-Node-138\" class=\"mjx-mrow\"><span id=\"MJXc-Node-139\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-140\" class=\"mjx-msubsup\"><span class=\"mjx-base\"><span id=\"MJXc-Node-141\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">e</span></span></span><span class=\"mjx-sup\" style=\"font-size: 70.7%; vertical-align: 0.584em; padding-left: 0px; padding-right: 0.071em;\"><span id=\"MJXc-Node-142\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span></span></span><span id=\"MJXc-Node-143\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-144\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-145\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-146\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('130', '30', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-14-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-147\" class=\"mjx-math\"><span id=\"MJXc-Node-148\" class=\"mjx-mrow\"><span id=\"MJXc-Node-149\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-150\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span><span id=\"MJXc-Node-151\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-152\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-153\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-154\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('131', '30', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-15-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-155\" class=\"mjx-math\"><span id=\"MJXc-Node-156\" class=\"mjx-mrow\"><span id=\"MJXc-Node-157\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-158\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-159\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-160\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-161\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span><span id=\"MJXc-Node-162\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('132', '30', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-12-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;R&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-134\" class=\"mjx-math\"><span id=\"MJXc-Node-135\" class=\"mjx-mrow\"><span id=\"MJXc-Node-136\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.483em; padding-bottom: 0.303em;\">R</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('133', '31', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-17-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;[&lt;/mo&gt;&lt;mfrac&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;12&lt;/mn&gt;&lt;/mrow&gt;&lt;mn&gt;7&lt;/mn&gt;&lt;/mfrac&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-190\" class=\"mjx-math\"><span id=\"MJXc-Node-191\" class=\"mjx-mrow\"><span id=\"MJXc-Node-192\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">[</span></span><span id=\"MJXc-Node-193\" class=\"mjx-mfrac\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 1.2em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 1.2em; top: -1.368em;\"><span id=\"MJXc-Node-194\" class=\"mjx-texatom\"><span id=\"MJXc-Node-195\" class=\"mjx-mrow\"><span id=\"MJXc-Node-196\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">12/7</span></span></span></span></span><span id=\"MJXc-Node-197\" class=\"mjx-mn\"></span></span></span><span id=\"MJXc-Node-198\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-199\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-200\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-201\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('134', '31', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-18-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;[&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mfrac&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;12&lt;/mn&gt;&lt;/mrow&gt;&lt;mn&gt;7&lt;/mn&gt;&lt;/mfrac&gt;&lt;mo stretchy=&quot;false&quot;&gt;]&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-202\" class=\"mjx-math\"><span id=\"MJXc-Node-203\" class=\"mjx-mrow\"><span id=\"MJXc-Node-204\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">[</span></span><span id=\"MJXc-Node-205\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-206\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span><span id=\"MJXc-Node-207\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-208\" class=\"mjx-mfrac MJXc-space1\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 1.2em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 1.2em; top: -1.368em;\"><span id=\"MJXc-Node-209\" class=\"mjx-texatom\"><span id=\"MJXc-Node-210\" class=\"mjx-mrow\"><span id=\"MJXc-Node-211\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">12/</span></span></span></span></span><span class=\"mjx-denominator\" style=\"width: 1.2em; bottom: -0.746em;\"><span id=\"MJXc-Node-212\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">7</span></span></span></span></span><span id=\"MJXc-Node-213\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">]</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('135', '31', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-19-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;]&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-214\" class=\"mjx-math\"><span id=\"MJXc-Node-215\" class=\"mjx-mrow\"><span id=\"MJXc-Node-216\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-217\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-218\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-219\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-220\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-221\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span><span id=\"MJXc-Node-222\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">]</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('136', '31', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-20-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mfrac&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;12&lt;/mn&gt;&lt;/mrow&gt;&lt;mn&gt;7&lt;/mn&gt;&lt;/mfrac&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-223\" class=\"mjx-math\"><span id=\"MJXc-Node-224\" class=\"mjx-mrow\"><span id=\"MJXc-Node-225\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-226\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-227\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-228\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-229\" class=\"mjx-mfrac MJXc-space1\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 1.2em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 1.2em; top: -1.368em;\"><span id=\"MJXc-Node-230\" class=\"mjx-texatom\"><span id=\"MJXc-Node-231\" class=\"mjx-mrow\"><span id=\"MJXc-Node-232\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">12</span></span></span></span></span><span class=\"mjx-denominator\" style=\"width: 1.2em; bottom: -0.746em;\"><span id=\"MJXc-Node-233\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">7</span></span></span></span></span><span id=\"MJXc-Node-234\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('137', '32', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-22-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-250\" class=\"mjx-math\"><span id=\"MJXc-Node-251\" class=\"mjx-mrow\"><span id=\"MJXc-Node-252\" class=\"mjx-mrow\"><span id=\"MJXc-Node-253\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-254\" class=\"mjx-texatom\"><span id=\"MJXc-Node-255\" class=\"mjx-mrow\"><span id=\"MJXc-Node-256\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-257\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-258\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-259\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span><span id=\"MJXc-Node-260\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span> v&agrave; <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-23-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-261\" class=\"mjx-math\"><span id=\"MJXc-Node-262\" class=\"mjx-mrow\"><span id=\"MJXc-Node-263\" class=\"mjx-mrow\"><span id=\"MJXc-Node-264\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-265\" class=\"mjx-texatom\"><span id=\"MJXc-Node-266\" class=\"mjx-mrow\"><span id=\"MJXc-Node-267\" class=\"mjx-texatom\"><span id=\"MJXc-Node-268\" class=\"mjx-mrow\"><span id=\"MJXc-Node-269\" class=\"mjx-texatom\"><span id=\"MJXc-Node-270\" class=\"mjx-mrow\"><span id=\"MJXc-Node-271\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-272\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-273\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></span></span><span id=\"MJXc-Node-274\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('138', '32', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-24-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;[&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-275\" class=\"mjx-math\"><span id=\"MJXc-Node-276\" class=\"mjx-mrow\"><span id=\"MJXc-Node-277\" class=\"mjx-mrow\"><span id=\"MJXc-Node-278\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">[</span></span><span id=\"MJXc-Node-279\" class=\"mjx-texatom\"><span id=\"MJXc-Node-280\" class=\"mjx-mrow\"><span id=\"MJXc-Node-281\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span><span id=\"MJXc-Node-282\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-283\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span><span id=\"MJXc-Node-284\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span> v&agrave; <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-25-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mo&gt;]&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-285\" class=\"mjx-math\"><span id=\"MJXc-Node-286\" class=\"mjx-mrow\"><span id=\"MJXc-Node-287\" class=\"mjx-mrow\"><span id=\"MJXc-Node-288\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-289\" class=\"mjx-texatom\"><span id=\"MJXc-Node-290\" class=\"mjx-mrow\"><span id=\"MJXc-Node-291\" class=\"mjx-texatom\"><span id=\"MJXc-Node-292\" class=\"mjx-mrow\"><span id=\"MJXc-Node-293\" class=\"mjx-texatom\"><span id=\"MJXc-Node-294\" class=\"mjx-mrow\"><span id=\"MJXc-Node-295\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-296\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-297\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></span></span><span id=\"MJXc-Node-298\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">]</span></span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('139', '32', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-26-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-299\" class=\"mjx-math\"><span id=\"MJXc-Node-300\" class=\"mjx-mrow\"><span id=\"MJXc-Node-301\" class=\"mjx-mrow\"><span id=\"MJXc-Node-302\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-303\" class=\"mjx-texatom\"><span id=\"MJXc-Node-304\" class=\"mjx-mrow\"><span id=\"MJXc-Node-305\" class=\"mjx-texatom\"><span id=\"MJXc-Node-306\" class=\"mjx-mrow\"><span id=\"MJXc-Node-307\" class=\"mjx-texatom\"><span id=\"MJXc-Node-308\" class=\"mjx-mrow\"><span id=\"MJXc-Node-309\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span></span></span></span></span><span id=\"MJXc-Node-310\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-311\" class=\"mjx-texatom\"><span id=\"MJXc-Node-312\" class=\"mjx-mrow\"><span id=\"MJXc-Node-313\" class=\"mjx-texatom\"><span id=\"MJXc-Node-314\" class=\"mjx-mrow\"><span id=\"MJXc-Node-315\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-316\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span></span></span></span></span><span id=\"MJXc-Node-317\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span> v&agrave; <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-27-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-318\" class=\"mjx-math\"><span id=\"MJXc-Node-319\" class=\"mjx-mrow\"><span id=\"MJXc-Node-320\" class=\"mjx-mrow\"><span id=\"MJXc-Node-321\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-322\" class=\"mjx-texatom\"><span id=\"MJXc-Node-323\" class=\"mjx-mrow\"><span id=\"MJXc-Node-324\" class=\"mjx-texatom\"><span id=\"MJXc-Node-325\" class=\"mjx-mrow\"><span id=\"MJXc-Node-326\" class=\"mjx-texatom\"><span id=\"MJXc-Node-327\" class=\"mjx-mrow\"><span id=\"MJXc-Node-328\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-329\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-330\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span></span></span></span></span><span id=\"MJXc-Node-331\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span></span></span><span id=\"MJXc-Node-332\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('140', '32', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-28-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-333\" class=\"mjx-math\"><span id=\"MJXc-Node-334\" class=\"mjx-mrow\"><span id=\"MJXc-Node-335\" class=\"mjx-mrow\"><span id=\"MJXc-Node-336\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-337\" class=\"mjx-texatom\"><span id=\"MJXc-Node-338\" class=\"mjx-mrow\"><span id=\"MJXc-Node-339\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-340\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-341\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-342\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span></span></span><span id=\"MJXc-Node-343\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span> v&agrave; <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-29-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-344\" class=\"mjx-math\"><span id=\"MJXc-Node-345\" class=\"mjx-mrow\"><span id=\"MJXc-Node-346\" class=\"mjx-texatom\"><span id=\"MJXc-Node-347\" class=\"mjx-mrow\"><span id=\"MJXc-Node-348\" class=\"mjx-texatom\"><span id=\"MJXc-Node-349\" class=\"mjx-mrow\"><span id=\"MJXc-Node-350\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-351\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-352\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-353\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span></span></span></span></span><span id=\"MJXc-Node-354\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-355\" class=\"mjx-texatom\"><span id=\"MJXc-Node-356\" class=\"mjx-mrow\"><span id=\"MJXc-Node-357\" class=\"mjx-texatom\"><span id=\"MJXc-Node-358\" class=\"mjx-mrow\"><span id=\"MJXc-Node-359\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('141', '33', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-31-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-375\" class=\"mjx-math\"><span id=\"MJXc-Node-376\" class=\"mjx-mrow\"><span id=\"MJXc-Node-377\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-378\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-379\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-380\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-381\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-382\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span>.</p>', '0');
INSERT INTO `question_answer` VALUES ('142', '33', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-32-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-383\" class=\"mjx-math\"><span id=\"MJXc-Node-384\" class=\"mjx-mrow\"><span id=\"MJXc-Node-385\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-386\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-387\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-388\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-389\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-390\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span>.</p>', '0');
INSERT INTO `question_answer` VALUES ('143', '33', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-33-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;mo&gt;&amp;#x222A;&lt;/mo&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-391\" class=\"mjx-math\"><span id=\"MJXc-Node-392\" class=\"mjx-mrow\"><span id=\"MJXc-Node-393\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-394\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-395\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-396\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-397\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-398\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-399\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span><span id=\"MJXc-Node-400\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.363em;\">&cup;</span></span><span id=\"MJXc-Node-401\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-402\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-403\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-404\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-405\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-406\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span>.</p>', '0');
INSERT INTO `question_answer` VALUES ('144', '33', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-34-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-407\" class=\"mjx-math\"><span id=\"MJXc-Node-408\" class=\"mjx-mrow\"><span id=\"MJXc-Node-409\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-410\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-411\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-412\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-413\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-414\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-415\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('145', '34', '<p>H&agrave;m số lu&ocirc;n đồng biến <span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-35-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x2200;&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-416\" class=\"mjx-math\"><span id=\"MJXc-Node-417\" class=\"mjx-mrow\"><span id=\"MJXc-Node-418\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.423em; padding-bottom: 0.363em;\">&forall;</span></span></span></span></span></span>x</p>', '0');
INSERT INTO `question_answer` VALUES ('146', '34', '<p>Cả 3 phương &aacute;n kia đều sai.</p>', '0');
INSERT INTO `question_answer` VALUES ('147', '34', '<p>H&agrave;m số c&oacute; cực đại v&agrave; cực tiểu nằm về hai ph&iacute;a của trục tung.</p>', '0');
INSERT INTO `question_answer` VALUES ('148', '34', '<p>H&agrave;m số c&oacute; cực đại v&agrave; cực tiểu nằm về c&ugrave;ng một ph&iacute;a của trục tung.</p>', '1');
INSERT INTO `question_answer` VALUES ('149', '35', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-38-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;[&lt;/mo&gt;&lt;/mrow&gt;&lt;/mrow&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-441\" class=\"mjx-math\"><span id=\"MJXc-Node-442\" class=\"mjx-mrow\"><span id=\"MJXc-Node-443\" class=\"mjx-texatom\"><span id=\"MJXc-Node-444\" class=\"mjx-mrow\"><span id=\"MJXc-Node-445\" class=\"mjx-texatom\"><span id=\"MJXc-Node-446\" class=\"mjx-mrow\"><span id=\"MJXc-Node-447\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">[</span></span></span></span></span></span><span id=\"MJXc-Node-448\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span><span id=\"MJXc-Node-449\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-450\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-451\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('150', '35', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-39-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;msqrt&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msqrt&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-452\" class=\"mjx-math\"><span id=\"MJXc-Node-453\" class=\"mjx-mrow\"><span id=\"MJXc-Node-454\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-455\" class=\"mjx-msqrt\"><span class=\"mjx-box\" style=\"padding-top: 0.045em;\"><span class=\"mjx-surd\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.543em; padding-bottom: 0.543em;\">&radic;</span></span><span class=\"mjx-box\" style=\"padding-top: 0.082em; border-top: 1.2px solid;\"><span id=\"MJXc-Node-456\" class=\"mjx-mrow\"><span id=\"MJXc-Node-457\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span><span id=\"MJXc-Node-458\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-459\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span><span id=\"MJXc-Node-460\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('151', '35', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-40-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;3&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-461\" class=\"mjx-math\"><span id=\"MJXc-Node-462\" class=\"mjx-mrow\"><span id=\"MJXc-Node-463\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-464\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-465\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-466\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">3</span></span><span id=\"MJXc-Node-467\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('152', '35', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-37-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-434\" class=\"mjx-math\"><span id=\"MJXc-Node-435\" class=\"mjx-mrow\"><span id=\"MJXc-Node-436\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-437\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-438\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-439\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-440\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('153', '36', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-42-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-480\" class=\"mjx-math\"><span id=\"MJXc-Node-481\" class=\"mjx-mrow\"><span id=\"MJXc-Node-482\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-483\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-484\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-485\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-486\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('154', '36', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-43-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-487\" class=\"mjx-math\"><span id=\"MJXc-Node-488\" class=\"mjx-mrow\"><span id=\"MJXc-Node-489\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-490\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">1</span></span><span id=\"MJXc-Node-491\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-492\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-493\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-494\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('155', '36', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-44-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-495\" class=\"mjx-math\"><span id=\"MJXc-Node-496\" class=\"mjx-mrow\"><span id=\"MJXc-Node-497\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-498\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-499\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-500\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-501\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-502\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('156', '36', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-45-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;[&lt;/mo&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-503\" class=\"mjx-math\"><span id=\"MJXc-Node-504\" class=\"mjx-mrow\"><span id=\"MJXc-Node-505\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">[</span></span><span id=\"MJXc-Node-506\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span><span id=\"MJXc-Node-507\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-508\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-509\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-510\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('157', '37', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-47-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-522\" class=\"mjx-math\"><span id=\"MJXc-Node-523\" class=\"mjx-mrow\"><span id=\"MJXc-Node-524\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-525\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-526\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-527\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-528\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-529\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('158', '37', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-48-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;]&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-530\" class=\"mjx-math\"><span id=\"MJXc-Node-531\" class=\"mjx-mrow\"><span id=\"MJXc-Node-532\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-533\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span><span id=\"MJXc-Node-534\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-535\" class=\"mjx-mn MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-536\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">]</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('159', '37', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-49-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mn&gt;0&lt;/mn&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mi&gt;e&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-537\" class=\"mjx-math\"><span id=\"MJXc-Node-538\" class=\"mjx-mrow\"><span id=\"MJXc-Node-539\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-540\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">0</span></span><span id=\"MJXc-Node-541\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-542\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">e</span></span><span id=\"MJXc-Node-543\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('160', '37', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-50-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;e&lt;/mi&gt;&lt;mo&gt;;&lt;/mo&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x221E;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-544\" class=\"mjx-math\"><span id=\"MJXc-Node-545\" class=\"mjx-mrow\"><span id=\"MJXc-Node-546\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">(</span></span><span id=\"MJXc-Node-547\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">e</span></span><span id=\"MJXc-Node-548\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.123em; padding-bottom: 0.543em;\">;</span></span><span id=\"MJXc-Node-549\" class=\"mjx-mo MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-550\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">&infin;</span></span><span id=\"MJXc-Node-551\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.483em; padding-bottom: 0.603em;\">)</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('161', '38', '<p>Bi&ecirc;n độ v&agrave; trạng th&aacute;i dao động.</p>', '1');
INSERT INTO `question_answer` VALUES ('162', '38', '<p>Tần số v&agrave; trạng th&aacute;i dao động.</p>', '0');
INSERT INTO `question_answer` VALUES ('163', '38', '<p>Tần số v&agrave; pha dao động.</p>', '0');
INSERT INTO `question_answer` VALUES ('164', '38', '<p>Ly độ v&agrave; pha ban đầu.</p>', '0');
INSERT INTO `question_answer` VALUES ('165', '39', '<p>khoảng thời gian ngắn nhất m&agrave; trạng th&aacute;i dao động được lặp lại như cũ.</p>', '1');
INSERT INTO `question_answer` VALUES ('166', '39', '<p>khoảng thời gian vật thực hiện dao động.</p>', '0');
INSERT INTO `question_answer` VALUES ('167', '39', '<p>khoảng thời gian m&agrave; vật đi được một qu&atilde;ng đường bằng bi&ecirc;n độ.</p>', '0');
INSERT INTO `question_answer` VALUES ('168', '39', '<p>khoảng thời gian m&agrave; trạng th&aacute;i dao động được lặp lại như cũ.</p>', '0');
INSERT INTO `question_answer` VALUES ('169', '40', '<p>&pi;/2 (s).</p>', '1');
INSERT INTO `question_answer` VALUES ('170', '40', '<p>2&pi; (s).</p>', '0');
INSERT INTO `question_answer` VALUES ('171', '40', '<p>4&pi; (s).</p>', '0');
INSERT INTO `question_answer` VALUES ('172', '40', '<p>&pi; (s).</p>', '0');
INSERT INTO `question_answer` VALUES ('173', '41', '<p>Chu k&igrave; của d&ograve;ng điện l&agrave; 0,05s.</p>', '1');
INSERT INTO `question_answer` VALUES ('174', '41', '<p>Mỗi gi&acirc;y d&ograve;ng điện thực hiện 100 dao động</p>', '0');
INSERT INTO `question_answer` VALUES ('175', '41', '<p>Mỗi gi&acirc;y d&ograve;ng điện thực hiện 50 dao động.</p>', '0');
INSERT INTO `question_answer` VALUES ('176', '41', '<p>Chu k&igrave; của d&ograve;ng điện lu&ocirc;n nhỏ hơn 0,2s</p>', '0');
INSERT INTO `question_answer` VALUES ('177', '42', '<p>x = 0,5cos(40t +<span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-1-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/mfrac&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-1\" class=\"mjx-math\"><span id=\"MJXc-Node-2\" class=\"mjx-mrow\"><span id=\"MJXc-Node-3\" class=\"mjx-mfrac\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-4\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.714em;\"><span id=\"MJXc-Node-5\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></span></span></span>) m.</p>', '1');
INSERT INTO `question_answer` VALUES ('178', '42', '<p>x = 5cos(40t -<span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-2-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/mfrac&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-6\" class=\"mjx-math\"><span id=\"MJXc-Node-7\" class=\"mjx-mrow\"><span id=\"MJXc-Node-8\" class=\"mjx-mfrac\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-9\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.714em;\"><span id=\"MJXc-Node-10\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></span></span></span>) cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('179', '42', '<p>x = 5cos(40t -<span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-3-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/mfrac&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-11\" class=\"mjx-math\"><span id=\"MJXc-Node-12\" class=\"mjx-mrow\"><span id=\"MJXc-Node-13\" class=\"mjx-mfrac\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-14\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.714em;\"><span id=\"MJXc-Node-15\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">2</span></span></span></span></span></span></span></span></span>) m.</p>', '0');
INSERT INTO `question_answer` VALUES ('180', '42', '<p>x = 0,5cos(40t) cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('181', '43', '<p>0,8 s.</p>', '1');
INSERT INTO `question_answer` VALUES ('182', '43', '<p>1,2 s.</p>', '0');
INSERT INTO `question_answer` VALUES ('183', '43', '<p>0,12 s.</p>', '0');
INSERT INTO `question_answer` VALUES ('184', '43', '<p>0,24 s.</p>', '0');
INSERT INTO `question_answer` VALUES ('185', '44', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-4-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mn&gt;5&lt;/mn&gt;&lt;mi&gt;cos&lt;/mi&gt;&lt;mo&gt;&amp;#x2061;&lt;/mo&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mi&gt;t&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;6&lt;/mn&gt;&lt;/mfrac&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;mi&gt;c&lt;/mi&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-16\" class=\"mjx-math\"><span id=\"MJXc-Node-17\" class=\"mjx-mrow\"><span id=\"MJXc-Node-18\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-19\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-20\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">5</span></span><span id=\"MJXc-Node-21\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">cos</span></span><span id=\"MJXc-Node-22\" class=\"mjx-mo\"></span><span id=\"MJXc-Node-23\" class=\"mjx-mrow\"><span id=\"MJXc-Node-24\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">(</span></span><span id=\"MJXc-Node-25\" class=\"mjx-texatom\"><span id=\"MJXc-Node-26\" class=\"mjx-mrow\"><span id=\"MJXc-Node-27\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-28\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span><span id=\"MJXc-Node-29\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.423em; padding-bottom: 0.303em;\">t</span></span><span id=\"MJXc-Node-30\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-31\" class=\"mjx-mfrac MJXc-space2\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-32\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.736em;\"><span id=\"MJXc-Node-33\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">6</span></span></span></span></span></span></span><span id=\"MJXc-Node-34\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">)</span></span></span><span id=\"MJXc-Node-35\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">c</span></span><span id=\"MJXc-Node-36\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span></span></span></span></span></p>', '1');
INSERT INTO `question_answer` VALUES ('186', '44', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-5-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mn&gt;20&lt;/mn&gt;&lt;mi&gt;cos&lt;/mi&gt;&lt;mo&gt;&amp;#x2061;&lt;/mo&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mi&gt;t&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;6&lt;/mn&gt;&lt;/mfrac&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;mi&gt;c&lt;/mi&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-37\" class=\"mjx-math\"><span id=\"MJXc-Node-38\" class=\"mjx-mrow\"><span id=\"MJXc-Node-39\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-40\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-41\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">20</span></span><span id=\"MJXc-Node-42\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">cos</span></span><span id=\"MJXc-Node-43\" class=\"mjx-mo\"></span><span id=\"MJXc-Node-44\" class=\"mjx-mrow\"><span id=\"MJXc-Node-45\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">(</span></span><span id=\"MJXc-Node-46\" class=\"mjx-texatom\"><span id=\"MJXc-Node-47\" class=\"mjx-mrow\"><span id=\"MJXc-Node-48\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-49\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span><span id=\"MJXc-Node-50\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.423em; padding-bottom: 0.303em;\">t</span></span><span id=\"MJXc-Node-51\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-52\" class=\"mjx-mfrac MJXc-space2\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-53\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.736em;\"><span id=\"MJXc-Node-54\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">6</span></span></span></span></span></span></span><span id=\"MJXc-Node-55\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">)</span></span></span><span id=\"MJXc-Node-56\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">c</span></span><span id=\"MJXc-Node-57\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('187', '44', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-6-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mn&gt;20&lt;/mn&gt;&lt;mi&gt;cos&lt;/mi&gt;&lt;mo&gt;&amp;#x2061;&lt;/mo&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mi&gt;t&lt;/mi&gt;&lt;mo&gt;+&lt;/mo&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;6&lt;/mn&gt;&lt;/mfrac&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;mi&gt;c&lt;/mi&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-58\" class=\"mjx-math\"><span id=\"MJXc-Node-59\" class=\"mjx-mrow\"><span id=\"MJXc-Node-60\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-61\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-62\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">20</span></span><span id=\"MJXc-Node-63\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">cos</span></span><span id=\"MJXc-Node-64\" class=\"mjx-mo\"></span><span id=\"MJXc-Node-65\" class=\"mjx-mrow\"><span id=\"MJXc-Node-66\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">(</span></span><span id=\"MJXc-Node-67\" class=\"mjx-texatom\"><span id=\"MJXc-Node-68\" class=\"mjx-mrow\"><span id=\"MJXc-Node-69\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-70\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span><span id=\"MJXc-Node-71\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.423em; padding-bottom: 0.303em;\">t</span></span><span id=\"MJXc-Node-72\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.303em; padding-bottom: 0.423em;\">+</span></span><span id=\"MJXc-Node-73\" class=\"mjx-mfrac MJXc-space2\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-74\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.736em;\"><span id=\"MJXc-Node-75\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">6</span></span></span></span></span></span></span><span id=\"MJXc-Node-76\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">)</span></span></span><span id=\"MJXc-Node-77\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">c</span></span><span id=\"MJXc-Node-78\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('188', '44', '<p><span class=\"mjx-chtml MJXc-display\" style=\"text-align: center;\"><span id=\"MathJax-Element-7-Frame\" class=\"mjx-chtml MathJax_CHTML\" style=\"font-size: 119%; position: relative;\" tabindex=\"0\" data-mathml=\"&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mn&gt;5&lt;/mn&gt;&lt;mi&gt;cos&lt;/mi&gt;&lt;mo&gt;&amp;#x2061;&lt;/mo&gt;&lt;mrow&gt;&lt;mo&gt;(&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mi&gt;t&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mfrac&gt;&lt;mi&gt;&amp;#x03C0;&lt;/mi&gt;&lt;mn&gt;6&lt;/mn&gt;&lt;/mfrac&gt;&lt;/mrow&gt;&lt;mo&gt;)&lt;/mo&gt;&lt;/mrow&gt;&lt;mi&gt;c&lt;/mi&gt;&lt;mi&gt;m&lt;/mi&gt;&lt;/math&gt;\"><span id=\"MJXc-Node-79\" class=\"mjx-math\"><span id=\"MJXc-Node-80\" class=\"mjx-mrow\"><span id=\"MJXc-Node-81\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">x</span></span><span id=\"MJXc-Node-82\" class=\"mjx-mo MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.063em; padding-bottom: 0.303em;\">=</span></span><span id=\"MJXc-Node-83\" class=\"mjx-mn MJXc-space3\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">5</span></span><span id=\"MJXc-Node-84\" class=\"mjx-mi MJXc-space1\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.183em; padding-bottom: 0.363em;\">cos</span></span><span id=\"MJXc-Node-85\" class=\"mjx-mo\"></span><span id=\"MJXc-Node-86\" class=\"mjx-mrow\"><span id=\"MJXc-Node-87\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">(</span></span><span id=\"MJXc-Node-88\" class=\"mjx-texatom\"><span id=\"MJXc-Node-89\" class=\"mjx-mrow\"><span id=\"MJXc-Node-90\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">4</span></span><span id=\"MJXc-Node-91\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span><span id=\"MJXc-Node-92\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.423em; padding-bottom: 0.303em;\">t</span></span><span id=\"MJXc-Node-93\" class=\"mjx-mo MJXc-space2\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"margin-top: 0.003em; padding-bottom: 0.303em;\">&minus;</span></span><span id=\"MJXc-Node-94\" class=\"mjx-mfrac MJXc-space2\"><span class=\"mjx-box MJXc-stacked\" style=\"width: 0.773em; padding: 0px 0.12em;\"><span class=\"mjx-numerator\" style=\"width: 0.773em; top: -1.133em;\"><span id=\"MJXc-Node-95\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.183em; padding-bottom: 0.303em; padding-right: 0.003em;\">&pi;</span></span></span><span class=\"mjx-denominator\" style=\"width: 0.773em; bottom: -0.736em;\"><span id=\"MJXc-Node-96\" class=\"mjx-mn\"><span class=\"mjx-char MJXc-TeX-main-R\" style=\"padding-top: 0.363em; padding-bottom: 0.363em;\">6</span></span></span></span></span></span></span><span id=\"MJXc-Node-97\" class=\"mjx-mo\"><span class=\"mjx-char MJXc-TeX-size2-R\" style=\"padding-top: 0.903em; padding-bottom: 0.903em;\">)</span></span></span><span id=\"MJXc-Node-98\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">c</span></span><span id=\"MJXc-Node-99\" class=\"mjx-mi\"><span class=\"mjx-char MJXc-TeX-math-I\" style=\"padding-top: 0.243em; padding-bottom: 0.303em;\">m</span></span></span></span></span></span></p>', '0');
INSERT INTO `question_answer` VALUES ('189', '45', '<p>0,4 s.</p>', '1');
INSERT INTO `question_answer` VALUES ('190', '45', '<p>0,2 s.</p>', '0');
INSERT INTO `question_answer` VALUES ('191', '45', '<p>0,05 s.</p>', '0');
INSERT INTO `question_answer` VALUES ('192', '45', '<p>0,1 s.</p>', '0');
INSERT INTO `question_answer` VALUES ('193', '46', '<p>-3 cm.</p>', '1');
INSERT INTO `question_answer` VALUES ('194', '46', '<p>-5,2 cm</p>', '0');
INSERT INTO `question_answer` VALUES ('195', '46', '<p>3 cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('196', '46', '<p>5,2 cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('197', '47', '<p>2 cm.</p>', '1');
INSERT INTO `question_answer` VALUES ('198', '47', '<p>8 cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('199', '47', '<p>4 cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('200', '47', '<p>16 cm.</p>', '0');
INSERT INTO `question_answer` VALUES ('201', '48', '<p>mantozơ v&agrave; glucozơ</p>', '1');
INSERT INTO `question_answer` VALUES ('202', '48', '<p>saccarozơ v&agrave; fructozơ</p>', '0');
INSERT INTO `question_answer` VALUES ('203', '48', '<p>saccarozơ v&agrave; mantozơ</p>', '0');
INSERT INTO `question_answer` VALUES ('204', '48', '<p>fructozơ v&agrave; glucozơ.</p>', '0');
INSERT INTO `question_answer` VALUES ('205', '49', '<p>T&aacute;c dụng với Cu(OH)<sub>2</sub> tạo dung dịch m&agrave;u xanh lam; t&aacute;c dụng (CH<sub>3</sub>CO)<sub>2</sub>O tạo este tetraaxetat.</p>', '1');
INSERT INTO `question_answer` VALUES ('206', '49', '<p>Khử ho&agrave;n ho&agrave;n tạo hexan.</p>', '0');
INSERT INTO `question_answer` VALUES ('207', '49', '<p>C&oacute; hai nhiệt độ n&oacute;ng chảy kh&aacute;c nhau</p>', '0');
INSERT INTO `question_answer` VALUES ('208', '49', '<p>T&aacute;c dụng với: AgNO<sub>3</sub>/NH<sub>3</sub> tạo kết tủa Ag; với Cu(OH)<sub>2</sub>/OH<sup>-</sup> tạo kết tủa đỏ gạch v&agrave; l&agrave;m nhạt m&agrave;u nước brom.</p>', '0');
INSERT INTO `question_answer` VALUES ('209', '50', '<p>3,60 gam</p>', '1');
INSERT INTO `question_answer` VALUES ('210', '50', '<p>3,60 gam</p>', '0');
INSERT INTO `question_answer` VALUES ('211', '50', '<p>7,20 gam</p>', '0');
INSERT INTO `question_answer` VALUES ('212', '50', '<p>1,44 gam</p>', '0');
INSERT INTO `question_answer` VALUES ('213', '51', '<p>0,02M</p>', '1');
INSERT INTO `question_answer` VALUES ('214', '51', '<p>0,20M</p>', '0');
INSERT INTO `question_answer` VALUES ('215', '51', '<p>0,01M</p>', '0');
INSERT INTO `question_answer` VALUES ('216', '51', '<p>0,10M</p>', '0');
INSERT INTO `question_answer` VALUES ('217', '52', '<p><span style=\"font-size: 12pt;\">96,43 gam</span></p>', '1');
INSERT INTO `question_answer` VALUES ('218', '52', '<p><span style=\"font-size: 12pt;\">192,86 gam</span></p>', '0');
INSERT INTO `question_answer` VALUES ('219', '52', '<p><span style=\"font-size: 12pt;\">135 gam</span></p>', '0');
INSERT INTO `question_answer` VALUES ('220', '52', '<p><span style=\"font-size: 12pt;\">67,5 gam</span></p>', '0');
INSERT INTO `question_answer` VALUES ('221', '53', '<p>Tinh bột, mantozơ v&agrave; glucozơ lần lượt l&agrave; poli-, đi- v&agrave; monosaccarit.</p>', '1');
INSERT INTO `question_answer` VALUES ('222', '53', '<p>Tinh bột, mantozơ v&agrave; glucozơ lần lượt l&agrave; poli-, đi- v&agrave; monosaccarit.</p>', '0');
INSERT INTO `question_answer` VALUES ('223', '53', '<p>Đisaccarit l&agrave; cacbohiđrat thủy ph&acirc;n sinh ra hai ph&acirc;n tử monosaccarit.</p>', '0');
INSERT INTO `question_answer` VALUES ('224', '53', '<p>Monosaccarit l&agrave; cacbohidrat kh&ocirc;ng thể thủy ph&acirc;n được.</p>', '0');
INSERT INTO `question_answer` VALUES ('225', '54', '<p>l&ecirc;n men tinh bột.</p>', '1');
INSERT INTO `question_answer` VALUES ('226', '54', '<p>l&ecirc;n men glucozơ.</p>', '0');
INSERT INTO `question_answer` VALUES ('227', '54', '<p>thủy ph&acirc;n mantozơ.</p>', '0');
INSERT INTO `question_answer` VALUES ('228', '54', '<p>thủy ph&acirc;n saccarozơ.</p>', '0');
INSERT INTO `question_answer` VALUES ('229', '55', '<p>axit axetic.</p>', '1');
INSERT INTO `question_answer` VALUES ('230', '55', '<p>đồng (II) hiđroxit</p>', '0');
INSERT INTO `question_answer` VALUES ('231', '55', '<p>đồng (II) oxit</p>', '0');
INSERT INTO `question_answer` VALUES ('232', '55', '<p>natri hiđroxit</p>', '0');
INSERT INTO `question_answer` VALUES ('233', '56', '<p>AgNO<sub>3</sub>/NH<sub>3</sub></p>', '1');
INSERT INTO `question_answer` VALUES ('234', '56', '<p>Cu(OH)<sub>2</sub>/NaOH</p>', '0');
INSERT INTO `question_answer` VALUES ('235', '56', '<p>Na kim loại</p>', '0');
INSERT INTO `question_answer` VALUES ('236', '56', '<p>Nước brom</p>', '0');
INSERT INTO `question_answer` VALUES ('237', '57', '<p>Tr&aacute;ng gương, tr&aacute;ng ph&iacute;ch</p>', '1');
INSERT INTO `question_answer` VALUES ('238', '57', '<p>L&agrave;m thực phẩm dinh dưỡng v&agrave; thuốc tăng lực</p>', '0');
INSERT INTO `question_answer` VALUES ('239', '57', '<p>Nguy&ecirc;n liệu sản xuất PVC</p>', '0');
INSERT INTO `question_answer` VALUES ('240', '57', '<p>Nguy&ecirc;n liệu sản xuất ancol etylic</p>', '0');
INSERT INTO `question_answer` VALUES ('241', '58', '<p>C&aacute;c hệ sinh th&aacute;i cạn v&agrave; hệ sinh th&aacute;i dưới nước.</p>', '1');
INSERT INTO `question_answer` VALUES ('242', '58', '<p>Hệ sinh th&aacute;i cạn v&agrave; hệ sinh th&aacute;i nước ngọt.</p>', '0');
INSERT INTO `question_answer` VALUES ('243', '58', '<p>Hệ sinh th&aacute;i cạn v&agrave; hệ sinh th&aacute;i nước mặn</p>', '0');
INSERT INTO `question_answer` VALUES ('244', '58', '<p>Hệ sinh th&aacute;i rừng nhiệt đới, sa mạc, savan đồng cỏ</p>', '0');
INSERT INTO `question_answer` VALUES ('245', '59', '<p>Nh&oacute;m hệ sinh th&aacute;i cạn v&agrave; hệ sinh th&aacute;i nước.</p>', '1');
INSERT INTO `question_answer` VALUES ('246', '59', '<p>Nh&oacute;m hệ sinh th&aacute;i nước v&agrave; hệ sinh th&aacute;i rừng nhiệt đới, savan đồng cỏ, sa mạc, hoang mạc.</p>', '0');
INSERT INTO `question_answer` VALUES ('247', '59', '<p>Nh&oacute;m hệ sinh th&aacute;i cạn v&agrave; hệ sinh th&aacute;i nước ngọt.</p>', '0');
INSERT INTO `question_answer` VALUES ('248', '59', '<p>Nh&oacute;m hệ sinh th&aacute;i nước mặn v&agrave; hệ sinh th&aacute;i nước ngọt, hệ sinh th&aacute;i rừng nhiệt đới, savan.</p>', '0');

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
  `topic_id` int(11) DEFAULT '0',
  `time_length` int(11) NOT NULL DEFAULT '30',
  `level` enum('easy','normal','hard') DEFAULT 'normal',
  `total_question` int(11) DEFAULT '10',
  `status` tinyint(1) DEFAULT '0' COMMENT '1: active',
  `privacy` tinyint(5) DEFAULT '0' COMMENT '0: public, 1: yeu cau dang nhap',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '0: chua xoa, 1: da xoa',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz
-- ----------------------------
INSERT INTO `quiz` VALUES ('1', 'Đề số 1: Đề thi thử THPT Quốc Gia năm 2017 môn Toán  - Trường THPT Lam Kinh', '<p>Đề thi thử THPT Quốc Gia năm 2017 m&ocirc;n To&aacute;n &nbsp;- Trường THPT Lam Kinh</p>', '1', '1', null, '90', 'normal', '14', '1', '0', '0', '2017-05-28 10:32:05', '2017-06-01 19:41:50');
INSERT INTO `quiz` VALUES ('2', 'Đề số 2: Đề thi thử THPT Quốc Gia năm 2017 môn Toán', 'Đề thi thử THPT Quốc Gia năm 2017 môn Toán -Sở Giáo Dục và Đào Tạo Thanh Hóa - Trường THPT Quảng Xương 1', '1', '1', null, '90', 'normal', '50', '0', '1', '0', '2017-05-28 10:32:05', '2017-05-28 10:32:05');
INSERT INTO `quiz` VALUES ('3', 'Đề số 3: Đề thi thử THPT Quốc Gia năm 2017 môn Toán', 'Đề thi thử THPT Quốc Gia năm 2017 môn Toán -Trường Đại Học Vinh - Trường THPT Chuyên', '1', '1', null, '90', 'normal', '50', '0', '1', '0', '2017-05-28 10:32:05', '2017-05-28 10:32:05');
INSERT INTO `quiz` VALUES ('4', 'Đề số 1: Đề thi thử THPT Quốc Gia năm 2017 môn Lịch sử', 'Đề thi thử THPT Quốc Gia năm 2017 môn Lịch sử - BỘ GIÁO DỤC VÀ ĐÀO TẠO', '1', '8', null, '50', 'normal', '40', '0', '1', '0', '2017-05-28 11:20:13', '2017-05-28 11:20:13');
INSERT INTO `quiz` VALUES ('5', 'Đề số 1: Đề thi thử THPT Quốc Gia năm 2017 môn Tiếng Anh', '<p>Đề số 1: Đề thi thử THPT Quốc Gia năm 2017 m&ocirc;n Tiếng Anh</p>', '1', '7', '0', '90', 'normal', '7', '1', '0', '0', '2017-06-02 00:28:07', '2017-06-02 00:28:07');
INSERT INTO `quiz` VALUES ('6', 'CHuyên đề - Sự đồng biến, nghịch biến của hàm số', '<p>CHuy&ecirc;n đề - Sự đồng biến, nghịch biến của h&agrave;m số</p>', '2', '1', '1', '15', 'easy', '10', '1', '0', '0', '2017-06-02 00:40:15', '2017-06-02 00:47:57');
INSERT INTO `quiz` VALUES ('7', 'Chuyên đề - Dao động điều hòa', '<p>Chuy&ecirc;n đề - Dao động điều h&ograve;a</p>', '2', '2', '14', '13', 'normal', '10', '1', '0', '0', '2017-06-02 00:55:28', '2017-06-02 00:55:28');
INSERT INTO `quiz` VALUES ('8', 'Chuyên đề - Hóa học hữa cơ - Glucozơ', '<p>Chuy&ecirc;n đề - H&oacute;a học hữa cơ - Glucozơ</p>', '2', '3', '27', '10', 'normal', '10', '1', '0', '0', '2017-06-02 01:05:47', '2017-06-02 01:05:47');
INSERT INTO `quiz` VALUES ('9', 'Hệ sinh thái  - Đề 1', '<p>Hệ sinh th&aacute;i&nbsp; - Đề 1</p>', '2', '4', '43', '15', 'normal', '2', '1', '0', '0', '2017-06-02 01:20:29', '2017-06-02 01:20:29');
INSERT INTO `quiz` VALUES ('10', 'Đề thi thử TN môn Toán - THPT Chuyên Hưng Yên', 'Đề thi thử TN môn Toán - THPT Chuyên Hưng Yên', '1', '1', null, '90', 'normal', '50', '0', '1', '0', '2017-06-06 09:41:13', '2017-06-06 09:41:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
INSERT INTO `quiz_attempt` VALUES ('22', '0', '192.168.1.83', '9', '{\"info\":{\"time_start\":\"2017-06-05 09:34:06\",\"time_submit\":\"2017-06-05 09:34:19\",\"total_true\":1},\"results\":{\"58\":{\"question_id\":\"58\",\"ans_id\":\"241\",\"check\":1},\"59\":{\"question_id\":\"59\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-06-05 09:34:19');
INSERT INTO `quiz_attempt` VALUES ('23', '3', '127.0.0.1', '6', '{\"info\":{\"time_start\":\"2017-06-05 17:42:31\",\"time_submit\":\"2017-06-05 17:42:47\",\"total_true\":1},\"results\":{\"28\":{\"question_id\":\"28\",\"ans_id\":\"121\",\"check\":1},\"29\":{\"question_id\":\"29\",\"ans_id\":\"125\",\"check\":0},\"30\":{\"question_id\":\"30\",\"ans_id\":\"130\",\"check\":0},\"31\":{\"question_id\":\"31\",\"ans_id\":\"\",\"check\":0},\"32\":{\"question_id\":\"32\",\"ans_id\":\"\",\"check\":0},\"33\":{\"question_id\":\"33\",\"ans_id\":\"\",\"check\":0},\"34\":{\"question_id\":\"34\",\"ans_id\":\"\",\"check\":0},\"35\":{\"question_id\":\"35\",\"ans_id\":\"\",\"check\":0},\"36\":{\"question_id\":\"36\",\"ans_id\":\"\",\"check\":0},\"37\":{\"question_id\":\"37\",\"ans_id\":\"\",\"check\":0}}}', '14', '0', '2017-06-05 17:42:47');
INSERT INTO `quiz_attempt` VALUES ('24', '0', '192.168.1.83', '5', '{\"info\":{\"time_start\":\"2017-06-05 21:14:43\",\"time_submit\":\"2017-06-05 21:14:57\",\"total_true\":0},\"results\":{\"21\":{\"question_id\":\"21\",\"ans_id\":\"\",\"check\":0},\"22\":{\"question_id\":\"22\",\"ans_id\":\"\",\"check\":0},\"23\":{\"question_id\":\"23\",\"ans_id\":\"\",\"check\":0},\"24\":{\"question_id\":\"24\",\"ans_id\":\"\",\"check\":0},\"25\":{\"question_id\":\"25\",\"ans_id\":\"\",\"check\":0},\"26\":{\"question_id\":\"26\",\"ans_id\":\"\",\"check\":0},\"27\":{\"question_id\":\"27\",\"ans_id\":\"\",\"check\":0}}}', '0', '1', '2017-06-05 21:14:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('10', '3', '127.0.0.1', 'laptop', '2017-06-05 09:21:52');
INSERT INTO `session` VALUES ('11', '3', '127.0.0.1', 'laptop', '2017-06-05 09:21:57');
INSERT INTO `session` VALUES ('12', '3', '127.0.0.1', 'laptop', '2017-06-05 09:22:32');
INSERT INTO `session` VALUES ('13', '3', '127.0.0.1', 'laptop', '2017-06-05 09:22:47');
INSERT INTO `session` VALUES ('14', '3', '127.0.0.1', 'laptop', '2017-06-05 09:23:01');
INSERT INTO `session` VALUES ('15', '3', '127.0.0.1', 'laptop', '2017-06-05 09:23:21');
INSERT INTO `session` VALUES ('16', '3', '127.0.0.1', 'laptop', '2017-06-05 09:23:28');
INSERT INTO `session` VALUES ('17', null, '192.168.1.83', 'mobile', '2017-06-05 09:27:27');
INSERT INTO `session` VALUES ('18', null, '192.168.1.83', 'mobile', '2017-06-05 09:27:33');
INSERT INTO `session` VALUES ('19', null, '192.168.1.83', 'mobile', '2017-06-05 09:28:06');
INSERT INTO `session` VALUES ('20', null, '127.0.0.1', 'laptop', '2017-06-05 09:30:35');
INSERT INTO `session` VALUES ('21', null, '192.168.1.83', 'mobile', '2017-06-05 09:30:54');
INSERT INTO `session` VALUES ('22', null, '192.168.1.83', 'mobile', '2017-06-05 09:32:29');
INSERT INTO `session` VALUES ('23', null, '127.0.0.1', 'laptop', '2017-06-05 09:54:13');
INSERT INTO `session` VALUES ('24', null, '127.0.0.1', 'laptop', '2017-06-05 09:54:39');
INSERT INTO `session` VALUES ('25', null, '127.0.0.1', 'laptop', '2017-06-05 09:56:07');
INSERT INTO `session` VALUES ('26', null, '127.0.0.1', 'laptop', '2017-06-05 09:56:09');
INSERT INTO `session` VALUES ('27', null, '127.0.0.1', 'laptop', '2017-06-05 09:56:41');
INSERT INTO `session` VALUES ('28', '3', '127.0.0.1', 'laptop', '2017-06-05 11:59:23');
INSERT INTO `session` VALUES ('29', '3', '127.0.0.1', 'laptop', '2017-06-05 15:12:40');
INSERT INTO `session` VALUES ('30', null, '127.0.0.1', 'laptop', '2017-06-05 15:15:35');
INSERT INTO `session` VALUES ('31', null, '127.0.0.1', 'laptop', '2017-06-05 15:15:58');
INSERT INTO `session` VALUES ('32', null, '127.0.0.1', 'laptop', '2017-06-05 15:17:30');
INSERT INTO `session` VALUES ('33', null, '127.0.0.1', 'laptop', '2017-06-05 15:25:51');
INSERT INTO `session` VALUES ('34', null, '127.0.0.1', 'laptop', '2017-06-05 15:25:54');
INSERT INTO `session` VALUES ('35', null, '127.0.0.1', 'laptop', '2017-06-05 15:26:02');
INSERT INTO `session` VALUES ('36', '3', '127.0.0.1', 'laptop', '2017-06-05 17:42:02');
INSERT INTO `session` VALUES ('37', null, '127.0.0.1', 'laptop', '2017-06-05 21:04:50');
INSERT INTO `session` VALUES ('38', null, '192.168.1.94', 'laptop', '2017-06-05 21:07:21');
INSERT INTO `session` VALUES ('39', null, '192.168.1.83', 'mobile', '2017-06-05 21:12:50');
INSERT INTO `session` VALUES ('40', null, '127.0.0.1', 'laptop', '2017-06-05 21:20:22');
INSERT INTO `session` VALUES ('41', null, '127.0.0.1', 'laptop', '2017-06-05 22:04:31');
INSERT INTO `session` VALUES ('42', null, '127.0.0.1', 'laptop', '2017-06-05 22:07:18');
INSERT INTO `session` VALUES ('43', null, '127.0.0.1', 'laptop', '2017-06-05 22:08:07');
INSERT INTO `session` VALUES ('44', null, '127.0.0.1', 'laptop', '2017-06-05 22:23:29');
INSERT INTO `session` VALUES ('45', null, '127.0.0.1', 'laptop', '2017-06-05 22:23:31');
INSERT INTO `session` VALUES ('46', null, '127.0.0.1', 'laptop', '2017-06-05 22:23:34');
INSERT INTO `session` VALUES ('47', null, '127.0.0.1', 'laptop', '2017-06-05 22:25:42');
INSERT INTO `session` VALUES ('48', null, '127.0.0.1', 'laptop', '2017-06-05 22:34:00');
INSERT INTO `session` VALUES ('49', null, '127.0.0.1', 'laptop', '2017-06-05 22:35:50');
INSERT INTO `session` VALUES ('50', '27', '127.0.0.1', 'laptop', '2017-06-06 01:10:46');
INSERT INTO `session` VALUES ('51', null, '127.0.0.1', 'laptop', '2017-06-06 08:52:29');
INSERT INTO `session` VALUES ('52', null, '127.0.0.1', 'laptop', '2017-06-06 08:52:39');
INSERT INTO `session` VALUES ('53', null, '127.0.0.1', 'laptop', '2017-06-06 08:53:12');
INSERT INTO `session` VALUES ('54', null, '127.0.0.1', 'laptop', '2017-06-06 08:53:21');
INSERT INTO `session` VALUES ('55', null, '127.0.0.1', 'laptop', '2017-06-06 08:55:30');
INSERT INTO `session` VALUES ('56', null, '127.0.0.1', 'laptop', '2017-06-06 08:55:59');
INSERT INTO `session` VALUES ('57', null, '127.0.0.1', 'laptop', '2017-06-06 08:56:17');
INSERT INTO `session` VALUES ('58', '3', '127.0.0.1', 'laptop', '2017-06-06 08:56:27');
INSERT INTO `session` VALUES ('59', '3', '127.0.0.1', 'laptop', '2017-06-06 13:25:33');
INSERT INTO `session` VALUES ('60', null, '127.0.0.1', 'laptop', '2017-06-06 13:55:29');
INSERT INTO `session` VALUES ('61', null, '127.0.0.1', 'laptop', '2017-06-06 13:55:32');
INSERT INTO `session` VALUES ('62', null, '127.0.0.1', 'laptop', '2017-06-06 13:55:39');
INSERT INTO `session` VALUES ('63', null, '127.0.0.1', 'laptop', '2017-06-06 14:35:29');
INSERT INTO `session` VALUES ('64', null, '127.0.0.1', 'laptop', '2017-06-06 14:35:35');
INSERT INTO `session` VALUES ('65', null, '127.0.0.1', 'laptop', '2017-06-06 15:19:02');
INSERT INTO `session` VALUES ('66', null, '127.0.0.1', 'laptop', '2017-06-06 15:19:17');
INSERT INTO `session` VALUES ('67', null, '192.168.1.83', 'mobile', '2017-06-06 15:34:42');
INSERT INTO `session` VALUES ('68', null, '192.168.1.83', 'mobile', '2017-06-06 15:34:47');
INSERT INTO `session` VALUES ('69', null, '192.168.1.83', 'mobile', '2017-06-06 15:34:48');
INSERT INTO `session` VALUES ('70', null, '192.168.1.83', 'mobile', '2017-06-06 15:34:49');
INSERT INTO `session` VALUES ('71', null, '192.168.1.83', 'mobile', '2017-06-06 15:34:53');
INSERT INTO `session` VALUES ('72', null, '192.168.1.83', 'mobile', '2017-06-06 15:35:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('1', 'Slide 1', 'Slide 1', 'Slide 1', null, '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');
INSERT INTO `slideshow` VALUES ('2', 'Slide 2', 'Slide 2', 'Slide 2', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');
INSERT INTO `slideshow` VALUES ('3', 'Slide 3', 'Slide 3', 'Slide 3', '', '1', '2017-05-06 18:31:22', '2017-05-06 18:31:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of static_page
-- ----------------------------
INSERT INTO `static_page` VALUES ('1', 'CHARGING_BANK_HELP', '<p class=\"tb1 fs16 \">Bạn sẽ được tặng <strong>th&ecirc;m 10% gi&aacute; trị</strong> nạp tiền th&agrave;nh c&ocirc;ng.</p>\r\n<p class=\"tb1 fs16 fw600\">Hướng dẫn nạp tiền bằng chuyển khoản ng&acirc;n h&agrave;ng</p>\r\n<p class=\"tb1\">- Bạn c&oacute; thể đến bất kỳ ng&acirc;n h&agrave;ng n&agrave;o ở Việt Nam hoặc bạn c&oacute; thể sử dụng dịch vụ Internet Banking để chuyển tiền cho ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin:</p>\r\n<ul class=\"cknh\">\r\n<li>\r\n<div class=\"t-item\">+ T&agrave;i khoản ng&acirc;n h&agrave;ng &Aacute; Ch&acirc;u (ACB):</div>\r\n<div class=\"c-item\">Số t&agrave;i khoản: 223620179<br /> Chủ t&agrave;i khoản: Nguyễn Phương H&agrave; Linh<br /> Ng&acirc;n h&agrave;ng ACB, chi nh&aacute;nh Phan Đăng Lưu, TPHCM</div>\r\n</li>\r\n<li>\r\n<div class=\"t-item\">+ T&agrave;i khoản ng&acirc;n h&agrave;ng Agribank:</div>\r\n<div class=\"c-item\">Số t&agrave;i khoản: 6380205472535<br /> Chủ t&agrave;i khoản: Nguyễn Phương H&agrave; Linh<br /> Ng&acirc;n h&agrave;ng Agribank, chi nh&aacute;nh quận B&igrave;nh Thạnh, TPHCM</div>\r\n</li>\r\n<li>\r\n<div class=\"t-item cpink	\">* Ghi ch&uacute; khi chuyển khoản:</div>\r\n<div class=\"c-item\">\r\n<p class=\"padbot5\">Tại mục \"Ghi ch&uacute;\" khi chuyển khoản, bạn ghi r&otilde;:</p>\r\n<p class=\" padbot5 fw600\">Họ T&ecirc;n - Email t&agrave;i khoản - Số điện thoại</p>\r\n<p class=\"padbot5\">V&iacute; dụ: Nguyen Hoang Hai - hoanghai1989@gmail.com - 0902786182</p>\r\n</div>\r\n</li>\r\n</ul>\r\n<p class=\"tb1\">- Ngay sau khi ch&uacute;ng t&ocirc;i nhận được th&ocirc;ng tin chuyển khoản, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh k&iacute;ch hoạt kh&oacute;a học cho bạn.</p>', '2017-05-07 09:48:30', '2017-05-30 23:02:56');
INSERT INTO `static_page` VALUES ('2', 'CHARGING_PHONE_CARD_HELP', '<div class=\"ndttkh\">\r\n					<p class=\"tbmsg\">Nạp tiền bằng thẻ cào điện thoại</p>\r\n					<!-- <p class=\"tb1\"><span class=\"cpink\">Tài khoản Alaxu của bạn hiện có <b> vnd</b></span></p> -->\r\n					<p class=\"tb1 martop10 fw600\">Hướng dẫn nạp tiền qua thẻ cào điện thoại (chỉ áp dụng thẻ Mobifone, Vinaphone và Viettel):</p>\r\n					<p class=\"tb1 marbot10\">Bạn có thể mua thẻ cào di động được bán ở hầu hết các đại lý, tiệm tạp hóa, cửa hàng điện thoại di động trên toàn quốc và làm theo các bước hướng dẫn bên dưới để nạp tiền vào tài khoản</p>\r\n					<p class=\"tb1\"><b>Bước 1:</b> Cào lớp tráng bạc để biết mã thẻ.</p>\r\n					<p class=\"tb1\"><b>Bước 2:</b> Chọn loại thẻ, nhập mã thẻ cào và số seri thẻ cào. (Các số viết liền không khoảng trắng hoặc dấu -)</p>\r\n					<p class=\"tb1\"><b>Bước 3:</b> Nhập mã Captcha và bấm nút \"Thanh Toán\" để hoàn tất quá trình nạp tiền.</p>\r\n									<p class=\"tb1 marbot10\">Để nạp thẻ tiếp theo, vui lòng làm theo trình tự như trên.</p>\r\n<p class=\"tb1 marbot10\"><b>(Lưu ý: Nạp sai 5 lần liên tiếp tài khoản của Bạn sẽ bị khóa và được mở lại sau 24 Giờ)</b></p>	', '2017-05-07 09:55:07', '2017-05-07 09:55:09');
INSERT INTO `static_page` VALUES ('3', 'CREATE_COURSE_TUTORIAL', '<p>Hướng dẫn tạo kh&oacute;a học mới:</p>\r\n<p>- Click n&uacute;t \"<strong>Tạo kh&oacute;a học mới</strong>\".</p>\r\n<p>- Nhập c&aacute;c th&ocirc;ng tin cần thiết về kh&oacute;a học của bạn.</p>\r\n<p>- Sau khi kh&oacute;a học được tạo th&agrave;nh c&ocirc;ng, click button \"View\" để xem chi tiết kh&oacute;a học. Ở đ&acirc;y bạn h&atilde;y tọa ra danh s&aacute;ch c&aacute;c b&agrave;i giảng trong kh&oacute;a học của m&igrave;nh để ch&uacute;ng t&ocirc;i xem x&eacute;t x&eacute;t duyệt kh&oacute;a học của bạn. (chỉ cần ti&ecirc;u đề v&agrave; mổ tả của b&agrave;i giảng, kh&ocirc;ng cần upload link_video hoặc upload video b&agrave;i giảng của bạn l&ecirc;n ngay.)</p>\r\n<p>Lưu &yacute;: C&aacute;c bạn cần đưa ra ng&agrave;y dự kiến xuất bản b&agrave;i giảng một c&aacute;ch r&otilde; r&agrave;ng nhất.</p>\r\n<p>- Sau khi cập nhật danh s&aacute;ch tất cả c&aacute;c b&agrave;i giảng trong kh&oacute;a học, c&aacute;c bạn c&oacute; thể cập nhật th&ocirc;ng tin t&agrave;i liệu tham khảo hoặc danh s&aacute;ch c&aacute;c b&agrave;i kiểm tra cho từng b&agrave;i giảng.</p>\r\n<p>- Sau đ&oacute; quay trở lại danh s&aacute;ch kh&oacute;a học của bạn, h&atilde;y chọn n&uacute;t \"Đề nghị x&eacute;t duyệt\" để gửi th&ocirc;ng tin về cho ch&uacute;ng t&ocirc;i xem x&eacute;t kh&oacute;a học của bạn.</p>\r\n<p>Lưu &yacute;: h&atilde;y cập nhật kh&oacute;a học kỹ c&agrave;ng trước khi gửi y&ecirc;u cầu xem x&eacute;t. Nếu qu&aacute; 3 lần y&ecirc;u cầu của bạn kh&ocirc;ng được x&eacute;t duyệ, kh&oacute;a học sẽ bị tự động x&oacute;a.</p>', '2017-05-30 23:12:58', '2017-05-30 23:12:58');

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
INSERT INTO `student` VALUES ('3', 'Nguyễn Lan Phương', '', 'THPT Chuyên Lê Hồng Phong, Nam Định', null, '087739943', '430000', '2017-05-06 22:43:31', '2017-06-05 10:24:53', '0');
INSERT INTO `student` VALUES ('4', 'Trần Chí Linh', null, 'THPT Chuyên Quốc Học Huế', null, '012388499', '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32', '0');
INSERT INTO `student` VALUES ('20', 'asd', null, null, null, null, '100', '2017-06-05 22:24:06', '2017-06-05 22:27:00', '0');
INSERT INTO `student` VALUES ('21', 'qwer', null, null, null, null, '0', '2017-06-05 22:27:50', '2017-06-05 22:27:50', '0');
INSERT INTO `student` VALUES ('22', '123', null, null, null, null, '0', '2017-06-05 22:28:51', '2017-06-05 22:28:51', '0');
INSERT INTO `student` VALUES ('23', 'asds', null, null, null, null, '0', '2017-06-05 22:29:31', '2017-06-05 22:29:31', '0');
INSERT INTO `student` VALUES ('24', 'asds', null, null, null, null, '0', '2017-06-05 22:31:24', '2017-06-05 22:31:24', '0');
INSERT INTO `student` VALUES ('25', '323', null, null, null, null, '0', '2017-06-05 22:31:50', '2017-06-05 22:31:50', '0');
INSERT INTO `student` VALUES ('26', 'asdasdasdasd', null, null, null, null, '0', '2017-06-05 22:33:22', '2017-06-05 22:33:22', '0');
INSERT INTO `student` VALUES ('27', 'qweqweqwe', null, null, null, null, '450100', '2017-06-05 22:34:12', '2017-06-06 01:11:07', '0');

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
INSERT INTO `student_course` VALUES ('2', '3', '0', '2017-06-05');
INSERT INTO `student_course` VALUES ('2', '27', '0', '2017-06-06');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
INSERT INTO `subject` VALUES ('9', 'Giáo dục công dân', 'Giáo dục công dân', 'giao-duc-cong-dan', 'gavel', '#008080', '1', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

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
INSERT INTO `topic` VALUES ('13', 'Chuyên đề 1: Cơ học vật rắn.', 'Cơ học vật rắn.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('14', 'Chuyên đề 2: Dao động cơ học.', 'Dao động cơ học', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('15', 'Chuyên đề 3: Sóng cơ học.', 'Dòng điện xoay chiều.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('16', 'Chuyên đề 4: Dòng điện xoay chiều.', 'Mạch dao động - Sóng điện từ.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('17', 'Chuyên đề 5: Mạch dao động - Sóng điện từ.', '', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('18', 'Chuyên đề 6: Sóng ánh sáng.', 'Sóng ánh sáng.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('19', 'Chuyên đề 7: Lượng tử ánh sáng.', 'Lượng tử ánh sáng.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('20', 'Chuyên đề 8: Thuyết tương đối hẹp.', 'Thuyết tương đối hẹp.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('21', 'Chuyên đề 9: Phóng xạ- hạt nhân.', 'Phóng xạ- hạt nhân.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('22', 'Chuyên đề 10: Vi mô - vĩ mô.', 'Vi mô - vĩ mô.', '2', '1', '0', '2017-06-02 00:54:45', '2017-06-02 00:54:45');
INSERT INTO `topic` VALUES ('23', 'Điện Phân ', 'Điện Phân ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('24', 'Hidrocacbon No', 'Hidrocacbon No', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('25', 'Hidrocacbon Không No ', 'Hidrocacbon Không No ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('26', 'Hidrocacbon Thơm ', 'Hidrocacbon Thơm ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('27', 'Dẫn Xuất Halogen – Phenol – Ancol', 'Dẫn Xuất Halogen – Phenol – Ancol', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('28', 'Andehit – Xeton – Axit Cacboxylic ', 'Andehit – Xeton – Axit Cacboxylic ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('29', 'Este – Lipit – Chất Giặt Rửa ', 'Este – Lipit – Chất Giặt Rửa ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('30', 'Cacbohidrat ', 'Cacbohidrat ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('31', 'Amin – Amino Axit – Protein', 'Amin – Amino Axit – Protein', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('32', 'Đại Cương Về Kim Loại', 'Đại Cương Về Kim Loại', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('33', 'Polime Và Vật Liệu Polime', 'Polime Và Vật Liệu Polime', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('34', 'Kim Loại Kiềm – Kim Loại Kiềm Thổ – Nhôm ', 'Kim Loại Kiềm – Kim Loại Kiềm Thổ – Nhôm ', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('35', 'Sắt – Một Số Hợp Chất Của Sắt – Một Số Kim Loại Khác', 'Sắt – Một Số Hợp Chất Của Sắt – Một Số Kim Loại Khác', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('36', 'Kỹ Thuật Xác Định Số Đồng Phân – Công Thức Tính Nhanh Số Đồng Phân', 'Kỹ Thuật Xác Định Số Đồng Phân – Công Thức Tính Nhanh Số Đồng Phân', '3', '1', '0', '2017-06-02 01:03:34', '2017-06-02 01:03:34');
INSERT INTO `topic` VALUES ('37', 'Cơ chế di truyền và biến dị', 'Chuyên đề 1: Cơ chế di truyền và biến dị', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');
INSERT INTO `topic` VALUES ('38', ' Quy luật di truyền', 'Chuyên đề 2: Quy luật di truyền', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');
INSERT INTO `topic` VALUES ('39', 'Chuyên đề 3: Di truyền quần thể', 'Chuyên đề 3: Di truyền quần thể', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');
INSERT INTO `topic` VALUES ('40', 'Ứng dụng di truyền học', 'Chuyên đề 4: Ứng dụng di truyền học', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');
INSERT INTO `topic` VALUES ('41', 'Di truyền người', 'Chuyên đề 5: Di truyền người', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');
INSERT INTO `topic` VALUES ('42', 'Tiến hóa', 'Chuyên đề 6: Tiến hóa', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');
INSERT INTO `topic` VALUES ('43', ' Sinh thái học', 'Chuyên đề 07: Sinh thái học', '4', '1', '0', '2017-06-02 01:18:32', '2017-06-02 01:18:32');

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
  `channel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('1', '2', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"25373744645\",\"code_number\":\"25487849091567\",\"_csrf\":\"ck1EdlFySG8fHycuJwYYLSMZNUIFCgVeSgsuLmcgKyscCRcwFS0vKw==\"}', '{\"code\":200,\"money\":\"500\"}', null, '2017-05-07 13:39:50', null);
INSERT INTO `transaction` VALUES ('2', '2', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"23326112863\",\"code_number\":\"23314014719674\",\"_csrf\":\"dERSX3VicUwZFjEHAxYhDiUQI2shGjx9TAI4B0MwEggaAAEZMT0WCA==\"}', '{\"code\":200,\"money\":\"500\"}', null, '2017-05-07 13:41:30', null);
INSERT INTO `transaction` VALUES ('3', '2', 'CHARGE_MONEY', '20000', '{\"telco_type\":\"viettel\",\"serial_number\":\"5584022625\",\"code_number\":\"5502423551478\",\"_csrf\":\"YWhGNHpNSnQMOiVsDDkaNjA8NwAuNQdFWS4sbEwfKTAPLBVyPhItMA==\"}', '{\"code\":200,\"money\":\"20\"}', '1320000', '2017-05-07 13:52:09', null);
INSERT INTO `transaction` VALUES ('4', '3', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"978246796182\",\"code_number\":\"978444319649697\",\"_csrf\":\"eEp5TjJjanQbKx4EaAIDIi0VDRwHDSwrPgMVfkowLj4iHQ0qRjI\\/Rg==\"}', '{\"code\":200,\"money\":\"500\"}', '500000', '2017-05-15 14:09:21', null);
INSERT INTO `transaction` VALUES ('5', '3', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"997925784034\",\"code_number\":\"997391899329360\",\"_csrf\":\"VkZlaU9FR3k1JwIjFSQuLwMZETt6KwEmEA8JWTcWAzMMERENOxQSSw==\"}', '{\"code\":200,\"money\":\"500\"}', '1000000', '2017-05-15 14:09:39', null);
INSERT INTO `transaction` VALUES ('6', '3', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"985160229557\",\"code_number\":\"985196822342054\",\"_csrf\":\"ZHlvWWpxd0MHGAgTMBAeFTEmGwtfHzEcIjADaRIiMwk.Lhs9HiAicQ==\"}', '{\"code\":200,\"money\":\"500\"}', '1500000', '2017-05-15 14:09:55', null);
INSERT INTO `transaction` VALUES ('7', '3', 'CHARGE_MONEY', '20000', '{\"telco_type\":\"viettel\",\"serial_number\":\"14419302885\",\"code_number\":\"14919667813202\",\"_csrf\":\"eWR4MnZpV3EyVlVcRTwAHSYVL1UGLmVBFjFPVgAtHCYpIQ4fOioVNA==\"}', '{\"code\":200,\"money\":\"20\"}', '420000', '2017-05-26 02:54:33', null);
INSERT INTO `transaction` VALUES ('8', '3', 'CHARGE_MONEY', '10000', '{\"telco_type\":\"viettel\",\"serial_number\":\"16201640710\",\"code_number\":\"16127962862962\",\"_csrf\":\"WWYwY21aRzYSVB0NXg8QWgYXZwQdHXUGNjMHBxseDGEJI0ZOIRkFcw==\"}', '{\"code\":200,\"money\":\"10\"}', '430000', '2017-05-26 02:54:52', null);
INSERT INTO `transaction` VALUES ('9', '27', 'CHARGE_MONEY', '500000', '{\"telco_type\":\"viettel\",\"serial_number\":\"9449451282\",\"code_number\":\"9223733623072\",\"_csrf\":\"NVdjZFJQLmJFNABWKjJhMEVkMwVlHkIvfzooMxxnYQlGNRUqJj52AA==\"}', '{\"code\":200,\"money\":\"500\"}', '500100', '2017-06-05 22:54:57', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
INSERT INTO `transaction_error` VALUES ('14', '27', 'CHARGE_MONEY', '404', '{\"code\":404}', '{\"telco_type\":\"viettel\",\"serial_number\":\"7109838022\",\"code_number\":\"7340836499530\",\"_csrf\":\"NVdjZFJQLmJFNABWKjJhMEVkMwVlHkIvfzooMxxnYQlGNRUqJj52AA==\"}', '2017-06-05 22:54:00');

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
  `auth_key` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'schoen.candido', 'ceefa3c572382b7cb78346b4f7330153', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-10 19:07:48', '2017-05-07 12:15:00', '2017-05-08 12:15:00', null, null);
INSERT INTO `user` VALUES ('2', 'nannie06', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31', null, null, null, null);
INSERT INTO `user` VALUES ('3', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-26 02:55:59', '2017-05-26 02:55:00', '2017-05-27 02:55:00', null, null);
INSERT INTO `user` VALUES ('4', 'schumm.shayna', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-28 15:35:31', null, null, null, null);
INSERT INTO `user` VALUES ('7', 'trevion27', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:09', '2017-05-10 15:02:09', null, null, null, null);
INSERT INTO `user` VALUES ('8', 'piper.ohara', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null, null, null);
INSERT INTO `user` VALUES ('9', 'dlesch', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null, null, null);
INSERT INTO `user` VALUES ('10', 'laron01', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null, null, null);
INSERT INTO `user` VALUES ('11', 'hudson.judd', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null, null, null);
INSERT INTO `user` VALUES ('12', 'treva.emard', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:10', '2017-05-10 15:02:10', null, null, null, null);
INSERT INTO `user` VALUES ('13', 'bgoldner', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null, null, null);
INSERT INTO `user` VALUES ('14', 'swift.travis', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null, null, null);
INSERT INTO `user` VALUES ('15', 'anya.hudson', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null, null, null);
INSERT INTO `user` VALUES ('16', 'hyman10', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 15:02:11', '2017-05-10 15:02:11', null, null, null, null);
INSERT INTO `user` VALUES ('17', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '0', '2017-05-10 16:55:02', '2017-05-10 16:55:02', null, null, null, null);
INSERT INTO `user` VALUES ('18', 'admin_18', 'b062daadae0bdc1f036e4bc3145e00ab', '2', '1', '1', '2017-05-10 20:29:42', '2017-05-28 15:22:30', null, null, null, null);
INSERT INTO `user` VALUES ('19', 'bactv', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '1', '2017-05-20 22:48:15', '2017-05-28 15:22:24', null, null, null, null);
INSERT INTO `user` VALUES ('20', 'asd', 'a3dcb4d229de6fde0db5686dee47145d', '1', '1', '0', '2017-06-05 22:24:06', '2017-06-05 22:24:06', null, null, null, null);
INSERT INTO `user` VALUES ('21', '1234', '81dc9bdb52d04dc20036dbd8313ed055', '1', '1', '0', '2017-06-05 22:27:50', '2017-06-05 22:27:50', null, null, null, null);
INSERT INTO `user` VALUES ('22', '213', '202cb962ac59075b964b07152d234b70', '1', '1', '0', '2017-06-05 22:28:51', '2017-06-05 22:28:51', null, null, null, null);
INSERT INTO `user` VALUES ('23', 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', '1', '1', '0', '2017-06-05 22:29:31', '2017-06-05 22:29:31', null, null, null, null);
INSERT INTO `user` VALUES ('24', 'asdasd1', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '1', '0', '2017-06-05 22:31:24', '2017-06-05 22:31:24', null, null, null, null);
INSERT INTO `user` VALUES ('25', '123233', '934b535800b1cba8f96a5d72f72f1611', '1', '1', '0', '2017-06-05 22:31:50', '2017-06-05 22:31:50', null, null, null, null);
INSERT INTO `user` VALUES ('26', 'asdasdasdasd', 'f67c2bcbfcfa30fccb36f72dca22a817', '1', '1', '0', '2017-06-05 22:33:22', '2017-06-05 22:33:22', null, null, null, null);
INSERT INTO `user` VALUES ('27', 'qweqweqwe', 'b26986ceee60f744534aaab928cc12df', '1', '1', '0', '2017-06-05 22:34:12', '2017-06-05 22:34:12', null, null, null, null);
