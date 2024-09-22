-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-06-12 12:15:09
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `love20240612`
--

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL COMMENT '标题',
  `aboutimg` varchar(100) NOT NULL COMMENT '背景图片',
  `info1` varchar(50) NOT NULL COMMENT '对话1',
  `info2` varchar(50) NOT NULL COMMENT '对话2',
  `info3` varchar(50) NOT NULL COMMENT '对话3',
  `btn1` varchar(30) NOT NULL COMMENT '按钮确定',
  `btn2` varchar(30) NOT NULL COMMENT '按钮取消',
  `infox1` varchar(30) NOT NULL COMMENT 'x2',
  `infox2` varchar(30) NOT NULL COMMENT 'x2',
  `infox3` varchar(30) NOT NULL COMMENT 'x2',
  `infox4` varchar(30) NOT NULL COMMENT 'x2',
  `infox5` varchar(30) NOT NULL COMMENT 'x2',
  `infox6` varchar(30) NOT NULL COMMENT 'x2',
  `btnx2` varchar(30) NOT NULL COMMENT 'btnx2',
  `infof1` varchar(30) NOT NULL COMMENT 'f3',
  `infof2` varchar(30) NOT NULL COMMENT 'f3',
  `infof3` varchar(30) NOT NULL COMMENT 'f3',
  `infof4` varchar(30) NOT NULL COMMENT 'f3',
  `btnf3` varchar(30) NOT NULL COMMENT 'btnf3',
  `infod1` varchar(30) NOT NULL COMMENT 'd4',
  `infod2` varchar(30) NOT NULL COMMENT 'd4',
  `infod3` varchar(30) NOT NULL COMMENT 'd4',
  `infod4` varchar(30) NOT NULL COMMENT 'd4',
  `infod5` varchar(30) NOT NULL COMMENT 'd4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `about`
--

INSERT INTO `about` (`id`, `title`, `aboutimg`, `info1`, `info2`, `info3`, `btn1`, `btn2`, `infox1`, `infox2`, `infox3`, `infox4`, `infox5`, `infox6`, `btnx2`, `infof1`, `infof2`, `infof3`, `infof4`, `btnf3`, `infod1`, `infod2`, `infod3`, `infod4`, `infod5`) VALUES
(1, 'Ki_About', 'https://img.gejiba.com/images/7c5f1a655788c0d6ff0cae50232dde65.jpg', 'Hi, 欢迎你的来访', '花有重开日 人无再少年', '记录生活 留住感动', '听我介绍', '结束介绍', '情侣小站Like Girl是我的原创项目', '在暑假假期最后的几天里写完了1.0版本', '目前已开源到码云 版本更新到4.0 项目迎来了尾声', '写后端的时候也是头都大了，不过幸好让我顺利写完了', '在开发过程中遇到了许多问题 也是只能自己探索解决 ...', '喜欢探索知识，热爱学习新知识，热爱开源文化', '为什么叫 Ki？', '不知道你有没有看过《比悲伤更悲伤的故事》', '嗨，我是k，如果有下辈子的话，', '“我想当戒指，眼镜，床和笔记本，这样的话，我就可以...”', '当然跟这个没有关系哈哈', '本站前端所有页面', '首页 index', '点点滴滴 little', '留言板 leaving', '关于 about', '欢迎您的来访 IP已记录');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `articletext` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `articletime` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `articletitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `articlename` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `articletext`, `articletime`, `articletitle`, `articlename`) VALUES
(1, '<quote>引用内容样式</quote>\n\n<hr>\n\n\n<h1>H1文字大小演示</h1>\n\n<hr>\n\n\n<h2>H2文字大小演示</h2>\n\n<hr>\n\n\n<h3>H3文字大小演示</h3>\n\n<hr>\n\n\n<h4>H4文字大小演示</h4>\n\n<hr>\n\n\n<h5>H5文字大小演示</h5>\n\n<hr>\n\n\n<h6>H6文字大小演示</h6>\n\n<hr>\n\n\n<b>加粗字体</b>\n<s>删除线字体</s>\n<i>斜体</i>\n<code>强调内容</code>\n\n<center>文本居中</center>\n\n\n<!--分割线-->\n<hr>\n<quote>插入图片</quote>\n<img alt=\"\" src=\"https://img.gejiba.com/images/b0d44ed67e25235f552aacbe32d81b5c.jpg\">\n<!--分割线-->\n<hr>\n<quote>插入视频</quote>\n<iframe src=\"https://player.kikiw.cn/player/?url=https://www.kikiw.cn/love.mp4\" allowfullscreen=\"true\"></iframe>\n<!--分割线-->\n<hr>', '2024-06-12', 'Like_Girl 默认文章语法', 'Ki');

-- --------------------------------------------------------

--
-- 表的结构 `diySet`
--

CREATE TABLE `diySet` (
  `id` int(11) NOT NULL,
  `headCon` text NOT NULL,
  `footerCon` text NOT NULL,
  `cssCon` text NOT NULL,
  `Pjaxkg` varchar(1) NOT NULL COMMENT 'pjax开关',
  `Blurkg` varchar(1) NOT NULL COMMENT '高斯模糊开关'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `diySet`
--

INSERT INTO `diySet` (`id`, `headCon`, `footerCon`, `cssCon`, `Pjaxkg`, `Blurkg`) VALUES
(1, '', '', '', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `IPerror`
--

CREATE TABLE `IPerror` (
  `id` int(11) NOT NULL,
  `ipAdd` varchar(100) NOT NULL COMMENT 'ip归属地',
  `Time` varchar(200) NOT NULL COMMENT '时间',
  `State` text NOT NULL COMMENT '拉黑ip',
  `text` varchar(100) NOT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `leaving`
--

CREATE TABLE `leaving` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名字',
  `QQ` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'QQ号码',
  `text` text COLLATE utf8_unicode_ci NOT NULL COMMENT '留言内容',
  `time` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ip记录',
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '省/城市'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `leaving`
--

INSERT INTO `leaving` (`id`, `name`, `QQ`, `text`, `time`, `ip`, `city`) VALUES
(1, 'Ki.', '3439780232', 'LikeGirl#5.1.0默认留言', '1718090394', '127.0.0.1', '广东省');

-- --------------------------------------------------------

--
-- 表的结构 `leavSet`
--

CREATE TABLE `leavSet` (
  `id` int(11) NOT NULL,
  `jiequ` varchar(10) NOT NULL COMMENT '截取长度',
  `lanjie` varchar(500) NOT NULL COMMENT '违禁符号',
  `lanjiezf` varchar(500) NOT NULL COMMENT '违禁词'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `leavSet`
--

INSERT INTO `leavSet` (`id`, `jiequ`, `lanjie`, `lanjiezf`) VALUES
(1, '25', '`~!@#$^&*()=|{}\':;\',\\\\[\\\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“\'。，、？', '草泥马');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL COMMENT '登录用户名',
  `pw` char(32) NOT NULL COMMENT '登录密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `user`, `pw`) VALUES
(1, 'admin', 'af331f6ad040fcfcea704aa02a6ae77a');

-- --------------------------------------------------------

--
-- 表的结构 `loveImg`
--

CREATE TABLE `loveImg` (
  `id` int(11) NOT NULL,
  `imgDatd` varchar(100) NOT NULL COMMENT '日期',
  `imgText` varchar(200) NOT NULL COMMENT '描述',
  `imgUrl` varchar(200) NOT NULL COMMENT '外链'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `loveImg`
--

INSERT INTO `loveImg` (`id`, `imgDatd`, `imgText`, `imgUrl`) VALUES
(1, '2022-11-26', 'Like_Girl — 5.1.0相册测试', 'https://www.kikiw.cn/liuyi.png'),
(2, '2022-11-26', '夏至末至 我最喜欢听的追光者~', 'https://img.gejiba.com/images/43f3e4449c2fe004903d87164998b9e6.jpg'),
(3, '2022-11-26', '“真的很想和你去一趟浪漫的厦门”', 'https://img.gejiba.com/images/901a33ff29f3b9480fc8572856cf7664.jpg'),
(4, '2022-11-26', '“真的很想和你去一趟浪漫的厦门”', 'https://img.gejiba.com/images/dfafa31a39bc0775306bfd83c3571c68.jpg'),
(5, '2022-11-26', '追光者多年后听到还是会心头一颤', 'https://img.gejiba.com/images/f18a5c0ecd51fc6cc43b5afef3e92837.jpg'),
(6, '2022-11-26', '太可爱啦 好像是叫“团团”来着~', 'https://img.gejiba.com/images/8344adb24e8440e83c0d2b36cba19fdd.jpg'),
(7, '2024-05-03', '最近不错的一部港片 很好看', 'https://img.gejiba.com/images/d929e9197da0237da2742adb19491abd.jpg'),
(8, '2024-06-09', '入手了一辆公路车 骑了30公里 现在屁股发麻...', 'https://img.gejiba.com/images/688553237cdbaacd58ec513e322c47ca.jpg'),
(9, '2024-06-09', '太好吃啦 这个牛蛙', 'https://img.gejiba.com/images/9b0940c31dfa5bdded0af45e7fa5b581.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lovelist`
--

CREATE TABLE `lovelist` (
  `id` int(11) NOT NULL,
  `icon` int(1) NOT NULL COMMENT '是否完成',
  `eventname` varchar(200) CHARACTER SET utf8mb4 NOT NULL COMMENT '事件内容',
  `imgurl` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT '图片地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lovelist`
--

INSERT INTO `lovelist` (`id`, `icon`, `eventname`, `imgurl`) VALUES
(1, 1, '一起去电影院看一场电影🎬', 'https://img.gejiba.com/images/d929e9197da0237da2742adb19491abd.jpg'),
(2, 0, '一起穿情侣装逛街🧡', '0'),
(3, 0, '一起去一趟迪士尼游乐园🍉', '0'),
(4, 0, '一起去游泳🍇', '0'),
(5, 0, '一起唱次歌并且录下来🍓', '0'),
(6, 0, '一起在厨房做次饭🍈', '0'),
(7, 0, '一起过次烛光晚餐🍒', '0'),
(8, 0, '一起过生日🍑', '0'),
(9, 0, '一起打扫卫生🥭', '0'),
(10, 0, '一起给对方写信，然后读给对方听🍍', '0'),
(11, 0, '一起去一次鬼屋🥥', '0'),
(12, 0, '一起去蹦极🥝', '0'),
(13, 0, '一起养一只宠物🍅', '0'),
(14, 0, '一起研究口红色号🌽', '0'),
(15, 0, '一起给对方化妆🧅', '0'),
(16, 0, '一起为对方抹指甲油🥕', '0'),
(17, 0, '一起去做次陶艺🥗', '0'),
(18, 0, '一起去吃一次全家桶🥔', '0'),
(19, 0, '一起熬夜通宵跨年🍠', '0'),
(20, 0, '一起去旅游🥯', '0'),
(21, 0, '一起去爬山⛰🧇', '0'),
(22, 0, '一起坐一次摩天轮🥞', '0'),
(23, 0, '一起拍视频记录生活🧀', '0'),
(24, 0, '一起为对方刷牙，然后亲亲🍗', '0'),
(25, 0, '一起去看一次海，去沙滩🍖', '0'),
(26, 0, '互穿对方的衣服，拍照留念🥩', '0'),
(27, 0, '一起逛超市买好吃的🍤', '0'),
(28, 0, '一起坐一次热气球🥓', '0'),
(29, 0, '一起看书，分享自己喜欢的书籍🍔', '0'),
(30, 0, '一起在下雨天追剧🍟', '0'),
(31, 0, '一起做一次蛋糕甜点🌭', '0'),
(32, 0, '一起看日出看日落🍕', '0'),
(33, 0, '一起上下班，坐地铁🍝', '0'),
(34, 0, '一起坐一次飞机🥪', '0'),
(35, 0, '一起种花草🌮', '0'),
(36, 0, '一起用情侣手机壳🌯', '0'),
(37, 0, '一起去一次海底世界🥙', '0'),
(38, 0, '一起喝醉一次🧆', '0'),
(39, 0, '一起打扑克牌🍜', '0'),
(40, 0, '一起修理电器🍲', '0'),
(41, 0, '一起看烟花🥘', '0'),
(42, 0, '一起吃火锅🧂', '0'),
(43, 0, '一起庆祝恋爱纪念日🧈', '0'),
(44, 0, '一起看雪，堆雪人🍥', '0'),
(45, 0, '一起和朋友们去吃饭🍱', '0'),
(46, 0, '一起跳舞🍣', '0'),
(47, 0, '一起听音乐，听同一首歌🍙', '0'),
(48, 0, '一起坐一次船🍛', '0'),
(49, 0, '一起露营，住一次帐篷🍘', '0'),
(50, 0, '一起DIY手工🍚', '0'),
(51, 0, '给对方准备礼物🥟', '0'),
(52, 0, '一起去我们上过的小学，中学，大学🍢', '0'),
(53, 0, '一起在沙发上躺着🍡', '0'),
(54, 0, '一起睡个懒觉，赖个床🍧', '0'),
(55, 0, '偷偷为对方买喜欢又舍不得的东西🍨', '0'),
(56, 0, '一起坐一次巴士，在没去过的地方下车🍦', '0'),
(57, 0, '一起为布置小家出主意🍰', '0'),
(58, 0, '一起在午夜看一次恐怖片🎂', '0'),
(59, 0, '一起去挑选一束花🧁', '0'),
(60, 0, '一起去跳一次广场舞🥧', '0'),
(61, 0, '一起为对方按摩一次🍮', '0'),
(62, 0, '一起放一次风筝🍭', '0'),
(63, 0, '一起吐槽一次对方的缺点🍬', '0'),
(64, 0, '接对方下班一次🍫', '0'),
(65, 0, '当陌生人一天，不许交流🍿', '0'),
(66, 0, '为对方做便当🍩', '0'),
(67, 0, '一起存钱🍪', '0'),
(68, 0, '一起去看樱花🥮', '0'),
(69, 0, '一起敷面膜🥠', '0'),
(70, 1, '一起去一次动物园☕', 'https://img.gejiba.com/images/45090d8851732d1b90dbad90f1c4b887.jpg'),
(71, 1, '一起骑行车🍵', 'https://img.gejiba.com/images/0e460ae2a5083e82b7c0051064443ec8.jpg'),
(72, 0, '一起拍照洗照片贴房间🥣', '0'),
(73, 0, '一起听一次演唱会🍼', '0'),
(74, 0, '一起去一次酒吧🥤', '0'),
(75, 0, '一起去听一次相声🧃', '0'),
(76, 0, '一起玩一次真心话大冒险🧉', '0'),
(77, 0, '一起去许愿池许个愿🥛', '0'),
(78, 0, '一起入住一次五星级酒店，看夜景🍺', '0'),
(79, 0, '一起去见父母🍻', '0'),
(80, 0, '一起挑选戒指🍷', '0'),
(81, 0, '一起挑选婚纱🥂', '0'),
(82, 0, '一起为我们的小家添置东西🥃', '0'),
(83, 0, '一起期待未来甜蜜小生活🍸', '0');

-- --------------------------------------------------------

--
-- 表的结构 `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `boy` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '男name',
  `girl` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '女name',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站标题',
  `logo` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站logo',
  `writing` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站文案',
  `boyimg` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '男QQ',
  `girlimg` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '女QQ',
  `startTime` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '开始时间',
  `icp` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站备案号',
  `Copyright` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '网站版权',
  `card1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deci1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deci2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deci3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bgimg` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '首页背景图片地址',
  `userQQ` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '站长QQ',
  `userName` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'userName',
  `Animation` int(1) NOT NULL COMMENT '动画开关'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `text`
--

INSERT INTO `text` (`id`, `boy`, `girl`, `title`, `logo`, `writing`, `boyimg`, `girlimg`, `startTime`, `icp`, `Copyright`, `card1`, `card2`, `card3`, `deci1`, `deci2`, `deci3`, `bgimg`, `userQQ`, `userName`, `Animation`) VALUES
(1, 'Ki', 'Li', 'Like_Girl_5.1.0', 'Like_Girl_5.1.0', '喜欢花 喜欢浪漫 喜欢你.~', '647159607', '917640289', '2022-06-05T00:07', '粤ICP备2021037776号', 'Copyright © 2022 - 2024 Like_Girl All Rights Reserved.', '点点滴滴', '留言板', '关于我们', '有人愿意听你碎碎念念也很浪漫', '在这里写下我们的留言祝福', '我们之间认识的经历回忆', 'https://img.gejiba.com/images/f4b1de284e9dcb9057553642d9fee764.png', '3439780232', 'Ki', 1);

-- --------------------------------------------------------

--
-- 表的结构 `warning`
--

CREATE TABLE `warning` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL COMMENT 'ip地址',
  `gsd` varchar(50) NOT NULL COMMENT '归属地',
  `time` varchar(80) NOT NULL COMMENT '时间',
  `file` varchar(100) NOT NULL COMMENT '路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转储表的索引
--

--
-- 表的索引 `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `diySet`
--
ALTER TABLE `diySet`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `IPerror`
--
ALTER TABLE `IPerror`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `leaving`
--
ALTER TABLE `leaving`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `leavSet`
--
ALTER TABLE `leavSet`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `loveImg`
--
ALTER TABLE `loveImg`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `lovelist`
--
ALTER TABLE `lovelist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `warning`
--
ALTER TABLE `warning`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `diySet`
--
ALTER TABLE `diySet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `IPerror`
--
ALTER TABLE `IPerror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `leaving`
--
ALTER TABLE `leaving`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `leavSet`
--
ALTER TABLE `leavSet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `loveImg`
--
ALTER TABLE `loveImg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `lovelist`
--
ALTER TABLE `lovelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- 使用表AUTO_INCREMENT `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `warning`
--
ALTER TABLE `warning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
