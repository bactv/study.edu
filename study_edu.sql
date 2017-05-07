/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : study_edu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-07 18:02:07
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for question_answer
-- ----------------------------
DROP TABLE IF EXISTS `question_answer`;
CREATE TABLE `question_answer` (
  `question_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `is_true` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1: true, 0:false',
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_answer
-- ----------------------------

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
  `status` tinyint(1) DEFAULT '1' COMMENT '1: active',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz
-- ----------------------------

-- ----------------------------
-- Table structure for quiz_attempt
-- ----------------------------
DROP TABLE IF EXISTS `quiz_attempt`;
CREATE TABLE `quiz_attempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `data` varchar(500) NOT NULL,
  `time_remain` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '1: da hoan thanh, 0: chua hoan thanh',
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_attempt
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_report
-- ----------------------------

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
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_type
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
  `phone` varchar(30) DEFAULT NULL,
  `balance` decimal(10,0) DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'Mrs. Bridget Abbott MD', '10/05/2017', 'Omnis quos atque excepturi et deleniti odio.', '0983048031', '680000', '2017-05-06 22:43:31', '2017-05-07 01:31:01');
INSERT INTO `student` VALUES ('2', 'Ms. Lonie Reichel PhD', '24/05/2017', 'Sint eius debitis neque quod ut autem ipsa labore.', 'Ms. Lonie Reichel PhD', '1320000', '2017-05-06 22:43:31', '2017-05-07 15:36:51');
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
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `subject_id` int(11) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'schoen.candido', 'ceefa3c572382b7cb78346b4f7330153', '1', '0', '0', '2017-05-06 22:43:31', '2017-05-07 12:15:52', '2017-05-07 12:15:00', '2017-05-08 12:15:00');
INSERT INTO `user` VALUES ('2', 'nannie06', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31', null, null);
INSERT INTO `user` VALUES ('3', 'simone.koch', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:31', '2017-05-06 22:43:31', null, null);
INSERT INTO `user` VALUES ('4', 'schumm.shayna', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32', null, null);
INSERT INTO `user` VALUES ('5', 'chelsey.schmitt', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '0', '2017-05-06 22:43:32', '2017-05-06 22:43:32', null, null);
INSERT INTO `user` VALUES ('6', 'schoen.candidos', 'd241ec8d05916285c4c5e0cc7571f35e', '1', '1', '0', null, null, '2017-05-07 12:50:25', '2017-05-07 12:51:00');
