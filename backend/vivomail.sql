/*
 Navicat Premium Data Transfer

 Source Server         : school
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : vivomail

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 21/12/2020 12:43:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('zhangsan', '13598375916', '江苏省 苏州市 常熟市 常熟理工学院');
INSERT INTO `address` VALUES ('lisi', '18568299841', '江苏省 苏州市 常熟市 常熟理工学院');
INSERT INTO `address` VALUES ('wangwu', '18572938545', '江苏省 苏州市 常熟市 常熟理工学院');
INSERT INTO `address` VALUES ('zhaoliu', '13272938892', '江苏省 苏州市 常熟市 常熟理工学院');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `carousel_id` int(0) NOT NULL AUTO_INCREMENT,
  `carousel_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carousel_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, '手表', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20200928/20200928143020658445_original.png');
INSERT INTO `carousel` VALUES (2, 'vivo S7e', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20201123/20201123111501480494_original.jpg');
INSERT INTO `carousel` VALUES (3, 'IQOO U1x', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20201103/202011031426305379_original.jpg');
INSERT INTO `carousel` VALUES (4, 'IQOO Z1x', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20200709/20200709110544124171_original.jpg');
INSERT INTO `carousel` VALUES (5, '盛典', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20201205/20201205151128277410_original.jpg');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `color_id` int(0) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`color_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, '雾光幻境');
INSERT INTO `color` VALUES (2, '星空蓝');
INSERT INTO `color` VALUES (3, '月影黑');
INSERT INTO `color` VALUES (4, '冷萃银');
INSERT INTO `color` VALUES (5, '白色');
INSERT INTO `color` VALUES (6, '黑色');

-- ----------------------------
-- Table structure for color_t
-- ----------------------------
DROP TABLE IF EXISTS `color_t`;
CREATE TABLE `color_t`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `color_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color_t
-- ----------------------------
INSERT INTO `color_t` VALUES (1, 1);
INSERT INTO `color_t` VALUES (1, 2);
INSERT INTO `color_t` VALUES (1, 3);
INSERT INTO `color_t` VALUES (1, 4);
INSERT INTO `color_t` VALUES (2, 1);
INSERT INTO `color_t` VALUES (2, 2);
INSERT INTO `color_t` VALUES (2, 3);
INSERT INTO `color_t` VALUES (3, 1);
INSERT INTO `color_t` VALUES (3, 2);
INSERT INTO `color_t` VALUES (3, 3);
INSERT INTO `color_t` VALUES (4, 1);
INSERT INTO `color_t` VALUES (4, 3);
INSERT INTO `color_t` VALUES (4, 4);
INSERT INTO `color_t` VALUES (5, 1);
INSERT INTO `color_t` VALUES (5, 2);
INSERT INTO `color_t` VALUES (5, 4);
INSERT INTO `color_t` VALUES (6, 1);
INSERT INTO `color_t` VALUES (6, 2);
INSERT INTO `color_t` VALUES (7, 1);
INSERT INTO `color_t` VALUES (7, 2);
INSERT INTO `color_t` VALUES (7, 3);
INSERT INTO `color_t` VALUES (8, 1);
INSERT INTO `color_t` VALUES (8, 3);
INSERT INTO `color_t` VALUES (8, 4);
INSERT INTO `color_t` VALUES (9, 5);
INSERT INTO `color_t` VALUES (9, 6);
INSERT INTO `color_t` VALUES (10, 5);
INSERT INTO `color_t` VALUES (10, 6);
INSERT INTO `color_t` VALUES (11, 5);
INSERT INTO `color_t` VALUES (12, 6);
INSERT INTO `color_t` VALUES (13, 5);
INSERT INTO `color_t` VALUES (14, 6);
INSERT INTO `color_t` VALUES (15, 5);
INSERT INTO `color_t` VALUES (15, 6);
INSERT INTO `color_t` VALUES (16, 5);
INSERT INTO `color_t` VALUES (16, 6);
INSERT INTO `color_t` VALUES (17, 5);
INSERT INTO `color_t` VALUES (18, 6);
INSERT INTO `color_t` VALUES (19, 5);
INSERT INTO `color_t` VALUES (20, 5);
INSERT INTO `color_t` VALUES (21, 6);
INSERT INTO `color_t` VALUES (22, 6);
INSERT INTO `color_t` VALUES (23, 5);
INSERT INTO `color_t` VALUES (24, 6);
INSERT INTO `color_t` VALUES (25, 5);
INSERT INTO `color_t` VALUES (25, 6);
INSERT INTO `color_t` VALUES (26, 5);
INSERT INTO `color_t` VALUES (27, 5);
INSERT INTO `color_t` VALUES (28, 6);
INSERT INTO `color_t` VALUES (29, 6);
INSERT INTO `color_t` VALUES (29, 6);
INSERT INTO `color_t` VALUES (30, 5);
INSERT INTO `color_t` VALUES (31, 6);
INSERT INTO `color_t` VALUES (31, 6);
INSERT INTO `color_t` VALUES (32, 5);
INSERT INTO `color_t` VALUES (33, 6);
INSERT INTO `color_t` VALUES (34, 6);
INSERT INTO `color_t` VALUES (35, 5);
INSERT INTO `color_t` VALUES (36, 5);
INSERT INTO `color_t` VALUES (36, 6);
INSERT INTO `color_t` VALUES (37, 5);
INSERT INTO `color_t` VALUES (37, 6);
INSERT INTO `color_t` VALUES (38, 5);
INSERT INTO `color_t` VALUES (39, 6);
INSERT INTO `color_t` VALUES (40, 6);
INSERT INTO `color_t` VALUES (41, 5);
INSERT INTO `color_t` VALUES (42, 6);
INSERT INTO `color_t` VALUES (43, 5);
INSERT INTO `color_t` VALUES (44, 5);
INSERT INTO `color_t` VALUES (45, 6);
INSERT INTO `color_t` VALUES (46, 6);
INSERT INTO `color_t` VALUES (47, 5);
INSERT INTO `color_t` VALUES (48, 6);
INSERT INTO `color_t` VALUES (49, 5);
INSERT INTO `color_t` VALUES (50, 5);
INSERT INTO `color_t` VALUES (51, 6);
INSERT INTO `color_t` VALUES (52, 6);
INSERT INTO `color_t` VALUES (53, 5);
INSERT INTO `color_t` VALUES (54, 5);
INSERT INTO `color_t` VALUES (55, 6);
INSERT INTO `color_t` VALUES (56, 5);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(0) NOT NULL AUTO_INCREMENT,
  `comment_user_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_user_star` int(0) NULL DEFAULT NULL,
  `comment_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150603/6c0a8e7ebddbd541780445358f445b9dt.png', 'vivo67673101329', 5, '我一直都用 vivo手机，vivo手机一如既往的好用！超喜欢这款手机！', 3);
INSERT INTO `comment` VALUES (2, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201207192916/fa4c9331810248788a4baa6b4f1de506.jpg', '爱尚装饰', 5, '从X6一直用到现在，俺家的都是vivo手机。这款手机很不错', 3);
INSERT INTO `comment` VALUES (3, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150043/30033b0f8bab053bed7ea4f659896ab3t.png', 'vivo21502263384', 5, '质量非常好，美观，一直非常信赖的一款产品，会推荐给朋友们购买。', 4);
INSERT INTO `comment` VALUES (4, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150242/feb6138087d53f38e3e8c5e7edd75f1dt.png', '未设置昵称', 4, '给我妈买的，实惠价美挺好看，用着也不错，下单第三天就收到手机了', 4);
INSERT INTO `comment` VALUES (5, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150043/30033b0f8bab053bed7ea4f659896ab3t.png', 'vivo21502263384', 5, '质量非常好，美观，一直非常信赖的一款产品，会推荐给朋友们购买。', 5);
INSERT INTO `comment` VALUES (6, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150242/feb6138087d53f38e3e8c5e7edd75f1dt.png', '未设置昵称', 3, '给我妈买的，实惠价美挺好看，用着也不错，下单第三天就收到手机了', 5);
INSERT INTO `comment` VALUES (7, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150142/c8adcfd290a0b7a9fdb8cbd9c80b55b9t.png', '众妙之门', 5, '手机很喜欢，速度流畅，电池耐用，一款不错的手机。', 6);
INSERT INTO `comment` VALUES (8, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150303/6a1892a54ff5bd641593b210e4eef043t.png', '明天会更好', 5, '手机质量好，物流速度也快。一直用vivo手机值得信赖哟！', 6);
INSERT INTO `comment` VALUES (9, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201203231429/dbefb0e6ffef4071af1cc97893cdf585.jpg', 'vivo88773716481', 5, '手机反应很快。用起来很不错！', 7);
INSERT INTO `comment` VALUES (10, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150359/c9691ecae2dee1cc89f7f876bd6c8d8et.png', '霜露小可jfw', 4, '第一次官网购买，和实体店里一样，价格便宜，用着跟流畅，质量真心不错，触摸灵敏，非常不错，点赞', 7);
INSERT INTO `comment` VALUES (11, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200517101658/2cfbfb5bde3742508147278dd5123630.jpg', '、***嗥', 5, '太棒了，高颜值的性能怪兽，不用玩都知道，因为我用的是第一代IQOO真的特别好！！支持IQOO', 8);
INSERT INTO `comment` VALUES (12, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200925112250/a4fa082eb705437cbcfe7c729c7286a2.jpg', 'B***e', 5, '女朋友很喜欢，哈哈哈，vivo牛逼，iQOO牛逼', 8);
INSERT INTO `comment` VALUES (13, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150334/76c0cb671afff853a03adb4fa65f3030t.png', '阿颜', 5, '数据线配33万闪充好快，看到有优惠又下手买一个！！', 9);
INSERT INTO `comment` VALUES (14, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150650/817585e0ad8761ec3c3d3d4c61e6ed7ct.png', 'vivo62222626156', 5, '数据线和原装的差不多，充电速度还挺多的质量还不错，推荐购买', 9);
INSERT INTO `comment` VALUES (15, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200925180245/7ff44b57f9424bdfa5243f6ad16ed3c5.jpg', '果果', 4, '我觉得很好', 10);
INSERT INTO `comment` VALUES (16, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150605/5284e6e3ffdef34e432588ec2aaa822dt.png', '金**', 5, '刚收到货，感觉还不错！包装完整！试了一下，和原装配的差不多！', 10);
INSERT INTO `comment` VALUES (17, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150240/ce366a861f11bd8bdd585698d9aa323bt.png', '成成追击', 5, '确认过眼神是原装无疑，家里一个公司一个从此不再有续航焦虑', 11);
INSERT INTO `comment` VALUES (18, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20181209/ba01c9584552477ababdf8d11be11627.jpg', '马子业', 4, '充电器是原装，充电速度和原机，一模一样，感谢vivo官方带来的黑科技，非常棒', 11);
INSERT INTO `comment` VALUES (19, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150909/07b04f7c72183ccdb48966a5061e7d63t.png', 'v***5', 5, '可以', 12);
INSERT INTO `comment` VALUES (20, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20180923/1732f0dedfa14503981d0f7390f797a7.jpg', '智**', 4, '很好！！！！！！！！！！！！', 12);
INSERT INTO `comment` VALUES (21, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201103143854/62deb1ac8ffe4ac7b639220cb8c6ca6a.jpg', '咖啡豆', 5, 'VIVO 65W多口超快闪充，外观做工精美，充电超快！', 13);
INSERT INTO `comment` VALUES (22, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190307/6110ce462cd342459ebff636f9d72e14.jpg', 'zlq197421', 5, '宝贝已收到，外包装完好无损，外观设计美观，材质非常好，质量杠杠的好，充电速度特别快，快递也特别快。客服态度服务好。', 13);
INSERT INTO `comment` VALUES (23, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150530/c874512d95953e83c1e2511867a233c0t.png', '匿名用户', 5, '厂家原装正品，包装精美，充电速度很快，做工精致，闪充时环形灯会高亮。很棒！', 14);
INSERT INTO `comment` VALUES (24, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190531/7949dba7fee742b88bfdf0d6667f154c.jpg', '改变未来', 4, 'iqoo使用赠送数据线显示超级闪充，充电速度快，值得购买', 14);
INSERT INTO `comment` VALUES (25, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150043/7cda6fcb37f81bbcad1f8fb4cb01cf4dt.png', 'vivo88189336335', 3, '物流慢', 15);
INSERT INTO `comment` VALUES (26, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200812225448/bfd45e008da645b0ab6d201575637eb4.jpg', '一无所有', 5, '物流非常快 东西很喜欢，原装正品，包装无破损', 15);
INSERT INTO `comment` VALUES (27, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20180708/c8000da310114658a5d30dc8fcb9967b.jpg', '苍穹丶梦叶', 5, '对于这个东西的感觉还好，打游戏的时候可以用一用。闲时的话没有必要，闪充就已经很快了。推荐主播使用。', 16);
INSERT INTO `comment` VALUES (28, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150334/86959bbc11802c6eafbb1981514db86at.png', '不***定', 5, '非常好，推荐购买，iQOO手机的专属线，买了QOO\r\n一定要买这条线，打游戏必备！', 16);
INSERT INTO `comment` VALUES (29, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20180628/773b551863e941f5911186ab9ee6cc31.jpg', '天意95110', 4, '收到货非常满意!手机壳与图片一致，非常完美。', 17);
INSERT INTO `comment` VALUES (30, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150332/f89c048244c0c8d6c9a8bb5e06bb525dt.png', 'vivo17351740483', 5, '保护壳很精美，双11优惠再买一个备用。', 17);
INSERT INTO `comment` VALUES (31, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150304/48cd85f4a04c81b526172ae31a518ad0t.png', '大白鲨', 5, 'vivo的包装不错，快递运送也快，东西也很不错。钢化膜的质量也很不错，就是有一点不好贴，贴了好几次总于才达到完美的状态', 18);
INSERT INTO `comment` VALUES (32, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200803165328/d7dda85b5b10453fb0a70155f108d3b5.jpg', '戏天', 5, '钢化膜非常的好，也非常的滑。', 18);
INSERT INTO `comment` VALUES (33, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150140/a6e4416cf06316a5611115ed2af9e1ect.png', '高兴吉米xWw', 5, '原厂的就是不一样，手感无敌。', 19);
INSERT INTO `comment` VALUES (34, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150333/831266ea9d0337f8a18c92d2ff2dc0e9t.png', '晴有晴天', 5, '非常好！完美贴合！不亏是原装！', 19);
INSERT INTO `comment` VALUES (35, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150303/6a1892a54ff5bd641593b210e4eef043t.png', '彭先生', 4, '很喜欢这种磨砂的，手感很好，完美贴合手机，满意！', 20);
INSERT INTO `comment` VALUES (36, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201114175150/8a6ab8a60dcc47cc843cbaeb72e8eac4.jpg', '桃源布兰登XVL', 5, '很不错，简单，漂亮。卡的特紧', 20);
INSERT INTO `comment` VALUES (37, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20191125005812/697ffb0f43c54f57944d5928cc7c15f0.jpg', '1822882473', 5, '质量很好……非常不错。黑色很大气。', 21);
INSERT INTO `comment` VALUES (38, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150212/7b24c2346ebbc4d43bca945a68aba963t.png', '满***河', 4, '非常快的物流壳也挺好看的', 21);
INSERT INTO `comment` VALUES (39, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150332/f89c048244c0c8d6c9a8bb5e06bb525dt.png', '五***J', 4, '今天刚刚收到，上手很舒服，质量很好，好评。', 22);
INSERT INTO `comment` VALUES (40, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150213/856fe642c5219fc2b2feb60de1519024t.png', '匿***户', 4, '官网买的质量就是好～', 22);
INSERT INTO `comment` VALUES (41, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20180628/773b551863e941f5911186ab9ee6cc31.jpg', '天意95110', 5, '收到货非常满意!手机壳与图片一致，非常完美。', 23);
INSERT INTO `comment` VALUES (42, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150332/f89c048244c0c8d6c9a8bb5e06bb525dt.png', 'data-v-2e85a2a6', 5, '保护壳很精美，双11优惠再买一个备用。', 23);
INSERT INTO `comment` VALUES (43, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20191125005812/697ffb0f43c54f57944d5928cc7c15f0.jpg', '1822882473', 5, '质量很好……非常不错。黑色很大气。', 24);
INSERT INTO `comment` VALUES (44, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150212/7b24c2346ebbc4d43bca945a68aba963t.png', '满***河', 4, '非常快的物流壳也挺好看的', 24);
INSERT INTO `comment` VALUES (45, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200904203333/d25c1f0923ae48169e952e20b153f3ba.jpg', '情***已', 5, '耳机包装很好，外观也很不错，我手机支持一键闪连非常方便，还能定制音效和触控键。耳机音质也挺不错，摘下耳机自动停止播放太人性化了，具体续航要使用之后再看', 25);
INSERT INTO `comment` VALUES (46, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20191204013459/46107874725243cb9ba3503bace8061c.jpg', 'Sherry', 5, '体积方面携带 耳机也还可以 颜值也还行 手感也还行方面携体积方面携带 耳机也还可以 颜值也还行 手感也还行方面携带 耳机也还可以 颜值也还行 手感也还行带 耳机也还可以 颜值也还行 手感也还行体积方面携带 耳机也还可以 颜值也还行 手感也还行方面携体积方面携带 耳机也还可以 颜值也还行 手感也还行方面携带 耳机也还可以 颜值也还行 手感也还行带 耳机也还可以 颜值也还行 手感也还行', 25);
INSERT INTO `comment` VALUES (47, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150910/1bba69f001e629190a156c333f476be3t.png', '小**', 5, '收到了， 音质很好， 线的材料也很不错 ', 26);
INSERT INTO `comment` VALUES (48, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201118200850/046b15eb9f374f1283a3a665f920ec74.jpg', '東', 4, '官网物流一般都很 Nice，耳机用了一个星期多还不错，good了', 26);
INSERT INTO `comment` VALUES (49, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150418/b59cc5fdcecb79ccb2c76ab644a00346t.png', 'vivo61087862266', 5, '感觉这款耳机很好，戴着很舒服。音质很满意', 27);
INSERT INTO `comment` VALUES (50, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150241/1fd6494bf8e87475d0967405441d8aa2t.png', 'vivo23753253413', 5, '音质真心不错，低音效果好，奈斯！不愧是步步高，专业级音乐，希望以后的产品像它的名字一样，步步高升', 27);
INSERT INTO `comment` VALUES (51, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150333/831266ea9d0337f8a18c92d2ff2dc0e9t.png', 'vivo13715016249', 5, '这耳机经济实惠价，音质非常棒。', 28);
INSERT INTO `comment` VALUES (52, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150140/27292eccf45617e9e33bdc769877ed61t.png', '威莲童品', 4, '耳机很好用，原装的，质感就是不一样', 28);
INSERT INTO `comment` VALUES (53, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150304/06a48231d7621e90333bf2cdbf2e8c73t.png', 'Charles', 5, '音质挺好的，比原装舒服', 29);
INSERT INTO `comment` VALUES (54, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150603/40c54d16edf23e5b4e350e68edcac74ct.png', '娉婷袅袅', 5, '物流神速，有线耳机戴起来感觉不习惯了，主要是用来唱歌的，听的音响效果很棒，不知道唱的音响效果如何了，后期试过再评', 29);
INSERT INTO `comment` VALUES (55, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200306215243/238010cd826c4c6c80f5b1667a204f4c.jpg', '恍然大悟', 4, '听歌的效果比莫宝的好太多了！', 30);
INSERT INTO `comment` VALUES (56, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150910/cb89565b8d7cd216c5d13efd7c1d168ct.png', '张文丰', 5, '看到包装盒的那一刻，爱了！', 30);
INSERT INTO `comment` VALUES (57, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201201192012/4d48ddc9dcf64452ba17992f64fb7a83.jpg', '巧啊', 5, '很喜欢这个耳机，充电快也挺持久的，之前耳机老坏于是买了这个', 31);
INSERT INTO `comment` VALUES (58, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190120/1bde702601d84fec9e8a7b56dbfafc94.jpg', '鸭梨', 4, '音质好，没话说，一直用vivo，非常好用', 31);
INSERT INTO `comment` VALUES (59, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150357/20b5489f13b95607210cad26998d399dt.png', 'v***0', 1, '东西质量可以。就是啥都要会员。一般重要的东西没会员看不了听不了。小度会员开通也好贵158块钱。用途不大哦。', 32);
INSERT INTO `comment` VALUES (60, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201029191848/cb76c8cd18e64b81bda0adcc15a8e149.jpg', '客单价吖', 5, '挺好的', 32);
INSERT INTO `comment` VALUES (61, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150213/e3593d397aceb156cc8984eb817624a8t.png', '未设置昵称', 5, 'vivo的忠实粉，非常满意这台vivo watch，主打健康运动，想要的功能基本都有了，没拿到时以为表盘大会很重，实际戴在手上很轻感觉不到重量，希望攻城狮们继续开发新的功能，加油vivo！', 33);
INSERT INTO `comment` VALUES (62, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201203011050/dc91efd7eeda4c3d99f86f1c6524512e.jpg', '老兄', 5, '不错，棒棒哒，带着上课时，计时，看时间都不错，比较方便，再有就是训练时计算热量消耗也不错，而且最重要的是有颜值，搭配比较随意', 33);
INSERT INTO `comment` VALUES (63, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150213/e3593d397aceb156cc8984eb817624a8t.png', '未设置昵称', 5, '挺好的', 34);
INSERT INTO `comment` VALUES (64, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201203011050/dc91efd7eeda4c3d99f86f1c6524512e.jpg', '老兄', 5, '不错，棒棒哒，带着上课时，计时，看时间都不错，比较方便，再有就是训练时计算热量消耗也不错，而且最重要的是有颜值，搭配比较随意', 34);
INSERT INTO `comment` VALUES (65, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200527063244/9460c32665914bb48ac7a5ffb1ef31ff.jpg', '红', 5, '很好用的万能遥控器', 35);
INSERT INTO `comment` VALUES (66, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201106082124/7175dc70495d4180b414ed0a8c500dab.jpg', '姹紫香橼oGV', 5, '很好', 35);
INSERT INTO `comment` VALUES (67, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200909223350/26f8f76f44ca45f69e9970ad4b6ae806.jpg', '何曾畏惧悲欢', 4, '不错', 36);
INSERT INTO `comment` VALUES (68, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200531205743/5da88c87f0a4436c87e5ae7bd60695dc.jpg', '刘鑫', 5, '很好', 36);
INSERT INTO `comment` VALUES (69, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190629/0d1ebf308acd4f0889842841c6f88a30.jpg', '衿琯ミ', 5, '阿姨呢把我的帝珀饿了李红霞乐迪个你个和鹅岭哦', 37);
INSERT INTO `comment` VALUES (70, 'https://wx.qlogo.cn/mmopen/vi_32/oQAT6caNoKdD8ETyRTmseRKvHtS15G2GmJJVqia7SaiaM8SFZRY080GxOo9QlCqxP3EcjZ4ek6ECiaGHDVSWMXbjA/132', '张***建', 4, '可以', 37);
INSERT INTO `comment` VALUES (71, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190313/9bcee7f286804947b331fa6d93eed78f.jpg', '缚已', 5, '挺好的', 39);
INSERT INTO `comment` VALUES (72, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150419/69dc557e26728334a990e5c2b25314cdt.png', '小**', 5, 'OK', 39);
INSERT INTO `comment` VALUES (73, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200814175254/139df205e8e3404d820b0ab8ba466779.jpg', '留***手', 4, '这个用起来很好，射速很快，客服也很贴心', 41);
INSERT INTO `comment` VALUES (74, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20180923/b23e8ce69fe543d68b878214c6a57a4e.jpg', '稳**', 5, '不错打算再买一对。先买了一对试了试', 41);
INSERT INTO `comment` VALUES (75, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150213/8cde62bca41fc83d450e5bb755f47b00t.png', '李德琴', 5, '哈哈哈哈哈哈', 42);
INSERT INTO `comment` VALUES (76, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201114141848/5f305b6ff58e49b4a39eeeb971c789bc.jpg', 'doctor strange', 4, '好', 42);
INSERT INTO `comment` VALUES (77, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150213/8cde62bca41fc83d450e5bb755f47b00t.png', '李德琴', 5, '哈哈哈哈哈哈', 43);
INSERT INTO `comment` VALUES (78, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201114141848/5f305b6ff58e49b4a39eeeb971c789bc.jpg', 'doctor strange', 4, '好', 43);
INSERT INTO `comment` VALUES (79, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150419/f1b3aa98f63ba2f343a397aa1509e96et.png', '匿名用户', 5, '可以', 44);
INSERT INTO `comment` VALUES (80, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200715175219/cec9c1a3e1f649a8b765889e5a2b2397.jpg', '韦忠勇', 2, '不好用，没大疆的好用', 44);
INSERT INTO `comment` VALUES (81, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20170710/0945e966df524fdcb3af100a86fe5fe9.jpg', '凯的名字', 5, '挺好的，手感也不错，值得购买。', 45);
INSERT INTO `comment` VALUES (82, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20181206/a7d10dd3b39d424a958b93867bdb2221.jpg', '天若有情', 5, '今天收到货了，质量很不错，鼠标垫的手感还是不错哦，总体上感觉质量不错', 45);
INSERT INTO `comment` VALUES (83, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201207181925/6e7f29ed5c4b4f8d9dfb3ab39445e18b.jpg', '蠱', 4, '个人感觉不错很好用就是有的时候卡视角不过这个问题很容易解决', 46);
INSERT INTO `comment` VALUES (84, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201205013111/bd96cb38ac914eabbf56a04ff50ead00.jpg', '宝宝', 5, '太好用了', 46);
INSERT INTO `comment` VALUES (85, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20200807011808/01c7db72b87e418fa372d82cb10302c3.jpg', '火花塞', 5, '第一次用这款手柄，感觉还可以，颜色漂亮喜欢橘色。', 47);
INSERT INTO `comment` VALUES (86, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190202/6c5e57169aea48dea1fbe855f0bc4744.jpg', '汪小猪', 5, '拿到手玩了一会儿还不错，就很棒。', 47);
INSERT INTO `comment` VALUES (87, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201018194510/60e3d4e2cba749498aa742b52771500b.jpg', '宇***爱', 5, '本键盘不错，吃鸡，cf，QQ飞车都可以，只要你可以添加的游戏，这个键盘都可以任你操作，就是有些不热门的游戏没有预设键盘，需要自己摆放键位。', 48);
INSERT INTO `comment` VALUES (88, 'https://userglobal-vivofs.vivo.com.cn/useravatar/20201106122117/e18e39515b6d41b49bd40df2dde11fad.jpg', '吴思锐', 4, '不错，几乎没什么延迟', 48);
INSERT INTO `comment` VALUES (89, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20190918/5d7fe310647b4eb2bfa9fcbcf4461870.jpg', 'vivo枣枣', 2, '呵呵', 50);
INSERT INTO `comment` VALUES (90, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150140/27292eccf45617e9e33bdc769877ed61t.png', '额***去', 5, '自己感觉还不错，送给公公的', 54);
INSERT INTO `comment` VALUES (91, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150417/b22334bedc4a9004d914c8eeeb8e90cat.png', 'vivo01597672955', 5, '很好', 56);
INSERT INTO `comment` VALUES (92, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150305/1192101eb64f2cf20a6edd3c06b58e56t.png', 'peng689158', 4, '手机不错一直都买vivo，家人也用，价格不贵，支持国产越来越好', 1);
INSERT INTO `comment` VALUES (93, 'https://shequwsdl.vivo.com.cn/shequ/shequ/20181220/329dd6022bc748e28573e1303858d158.jpg', '飞***天', 5, '扑照清晰，操作流畅，灵动护眼屏，机身轻盈优雅，挺不错，反应快，物流快，大气！！', 1);
INSERT INTO `comment` VALUES (94, 'https://userglobal-vivofs.vivo.com.cn/RnRBscqz28sppmra/defaultimage/20201014150241/1fd6494bf8e87475d0967405441d8aa2t.png', '匿***户', 5, '物流很快，手机外观好看，朋友很喜欢，手机性能等用之后再评价！', 1);

-- ----------------------------
-- Table structure for comment_img
-- ----------------------------
DROP TABLE IF EXISTS `comment_img`;
CREATE TABLE `comment_img`  (
  `comment_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_img
-- ----------------------------
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/8D1122215B25100144AE25678BD06B5E55C7BC2850ECD54F562C7C4C1D10E3A1_w1512_h2016.jpg_w200-h200.jpg.webp', 1);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/7383275705A0C46119213148AE76D26882052CE9F25A01E43B706E9FCD1E3C57_w1512_h2016.jpg_w200-h200.jpg.webp', 1);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/1BE6EE8BD5B658A0E86684BE2989BE2E654F36CAE366DFA8E6A1ABB6DD79C919_w1512_h2016.jpg_w200-h200.jpg.webp', 2);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/E6B34A97BB40F3B735BA8DAB5D41E1119379F3F6FCB16CC45C97E146500AA1E2_w1512_h2016.jpg_w200-h200.jpg.webp', 2);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/E519F50187549FE104DDB96A66ADCB348188BCE2AE8C434F3530916B7F591561_w864_h1152.jpg_w200-h200.jpg.webp', 3);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/4D741F85DBE616F4150988D1F78F9DDC05F839AC68503170C61441791EF15F4C_w864_h1152.jpg_w200-h200.jpg.webp', 3);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/D2B6471C81D86B62F8282F7F71DE408FFD41799F91D2F70BB28CA70162034E24_w1808_h4000.jpg_w200-h200.jpg.webp', 4);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/AA471CF2C3DC3E6B2733309D5CC2103F2AFCAE8F4B00BC144233E08828A5C92D_w1808_h4000.jpg_w200-h200.jpg.webp', 4);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/E519F50187549FE104DDB96A66ADCB348188BCE2AE8C434F3530916B7F591561_w864_h1152.jpg_w200-h200.jpg.webp', 5);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/CB7D674DA01B25DBBF47D97FD407F3E9EDCABC78E4B317E4D737BD4CE0C75C8D_w864_h1152.jpg_w200-h200.jpg.webp', 5);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/D2B6471C81D86B62F8282F7F71DE408FFD41799F91D2F70BB28CA70162034E24_w1808_h4000.jpg_w200-h200.jpg.webp', 6);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/AA471CF2C3DC3E6B2733309D5CC2103F2AFCAE8F4B00BC144233E08828A5C92D_w1808_h4000.jpg_w200-h200.jpg.webp', 6);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201117/507D2A8694696526EED2885B1CEFE1259C2A9290E2A9ACA23D8348F52EF63323_w2304_h1728.jpg_w200-h200.jpg.webp', 7);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201117/511498EE475934A8CBFAFFEE8FA63D1915C680C85C8B98831DED4B21EC94465A_w864_h1152.jpg_w200-h200.jpg.webp', 7);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201114/D621E2A401D7AF02A92D2043EB93C729E4B28DAC4C745DEF8CEC7A7B5C05FAF5_w864_h1152.jpg_w200-h200.jpg.webp', 8);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201114/B71D98CDD5A588B971C900D41F6927EB8FC5E7AD23D69D3394ACE6F90CBE3C62_w864_h1152.jpg_w200-h200.jpg.webp', 8);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/3E23EFAF2DCDF52ED4C63BB3C7CC603085637FF6ED09ACED847C6F82F9251024_w1080_h1440.jpg_w200-h200.jpg.webp', 9);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/E3F75E79D7C5D78E4F4C4FE26772F259C0D09BD3D6E65C91DAB138955645F234_w1080_h1440.jpg_w200-h200.jpg.webp', 9);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201130/CAD0D7FEEC0750508155DB0422932586EC223F5DBD722385B3ACB784F9A6950B_w1080_h1440.jpg_w200-h200.jpg.webp', 10);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201130/5D5FB5B09D2BD7A15B3DBEAC9BA169B98239776F45C0CB5293EB61B29F862317_w1080_h1440.jpg_w200-h200.jpg.webp', 10);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/832ED8A92CD5104F21DD1B7CB5ACF31663B0599183E82A9B6FF00892EBC28C3C_w1512_h2016.jpg_w200-h200.jpg.webp', 11);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/54B496C93759FC88A67FD4EE3F5DC9099D18E92E4D108BF74214593FA0A454D3_w2016_h1512.jpg_w200-h200.jpg.webp', 11);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/84879E4ED7C810EECE8D6B38853850C21DB1A4D81AC9FE8F968D98BC8A23AA91_w2080_h1170.jpg_w200-h200.jpg.webp', 12);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/B1B5F7A26939008A30BDF4F4C8061828112940D5D6E16526D47C50BDD41EE6C6_w2016_h1512.jpg_w200-h200.jpg.webp', 12);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201107/E9E607026CC8EA5983EAB0CED3467E41317343EFDE7EFDA4639495F3BB331C8C_w1500_h2000.jpg_w200-h200.jpg.webp', 13);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201107/E2ACF4B4DBD7B2D46335B6E158CEABC286809844A7A5427B9FD18E100645E5F1_w1500_h2000.jpg_w200-h200.jpg.webp', 13);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201016/11CB9E2F50F79E4F2CA144DD1DA2D38723D318EAF154EF7B5EC26444A285286B_w864_h1152.jpg_w200-h200.jpg.webp', 14);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201016/B9AB8975732B09459FC626CD7231610C6BA3BF2D634AF219F880998D49F0B923_w864_h1152.jpg_w200-h200.jpg.webp', 14);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201122/0949AE0E0B458D1CE24E484C9179DAF2E539E822655017746CB438EFF7A43EAA_w864_h1152.jpg_w200-h200.jpg.webp', 15);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201105/5432217C749EFCA0D4B9BB3E211B9A24079C261A084CAB732AAEE6E7D9965708_w1008_h2016.jpg_w200-h200.jpg.webp', 16);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201105/BFDB1FB7D26D0B8DB56B2BCCAFA3158DEAA2498C4A2BFE05D1865A9742910E97_w4032_h2016.jpg_w200-h200.jpg.webp', 16);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201117/517B2546F235D6BD4F7753E7451ED7DCFDC7012610924BE00C4DAEA95E085229_w1530_h2040.jpg_w200-h200.jpg.webp', 17);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201130/D759C8211D14242C88526F2F06E2A734E4BCF2102FD99A584D7A4681B570785C_w1080_h2400.jpg', 18);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/4D515A5C78253722D089535F1D774AF10405B5B3886CCB6C28CA4FE9F7630322_w1512_h2016.jpg_w200-h200.jpg.webp', 21);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/62705BD106C29618975A1851CBC455C43001690203BD986B881A46A1E6EC5613_w3456_h4608.jpg_w200-h200.jpg.webp', 22);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/763954CCE0E7B4D27EF390CD6073C078AEBA43B74C4A7C2245EB98EC28CBF157_w3024_h4032.jpg_w200-h200.jpg.webp', 23);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/28384AF8E7B0E2F917A61501423BDF2D9B8466E119CCDC6053F33CED88F32443_w1134_h2016.jpg_w200-h200.jpg.webp', 24);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201031/19E8A0ADEBB2592205E657291449B1150AB531AF301B77EFBD60A894453313D2_w1056_h932.jpg_w200-h200.jpg.webp', 26);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201031/AB2365CF61B9AD5841385C658C53F4211D513F22B1543A566A37748DD32A4F7F_w1068_h872.jpg_w200-h200.jpg.webp', 26);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201021/51C593990DADCEB72155BBD733A84AAA4363E674CE0DA1A314DAA67C07FD8FB8_w1500_h2000.jpg_w200-h200.jpg.webp', 27);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201021/51C593990DADCEB72155BBD733A84AAA4363E674CE0DA1A314DAA67C07FD8FB8_w1500_h2000.jpg_w200-h200.jpg.webp', 27);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201021/E8DEAB0B058828970621472B4418AAACEDBB082C6B20C8B339A321D0BC8E7AF3_w1500_h2000.jpg_w200-h200.jpg.webp', 27);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20200824/52397F1CCB98065C71F236647A4AC8148BF7B21127573AD2BF6B511D35422EB2_w744_h1200.png_w200-h200.png.webp', 28);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20200824/FD6A662DE36C2B21DB6EE06CCEDB66D5822A6D9117E9B059C1F756ED319E2024_w804_h810.png_w200-h200.png.webp', 28);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201114/4C03A39CC50E83C6D51CF3CAB29CD39386D1518ABB6C9065891A4D94CE357413_w864_h1152.jpg_w200-h200.jpg.webp', 29);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201114/9CF1F7663042C20A8168B882BAE9EABCF1B34220B9B17B2A21A83D1FEAA89558_w864_h1152.jpg_w200-h200.jpg.webp', 29);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201115/7972CBDA01197C778080B271774E2D9180CC7F686E6F7356853DD980D371FF6D_w1080_h1920.png_w200-h200.png.webp', 30);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201115/7C5627DF9601DAE6020682AC216051A25429B7D0E707B8A2F6524CD778E18E84_w1134_h2016.jpg_w200-h200.jpg.webp', 30);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201122/485EDE6349068142412CC9ECF81BA5D5412BD9CEFBE72162C0BB0E38A71ED126_w1500_h2000.jpg_w200-h200.jpg.webp', 31);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201122/B6CAD2EE66F7024640BFB40EB7039C15DCF88C58B2247A373C5465AB91713471_w1500_h2000.jpg_w200-h200.jpg.webp', 31);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201123/D081CEA994E9A04AA2FC8F748479935EBDD77DC82A52FFD5A80A3E9D4034AACF_w1500_h2000.jpg_w200-h200.jpg.webp', 32);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201119/E1E5242466CE2C83F9AAEF0547FE4FC0B6BFAD0F124B49F8AC8A0DAB2B7A7A1C_w1080_h1440.jpg_w200-h200.jpg.webp', 33);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201119/884C43CE65F4A80516DB13CFB8E9C5049CE1862C765F0218722D8B1D89CA9FD3_w1080_h1440.jpg_w200-h200.jpg.webp', 33);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201119/651B82B99CDDA32F200A1D4A94A7C4A5306D6E8A7F2FC01EB8EDCF248BED8DEC_w1500_h2000.jpg_w200-h200.jpg.webp', 34);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201118/AC764F83140644CD6CE468EF909BF9A3D031B77D6D8A11D32190900CBE57B889_w1080_h2376.jpg_w200-h200.jpg.webp', 35);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201117/9D9ACAAA4B72413F2C0DBA6462EDF6559E77F72B35CFE79786BFBAF866ACCC7F_w1530_h2040.jpg_w200-h200.jpg.webp', 36);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201117/BC05B32910C93C6B85354ECF9D4FEA12AA19E534DF643B056F90E9F2EB50EB9A_w1560_h2080.jpg_w200-h200.jpg.webp', 36);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201123/B81476935F5F837E9887928F863E2DAABFD7EE77FFEB71BD1B92F0B19D6E9EC3_w1500_h2000.jpg_w200-h200.jpg.webp', 37);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201121/5FADBBA44245E7ACBD844A96A77DE9B04AF50A5D35C6474BA1988F1E0C86EBD6_w800_h1067.jpeg_w200-h200.jpeg.webp', 38);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201116/50B590EB73B1BC6A92BB49C080C706BAB05C44A06A1CB91794ECE5847A779E09_w1500_h2000.jpg_w200-h200.jpg.webp', 39);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201107/9CFD1D618A89EBF25FC9339CE17196BD9EC11EDEFADE2DF37E6539D59ECA3CD5_w1500_h2000.jpg_w200-h200.jpg.webp', 40);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201114/4C03A39CC50E83C6D51CF3CAB29CD39386D1518ABB6C9065891A4D94CE357413_w864_h1152.jpg_w200-h200.jpg.webp', 41);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201115/7972CBDA01197C778080B271774E2D9180CC7F686E6F7356853DD980D371FF6D_w1080_h1920.png_w200-h200.png.webp', 42);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201121/624F09FAEF90F39D827859387AC8A8A96692C7F5C06CB45860B9924B33C33EC8_w1072_h824.jpg_w200-h200.jpg.webp', 43);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201123/FDC651EB753652345FC4A946B5362066939662FA791C2CC9C5B6CF7F87832976_w1500_h2000.jpg_w200-h200.jpg.webp', 44);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201204/D00DEAF538EC2941D5EDE0B219B739F1D43F50F93831700BAB39B788CF2AC94A_w1500_h2000.jpg_w200-h200.jpg.webp', 45);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201204/73C668D6E9F4152F72E65B49230CC1F6D642900B62C7E86A18E74E2CF0A6D3FD_w1296_h2304.jpg_w200-h200.jpg.webp', 46);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/61409269B592EEAADDE9F6C6883C21677ED1ABF69F5778B7FC87EC3E49369D84_w1500_h2000.jpg_w200-h200.jpg.webp', 47);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201204/9ACB01BFAE601AEB6E1FF97C2548FCDF20DA110084C938B058B66B07C286B97E_w1500_h2000.jpg_w200-h200.jpg.webp', 48);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201207/71810BDC7C86C5C5A57D87D49749A2D8AE10D2802053AEF9C9093E4868139060_w1512_h2016.jpg_w200-h200.jpg.webp', 49);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/CE4A3EBFC59A0214E8DA38808EDF2B35CCF801016E208848162F362ACB851B48_w2816_h2112.jpg_w200-h200.jpg.webp', 50);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/55CF7912305CA45B2B419828BADC676F82C1927A2FC323765D850C21343CC96A_w1728_h2304.jpg_w200-h200.jpg.webp', 51);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201130/D1DF96D93F74A131082C769504666C82CE53DD5C2DD82F6BF54CE72ED6B9CF34_w1500_h2000.jpg_w200-h200.jpg.webp', 52);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201205/4A2E3CFC116B21AB0852D8EC4FDEA130EEAD4AE92CA32291D356FE853A892CD6_w3000_h4000.jpg_w200-h200.jpg.webp', 53);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201130/A305D7D640863C03D640A314678C931C2663965CE92C1978CFBF984143CC2011_w1560_h2080.jpg_w200-h200.jpg.webp', 54);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201104/D8D14AFF1ED564FAA505881D16C0F4BFEDF750F1C983C05C6E1A360C08159776_w1500_h2000.jpg_w200-h200.jpg.webp', 55);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201105/238112D0DA2D1AA96D0B2A2C989763BAAFAB60FEE3F02722AF7E8841FFDAE6F7_w1512_h1512.jpg_w200-h200.jpg.webp', 56);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201201/30C6AC9DD41E234331FC91AF9BFB9D07BD6560E4F67F4D8293E6E2F1E3944153_w1224_h1632.jpg_w200-h200.jpg.webp', 57);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201127/6FAF760CABFCF090EB9151791BB3B89066CD8F711A9B55A7F137B9E4569BBFD9_w1728_h2304.jpg_w200-h200.jpg.webp', 58);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201206/CCE56FAC519D20C6B62663ACA7B2232DCAFE37E66DB3369C1AF2DC57B881B4B3_w1080_h2340.jpg_w200-h200.jpg.webp', 59);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/38B45B1A483BCF149C879818EAFAF578ACA0527915568191E52B119D8E343D03_w1500_h2000.jpg_w200-h200.jpg.webp', 61);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201207/28DBA8EB25525FAD6369A284358EFAE667A6D01827118B8D037F84900A142467_w1872_h4032.jpg_w200-h200.jpg.webp', 62);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201208/38B45B1A483BCF149C879818EAFAF578ACA0527915568191E52B119D8E343D03_w1500_h2000.jpg_w200-h200.jpg.webp', 63);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201207/28DBA8EB25525FAD6369A284358EFAE667A6D01827118B8D037F84900A142467_w1872_h4032.jpg_w200-h200.jpg.webp', 64);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201114/EE76228CC2D26D6133B84A77E2265740CA39D3A5E4A4EB1C0C032B9B56B4FFC8_w1560_h2080.jpg_w200-h200.jpg.webp', 73);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20200912/B8EB00B9CCFAA433CF2F8C892D76E33BEAAD6B73CBE19B3C12ECD06A789DFEBE_w4000_h3000.jpg_w200-h200.jpg.webp', 74);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201101/A2A6CCFF0E632682C00865C61EFCE62D10F7E95D82C735C151BCDB7F51EF8CA9_w4032_h1872.jpg_w200-h200.jpg.webp', 81);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201115/6C19006EF37AECE03BD418E1E4C5CDFFBCF001BD18222FEAEE6F60B1D7275F58_w1560_h2080.jpg_w200-h200.jpg.webp', 82);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201201/FBD995BDCB946196D229E41A133F1622131B0B95E6B7DBE215E83347B5EE32FB_w2408_h1080.jpg_w200-h200.jpg.webp', 83);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20200917/03846C83BABFFB174B56048A8975E61449D72EC0B03FCB6DCF46F10338B5EF7A_w2016_h1512.jpg_w200-h200.jpg.webp', 86);
INSERT INTO `comment_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/remark/20190906/14/33/29/1909065240967936_e705f8081bd44770a5297ca13982af0a_375x375.jpg', 87);
INSERT INTO `comment_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/remark/20191224/15/32/26/1912245594617850_0b5ac96e9203423a80e3327b8858c93d_375x375.png.webp', 90);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201213/883AFCD031535386093B9780FB5787A9DF569B0DAA5B9841DA17A766C2FB6914_w1560_h2080.jpg_w200-h200.jpg.webp', 92);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201213/F844D1856000916B6F7DE90D373CB72B7A66802E29CB7889ECA97BC558A146F4_w1560_h2080.jpg_w200-h200.jpg.webp', 92);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201213/F32468510E0C4AC707C35C4E2C600F196372981EF2EECBF86F3B02E6CB14530D_w1560_h2080.jpg_w200-h200.jpg.webp', 92);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201216/DC9B9B5385D610F27F639DFE11954C3DD99062F9676690D87264869333F0FF47_w1728_h2304.jpg_w200-h200.jpg.webp', 93);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201216/703CFABD3A659F5E56857A20A002F1A1F51AD1F8164DE65F9B5D535496F7F2E6_w2304_h1728.jpg_w200-h200.jpg.webp', 93);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201214/3004E5D93D84EDCE4862E0A0399F7ECB282555B95739A72AFFD4BC52E778929F_w1080_h2376.jpg_w200-h200.jpg.webp', 94);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201214/14DCE6555E58252E321FB8760C3CA80676C154747470282AB1D52E7A9429C319_w1080_h2376.jpg_w200-h200.jpg.webp', 94);
INSERT INTO `comment_img` VALUES ('https://common-comment-vivofs.vivo.com.cn/comment/client4/20201214/709281EDEB835DA79642F38EF908450014DC33FF98E6AB1990BE6B2B2F9E79A0_w1080_h2376.jpg_w200-h200.jpg.webp', 94);

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `commodity_id` int(0) NOT NULL AUTO_INCREMENT,
  `commodity_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`commodity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (1, '花呗分期');
INSERT INTO `commodity` VALUES (2, '以旧换新');
INSERT INTO `commodity` VALUES (3, '积分抵现');

-- ----------------------------
-- Table structure for commodity_t
-- ----------------------------
DROP TABLE IF EXISTS `commodity_t`;
CREATE TABLE `commodity_t`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `commodity_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_t
-- ----------------------------
INSERT INTO `commodity_t` VALUES (1, 1);
INSERT INTO `commodity_t` VALUES (1, 2);
INSERT INTO `commodity_t` VALUES (1, 3);
INSERT INTO `commodity_t` VALUES (2, 1);
INSERT INTO `commodity_t` VALUES (2, 2);
INSERT INTO `commodity_t` VALUES (3, 1);
INSERT INTO `commodity_t` VALUES (3, 3);
INSERT INTO `commodity_t` VALUES (4, 1);
INSERT INTO `commodity_t` VALUES (4, 2);
INSERT INTO `commodity_t` VALUES (4, 3);
INSERT INTO `commodity_t` VALUES (5, 1);
INSERT INTO `commodity_t` VALUES (5, 2);
INSERT INTO `commodity_t` VALUES (5, 3);
INSERT INTO `commodity_t` VALUES (6, 1);
INSERT INTO `commodity_t` VALUES (6, 3);
INSERT INTO `commodity_t` VALUES (7, 1);
INSERT INTO `commodity_t` VALUES (7, 2);
INSERT INTO `commodity_t` VALUES (7, 3);
INSERT INTO `commodity_t` VALUES (8, 1);
INSERT INTO `commodity_t` VALUES (8, 2);
INSERT INTO `commodity_t` VALUES (8, 3);
INSERT INTO `commodity_t` VALUES (9, 1);
INSERT INTO `commodity_t` VALUES (9, 2);
INSERT INTO `commodity_t` VALUES (9, 3);
INSERT INTO `commodity_t` VALUES (10, 1);
INSERT INTO `commodity_t` VALUES (10, 3);
INSERT INTO `commodity_t` VALUES (11, 1);
INSERT INTO `commodity_t` VALUES (11, 2);
INSERT INTO `commodity_t` VALUES (12, 1);
INSERT INTO `commodity_t` VALUES (12, 2);
INSERT INTO `commodity_t` VALUES (12, 2);
INSERT INTO `commodity_t` VALUES (13, 1);
INSERT INTO `commodity_t` VALUES (13, 2);
INSERT INTO `commodity_t` VALUES (14, 1);
INSERT INTO `commodity_t` VALUES (14, 3);
INSERT INTO `commodity_t` VALUES (15, 1);
INSERT INTO `commodity_t` VALUES (15, 2);
INSERT INTO `commodity_t` VALUES (15, 3);
INSERT INTO `commodity_t` VALUES (16, 1);
INSERT INTO `commodity_t` VALUES (16, 2);
INSERT INTO `commodity_t` VALUES (17, 1);
INSERT INTO `commodity_t` VALUES (18, 1);
INSERT INTO `commodity_t` VALUES (18, 2);
INSERT INTO `commodity_t` VALUES (19, 1);
INSERT INTO `commodity_t` VALUES (19, 3);
INSERT INTO `commodity_t` VALUES (20, 1);
INSERT INTO `commodity_t` VALUES (21, 1);
INSERT INTO `commodity_t` VALUES (22, 1);
INSERT INTO `commodity_t` VALUES (22, 3);
INSERT INTO `commodity_t` VALUES (23, 1);
INSERT INTO `commodity_t` VALUES (23, 2);
INSERT INTO `commodity_t` VALUES (24, 1);
INSERT INTO `commodity_t` VALUES (24, 3);
INSERT INTO `commodity_t` VALUES (25, 1);
INSERT INTO `commodity_t` VALUES (35, 2);
INSERT INTO `commodity_t` VALUES (26, 1);
INSERT INTO `commodity_t` VALUES (27, 1);
INSERT INTO `commodity_t` VALUES (28, 1);
INSERT INTO `commodity_t` VALUES (29, 1);
INSERT INTO `commodity_t` VALUES (29, 2);
INSERT INTO `commodity_t` VALUES (30, 1);
INSERT INTO `commodity_t` VALUES (30, 3);
INSERT INTO `commodity_t` VALUES (31, 1);
INSERT INTO `commodity_t` VALUES (31, 2);
INSERT INTO `commodity_t` VALUES (31, 3);
INSERT INTO `commodity_t` VALUES (32, 1);
INSERT INTO `commodity_t` VALUES (32, 2);
INSERT INTO `commodity_t` VALUES (33, 1);
INSERT INTO `commodity_t` VALUES (33, 2);
INSERT INTO `commodity_t` VALUES (34, 1);
INSERT INTO `commodity_t` VALUES (34, 3);
INSERT INTO `commodity_t` VALUES (35, 1);
INSERT INTO `commodity_t` VALUES (25, 2);
INSERT INTO `commodity_t` VALUES (36, 1);
INSERT INTO `commodity_t` VALUES (36, 3);
INSERT INTO `commodity_t` VALUES (37, 1);
INSERT INTO `commodity_t` VALUES (37, 2);
INSERT INTO `commodity_t` VALUES (38, 1);
INSERT INTO `commodity_t` VALUES (38, 3);
INSERT INTO `commodity_t` VALUES (49, 1);
INSERT INTO `commodity_t` VALUES (39, 2);
INSERT INTO `commodity_t` VALUES (40, 1);
INSERT INTO `commodity_t` VALUES (40, 2);
INSERT INTO `commodity_t` VALUES (41, 1);
INSERT INTO `commodity_t` VALUES (41, 3);
INSERT INTO `commodity_t` VALUES (42, 1);
INSERT INTO `commodity_t` VALUES (43, 1);
INSERT INTO `commodity_t` VALUES (44, 1);
INSERT INTO `commodity_t` VALUES (44, 3);
INSERT INTO `commodity_t` VALUES (45, 1);
INSERT INTO `commodity_t` VALUES (46, 2);
INSERT INTO `commodity_t` VALUES (47, 1);
INSERT INTO `commodity_t` VALUES (47, 3);
INSERT INTO `commodity_t` VALUES (48, 1);
INSERT INTO `commodity_t` VALUES (48, 2);
INSERT INTO `commodity_t` VALUES (39, 1);
INSERT INTO `commodity_t` VALUES (50, 1);
INSERT INTO `commodity_t` VALUES (50, 3);
INSERT INTO `commodity_t` VALUES (51, 1);
INSERT INTO `commodity_t` VALUES (52, 1);
INSERT INTO `commodity_t` VALUES (53, 1);
INSERT INTO `commodity_t` VALUES (53, 3);
INSERT INTO `commodity_t` VALUES (54, 1);
INSERT INTO `commodity_t` VALUES (54, 2);
INSERT INTO `commodity_t` VALUES (55, 1);
INSERT INTO `commodity_t` VALUES (55, 3);
INSERT INTO `commodity_t` VALUES (56, 1);
INSERT INTO `commodity_t` VALUES (56, 2);
INSERT INTO `commodity_t` VALUES (56, 3);

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `coupon_id` int(0) NOT NULL AUTO_INCREMENT,
  `coupon_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_des` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_discount` double(10, 2) NOT NULL,
  PRIMARY KEY (`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, '积分', '购物送积分', 0.00);
INSERT INTO `coupon` VALUES (2, '免邮', '购物送积分', 0.00);
INSERT INTO `coupon` VALUES (3, '定制', '免费定制服务', 0.00);
INSERT INTO `coupon` VALUES (4, '满减', '满2元减1元', 1.00);

-- ----------------------------
-- Table structure for coupon_t
-- ----------------------------
DROP TABLE IF EXISTS `coupon_t`;
CREATE TABLE `coupon_t`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `coupon_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_t
-- ----------------------------
INSERT INTO `coupon_t` VALUES (6, 1);
INSERT INTO `coupon_t` VALUES (1, 4);
INSERT INTO `coupon_t` VALUES (2, 1);
INSERT INTO `coupon_t` VALUES (2, 2);
INSERT INTO `coupon_t` VALUES (3, 4);
INSERT INTO `coupon_t` VALUES (4, 1);
INSERT INTO `coupon_t` VALUES (5, 4);
INSERT INTO `coupon_t` VALUES (1, 1);
INSERT INTO `coupon_t` VALUES (7, 1);
INSERT INTO `coupon_t` VALUES (7, 2);
INSERT INTO `coupon_t` VALUES (8, 1);
INSERT INTO `coupon_t` VALUES (8, 2);
INSERT INTO `coupon_t` VALUES (8, 3);
INSERT INTO `coupon_t` VALUES (9, 2);
INSERT INTO `coupon_t` VALUES (9, 3);
INSERT INTO `coupon_t` VALUES (10, 4);
INSERT INTO `coupon_t` VALUES (11, 1);
INSERT INTO `coupon_t` VALUES (12, 2);
INSERT INTO `coupon_t` VALUES (13, 3);
INSERT INTO `coupon_t` VALUES (14, 1);
INSERT INTO `coupon_t` VALUES (15, 2);
INSERT INTO `coupon_t` VALUES (16, 3);
INSERT INTO `coupon_t` VALUES (17, 3);
INSERT INTO `coupon_t` VALUES (18, 2);
INSERT INTO `coupon_t` VALUES (19, 1);
INSERT INTO `coupon_t` VALUES (20, 2);
INSERT INTO `coupon_t` VALUES (21, 3);
INSERT INTO `coupon_t` VALUES (22, 1);
INSERT INTO `coupon_t` VALUES (23, 3);
INSERT INTO `coupon_t` VALUES (24, 1);
INSERT INTO `coupon_t` VALUES (25, 4);
INSERT INTO `coupon_t` VALUES (26, 1);
INSERT INTO `coupon_t` VALUES (27, 2);
INSERT INTO `coupon_t` VALUES (28, 3);
INSERT INTO `coupon_t` VALUES (29, 1);
INSERT INTO `coupon_t` VALUES (30, 2);
INSERT INTO `coupon_t` VALUES (31, 1);
INSERT INTO `coupon_t` VALUES (32, 1);
INSERT INTO `coupon_t` VALUES (33, 1);
INSERT INTO `coupon_t` VALUES (34, 3);
INSERT INTO `coupon_t` VALUES (35, 1);
INSERT INTO `coupon_t` VALUES (36, 1);
INSERT INTO `coupon_t` VALUES (37, 2);
INSERT INTO `coupon_t` VALUES (38, 2);
INSERT INTO `coupon_t` VALUES (39, 1);
INSERT INTO `coupon_t` VALUES (39, 3);
INSERT INTO `coupon_t` VALUES (40, 1);
INSERT INTO `coupon_t` VALUES (40, 2);
INSERT INTO `coupon_t` VALUES (40, 3);
INSERT INTO `coupon_t` VALUES (41, 1);
INSERT INTO `coupon_t` VALUES (42, 1);
INSERT INTO `coupon_t` VALUES (43, 2);
INSERT INTO `coupon_t` VALUES (44, 3);
INSERT INTO `coupon_t` VALUES (45, 1);
INSERT INTO `coupon_t` VALUES (46, 2);
INSERT INTO `coupon_t` VALUES (47, 3);
INSERT INTO `coupon_t` VALUES (48, 4);
INSERT INTO `coupon_t` VALUES (49, 1);
INSERT INTO `coupon_t` VALUES (50, 3);
INSERT INTO `coupon_t` VALUES (51, 2);
INSERT INTO `coupon_t` VALUES (52, 1);
INSERT INTO `coupon_t` VALUES (53, 2);
INSERT INTO `coupon_t` VALUES (54, 4);
INSERT INTO `coupon_t` VALUES (55, 2);
INSERT INTO `coupon_t` VALUES (56, 2);

-- ----------------------------
-- Table structure for des_img
-- ----------------------------
DROP TABLE IF EXISTS `des_img`;
CREATE TABLE `des_img`  (
  `des_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of des_img
-- ----------------------------
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/20201204171317438615_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201205/20201205142613280109_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201207/2020120714554516223_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201207/2020120714555544673_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201207/20201207110458908456_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201205/2020120514262486692_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201205/20201205142645844624_original.jpg.webp', 1);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/20201204172010107446_original.jpg.webp', 2);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/20201204101702429644_original.jpg.webp', 2);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/20201204101711726508_original.jpg.webp', 2);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/202012041017127722_original.jpg.webp', 2);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201204/20201204171317438615_original.jpg.webp', 3);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201112/20201112162641665126_original.png.webp', 3);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201206/20201206235529565108_original.png.webp', 3);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201112/20201112162724694471_original.png.webp', 3);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201020/202010201529484981_original.jpg.webp', 4);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201029/20201029165707220190_original.jpg.webp', 4);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201102/20201102191720949838_original.jpg.webp', 4);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201112/202011121957473004_original.jpg.webp', 4);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201020/202010201529484981_original.jpg.webp', 5);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201102/20201102191720949838_original.jpg.webp', 5);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201112/20201112195746476869_original.jpg.webp', 5);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201112/20201112195748140788_original.jpg.webp', 5);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201207/20201207115356200117_original.png.webp', 6);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201021/20201021190912329303_original.jpg.webp', 6);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201021/20201021190925988963_original.jpg.webp', 6);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201021/20201021190926228112_original.jpg.webp', 6);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201030/2020103009531792472_original.jpg.webp', 7);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201031/20201031164642490894_original.jpg.webp', 7);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201031/20201031164642573946_original.jpg.webp', 7);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201031/20201031164643966701_original.jpg.webp', 7);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200825/20200825153618568522_original.jpg.webp', 8);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200825/20200825153618568522_original.jpg.webp', NULL);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201021/20201021185811558157_original.jpg.webp', 8);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200826/2020082616430186571_original.jpg.webp', 8);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200826/20200826164351732620_original.jpg.webp', 8);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200819/20200819193859581211_original.jpg.webp', 9);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190716/20190716113648411168_original.jpg.webp', 9);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190716/2019071611364815563_original.jpg.webp', 9);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190716/20190716113649192169_original.jpg.webp', 9);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201019/2020101916262765067_original.jpg.webp', 10);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201019/202010191626366559_original.jpg.webp', 10);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201019/2020101916263687620_original.jpg.webp', 10);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201019/20201019162636180168_original.jpg.webp', 10);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201016/20201016170233619294_original.png.webp', 11);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014153931235294_original.jpg.webp', 11);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014153931210231_original.jpg.webp', 11);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014153930750322_original.jpg.webp', 11);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014175657540570_original.png.webp', 12);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014153238978568_original.jpg.webp', 12);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014153238700456_original.jpg.webp', 12);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201014/20201014153238258560_original.jpg.webp', 12);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918105120114455_original.jpg.webp', 13);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918105119857777_original.jpg.webp', 13);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918105119880284_original.jpg.webp', 13);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/202009181051191508_original.jpg.webp', 13);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200819/20200819184408625153_original.jpg.webp', 14);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200810/2020081016061346741_original.jpg.webp', 14);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200810/20200810160612952109_original.jpg.webp', 14);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200810/20200810160614474778_original.jpg.webp', 14);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201016/2020101616382321064_original.jpg.webp', 15);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200807/20200807165043890229_original.jpg.webp', 15);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200807/2020080716504486535_original.jpg.webp', 15);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200807/20200807165043957667_original.jpg.webp', 15);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200422/20200422152219470728_original.jpg.webp', 16);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200422/20200422152217999139_original.jpg.webp', 16);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200422/20200422152216490873_original.jpg.webp', 16);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200422/20200422152216339423_original.jpg.webp', 16);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/2020100914233395838_original.jpg.webp', 17);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/20201009142334221585_original.jpg.webp', 17);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/20201009142332722844_original.jpg.webp', 17);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/2020100914233324951_original.jpg.webp', 17);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918151605447780_original.png.webp', 18);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918150859517270_original.jpg.webp', 18);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918150850817735_original.jpg.webp', 18);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200918/20200918150850431320_original.jpg.webp', 18);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143655568307_original.jpg.webp', 19);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143655113853_original.jpg.webp', 19);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143654617470_original.jpg.webp', 19);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143654265581_original.jpg.webp', 19);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143655568307_original.jpg.webp', 20);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143655113853_original.jpg.webp', 20);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143654617470_original.jpg.webp', 20);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200817/20200817143654265581_original.jpg.webp', 20);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112034182229_original.jpg.webp', 21);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112034458793_original.jpg.webp', 21);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112034293812_original.jpg.webp', 21);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112032773957_original.jpg.webp', 21);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200609/20200609174756226456_original.jpg.webp', 22);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200609/20200609174755625504_original.jpg.webp', 22);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200609/2020060917475542652_original.jpg.webp', 22);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200609/20200609174755376266_original.jpg.webp', 22);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/2020100914233395838_original.jpg.webp', 23);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/20201009142334221585_original.jpg.webp', 23);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/20201009142332722844_original.jpg.webp', 23);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201009/2020100914233324951_original.jpg.webp', 23);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112034182229_original.jpg.webp', 24);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112034458793_original.jpg.webp', 24);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112034293812_original.jpg.webp', 24);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708112032773957_original.jpg.webp', 24);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200708/20200708173247858631_original.jpg.webp', 25);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200601/20200601182615737458_original.jpg.webp', 25);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200601/20200601182615982432_original.jpg.webp', 25);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201016/2020101616170668836_original.png.webp', 25);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200511/20200511194738974126_original.png.webp', 26);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200422/2020042214371360831_original.jpg.webp', 26);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200422/20200422143711640694_original.jpg.webp', 26);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200513/20200513175646668370_original.png.webp', 27);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20191114/20191114171937214319_original.jpg.webp', 27);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20191114/2019111417193734167_original.jpg.webp', 27);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20171228/20171228113003756906_original.jpg', 28);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20171228/20171228113003756906_original.jpg', 28);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20171228/20171228113003756906_original.jpg', 28);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200330/20200330151441447541_original.jpg.webp', 29);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200330/2020033015144080175_original.jpg.webp', 29);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200330/20200330151440440629_original.jpg.webp', 29);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181027/20181027160721774152_original.jpg.webp', 30);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181027/20181027160721821981_original.jpg.webp', 30);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181027/20181027160700303892_original.jpg.webp', 30);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200702/2020070210312410994_original.jpg.webp', 31);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200702/20200702103124347303_original.jpg.webp', 31);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200702/20200702103113409958_original.jpg.webp', 31);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200526/20200526155324300810_original.jpg.webp', 32);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200526/20200526155325896647_original.jpg.webp', 32);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200526/2020052615532861288_original.jpg.webp', 32);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200922/20200922110339573213_original.jpg.webp', 33);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200922/20200922110339573213_original.jpg.webp', 33);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200925/20200925145922853445_original.jpg.webp', 33);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152855853_250x250.png.webp', 34);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200925/20200925145922853445_original.jpg.webp', 34);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200922/20200922110328241891_original.jpg.webp', 34);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200826/2020082619545475372_original.jpg.webp', 35);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200826/2020082619544698735_original.jpg.webp', 35);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200826/20200826195445207662_original.jpg.webp', 35);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190926/20190926204937726302_original.jpg.webp', 36);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190926/20190926204919330338_original.jpg.webp', 36);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190926/20190926204919128656_original.jpg.webp', 36);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190718/20190718204330969549_original.jpg.webp', 37);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190718/20190718204330418436_original.jpg.webp', 37);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190718/20190718204330418436_original.jpg.webp', 37);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200916/20200916162649590855_original.jpg.webp', 38);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200916/2020091616264169679_original.jpg.webp', 38);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200916/20200916162640492220_original.jpg.webp', 38);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20191016/2019101616304241484_original.jpg.webp', 39);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20191016/20191016163041767691_original.jpg.webp', 39);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20191016/20191016163041493277_original.jpg.webp', 39);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/dbff44b4ac888f50feecd4f9a3e70e98.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 40);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/50caef72fc62714a123fbf7d7246209d.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 40);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/f8a8ea30e750b9c336ad22f8298ea4fc.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 40);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200710/20200710160802974413_original.jpg.webp', 41);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200710/20200710160802293987_original.jpg.webp', 41);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200710/20200710160802336922_original.jpg.webp', 41);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200824/2020082415140074476_original.jpg.webp', 42);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200824/20200824151353224316_original.jpg.webp', 42);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200824/20200824151353226986_original.jpg.webp', 42);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200824/20200824115128376943_original.jpg.webp', 43);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200824/2020082411512759916_original.jpg.webp', 43);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200824/20200824115101739432_original.jpg.webp', 43);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200806/20200806115307122426_original.jpg.webp', 44);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200806/2020080611522456705_original.jpg.webp', 44);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200806/2020080611520719686_original.jpg.webp', 44);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200630/20200630171307522427_original.jpg.webp', 45);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200630/2020063017100037743_original.jpg.webp', 45);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200630/20200630171000168316_original.jpg.webp', 45);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200413/20200413222644999531_original.jpg.webp', 46);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200413/20200413222645136596_original.jpg.webp', 46);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200413/2020041322263550431_original.jpg.webp', 46);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181217/20181217205413328768_original.jpg.webp', 47);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181217/20181217205412609349_original.jpg.webp', 47);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181217/20181217205412884200_original.jpg.webp', 47);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181120/2018112017101045611_original.jpg.webp', 48);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181120/2018112017095092655_original.jpg.webp', 48);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20181120/20181120171010176959_original.jpg.webp', 48);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201117/20201117152418817144_original.jpg.webp', 49);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201117/20201117152418817144_original.jpg.webp', 49);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201117/20201117152356699442_original.jpg.webp', 49);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190413/20190413161607877704_original.jpg.webp', 50);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190413/20190413161406521325_original.jpg.webp', 50);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20190413/20190413161406998654_original.jpg.webp', 50);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201110/20201110154113919396_original.jpg.webp', 51);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201110/20201110154113919396_original.jpg.webp', 51);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201110/20201110154113697219_original.jpg.webp', 51);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201109/20201109174058307352_original.jpg.webp', 52);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201109/20201109174057546456_original.jpg.webp', 52);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20201109/20201109174057307969_original.jpg.webp', 52);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200629/20200629175901407931_original.jpg.webp', 53);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200629/20200629175901407931_original.jpg.webp', 53);
INSERT INTO `des_img` VALUES ('https://shopstatic.vivo.com.cn/vivoshop/commodity/20200629/20200629175901791931_original.jpg.webp', 53);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/235f60f270781fb720ef98343767e1d5.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 54);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/c7e1d5e4a6077392e9ea149cbaaef1a0.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 54);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/180e9f8673a53e105c3aa772b9f8a9d3.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 54);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/1f32df1d784d04745e7978cfaa59b176.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 55);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/18ee902cbd684aad2daa6f18c6455ceb.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 55);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/c128d7ed9c97eab7e4f1f40afb1c4f5c.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 56);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/ce50159959444e7b76f548d6adfeb162.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 56);
INSERT INTO `des_img` VALUES ('https://yanxuan-item.nosdn.127.net/edbf7c0ff8c0552047bd0c3c1726a83e.jpg?imageView&type=webp&thumbnail=1200x0&enlarge=1', 56);

-- ----------------------------
-- Table structure for first_goods
-- ----------------------------
DROP TABLE IF EXISTS `first_goods`;
CREATE TABLE `first_goods`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `first_goods_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of first_goods
-- ----------------------------
INSERT INTO `first_goods` VALUES (3, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20201119/2020111915484026389_original.jpg.webp');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` int(0) NOT NULL,
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_simple_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_old_price` double(10, 2) NULL DEFAULT NULL,
  `goods_price` double(10, 2) NULL DEFAULT NULL,
  `goods_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'vivo Y52s 8GB+128GB 莫奈彩 ', 'vivo Y52s', '【①享6期免息；②老用户咨询客服登记赠XE900耳机；③高等级会员加赠背包】5000mAh大电池+18W双引擎闪充|7nm制程工艺|90Hz灵动护眼屏', 1998.00, 1898.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122048226_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (2, 'vivoY30 标准版 6GB+128GB 云水蓝', 'vivoY30', '【①享3期免息；②老用户咨询客服登记赠XE900耳机；③高等级会员加赠背包】5000mAh大电池|AI智慧影像|侧面指纹识别', 1398.00, 1398.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/84/10006084_1606967127567_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (3, 'vivo S7e 5G版 8GB+128GB 银月', 'vivo S7e', '【老用户咨询客服登记赠33W充电头】6400万超清影像系统|3200万超清前置|重量约171.7g|33W闪充', 2408.00, 2398.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/01/10006001_1605164406948_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (4, 'iQOO U1x 4GB+64GB 曜光黑', 'iQOO U1x', '【①12.12全程价保；②赠90元组合配件券】高通骁龙662，5000mAh大电池，搭配18W双引擎闪充，AI全场景三摄', 999.00, 899.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089888602_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (5, 'iQOO U1x 6GB+64GB 曜光黑 ', 'iQOO U1x', '【①12.12全程价保；②赠90元组合配件券】高通骁龙662，5000mAh大电池，搭配18W双引擎闪充，AI全场景三摄', 1099.00, 999.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089901207_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (6, 'vivo Y3s 4GB+128GB 海风青', 'vivo Y3s', '【①高等级会员赠背包；②老用户咨询客服登记赠XE900耳机】5000mAh大电池|支持反向充电|后置AI双摄', 1298.00, 1198.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/06/10005906_1602833491986_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (7, 'vivo Y73s 5G版 8GB+128GB 银月', 'vivo Y73s', '【老用户咨询客服登记赠XE900耳机】约7.73mm轻薄外观|4800万后置影像系统|6.44英寸高清护眼屏|支持屏幕指纹解锁', 1998.00, 1988.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/83/10005883_1601437315978_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (8, 'iQOO 5 Pro 5G版 12GB+256GB 传奇版', 'iQOO 5 Pro', 'BMW定制，高通骁龙865，120W超快闪充，120Hz超视感曲面屏，全竞速核芯，带来职业级电竞体验。', 5598.00, 5498.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/51/10005651_1597654351271_750x750.png.webp', 1);
INSERT INTO `goods` VALUES (9, 'vivo 2A USB数据线', 'vivo 2A', '原装数据线，支持18W/10W双引擎闪充，充电口规格：Micro USB。（注：闪充功能需搭配9V/2A充电器使用，本商品不含充电器）', 19.00, 19.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10001303_1588754682402_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (10, 'vivo 33W闪充充电器套装', 'vivo 33W闪充', '【限时直降】原装正品，支持33W/22.5W/18W双引擎闪充（温馨提示：本套装内数据线为Type-C接口。）', 129.00, 119.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/71/10005971_1603095877902_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (11, 'iQOO 120W 闪充充电器套装', 'iQOO 120W 闪充', '【直降10元】原装正品，莱茵安全认证，智能温控，兼容PD协议，兼容120W/55W/44W/33W/22.5W/18W的闪充协议（注：本充电套餐内的充电器与数据线同时使用才可实现120W闪充和PD 65W充电）温馨提示：本套餐内数据线为Type-C接口。', 299.00, 289.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10005939_1603702031165_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (12, 'iQOO 6A Type-C闪充数据线', 'iQOO 6A Type-C闪充', '【限时直降】原装数据线，兼容120W/55W/44W/33W/22.5W/18W的闪充协议（注：与iQOO 120W闪充充电器同时使用才可实现120W闪充和PD 65W充电）', 59.00, 58.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/38/10005938_1602660686652_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (13, 'vivo 65W多口原装超快闪充充电器', 'vivo 65W', '【限时直降】原装正品，兼容55/44/33/22.5/18W闪充，三口输出，可同时为三台设备充电。', 130.00, 129.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005891_1600397436796_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (14, 'iQOO 55W车载充电器', 'iQOO 55W', '【直降10元】支持55/44/33/22.5/18W闪充，两个标准USB接口，同时输出总功率达65W，满足更多设备充电需求。（包装内附赠原装5A Type-C数据线，请搭配使用。）', 189.00, 179.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10005708_1597047601935_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (15, 'vivo 5A Type-C数据线', 'vivo 5A', '【限时直降】原装数据线，兼容55W/44W/33W/22.5W/18W的vivo闪充协议', 139.00, 39.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/98/10005698_1599636522419_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (16, 'iQOO 2A Type-C 手游数据线 黄色', 'iQOO 2A', '【限时直降】原装数据线｜官方品质｜手游专属设计｜支持快速充电｜1.2米防缠绕扁线（注：最大支持2A电流）温馨提示：下单后三天内发货', 50.00, 49.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002425_1589856402284_750x750.png.webp', 2);
INSERT INTO `goods` VALUES (17, 'vivo X50 Pro皮革保护壳 深邃蓝', 'vivo X50 Pro皮革保护壳', '皮革质感丨舒适手感丨贴合保护丨官方品质(温馨提示：仅适用于X50 Pro，不适用于X50 Pro+）', 69.00, 59.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567329_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (18, 'iQOO Neo 3/Z1/Z1x钢化膜', 'iQOO Neo', '【限时直降】仅适配iQOO Z1、iQOO Z1x、iQOO Neo 3（一片装）', 25.00, 22.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/93/10005893_1600412836247_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (19, 'iQOO 5 Pro砂岩保护壳 原力黑', 'iQOO 5 Pro', '砂岩手感丨轻薄材质丨贴合保护丨原模打造（注：仅适用于iQOO 5 Pro赛道版，不适用于传奇版）', 59.00, 59.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/32/10005732_1597647147501_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (20, 'iQOO 5 砂岩保护壳 原力黑', 'iQOO 5', '砂岩手感丨轻薄材质丨贴合保护丨原模打造（注：仅适用于iQOO 5）', 59.00, 49.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005731_1597647227111_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (21, 'iQOO Z1x PC保护壳 锐酷黑', 'iQOO Z1x', '纤薄轻巧 | 手感舒适 | 个性设计 | 原模打造', 39.00, 38.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371758_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (22, 'vivo X50 硅胶保护壳 深空', 'vivo X50', '手感舒适｜简约设计｜量身定制｜信号畅通（温馨提示：仅适用X50，不适用 X50Pro）', 69.00, 59.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10002857_1591961016741_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (23, 'vivo X50 Pro皮革保护壳 深邃蓝', 'vivo X50 Pro', '皮革质感丨舒适手感丨贴合保护丨官方品质(温馨提示：仅适用于X50 Pro，不适用于X50 Pro+）', 69.00, 49.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567329_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (24, 'iQOO Z1x PC保护壳 锐酷黑', 'iQOO Z1x', '纤薄轻巧 | 手感舒适 | 个性设计 | 原模打造', 139.00, 39.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371758_750x750.png.webp', 3);
INSERT INTO `goods` VALUES (25, 'vivo TWS Neo 真无线耳机 星际蓝', 'vivo TWS Neo', '14.2mm超大声音单元｜游戏低延迟｜滑动调节音量｜27小时强劲续航', 599.00, 499.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1589791356105_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (26, 'iQOO 影音耳机 极速黄', 'iQOO', '【限时直降】K歌级麦克风 拾音更清晰 | L型手游接头 玩游戏不挡手 | 高解析音质 | 双层音腔设计', 119.00, 109.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/22/10002422_1587537238055_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (27, 'vivo TWS Earphone 真无线蓝牙耳机 皓月白', 'vivo TWS Earphone', '【下单享6期免息】已系统级深度适配 NEX 系列/iQOO 系列/X 系列等大多数机型', 1699.00, 699.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/18/10001518_1568635381990_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (28, 'vivo XE100原装耳机', 'vivo XE100', '【限时直降】Y系列机型标配耳机，适配3.5mm耳机接口的全部vivo机型。三频均衡，音域广阔！', 123.00, 23.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/23/9923_1591343174176_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (29, 'vivo 影音耳机 星空灰', 'vivo', '【限时直降】K歌级麦克风 | L型手游接头 | 高解析音质 | 双层音腔设计', 109.00, 109.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002175_1586746622091_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (30, 'vivo 缤纷耳机 白色', 'vivo', '专业调音 三频均衡 | 麦克风线控 通话清晰 | 时尚高光音腔设计 | 舒适佩戴', 149.00, 149.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/73/10002173_1586225752450_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (31, 'vivo 无线运动耳机', 'vivo', '【限时直降】LDAC 高清传输｜一键闪连｜IP55 级防尘防水｜疾速闪充', 299.00, 289.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/28/10002528_1589786722935_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (32, '小度在家 X8 智能屏 灰色', '小度在家', '8英寸平板级智能屏，海量资源，科学分龄，儿童模式陪伴成长，视频通话，看护好助手。', 1599.00, 599.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002575_1606989691754_750x750.png.webp', 4);
INSERT INTO `goods` VALUES (33, 'vivo WATCH 46mm 暗影黑 智能手表', 'vivo WATCH', '24小时心率/血氧监测丨多功能NFC丨18天长续航', 1299.00, 1199.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152842445_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (34, 'vivo WATCH 42mm 摩卡棕 智能手表', 'vivo WATCH', '24小时心率/血氧监测丨多功能NFC丨9天长续航', 1299.00, 1199.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152855906_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (35, '小苹果 万能遥控器 YKK-1011', '小苹果', '【本产品支持Android6.0及以上版本系统的vivo手机使用智慧生活APP连接控制】一键匹配，随时随地遥控传统家电（本商品由深圳遥看科技有限公司发货，并提供售后服务，详请见服务说明。）', 199.00, 99.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10005786_1598442467067_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (36, '乐心手环5S', '乐心手环5S', '【本产品支持Android6.0及以上版本系统的vivo手机使用智慧生活APP连接控制】24h实时心率检测 | 高清彩屏 | 15项锻炼模式 | 科学睡眠记录 | 科学有氧训练计划 | 健康日报', 159.00, 169.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/43/10001543_1597116933519_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (38, '智汇云 门窗传感器 ZHY-HK003 白', '智汇云', '【需搭配网关使用，本产品支持Android6.0及以上版本系统的vivo手机使用智慧生活APP连接控制】实时监测门窗开合（本商品由深圳市智汇云科技有限公司发货，并提供售后服务，详请见服务说明）', 189.00, 188.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/85/10005885_1600244750250_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (39, 'Sleepace 享睡 石墨烯助眠眼罩', 'Sleepace', '缓解眼疲劳｜帮助睡眠｜三档位随心调节温度｜面料顺滑贴合皮肤｜轻薄透气（本商品由深圳市迈迪加科技发展有限公司发货，并提供售后服务，详请见服务说明）', 1249.00, 249.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/73/10001573_1571214290405_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (40, '儿童平衡车滑步车-红色', '儿童平衡车', '内置避震，充气轮胎', 259.00, 249.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/21/10002721_1597050271686_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (41, '飞智 影刺主键 C2左手版 黑蓝', '飞智', '第二代电容隔空映射技术，更灵敏，更自由。', 169.00, 69.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/07/10005607_1594368385019_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (42, 'ULANZI 一字冷靴手机夹 ST-07 黑', 'ULANZI', '可外接三脚架', 29.00, 19.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519340316_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (43, 'ULANZI 迷你LED摄影灯 VL49 白', 'ULANZI', '升级柔光板，补光更柔和。', 169.00, 69.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519353467_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (44, '智云 手机智能云台 SMOOTH-X SM108', '智云', '折叠式随身手机云台（温馨提示：不包含三脚架以及主图中手机）', 399.00, 299.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005691_1596685837882_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (46, '飞智 Q1 键鼠转换器 黑色', '飞智', '【本产品支持智慧生活APP连接使用】', 129.00, 129.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/76/10002376_1597117033666_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (47, '飞智 wee 2T游戏手柄 潮蓝橘', '飞智', '【本产品支持智慧生活APP连接使用】第五代连接技术，智连模式，内置映射免激活，六轴陀螺仪，体感精准，ZC按键，满足更多操控需求，拉伸自如，兼容各类手机', 229.00, 229.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/67/10000167_1597117016621_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (48, '盖世小鸡 小鸡王座Z1游戏键盘 黑色', '盖世小鸡', '单手操作，机械轴敲落有回弹；采用Kailh青轴，质量过硬；一线切换手机PC，33个按键布局；LED灯光可调更酷炫', 299.00, 219.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/5759_1541992283430hd_bi_750x750.png.webp', 6);
INSERT INTO `goods` VALUES (49, 'SKG 颈部按摩仪 2.0 升级版 蓝牙款', 'SKG', '支持蓝牙小程序控制，机身一体按键，四大模式15档力度，三档温度可调。', 599.00, 499.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/80/10006080_1605597404639_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (50, 'V.FRIENDS摆件公仔 小V', 'V.FRIENDS', 'vivo官方正品摆件公仔，无需底座和支架，可自行站立，饱满厚实回弹快，选用优质PVC材质，触感温柔细腻，环保染料，色泽柔和更安心', 169.00, 69.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/04/10000704_1555142704176_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (52, '智能捏捏球 云麦 mini 绿色', '智能捏捏球', '掌心玩物丨游戏互动丨锻炼手腕（本商品由妙医佳健康科技集团有限公司发货，并提供售后服务，详请见服务说明）', 159.00, 149.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/10006059_1604914770026_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (53, '赛嘉 声波电动牙刷 SG551 白', '赛嘉', '四种清洁方案一键调节，USB充电更方便。', 99.00, 98.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/55/10005555_1593424651051_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (54, '石墨烯热敷腰带（无电池版） 黑红', '石墨烯热敷腰带', '支撑发热，舒适放松', 289.00, 279.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/24/10001724_1573582522338_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (55, '网易严选 轻灵碳素羽毛球拍 单只装-银色', '网易严选', '超轻球拍，运动随心', 159.00, 159.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/02/10003702_1606981061177_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (56, '网易严选  欧式精铸不粘煎锅 28cm', '网易严选', '内口径/无盖/直火电磁炉通用，精铸耐磨，不粘少油烟', 145.00, 135.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/16/10002316_1587635143328_750x750.png.webp', 7);
INSERT INTO `goods` VALUES (37, '乐心S11体脂秤', '乐心S11', '本产品支持Android6.0及以上版本系统的vivo手机使用智慧生活APP连接控制', 139.00, 129.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10001308_1563504635448_750x750.png.webp', 5);
INSERT INTO `goods` VALUES (51, '云麦 智能跳绳 ', '云麦', '高精度传感芯片丨在线课程指导丨360度万向轴承（本商品由妙医佳健康科技集团有限公司发货，并提供售后服务，详请见服务说明）', 149.00, 119.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/63/10006063_1604993998082_250x250.png', 7);
INSERT INTO `goods` VALUES (45, '镭拓 H1 mini黑鼠标垫', '镭拓 ', '立体编织工艺，布面紧密硬朗。', 5.90, 4.90, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10005557_1593508090674_250x250.png', 6);

-- ----------------------------
-- Table structure for home_logo
-- ----------------------------
DROP TABLE IF EXISTS `home_logo`;
CREATE TABLE `home_logo`  (
  `home_logo_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_logo
-- ----------------------------
INSERT INTO `home_logo` VALUES ('https://accountstatic.vivo.com.cn/accountstatic.vivo.com.cn/static/img/logo.1f42884.png.webp');

-- ----------------------------
-- Table structure for info_img
-- ----------------------------
DROP TABLE IF EXISTS `info_img`;
CREATE TABLE `info_img`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `info_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_img
-- ----------------------------
INSERT INTO `info_img` VALUES (1, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122048226_250x250.png.webp');
INSERT INTO `info_img` VALUES (1, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122053326_250x250.png.webp');
INSERT INTO `info_img` VALUES (1, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122053468_250x250.png.webp');
INSERT INTO `info_img` VALUES (1, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122057274_250x250.png.webp');
INSERT INTO `info_img` VALUES (2, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/84/10006084_1606967127567_250x250.png.webp');
INSERT INTO `info_img` VALUES (2, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/84/10006084_1606967134322_250x250.png.webp');
INSERT INTO `info_img` VALUES (2, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/84/10006084_1606967134712_250x250.png.webp');
INSERT INTO `info_img` VALUES (2, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/84/10006084_1606967139039_250x250.png.webp');
INSERT INTO `info_img` VALUES (3, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/01/10006001_1605164406948_250x250.png.webp');
INSERT INTO `info_img` VALUES (3, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/01/10006001_1605164412252_250x250.png.webp');
INSERT INTO `info_img` VALUES (3, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/01/10006001_1604305473652_250x250.png.webp');
INSERT INTO `info_img` VALUES (3, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/01/10006001_1605164417582_250x250.png.webp');
INSERT INTO `info_img` VALUES (4, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089888602_250x250.png.webp');
INSERT INTO `info_img` VALUES (4, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089888824_250x250.png.webp');
INSERT INTO `info_img` VALUES (4, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1605604044383_250x250.png.webp');
INSERT INTO `info_img` VALUES (5, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089901207_250x250.png.webp');
INSERT INTO `info_img` VALUES (5, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089901506_250x250.png.webp');
INSERT INTO `info_img` VALUES (5, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1603089900763_250x250.png.webp');
INSERT INTO `info_img` VALUES (5, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005931_1605604053809_250x250.png.webp');
INSERT INTO `info_img` VALUES (6, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/06/10005906_1602833491986_250x250.png.webp');
INSERT INTO `info_img` VALUES (6, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/06/10005906_1602833496951_250x250.png.webp');
INSERT INTO `info_img` VALUES (6, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/06/10005906_1602833501614_250x250.png.webp');
INSERT INTO `info_img` VALUES (7, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/83/10005883_1601437315978_250x250.png.webp');
INSERT INTO `info_img` VALUES (7, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/83/10005883_1601373082293_250x250.png.webp');
INSERT INTO `info_img` VALUES (7, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/83/10005883_1604548544659_250x250.png.webp');
INSERT INTO `info_img` VALUES (8, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/51/10005651_1597654351271_250x250.png.webp');
INSERT INTO `info_img` VALUES (8, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/51/10005651_1597654351169_250x250.png.webp');
INSERT INTO `info_img` VALUES (8, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/51/10005651_1597654351845_250x250.png.webp');
INSERT INTO `info_img` VALUES (9, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10001303_1588754682402_250x250.png.webp');
INSERT INTO `info_img` VALUES (9, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10001303_1563247850500_250x250.png.webp');
INSERT INTO `info_img` VALUES (9, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10001303_1563247857045_250x250.png.webp');
INSERT INTO `info_img` VALUES (10, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/71/10005971_1603095877902_250x250.png.webp');
INSERT INTO `info_img` VALUES (10, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/71/10005971_1603095881660_250x250.png.webp');
INSERT INTO `info_img` VALUES (10, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/71/10005971_1603095877720_250x250.png.webp');
INSERT INTO `info_img` VALUES (11, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10005939_1603702031165_250x250.png.webp');
INSERT INTO `info_img` VALUES (11, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10005939_1602661101782_250x250.png.webp');
INSERT INTO `info_img` VALUES (11, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10005939_1602661096534_250x250.png.webp');
INSERT INTO `info_img` VALUES (12, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/38/10005938_1602660686652_250x250.png.webp');
INSERT INTO `info_img` VALUES (12, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/38/10005938_1602660686684_250x250.png.webp');
INSERT INTO `info_img` VALUES (12, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/38/10005938_1602660686712_250x250.png.webp');
INSERT INTO `info_img` VALUES (13, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005891_1600397436796_250x250.png.webp');
INSERT INTO `info_img` VALUES (13, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005891_1600397443516_250x250.png.webp');
INSERT INTO `info_img` VALUES (13, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005891_1600397437081_250x250.png.webp');
INSERT INTO `info_img` VALUES (14, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10005708_1597047601935_250x250.png.webp');
INSERT INTO `info_img` VALUES (14, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10005708_1597047719355_250x250.png.webp');
INSERT INTO `info_img` VALUES (14, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10005708_1602571434810_250x250.png.webp');
INSERT INTO `info_img` VALUES (15, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/98/10005698_1599636522419_250x250.png.webp');
INSERT INTO `info_img` VALUES (15, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/98/10005698_1599636521973_250x250.png.webp');
INSERT INTO `info_img` VALUES (15, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/98/10005698_1599636522867_250x250.png.webp');
INSERT INTO `info_img` VALUES (16, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002425_1589856402284_250x250.png.webp');
INSERT INTO `info_img` VALUES (16, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002425_1587539379158_250x250.png.webp');
INSERT INTO `info_img` VALUES (16, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002425_1587539374955_250x250.png.webp');
INSERT INTO `info_img` VALUES (17, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567329_250x250.png.webp');
INSERT INTO `info_img` VALUES (17, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567516_250x250.png.webp');
INSERT INTO `info_img` VALUES (17, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567321_250x250.png.webp');
INSERT INTO `info_img` VALUES (18, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/93/10005893_1600412836247_250x250.png.webp');
INSERT INTO `info_img` VALUES (18, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/93/10005893_1600412836091_250x250.png.webp');
INSERT INTO `info_img` VALUES (18, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/93/10005893_1600412836404_250x250.png.webp');
INSERT INTO `info_img` VALUES (19, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/32/10005732_1597647147501_250x250.png.webp');
INSERT INTO `info_img` VALUES (19, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/32/10005732_1597647147595_250x250.png.webp');
INSERT INTO `info_img` VALUES (19, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/32/10005732_1597647147592_250x250.png.webp');
INSERT INTO `info_img` VALUES (20, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005731_1597647227111_250x250.png.webp');
INSERT INTO `info_img` VALUES (20, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005731_1597647227032_250x250.png.webp');
INSERT INTO `info_img` VALUES (20, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/31/10005731_1597647227260_250x250.png.webp');
INSERT INTO `info_img` VALUES (21, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371758_250x250.png.webp');
INSERT INTO `info_img` VALUES (21, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371816_250x250.png.webp');
INSERT INTO `info_img` VALUES (21, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371933_250x250.png.webp');
INSERT INTO `info_img` VALUES (22, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10002857_1591961016741_250x250.png.webp');
INSERT INTO `info_img` VALUES (22, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10002857_1591961031504_250x250.png.webp');
INSERT INTO `info_img` VALUES (22, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10002857_1591961016655_250x250.png.webp');
INSERT INTO `info_img` VALUES (23, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567329_250x250.png.webp');
INSERT INTO `info_img` VALUES (23, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567417_250x250.png.webp');
INSERT INTO `info_img` VALUES (23, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/29/10005929_1602224567321_250x250.png.webp');
INSERT INTO `info_img` VALUES (24, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371758_250x250.png.webp');
INSERT INTO `info_img` VALUES (24, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371816_250x250.png.webp');
INSERT INTO `info_img` VALUES (24, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371933_250x250.png.webp');
INSERT INTO `info_img` VALUES (25, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1589791356105_250x250.png.webp');
INSERT INTO `info_img` VALUES (25, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1591014569024_250x250.png.webp');
INSERT INTO `info_img` VALUES (25, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1591014572975_250x250.png.webp');
INSERT INTO `info_img` VALUES (26, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/22/10002422_1587537238055_250x250.png.webp');
INSERT INTO `info_img` VALUES (26, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/22/10002422_1587537238146_250x250.png.webp');
INSERT INTO `info_img` VALUES (26, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/22/10002422_1587537242470_250x250.png.webp');
INSERT INTO `info_img` VALUES (27, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/18/10001518_1568635381990_250x250.png.webp');
INSERT INTO `info_img` VALUES (27, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/18/10001518_1568635381996_250x250.png.webp');
INSERT INTO `info_img` VALUES (27, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/18/10001518_1568635385433_250x250.png.webp');
INSERT INTO `info_img` VALUES (28, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/23/9923_1591343174176_250x250.png.webp');
INSERT INTO `info_img` VALUES (28, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/68/4068_1534845455589hd_bi_250x250.png.webp');
INSERT INTO `info_img` VALUES (28, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/68/4068_1534845459813hd_bi_250x250.png.webp');
INSERT INTO `info_img` VALUES (29, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002175_1586746622091_250x250.png.webp');
INSERT INTO `info_img` VALUES (29, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002175_1586746622285_250x250.png.webp');
INSERT INTO `info_img` VALUES (29, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002175_1586746612878_250x250.png.webp');
INSERT INTO `info_img` VALUES (30, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/89/10689_1594200172301_250x250.png.webp');
INSERT INTO `info_img` VALUES (30, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/89/10689_1594200184585_250x250.png.webp');
INSERT INTO `info_img` VALUES (30, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002175_1586746612878_250x250.png.webp');
INSERT INTO `info_img` VALUES (31, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/28/10002528_1589786722935_250x250.png.webp');
INSERT INTO `info_img` VALUES (31, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/28/10002528_1589786722992_250x250.png.webp');
INSERT INTO `info_img` VALUES (31, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/28/10002528_1589786722974_250x250.png.webp');
INSERT INTO `info_img` VALUES (32, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002575_1606989691754_250x250.png.webp');
INSERT INTO `info_img` VALUES (32, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002575_1606989691390_250x250.png.webp');
INSERT INTO `info_img` VALUES (32, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/75/10002575_1606989692305_250x250.png.webp');
INSERT INTO `info_img` VALUES (33, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152842445_250x250.png.webp');
INSERT INTO `info_img` VALUES (33, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152842537_250x250.png.webp');
INSERT INTO `info_img` VALUES (33, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152842558_250x250.png.webp');
INSERT INTO `info_img` VALUES (34, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152855906_250x250.png.webp');
INSERT INTO `info_img` VALUES (34, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152856041_250x250.png.webp');
INSERT INTO `info_img` VALUES (34, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/13/10005713_1600152855853_250x250.png.webp');
INSERT INTO `info_img` VALUES (35, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10005786_1598442467067_250x250.png.webp');
INSERT INTO `info_img` VALUES (35, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10005786_1598442477211_250x250.jpg.webp');
INSERT INTO `info_img` VALUES (35, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10005786_1598442477211_250x250.jpg.webp');
INSERT INTO `info_img` VALUES (36, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/43/10001543_1597116933519_250x250.png.webp');
INSERT INTO `info_img` VALUES (36, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/43/10001543_1569501758666_250x250.png.webp');
INSERT INTO `info_img` VALUES (36, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/43/10001543_1569501758442_250x250.png.webp');
INSERT INTO `info_img` VALUES (37, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10001308_1563504635448_250x250.png.webp');
INSERT INTO `info_img` VALUES (37, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10001308_1563504639296_250x250.png.webp');
INSERT INTO `info_img` VALUES (37, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/08/10001308_1563504642720_250x250.png.webp');
INSERT INTO `info_img` VALUES (38, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/85/10005885_1600244750250_250x250.png.webp');
INSERT INTO `info_img` VALUES (38, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/85/10005885_1600244758637_250x250.png.webp');
INSERT INTO `info_img` VALUES (38, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/85/10005885_1600244654775_250x250.png.webp');
INSERT INTO `info_img` VALUES (39, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/73/10001573_1571214290405_250x250.png.webp');
INSERT INTO `info_img` VALUES (39, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/73/10001573_1571214290618_250x250.png.webp');
INSERT INTO `info_img` VALUES (39, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/73/10001573_1571214290618_250x250.png.webp');
INSERT INTO `info_img` VALUES (40, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/21/10002721_1597050271686_250x250.png.webp');
INSERT INTO `info_img` VALUES (40, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/21/10002721_1597050276484_250x250.png.webp');
INSERT INTO `info_img` VALUES (40, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/21/10002721_1597050288511_250x250.png.webp');
INSERT INTO `info_img` VALUES (51, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/63/10006063_1604993998082_250x250.png.webp');
INSERT INTO `info_img` VALUES (41, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/07/10005607_1594368385019_250x250.png.webp');
INSERT INTO `info_img` VALUES (41, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/07/10005607_1595908361543_250x250.png.webp');
INSERT INTO `info_img` VALUES (42, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519340316_250x250.png.webp');
INSERT INTO `info_img` VALUES (42, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519340323_250x250.png.webp');
INSERT INTO `info_img` VALUES (42, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519340214_250x250.png.webp');
INSERT INTO `info_img` VALUES (43, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519353667_250x250.png.webp');
INSERT INTO `info_img` VALUES (43, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519353723_250x250.png.webp');
INSERT INTO `info_img` VALUES (43, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/87/10005787_1598519353748_250x250.png.webp');
INSERT INTO `info_img` VALUES (44, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005691_1596685837882_250x250.png.webp');
INSERT INTO `info_img` VALUES (44, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005691_1596685837737_250x250.png.webp');
INSERT INTO `info_img` VALUES (44, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/91/10005691_1596685837966_250x250.png.webp');
INSERT INTO `info_img` VALUES (45, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10005557_1593508090674_250x250.png.webp');
INSERT INTO `info_img` VALUES (45, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10005557_1593508090373_250x250.png.webp');
INSERT INTO `info_img` VALUES (45, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/57/10005557_1593508090373_250x250.png.webp');
INSERT INTO `info_img` VALUES (46, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/76/10002376_1597117033666_250x250.png.webp');
INSERT INTO `info_img` VALUES (46, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/76/10002376_1586787936809_250x250.jpg.webp');
INSERT INTO `info_img` VALUES (46, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/20200630/2020063017100037743_original.jpg.webp');
INSERT INTO `info_img` VALUES (47, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/67/10000167_1597117016621_250x250.png.webp');
INSERT INTO `info_img` VALUES (47, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/67/10000167_1545051009759_250x250.png.webp');
INSERT INTO `info_img` VALUES (47, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/67/10000167_1545051016545_250x250.png.webp');
INSERT INTO `info_img` VALUES (48, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/5759_1541992283430hd_bi_250x250.png.webp');
INSERT INTO `info_img` VALUES (48, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/63/10763_1588756070798_250x250.png.webp');
INSERT INTO `info_img` VALUES (48, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/5759_1541992288475hd_bi_250x250.png.webp');
INSERT INTO `info_img` VALUES (49, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/80/10006080_1605597404639_250x250.png.webp');
INSERT INTO `info_img` VALUES (49, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/80/10006080_1605597404639_250x250.png.webp');
INSERT INTO `info_img` VALUES (49, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/80/10006080_1605597404573_250x250.png.webp');
INSERT INTO `info_img` VALUES (50, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/04/10000704_1555142704176_250x250.png.webp');
INSERT INTO `info_img` VALUES (50, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/04/10000704_1555142709823_250x250.png.webp');
INSERT INTO `info_img` VALUES (50, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/04/10000704_1555142715521_250x250.png.webp');
INSERT INTO `info_img` VALUES (51, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/63/10006063_1604994007864_250x250.png.webp');
INSERT INTO `info_img` VALUES (51, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/63/10006063_1604994020048_250x250.png.webp');
INSERT INTO `info_img` VALUES (41, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/07/10005607_1595908362175_250x250.png.webp');
INSERT INTO `info_img` VALUES (52, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/10006059_1604914770026_250x250.png.webp');
INSERT INTO `info_img` VALUES (52, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/10006059_1604914770026_250x250.png.webp');
INSERT INTO `info_img` VALUES (52, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/10006059_1604914778933_250x250.png.webp');
INSERT INTO `info_img` VALUES (53, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/55/10005555_1593424651051_250x250.png.webp');
INSERT INTO `info_img` VALUES (53, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/55/10005555_1593424651136_250x250.png.webp');
INSERT INTO `info_img` VALUES (53, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/55/10005555_1593424651074_250x250.png.webp');
INSERT INTO `info_img` VALUES (54, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/24/10001724_1573582522338_250x250.png.webp');
INSERT INTO `info_img` VALUES (54, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/24/10001724_1573582527353_250x250.png.webp');
INSERT INTO `info_img` VALUES (54, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/24/10001724_1573582532672_250x250.png.webp');
INSERT INTO `info_img` VALUES (55, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/02/10003702_1606981065348_250x250.png.webp');
INSERT INTO `info_img` VALUES (55, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/02/10003702_1606981070376_250x250.png.webp');
INSERT INTO `info_img` VALUES (55, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/02/10003702_1606981079458_250x250.png.webp');
INSERT INTO `info_img` VALUES (56, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/16/10002316_1587635150717_250x250.png.webp');
INSERT INTO `info_img` VALUES (56, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/16/10002316_1587635158891_250x250.jpg.webp');
INSERT INTO `info_img` VALUES (56, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/16/10002316_1587635186552_250x250.jpg.webp');

-- ----------------------------
-- Table structure for login_img
-- ----------------------------
DROP TABLE IF EXISTS `login_img`;
CREATE TABLE `login_img`  (
  `login_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_img
-- ----------------------------
INSERT INTO `login_img` VALUES ('//usrsyswsdl.vivo.com.cn/usermng/1597668237695.jpg');

-- ----------------------------
-- Table structure for main_parameter
-- ----------------------------
DROP TABLE IF EXISTS `main_parameter`;
CREATE TABLE `main_parameter`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `goods_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_cpu` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_ram` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_size` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_resolution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `shopping_car_id` int(0) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for path
-- ----------------------------
DROP TABLE IF EXISTS `path`;
CREATE TABLE `path`  (
  `path_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of path
-- ----------------------------
INSERT INTO `path` VALUES ('phone', 1);
INSERT INTO `path` VALUES ('charging', 2);
INSERT INTO `path` VALUES ('accessory', 3);
INSERT INTO `path` VALUES ('music', 4);
INSERT INTO `path` VALUES ('house', 5);
INSERT INTO `path` VALUES ('video', 6);
INSERT INTO `path` VALUES ('outside', 7);

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `pay_id` int(0) NOT NULL AUTO_INCREMENT,
  `total_price` double(10, 2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for pay_option
-- ----------------------------
DROP TABLE IF EXISTS `pay_option`;
CREATE TABLE `pay_option`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `text`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_option
-- ----------------------------
INSERT INTO `pay_option` VALUES (1, 'https://paystatic.vivo.com.cn/wpay/web/cashier/static/img/icon.ali_pay.png', '支付宝支付');
INSERT INTO `pay_option` VALUES (2, 'https://paystatic.vivo.com.cn/wpay/web/cashier/static/img/icon.wechat.png', '微信支付');
INSERT INTO `pay_option` VALUES (3, 'https://paystatic.vivo.com.cn/wpay/web/cashier/static/img/icon.ali_pay_hbfq.png', '花呗分期');

-- ----------------------------
-- Table structure for promotional_accessories
-- ----------------------------
DROP TABLE IF EXISTS `promotional_accessories`;
CREATE TABLE `promotional_accessories`  (
  `goods_id` int(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotional_accessories
-- ----------------------------
INSERT INTO `promotional_accessories` VALUES (9);
INSERT INTO `promotional_accessories` VALUES (10);
INSERT INTO `promotional_accessories` VALUES (11);
INSERT INTO `promotional_accessories` VALUES (12);
INSERT INTO `promotional_accessories` VALUES (13);
INSERT INTO `promotional_accessories` VALUES (14);
INSERT INTO `promotional_accessories` VALUES (15);
INSERT INTO `promotional_accessories` VALUES (16);

-- ----------------------------
-- Table structure for promotional_phone
-- ----------------------------
DROP TABLE IF EXISTS `promotional_phone`;
CREATE TABLE `promotional_phone`  (
  `goods_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotional_phone
-- ----------------------------
INSERT INTO `promotional_phone` VALUES (8);
INSERT INTO `promotional_phone` VALUES (2);
INSERT INTO `promotional_phone` VALUES (5);
INSERT INTO `promotional_phone` VALUES (4);
INSERT INTO `promotional_phone` VALUES (6);
INSERT INTO `promotional_phone` VALUES (7);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `goods_id` int(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (1);
INSERT INTO `recommend` VALUES (10);
INSERT INTO `recommend` VALUES (17);
INSERT INTO `recommend` VALUES (25);

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `shopping_car_id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `discount` double(10, 2) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`shopping_car_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (116, 'huhansan', 1898.00, '雾光幻境', '全网通版 6GB+128GB', 6, 1.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/86/10006086_1606122048226_750x750.png.webp', 'vivo Y52s 8GB+128GB 莫奈彩  全网通版 6GB+128GB 雾光幻境', 1);
INSERT INTO `shopping_cart` VALUES (117, 'huhansan', 119.00, '白色', '官方配置', 1, 1.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/71/10005971_1603095877902_750x750.png.webp', 'vivo 33W闪充充电器套装 官方配置 白色', 10);
INSERT INTO `shopping_cart` VALUES (118, 'huhansan', 39.00, '黑色', '官方配置', 1, 0.00, 'https://shopstatic.vivo.com.cn/vivoshop/commodity/00/10005600_1594178371758_750x750.png.webp', 'iQOO Z1x PC保护壳 锐酷黑 官方配置 黑色', 24);

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort`  (
  `sort_id` int(0) NOT NULL AUTO_INCREMENT,
  `sort_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sort_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES (1, '手机系列', '手机');
INSERT INTO `sort` VALUES (2, '手机充电', '设备');
INSERT INTO `sort` VALUES (3, '手机配件', '设备');
INSERT INTO `sort` VALUES (4, '音乐设备', '设备');
INSERT INTO `sort` VALUES (5, '智能硬件', '设备');
INSERT INTO `sort` VALUES (6, '游戏摄影', '设备');
INSERT INTO `sort` VALUES (7, '日常出行', '设备');

-- ----------------------------
-- Table structure for style
-- ----------------------------
DROP TABLE IF EXISTS `style`;
CREATE TABLE `style`  (
  `style_id` int(0) NOT NULL AUTO_INCREMENT,
  `style_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`style_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of style
-- ----------------------------
INSERT INTO `style` VALUES (1, '主页');
INSERT INTO `style` VALUES (2, '手机系列');
INSERT INTO `style` VALUES (3, '手机充电');
INSERT INTO `style` VALUES (4, '手机配件');
INSERT INTO `style` VALUES (5, '音乐设备');
INSERT INTO `style` VALUES (6, '智能硬件');
INSERT INTO `style` VALUES (7, '游戏摄影');
INSERT INTO `style` VALUES (8, '日常出行');
INSERT INTO `style` VALUES (9, '全部产品');

-- ----------------------------
-- Table structure for support
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support`  (
  `commodity_support_id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_id` int(0) NOT NULL,
  `commodity_support_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`commodity_support_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of support
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(0) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '111111', 0);
INSERT INTO `user` VALUES (2, 'lisi', '111111', 1);

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version`  (
  `version_id` int(0) NOT NULL AUTO_INCREMENT,
  `version_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version_price_rate` double NOT NULL,
  PRIMARY KEY (`version_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES (1, '全网通版 6GB+128GB', 1);
INSERT INTO `version` VALUES (2, '全网通版 6GB+256GB', 1.1);
INSERT INTO `version` VALUES (3, '全网通版 8GB+128GB', 1.1);
INSERT INTO `version` VALUES (4, '全网通版 8GB+256GB', 1.2);
INSERT INTO `version` VALUES (5, '官方配置', 1);

-- ----------------------------
-- Table structure for version_t
-- ----------------------------
DROP TABLE IF EXISTS `version_t`;
CREATE TABLE `version_t`  (
  `goods_id` int(0) NULL DEFAULT NULL,
  `version_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of version_t
-- ----------------------------
INSERT INTO `version_t` VALUES (1, 1);
INSERT INTO `version_t` VALUES (1, 2);
INSERT INTO `version_t` VALUES (1, 3);
INSERT INTO `version_t` VALUES (1, 4);
INSERT INTO `version_t` VALUES (2, 1);
INSERT INTO `version_t` VALUES (2, 3);
INSERT INTO `version_t` VALUES (2, 4);
INSERT INTO `version_t` VALUES (3, 1);
INSERT INTO `version_t` VALUES (3, 2);
INSERT INTO `version_t` VALUES (3, 3);
INSERT INTO `version_t` VALUES (3, 4);
INSERT INTO `version_t` VALUES (4, 1);
INSERT INTO `version_t` VALUES (4, 3);
INSERT INTO `version_t` VALUES (4, 4);
INSERT INTO `version_t` VALUES (5, 1);
INSERT INTO `version_t` VALUES (5, 3);
INSERT INTO `version_t` VALUES (5, 4);
INSERT INTO `version_t` VALUES (6, 1);
INSERT INTO `version_t` VALUES (6, 2);
INSERT INTO `version_t` VALUES (6, 3);
INSERT INTO `version_t` VALUES (6, 4);
INSERT INTO `version_t` VALUES (7, 2);
INSERT INTO `version_t` VALUES (7, 3);
INSERT INTO `version_t` VALUES (7, 4);
INSERT INTO `version_t` VALUES (8, 1);
INSERT INTO `version_t` VALUES (8, 3);
INSERT INTO `version_t` VALUES (9, 5);
INSERT INTO `version_t` VALUES (10, 5);
INSERT INTO `version_t` VALUES (11, 5);
INSERT INTO `version_t` VALUES (12, 5);
INSERT INTO `version_t` VALUES (13, 5);
INSERT INTO `version_t` VALUES (14, 5);
INSERT INTO `version_t` VALUES (15, 5);
INSERT INTO `version_t` VALUES (16, 5);
INSERT INTO `version_t` VALUES (17, 5);
INSERT INTO `version_t` VALUES (18, 5);
INSERT INTO `version_t` VALUES (19, 5);
INSERT INTO `version_t` VALUES (20, 5);
INSERT INTO `version_t` VALUES (21, 5);
INSERT INTO `version_t` VALUES (22, 5);
INSERT INTO `version_t` VALUES (23, 5);
INSERT INTO `version_t` VALUES (24, 5);
INSERT INTO `version_t` VALUES (25, 5);
INSERT INTO `version_t` VALUES (26, 5);
INSERT INTO `version_t` VALUES (27, 5);
INSERT INTO `version_t` VALUES (28, 5);
INSERT INTO `version_t` VALUES (29, 5);
INSERT INTO `version_t` VALUES (30, 5);
INSERT INTO `version_t` VALUES (31, 5);
INSERT INTO `version_t` VALUES (32, 5);
INSERT INTO `version_t` VALUES (33, 5);
INSERT INTO `version_t` VALUES (34, 5);
INSERT INTO `version_t` VALUES (35, 5);
INSERT INTO `version_t` VALUES (36, 5);
INSERT INTO `version_t` VALUES (37, 5);
INSERT INTO `version_t` VALUES (38, 5);
INSERT INTO `version_t` VALUES (39, 5);
INSERT INTO `version_t` VALUES (40, 5);
INSERT INTO `version_t` VALUES (41, 5);
INSERT INTO `version_t` VALUES (42, 5);
INSERT INTO `version_t` VALUES (43, 5);
INSERT INTO `version_t` VALUES (44, 5);
INSERT INTO `version_t` VALUES (45, 5);
INSERT INTO `version_t` VALUES (46, 5);
INSERT INTO `version_t` VALUES (47, 5);
INSERT INTO `version_t` VALUES (48, 5);
INSERT INTO `version_t` VALUES (49, 5);
INSERT INTO `version_t` VALUES (50, 5);
INSERT INTO `version_t` VALUES (51, 5);
INSERT INTO `version_t` VALUES (52, 5);
INSERT INTO `version_t` VALUES (53, 5);
INSERT INTO `version_t` VALUES (54, 5);
INSERT INTO `version_t` VALUES (55, 5);
INSERT INTO `version_t` VALUES (56, 5);

SET FOREIGN_KEY_CHECKS = 1;
