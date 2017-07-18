/*
MySQL Backup
Source Server Version: 5.6.5
Source Database: 38
Date: 2016/5/9 18:00:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` bigint(255) NOT NULL DEFAULT '0',
  `contact_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time_of_contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `money` decimal(65,0) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `s_value` varchar(255) DEFAULT NULL,
  `s_key` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `sort` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `enter_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `age` int(255) DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone_num` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `customer` VALUES ('1','su','电话咨询','付款成功','1','2015-07-16','2015-08-08','76000','北京市朝阳区朝阳公园路6号蓝色港湾17号楼L-SA-284号','010-59056986','测试','测试文件'), ('2','shan','电话咨询','客户拜访','2','2015-03-03','2016-01-01','80000','长春大学四公寓','15754326763','测试2','测试文件2'), ('3','Huangsuhong','推广活动','合同签订','3','2015-06-09','2016-03-02','9000','长春大学三公寓','0110119120121','测试3','测试文件3'), ('4','xiaoshanshan','推广活动','付款成功','4','2015-06-09','2016-03-02','9000','长春大学三公寓','0110119120121','测试4','测试文件4'), ('5','黄素红','熟人推荐','初步意向','5','2016-05-05','2016-05-05','900000','北京市朝阳区朝阳公园路6号蓝色港湾17号楼abcd号','15754324765','测试5','测试文件5'), ('6','梁园','其它','完成签订','7','2016-04-05','2016-05-06','900','长春大学三公寓','15542667243','测试6','测试文件6'), ('7','aaa','推广活动','取得联系','1','2016-05-13','2016-05-19','123','公司地址','联系方式','',''), ('8','小明','熟人推荐','本案失败','1','2016-05-12','2016-05-08','123456','清华大学','007-01834343','',''), ('9','小明','熟人推荐','本案失败','1','2016-05-12','2016-05-08','123456','清华大学','007-01834343','',''), ('10','小白','推广活动','客户拜访','1','2016-05-05','2016-05-12','1234565','北京大学','839829395','这是测试备注是否成功\n																			',''), ('11','测试是否成功','其他','本案失败','1','2016-05-09','2016-05-12','123123','测试是否成功','测试是否成功','测试是否成功\n																			',''), ('12','测试','其他','本案失败','1','2016-05-19','2016-05-16','123456','公司地址','联系方式','备注\n																			',''), ('13','最后一次测试','其他','本案失败','1','2016-05-06','2016-05-08','87654321','公司地址测试','联系方式测试','备注测试\n																			',''), ('14','qqqq','推广活动','取得联系','1','2016-05-04','2016-05-19','222','222','222','2222\n																			',''), ('15','test02','推广活动','本案失败','1','2016-05-04','2016-05-19','90000','公司地址test','联系方式test','test\n																			',''), ('16','sdsa','推广活动','取得联系','1','2016-05-13','2016-05-13','111','22','222','\n																			',''), ('17','sadsd','推广活动','取得联系','1','2016-05-14','2016-05-22','1111','2222','3333','44444\n																			',''), ('18','das','推广活动','客户拜访','1','2016-05-12','2016-05-21','111','2323','434','544\n																			',''), ('19','dsd','推广活动','客户拜访','1','2016-05-14','2016-05-22','11232','43','434','4343\n																			',''), ('20','dsd','推广活动','客户拜访','1','2016-05-14','2016-05-22','11232','43','434','4343\n																			',''), ('21','a','推广活动','客户拜访','1','2016-04-26','2016-05-28','1234','公司地址','联系方式','备注\n																			','');
INSERT INTO `status` VALUES ('1','推广活动','SOURCE_1','source','10'), ('2','媒体广告','SOURCE_2','source','20'), ('3','电话咨询','SOURCE_3','source','30'), ('4','熟人推荐','SOURCE_4','source','40'), ('5','其他','SOURCE_5','source','50'), ('7','取得联系','STATUS_1','status','60'), ('8','客户拜访','STATUS_2','status','70'), ('9','商务谈判','STATUS_3','status','80'), ('10','合同签订','STATUS_4','status','90'), ('11','付款完成','STATUS_5','status','100'), ('12','本案结束','STATUS_5','status','110'), ('13','本案失败','STATUS_6','status','120');
INSERT INTO `sys_user` VALUES ('1','小明1','男','销售部','2015/2/20','18','本科'), ('2','小白2','男','销售部','2015/2/20','18','本科'), ('31','小花','男','销售部','2015/2/20','18','本科'), ('32','小李','女','设计部','2015/2/15','19','本科'), ('33','小花','男','销售部','2015/2/20','18','本科'), ('34','小李','女','设计部','2015/2/15','19','本科');
INSERT INTO `user` VALUES ('1','123','456','123123'), ('17','university','university','13596056548'), ('18','a','a','a'), ('21','xiaohua','asdf','13594056548'), ('22','test01','testo1','12596056548'), ('23','aaaa','aaa','13596046548');
