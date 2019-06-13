/*
Navicat MySQL Data Transfer

Source Server         : project2
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : project2

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-06-11 17:49:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add category', '7', 'add_category');
INSERT INTO `auth_permission` VALUES ('26', 'Can change category', '7', 'change_category');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete category', '7', 'delete_category');
INSERT INTO `auth_permission` VALUES ('28', 'Can view category', '7', 'view_category');
INSERT INTO `auth_permission` VALUES ('29', 'Can add oa s_ user', '8', 'add_oas_user');
INSERT INTO `auth_permission` VALUES ('30', 'Can change oa s_ user', '8', 'change_oas_user');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete oa s_ user', '8', 'delete_oas_user');
INSERT INTO `auth_permission` VALUES ('32', 'Can view oa s_ user', '8', 'view_oas_user');
INSERT INTO `auth_permission` VALUES ('33', 'Can add question', '9', 'add_question');
INSERT INTO `auth_permission` VALUES ('34', 'Can change question', '9', 'change_question');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete question', '9', 'delete_question');
INSERT INTO `auth_permission` VALUES ('36', 'Can view question', '9', 'view_question');
INSERT INTO `auth_permission` VALUES ('37', 'Can add site', '10', 'add_site');
INSERT INTO `auth_permission` VALUES ('38', 'Can change site', '10', 'change_site');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete site', '10', 'delete_site');
INSERT INTO `auth_permission` VALUES ('40', 'Can view site', '10', 'view_site');
INSERT INTO `auth_permission` VALUES ('41', 'Can add comment', '11', 'add_comment');
INSERT INTO `auth_permission` VALUES ('42', 'Can change comment', '11', 'change_comment');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete comment', '11', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('44', 'Can view comment', '11', 'view_comment');
INSERT INTO `auth_permission` VALUES ('45', 'Can moderate comments', '11', 'can_moderate');
INSERT INTO `auth_permission` VALUES ('46', 'Can add comment flag', '12', 'add_commentflag');
INSERT INTO `auth_permission` VALUES ('47', 'Can change comment flag', '12', 'change_commentflag');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete comment flag', '12', 'delete_commentflag');
INSERT INTO `auth_permission` VALUES ('49', 'Can view comment flag', '12', 'view_commentflag');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$120000$Khrd2FPzWFm6$rcuCqUWFij8NI8ozUnX1NCla4J5geuf9RcERl29yFT0=', '2019-06-10 13:55:29.247978', '1', 'joe', '', '', 'joe@qq.com', '1', '1', '2019-05-29 18:29:40.802714');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$120000$aRgMsYW2jfA8$vqXU2AGIyVMS0qgwHGfXT+3rSTu5EMiT45XAy63fCvc=', '2019-06-10 13:53:19.999687', '0', 'student1', '', '', '', '0', '1', '2019-05-29 18:32:17.000000');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$120000$2zwK96KZr9tN$UAkVxlH94ekzv7PyluKAy0N0nmuVfOA/WoHmSdJ08ms=', '2019-06-10 13:55:15.271518', '0', 'teacher1', '', '', '', '0', '1', '2019-05-29 22:07:55.000000');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$120000$Khrd2FPzWFm6$rcuCqUWFij8NI8ozUnX1NCla4J5geuf9RcERl29yFT0=', '2019-06-02 20:00:49.657109', '0', 'student2', '', '', '', '0', '1', '2019-05-29 22:26:51.000000');
INSERT INTO `auth_user` VALUES ('5', 'pbkdf2_sha256$120000$Khrd2FPzWFm6$rcuCqUWFij8NI8ozUnX1NCla4J5geuf9RcERl29yFT0=', '2019-06-02 20:41:48.610071', '0', 'teacher2', '', '', '', '0', '1', '2019-05-30 19:32:51.000000');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$120000$W6lOpHlkx2OF$ELETil7km4Z3BcwkD//E2TiR66B8lRWM6X8zlmRKwl4=', '2019-06-02 19:16:33.536792', '0', 'test', '', '', '', '0', '1', '2019-06-02 19:15:43.000000');
INSERT INTO `auth_user` VALUES ('8', 'pbkdf2_sha256$120000$Hhj48gILtdXQ$yfLTId4/u0fMs8QPGUMGlxoGUEBiPTozCJiI1Jv9aTo=', '2019-06-10 13:58:00.972027', '0', 'shawn', '', '', '', '0', '1', '2019-06-10 13:57:15.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-05-29 18:32:17.580377', '2', '学生1', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-05-29 18:32:38.303753', '2', '学生1', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-05-29 22:07:55.567124', '3', '教师1', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-05-29 22:09:32.491048', '3', '教师1', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-05-29 22:26:51.478005', '4', '学生2', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-05-29 22:27:13.933964', '4', '学生2', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-05-30 19:32:52.507414', '5', '教师2', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-05-30 19:32:55.541874', '5', '教师2', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-05-30 20:47:03.301099', '5', 'teacher2', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-06-02 19:15:44.036032', '6', 'test', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-06-02 19:15:52.692626', '6', 'test', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-06-02 20:07:18.852531', '7', 'test_present', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-06-02 20:07:26.814677', '7', 'test_present', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-06-02 20:07:32.331937', '7', 'test_present', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-06-02 20:07:54.050796', '6', 'test_present', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-06-02 20:09:23.450128', '7', 'test', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-06-02 20:13:06.161535', '7', 'test_present', '3', '', '4', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-06-02 20:44:47.370371', '10', 'For present', '2', '[{\"changed\": {\"fields\": [\"finished\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-06-10 13:57:15.601649', '8', 'shawn', '1', '[{\"added\": {}}]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-06-10 13:57:21.202038', '8', 'shawn', '2', '[]', '4', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-06-10 13:57:42.842716', '8', 'shawn', '1', '[{\"added\": {}}]', '8', '1');

-- ----------------------------
-- Table structure for django_comments
-- ----------------------------
DROP TABLE IF EXISTS `django_comments`;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_comments_content_type_id_c4afe962_fk_django_co` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9` (`submit_date`),
  CONSTRAINT `django_comments_content_type_id_c4afe962_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_comments
-- ----------------------------
INSERT INTO `django_comments` VALUES ('1', '1', 'student1', '', '', '测试1回复第1次', '2019-05-29 22:18:56.462963', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('2', '2', 'teacher1', '', '', '你自己加油吧', '2019-05-29 22:30:09.932230', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('3', '3', 'teacher2', '', '', 'whatever', '2019-05-30 22:54:57.418236', '1', '1', '0', '9', '1', '5');
INSERT INTO `django_comments` VALUES ('4', '3', 'teacher2', '', '', 'test', '2019-05-30 23:19:50.212234', '1', '1', '0', '9', '1', '5');
INSERT INTO `django_comments` VALUES ('5', '3', 'teacher2', '', '', 'nothing', '2019-05-30 23:23:08.565836', '1', '1', '0', '9', '1', '5');
INSERT INTO `django_comments` VALUES ('6', '3', 'student2', '', '', 'i am a student&nbsp;', '2019-05-30 23:44:13.889610', '0', '1', '0', '9', '1', '4');
INSERT INTO `django_comments` VALUES ('8', '3', 'teacher1', '', '', 'aaaaaaaaaaaaaa?', '2019-05-31 21:39:24.760013', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('9', '1', 'teacher1', '', '', '测试回复', '2019-05-31 22:57:59.196429', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('10', '1', 'teacher1', '', '', 'reply test', '2019-05-31 22:58:51.841379', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('11', '3', 'teacher1', '', '', 'teacher reply', '2019-05-31 23:00:29.263526', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('12', '1', 'student1', '', '', 'test for next line', '2019-05-31 23:16:31.642159', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('13', '1', 'student1', '', '', 'test next', '2019-05-31 23:16:52.845533', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('14', '6', 'student1', '', '', 'i am your father!', '2019-05-31 23:33:46.878867', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('15', '3', 'student2', '', '', 'thanks for your test', '2019-05-31 23:35:27.751529', '0', '1', '0', '9', '1', '4');
INSERT INTO `django_comments` VALUES ('18', '1', 'student1', '', '', '<img src=\"https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b10000_10000&amp;sec=1559402862&amp;di=fa9f281a6af2447bf98f81214116771e&amp;src=http://i0.hdslb.com/bfs/article/2891ea11d75008b44b2df2a1b8a4c1ba47a93633.jpg\" alt=\"\" width=\"288\" height=\"512\" />', '2019-06-01 23:28:51.374693', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('20', '1', 'student1', '', '', '<a title=\"unicon\" href=\"https://www.bilibili.com/video/av48754159?from=search&amp;seid=18225791046771364764\">https://www.bilibili.com/video/av48754159?from=search&amp;seid=18225791046771364764</a>', '2019-06-01 23:34:37.559522', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('22', '1', 'student1', '', '', '<video controls=\"controls\" width=\"300\" height=\"150\">\r\n<source src=\"https://sv.baidu.com/videoui/page/videoland?pd=bjh&amp;context={%22nid%22:%2211786463839771110383%22,%22sourceFrom%22:%22bjh%22}&amp;fr=bjhauthor&amp;type=video\" /></video>', '2019-06-01 23:39:10.647105', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('23', '9', 'student1', '', '', 'where is my teacher2!', '2019-06-02 19:58:27.337367', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('24', '9', 'teacher2', '', '', 'i am here my son!', '2019-06-02 19:59:28.497788', '1', '1', '0', '9', '1', '5');
INSERT INTO `django_comments` VALUES ('25', '10', 'student1', '', '', 'teacher ! i need help!!!!please!', '2019-06-02 20:39:25.081006', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('26', '10', 'teacher2', '', '', '<span style=\"background-color: #333300;\"><strong>coming</strong></span>', '2019-06-02 20:40:30.298779', '1', '1', '0', '9', '1', '5');
INSERT INTO `django_comments` VALUES ('27', '2', 'teacher1', '', '', '', '2019-06-06 00:43:10.159729', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('28', '2', 'teacher1', '', '', '', '2019-06-06 00:43:10.294669', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('29', '2', 'teacher1', '', '', '', '2019-06-06 00:43:10.785509', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('30', '11', 'student1', '', '', '<h1 style=\"text-align: justify;\">追问</h1>', '2019-06-10 10:48:11.252578', '0', '1', '0', '9', '1', '2');
INSERT INTO `django_comments` VALUES ('31', '11', 'teacher1', '', '', '加油', '2019-06-10 10:48:57.806928', '1', '1', '0', '9', '1', '3');
INSERT INTO `django_comments` VALUES ('32', '12', 'teacher1', '', '', 'asdfd', '2019-06-10 13:53:08.948819', '1', '1', '0', '9', '1', '3');

-- ----------------------------
-- Table structure for django_comment_flags
-- ----------------------------
DROP TABLE IF EXISTS `django_comment_flags`;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_comment_id_flag_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_flag_8b141fcb` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_comment_flags
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('11', 'django_comments', 'comment');
INSERT INTO `django_content_type` VALUES ('12', 'django_comments', 'commentflag');
INSERT INTO `django_content_type` VALUES ('7', 'first', 'category');
INSERT INTO `django_content_type` VALUES ('8', 'first', 'oas_user');
INSERT INTO `django_content_type` VALUES ('9', 'first', 'question');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('10', 'sites', 'site');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-05-29 17:56:24.994442');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-05-29 17:56:26.620330');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-05-29 17:56:26.961577');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-05-29 17:56:26.975961');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-05-29 17:56:26.991337');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-05-29 17:56:27.263641');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-05-29 17:56:27.396073');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-05-29 17:56:27.525033');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-05-29 17:56:27.540905');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-05-29 17:56:27.647546');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-05-29 17:56:27.653994');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-05-29 17:56:27.677305');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-05-29 17:56:27.803289');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-05-29 17:56:27.928778');
INSERT INTO `django_migrations` VALUES ('15', 'sites', '0001_initial', '2019-05-29 17:56:27.989289');
INSERT INTO `django_migrations` VALUES ('16', 'django_comments', '0001_initial', '2019-05-29 17:56:28.786858');
INSERT INTO `django_migrations` VALUES ('17', 'django_comments', '0002_update_user_email_field_length', '2019-05-29 17:56:28.923257');
INSERT INTO `django_migrations` VALUES ('18', 'django_comments', '0003_add_submit_date_index', '2019-05-29 17:56:28.974842');
INSERT INTO `django_migrations` VALUES ('19', 'first', '0001_initial', '2019-05-29 17:56:29.912282');
INSERT INTO `django_migrations` VALUES ('20', 'sessions', '0001_initial', '2019-05-29 17:56:30.009994');
INSERT INTO `django_migrations` VALUES ('21', 'sites', '0002_alter_domain_unique', '2019-05-29 17:56:30.057609');
INSERT INTO `django_migrations` VALUES ('22', 'first', '0002_auto_20190530_2242', '2019-05-30 22:43:04.202959');
INSERT INTO `django_migrations` VALUES ('23', 'first', '0003_remove_question_update_date', '2019-06-01 22:50:22.647363');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('rjwz185es2898r9k4d0vb9otngr1mx39', 'YmY2MDljZDQzZjJlMzAzZDA5ZjhmNmUxNjU2OWQwY2QzODZmOGRiYjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjczYWYyMDk2ZjUxMGVkZDg5OWI1MjQ0NGNkYzYwNjgyZjdjZTEzZiJ9', '2019-06-24 13:58:00.982665');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES ('1', 'example.com', 'example.com');

-- ----------------------------
-- Table structure for first_category
-- ----------------------------
DROP TABLE IF EXISTS `first_category`;
CREATE TABLE `first_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_category
-- ----------------------------
INSERT INTO `first_category` VALUES ('1', 'Bussiness School');
INSERT INTO `first_category` VALUES ('2', 'Dental Medical');
INSERT INTO `first_category` VALUES ('3', 'Divinity School');
INSERT INTO `first_category` VALUES ('4', 'Arts and Sciences');
INSERT INTO `first_category` VALUES ('5', 'Design');
INSERT INTO `first_category` VALUES ('6', 'Architecture');
INSERT INTO `first_category` VALUES ('7', 'Chemistry');
INSERT INTO `first_category` VALUES ('8', 'Engineering and Applied Sciences');
INSERT INTO `first_category` VALUES ('9', 'Mathematical');
INSERT INTO `first_category` VALUES ('10', 'Metallurgy');

-- ----------------------------
-- Table structure for first_oas_user
-- ----------------------------
DROP TABLE IF EXISTS `first_oas_user`;
CREATE TABLE `first_oas_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instr` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `first_oas_user_category_id_996cd788_fk_first_category_id` (`category_id`),
  CONSTRAINT `first_oas_user_category_id_996cd788_fk_first_category_id` FOREIGN KEY (`category_id`) REFERENCES `first_category` (`id`),
  CONSTRAINT `first_oas_user_user_id_cc173c27_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_oas_user
-- ----------------------------
INSERT INTO `first_oas_user` VALUES ('1', '0', '1', '1');
INSERT INTO `first_oas_user` VALUES ('2', '0', '1', '2');
INSERT INTO `first_oas_user` VALUES ('3', '1', '1', '3');
INSERT INTO `first_oas_user` VALUES ('4', '0', '1', '4');
INSERT INTO `first_oas_user` VALUES ('5', '1', '5', '5');
INSERT INTO `first_oas_user` VALUES ('6', '0', '2', '6');
INSERT INTO `first_oas_user` VALUES ('8', '0', '1', '8');

-- ----------------------------
-- Table structure for first_question
-- ----------------------------
DROP TABLE IF EXISTS `first_question`;
CREATE TABLE `first_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `summary` varchar(128) DEFAULT NULL,
  `content` longtext NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `ask_to_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `first_question_ask_to_id_9044b87a_fk_auth_user_id` (`ask_to_id`),
  KEY `first_question_author_id_b3a7b842_fk_first_oas_user_id` (`author_id`),
  KEY `first_question_category_id_c7f3b93d_fk_first_category_id` (`category_id`),
  CONSTRAINT `first_question_ask_to_id_9044b87a_fk_auth_user_id` FOREIGN KEY (`ask_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `first_question_author_id_b3a7b842_fk_first_oas_user_id` FOREIGN KEY (`author_id`) REFERENCES `first_oas_user` (`id`),
  CONSTRAINT `first_question_category_id_c7f3b93d_fk_first_category_id` FOREIGN KEY (`category_id`) REFERENCES `first_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_question
-- ----------------------------
INSERT INTO `first_question` VALUES ('1', 'test_1', 'test one', 'Database Management System (DBMS) is a computer software system designed for managing database. It has the basic functions of storage, interception, security and backup. The database management system can be categorized according to the database model it supports, such as relational expression, XML, or by the type of computer it supports, such as server cluster, mobile phone, or by the query language it uses, such as SQL, XQuery, or by the focus of performance impulse, such as maximum scale, maximum running speed, or whatever. His classification. Regardless of the classification method used, some DBMS can cross-categorize, for example, while supporting multiple query languages.', '2019-05-29 22:16:50.264393', '1', '3', '2', '1');
INSERT INTO `first_question` VALUES ('2', 'test_2', 'just a test', 'same test for business college', '2019-05-29 22:25:38.388432', '0', '3', '4', '1');
INSERT INTO `first_question` VALUES ('4', 'test teacher 1', 'test', 'ask teacher1 something', '2019-05-30 21:23:24.585503', '0', '3', '4', '4');
INSERT INTO `first_question` VALUES ('5', 'Different colors demostrate', 'Nothing', '<div style=\"text-align: center;\"><span style=\"color: #ff6600; background-color: #ffcc00;\"><strong>maincontent<br /><span style=\"background-color: #000000;\"><em>i am a 倾斜的 font</em></span><br /></strong></span></div>', '2019-05-30 21:25:36.191732', '0', '3', '4', '1');
INSERT INTO `first_question` VALUES ('6', 'test', 'Nothing to say', 'tooooooolong!', '2019-05-30 22:41:27.830351', '0', '3', '2', '1');
INSERT INTO `first_question` VALUES ('7', 'Beautiful font', 'different appearence!', '<table>\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #993300;\">i am a table</span></td>\r\n<td><span style=\"color: #ffcc00;\">yep</span></td>\r\n<td>\r\n<h2>i am the third space</h2>\r\n</td>\r\n<td>stilling try</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"background-color: #ff00ff;\"><em><strong>nothing to show</strong></em></span></td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2019-05-30 22:48:13.161985', '1', '5', '2', '2');
INSERT INTO `first_question` VALUES ('8', 'Final test for second colleges', 'test tinymice', '<h2 style=\"text-align: left;\"><span style=\"color: #ff6600;\">test for conflicts</span></h2>', '2019-05-30 23:51:42.472200', '0', '3', '4', '2');
INSERT INTO `first_question` VALUES ('9', 'test for present', 'Nothing to say!', '<ul>\r\n<li><strong>asjdiajo</strong></li>\r\n<li><em><span style=\"color: #ff6600;\">dsadasdas</span><br /></em><em><strong>dasdas</strong></em><em><br /></em><span style=\"text-decoration: underline;\">dsadas</span></li>\r\n<li><span style=\"text-decoration: line-through;\"><span style=\"text-decoration: line-through;\"><code><sub>dasdas<br /><em></em></sub></code></span></span><hr /><span style=\"text-decoration: line-through;\"><code><sub><br /></sub></code></span></li>\r\n</ul>', '2019-06-02 19:57:24.086482', '1', '5', '2', '2');
INSERT INTO `first_question` VALUES ('10', 'For present', 'just a test', '&real;<hr />\r\n<h4><strong><em><span style=\"text-decoration: line-through;\">oh ho20:37:03</span></em><br /><span style=\"background-color: #ff9900;\"><em><span style=\"text-decoration: line-through;\">i am a beautiful front</span></em><br /><span style=\"color: #ff00ff; background-color: #ccffff;\"><em><span style=\"text-decoration: line-through;\">i am a beautiful front</span></em><br /></span></span></strong></h4>', '2019-06-02 20:38:45.507112', '0', '5', '2', '2');
INSERT INTO `first_question` VALUES ('11', '演示', '演示', '<strong>演示<img src=\"https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1560144889713&amp;di=df08f4b54f32210c952bbf6c4b71b646&amp;imgtype=0&amp;src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20190610%2F0dd2514e2bb64267855dc7bb075edbff.jpeg\" alt=\"\" width=\"602\" height=\"385\" /></strong>', '2019-06-10 10:47:02.963708', '1', '3', '2', '1');
INSERT INTO `first_question` VALUES ('12', '1234', '1234', '53w5', '2019-06-10 13:52:38.725358', '1', '3', '2', '1');
