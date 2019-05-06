-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: public_address
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `coding_admin`
--

DROP TABLE IF EXISTS `coding_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����Աid',
  `username` varchar(30) NOT NULL COMMENT '����Ա����',
  `password` char(32) NOT NULL COMMENT '����Ա����',
  `nick_name` varchar(30) NOT NULL COMMENT '����Ա�ǳ�',
  `admin_photo` varchar(60) DEFAULT '1000.png',
  `created_at` int(11) NOT NULL COMMENT '����ʱ��',
  `updated_at` int(11) NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_admin`
--

LOCK TABLES `coding_admin` WRITE;
/*!40000 ALTER TABLE `coding_admin` DISABLE KEYS */;
INSERT INTO `coding_admin` VALUES (5,'admin','202cb962ac59075b964b07152d234b70','春天','20190419\\8c9a5f38dde7ba39e152770ab9771b97.gif',0,1555631311),(6,'&&&','202cb962ac59075b964b07152d234b70','社会外网','1000.png',1555633770,0);
/*!40000 ALTER TABLE `coding_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_application`
--

DROP TABLE IF EXISTS `coding_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationname` varchar(50) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `education` tinyint(4) NOT NULL,
  `resumename` varchar(50) NOT NULL,
  `recruit_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `current` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `age` tinyint(4) NOT NULL,
  `phone` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_application`
--

LOCK TABLES `coding_application` WRITE;
/*!40000 ALTER TABLE `coding_application` DISABLE KEYS */;
INSERT INTO `coding_application` VALUES (1,'特朗普',1,5,'1.jpg',1,1851546614,1555842855,0,0,0,'11010111111'),(2,'李四',1,4,'',2,1556005335,1556005335,1,0,12,'11111111111');
/*!40000 ALTER TABLE `coding_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_article`
--

DROP TABLE IF EXISTS `coding_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��������id',
  `title` varchar(100) NOT NULL COMMENT '����',
  `author` varchar(50) NOT NULL,
  `content` text,
  `category_id` int(11) NOT NULL COMMENT '����',
  `describe` varchar(100) NOT NULL,
  `recommend` tinyint(4) NOT NULL,
  `is_line` tinyint(4) NOT NULL,
  `admin_id` int(11) NOT NULL COMMENT '����ԱID',
  `created_at` int(11) NOT NULL COMMENT '����ʱ��',
  `updated_at` int(11) NOT NULL COMMENT '����ʱ��',
  `readnum` int(11) DEFAULT '0',
  `commentnum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_article`
--

LOCK TABLES `coding_article` WRITE;
/*!40000 ALTER TABLE `coding_article` DISABLE KEYS */;
INSERT INTO `coding_article` VALUES (11,'香炉峰下新卜山居，草堂初成，偶题东壁','[唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">五架三间新草堂，石阶桂柱竹编墙。南檐纳日冬天暖，北户迎风夏月凉。洒砌飞泉才有点，拂窗斜竹不成行。来春更葺东厢屋，纸阁芦帘著孟光。</span></p>',10,'                            五架三间新草堂，石阶桂柱竹编墙。南檐纳日冬天暖，北户迎风夏月凉                        ',1,1,5,1556084338,1556096504,0,0),(8,'齿落辞','[唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">嗟嗟乎双齿，自吾有之尔，俾尔嚼肉咀蔬，衔杯漱水；丰吾肤革，滋吾血髓；从幼逮老，勤亦至矣。幸有辅车，非无龂齶。胡然舍我，一旦双落。齿虽无情，吾岂无情。老与齿别，齿随涕零。我老日来，尔去不回。嗟嗟乎双齿，孰谓而来哉，孰谓而去哉？齿不能言，请以意宣。为口中之物，忽乎六十馀年。昔君之壮也，血刚齿坚；今君之老矣，血衰齿寒。辅车龂齶，日削月朘。上参差而下卼臲，曾何足以少安。嘻，君其听哉：女长辞</span></p>',7,' 嗟嗟乎双齿，自吾有之尔，俾尔嚼肉咀蔬.            ',1,1,5,1556084338,1555911182,0,0),(9,'齐物二首','[唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">青松高百尺，绿蕙低数寸。同生大块间，长短各有分。长者不可退，短者不可进。若用此理推，穷通两无闷。椿寿八千春，槿花不经宿。中间复何有，冉冉孤生竹。竹身三年老，竹色四时绿。虽谢椿有馀，犹胜槿不足。</span></p>',8,'青松高百尺，绿蕙低数寸。同生大块间，长短各有分。               ',1,1,5,1556084338,1555911194,0,0),(10,'鹦鹉','唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">陇西鹦鹉到江东，养得经年觜渐红。常恐思归先剪翅，每因喂食暂开笼。人怜巧语情虽重，鸟忆高飞意不同。应似朱门歌舞妓，深藏牢闭后房中</span></p>',9,'陇西鹦鹉到江东，养得经年觜渐红。常恐思归先剪翅，每因喂食暂开笼。',0,1,5,1556084338,1556084338,0,0),(12,'题郡中荔枝诗十八韵，兼寄万州杨八使君','[唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">奇果标南土，芳林对北堂。素华春漠漠，丹实夏煌煌。叶捧低垂户，枝擎重压墙。始因风弄色，渐与日争光。夕讶条悬火，朝惊树点妆。深于红踯躅，大校白槟榔。星缀连心朵，珠排耀眼房。紫罗裁衬壳，白玉裹填瓤。早岁曾闻说，今朝始摘尝。嚼疑天上味，嗅异世间香。润胜莲生水，鲜逾橘得霜。燕支掌中颗，甘露舌头浆。物少尤珍重，天高苦渺茫。已教生暑月，又使阻遐方。粹液灵难驻，妍姿嫩易伤。近南光景热，向北道途长。...</span></p>',11,'奇果标南土，芳林对北堂。素华春漠漠，丹实夏煌煌。',1,1,5,1556084338,1556084338,0,0),(13,'题笼鹤','[唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">经旬不饮酒，逾月未闻歌。岂是风情少，其如尘事多。虎丘惭客问，娃馆妒人过。莫笑笼中鹤，相看去几何。</span></p>',7,'经旬不饮酒，逾月未闻歌。岂是风情少，',1,1,5,1556084338,1556084338,0,0),(14,'题旧写真图','[唐]白居易','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">我昔三十六，写貌在丹青。我今四十六，衰悴卧江城。岂比十年老，曾与众苦并。一照旧图画，无复昔仪形。形影默相顾，如弟对老兄。况使他人见，能不昧平生。羲和鞭日走，不为我少停。形骸属日月，老去何足惊。所恨凌烟阁，不得画功名。</span></p>',9,'                            我昔三十六，写貌在丹青。我今四十六，衰悴卧江城。                        ',1,1,5,1556084338,1556086278,0,0);
/*!40000 ALTER TABLE `coding_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_article_category`
--

DROP TABLE IF EXISTS `coding_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'videokey',
  `articlecategoryname` varchar(50) NOT NULL COMMENT 'name',
  `parent_id` int(11) NOT NULL COMMENT 'parentid',
  `is_line` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'state',
  `created_at` int(11) NOT NULL COMMENT 'create time',
  `updated_at` int(11) NOT NULL COMMENT 'update time',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_article_category`
--

LOCK TABLES `coding_article_category` WRITE;
/*!40000 ALTER TABLE `coding_article_category` DISABLE KEYS */;
INSERT INTO `coding_article_category` VALUES (7,'记叙文',0,1,1555902049,1555902049),(8,'抒情文',0,1,1555902063,1555902063),(9,'议论文',0,1,1555902071,1555902071),(10,'说明文',0,1,1555902104,1555902104),(11,'应用文',0,1,1555902112,1555902112);
/*!40000 ALTER TABLE `coding_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_articlefile`
--

DROP TABLE IF EXISTS `coding_articlefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_articlefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(70) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_articlefile`
--

LOCK TABLES `coding_articlefile` WRITE;
/*!40000 ALTER TABLE `coding_articlefile` DISABLE KEYS */;
INSERT INTO `coding_articlefile` VALUES (13,'20190424\\920b58218a979dc8a490b27566e142ab.jpg',11),(12,'20190424\\54fe48ccf7d431d9e3e2d7625398d21a.png',14);
/*!40000 ALTER TABLE `coding_articlefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_category`
--

DROP TABLE IF EXISTS `coding_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `category_name` varchar(30) NOT NULL COMMENT '��������',
  `recommend` tinyint(4) DEFAULT NULL,
  `is_line` tinyint(4) NOT NULL,
  `created_at` int(11) NOT NULL COMMENT '����ʱ��',
  `updated_at` int(11) NOT NULL COMMENT '����ʱ��',
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_category`
--

LOCK TABLES `coding_category` WRITE;
/*!40000 ALTER TABLE `coding_category` DISABLE KEYS */;
INSERT INTO `coding_category` VALUES (9,'公司简介',1,1,1555294706,1555294706,0),(10,'公司标识',1,1,1555294706,1555294706,0),(11,'联系方式',1,1,1555294706,1555294706,0),(12,'领导致辞',1,1,1555294706,1555294706,0),(13,'企业架构',1,1,1555294706,1555294706,0),(14,'文化理念',1,1,1555294706,1555294706,0),(15,'发展历程',1,1,1555294706,1555294706,0),(16,'人才理念',1,1,1555294706,1555294706,0);
/*!40000 ALTER TABLE `coding_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_image`
--

DROP TABLE IF EXISTS `coding_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `title` varchar(50) NOT NULL,
  `sdescribe` varchar(100) NOT NULL COMMENT '����',
  `author` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `recommend` tinyint(4) NOT NULL,
  `admin_id` int(11) NOT NULL COMMENT '����Աid',
  `is_line` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '����id',
  `created_at` int(11) NOT NULL COMMENT '����ʱ��',
  `updated_at` int(11) NOT NULL COMMENT '����ʱ��',
  `readnum` int(11) DEFAULT '0',
  `commentnum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_image`
--

LOCK TABLES `coding_image` WRITE;
/*!40000 ALTER TABLE `coding_image` DISABLE KEYS */;
INSERT INTO `coding_image` VALUES (17,'第一世','                            不再有谁...                        ','筱筱','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,8,0,1555995367,0,0),(18,'在这下雨的时候','绝不放开你的手','筱筱','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,8,0,0,0,0),(19,'哭的时候','让泪往心里流','筱筱','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,6,0,0,0,0),(20,'showOk','                            You  show do work;                         ','筱筱','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,8,0,1555912804,0,0),(21,'老歌','                            让青春吹动你的长发                        ','肖亮','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,8,0,1556097422,0,0),(22,'小溪听我说','细纹花开早','admin','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,10,0,0,0,0),(23,'还有什么不能说','生命阳光最温暖的','冰心','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">我慢慢地、慢慢地了解到，所谓父女母子一场，只不过意味着，你和他的缘分就是今生今世不断地在目送他的背影渐行渐远。你站在小路的这一端，看着他逐渐消失在小路转弯的地方，而且，他用背影默默告诉你：不必追。</a></p>',1,5,1,11,0,0,0,0),(24,'开心吗?','->validate([\'size\'=>7340023,\'ext\'=>\'MP4,WebM,Ogg\'])->validate([\'size\'=>7340023,\'ext\'=>\'MP4,WebM,Ogg\'','admin','<pre style=\"background-color:#fdf6e3;color:#586e75;font-family:&#39;宋体&#39;;font-size:9.0pt;\">-&gt;validate([&#39;size&#39;=&gt;7340023,&#39;ext&#39;=&gt;&#39;MP4,WebM,Ogg&#39;])</pre><pre style=\"background-color:#fdf6e3;color:#586e75;font-family:&#39;宋体&#39;;font-size:9.0pt;\">-&gt;validate([&#39;size&#39;=&gt;7340023,&#39;ext&#39;=&gt;&#39;MP4,WebM,Ogg&#39;])</pre><pre style=\"background-color:#fdf6e3;color:#586e75;font-family:&#39;宋体&#39;;font-size:9.0pt;\">-&gt;validate([&#39;size&#39;=&gt;7340023,&#39;ext&#39;=&gt;&#39;MP4,WebM,Ogg&#39;])</pre><p><br/></p>',0,5,1,10,0,0,0,0),(25,'齿落辞','                            风景图片                        ','admin','<p>风景图片风景图片风景图片风景图片风景图片</p>',1,5,1,8,0,1556097412,0,0);
/*!40000 ALTER TABLE `coding_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_image_category`
--

DROP TABLE IF EXISTS `coding_image_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_image_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'videokey',
  `imagecategoryname` varchar(50) NOT NULL COMMENT 'name',
  `parent_id` int(11) NOT NULL COMMENT 'parentid',
  `is_line` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'state',
  `created_at` int(11) NOT NULL COMMENT 'create time',
  `updated_at` int(11) NOT NULL COMMENT 'update time',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_image_category`
--

LOCK TABLES `coding_image_category` WRITE;
/*!40000 ALTER TABLE `coding_image_category` DISABLE KEYS */;
INSERT INTO `coding_image_category` VALUES (8,'摄影',0,1,1555901541,1555901541),(6,'明星',0,1,1555901510,1555901510),(7,'美女',0,1,1555901524,1555901524),(9,'壁纸',0,1,1555901548,1555901548),(10,'动漫',0,1,1555901562,1555901562),(11,'今日热图',0,1,1555901587,1555901600);
/*!40000 ALTER TABLE `coding_image_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_imagefile`
--

DROP TABLE IF EXISTS `coding_imagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_imagefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(70) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_imagefile`
--

LOCK TABLES `coding_imagefile` WRITE;
/*!40000 ALTER TABLE `coding_imagefile` DISABLE KEYS */;
INSERT INTO `coding_imagefile` VALUES (34,'20190422\\aca4fa1339f8b60f94c71de637e4a8a9.jpg',23),(35,'20190423\\9995aa38c65eb2d6cf7df9f65f2e0c22.jpg',17),(33,'20190422\\914797bf4e2a60973410844e2c071392.jpg',22),(31,'20190422\\7c51534b54b38323d747db7f18916621.jpg',20),(32,'20190422\\cf40034d87fa70c2b47b2225a86a65c6.jpg',21),(28,'20190422\\a1bb751bc2af438fbb3aa9a08595bed0.jpg',17),(29,'20190422\\92b4300a5992445ba13b879593acfb26.jpg',18),(30,'20190422\\914725db7cc83ab81443079177465a57.jpg',19),(36,'20190423\\8a15e2210efaf9a356cd83e8a8704d22.jpg',17),(37,'20190423\\897b19e6f676c4a364b90789113a151b.gif',17),(38,'20190423\\caf67d2f208108e1732ac4c16dee7d24.jpg',17),(39,'20190424\\c2efc7f3e6db53b38787a22fb28c6ef4.PNG',24),(44,'20190424\\096802b529c35529fba1bb95862b2993.jpg',21),(43,'20190424\\80ce1bfb2285ae1982e7b857abd6f10a.jpg',21),(42,'20190424\\5f89d876b3928e19b39486fe15860673.jpg',25),(45,'20190424\\e0f65244f3dc339fa4217dbc4ab0b570.jpg',21);
/*!40000 ALTER TABLE `coding_imagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_recruit`
--

DROP TABLE IF EXISTS `coding_recruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recruitname` varchar(50) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `minage` tinyint(4) NOT NULL,
  `maxage` tinyint(4) NOT NULL,
  `education` tinyint(4) NOT NULL,
  `current` tinyint(4) NOT NULL,
  `workingplace` varchar(70) NOT NULL,
  `popnumber` smallint(6) NOT NULL,
  `is_line` tinyint(4) NOT NULL DEFAULT '0',
  `major` varchar(100) NOT NULL,
  `duty` text NOT NULL,
  `phone` char(11) NOT NULL,
  `contactscall` varchar(30) NOT NULL,
  `contactsemail` varchar(50) NOT NULL,
  `requirement` text NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `applicationnum` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_recruit`
--

LOCK TABLES `coding_recruit` WRITE;
/*!40000 ALTER TABLE `coding_recruit` DISABLE KEYS */;
INSERT INTO `coding_recruit` VALUES (1,'总经理',2,21,18,8,10,'银河系总理办公室',1,1,'蓝翔挖掘机专业,无条件录用','吹牛','110','特朗普','110@qq.com','男的\r\n活的',1,1555568121,1556093623,0,0),(2,'董事长',1,21,18,1,1,'北京国务院',1,1,'家里蹲大学','家里蹲大学','123456789','家里蹲大学','156481@qq.com','家里蹲大学',1,1555576258,1555576258,1,0);
/*!40000 ALTER TABLE `coding_recruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_synopsis`
--

DROP TABLE IF EXISTS `coding_synopsis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_synopsis` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `stitle` varchar(50) NOT NULL COMMENT '标题',
  `skeyword` varchar(50) NOT NULL COMMENT '关键字',
  `sdescribe` varchar(100) NOT NULL COMMENT '描述',
  `sauthor` varchar(50) NOT NULL COMMENT '管理员作者',
  `scontent` text NOT NULL COMMENT '内容',
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `recommend` tinyint(4) NOT NULL,
  `is_line` tinyint(4) NOT NULL,
  `created_at` int(11) NOT NULL COMMENT '����ʱ��',
  `updated_at` int(11) NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_synopsis`
--

LOCK TABLES `coding_synopsis` WRITE;
/*!40000 ALTER TABLE `coding_synopsis` DISABLE KEYS */;
INSERT INTO `coding_synopsis` VALUES (1,'公司简介','公司简介','临沂市政集团有限公司始建于1961年，具有市政公用工程施工总承包一级，公路工程施工总承包一级，桥梁工程、公路路面、路基专业承包一级资质，房地产开发、园林绿化、水利等专业承包资质，具备境外工程承包资格。','admin','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \"><span style=\"margin: 0px; padding: 0px; line-height: 2.5;\">临沂市政集团有限公司始建于1961年，具有市政公用工程施工总承包一级，公路工程施工总承包一级，桥梁工程、公路路面、路基专业承包一级资质，房地产开发、园林绿化、水利等专业承包资质，具备境外工程承包资格。集团通过质量、环境和职业健康安全一体化管理体系综合认证。下辖10个职能部室、31个分子公司，年生产经营能力连续多年稳居山东省同行前列。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \"><span style=\"margin: 0px; padding: 0px; line-height: 2.5;\">多年来，集团始终把质量视为企业的生命线，讲诚信、顾大局，全力打造精品工程，先后承建了临沂市九曲沂河大桥、滨河路、蒙山大道祊河大桥、涑河综合治理、北城新区道路、双岭路立交桥、临工大桥、山西太佳高速、湖南怀通高速、大岳高速、温州瓯海大道、青海省茶卡至格尔木公路等一大批重点工程，6项工程荣获鲁班奖、中国市政金杯示范工程，近30项工程荣获建国60周年山东省精品建设工程、泰山杯、山东省市政金杯示范工程。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \"><span style=\"margin: 0px; padding: 0px; line-height: 2.5;\">集团荣获全国“安康杯”竞赛优胜企业、全国模范职工之家、全国工人先锋号、全国工会“职工书屋”示范点、科学技术创新奖技术创新先进企业、山东省优秀市政工程施工企业、山东省职工职业道德建设标兵单位、山东省富民兴鲁劳动奖状、山东省重合同守信用企业、山东省青年文明号等荣誉称号。</span></p><p><br/></p>',5,9,1,1,1555399290,1555985868),(2,'公司标识','<span></span>','<span></span>','<span></span>','<p>服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</p>',5,10,1,1,1555399409,1555984655),(3,'联系方式','联系方式','<span></span>','admin','<p>服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</p>',5,11,1,1,1555406102,1555984681),(4,'领导致辞','<span></span>','<span></span>','<span></span>','<p>服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</p>',5,12,1,1,1555406885,1555983829),(5,'企业架构','<span></span>','<span></span>','<span></span>','<p><span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</span></p>',5,13,1,1,1555406965,1555983289),(6,'文化理念','文化理念','<span></span>','<span></span>','<p>服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</p>',5,14,1,1,1555406965,1555984865),(7,'发展历程','发展历程','这里是发展历程的摘要','admin','<p>服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</p>',5,15,1,1,1555406965,1555984992),(8,'人才理念','<span></span>','<span></span>','<span></span>','<p>服务热线：0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;邮箱：lyszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;地址：临沂市蒙山北路63号辰坤国际</p>',5,16,1,1,1555406965,1555985033);
/*!40000 ALTER TABLE `coding_synopsis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_synopsisfile`
--

DROP TABLE IF EXISTS `coding_synopsisfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_synopsisfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `filename` varchar(70) NOT NULL COMMENT '�ļ�����',
  `synopsis_id` int(11) NOT NULL COMMENT '��˾��Ϣid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_synopsisfile`
--

LOCK TABLES `coding_synopsisfile` WRITE;
/*!40000 ALTER TABLE `coding_synopsisfile` DISABLE KEYS */;
INSERT INTO `coding_synopsisfile` VALUES (91,'20190423\\cd5aa30bfcc61ba39cd6117e99e79d02.jpg',5),(97,'20190423\\2864c5289a865868473294a6a47ce1d0.png',7),(92,'20190423\\f1c81db7625117d054a8363dc3d6ce2a.jpg',4),(94,'20190423\\c3cf67899d1f87abec8cee333a18e7c7.PNG',3),(99,'20190423\\ab9de0e29dae7c22e96c2228e6131354.jpg',1),(98,'20190423\\70de38e2cc710f09f4256358976a695d.jpg',8),(74,'20190420\\cc1323f76a093f47eaf91b4eef3c6219.jpg',9),(75,'20190420\\10af3e3fc6c88bf61f7591c9719d4595.jpg',9),(96,'20190423\\8507ce67a0ed6f018cb65cfb4166f1ee.jpg',6),(93,'20190423\\1de2d8792eaa281b213efe4ff6cea456.jpg',2);
/*!40000 ALTER TABLE `coding_synopsisfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_video`
--

DROP TABLE IF EXISTS `coding_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `filename` varchar(255) DEFAULT NULL,
  `sdescribe` varchar(100) NOT NULL COMMENT '描述',
  `author` varchar(50) NOT NULL COMMENT '管理员作者',
  `content` text NOT NULL COMMENT '内容',
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `commentnum` int(11) DEFAULT '0',
  `readnum` int(11) DEFAULT '0',
  `is_line` tinyint(4) NOT NULL COMMENT '上线',
  `recommend` tinyint(4) NOT NULL COMMENT '推荐',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_video`
--

LOCK TABLES `coding_video` WRITE;
/*!40000 ALTER TABLE `coding_video` DISABLE KEYS */;
INSERT INTO `coding_video` VALUES (10,'曾经曾经曾经..','20190424\\65770758eb81010a6835d002ff861e9a.mp4','                            曾经曾经曾经..                        ','admin','<p>曾经曾经曾经..曾经曾经曾经..曾经曾经曾经..曾经曾经曾经..曾经曾经曾经..曾经曾经曾经..</p>',5,7,0,0,1,1,1555908601,1556097597),(11,'AlwayOnline','20190422\\3ef92406cb88eefc75132417cc58132c.mp4','AlwayOnlineAlwayOnlineAlwayOnlineAlwayOnline','admin','<p>AlwayOnlineAlwayOnlineAlwayOnlineAlwayOnlineAlwayOnlineAlwayOnlineAlwayOnline</p>',5,8,0,0,1,1,1555908680,1555908680),(12,'准备好了  321','20190422\\57eb79002a036337207ea8cfd2ef8a5b.mp4','准备好了  321准备好了  321准备好了  321准备好了  321准备好了  321','admin','<p>准备好了&nbsp; 321准备好了&nbsp; 321准备好了&nbsp; 321准备好了&nbsp; 321</p>',5,9,0,0,1,1,1555908732,1555908732),(8,'是谁醉酒策马','20190422\\48e872d1b14029cd5fada59a6b182d87.mp4','是谁醉酒策马是谁醉酒策马是谁醉酒策马是谁醉酒策马是谁醉酒策马是谁醉酒策马','admin','<p>是谁醉酒策马是谁醉酒策马是谁醉酒策马是谁醉酒策马是谁醉酒策马是谁醉酒策马</p>',5,6,0,0,1,1,1555907783,1555907783),(9,'你的拥抱曾经是最温暖的最熟悉','20190422\\43fa1bdc164074b89a79d07a1d0b6e8b.mp4','                            你的拥抱曾经是最温暖的最熟悉                        ','admin','<p>你的拥抱曾经是最温暖的最熟悉</p>',5,5,0,0,1,1,1555908508,1555908564),(13,'every thinking is ok','20190422\\72a807969f98dd11070fee673722bb8e.mp4','every thinking is ok','admin','<p>every thinking is okevery thinking is okevery thinking is ok</p>',5,10,0,0,1,1,1555908814,1555908814);
/*!40000 ALTER TABLE `coding_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_video_category`
--

DROP TABLE IF EXISTS `coding_video_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_video_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'videokey',
  `videocategoryname` varchar(50) NOT NULL COMMENT 'name',
  `parent_id` int(11) NOT NULL COMMENT 'parentid',
  `is_line` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'state',
  `created_at` int(11) NOT NULL COMMENT 'create time',
  `updated_at` int(11) NOT NULL COMMENT 'update time',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_video_category`
--

LOCK TABLES `coding_video_category` WRITE;
/*!40000 ALTER TABLE `coding_video_category` DISABLE KEYS */;
INSERT INTO `coding_video_category` VALUES (6,'电影',0,1,1555899205,1555899205),(5,'娱乐',0,1,1555899192,1555899192),(7,'电视剧',0,1,1555899216,1555899216),(8,'综艺',0,1,1555899226,1555899226),(9,'片花',0,1,1555899240,1555899240),(10,'动漫',0,1,1555899255,1555899255);
/*!40000 ALTER TABLE `coding_video_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-30 11:54:27
