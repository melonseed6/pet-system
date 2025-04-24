/*
 Navicat Premium Data Transfer

 Source Server         : root@localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : pet_system

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 17/02/2025 16:35:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', 'http://localhost:1000/file/4a257f65c36236982d6d89bf55bdedf7.png', '1234561888', '123456@h.com', '启用', '2024-12-08 01:29:35');


-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `main_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
  `pet_type_id` int(11) NOT NULL COMMENT '类型',
  `basic_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '基本信息',
  `user_id` int(11) NOT NULL COMMENT '所属用户',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES (1, '鹦鹉哥', 'http://localhost:1000/file/6e92336bea9249eaca000a6754b7f5e0.png', 2, '<p>非常的好看 </p>', 1, '2024-12-18 23:17:49');
INSERT INTO `pet` VALUES (2, '大家伙', 'http://localhost:1000/file/e812a2dda4739d0cc4b146d4a578eae4.png', 2, '<p>3123123123</p>', 1, '2024-12-21 00:10:18');
INSERT INTO `pet` VALUES (3, '大猫猫 ', 'http://localhost:1000/file/714b20d3fe0129103255a49c2bf375df.png', 1, NULL, 1, '2024-12-21 00:13:33');
INSERT INTO `pet` VALUES (4, '小猫猫', 'http://localhost:1000/file/ecabf6a31b6012a4b90fc8b1d7d01ce9.png', 1, '<p>312312312</p>', 1, '2024-12-21 00:13:53');


-- ----------------------------
-- Table structure for pet_feed
-- ----------------------------
DROP TABLE IF EXISTS `pet_feed`;
CREATE TABLE `pet_feed`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pet_id` int(11) NOT NULL COMMENT '宠物',
  `pet_type_id` int(11) NOT NULL COMMENT '宠物类型',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `pet_store_manager_id` int(11) NOT NULL COMMENT '店长',
  `reserved_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '预约时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '备注',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物喂养' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_feed
-- ----------------------------
INSERT INTO `pet_feed` VALUES (1, 4, 2, 1, 1, '2024-12-04 00:00:00', '111', '已完成', '2024-12-21 01:09:39');
INSERT INTO `pet_feed` VALUES (2, 4, 2, 1, 1, '2024-12-12 00:00:00', NULL, '已完成', '2024-12-21 01:12:33');
INSERT INTO `pet_feed` VALUES (3, 4, 2, 1, 1, '2024-12-21 01:42:47', '3213', '已下单', '2024-12-21 01:42:49');
INSERT INTO `pet_feed` VALUES (4, 3, 2, 1, 1, '2024-12-19 00:00:00', '1212', '已下单', '2024-12-21 17:30:07');
INSERT INTO `pet_feed` VALUES (5, 3, 2, 1, 2, '2024-12-28 00:00:00', '21341', '已完成', '2024-12-21 20:20:55');

-- ----------------------------
-- Table structure for pet_foster_care
-- ----------------------------
DROP TABLE IF EXISTS `pet_foster_care`;
CREATE TABLE `pet_foster_care`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pet_id` int(11) NOT NULL COMMENT '宠物',
  `pet_type_id` int(11) NOT NULL COMMENT '宠物类型',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `pet_store_manager_id` int(11) NOT NULL COMMENT '店长',
  `reserved_start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '预约开始时间',
  `reserved_end_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '预约结束时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '备注',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物寄养' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_foster_care
-- ----------------------------
INSERT INTO `pet_foster_care` VALUES (1, 3, 2, 1, 1, '2024-12-18 00:00:00', '2024-12-28 00:00:00', '12131', '已完成', '2024-12-21 01:19:40');
INSERT INTO `pet_foster_care` VALUES (2, 4, 2, 1, 1, '2024-12-21 17:30:26', '2024-12-28 00:00:00', '312312', '已下单', '2024-12-21 17:30:31');
INSERT INTO `pet_foster_care` VALUES (3, 4, 2, 1, 4, '2024-12-10 00:00:00', '2024-12-28 00:00:00', '321312', '已下单', '2024-12-21 20:21:11');
INSERT INTO `pet_foster_care` VALUES (4, 3, 2, 1, 2, '2024-12-04 00:00:00', '2024-12-28 00:00:00', '321321', '已完成', '2024-12-21 20:21:27');

-- ----------------------------
-- Table structure for pet_store_manager
-- ----------------------------
DROP TABLE IF EXISTS `pet_store_manager`;
CREATE TABLE `pet_store_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '店铺名称',
  `store_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺图片',
  `store_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '店铺地址',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物店长' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_store_manager
-- ----------------------------
INSERT INTO `pet_store_manager` VALUES (1, 'admin', '123456', '北京朝阳区宠物店', 'http://localhost:1000/file/502ce9c9018f33db09a0beb2c65035d9.png', '13888888888', NULL, '启用', '北京朝阳区宠物店', 'http://localhost:1000/file/502ce9c9018f33db09a0beb2c65035d9.png', '北京市朝阳区朝阳门外大街乙12-36号', '2024-12-18 22:42:27');
INSERT INTO `pet_store_manager` VALUES (2, 'store1', '123456', '北京举掌宠物', 'http://localhost:1000/file/487795b562fde7e9ae8e4420978fb2a3.png', '13888888888', NULL, '启用', '北京举掌宠物', 'http://localhost:1000/file/487795b562fde7e9ae8e4420978fb2a3.png', '北京市朝阳区深沟村无线电元件九厂16幢平房D6-101室', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (3, 'store2', '123456', '武汉伴侣宠物医院(24小时)(古田路店)', 'http://localhost:1000/file/1c8beba64c57677eac80843477e55a3e.png', '13888888888', '(027)83637176,15347117468', '启用', '武汉伴侣宠物医院(24小时)(古田路店)', 'http://localhost:1000/file/1c8beba64c57677eac80843477e55a3e.png', '解放大道329号商网1-2层18号（小胡子祥彪烧烤旁）', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (4, 'store3', '123456', '东湖狗狗小院', 'http://localhost:1000/file/39a9bc465682b462bcc45e1b79fa054b.png', '13888888888', NULL, '启用', '东湖狗狗小院', 'http://localhost:1000/file/39a9bc465682b462bcc45e1b79fa054b.png', '东湖笛苑驿站', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (5, 'store4', '123456', '爱犬人家', 'http://localhost:1000/file/b5921526da6b5981fb5370c7a5831b21.png', '13888888888', NULL, '启用', '爱犬人家', 'http://localhost:1000/file/b5921526da6b5981fb5370c7a5831b21.png', '堤边路堤角花鸟宠物大世界C1-01-03号（4号门进、幸福湾星澜14~15栋旁）', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (6, 'store5', '123456', '樱桃家的宠物店(君安花园店)', 'http://localhost:1000/file/0b3fcebf4061b0dc77bfcfa907c46b51.png', '13888888888', NULL, '启用', '樱桃家的宠物店(君安花园店)', 'http://localhost:1000/file/0b3fcebf4061b0dc77bfcfa907c46b51.png', '翠柏路与秋桂街交叉口西北80米', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (7, 'store6', '123456', '绒球の屋宠物生活馆(星悦城店)', 'http://localhost:1000/file/c8e0b3f26451a22cfa819a1edad39847.png', '13888888888', NULL, '启用', '绒球の屋宠物生活馆(星悦城店)', 'http://localhost:1000/file/c8e0b3f26451a22cfa819a1edad39847.png', '星悦城二期7栋105室', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (8, 'store7', '123456', '武汉五虎名猫宠物生活馆', 'http://localhost:1000/file/e640169df7c093d109850450998ea1e0.png', '13888888888', NULL, '启用', '武汉五虎名猫宠物生活馆', 'http://localhost:1000/file/e640169df7c093d109850450998ea1e0.png', ' 红旗欣居D区D1栋201号', '2024-12-21 18:03:15');
INSERT INTO `pet_store_manager` VALUES (9, 'store8', '123456', '顽皮宝宝宠物店', 'http://localhost:1000/file/f0f9a3af618c87d4b8c1eca70a6d6c4a.png', '13888888888', NULL, '启用', '武汉市汉阳区乐萌宠物店', 'http://localhost:1000/file/f0f9a3af618c87d4b8c1eca70a6d6c4a.png', '凤凰北路32之183号', '2024-12-21 18:03:15');

-- ----------------------------
-- Table structure for pet_type
-- ----------------------------
DROP TABLE IF EXISTS `pet_type`;
CREATE TABLE `pet_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '备注',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_type
-- ----------------------------
INSERT INTO `pet_type` VALUES (1, '猫', NULL, '2024-12-18 22:44:15');
INSERT INTO `pet_type` VALUES (2, '狗', NULL, '2024-12-18 22:44:19');
INSERT INTO `pet_type` VALUES (3, '鹦鹉', NULL, '2024-12-18 22:44:24');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `main_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面图',
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `price` float NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL COMMENT '库存',
  `sales_volume` int(11) NOT NULL COMMENT '销量',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '狗狗玩具磨牙耐咬发声自嗨解闷神器宠物玩具泰迪比熊小型幼犬用品', 'http://localhost:1000/file/09dd6e416319a664088c928b2a05dc46.png', '<ul><li></li><li></li></ul><p>参数信息</p><p>品牌</p><p>hipidog/嬉皮狗</p><p>货号</p><p>2212CGLY0610-GQ</p><p>适用宠物类别</p><p>狗</p><p>规格类型</p><p>正常规格</p><p>颜色分类</p><p>【全家福】主图款大礼包（13件套） 【钜惠组合】省心选择（10件套） 【精选套装】丰富款式（8件套） 【热销爆款】经典磨牙（6件套） 【超值套装】幼犬最爱（6件套） 【店长精选】自嗨解闷（4件套） 【口碑之选】通用幼犬（4件套） 陪睡解闷（4件套） 耐咬组合（4件套） 毛绒发声（4件套） 趣味造型（4件套） 球球组合（4件套） 磨牙洁齿（3件套） 磨牙耐咬（2件套） 玩具大礼包 肆意嗨玩【勿拍】</p><p><br></p><p>图文详情</p><p><span style=\"color: rgb(5, 27, 40);\">店铺活动</span><img src=\"https://img.alicdn.com/imgextra/i2/2889741150/O1CN01VOHPsN1KMkUZs1T1U_!!2889741150.png\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i3/2889741150/O1CN01Jg3jC81KMkRM6eyfQ_!!2889741150.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/2889741150/O1CN01cpNZky1KMkROQ8N12_!!2889741150.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><br></p>', '上架', 525, 100, 0, '2024-12-21 02:21:56');
INSERT INTO `product` VALUES (2, '猫咪新年围巾宠物围脖红色保暖中国风口水巾围兜狗狗新年装饰品', 'http://localhost:1000/file/ecabf6a31b6012a4b90fc8b1d7d01ce9.png', '<p><br></p><p><br></p><p>参数信息</p><p>品牌</p><p>7o/柒哦</p><p>货号</p><p>2</p><p>尺码</p><p>全长45厘米【针织围巾 小宠通用】</p><p>适用对象</p><p>通用</p><p>规格类型</p><p>正常规格</p><p>宠物用品款式</p><p>长条围巾</p><p>颜色分类</p><p>新年款【招财】 新年款【进宝】 新年款【岁岁平安】 新年款【平安喜乐】</p><p><br></p><p>图文详情</p><p><img src=\"https://img.alicdn.com/imgextra/i2/2423735887/O1CN01pD9x1d1tMIeuHsGd5_!!2423735887.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i3/2423735887/O1CN01YmmkAE1tMIeuHT7UM_!!2423735887.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2423735887/O1CN01m5Hs5E1tMIekpi7QJ_!!2423735887.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p>', '上架', 22, 100, 0, '2024-12-21 02:29:13');
INSERT INTO `product` VALUES (3, '剑麻猫抓板猫咪转盘磨爪器猫抓柱耐磨猫爪逗猫玩具宠物用品猫玩具', 'http://localhost:1000/file/44636ee39bdc50a0cf0188caadb7560f.png', '<p><br></p><p><br></p><p style=\"text-align: start;\">图文详情</p><p style=\"text-align: start;\"><br></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2218359446684/O1CN01SDeJqB1zFKHNyDJdP_!!2218359446684-0-scmitem176000.jpg\" alt=\"\" data-href=\"\" style=\"\"/><img src=\"https://img.alicdn.com/imgextra/i2/2218359446684/O1CN01kL3fzc1zFKHLu2X45_!!2218359446684-0-scmitem176000.jpg\" alt=\"\" data-href=\"\" style=\"\"/><img src=\"https://img.alicdn.com/imgextra/i4/2218359446684/O1CN01IGe7hw1zFKHLu4HBc_!!2218359446684-0-scmitem176000.jpg\" alt=\"\" data-href=\"\" style=\"\"/><img src=\"https://img.alicdn.com/imgextra/i2/2218359446684/O1CN013OkcYR1zFKHRP6hb2_!!2218359446684-0-scmitem176000.jpg\" alt=\"\" data-href=\"\" style=\"\"/><img src=\"https://img.alicdn.com/imgextra/i1/2218359446684/O1CN012ui8XX1zFKHLu3jvo_!!2218359446684-0-scmitem176000.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p><p><img src=\"https://epetimg-nowater.oss-cn-hangzhou.aliyuncs.com/common/upload/commonfile/2022/08/23/141508_477809.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>', '上架', 9.9, 100, 0, '2024-12-21 02:30:21');
INSERT INTO `product` VALUES (4, 'PAPIFEED猫狗智能喂食器猫咪宠物自动定时定量猫粮狗粮自助投食机', 'http://localhost:1000/file/7e5157ca564c339f1cd422ffee4b2b2e.png', '<p><br></p><p><img src=\"https://static.epetbar.com/static_wap/epetapp/pages/goods_detail/images/detail_wxtx.png\" alt=\"\" data-href=\"\" style=\"\"/></p><p style=\"text-align: start;\">图文详情</p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/2212397002754/O1CN01mh0hn81WDNm8jm3Dy_!!2212397002754.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i3/2212397002754/O1CN019Q4G7r1WDNm9Dh2vB_!!2212397002754.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/2212397002754/O1CN01L9zrT11WDNm7ObFSn_!!2212397002754.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i3/2212397002754/O1CN01Yak4kp1WDNm9Dge0T_!!2212397002754.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/2212397002754/O1CN01SKuKO81WDNm6RMe4Y_!!2212397002754.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p><img src=\"https://img1.epetbar.com/2018-06/14/19/2258b3348dad5e9d36aff08d983ab8ee.jpg@!water\" alt=\"5627977\" data-href=\"\" style=\"\"/></p>', '上架', 14.9, 96, 4, '2024-12-21 02:32:22');
INSERT INTO `product` VALUES (5, '狗狗外出水杯便携式喝水器狗水壶宠物随行杯小狗户外饮水出门喂水', 'http://localhost:1000/file/27ed54dc0dfdd911d8fffb52c2c559df.png', '<p style=\"text-align: start;\">图文详情</p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/2200548548555/O1CN01VfrNsW2D4FFUaLBrT_!!2200548548555.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/2200548548555/O1CN016gIy2c2D4FFUaOoUL_!!2200548548555.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/2200548548555/O1CN01IJNR4O2D4FFVexV7t_!!2200548548555.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i4/2200548548555/O1CN01skmSQr2D4FFTf3Yyo_!!2200548548555.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/2200548548555/O1CN01NETnSp2D4FFTf35s9_!!2200548548555.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://ikeeppet.oss-cn-zhangjiakou.aliyuncs.com/8ef7843526de46308b33968b3ba2cd3d.jpeg\" alt=\"\" data-href=\"\" style=\"\"></p>', '上架', 20, 99, 1, '2024-12-21 02:33:44');
INSERT INTO `product` VALUES (6, '猫砂包邮10公斤20kg40斤除臭结团柠檬猫沙膨润土猫砂10斤猫咪用品', 'http://localhost:1000/file/08e90fe91ffd7574fc6e4b4391a22049.png', '<p style=\"text-align: center;\"><br></p><p style=\"text-align: start;\">图文详情</p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i4/2215643243183/O1CN01GKlaer1ZNrY8ICxkm_!!2215643243183.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i3/2215643243183/O1CN01X2Q91n1ZNrY6R7uMm_!!2215643243183.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i3/2215643243183/O1CN01hDe1pd1ZNrY2bUAxT_!!2215643243183.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/2215643243183/O1CN01c3fzZ71ZNrXwlVkk9_!!2215643243183.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i3/2215643243183/O1CN01FdLuaS1ZNrY8IAohg_!!2215643243183.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i4/2215643243183/O1CN01T9ShK31ZNrYBuO54e_!!2215643243183.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: center;\"><img src=\"https://ikeeppet.oss-cn-zhangjiakou.aliyuncs.com/b24529fa1b6a4097a86fa30414d808a5.jpg\" alt=\"\" data-href=\"\" style=\"\"></p>', '上架', 465, 99, 1, '2024-12-21 02:34:39');
INSERT INTO `product` VALUES (7, '福丸爆款白茶猫砂2kg', 'http://localhost:1000/file/3f71c8f7324e3f8a7cfe630071bc95b4.png', '<p><br></p><p style=\"text-align: start;\">图文详情</p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i3/4052404661/O1CN01yEAvVq1kImwipZHi6_!!4052404661.png\" alt=\"\" data-href=\"\" style=\"width: 750px;height: 163.306px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/4052404661/O1CN01B8XeMe1kImxWjcgbr_!!4052404661.png\" alt=\"\" data-href=\"\" style=\"width: 750px;height: 999.194px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/4052404661/O1CN01EKm4M61kImz0K3CI2_!!4052404661.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i4/4052404661/O1CN01wdDIkL1kIn2VMUFch_!!4052404661.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/4052404661/O1CN01r309hG1kIn2SwWOA4_!!4052404661.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/4052404661/O1CN012cJfXD1kImyuXfQSH_!!4052404661.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/4052404661/O1CN01DuDqsN1kIn2YyKVLP_!!4052404661.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/4052404661/O1CN01YKfj1b1kIn2Tki0Pr_!!4052404661.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p>', '上架', 32, 99, 1, '2024-12-21 02:40:20');
INSERT INTO `product` VALUES (8, '猫玩具自嗨解闷神器猫咪懒人自动逗猫棒羽毛吸盘带铃铛耐咬幼猫', 'http://localhost:1000/file/5185a57efb24a2b339f1b58042d04bee.png', '<p style=\"text-align: start;\">图文详情</p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/3837764657/O1CN010SAjNM1kGxPzcv0QS_!!3837764657.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;height: 400.403px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/3837764657/O1CN01LbYTqC1kGxEQtSNXc_!!3837764657.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i4/3837764657/O1CN01H0bcFC1kGxEN92NHF_!!3837764657.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/3837764657/O1CN0196pBjp1kGxGPnnmyi_!!3837764657.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i2/3837764657/O1CN01FfYF111kGxGRSATyA_!!3837764657.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p><p style=\"text-align: start;\"><img src=\"https://img.alicdn.com/imgextra/i1/3837764657/O1CN01IajSTW1kGxERgv53s_!!3837764657.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"></p>', '上架', 2.61, 100, 0, '2024-12-21 23:20:26');
INSERT INTO `product` VALUES (9, '宠物楼梯狗狗上床台阶猫咪斜坡小型犬床边梯子小狗爬梯沙发狗阶梯', 'http://localhost:1000/file/3e9eff6bd0087e2a33047c5afe355664.png', '<p><img src=\"https://img.alicdn.com/tfs/TB1nj2JDXOWBuNjy0FiXXXFxVXa-84-82.png\" alt=\"\" data-href=\"\" style=\"width: 36px;height: 36px;\"/></p><p>公益宝贝</p><p><span style=\"color: rgb(153, 153, 153);\">每笔成交将为</span><span style=\"color: rgb(21, 21, 21);\"> 野孩子-守护大熊猫 </span><span style=\"color: rgb(153, 153, 153);\">捐赠</span><span style=\"color: rgb(21, 21, 21);\"> 0.1元 </span><span style=\"color: rgb(153, 153, 153);\">，已累计捐赠</span><span style=\"color: rgb(21, 21, 21);\"> 1574 </span><span style=\"color: rgb(153, 153, 153);\">笔。</span></p><p><img src=\"https://img.alicdn.com/imgextra/i3/2209531206/O1CN01BHxqHU1KmOfl2bcPm_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/2209531206/O1CN01ytzEvO1KmOXbcph44_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2209531206/O1CN01cmaWhW1KmOeJfeFGQ_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i1/2209531206/O1CN01RbBDmS1KmOfgaBVBn_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/2209531206/O1CN01gG5fdI1KmOfbXIwt8_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2209531206/O1CN01orw9x81KmOXcYVc6f_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i3/2209531206/O1CN01G94VtZ1KmOXVdsQqn_!!2209531206.jpg\" alt=\"\" data-href=\"\" style=\"width: 750px;\"/></p>', '上架', 178, 100, 0, '2024-12-21 23:22:25');

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_id` int(11) NOT NULL COMMENT '商品ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `price` float NOT NULL COMMENT '价格',
  `name_of_consignee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人姓名',
  `tel_of_consignee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人电话',
  `address_of_consignee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收货人地址',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_order
-- ----------------------------
INSERT INTO `product_order` VALUES (1, 4, 1, 14.9, '王大麻', '18888888', '安吉论坛长兴', '2024-12-21 16:44:35', '已取消');
INSERT INTO `product_order` VALUES (2, 4, 1, 14.9, '王大麻', '18888888', '安吉论坛长兴', '2024-12-21 16:45:29', '已完成');
INSERT INTO `product_order` VALUES (3, 7, 1, 32, '王大麻', '18888888', '安吉论坛长兴', '2024-12-21 17:25:23', '已完成');
INSERT INTO `product_order` VALUES (4, 6, 1, 465, '王大麻', '18888888', '安吉论坛长兴', '2024-12-21 17:25:59', '已取消');
INSERT INTO `product_order` VALUES (5, 5, 1, 20, '王大麻', '18888888', '安吉论坛长兴', '2024-12-21 17:27:12', '待发货');
INSERT INTO `product_order` VALUES (6, 6, 1, 465, '王大麻', '18888888', '安吉论坛长兴', '2024-12-21 17:27:59', '待发货');

-- ----------------------------
-- Table structure for shipping_address
-- ----------------------------
DROP TABLE IF EXISTS `shipping_address`;
CREATE TABLE `shipping_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '电话',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收货地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shipping_address
-- ----------------------------
INSERT INTO `shipping_address` VALUES (1, '王大麻', '18888888', '安吉论坛长兴', 1, '2024-12-21 02:04:14');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  `balance` float NOT NULL COMMENT '余额',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '普通用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '123456', '趁桃红柳绿', 'http://localhost:1000/file/4a257f65c36236982d6d89bf55bdedf7.png', '13555555555', '155888@qq.com', '启用', 169, '2024-12-18 22:39:37');
INSERT INTO `user` VALUES (2, 'user1', '123456', '半城繁华半城殇', 'http://localhost:1000/file/8826e8c280cb3bec6a4fbeb61514ee74.png', NULL, NULL, '启用', 100, '2024-12-22 01:00:46');
INSERT INTO `user` VALUES (3, 'user2', '123456', '夏漠秋雨', 'http://localhost:1000/file/5f5b360a219f24d90f1a1af9b1584502.jpeg', NULL, NULL, '启用', 100, '2024-12-22 01:01:15');

SET FOREIGN_KEY_CHECKS = 1;
