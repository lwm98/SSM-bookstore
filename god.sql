/*
Navicat MySQL Data Transfer

Source Server         : shixun
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : god

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-09-23 12:04:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `book_id` int(20) NOT NULL,
  `num` int(20) NOT NULL,
  `book_pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `book_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `star` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `tuijian` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `fanyi` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `price` float(20,0) DEFAULT NULL,
  `price_e` float(20,0) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `book_name` (`book_name`),
  KEY `price` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('10001', '1', 'http://img3m5.ddimg.cn/56/4/23761145-1_l_2.jpg', '人间失格（日本小说家太宰治的自传体小说）', 'width: 50%;', '767680+', '100%', '（日）太宰治　著，杨伟　译', '2014-05-01', '21', '5');
INSERT INTO `books` VALUES ('10002', '2', 'http://img3m0.ddimg.cn/44/29/25259300-1_l_8.jpg', '流浪的地球（刘慈欣著，无删节无改写，大人孩子均可阅读，此版本', 'width: 92%;', '204672+', '100%', '刘慈欣 著，小当当童书馆 出品', '2018-05-01', '13', null);
INSERT INTO `books` VALUES ('10003', '3', 'http://img3m8.ddimg.cn/82/19/25252408-1_l_19.jpg', '神奇校车·图画书版（全12册，新增《科学博览会》1册）', 'width: 93.2%;', '1045440+', '100%', '(美)乔安娜柯尔 著,(美)布鲁斯·迪根 图', '2018-05-10', '99', null);
INSERT INTO `books` VALUES ('10004', '4', 'http://img3m0.ddimg.cn/7/27/25137790-1_l_2.jpg', '活着（2017年新版）', 'width: 98.6%;', '2195793+', '100%', '余华', '2012-08-01', '28', '9');
INSERT INTO `books` VALUES ('10005', '5', 'http://img3m5.ddimg.cn/31/23/25308985-1_l_8.jpg', '丰子恺万般滋味，都是生活', 'width: 99.4%;', '145205+', '100%', '丰子恺', '2018-09-01', '21', '21');
INSERT INTO `books` VALUES ('10006', '6', 'http://img3m4.ddimg.cn/32/35/23579654-1_l_3.jpg', '三体：全三册 刘慈欣代表作，亚洲首部“雨果奖”获奖作品！', 'width: 93%;', '759440+', '100%', '刘慈欣', '2010-11-01', '46', '30');
INSERT INTO `books` VALUES ('10007', '1', 'http://img3m2.ddimg.cn/25/36/27878722-1_l_12.jpg', '小孩（大冰2019全新作品！当当预售期独家100%签名。5分钟销量6.3', 'width: 100%;', '568+', '99.3%', '大冰', '2019-07-01', '39', '29');
INSERT INTO `books` VALUES ('10008', '2', 'http://img3m5.ddimg.cn/92/15/27867305-1_l_6.jpg', '半小时漫画唐诗（漫画科普开创者二混子新作！全网粉丝700万！', 'width: 99.2%；', '1289+', '99.8%', '陈磊·半小时漫画团队', '2019-05-08', '49', '25');
INSERT INTO `books` VALUES ('10009', '3', 'http://img3m8.ddimg.cn/75/17/27869268-1_l_5.jpg', '愿为你赴一场前路不明的旅途', 'width: 100%；', '748+', '100%', '代琮', '2019-05-01', '45', '22');
INSERT INTO `books` VALUES ('10010', '4', 'http://img3m5.ddimg.cn/3/20/27847515-1_l_6.jpg', '摆渡人3无境之爱（千万畅销心灵治愈小说“摆渡人”系列完结篇，令', 'width: 90.2%;', '80948+', '99.9%', '克莱儿·麦克福尔', '2019-04-01', '31', '22');
INSERT INTO `books` VALUES ('10011', '5', 'http://img3m7.ddimg.cn/70/9/27850057-1_l_9.jpg', '好关系是麻烦出来的', 'width: 99.8%;', '6847+', '99.9%', '格子珊', '2019-04-04', '46', '23');
INSERT INTO `books` VALUES ('10012', '6', 'http://img3m6.ddimg.cn/29/20/27872786-1_l_6.jpg', '镇魂（套装全2册）', 'width: 95%;', '640+', '97.5%', 'Priest', '2019-05-01', '99', '71');
INSERT INTO `books` VALUES ('10013', '1', 'http://img3m5.ddimg.cn/3/20/27847515-1_l_6.jpg', '摆渡人3无境之爱（千万畅销心灵治愈小说“摆渡人”系列完结篇，令无数读者灵魂震颤的人性救赎之作！）', 'width: 97.4%;', '18295+', '100%', '克莱儿·麦克福尔', '2019-04-01', '46', '31');
INSERT INTO `books` VALUES ('10014', '2', 'http://img3m7.ddimg.cn/37/25/27864577-1_l_2.jpg', '精进2：解锁万物的心智进化法（采铜新作！）', 'width: 99.8%;', '8133+', '100%', '采铜', '2019-06-01', '52', '26');
INSERT INTO `books` VALUES ('10015', '3', 'http://img3m5.ddimg.cn/3/20/27847515-1_l_6.jpg', '人生海海（莫言盛赞！董卿、高晓松反复阅读，杨洋、李健倾力推荐！2019麦家新作）', 'width: 97.6%;', '57072+', '100%', '麦家', '2019-04-01', '55', '55');
INSERT INTO `books` VALUES ('10016', '4', 'http://img3m7.ddimg.cn/85/33/25156777-1_l_3.jpg', '成瘾：如何设计让人上瘾的产品、品牌和观念', 'width: 87.4%;', '34015+', '99.9%', '程志良', '2017-08-30', '49', '32');
INSERT INTO `books` VALUES ('10017', '5', 'http://img3m0.ddimg.cn/22/1/27850900-1_l_5.jpg', '白色橄榄树（全二册）（当当专享签名本&amp;阿瓒同款限量红绳随机发货！ 人气作家玖月晞继《少年的你，如此美丽》后突破之作！）', 'width: 100%;', '7679+', '100%', '玖月晞', '2019-04-01', '69', '34');
INSERT INTO `books` VALUES ('10018', '6', 'http://img3m7.ddimg.cn/18/12/27862677-1_l_30.jpg', '最初之前（数十万读者共情落泪，当代年轻人的缩影，令人意外的结局，笑中带泪）', 'width: 95.2%;', '3321+', '98.1%', '张皓宸', '2019-05-01', '49', '36');
INSERT INTO `books` VALUES ('10019', '1', 'http://img3m0.ddimg.cn/22/1/27850900-1_l_5.jpg', '白色橄榄树（全二册）（当当专享签名本&amp;阿瓒同款限量红绳随机发货！ 人气作家玖月晞继《少年的你，如此美丽》后突破之作！）', 'width: 100%;', '7679+', '100%', '玖月晞', '2019-04-01', '69', '34');
INSERT INTO `books` VALUES ('10020', '2', 'http://img3m7.ddimg.cn/18/12/27862677-1_l_30.jpg', '最初之前（数十万读者共情落泪，当代年轻人的缩影，令人意外的结局，笑中带泪）', 'width: 95.2%;', '3322+', '98.1%', '张皓宸', '2019-05-01', '49', '36');
INSERT INTO `books` VALUES ('10021', '3', 'http://img3m2.ddimg.cn/88/13/27864232-1_l_8.jpg', '请你记住我（“豆瓣最会讲故事的人”、“ONE一个”大赞作者刘墨闻首部长篇小说。所谓成长，是直面和接受，那个不完整的自己）', 'width: 100%;', '1001+', '100%', '刘墨闻', '2019-05-01', '42', '31');
INSERT INTO `books` VALUES ('10022', '4', 'http://img3m4.ddimg.cn/94/0/27869584-1_l_4.jpg', '顾漫：你是我的荣耀（附赠超人气插画师eno倾情创作手绘人物卡和海报）', 'width: 100%;', '8746+', '100%', '顾漫', '2019-06-01', '36', '24');
INSERT INTO `books` VALUES ('10023', '5', 'http://img3m6.ddimg.cn/29/20/27872786-1_l_6.jpg', '镇魂（套装全2册）随书赠送巍澜印章藏书票+黑胶概念长书签+“魂·开山”及“九幽听令”主题口红烫金贴纸，诚意制作！', 'width: 95%;', '640+', '97.5%', 'Priest', '2019-05-01', '99', '71');
INSERT INTO `books` VALUES ('10024', '6', 'http://img3m8.ddimg.cn/48/2/26924088-1_l_6.jpg', '原谅我有点笨拙的少女心：《读者》《意林》杂志特约作家新书力作。（随书附赠“心翼”折纸2张、恋爱“100件最重要的小事”约定卡随机3款！）', 'width: 100%;', '546+', '100%', '黎饭饭', '2019-04-01', '39', '17');
INSERT INTO `books` VALUES ('10025', '1', 'http://img3m8.ddimg.cn/48/24/27853698-1_l_2.jpg', '人工智能时代，你的工作还好吗？', 'width: 100%;', '502+', '100%', '渠成', '2019-05-01', '78', '39');
INSERT INTO `books` VALUES ('10026', '2', 'http://img3m2.ddimg.cn/89/21/27866312-1_l_2.jpg', 'iOS性能优化实战', 'width: 70%;', '107+', '100%', '珲少', '2019-05-01', '99', '59');
INSERT INTO `books` VALUES ('10027', '3', 'http://img3m7.ddimg.cn/93/34/27854337-1_l_2.jpg', 'Vue.js从入门到项目实战', 'width: 80%;', '111+', '99.1%', '刘汉伟', '2019-03-14', '65', '32');
INSERT INTO `books` VALUES ('10028', '4', 'http://img3m5.ddimg.cn/11/0/27861185-1_l_2.jpg', 'Spark Streaming实时流式大数据处理实战', 'width: 100%;', '102+', '100%', '肖力涛', '2019-05-05', '69', '47');
INSERT INTO `books` VALUES ('10029', '5', 'http://img3m4.ddimg.cn/68/14/27852134-1_l_2.jpg', 'Python程序员面试宝典', 'width: 10%;', '112+', '99.1%', '陈屹', '2019-05-01', '89', '61');
INSERT INTO `books` VALUES ('10030', '6', 'http://img3m0.ddimg.cn/67/4/24003310-1_l_7.jpg', 'Python编程 从入门到实践', 'width: 90.2%;', '80948+', '99.9%', '埃里克·马瑟斯', '2016-07-01', '89', '62');

-- ----------------------------
-- Table structure for buycar
-- ----------------------------
DROP TABLE IF EXISTS `buycar`;
CREATE TABLE `buycar` (
  `user_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `book_id` int(20) NOT NULL,
  PRIMARY KEY (`book_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buycar
-- ----------------------------
INSERT INTO `buycar` VALUES ('admin', '10005');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '123', '小明');
INSERT INTO `users` VALUES ('gaojie', '123', '狗杰');
INSERT INTO `users` VALUES ('xianyu', '123', '咸鱼');
