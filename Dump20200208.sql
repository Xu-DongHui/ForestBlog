-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: forest_blog
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_user_id` int(11) unsigned DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `article_content` mediumtext,
  `article_view_count` int(11) DEFAULT '0',
  `article_comment_count` int(11) DEFAULT '0',
  `article_like_count` int(11) DEFAULT '0',
  `article_is_comment` int(1) unsigned DEFAULT NULL,
  `article_status` int(1) unsigned DEFAULT '1',
  `article_order` int(11) unsigned DEFAULT NULL,
  `article_update_time` datetime DEFAULT NULL,
  `article_create_time` datetime DEFAULT NULL,
  `article_summary` text,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (35,3,'三国第1谈 | 十常侍干政','<p></p><p class=\"MsoNormal\"><span>不论历史，不讲人物，只谈演义。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>今天谈：<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><img src=\"/uploads/2020\\2/jiangshui(1).jpg\" alt=\"jiangshui.jpg\"></p><p></p><p class=\"MsoNormal\"><span>翻开书卷，一声历经沧桑的“天下大势，分久必合，合久必分”将我们的视线拉回到隐患重重的东汉末年，天下分崩在即。而“推其致乱之由，殆始于桓、灵二帝”，天下兴，则明君显，天下乱，则昏君作，这种意识伴随了我们五千余年。大概每每遇到不如人意之事，我们总希望有青天大老爷来帮我们主持公道；青天老爷不管，拜祖宗；祖宗不显灵，便烧香给菩萨老佛；菩萨老佛不管用，便两手一撒，两眼一抹黑，眼不见为净，跑到深山老林过日子去，也落得个快活自在。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span>此时正是宦官弄权。宦官曹节等，在清除了“大将军窦武、太傅陈蕃”等外戚势力后，宦官的权利达到了巅峰。但殊不知物极必反、盛极而衰吗？<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>天下分合，汉朝末年之乱，在于朝廷之乱，祸乱的缘由大概有二，<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span>一、外戚干政，在刘汉王朝尤为常见，起源可追溯到吕后，直接威胁皇权。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span>二、宦官专权，宦官之权大可视为皇权的外延，导致皇权的滥用。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>如此看来，宦官之乱在汉朝常见，大抵是因为<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>一、外戚专权，皇权依赖宦官势力反击，所以宦官势力能由此兴起。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>二、外戚之乱直击皇权基石，而宦官之权依赖于皇权，皇权可适时约束宦官。因此皇权信宦官而击外戚。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>我们可以把这两者的关系当标尺。我们大可用好这杆尺，好好量一量这东汉末年的天下。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><img src=\"/uploads/2020\\2/朝议.png\" alt=\"朝议.png\"></p><p class=\"MsoNormal\"><span>汉灵帝宠信十常侍，十常侍团结一致，把控朝廷。其权势之大，第一回里，详细描述了一次汉灵帝当朝决策的过程。天降恶兆，灵帝召集群臣商议，可惜真正有影响力的人却在此次朝议，注定这次会议无果。议郎蔡邕上疏，借天降异相，巧言相劝灵帝，重视“妇寺干政”的问题，而灵帝也“览奏叹息”，但却依旧无可奈可。当时朝廷已完全被宦官把持。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.</span><span lang=\"EN-US\"> </span><span>帝“览奏叹息”，应该是已经注意到了宦官专政的问题，却没有办法解决，但也不能立即解决，治理朝政也需要宦官的支持。失去外戚势力的制衡后，宦官的权利很难限制了。因此“十常侍”之乱首在灵帝。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.</span><span>群臣敢怒不敢言，只有蔡邕一人进谏，而无人附和，足已见得满朝大臣早已在“十常侍”的干政下，忠义之臣所剩无几了。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.</span><span>而在朝仪之时，“曹节在后窃视，悉宣告左右”监听异见，并在私下“遂以他事陷邕于罪，放归田里”。十常侍权利之大，致使“朝政日非”。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>正当“十常侍”把控朝廷之势大，朝廷内外反十常侍的力量也日渐增长。中国历史上最常见的农民起义正在酝酿，而借镇压“黄巾军”而兴起做大的势力，正在登陆舞台，外戚势力、地方官宦势力都在暗地里累积实力。黄巾军被镇压完后，代表上层阶层的势力才逐步登录舞台，逐鹿中原，真正的三国演义才正式拉开帷幕。因此，东汉之乱，十常侍干政为源，黄巾军起义为引，而人人都有皇帝梦才是真。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span>豪杰争霸书汗青，农民埋首归尘土。且看下回，黄巾军起义。</span></p>',1,0,0,1,1,1,'2020-02-08 16:10:24','2020-02-08 16:00:45','不论历史，不讲人物，只谈演义。\r\n\r\n今天谈：\r\n\r\n三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功翻开书卷，一声历经沧桑的“天下大势，分久必合，合久必分”将我们的视线拉回到隐患重重的东汉末年，天下分崩在即。而“推其致乱之由，殆始于桓、灵二帝”，天下兴，则明君显，天下乱，则昏君作，这种意识伴随了'),(36,3,'三国第2谈 | 黄巾军起义','<p class=\"MsoNormal\"><span>不论历史，不讲人物，只谈演义。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>今天看：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>今天谈一谈：\r\n黄巾军起义<span lang=\"EN-US\"><o:p></o:p></span></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"EN-US\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>前一谈讲到，十常侍干政，扰乱汉朝政局，但大汉毕竟历经四百多年，百足之虫死而不僵，虽有宦官弄权，却也不至于天下大乱，但就像暴风雨前的宁静，天下势力却都蠢蠢欲动，在等待压倒汉王朝的最后一根稻草。</span></p><p><span><img src=\"/uploads/2020\\2/百姓贫困.png\" alt=\"百姓贫困.png\"><br></span></p><p class=\"MsoNormal\"><span>终于“中平元年正月内，疫气流行”，天灾霍疫，百姓吃不饱饭可以忍，但得病了要死了，这可怎么忍呢？民间怨恨、慌乱的情绪高涨。而群情激奋、力量积蓄之时，正需要一个英雄人物，将百姓的力量拧成一股绳。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>“时巨鹿郡有兄弟三人，一名张角，一名张宝，一名张梁。”而在这乱世之中，要能收买人心也得采用点“术”：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>一、神秘其道：在古代科技不够发达的时候，利用神幻之事，来为自己地位添砖加瓦的例子，数不胜数。且说汉朝初期，陈述吴广借鬼神称王、高祖斩白蛇起义等皆是如此。张角传闻师从“南华老仙”“能呼风唤雨”，想必也是张角神话自己的手段。在大瘟疫期间，从“张角散施符水，为人治病”来看，张角应该是医生，有治病的方法，因此在为百姓治病的过程中，收买人心。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span>二、凝聚力量：人数众多后，张角必须加强管理才能，才能驾驭得了这些力量。因此“次后徒众日多，角乃立三十六方，大方万余人，小方六七千，各立渠帅，称为将军”，并且为组织找到了一个方向“苍天已死，黄天当立；岁在甲子，天下大吉”，成为了百姓的精神领袖“家家侍奉大贤良师张角名字”。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><span><img src=\"/uploads/2020\\2/黄巾军起义.png\" alt=\"黄巾军起义.png\"><br></span></p><p class=\"MsoNormal\"><span>因此，一时间张角的力量庞大，民心都归于黄巾军。然而在面对如何起兵反叛好朝廷的方式上，黄巾军却选择了错误的方式：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>一、客观来看，当时汉朝国势未衰，汉朝天子的权威不灭，因此黄巾军直接以改朝换代的口号起兵，的确是以散兵游勇“叛”对抗汉朝军队的“忠”。因此，黄巾军起义后，汉朝马上调拨兵力“遣中郎将卢植、皇甫嵩、朱俊，各引精兵、分三路讨之”。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>二、起兵前，张角想要勾结十常侍之一的“封谞”作为内应，里应外合。但“封谞”实在不足以作为以“苍天已死，黄天当立”为口号的黄巾军的同盟。第一、十常侍干政，祸乱天下，百姓怨声载道，与“十常侍”合作会丧失天下的民心。第二，十常侍的权力来源于皇权，势力止于京师，也并没有军事实力，很难为黄巾军在内部提供支持。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>而后黄巾军因为“唐周乃径赴省中告变”，中途仓促起兵，准备更加不足，因此实在是难以与汉王朝对抗，失败也是必然的。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>要是换种思路，如果黄巾军起兵时：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>一、汉王朝势大，不可与之直接对抗。因此若不以“苍天已死，黄天当立”为目标，而以“清君侧，诛十常侍”为口号，号令天下贫困百姓和遭到排挤的官吏，以维护皇室的“忠义”来集中力量共同起兵，并最终控制汉朝。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>二、隐忍待机，等汉朝内部自相攻伐，再行起兵。十常侍干政，并未造成天下大乱。而隐忍不发，放纵十常侍，十常侍更有可能自取灭亡，造成天下大乱。天下越乱，黄巾军越有机会。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;</span></p><p class=\"MsoNormal\"><span>然而，历史容不得假设，只能如江水涛涛向东流一般，一往无前，不得后退。黄巾军虽然避免不了失败的结果，但却严重打击了汉朝的势力，揭开了三国演义豪强并起的大幕。天下大乱，英雄登场。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;</span></p><p class=\"MsoNormal\"><span>“风从虎，云从龙。沧海横流方显英雄本色”<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span>且看下一谈，桃园结义。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><span><br></span></p>',0,0,0,1,1,1,'2020-02-08 16:14:12','2020-02-08 16:14:12','不论历史，不讲人物，只谈演义。今天看：三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功今天谈一谈：\r\n黄巾军起义\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 前一谈讲到，十常侍干政，扰乱汉朝政局，但大汉毕竟历经四百多年，百足之虫死而不僵，虽有宦官弄权'),(37,3,'三国第3谈 | 桃园结义（上）','<p><p class=\"MsoNormal\"><span>不论历史，不讲人物，只谈演义。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>今天看：<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>今天谈一谈：\r\n桃园结义<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span>上一谈，讲到黄巾军起义。黄巾军起义敢为天下先，率先揭起反抗朝廷的大旗，这就像一颗石子丢进了死气沉沉的湖水中，引起了整个汉王朝豪杰们的蠢蠢欲动。大家都知道，这是一个建功立业的难得的机会，改变命运的机会在此一举，即使是踩着无数官逼民反的农民的尸体也无所谓。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span>凭着反抗黄巾军的理由，各地军阀都开始大肆招兵扩充实力，而像刘关张这种底层的百姓，也只有靠着官府招兵的机会，才有可能建功立业，即便如此，从军营底层做到高层，每天都得提防着会不会掉脑袋呢！<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><img src=\"/uploads/2020\\2/县城招兵.png\" alt=\"县城招兵.png\"></p><p><span>幽州太守刘焉的招兵榜文到了涿县，便引出了三国中的其中一个主人公：刘备。但凡做了皇帝的人，不管你开始的地位多么卑微，后世的史书总会给皇帝的人生中添加一丝传奇的色彩，以示皇帝乃天命所归，不是一般寻常的百姓可以奢望的。百姓终究就应该安稳安慰地去做百姓。</span></p><p><span><img src=\"/uploads/2020\\2/刘备.png\" alt=\"刘备.png\"><br></span></p><p class=\"MsoNormal\"><span>刘备是刘关张中唯一一个详细介绍身世的人。我们可以分析一下刘备在发迹前是怎么样的一个人。<span lang=\"EN-US\"><o:p></o:p></span></span></p></p><p class=\"MsoNormal\"><span>（<span lang=\"EN-US\">1</span>）“不甚好读书”：说明兴趣不在书中的研究，目标往往在现实的建立功业之中，坐不住。这和刘备后来的人生轨迹基本相符。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>（<span lang=\"EN-US\">2</span>）“性宽和，寡言语，喜怒不形于色”：这可能和刘备幼年丧父，家贫的客观原因有关，从小养成了内向的性格，比较能够忍耐。因此刘备能够在这么长时间毫无建树的情况下，依旧坚持自己的目标。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>（<span lang=\"EN-US\">3</span>）素有大志，专好结交天下豪杰：说明刘备的交际圈很广，所以不排除其实他很早就已经听说过张飞了。“尝师事郑玄、卢植，与公孙瓚等为友。”郑玄、卢植都是东汉末年的政界、学界名流，刘备作为一个涿县贩屦织席的贫困小儿，何以能够和拜他们为师？而公孙瓒也是出身名门，后坐拥幽州，刘备能和他为友，也不简单。因此在刘备发迹前，应该还是有贵人相助，这个贵人应该就是刘备叔父：刘元起。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>刘元起 “因见玄德家贫，常资给之。” 经常资助刘备，这么看，刘元起的资助应该是为刘备导入了很多社会资源，而不仅仅是资助他钱财。同时，刘元起也懂得给刘备造势。“玄德幼时，与乡中小儿戏于树下，曰：“我为天子，当乘此车盖。”叔父刘元起奇其言，曰：“此儿非常人也！”\r\n”这个描述的场景中，能够作证的人就是刘备叔父刘元起，因此这很有可能就是刘元起自己杜撰出来的。 <span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>刘备在二十八岁前一直过的是贩屦织席的底层生活，若没有东汉末年这风云突变的机缘，他大概也差不多也就是一个黄土埋身的百姓罢了，令人忍不住感慨时势造英雄。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>“大器晚成未可知，扶摇直上九万里”<span lang=\"EN-US\"><o:p></o:p></span></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span>且看下一谈，桃园结义（下）</span></p>',0,0,0,1,1,1,'2020-02-08 16:19:16','2020-02-08 16:19:16','不论历史，不讲人物，只谈演义。\r\n\r\n今天看：\r\n\r\n三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功\r\n\r\n今天谈一谈：\r\n桃园结义\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上一谈，讲到黄巾军起义。黄巾军起义敢为天下先，率先揭起反抗朝廷的大旗，这就像一颗石子丢进了死气'),(38,3,'三国第4谈 | 桃园结义（下）','<p><p class=\"MsoNormal\"><span>不论历史，不讲人物，只谈演义。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>今天看：<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>今天谈一谈：\r\n桃园结义<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>上一谈讲到，刘备在涿县面对招兵，“见了榜文，慨然长叹”。这一叹，不叹则已，一叹惊人，乃至改变了东汉末年军阀割据的走向。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>历史的车轮来到了东汉末年招兵的这一刻，三个影响历史发展的人物的生命轨迹在此交汇。历史，表现得如此偶然，但也充满了必然。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><img src=\"/uploads/2020\\2/张飞(1).png\" alt=\"张飞.png\"><br></p><p class=\"MsoNormal\"><span>张飞“世居涿郡，颇有庄田，卖酒屠猪，专好结交天下豪杰。”因见刘备“看榜而叹”而主动上前搭讪。要是张飞没有注意到刘备，或者他们压根就没有在县城里碰到，这段历史岂不是没有了么？但我分析：<span lang=\"EN-US\"><o:p></o:p></span></span></p></p><p class=\"MsoNormal\"><span>第一、张飞、刘备本是涿县老乡，古时一乡之中相对封闭，乡人对自己乡内的是相对了解，口口相传，因此张飞刘备可能早就听闻本乡之中对方的存在，但缺乏碰面的机会。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>第二、张飞、刘备皆是“好结交天下豪杰”的闲不住的主，从其他豪杰口中听说对方的机会也比较大。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span>因此，张飞与刘备看似偶然的碰面中，张飞主动搭讪并且介绍和推荐自己看来，当天张飞很可能是早就认出了刘备，并且在拥有一定资产的情况下，正在筹划大事，寻找团队。而刘备如果也早就听闻过张飞的话，也应该了解张飞的为人。面对张飞的主动示好，便通过“本汉室宗亲”和“有志欲破贼安民”两点优势，与张飞寻求合作，于是两人一拍即合。而且，一向喜怒不形于色的刘备表现为：“玄德甚喜”，而一向性格猛烈的张飞，却没有任何心情描述，一切似乎都在张飞的预料之中。这也恰恰与“张飞安排和刘备的碰面向其示好，刘备抓住时机与拥有资产的张飞初步组建团队”的推测一致。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><p><img src=\"/uploads/2020\\2/关羽.png\" alt=\"关羽.png\"><br></p><p class=\"MsoNormal\"><span>接下来，在酒店中，刘关张三人第一次见面。而更为神奇的是，刘备竟然在第一次见面的情况下，就邀请关羽加入自己即将成立的团队中。对于关羽第一印象，三国演义中描述了以下几点<span lang=\"EN-US\"><o:p></o:p></span></span></p></p><p class=\"MsoNormal\"><span>一、“身长九尺，髯长二尺；面如重枣，唇若涂脂；丹凤眼，卧蚕眉，相貌堂堂，威风凛凛。”表明关羽身材魁梧，在冷兵器时代，体力就决定了武力高低，毫无疑问，关羽就是天生武将。因此，第一眼，刘备就对关羽很有兴趣，主动招募对方“邀他同坐，叩其姓名”。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>二、关羽自我介绍“吾姓关，名羽，字长生，后改云长，河东解良人也。因本处势豪倚势凌人，被吾杀了，逃难江湖，五六年矣。今闻此处招军破贼，特来应募。”关羽在面对刘备和张飞的自我介绍时，大概是关于关羽此生最重要的面试了。而关羽的介绍也很有意思：<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>（<span lang=\"EN-US\">1</span>）直言不讳杀人的事实。这么说有一个很大的疑惑，那就是为什么关羽不美化一下自己的过去？除了关羽本身的诚信的为人外，其实有两点好处，第一、强杀本地恶霸的行为，既能彰显自己锄强扶弱的仗义和高超的武艺外，也能对对方表现出一定的诚意。第二、关羽摆出自己是一个杀人犯的事实，如果对方要拉关羽入伙，就得接受这个事实。这其实也是考验对方有没有胸怀和志向来容纳自己。因此关羽考验对方的方式。因此，很显然，关羽其实也在打量着对方的实力。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>（<span lang=\"EN-US\">2</span>）至今一事无成“逃难江湖，五六年矣。“以关羽的能力，依旧流浪江湖五六年而不肯安定，说明其志不在小也。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p class=\"MsoNormal\"><span>（<span lang=\"EN-US\">3</span>）“今闻此处招军破贼，特来应募。”关羽之志不在其他，正是希望参军灭敌，建立功业。这恰恰与刘备、张飞的志向暗合。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span>而刘备在听完关羽的话后，“遂以己志告之”，足以见得刘备识别出了关羽的才能，而关羽也很满意刘备的胸怀和志向，“云长大喜”。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><p><img src=\"/uploads/2020\\2/喝酒.png\" alt=\"喝酒.png\"><br></p><p><p class=\"MsoNormal\"><span>然而三人的会面依旧太过于浅显，实在是不足以建立称兄道弟、患难与共的兄弟情义。那么三人酒馆第一次会面之后，又做了什么呢？三国演义里写：“同到张飞庄上，共议大事。”我们不知道在这次会议中三人讨论了什么，但我们应该能够想象到刘备在两人面前大谈天下形势的慷慨激昂、三人在谈到未来建功立业的兴奋激动和三人相互倾述胸臆的滔滔不绝。经过这次讨论，刘关张彻底确定了共谋大事的志向、确定了刘备大哥的地位和相互了解了对方的为人。这次会议是三人为成功迈出的第一步。<span lang=\"EN-US\"><o:p></o:p></span></span></p><p><p class=\"MsoNormal\"><span>于是，张飞顺势提出了“桃园结义”的建议，这个建议是将这次会议获得的成果通过盟誓的方式彻底固定下来，极大地提升了团队的凝聚力和执行力。不难看出，张飞极善于经营，懂得团队的管理，也怪不得他能够在东汉末年的乱世中依旧经营得一份不错的家产，并且极具战略目光地看到未来即将天下大乱，个人的小富小贵根本得不到保障。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>“誓毕，拜玄德为兄，关羽次之，张飞为弟”，张飞为团队提供了起事前的几乎所有物资，并且甘愿居于二人之下，由此看来张飞胸怀志向也远非常人可比，令人佩服。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>在三人的核心团队确认后，刘关张雄心勃勃，开始登陆三国的舞台。而天下之大，多少不甘平庸的有志之士，也正在因为各种机缘而相遇、相识、相交，哪怕最终分毫功名未取，也因能拥有身边这些患难兄弟而欣慰。<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>“桃园结义兄弟情，同心共谋千秋业。”<span lang=\"EN-US\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span>且看下一谈：刘关张首战<span lang=\"EN-US\"><o:p></o:p></span></span></p><br></p></p></p>',1,1,1,1,1,1,'2020-02-08 16:23:27','2020-02-08 16:23:27','不论历史，不讲人物，只谈演义。\r\n\r\n今天看：\r\n\r\n三国演义第一回：宴桃园豪杰三结义　斩黄巾英雄首立功\r\n\r\n今天谈一谈：\r\n桃园结义\r\n\r\n&nbsp;\r\n\r\n上一谈讲到，刘备在涿县面对招兵，“见了榜文，慨然长叹”。这一叹，不叹则已，一叹惊人，乃至改变了东汉末年军阀割据的走向。\r\n\r\n历史的车轮'),(39,3,'兵败赤壁后曹操为什么要“大笑三声”','<p><img src=\"/uploads/2020\\2/曹笑.png\" alt=\"曹笑.png\"><br></p><p>曹操跑到乌林之西，看到周围树木茂盛，在马上仰面大笑，要知道现在曹操可是刚跑出赤壁火葬场，处在后面追兵，前途未仆的危险时刻，这时候曹操竟然还笑得出来，估计当时的将士谋臣也是一头雾水吧。要知道在这生死存亡的关键时刻，你说的每一句话，都可能会影响这个团队的人心走向。</p><p>那曹操笑啥呢，笑得还是蛮有水平的：</p><p>你要是，是逃脱危险，劫后余生的笑，那实在是显得你头脑简单，不切实际，手下的人都得怀疑你的业务水平。刚摆脱追兵，你就开始要庆祝，你莫不是一个铁憨憨吧。要是你再添油加醋，强行美化现实，大喊“兄弟们，我们已经快安全了，前面就快到南郡了，那儿有曹仁在，咱们都不怕了。”，你以为自己成功地鼓舞了手下的人，但别人也不是傻子啊，这离南郡还远着呢，心里只会骂傻逼，不再相信你能够带大家逃出生天，这个团队瞬间瓦解。</p><p>你要是愁眉不展，为赤壁死去的百万兄弟默哀，为前途险阻担忧，为打败战反思，那失败的情绪将瞬间笼罩这个团队。整个团队也失去了前进的动力，人人自危。</p><p>这时候身为领导者的曹操必须站出来，凝聚人心，团结一致，才能杀出重围。因此，曹操虽然败了，但打嘴炮总不用收费的吧，于是便大声嘲讽周瑜，诸葛亮还是不够聪明啊，玩精神胜利法。这时候被周瑜诸葛亮的火烧得差点丧失信心的手下们一听，也对啊，还是咱们老大牛逼，跟着老大走，肯定能逃出去。事实上，这也说明曹操时刻在保持着警惕，而听了这话的手下们也会提神，因为这儿可能会有伏兵。</p><p><br></p><p>果不其然，赵云杀了出来，曹操死里逃生。</p><p><br></p><p>曹操一行人逃到了葫芦口，这时候的这群人惨啊，没得吃，只能割马肉吃，没得穿，全身都湿透了，在大家都疲惫不堪的时候，曹操又仰面大笑，非得让所有人都听得到。按理说，第一次曹操笑的时候，被赵云打脸了，这一回曹操无论如何也应该谨慎一点了吧，说句不痛不痒的“大家要提起精神来，可能之后还会有伏兵”，这样表现的领导差不多能够打70分了。但曹操坚持贯彻藐视敌人，鼓舞团队的策略，再笑诸葛亮、周瑜太笨。但与第一笑不同的是，曹操也思考了相应的对策，如果他们“埋伏一彪军马，以逸待劳；我等纵然脱得性命，也不免重伤矣。”，这说明曹操也开始明白对手也不是好对付的，必须要谨慎对待，多思考破敌之策。</p><p><br></p><p>结果，张飞杀了出来，曹操又死里逃生。</p><p><br></p><p>曹操他们逃出来后，在选大路和小路的时候，就已经充分考虑了敌我的策略博弈，最终选择了小路华容道。但小路难走啊，而且曹操还得带着一群伤兵开路搭桥，这时候的曹操遭遇到了可能是自己人生最黑暗的一个时刻，但也就是在最危险的时刻，曹操展示了自己非凡的指挥管理才能和雷霆果敢的性格，硬是带着这群人走过了小路。在胜利在望的时刻，曹操在马上扬鞭大笑，此时的曹操颇有得意之色，也重燃了众人心中的希望。“人皆言周瑜、诸葛亮足智多谋，以吾观之，到底是无能之辈。</p><p>若使此处伏一旅之师，吾等皆束手受缚矣。”</p><p><br></p><p>话音未落，关羽横刀立马，截住去路。</p><p><br></p><p>但曹操不愧为曹操，此时众人已经心如死灰亡魂丧胆了，但前一秒刚说完“吾等皆束手受缚矣”，后一秒面对关羽精兵强将的曹操立马喊出“既到此处，只得决一死战！”，英雄气概勃发。亏得众谋臣巧言说服了关羽，曹操才真正逃脱死地，到达南郡。</p><p><br></p><p>到达南郡，大家这才放下心来，应该说是真正该“笑”的时候，曹操这时却“仰天大恸”，曹操哭，一哭赤壁百万英魂，二哭几乎丧命于赤壁，三哭座下英杰竟无一人可用。这时候的曹操面对赤壁之战，开始了自己的反思。</p><p><br></p><p>所以题主问，兵败赤壁曹操为什么要大笑三声，我个人觉得，这个问题不太完整，应该是，兵败赤壁后的曹操为什么要大笑三声，大哭一声。曹操的三声大笑，是在危难之际的指路明灯，是曹操与诸葛亮的千里博弈，是曹操洞悉人心临机决断的表现。而，那一声大哭，则是曹操为赤壁之战画上句号，重新出发的象征。这一切都让我们明白了为何曹操能够灭袁绍，诛吕布，统一北方。</p><p><br></p><p>本质上讲，曹操的三声大笑和刘备的摔阿斗都是一样的政治手段。摔阿斗的时候，是刘备政治生涯的至暗时刻，几乎家破人亡，但在生死存亡的危急时刻，才让我们看到了枭雄刘备。</p><div><br></div>',3,2,2,1,1,1,'2020-02-08 16:27:37','2020-02-08 16:27:37','曹操跑到乌林之西，看到周围树木茂盛，在马上仰面大笑，要知道现在曹操可是刚跑出赤壁火葬场，处在后面追兵，前途未仆的危险时刻，这时候曹操竟然还笑得出来，估计当时的将士谋臣也是一头雾水吧。要知道在这生死存亡的关键时刻，你说的每一句话，都可能会影响这个团队的人心走向。那曹操笑啥呢，笑得还是蛮有水平的：你要是');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category_ref`
--

DROP TABLE IF EXISTS `article_category_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_category_ref` (
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category_ref`
--

LOCK TABLES `article_category_ref` WRITE;
/*!40000 ALTER TABLE `article_category_ref` DISABLE KEYS */;
INSERT INTO `article_category_ref` VALUES (18,NULL),(4,10),(4,14),(34,10),(34,13),(32,15),(35,10),(35,12),(36,10),(36,12),(37,10),(37,12),(38,10),(38,12),(39,10),(39,14);
/*!40000 ALTER TABLE `article_category_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag_ref`
--

DROP TABLE IF EXISTS `article_tag_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag_ref` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag_ref`
--

LOCK TABLES `article_tag_ref` WRITE;
/*!40000 ALTER TABLE `article_tag_ref` DISABLE KEYS */;
INSERT INTO `article_tag_ref` VALUES (1,1),(1,12),(2,12),(4,6),(8,13),(9,1),(10,1),(23,2),(23,14),(24,15),(25,3),(25,15),(33,10),(34,2),(34,10),(35,14),(36,14),(37,1),(38,1),(38,2),(38,3),(39,10);
/*!40000 ALTER TABLE `article_tag_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_pid` int(11) DEFAULT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `category_description` varchar(255) DEFAULT NULL,
  `category_order` int(11) unsigned DEFAULT '1',
  `category_icon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=100000004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,0,'三国','',1,'fa fa-coffee'),(2,1,'蜀汉','',1,''),(7,1,'曹魏','',1,''),(8,1,'东吴','',1,''),(9,1,'东汉末年','',1,''),(10,0,'三国演义','',1,'fa fa-cubes'),(12,10,'醉谈三国','',1,''),(13,10,'三国杂感','',1,''),(14,10,'三国话题','',1,''),(15,0,'其他内容','',1,'fa-snowflake-o fa'),(19,100000000,'Hello','1111',1,'11'),(100000003,15,'相关资源','',NULL,'');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_pid` int(11) unsigned DEFAULT '0',
  `comment_pname` varchar(255) DEFAULT NULL,
  `comment_article_id` int(11) unsigned DEFAULT NULL,
  `comment_author_name` varchar(50) DEFAULT NULL,
  `comment_author_email` varchar(50) DEFAULT NULL,
  `comment_author_url` varchar(50) DEFAULT NULL,
  `comment_author_avatar` varchar(100) DEFAULT NULL,
  `comment_content` varchar(1000) DEFAULT NULL,
  `comment_agent` varchar(200) DEFAULT NULL,
  `comment_ip` varchar(50) DEFAULT NULL,
  `comment_create_time` datetime DEFAULT NULL,
  `comment_role` int(1) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (35,0,NULL,38,'罗贯中','147755430@qq.com','','/uploads/sanguo.png','桃园结义',NULL,'0:0:0:0:0:0:0:1','2020-02-08 20:38:22',1),(36,0,NULL,39,'罗贯中','147755430@qq.com','','/uploads/sanguo.png','哈',NULL,'0:0:0:0:0:0:0:1','2020-02-08 20:44:59',1),(37,0,NULL,39,'刘备','1427755430@qq.cm','','/uploads/liubei.png','哈哈哈',NULL,'0:0:0:0:0:0:0:1','2020-02-08 21:01:00',0);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) DEFAULT NULL,
  `link_name` varchar(255) DEFAULT NULL,
  `link_image` varchar(255) DEFAULT NULL,
  `link_description` varchar(255) DEFAULT NULL,
  `link_owner_nickname` varchar(40) DEFAULT NULL,
  `link_owner_contact` varchar(255) DEFAULT NULL,
  `link_update_time` datetime DEFAULT NULL,
  `link_create_time` datetime DEFAULT NULL,
  `link_order` int(2) unsigned DEFAULT '1',
  `link_status` int(1) unsigned DEFAULT '1',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `link_name` (`link_name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'http://liuyanzhao.com','言曌博客',NULL,'一个码农的成长之路',NULL,'你好，我的丘丘是847064370','2017-10-07 16:51:03','2017-10-07 16:29:35',1,1),(6,'http://codergroup.cn/','开发者社区',NULL,'',NULL,'admin@liuyanzhao.com','2018-11-25 15:03:26','2017-10-07 16:51:49',1,1);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `menu_level` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_name` (`menu_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'留言板','/message',0,'fa fa-comment',1),(2,'LeetCode','https://leetcode.com/problemset/all',0,'ssss',3),(3,'关于本站','/aboutSite',0,'fa fa-info',1),(4,'文章归档','/articleFile',1,'fa-list-alt fa',2),(5,'申请友链','/applyLink',0,'fa fa-link',3);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_content` varchar(10000) DEFAULT NULL,
  `notice_create_time` datetime DEFAULT NULL,
  `notice_update_time` datetime DEFAULT NULL,
  `notice_status` int(1) unsigned DEFAULT '1',
  `notice_order` int(2) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (4,'三国醉谈网站介绍','<p>欢迎来到三国醉谈网站</p><p>我是一个三国迷，</p><p>尽我所能，</p><p>打造了一个简陋的三国迷交流的网站，</p><p>分享一些读三国的文章和感受，</p><p>纯属兴趣，</p><p>万望大家多多指教。</p><p>有问题可以联系我的邮箱1427755430@qq.com</p><p><br></p>','2020-02-08 21:50:26','2020-02-08 21:53:32',1,1),(5,'网站更新细节','<p>2020.02.08</p><p>网站上线：目前网站只支持限制注册，只提供了，罗贯中，刘备，曹操，孙权四个用户名注册，其中罗贯中，刘备已被注册。</p>','2020-02-08 21:52:42','2020-02-08 21:52:42',1,1);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `option_site_title` varchar(255) DEFAULT NULL,
  `option_site_descrption` varchar(255) DEFAULT NULL,
  `option_meta_descrption` varchar(255) DEFAULT NULL,
  `option_meta_keyword` varchar(255) DEFAULT NULL,
  `option_aboutsite_avatar` varchar(255) DEFAULT NULL,
  `option_aboutsite_title` varchar(255) DEFAULT NULL,
  `option_aboutsite_content` varchar(255) DEFAULT NULL,
  `option_aboutsite_wechat` varchar(255) DEFAULT NULL,
  `option_aboutsite_qq` varchar(255) DEFAULT NULL,
  `option_aboutsite_github` varchar(255) DEFAULT NULL,
  `option_aboutsite_weibo` varchar(255) DEFAULT NULL,
  `option_tongji` varchar(255) DEFAULT NULL,
  `option_status` int(1) DEFAULT '1',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'三国醉谈','古今多少事','风吟博客,一个简洁的Java博客,言曌程序学习的一个新起点。','风吟,风吟博客,Java博客,SSM博客,言曌,言曌博客','/uploads/2018/11/avatar(3).jpg','博客初心','程序人生，永不止步','/uploads/2017/10/20171006224906122.jpg','847064370','saysky','5936412667',NULL,1);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_key` varchar(50) DEFAULT NULL,
  `page_title` varchar(50) DEFAULT NULL,
  `page_content` mediumtext,
  `page_create_time` datetime DEFAULT NULL,
  `page_update_time` datetime DEFAULT NULL,
  `page_view_count` int(10) unsigned DEFAULT '0',
  `page_comment_count` int(5) unsigned DEFAULT '0',
  `page_status` int(1) unsigned DEFAULT '1',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_key` (`page_key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'map','站点地图',NULL,NULL,NULL,0,0,2),(2,'articleFile','文章归档',NULL,NULL,NULL,0,0,2),(3,'message','留言板',NULL,NULL,NULL,0,0,2),(4,'applyLink','申请友链',NULL,NULL,NULL,0,0,2),(5,'aboutSite','关于本站','<h2>关于项目</h2><p>该项目是博主暑假粗略学完&nbsp;<a href=\"https://liuyanzhao.com/tag/ssm/\" title=\"查看与 SSM 相关的文章\" target=\"_blank\">SSM</a>（Spring+SpringMVC+Mybatis）后，开始着手做的一个博客系统。<br>主要涉及的包括 JSP，JSTL，EL表达式，MySQL，Druid连接池，Spring，SpringMVC，MyBatis 等。<br>前端采用Layui框架和扒了一个[网站](http://liuyanzhao.com)的前台样式。通过Maven管理依赖。</p><h2>效果预览</h2><p>预览地址：<a href=\"https://liuyanzhao.com/wp-content/themes/begin/inc/go.php?url=http://blog.liuyanzhao.com\" target=\"_blank\" rel=\"noopener noreferrer\">http://blog.liuyanzhao.com</a></p><p>前台效果图<br><img class=\"alignnone size-large wp-image-6348\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/front-1024x608.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/front-1024x608.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"608\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/front-1024x608.jpg 1024w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/front-300x178.jpg 300w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/front-768x456.jpg 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p>后台效果图<br><img class=\"alignnone size-large wp-image-6349\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/back-1024x611.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/back-1024x611.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"611\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/back-1024x611.jpg 1024w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/back-300x179.jpg 300w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/back-768x458.jpg 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p>&nbsp;</p><p><span>后台地址：/admin 或者 /login</span></p><p><span>用户名为admin，密码为123456</span></p><p>&nbsp;</p><h2>使用注意</h2><p><strong>1、使用IDE导入项目</strong></p><p>将项目即（ForestBlog文件夹）放到 某个位置，用IDE(如Eclipse，IntelliJ IDEA)导入，然后可以在IDE里运行 Tomcat，访问项目。</p><p>因为该项目使用了`Maven`，所有你需要新的IDE需要有Maven插件或者功能，这里就不多介绍了。</p><p><img class=\"size-large wp-image-6350 aligncenter\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog-517x1024.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog-517x1024.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"517\" height=\"1024\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog-517x1024.jpg 517w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog-151x300.jpg 151w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog.jpg 681w\" sizes=\"(max-width: 517px) 100vw, 517px\"></p><p><strong>2、 导入数据库</strong></p><p>新建数据库 `forest_blog`，导入数据库（即forest_blog.sql）。注意，数据库的编码和排序规则是utf-8和utf-8_general_ci</p><p><img class=\"size-full wp-image-6352 aligncenter\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog2.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog2.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"400\" height=\"540\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog2.jpg 400w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog2-222x300.jpg 222w\" sizes=\"(max-width: 400px) 100vw, 400px\"></p><p><strong>3、修改项目中的数据库连接信息</strong></p><p>修改&nbsp;`db.properties` 文件，该文件很容易找到，在 src/main/resources 中，注意修改数据库地址、表名、用户名和密码。</p><p><span><strong>如果不修改，会出现无法启动项目</strong></span></p><p>&nbsp;</p><p><strong>4、修改上传文件路径</strong></p><p>该项目中，文件上传是传到本地，且和项目文件夹不在一起，就是说是分离的。比如你的项目是在D盘，你可以修改上传路径到E盘。当然我们访问上传的图片时，需要 &nbsp; 给Tomcat添加静态资源映射，比如访问 localhost:8080/uplaods/1.jpg tomcat可以在你的E盘找到。这个在第5步会说。</p><p>现在是修改上传文件路径，该文件在 src/main/java/com/liuyanzhao/blog/controller/Common/UploadFileController.java</p><p>修改第33行的 `String rootPath =\"/www/uploads/\";` 为你的 uploads 的路径。</p><p><span><strong>如果不修改，会出现无法上传图片</strong></span></p><p>&nbsp;</p><p><strong>5、给uploads文件夹添加静态资源映射</strong></p><p>同第4步，我们已经修改了uploads路径，该路径就要和下面的docBase一致。<br>在 tomcat/conf/server.xml 的 Host 标签内添加如下代码</p><div class=\"dp-highlighter\"><ol class=\"dp-j\" start=\"1\"><li class=\"alt\">&lt;Context&nbsp;path=<span class=\"string\">\"/uploads\"</span>&nbsp;docBase=<span class=\"string\">\"/www/uploads\"</span>&nbsp;debug=<span class=\"string\">\"0\"</span>&nbsp;reloadable=<span class=\"string\">\"true\"</span>&nbsp;/&gt;</li></ol></div><p>对啦，如果你使用的是IDE，需要在该IDE里修改。</p><p>比如 IntelliJ IDEA 是在Tomcat配置中添加</p><p><img class=\"alignnone size-large wp-image-6354\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog4-1024x181.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog4-1024x181.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"181\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog4-1024x181.jpg 1024w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog4-300x53.jpg 300w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog4-768x136.jpg 768w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog4.jpg 1426w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p><span><strong>如果不修改，会出现uploads的图片无法加载，网页打开有延迟</strong></span></p><p>&nbsp;</p><p><strong>6、修改 Tomcat的首页为该项目</strong></p><p>跟第5步相似</p><p>该项目中的所有根路径都是 / ，没有使用相对路径的 `${pagecontext.request.getcontextpath}` ,因为如何相对路径不存在，该值就会为空字符串，以致 &nbsp; 首页链接我必须改为 / 。<br>所以，你的项目首页应该是 localhost:8080，而不是loclahost:8080/ForestBlog</p><p>所以要在 server.xml 的Host标签内里添加</p><div class=\"dp-highlighter\"><ol class=\"dp-j\" start=\"1\"><li class=\"alt\">&lt;Context&nbsp;path=<span class=\"string\">\"\"</span>&nbsp;docBase=<span class=\"string\">\"/www/server/panel/vhost/tomcat/ForestBlog\"</span>&nbsp;debug=<span class=\"string\">\"0\"</span>&nbsp;reloadable=<span class=\"string\">\"true\"</span>&nbsp;/&gt;</li></ol></div><p>其中path=\"\"表示为首页,即localhost:8080或者127.0.0.1：8080<br>docBase-\"xxx\"是文件路径</p><p><img class=\"size-large wp-image-6355 aligncenter\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog5-1024x134.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog5-1024x134.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"134\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog5-1024x134.jpg 1024w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog5-300x39.jpg 300w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog5-768x101.jpg 768w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog5.jpg 1570w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p>对啦，如果你使用的是IDE，需要在该IDE里修改。</p><p>比如 IntelliJ IDEA 是在Tomcat配置中添加</p><p><img class=\"alignnone size-large wp-image-6353\" data-original=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog3-1024x321.jpg\" src=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog3-1024x321.jpg\" alt=\"一个简单漂亮的Java博客系统\" width=\"1024\" height=\"321\" srcset=\"https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog3-1024x321.jpg 1024w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog3-300x94.jpg 300w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog3-768x241.jpg 768w, https://media.liuyanzhao.com/wp-content/uploads/2017/10/blog3.jpg 1428w\" sizes=\"(max-width: 1024px) 100vw, 1024px\"></p><p><span><strong>如果不修改，会出现内页很多链接不对</strong></span></p><p>&nbsp;</p><h2>下载地址：</h2><p>Github地址：<a href=\"https://liuyanzhao.com/wp-content/themes/begin/inc/go.php?url=https://github.com/saysky/ForestBlog\" target=\"_blank\" rel=\"noopener noreferrer\">https://github.com/saysky/ForestBlog</a></p><p><em>（如果可以帮忙点一次Star和Fork）</em></p><p>&nbsp;</p><h2>更新</h2><p>上一次更新：2017年10月10日14:02:02</p>','2017-10-06 23:40:35','2017-10-10 14:58:12',NULL,NULL,1),(7,'hello','11','11111111','2018-12-21 21:46:50','2018-12-21 21:46:50',NULL,NULL,1);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) DEFAULT NULL,
  `tag_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'刘备','刘备'),(2,'关羽',''),(3,'张飞',''),(6,'诸葛亮',''),(10,'曹操',''),(12,'孙权',''),(13,'周瑜',''),(14,'黄巾起义',''),(15,'吕布','');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nickname` varchar(255) NOT NULL DEFAULT '',
  `user_email` varchar(100) DEFAULT '',
  `user_url` varchar(100) DEFAULT '',
  `user_avatar` varchar(255) DEFAULT NULL,
  `user_last_login_ip` varchar(255) DEFAULT NULL,
  `user_register_time` datetime DEFAULT NULL,
  `user_last_login_time` datetime DEFAULT NULL,
  `user_status` int(1) unsigned DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456','言曌','admin@liuyanzhao.com','https://liuyanzhao.com','/uploads/2017/10/20171006225356181.jpg','0:0:0:0:0:0:0:1','2017-10-06 21:56:33','2019-04-25 21:55:53',1),(2,'zhangsna','123456','张三','zhangsan@china.com','','/uploads/2018/11/avatar(1).jpg',NULL,'2018-11-25 14:45:08',NULL,1),(3,'罗贯中','db9d385b8623579623683a13210c317b','罗贯中','147755430@qq.com','','/uploads/sanguo.png','0:0:0:0:0:0:0:1','2020-02-07 19:39:11','2020-02-08 21:54:47',1),(4,'刘备','db9d385b8623579623683a13210c317b','刘备','1427755430@qq.cm',NULL,'/uploads/liubei.png','0:0:0:0:0:0:0:1','2020-02-08 13:31:31','2020-02-08 21:00:38',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-08 23:49:20
