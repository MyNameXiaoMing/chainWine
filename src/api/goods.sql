/*
Navicat MySQL Data Transfer

Source Server         : famouse_shoe
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : famouse_shoe

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-20 17:28:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(22) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` varchar(10) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `view` int(12) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', ' LINING李宁 休闲鞋 男 藏黑蓝+新基础黑 ', '￥179.00', '[\"../img/pic/lining01.jpg\"]', '5234', '[\"39\",\"39.5\",\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:06:18', '李宁新款男子半掌气垫潮流休闲鞋Bubble Up男运动鞋GLAL007  ', '休闲鞋');
INSERT INTO `goods` VALUES ('2', ' LINING李宁 跑步鞋 男 新基础黑+基础白', '￥143.00', '[\"../img/pic/lining02.jpg\"]', '645636', '[\"39\",\"39.5\",\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:16:29', '李宁新款男鞋Basic Runner透气轻质跑步鞋运动鞋ARBL031', '跑步鞋');
INSERT INTO `goods` VALUES ('3', ' LINING李宁 跑步鞋 男 荧光果红+荧光亮绿', '￥278.00', '[\"../img/pic/lining03.jpg\"]', '565121', '[\"44\"]', '2017-11-18 16:16:34', '李宁男子轻质跑鞋超轻十三代一体织轻量跑步运动鞋ARBL015 ', '跑步鞋');
INSERT INTO `goods` VALUES ('4', ' LINING李宁 跑步鞋 男 暗蓝色+荧光亮绿', '￥214.00', '[\"../img/pic/lining04.jpg\"]', '8254', '[\"39\",\"39.5\",\"40\",\"41\",\"41.5\",\"42\",\"43\",\"44\",\"45\"]', '2017-11-18 16:21:01', '李宁跑步鞋男鞋跑步系列李宁云减震晨跑运动鞋ARHL075', '跑步鞋');
INSERT INTO `goods` VALUES ('5', 'adidas阿迪达斯 T恤  白+黑', '￥298.00', '[\"../img/pic/adi01.jpg\"]', '24332', '[\"L\",\"XL\",\"2XL\"]', '2017-11-18 16:21:52', 'adidas阿迪达斯男装短袖T恤新款德国球迷版比赛运动服AA0141', '运动服');
INSERT INTO `goods` VALUES ('6', 'adidas阿迪达斯 T恤  深麻灰', '￥179.00', '[\"../img/pic/adi02.jpg\"]', '6546', '[\"2XL\",\"L\",\"M\",\"S\",\"XL\"]', '2017-11-18 16:21:54', 'adidas阿迪达斯男装短袖T恤新款跑步运动服AH9931', '运动服');
INSERT INTO `goods` VALUES ('7', ' VANS范斯 休闲鞋 中性 蓝色', '￥249.00', '[\"../img/pic/vans01.jpg\"]', '234325', null, '2017-11-18 16:21:55', '范斯VANS男鞋女鞋休闲鞋运动Authentic帆布VN0004MLJPG', '帆布鞋');
INSERT INTO `goods` VALUES ('8', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥298.00', '[\"../img/pic/nb01.jpg\"]', '5325325', '[\"42.5\",\"44\"]', '2017-11-18 16:21:56', 'NewBalance-NB 款男鞋女鞋休闲鞋入门运动鞋运动休闲ML373GB RM', '休闲鞋');
INSERT INTO `goods` VALUES ('9', ' adidas阿迪达斯 T恤  浅猩红+柠檬黄', '￥99.00', '[\"../img/pic/adi03.jpg\"]', '474575', '[\"XL\"]', '2017-11-18 16:21:57', 'adidas阿迪达斯男装短袖T恤新款西班牙球迷版运动服AA0849', '运动服');
INSERT INTO `goods` VALUES ('10', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥159.00', '[\"../img/pic/puma01.jpg\"]', '245435', null, '2017-11-18 16:21:58', '彪马PUMA男鞋足球鞋运动鞋足球evoPOWER AG胶质短钉人造草地10353801', '足球鞋');
INSERT INTO `goods` VALUES ('11', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥99.00', '[\"../img/pic/anta01.jpg\"]', '55643', '[\"44.5\"]', '2017-11-18 16:21:59', 'ANTA-安踏 男鞋综合训练鞋款减震低帮运动休闲鞋11617701-2 QC', '休闲鞋');
INSERT INTO `goods` VALUES ('12', ' LINING李宁 休闲鞋 男 藏黑蓝+新基础黑 ', '￥189.00', '[\"../img/pic/lining01.jpg\"]', '435435', '[\"39\",\"39.5\",\"40\",\"41\",\"41.5\",\"44\",\"45\"]', '2017-11-18 16:22:00', '李宁新款男子半掌气垫潮流休闲鞋Bubble Up男运动鞋GLAL008  ', '休闲鞋');
INSERT INTO `goods` VALUES ('13', 'LINING李宁 跑步鞋 男 新基础黑+基础白', '￥143.00', '[\"../img/pic/lining02.jpg\"]', '143214', '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:22:01', '李宁新款男鞋Basic Runner透气轻质跑步鞋运动鞋ARBL032', '跑步鞋');
INSERT INTO `goods` VALUES ('14', 'LINING李宁 跑步鞋 男 荧光果红+荧光亮黄', '￥278.00', '[\"../img/pic/lining03.jpg\"]', '112345', '[\"40\",\"41\",\"42\",\"43.5\",\"44\"]', '2017-11-18 16:22:01', '李宁男子轻质跑鞋超轻十三代一体织轻量跑步运动鞋ARBL013', '跑步鞋');
INSERT INTO `goods` VALUES ('15', 'LINING李宁 跑步鞋 男 暗蓝色+荧光亮蓝', '￥214.00', '[\"../img/pic/lining04.jpg\"]', '5555', '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:22:02', '李宁男子轻质跑鞋超轻十三代一体织轻量跑步运动鞋ARBL014', '跑步鞋');
INSERT INTO `goods` VALUES ('16', 'VANS范斯 休闲鞋 中性 蓝色', '￥99.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"39\",\"39.5\",\"40\",\"41\",\"41.5\",\"44\",\"45\"]', '2017-11-18 16:22:03', '李宁男子轻质跑鞋超轻十三代一体织轻量跑步运动鞋ARBL014', '跑步鞋');
INSERT INTO `goods` VALUES ('17', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥298.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:22:04', null, '');
INSERT INTO `goods` VALUES ('18', 'VANS范斯 休闲鞋 中性 蓝色', '￥298.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"44\"]', '2017-11-18 16:22:05', null, '');
INSERT INTO `goods` VALUES ('19', 'adidas阿迪达斯 T恤  深麻灰', '￥298.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:22:06', null, '');
INSERT INTO `goods` VALUES ('20', 'LINING李宁 跑步鞋 男 暗蓝色+荧光亮蓝', '￥179.00', '[\"../img/pic/adi02.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:22:08', null, '');
INSERT INTO `goods` VALUES ('21', 'adidas阿迪达斯 T恤  深麻灰', '￥298.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:00', null, '');
INSERT INTO `goods` VALUES ('22', 'VANS范斯 休闲鞋 中性 蓝色', '￥159.00', '[\"../img/pic/adi01.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:01', null, '');
INSERT INTO `goods` VALUES ('23', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥159.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:02', null, '');
INSERT INTO `goods` VALUES ('24', ' LINING李宁 跑步鞋 男 新基础黑+基础白', '￥159.00', '[\"../img/pic/adi01.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:02', null, '');
INSERT INTO `goods` VALUES ('25', 'LINING李宁 跑步鞋 男 荧光果红+荧光亮黄', '￥159.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:03', null, '');
INSERT INTO `goods` VALUES ('26', ' LINING李宁 休闲鞋 男 藏黑蓝+新基础黑 ', '￥159.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:04', null, '');
INSERT INTO `goods` VALUES ('27', ' LINING李宁 跑步鞋 男 暗蓝色+荧光亮绿', '￥159.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:04', null, '');
INSERT INTO `goods` VALUES ('28', ' LINING李宁 休闲鞋 男 藏黑蓝+新基础黑 ', '￥159.00', '[\"../img/pic/adi02.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:05', null, '');
INSERT INTO `goods` VALUES ('29', 'LINING李宁 跑步鞋 男 荧光果红+荧光亮黄', '￥159.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:05', null, '');
INSERT INTO `goods` VALUES ('30', 'LINING李宁 跑步鞋 男 新基础黑+基础白', '￥159.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:06', null, '');
INSERT INTO `goods` VALUES ('31', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥189.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:07', null, '');
INSERT INTO `goods` VALUES ('32', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥189.00', '[\"../img/pic/adi02.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:08', null, '');
INSERT INTO `goods` VALUES ('33', 'adidas阿迪达斯 T恤  深麻灰', '￥189.00', '[\"../img/pic/adi01.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:09', null, '');
INSERT INTO `goods` VALUES ('34', 'adidas阿迪达斯 T恤  深麻灰', '￥189.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:09', null, '');
INSERT INTO `goods` VALUES ('35', 'VANS范斯 休闲鞋 中性 蓝色', '￥189.00', '[\"../img/pic/adi03.jpg\"]', null, '[\"40\",\"41\",\"42\",\"43\",\"44\"]', '2017-11-18 16:26:12', null, '');
INSERT INTO `goods` VALUES ('36', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:12', null, '');
INSERT INTO `goods` VALUES ('37', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:13', null, '');
INSERT INTO `goods` VALUES ('38', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:14', null, '');
INSERT INTO `goods` VALUES ('39', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:14', null, '');
INSERT INTO `goods` VALUES ('40', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:15', null, '');
INSERT INTO `goods` VALUES ('41', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:16', null, '');
INSERT INTO `goods` VALUES ('42', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:16', null, '');
INSERT INTO `goods` VALUES ('43', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:17', null, '');
INSERT INTO `goods` VALUES ('44', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:40', null, '');
INSERT INTO `goods` VALUES ('45', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining01.jpg\"]', null, null, '2017-11-18 16:26:42', null, '');
INSERT INTO `goods` VALUES ('46', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:44', null, '');
INSERT INTO `goods` VALUES ('47', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining01.jpg\"]', null, null, '2017-11-18 16:26:47', null, '');
INSERT INTO `goods` VALUES ('48', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:26:50', null, '');
INSERT INTO `goods` VALUES ('49', 'PUMA彪马 足球鞋 男 荧光黄+黑色+本蓝色 ', '￥298.00', '[\"../img/pic/lining03.jpg\"]', null, null, '2017-11-18 16:26:53', null, '');
INSERT INTO `goods` VALUES ('50', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥99.00', '[\"../img/pic/lining02.jpg\"]', null, null, '2017-11-18 16:27:09', null, '');
INSERT INTO `goods` VALUES ('51', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥99.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:27:11', null, '');
INSERT INTO `goods` VALUES ('52', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥99.00', '[\"../img/pic/lining02.jpg\"]', null, null, '2017-11-18 16:27:12', null, '');
INSERT INTO `goods` VALUES ('53', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥99.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:27:14', null, '');
INSERT INTO `goods` VALUES ('54', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥99.00', '[\"../img/pic/lining01.jpg\"]', null, null, '2017-11-18 16:27:16', null, '');
INSERT INTO `goods` VALUES ('55', ' New BalanceNB 休闲鞋 中性 黑色+灰色', '￥99.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:27:18', null, '');
INSERT INTO `goods` VALUES ('56', 'adidas阿迪达斯 T恤  深麻灰', '￥99.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:27:20', null, '');
INSERT INTO `goods` VALUES ('57', 'adidas阿迪达斯 T恤  深麻灰', '￥143.00', '[\"../img/pic/lining02.jpg\"]', null, null, '2017-11-18 16:27:22', null, '');
INSERT INTO `goods` VALUES ('58', 'adidas阿迪达斯 T恤  深麻灰', '￥143.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:27:24', null, '');
INSERT INTO `goods` VALUES ('59', 'adidas阿迪达斯 T恤  深麻灰', '￥143.00', '[\"../img/pic/lining02.jpg\"]', null, null, '2017-11-18 16:27:25', null, '');
INSERT INTO `goods` VALUES ('60', 'adidas阿迪达斯 T恤  深麻灰', '￥143.00', '[\"../img/pic/lining04.jpg\"]', null, null, '2017-11-18 16:27:30', null, '');
INSERT INTO `goods` VALUES ('61', 'adidas阿迪达斯 T恤  深麻灰', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:27:35', null, '');
INSERT INTO `goods` VALUES ('62', 'adidas阿迪达斯 T恤  深麻灰', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:27:38', null, '');
INSERT INTO `goods` VALUES ('63', 'adidas阿迪达斯 T恤  深麻灰', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:27:40', null, '');
INSERT INTO `goods` VALUES ('64', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:27:42', null, '');
INSERT INTO `goods` VALUES ('65', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:27:48', null, '');
INSERT INTO `goods` VALUES ('66', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:28:22', null, '');
INSERT INTO `goods` VALUES ('67', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/syc01.jpg\"]', null, null, '2017-11-18 16:28:24', null, '');
INSERT INTO `goods` VALUES ('68', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans02.jpg\"]', null, null, '2017-11-18 16:28:26', null, '');
INSERT INTO `goods` VALUES ('69', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans02.jpg\"]', null, null, '2017-11-18 16:28:28', null, '');
INSERT INTO `goods` VALUES ('70', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans02.jpg\"]', null, null, '2017-11-18 16:28:30', null, '');
INSERT INTO `goods` VALUES ('71', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans02.jpg\"]', null, null, '2017-11-18 16:28:32', null, '');
INSERT INTO `goods` VALUES ('72', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans02.jpg\"]', null, null, '2017-11-18 16:28:36', null, '');
INSERT INTO `goods` VALUES ('73', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans02.jpg\"]', null, null, '2017-11-18 16:28:44', null, '');
INSERT INTO `goods` VALUES ('74', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/vans01.jpg\"]', null, null, '2017-11-18 16:28:49', null, '');
INSERT INTO `goods` VALUES ('75', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥165.00', '[\"../img/pic/kw01.jpg\"]', null, null, '2017-11-18 16:28:51', null, '');
INSERT INTO `goods` VALUES ('76', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥432.00', '[\"../img/pic/kw01.jpg\"]', null, null, '2017-11-18 16:28:56', null, '');
INSERT INTO `goods` VALUES ('77', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥432.00', '[\"../img/pic/kw01.jpg\"]', null, null, '2017-11-18 16:28:59', null, '');
INSERT INTO `goods` VALUES ('78', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥432.00', '[\"../img/pic/kw01.jpg\"]', null, null, '2017-11-18 16:29:05', null, '');
INSERT INTO `goods` VALUES ('79', 'Anta安踏 训练鞋 男 宫蓝色+黑+安踏白', '￥432.00', '[\"../img/pic/disny01.jpg\"]', null, null, '2017-11-18 16:29:09', null, '');
INSERT INTO `goods` VALUES ('80', 'adidas阿迪达斯 T恤  深麻灰', '￥432.00', '[\"../img/pic/kw01.jpg\"]', null, null, '2017-11-18 16:29:13', null, '');
INSERT INTO `goods` VALUES ('81', 'adidas阿迪达斯 T恤  深麻灰', '￥432.00', '[\"../img/pic/disny01.jpg\"]', null, null, '2017-11-18 16:29:16', null, '');
INSERT INTO `goods` VALUES ('82', 'adidas阿迪达斯 T恤  深麻灰', '￥432.00', '[\"../img/pic/kw01.jpg\"]', null, null, '2017-11-18 16:29:19', null, '');
INSERT INTO `goods` VALUES ('83', 'adidas阿迪达斯 T恤  深麻灰', '￥432.00', '[\"../img/pic/disny01.jpg\"]', null, null, '2017-11-18 16:29:21', null, '');
INSERT INTO `goods` VALUES ('84', 'adidas阿迪达斯 T恤  深麻灰', '￥432.00', '[\"../img/pic/disny01.jpg\"]', null, null, '2017-11-18 16:29:24', null, '');
SET FOREIGN_KEY_CHECKS=1;
