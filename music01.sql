/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : 127.0.0.1:3306
Source Database       : music01

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-10-12 21:16:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_phone` varchar(11) NOT NULL,
  `admin_password` varchar(16) NOT NULL,
  PRIMARY KEY (`admin_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('17809266191', '456456');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '经典');
INSERT INTO `category` VALUES ('2', '影视');
INSERT INTO `category` VALUES ('3', '纯音');
INSERT INTO `category` VALUES ('5', '戏曲');
INSERT INTO `category` VALUES ('6', '完美');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_song_id` int(11) NOT NULL,
  `commen_user_id` varchar(11) NOT NULL,
  `comment_content` varchar(10000) NOT NULL,
  `comment_count` int(11) DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('28', '14', '15771662222', '666', '3');
INSERT INTO `comment` VALUES ('29', '14', '15771662222', '还可以 ', '2');
INSERT INTO `comment` VALUES ('30', '14', '15771662222', '不错', '3');
INSERT INTO `comment` VALUES ('31', '14', '15771662222', '大', '4');
INSERT INTO `comment` VALUES ('32', '14', '15771662222', 'good', '4');
INSERT INTO `comment` VALUES ('33', '14', '15771662222', 'dasdsa', '5');
INSERT INTO `comment` VALUES ('34', '14', '15771662222', 'sda', '7');
INSERT INTO `comment` VALUES ('35', '14', '15771662222', 'dsa', '7');
INSERT INTO `comment` VALUES ('36', '16', '15771662222', '666', '2');
INSERT INTO `comment` VALUES ('37', '14', '15771662222', '66666', '7');
INSERT INTO `comment` VALUES ('38', '14', '15771662222', '我的', '7');
INSERT INTO `comment` VALUES ('39', '14', '15771662222', '不错的点点滴滴', '8');
INSERT INTO `comment` VALUES ('40', '14', '15771662222', ' 这首歌不错', '14');
INSERT INTO `comment` VALUES ('41', '14', '15771662370', '噼噼啪啪', '5');
INSERT INTO `comment` VALUES ('42', '15', '15771662370', 'zhege', '1');
INSERT INTO `comment` VALUES ('43', '14', '17809267738', '很棒！', '0');
INSERT INTO `comment` VALUES ('44', '14', '17809267788', '这首歌不错', '0');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `user_phone` varchar(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `status` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('15771662370', '37', '0');
INSERT INTO `good` VALUES ('15771662370', '35', '0');
INSERT INTO `good` VALUES ('15771662370', '38', '0');
INSERT INTO `good` VALUES ('15771662370', '39', '0');
INSERT INTO `good` VALUES ('15771662370', '36', '0');
INSERT INTO `good` VALUES ('15771662370', '34', '0');
INSERT INTO `good` VALUES ('15771662370', '32', '0');
INSERT INTO `good` VALUES ('17809267738', '31', '0');
INSERT INTO `good` VALUES ('15771662370', '40', '0');
INSERT INTO `good` VALUES ('17809267788', '37', '0');
INSERT INTO `good` VALUES ('17809267788', '35', '0');
INSERT INTO `good` VALUES ('17809267788', '33', '0');
INSERT INTO `good` VALUES ('17809267788', '34', '0');
INSERT INTO `good` VALUES ('17809268081', '35', '0');
INSERT INTO `good` VALUES ('17809268081', '34', '0');
INSERT INTO `good` VALUES ('17809268081', '33', '0');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_category_id` int(11) NOT NULL,
  `song_name` varchar(45) NOT NULL,
  `song_attachment` varchar(255) NOT NULL,
  `song_singer` varchar(45) NOT NULL,
  `song_datetime` varchar(45) NOT NULL,
  PRIMARY KEY (`song_id`),
  UNIQUE KEY `song_id_UNIQUE` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('14', '1', '年轮', '汪苏泷 - 年轮.mp3', '汪苏泷', '2017/7/22 上午10:30:48');
INSERT INTO `song` VALUES ('16', '2', '还魂门', '胡彦斌 - 还魂门.mp3', '胡彦斌', '2017/7/22 上午10:32:06');
INSERT INTO `song` VALUES ('17', '2', '放心去飞', '欧豪 - 放心去飞.mp3', '欧豪', '2017/7/22 上午10:32:28');
INSERT INTO `song` VALUES ('18', '3', '小棋童', '双笙 - 小棋童.mp3', '双生', '2017/7/22 上午10:33:03');
INSERT INTO `song` VALUES ('19', '1', '南方姑娘', '赵雷 - 南方姑娘.mp3', '赵雷', '2017/7/22 上午10:33:35');
INSERT INTO `song` VALUES ('20', '1', '温暖', '许巍 - 温暖.mp3', '许巍', '2017/7/22 上午10:33:53');
INSERT INTO `song` VALUES ('23', '3', ' 青青河边草', '高胜美 - 青青河边草.mp3', '高胜美', '2017/7/25 上午9:04:00');
INSERT INTO `song` VALUES ('24', '2', '梨涡浅笑', '许冠杰 - 梨涡浅笑.mp3', '许冠杰', '2017/7/25 上午9:04:59');
INSERT INTO `song` VALUES ('25', '3', ' 爱一点', '王力宏 - 爱一点.mp3', '王力宏', '2017/7/25 上午10:11:50');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_phone` varchar(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_sex` varchar(10) NOT NULL,
  PRIMARY KEY (`user_phone`),
  UNIQUE KEY `user_phone_UNIQUE` (`user_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('13412345688', 'alll', '4QrcOUm6Wau+VuBX8g+IPg==', '女');
INSERT INTO `users` VALUES ('15771662370', 'l123', '4QrcOUm6Wau+VuBX8g+IPg==', '男');
INSERT INTO `users` VALUES ('17809267788', 'csss', 'Qpf0SxOVUjUkWySXOZ16kw==', '男');
INSERT INTO `users` VALUES ('17809268081', 'aaa1', '4QrcOUm6Wau+VuBX8g+IPg==', 'ç·');
