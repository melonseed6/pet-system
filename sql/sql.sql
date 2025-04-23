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
-- Table structure for help_message
-- ----------------------------
DROP TABLE IF EXISTS `help_message`;
CREATE TABLE `help_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '求助信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of help_message
-- ----------------------------
INSERT INTO `help_message` VALUES (1, '求助狗狗打个顺风车去上海浦东新区！狗狗五十多斤', '<p style=\"text-align: left;\">目前情况&nbsp;:&nbsp;狗狗搭顺风车</p><p style=\"text-align: left;\">急需什么&nbsp;:&nbsp;狗狗搭顺风车</p><p style=\"text-align: left;\">地址&nbsp;:&nbsp;</p><p style=\"text-align: left;\"><img src=\"https://www.chongyoushe.com/source/plugin/tom_tcpc/images/dingwei.png\" alt=\"\" data-href=\"\" style=\"width: 20px;\"><a href=\"https://api.map.baidu.com/marker?location=27.690699594331,107.0198300155&amp;title=%E6%B1%82%E5%8A%A9%E7%8B%97%E7%8B%97%E6%89%93%E4%B8%AA%E9%A1%BA%E9%A3%8E%E8%BD%A6%E5%8E%BB%E4%B8%8A%E6%B5%B7%E6%B5%A6%E4%B8%9C%E6%96%B0%E5%8C%BA%EF%BC%81%E7%8B%97%E7%8B%97%E4%BA%94%E5%8D%81%E5%A4%9A%E6%96%A4%EF%BC%8C%E9%87%91...&amp;content=&amp;output=html\" target=\"_blank\">遵义市红花岗区新中街道播州大道</a></p><p style=\"text-align: left;\">求助狗狗打个顺风车去上海浦东新区！狗狗五十多斤，金毛！有偿，最晚一月十五号出发！看有没有这段时间刚好有宠友去上海！</p><p style=\"text-align: left;\"><img src=\"http://localhost:1000/file/e756a6e73dea527d030c9d0a2e88a546.png\" alt=\"e756a6e73dea527d030c9d0a2e88a546.png\" data-href=\"http://localhost:1000/file/e756a6e73dea527d030c9d0a2e88a546.png\" style=\"\"></p>', 1, '2024-12-18 23:22:10');
INSERT INTO `help_message` VALUES (3, '半夜救助的兔子，看见大狗在玩咬它，不忍心给带回家了', '<p>目前情况 : 没地方养</p><p>急需什么 : 找领养</p><p>地址 : </p><p><img src=\"https://www.chongyoushe.com/source/plugin/tom_tcpc/images/dingwei.png\" alt=\"\" data-href=\"\" style=\"width: 20px;\"/><a href=\"https://api.map.baidu.com/marker?location=28.188762409872,112.98079665455&title=%E5%8D%8A%E5%A4%9C%E6%95%91%E5%8A%A9%E7%9A%84%E5%85%94%E5%AD%90%EF%BC%8C%E7%9C%8B%E8%A7%81%E5%A4%A7%E7%8B%97%E5%9C%A8%E7%8E%A9%E5%92%AC%E5%AE%83%EF%BC%8C%E4%B8%8D%E5%BF%8D%E5%BF%83%E7%BB%99%E5%B8%A6%E5%9B%9E%E5%AE%B6%E4%BA%86...&content=&output=html\" target=\"_blank\">长沙市天心区坡子街街道西湖路37号-1</a></p><p><span style=\"color: rgb(255, 128, 0); background-color: rgb(255, 247, 239); font-size: 14px;\">领养需求</span></p><p><img src=\"http://localhost:1000/file/7cdc894e2db69a8c0269b9b73a10f166.png\" alt=\"7cdc894e2db69a8c0269b9b73a10f166.png\" data-href=\"http://localhost:1000/file/7cdc894e2db69a8c0269b9b73a10f166.png\" style=\"\"/></p><p>半夜救助的兔子，看见大狗在玩咬它，不忍心给带回家了，但是家里有狗没法和平相处，急需可以收养它的人，领养之后可不定时回访（拍视频）无偿，无偿！</p>', 2, '2024-12-21 00:22:59');
INSERT INTO `help_message` VALUES (4, '狗狗带不走了，，疫苗已打，需要一位好心人事帮忙领养...', '<p>目前情况 : 带不走</p><p>急需什么 : 需要好吓人领养</p><p>地址 : </p><p><img src=\"https://www.chongyoushe.com/source/plugin/tom_tcpc/images/dingwei.png\" alt=\"\" data-href=\"\" style=\"width: 20px;\"/><a href=\"https://api.map.baidu.com/marker?location=30.762800422933,108.45615710155&title=%E7%8B%97%E7%8B%97%E5%B8%A6%E4%B8%8D%E8%B5%B0%E4%BA%86%EF%BC%8C%EF%BC%8C%E7%96%AB%E8%8B%97%E5%B7%B2%E6%89%93%EF%BC%8C%E9%9C%80%E8%A6%81%E4%B8%80%E4%BD%8D%E5%A5%BD%E5%BF%83%E4%BA%BA%E4%BA%8B%E5%B8%AE%E5%BF%99%E9%A2%86%E5%85%BB...&content=&output=html\" target=\"_blank\">重庆市万州区百安坝街道安庆路511号-附8号</a></p><p><span style=\"color: rgb(255, 128, 0); background-color: rgb(255, 247, 239); font-size: 14px;\">领养需求</span></p><p><img src=\"http://localhost:1000/file/054edc9fff41061f7e2e105cc35246e7.png\" alt=\"054edc9fff41061f7e2e105cc35246e7.png\" data-href=\"http://localhost:1000/file/054edc9fff41061f7e2e105cc35246e7.png\" style=\"\"/></p><p>狗狗带不走了，，疫苗已打，需要一位好心人事帮忙领养</p>', 3, '2024-12-21 17:53:28');
INSERT INTO `help_message` VALUES (5, '急找领养人，无偿 无偿 无偿！我过两来了两天就要去外地', '<p><br></p><p>目前情况 : 急找暂时领养或者人直接领养人</p><p>急需什么 : 可以暂时领养的</p><p>地址 : </p><p><img src=\"https://www.chongyoushe.com/source/plugin/tom_tcpc/images/dingwei.png\" alt=\"\" data-href=\"\" style=\"width: 20px;\"/><a href=\"https://api.map.baidu.com/marker?location=28.188728197932,112.9807504559&title=%E6%80%A5%E6%89%BE%E9%A2%86%E5%85%BB%E4%BA%BA%EF%BC%8C%E6%97%A0%E5%81%BF+%E6%97%A0%E5%81%BF+%E6%97%A0%E5%81%BF%EF%BC%81%E6%88%91%E8%BF%87%E4%B8%A4%E6%9D%A5%E4%BA%86%E4%B8%A4%E5%A4%A9%E5%B0%B1%E8%A6%81%E5%8E%BB%E5%A4%96...&content=&output=html\" target=\"_blank\">长沙市天心区坡子街街道上碧湘街47号</a></p><p><span style=\"color: rgb(255, 128, 0); background-color: rgb(255, 247, 239); font-size: 14px;\">流浪救助</span></p><p><img src=\"http://localhost:1000/file/396c2aa10259eb0d2eb71c3f9ef2b652.png\" alt=\"396c2aa10259eb0d2eb71c3f9ef2b652.png\" data-href=\"http://localhost:1000/file/396c2aa10259eb0d2eb71c3f9ef2b652.png\" style=\"\"/><img src=\"http://localhost:1000/file/b92f9604f66bcadc91c393b344f6d95c.png\" alt=\"b92f9604f66bcadc91c393b344f6d95c.png\" data-href=\"http://localhost:1000/file/b92f9604f66bcadc91c393b344f6d95c.png\" style=\"\"/><img src=\"http://localhost:1000/file/f622820478d23a12db7d5577f9dfe129.png\" alt=\"f622820478d23a12db7d5577f9dfe129.png\" data-href=\"http://localhost:1000/file/f622820478d23a12db7d5577f9dfe129.png\" style=\"\"/></p><p>急找领养人，无偿 无偿 无偿！<br>我过两来了两天就要去外地了，救救猫猫吧<br>猫猫性格超好，可撸可抱可亲亲，仰着抱也不反抗，也很聪明 我发现它的时候已经小狗哈了，所以不忍心不救毕竟是条命，但是我们家没法养它，有狗，且家里人不喜欢猫看见了会丢出去，这么热的天气，还这么小在外面很难活下去吧，拜托各位了可以收养的联系我</p>', 2, '2024-12-21 17:53:32');
INSERT INTO `help_message` VALUES (6, '5月份捡到的金毛大概4-5岁（母），屁股上有个大包', '<p><br></p><p>目前情况 : 金毛，捡回来的</p><p>急需什么 : 领养</p><p>地址 : </p><p><img src=\"https://www.chongyoushe.com/source/plugin/tom_tcpc/images/dingwei.png\" alt=\"\" data-href=\"\" style=\"width: 20px;\"/><a href=\"https://api.map.baidu.com/marker?location=39.828959808422,116.27478679046&title=5%E6%9C%88%E4%BB%BD%E6%8D%A1%E5%88%B0%E7%9A%84%E9%87%91%E6%AF%9B%E5%A4%A7%E6%A6%824-5%E5%B2%81%EF%BC%88%E6%AF%8D%EF%BC%89%EF%BC%8C%E5%B1%81%E8%82%A1%E4%B8%8A%E6%9C%89%E4%B8%AA%E5%A4%A7%E5%8C%85%EF%BC%8C%E4%BD%86...&content=&output=html\" target=\"_blank\">北京市丰台区宛平街道看杨路</a></p><p><span style=\"color: rgb(255, 128, 0); background-color: rgb(255, 247, 239); font-size: 14px;\">领养需求</span></p><p><img src=\"http://localhost:1000/file/a621bdc2ae68817c13ae0259b4546183.png\" alt=\"a621bdc2ae68817c13ae0259b4546183.png\" data-href=\"http://localhost:1000/file/a621bdc2ae68817c13ae0259b4546183.png\" style=\"\"/><img src=\"http://localhost:1000/file/6e92336bea9249eaca000a6754b7f5e0.png\" alt=\"6e92336bea9249eaca000a6754b7f5e0.png\" data-href=\"http://localhost:1000/file/6e92336bea9249eaca000a6754b7f5e0.png\" style=\"\"/><img src=\"http://localhost:1000/file/c2e95680fea392d1fbd99b8ebe43855a.png\" alt=\"c2e95680fea392d1fbd99b8ebe43855a.png\" data-href=\"http://localhost:1000/file/c2e95680fea392d1fbd99b8ebe43855a.png\" style=\"\"/></p><p>5月份捡到的金毛大概4-5岁（母），屁股上有个大包，但是不疼不痒，没有不适，因个人是北漂，实在没办法养，所以想求助大家领养</p>', 3, '2024-12-21 17:53:35');

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
-- Table structure for pet_diary
-- ----------------------------
DROP TABLE IF EXISTS `pet_diary`;
CREATE TABLE `pet_diary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物日记' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_diary
-- ----------------------------
INSERT INTO `pet_diary` VALUES (1, '泡泡与地球仪的追逐游戏', '<p style=\"text-align: left;\">今天一回家，我就看见泡泡正在玩我的地球仪。地球仪好像不喜欢泡泡，他用小爪子一按，地球仪就远离泡泡滑到前面去了。泡泡叫了几声，好像在说：可恶的.球，再跑，小心我咬你！</p><p style=\"text-align: left;\">　　地球仪每滑一次，泡泡就追一次，最后地球仪滑到了墙角，不动了。泡泡看见了，觉得没劲了，就静静地坐在地球仪旁。我过一会去看它，它居然睡着了。</p><p style=\"text-align: left;\">　　泡泡你是不是玩累了？真是个可爱、调皮的小狗。</p>', 1, '2024-12-20 23:34:04');
INSERT INTO `pet_diary` VALUES (2, '给小狗洗澡的快乐体验', '<p style=\"text-align: left;\">爷爷家养了一只小狗，这只小狗十分漂亮，我很喜欢它。<strong>今</strong>天，我发现它身上的毛缺少了光泽，而且有一股难闻的味道，心想：小狗一定是该洗澡了，不如我给它洗个热水澡吧！可是我总来没给小动物洗过澡，不知道能行吗？看着它可爱的样子，我决定试试。</p><p style=\"text-align: left;\">　　我先接好一盆温水，把手指伸进去，觉得水温正合适。这时，小狗走了过来，好奇地嗅了嗅，看看我，再看看水，好像在想：这是要干什么呢？我小心翼翼地抱起小狗，把它放进水里，到了水里，它立刻就不老实了。四条腿使劲往外爬，一点儿也不想呆在盆里，我赶紧按住它，迅速地往小狗身上淋水，不一会儿，它全身都湿了，毛一缕一缕紧贴在身上。我又把洗发液抹在小狗的头上、背上、肚子上、腿上，很快，它的\'身上就有了很多小泡泡，成了一只泡泡犬。哈哈，真有趣呀！</p><p style=\"text-align: left;\">　　为了不让小狗着凉，我飞快地给小狗冲洗干净，又用一条大毛巾把它的毛擦干净，还给小狗裹得严严实实的。此时的小狗缩在“被子”里，全身上下都在哆嗦。</p><p style=\"text-align: left;\">　　一会儿，小狗身上的毛很快干了，恢复了以前的漂亮，我真高兴呀！</p>', 2, '2024-12-20 23:34:13');
INSERT INTO `pet_diary` VALUES (3, '阳光下的贝贝与我的欢乐时光', '<p style=\"text-align: left;\">一天，阳光明媚，我来到外婆家。</p><p style=\"text-align: left;\">　　刚推开门，只见一只可爱的小狗趴在姐姐腿上。我放下手中的包，跑了过去。谁知道它竟然跑得远远的，躲到了门后面。姐姐说：“这只小狗名叫贝贝，它才刚来，是我们家的新成员。”“哦，原来它叫贝贝！”我说。姐姐对着小狗说：“贝贝，来！”又对我说：“妹妹，跟我一起说。”于是，我跟姐姐一边拍手一边说：“贝贝，来！”过了好一会儿，贝贝才一点一点向我们走来。在离我一米处的地方，它停了下来。我想：我不去伤害它，它一定会过来的.。果然，过了大约三分钟，贝贝又向我们走来。最后，它跳到了姐姐的腿上，再转过头看着我。</p><p style=\"text-align: left;\">　　我仔细观察贝贝，它全身奶白色的皮毛，一双黑玛瑙般的大眼睛炯炯有神。身体后面有一条小尾巴不停地摇摆。最有特色的要数它的舌头了。它的舌头是紫色的，上面有一些粉色的点点。姐姐说因为它是松狮犬，所以舌头才别具特色。</p><p style=\"text-align: left;\">　　一开始，它只敢在离我50处走动。渐渐地，它在我的脚边活动。现在，它已经能和我一起玩了。</p><p style=\"text-align: left;\">　　有一天，我拿着一只小球在家里玩，不知不觉，贝贝竟跟在我身后。我当时还不知道它来了，继续玩。过了一会儿，贝贝突然出现在我面前，不停地跳起来，看来，它是想要球。我想逗它玩，便跑了起来，它紧随其后，眼看它就要追上我时，我往沙发上一坐，它前脚趴在沙发上，一脸渴望得到的表情。我无奈，只好把球给了它。它于是发出“汪汪”的叫声，表示高兴。</p><p style=\"text-align: left;\">　　我和贝贝从原来的害怕，到现在的信任，是因为互相信赖。信赖，就能创造出美好的境界。</p>', 2, '2024-12-20 23:34:24');
INSERT INTO `pet_diary` VALUES (4, '笑与泪：我的小狗生活', '<p style=\"text-align: left;\">我家有一只不太听话的小狗。你递给它一个球，它可高兴了，抱着球就地乱打滚，半天也不见腻。你叫它停，它全当没听见，玩累了，这才爬起来，用舌头舔舔全身，再舔舔脚，算是洗了个澡。带它出去玩，只要经过有水的地方，它就会兴奋异常，肆无忌惮地跳进水里，也不管其他的，任你怎么叫唤就是不上来，让你等一个小时都行，如果终于从水里上来了，一定是先甩甩身子，然后你就倒霉了，你也可以趁着这个机会“洗”一次澡。</p><p style=\"text-align: left;\">　　当你气愤地看着它，它却不做任何“解释”，似乎什么也没发现，还在那里甩呀甩呀的\'，甩够了就蹲在那里看着你，身子一颤一颤的，舌头伸得老长，口水滴得满地都是，还发出“哈哈”的声音，难道它在“笑”吗？真是让人哭笑不得。</p>', 3, '2024-12-21 17:53:38');
INSERT INTO `pet_diary` VALUES (5, '忠实的朋友：我与露露的日常', '<p style=\"text-align: left;\"> &nbsp; 我家没有养任何宠物，可是舅舅家的唯一的母狗露露却是一条让我很难忘记的小狗。</p><p style=\"text-align: left;\">　　不说不知道，舅舅家的三只体形差不多的狗其实是一家三口，那露露也就是狗妈妈了。尽管露露也与其他迷你雪纳瑞一样都长了白胡子，但是只要你和它一块儿待上个二十分钟，你就会发现其实它很温柔，是个真正的大家闺秀。玩捡球游戏时，它也不怎么跑，最多就是坐在一边，看我和那俩父子狗玩。</p><p style=\"text-align: left;\">　　记得有一天，舅舅从宠物店买回来一个粉色的球来代替原来那个又破又旧的网球。也许是因为露露和我一样是女孩子的原因吧，它格外喜欢那个新的`粉色球。我便用新的球和露露玩起了捡球游戏。露露很投入，几乎每个球都可以接到。最后，我为了把球扔得更加远些，就使足了劲儿一扔。可没想到，球在墙上一弹，跳进了两个储藏柜中间。露露犹豫了一会儿，最终还是冲过去捡球，结果前半身就卡在两个柜子中间了。看它那个狼狈相，真是进不去也出不来，不停地叫唤。那叫声可委屈啦，当然还是不失温柔……最后在“大力士”舅舅的帮助下，露露才恢复了它的自由身。</p><p style=\"text-align: left;\">　　每年放寒假暑假，我都盼望着爸爸妈妈带我去看露露。</p><p style=\"text-align: left;\">　　小狗的观察日记——狗是人类最忠实的朋友，它圆圆的眼睛，毛茸茸的身体，还有一条翘起的尾巴。如果你对他好，他就会一直粘着你。小狗是我最喜欢的动物了，也是你们最喜欢的吗？</p>', 3, '2024-12-21 17:53:41');
INSERT INTO `pet_diary` VALUES (6, '小狗：我的小伙伴与环保小帮手', '<p style=\"text-align: left;\">今天，我回奶奶家观察了小狗，小狗可真可爱！</p><p style=\"text-align: left;\">　　小狗的身子矮小，毛黄澄澄的，走起路来像一个滚动的小绒球；大大的眼睛像两颗宝石，湿渌渌的；趴在地上睡觉时，小耳朵耷拉着，看上去像一只大懒虫；它那条又细又短的小尾巴摇摇摆摆的，十分惹人喜爱。</p><p style=\"text-align: left;\">　　小狗是人类的好朋友，这句话一点不错，有时你只要呼唤它一声，它立刻就会赶过来，绕着你的腿转，然后扑到你身上，用舌头舔你，用身子蹭你。有时你玩球时一不小心把球弄丢了，小狗就会跑过去，它的`鼻子就像气味探测器似的到处找，不一会，小狗口里就叼着球回来了。</p><p style=\"text-align: left;\">　　小狗的性格也是天真可爱。有时它跟小猫打斗，我就训斥他，无论怎样打它骂它，它也不叫，更不会咬你，就像一个做错事的孩子一样老老实实地呆着。</p><p style=\"text-align: left;\">　　养小狗真好，还能节约粮食。每当我们吃剩的饭菜倒掉了一是觉得可惜，二是污染了环境，可是有了小狗就不一样了，它可以来吃剩菜剩饭，既环保，又充饥。它不但能帮忙看家，更像我的朋友一样与我分享快乐。</p>', 2, '2024-12-21 22:58:57');
INSERT INTO `pet_diary` VALUES (7, '在姑姑家与皮皮的乐趣', '<p style=\"text-align: start;\">暑假里，我与哥哥、爷爷来到了位于北京的姑姑家。在这里，我认识了一位新朋友——皮皮。</p><p style=\"text-align: start;\">　　皮皮是一只白色的母狗，拥有着胖乎乎的身子，一双眼睛黑溜溜的，显得炯炯有神，它的尾巴总是卷卷的，时不时就摇摇。虽说皮皮是一只母狗，却比公狗还要调皮：晚上，我与姑姑和哥哥带着皮皮到花园散步，只见他注视着周围，眼睛就像一个监控器，脖子像监控器的架子。忽然，它使劲拖住绳子向另一只狗进攻，那只狗也不甘示弱，两狗便玩了起来，皮皮也追着小狗不放，小狗就停下来理也不理它。皮皮见没人跟它玩，这只得灰溜溜的走了。</p><p style=\"text-align: start;\">　　皮皮还有一身好本领，抢球。我将一个网球扔向空中，皮皮就像看到宝贝一样跑了上去，试图用嘴巴去接球，“砰”的一声球落了下来，皮皮急忙去抢球，马上，它就?着个球在客厅里走来走去，等他把球从嘴里丢出来，我就用手把球捡起来，而它呢，就像我拿了它的\'宝贝，一部步也不离开我，直到我把球扔出去。</p><p style=\"text-align: start;\">　　皮皮在生活中给我带来许多快乐，同时也是我的好朋友。</p>', 1, '2024-12-21 22:59:38');
INSERT INTO `pet_diary` VALUES (8, '无壳小动物的幸福生活', '<p style=\"text-align: start;\">“唰……唰……”，转动的轮子发出不悦耳的声音，是它们，它们正在转轮上奔驰着。这是梦吧？突然一阵鸟叫声，将我从回忆的梦中惊醒过来，愣愣望着手中的旧照片。</p><p style=\"text-align: start;\">　　唉！果然是一场梦。毕竟它们离我远去已经有三年之久了。第一眼遇见它们，是在小二，当时有个暑假作业——养无壳小动物，于是我就到宠物店买了它们—— 老公公鼠。因为怕单独一只会感到寂寞，所以我买了两只，并预备一个豪华的家给它们。回到家后，我立即给它们取了名字——安安，多多。它们有乌黑的.大眼睛， 白褐相间的被毛，以及似有似无的短尾巴。它们过得非常幸福，饿时能享用生菜大餐，无聊时能到二楼观望台看风景，身体脏时还能跳进充满着猫砂的浴室洗澡，简直比神仙还要快活呢！而我也非常喜爱它们，只要看着它们那浑圆的身躯在笼里翻滚，就比什么都还欢喜。</p><p style=\"text-align: start;\">　　这样的日子大约过了一年多，某日早晨，我看见它们一动也不动地趴在笼内，那时我吓坏了，急忙带去给店员看。原来它们已经老了，就快走到生命的尽头了！回家后，我伤心得眼泪直流，几欲淹没了整个房间。</p><p style=\"text-align: start;\">　　放下泛黄的旧照片，我告诉自己：“去了！去了！那些终究只是回忆！”我缓缓走出房间，心想，未来还有没有这般令我回味的事物呢？</p>', 2, '2024-12-21 22:59:58');
INSERT INTO `pet_diary` VALUES (9, '与条条共度的快乐时光', '<p style=\"text-align: start;\">　黑色的条纹和黄色的线条组合在一起，这就是我家条条啦！条条有了这些条纹，就像穿着一件黑黄格子的大衣。还有，它的翅膀是透明的，十分干净，仿佛一天洗了十遍。它的翅膀晶莹剔透。它每天都在我的`耳边嗡嗡嗡的唱歌。</p><p style=\"text-align: start;\">　　条条的作用可多了。我最爱吃蜂蜜了，可是蜂蜜太贵了，我都买不起。但是，条条每天勤劳地采蜜，我就这样想吃多少蜂蜜就吃多少蜂蜜。就连妈妈也夸条条：“你真是个勤劳的小帮手！”</p><p style=\"text-align: start;\">　　有一次我家来了个小偷，条条冲上去叮了他一个大包。小偷不甘心，继续翻着柜子，条条生气了，就连着叮了二十几个包。小偷还是不甘心，就继续翻着柜子，条条暴跳如雷，又连着叮了一百多个包，小偷只好逃走了。我说：“条条你真是个小英雄！”看来条条还是个英勇的小门神。</p><p style=\"text-align: start;\">　　还有一次我失眠了，条条就在我耳边唱催眠曲，我很快就进入了梦乡。第二天早晨，我起来说：“条条你真是我的小福星！”条条回应着：“嗡嗡嗡。”仿佛在说：“谢谢你！”</p><p style=\"text-align: start;\">　　“我想把条条养下去！“可以，只要你好好对待它就行。”“好！”我和妈妈的对话被条条听见饿了。条条也很开心。啊！我真喜欢条条啊！</p>', 1, '2024-12-21 23:00:18');
INSERT INTO `pet_diary` VALUES (10, '自由的意义：小仓鼠的故事', '<p style=\"text-align: start;\">那次流泪，是因为失去了三只小仓鼠。那三只小仓鼠分别叫：乐乐、开开、花花。</p><p style=\"text-align: start;\">　　在仓鼠刚买来的时候，我特别喜欢它们。有一次我还把它们三个带到客厅，把它们放了出来。它们一看自己的“地牢”打开了，就欢快地跑了出来，钻进了被子里！我找了半天才把它们找出来。我们又到温室里玩，我觉得乐乐非常喜欢这里的含羞草，开开喜欢这里松软的泥土，而花花就喜欢这里的花儿。</p><p style=\"text-align: start;\">　　但是今天妈妈居然说要把我的朋友给放了！我大吃一惊，连忙问道：“妈妈，妈妈，您为何要把我的.小仓鼠给放了呢？”妈妈无奈地说：“因为这些小仓鼠本应该在大自然里快快乐乐地生活，却被那些人抓来换钱。你觉得他们在这儿生活得好，还是在大自然呢？”我想了又想：“嗯，您说得对，它们确实在大自然里生活的好。”“这才对哦，那我们去后花园里把它们放了吧。”小仓鼠又一次出了“地牢”，但这次就再也不会回来了。</p><p style=\"text-align: start;\">　　那天晚上，我躲在被子里，小声哭泣。我在流泪的时候非常懊恼，不断责骂自己：“我为什么要把它们放了呢？但如果不放的话，妈妈也受不了它们的气味呀！”</p><p style=\"text-align: start;\">　　就这样我想了一晚上，第二天早上，我终于想通了。我应该把小仓鼠放了，因为我更爱我的妈妈呀。</p>', 3, '2024-12-21 23:00:48');
INSERT INTO `pet_diary` VALUES (11, '照顾生命：养宠物的心态与技巧', '<p style=\"text-align: start;\">任何生物的生命都很珍贵，我们不能伤害它们，如果你想饲养动物就必需好照顾动物。</p><p style=\"text-align: start;\">　　不管要养什么动物，我们都应该停下来想一想，自己到底有没有能力照顾她。上网查一查，你想养的动物有哪些习性、有可能会染上哪些疾病、它身上有没有寄生虫。并且听听经验多的人是怎么照顾他们的。</p><p style=\"text-align: start;\">　　如果你没有查资料，对动物的习性一无所知，使它们生病了、受伤了，或是死掉了，你又要难过一阵了。养死了动物，除了自己会难过、伤心以外，这样对待动物的生命也是极为不公平的。人要先爱惜生命，才不会去蹧蹋身边任何一个生命。</p><p style=\"text-align: start;\">　　要养宠物，除了要好好照顾它以外，还要把自己该做的事、份内的事全部都做完，因为照顾宠物非常辛苦，不只费时，还要花费心力在他的身上。帮他查资料、喂它吃东西、带她看医生，以避免它生病、受伤、死亡。会照顾好动物的人，就等于你会照顾别人了，也许养宠物也能让你学到生命中的`要点，不是吗？其实要养好动物、宠物并不难，你只要试着去了解他们就好了。</p><p style=\"text-align: start;\">　　养动物也需要停、看听，如果能遵守这几点，养宠物也能成为生活中很大的乐趣。</p>', 1, '2024-12-21 23:05:36');
INSERT INTO `pet_diary` VALUES (12, '与小仓鼠的快乐时光', '<p style=\"text-align: start;\">我有一只心爱的小动物。你来猜一猜它是什么动物吧！</p><p style=\"text-align: start;\">　　它的脑袋很像一粒放大过的瓜子。眼睛黑黑的，小小的，却很有神，像两颗黑宝石一样闪烁，不过它好像从不眨眼，这一点我也觉得很奇怪。它的耳朵如同两把小扇子似的`竖在头顶上，耳朵眼小得只能住进一只蚂蚁。它粉嘟嘟的鼻子连着小小的三瓣嘴，嘴边还有几根白色的胡须，它的嘴巴经常鼓鼓的，因为它习惯将食物藏在颊囊里，留着慢慢吃。它的身体很小巧，胖乎乎的，黄白相间的皮毛显得很秀气，托在手心就像一个柔软的小绒球。它的尾巴小到你不仔细看都发觉不到。它粉嫩的爪子可尖锐了，抓起食物又快又准。</p><p style=\"text-align: start;\">　　这个小可爱活泼好动，可爱运动了，就像体操运动员一样，每天练习翻单杠，翻跟头，在它的“圆型跑步机”里趣味跑步。玩转轮，可是它的强项。它用爪子抓住转轮，迅速爬上去飞奔起来。每天放学回家我都会给它认真地打扫房间和喂食。一开始，它总很紧张地躲到木屑里。渐渐地，它好像认识了我这个小主人，每当我给它喂食时，它就急忙踮起脚，高昂着头，两只前爪缩到胸前，像是告诉我：“小主人，你可算来了，快给我倒食吧！”</p><p style=\"text-align: start;\">　　你知道是什么小动物了吗？哈哈，它就是聪明伶俐的小仓鼠。</p>', 1, '2024-12-21 23:05:55');
INSERT INTO `pet_diary` VALUES (13, '保护动物，珍惜伙伴：小太阳的启示', '<p style=\"text-align: start;\">我家有一只可爱的小宠物，我十分喜爱它。它就是小茶杯犬——小太阳。</p><p style=\"text-align: start;\">　　小太阳有一身金黄的毛，耳朵经常垂下来。但是在它睡觉的时候，一有什么奇怪的声音，它就把耳朵抬起来一些，便于观察觉有没有危。它的眼睛小巧玲珑，黑色的眼珠显得十分可爱。小太阳的鼻子十分灵敏，每当我端来狗粮时，它的`鼻子就引着它像箭一般向我跑来。它的嘴巴不大不小，可吃狗粮的时候就不注意形象了，它的身体非常小。小太阳的尾巴毛茸茸的，很舒服。</p><p style=\"text-align: start;\">　　有一次，它跑到饰品盒里玩，把妈妈的手环套在头上，发夹在尾巴上，神气活现地走出饰品盒，昂首挺胸地在给我表演时尚走秀，让我哭笑不得。我说：“你马上就要变成‘时尚达人’了吧！”</p><p style=\"text-align: start;\">　　还有一次，我让它去我房间里玩，小太阳一到我房间，就叼起小毛球玩了起来。然后，我把它抱到小床上去，可它跳下去了，跑到阳台上玩洋娃娃。我放起音乐，小太阳情不自禁地唱起“汪汪——”的歌。我每换一首，小太阳就换一种声音。</p><p style=\"text-align: start;\">　　我们要保护动物，保护自然。</p>', 3, '2024-12-21 23:06:19');
INSERT INTO `pet_diary` VALUES (14, '梦中的二哈：一场有趣的幻想', '<p style=\"text-align: start;\">今天我正在看抖音，刷到一家卖宠物的商店。今天他们卖的是二哈，二哈肥嘟嘟的，像个大枕头一样。“啊！好萌，好可爱呀。”我说，“我真的好想要。”说完，门铃敲响了。我打开门，门前只有一个包裹。“奇怪我也没有定包裹呀！”我想。打开一看是一只跟抖音上一样的二哈！</p><p style=\"text-align: start;\">　　你看，身体肥嘟嘟的，而且暖暖的。可以暖脚、暖手。像一个暖手炉一样暖暖的，可是比暖手袋好哦。他的眼睛如宝石一样闪亮，耳朵长长，灰色的尾巴摇摆着，好像在跟新主人（我）问好。</p><p style=\"text-align: start;\">　　我给二哈喂食时，发现二哈吃得津津有味，我想：狗食有这么香，怎么好吃吗？我尝了尝，马上就吐了出来。二哈瞪着眼睛看着我，眼珠子都要瞪出来了，嘴巴张得大大的\'，都能塞下一辆车了。这一天我去钢琴房时，发现钢琴旁有一些狗粮。我才发现原来狗子看我吃了它的食物，以为我没吃饱，所以在很多地方都藏着狗食。</p><p style=\"text-align: start;\">　　二哈天天拆家，我一走，它就拆东西了，拆沙发、拆狗屋、拆我的床……它还把我刚写完的作业吃了，以前都是弟弟把我作业撕了，“唉，一模一样啊。”我说道。</p><p style=\"text-align: start;\">　　“起床了！起床了！”奶奶说道。唉，原来是一场梦呀！白费我高兴一场。</p>', 1, '2024-12-21 23:06:42');
INSERT INTO `pet_diary` VALUES (15, '小乌龟与我的欢笑瞬间', '<p style=\"text-align: start;\">大家一定养了小宠物！我也养过。它是一只小乌龟，是我妈妈在我生日那天特意给我买的。</p><p style=\"text-align: start;\">　　小乌龟眼睛圆圆的，像绿豆一样小。针孔大小的鼻孔下有一张小巧玲珑的嘴。它有一对小耳朵，但一般我们看不见它，只看到它光秃秃的头。快看！小乌龟的头很可爱，上面有黄色和红色的条纹。我忍不住用手逗它。出乎意料的`是，它突然把头、脚和尾巴缩回到壳里。它一定以为这是最安全的地方。因为乌龟的壳很硬，看起来有点灰蓝色，而且还有八卦状的花纹，真的像个老古董。</p><p style=\"text-align: start;\">　　小乌龟不仅可爱，而且很有趣！有一次我想帮他洗澡，却被他的爪子狠狠地抓伤了。我疼得咬牙切齿，忍不住哭了。他看到我哭的时候有点傻，一直盯着我看，过了很久才慢慢爬。我生气地把它倒过来，小乌龟伸长脖子拱身子，身体一侧不停地支撑着前后脚，把它倒过来。没想到它有这么独特的技能。它抬头看着我，仿佛在对我说：“小姐姐，你现在快乐吗？”一开始被它抓住哭了，突然被它滑稽的样子逗乐了。</p><p style=\"text-align: start;\">　　哈！我喜欢我的小乌龟。</p>', 1, '2024-12-21 23:07:04');
INSERT INTO `pet_diary` VALUES (16, '小仓鼠小喵：我的温馨伙伴', '<p style=\"text-align: start;\">我的小仓鼠长得非常呆萌，它的名字叫小喵。</p><p style=\"text-align: start;\">　　它有一双又黑又亮的大眼睛，目光敏锐，再小的东西也逃不过它的眼睛；它毛色较白，中间有一道黑灰色的条纹；它的身体很柔软，像棉花一样；它胖乎乎的，从后面观察，像一只袖珍版的小龙猫；它的牙齿小小的却非常锋利，连花生都吃得动；它吃瓜子的时候会像人类一样剥皮哦，非常聪明。有时候它会把食物储存到它的颊囊里，等到特别饿的时候再吐出来吃，是不是很特别呀？</p><p style=\"text-align: start;\">　　它总是爱用小手抱着食物吃，很专注，生怕别人抢走了似的。它喜欢在白天呼呼大睡，晚上却到滚轮上开心的玩耍，经常把我从梦中惊醒。平时它很爱喝水，对着饮水机的嘴咕嘟咕嘟的.喝水，像小宝宝在喝奶，看上去很有趣。</p><p style=\"text-align: start;\">　　每当中午的时候，我吃完饭都带着它一起在楼下玩，它特别喜欢在阴凉的地方爬。今天我在楼下遛它的时候，突然它一动不动地站在那里，像一个木头人一样，我左戳戳右倒倒，它就是呆若木鸡，过了好半天它才慢慢的往前跑，我猜想它是不是在观察前方有没有危险？真是一只有警惕性的小仓鼠呀！</p><p style=\"text-align: start;\">　　我爱我的萌宠小仓鼠！</p>', 2, '2024-12-21 23:07:57');
INSERT INTO `pet_diary` VALUES (17, '跳跃的小家伙：生活中的欢乐源泉', '<p style=\"text-align: start;\">我家有个满身赘肉的小家伙，毛发是白色的，摸起来又软又松，它圆滚滚的脸上镶嵌着两颗红宝石，在阳光下，闪闪发亮，晶莹剔透。再往下看，咦？怎么凭空冒出来个＂上等＂黑珍珠？哦，原来是它小巧的鼻子，小鼻子下面两半儿的小嘴，可爱极了。</p><p style=\"text-align: start;\">　　但是，这个小家伙的下身也不甘示弱，整整比脸圆了2倍，毛发的下面是它的四条小短腿，弯弯的。它还有一个短尾巴，在毛的修饰下显得格外引人注目。</p><p style=\"text-align: start;\">　　它最爱吃的东西就是又红又长的萝卜和绿油油的蔬菜，每次看到它吃饭，都是一个样子，狼吞虎咽！就像是虐待它，好几天不给它饭吃似的。</p><p style=\"text-align: start;\">　　它最擅长的运动就是跳，每次放它出去时，它都是以蹦蹦跳跳的形式出场，后来，又以蹦蹦跳跳的.形式收场……</p><p style=\"text-align: start;\">　　它还是一个很好的“暖宝宝”，每次在冬天我瑟瑟发抖时，它就用它肥肥的身体帮助我取暖。嘿嘿，只要有它，冬天就不用再为受冻而发愁啦！而且比外面买的暖宝宝好用多了。外面卖的又贵又不好，但是家里有个现成的，总是感觉很方便。可以抱起来就用，啊！那种感觉应该就是幸福吧！</p><p style=\"text-align: start;\">　　猜到我家的小家伙是谁了吗？你想不想家里拥有一只跟我一样的小家伙呢？</p>', 1, '2024-12-21 23:08:15');
INSERT INTO `pet_diary` VALUES (18, '宠物狗球球：我生活中的小精灵', '<p style=\"text-align: start;\">我有一只宠物狗，名叫球球。正是因为它的到来，我的生活才变得丰富多彩。</p><p style=\"text-align: start;\">　　球球的贪吃，是你想象不到的。记得它刚到我们家时，只有两三个月大。那时我在上学，回来时见了它，它十分害怕，对着我一阵吠叫。为了让它对我不再陌生，妈妈给了我一根火腿肠，让我喂给它吃。可谁知才一撕开包装纸，送到它旁边，还没等我反应过来，半截火腿肠已不见踪影，把我吓了一跳，谁知它早已吃完了嘴里的，又张大嘴巴，津津有味地吃着剩下的半截。</p><p style=\"text-align: start;\">　　球球的胆小，是你无法猜测的。一次，我带着它去朋友家玩。很快，朋友走了出来，把我们领了进去。朋友家是织布的`，一进去，机器的响声也越来越大。很快，球球受不了了，像发了疯似的往外冲。无奈它被绳子束缚着，无法逃脱，只得在那儿“呜，呜”地叫唤。</p><p style=\"text-align: start;\">　　球球的顽皮，是你无法想象的。在它到家的这段时间，家里的拖鞋总是离奇失踪。好奇心极强的我于是在暗中观察。结果发现是球球拿的。我跟着它，终于找到了满地的拖鞋，有不少拖鞋已经英勇“离世”了，真不愧是“拆家小能手。”</p><p style=\"text-align: start;\">　　这就是我的宠物，一个贪吃、胆小、顽皮的狗！</p>', 1, '2024-12-21 23:08:32');

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
