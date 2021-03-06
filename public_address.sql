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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  `nick_name` varchar(30) NOT NULL COMMENT '管理员昵称',
  `admin_photo` varchar(60) DEFAULT '1000.png',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_admin`
--

LOCK TABLES `coding_admin` WRITE;
/*!40000 ALTER TABLE `coding_admin` DISABLE KEYS */;
INSERT INTO `coding_admin` VALUES (5,'admin','202cb962ac59075b964b07152d234b70','鏄ュぉ','20190419\\8c9a5f38dde7ba39e152770ab9771b97.gif',0,1555631311),(6,'&&&','202cb962ac59075b964b07152d234b70','绀句細澶栫綉','1000.png',1555633770,0);
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
INSERT INTO `coding_application` VALUES (1,'鐗规湕鏅�',1,5,'1.jpg',1,1851546614,1555842855,0,0,0,'11010111111'),(2,'鏉庡洓',1,4,'',2,1556005335,1556005335,1,0,12,'11111111111');
/*!40000 ALTER TABLE `coding_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_article`
--

DROP TABLE IF EXISTS `coding_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章主键id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `author` varchar(50) NOT NULL,
  `content` text,
  `category_id` int(11) NOT NULL COMMENT '分类',
  `describe` varchar(100) NOT NULL,
  `recommend` tinyint(4) NOT NULL,
  `is_line` tinyint(4) NOT NULL,
  `admin_id` int(11) NOT NULL COMMENT '管理员ID',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
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
INSERT INTO `coding_article` VALUES (11,'棣欑倝宄颁笅鏂板崪灞卞眳锛岃崏鍫傚垵鎴愶紝鍋堕涓滃','[鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">浜旀灦涓夐棿鏂拌崏鍫傦紝鐭抽樁妗傛煴绔圭紪澧欍�傚崡妾愮撼鏃ュ啲澶╂殩锛屽寳鎴疯繋椋庡鏈堝噳銆傛磼鐮岄娉夋墠鏈夌偣锛屾媯绐楁枩绔逛笉鎴愯銆傛潵鏄ユ洿钁轰笢鍘㈠眿锛岀焊闃佽姦甯樿憲瀛熷厜銆�</span></p>',10,'                            浜旀灦涓夐棿鏂拌崏鍫傦紝鐭抽樁妗傛煴绔圭紪澧欍�傚崡妾愮撼鏃ュ啲澶╂殩锛屽寳鎴疯繋椋庡鏈堝噳                        ',1,1,5,1556084338,1556096504,0,0),(8,'榻胯惤杈�','[鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">鍡熷棢涔庡弻榻匡紝鑷惥鏈変箣灏旓紝淇惧皵鍤艰倝鍜�钄紝琛旀澂婕辨按锛涗赴鍚捐偆闈╋紝婊嬪惥琛�楂擄紱浠庡辜閫�侊紝鍕や害鑷崇煟銆傚垢鏈夎緟杞︼紝闈炴棤榫傞蕉銆傝儭鐒惰垗鎴戯紝涓�鏃﹀弻钀姐�傞娇铏芥棤鎯咃紝鍚惧矀鏃犳儏銆傝�佷笌榻垮埆锛岄娇闅忔稌闆躲�傛垜鑰佹棩鏉ワ紝灏斿幓涓嶅洖銆傚棢鍡熶箮鍙岄娇锛屽璋撹�屾潵鍝夛紝瀛拌皳鑰屽幓鍝夛紵榻夸笉鑳借█锛岃浠ユ剰瀹ｃ�備负鍙ｄ腑涔嬬墿锛屽拷涔庡叚鍗侀骞淬�傛様鍚涗箣澹篃锛岃鍒氶娇鍧氾紱浠婂悰涔嬭�佺煟锛岃琛伴娇瀵掋�傝緟杞﹂緜榻讹紝鏃ュ墛鏈堟湗銆備笂鍙傚樊鑰屼笅鍗艰嚥锛屾浘浣曡冻浠ュ皯瀹夈�傚樆锛屽悰鍏跺惉鍝夛細濂抽暱杈�</span></p>',7,' 鍡熷棢涔庡弻榻匡紝鑷惥鏈変箣灏旓紝淇惧皵鍤艰倝鍜�钄�.            ',1,1,5,1556084338,1555911182,0,0),(9,'榻愮墿浜岄','[鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">闈掓澗楂樼櫨灏猴紝缁胯暀浣庢暟瀵搞�傚悓鐢熷ぇ鍧楅棿锛岄暱鐭悇鏈夊垎銆傞暱鑰呬笉鍙��锛岀煭鑰呬笉鍙繘銆傝嫢鐢ㄦ鐞嗘帹锛岀┓閫氫袱鏃犻椃銆傛た瀵垮叓鍗冩槬锛屾Э鑺变笉缁忓銆備腑闂村浣曟湁锛屽唹鍐夊鐢熺銆傜韬笁骞磋�侊紝绔硅壊鍥涙椂缁裤�傝櫧璋㈡た鏈夐锛岀姽鑳滄Э涓嶈冻銆�</span></p>',8,'闈掓澗楂樼櫨灏猴紝缁胯暀浣庢暟瀵搞�傚悓鐢熷ぇ鍧楅棿锛岄暱鐭悇鏈夊垎銆�               ',1,1,5,1556084338,1555911194,0,0),(10,'楣﹂箟','鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">闄囪タ楣﹂箟鍒版睙涓滐紝鍏诲緱缁忓勾瑙滄笎绾€�傚父鎭愭�濆綊鍏堝壀缈咃紝姣忓洜鍠傞鏆傚紑绗笺�備汉鎬滃阀璇儏铏介噸锛岄笩蹇嗛珮椋炴剰涓嶅悓銆傚簲浼兼湵闂ㄦ瓕鑸炲锛屾繁钘忕墷闂悗鎴夸腑</span></p>',9,'闄囪タ楣﹂箟鍒版睙涓滐紝鍏诲緱缁忓勾瑙滄笎绾€�傚父鎭愭�濆綊鍏堝壀缈咃紝姣忓洜鍠傞鏆傚紑绗笺��',0,1,5,1556084338,1556084338,0,0),(12,'棰橀儭涓崝鏋濊瘲鍗佸叓闊碉紝鍏煎瘎涓囧窞鏉ㄥ叓浣垮悰','[鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">濂囨灉鏍囧崡鍦燂紝鑺虫灄瀵瑰寳鍫傘�傜礌鍗庢槬婕犳紶锛屼腹瀹炲鐓岀厡銆傚彾鎹т綆鍨傛埛锛屾灊鎿庨噸鍘嬪銆傚鍥犻寮勮壊锛屾笎涓庢棩浜夊厜銆傚璁舵潯鎮伀锛屾湞鎯婃爲鐐瑰銆傛繁浜庣孩韪簠锛屽ぇ鏍＄櫧妲熸銆傛槦缂�杩炲績鏈碉紝鐝犳帓鑰�鐪兼埧銆傜传缃楄琛３锛岀櫧鐜夎９濉摛銆傛棭宀佹浘闂昏锛屼粖鏈濆鎽樺皾銆傚毤鐤戝ぉ涓婂懗锛屽梾寮備笘闂撮銆傛鼎鑳滆幉鐢熸按锛岄矞閫炬寰楅湝銆傜嚂鏀帉涓锛岀敇闇茶垖澶存祮銆傜墿灏戝挨鐝嶉噸锛屽ぉ楂樿嫤娓鸿尗銆傚凡鏁欑敓鏆戞湀锛屽張浣块樆閬愭柟銆傜补娑茬伒闅鹃┗锛屽濮垮鏄撲激銆傝繎鍗楀厜鏅儹锛屽悜鍖楅亾閫旈暱銆�...</span></p>',11,'濂囨灉鏍囧崡鍦燂紝鑺虫灄瀵瑰寳鍫傘�傜礌鍗庢槬婕犳紶锛屼腹瀹炲鐓岀厡銆�',1,1,5,1556084338,1556084338,0,0),(13,'棰樼楣�','[鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">缁忔棳涓嶉ギ閰掞紝閫炬湀鏈椈姝屻�傚矀鏄鎯呭皯锛屽叾濡傚皹浜嬪銆傝檸涓樻儹瀹㈤棶锛屽▋棣嗗浜鸿繃銆傝帿绗戠涓工锛岀浉鐪嬪幓鍑犱綍銆�</span></p>',7,'缁忔棳涓嶉ギ閰掞紝閫炬湀鏈椈姝屻�傚矀鏄鎯呭皯锛�',1,1,5,1556084338,1556084338,0,0),(14,'棰樻棫鍐欑湡鍥�','[鍞怾鐧藉眳鏄�','<p><span style=\"font-family: arial; font-size: 14px; background-color: rgb(255, 255, 255);\">鎴戞様涓夊崄鍏紝鍐欒矊鍦ㄤ腹闈掋�傛垜浠婂洓鍗佸叚锛岃“鎮村崸姹熷煄銆傚矀姣斿崄骞磋�侊紝鏇句笌浼楄嫤骞躲�備竴鐓ф棫鍥剧敾锛屾棤澶嶆様浠舰銆傚舰褰遍粯鐩搁【锛屽寮熷鑰佸厔銆傚喌浣夸粬浜鸿锛岃兘涓嶆槯骞崇敓銆傜静鍜岄灜鏃ヨ蛋锛屼笉涓烘垜灏戝仠銆傚舰楠稿睘鏃ユ湀锛岃�佸幓浣曡冻鎯娿�傛墍鎭ㄥ噷鐑熼榿锛屼笉寰楃敾鍔熷悕銆�</span></p>',9,'                            鎴戞様涓夊崄鍏紝鍐欒矊鍦ㄤ腹闈掋�傛垜浠婂洓鍗佸叚锛岃“鎮村崸姹熷煄銆�                        ',1,1,5,1556084338,1556086278,0,0);
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
INSERT INTO `coding_article_category` VALUES (7,'璁板彊鏂�',0,1,1555902049,1555902049),(8,'鎶掓儏鏂�',0,1,1555902063,1555902063),(9,'璁鏂�',0,1,1555902071,1555902071),(10,'璇存槑鏂�',0,1,1555902104,1555902104),(11,'搴旂敤鏂�',0,1,1555902112,1555902112);
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_name` varchar(30) NOT NULL COMMENT '分类名称',
  `recommend` tinyint(4) DEFAULT NULL,
  `is_line` tinyint(4) NOT NULL,
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_category`
--

LOCK TABLES `coding_category` WRITE;
/*!40000 ALTER TABLE `coding_category` DISABLE KEYS */;
INSERT INTO `coding_category` VALUES (9,'鍏徃绠�浠�',1,1,1555294706,1555294706,0),(10,'鍏徃鏍囪瘑',1,1,1555294706,1555294706,0),(11,'鑱旂郴鏂瑰紡',1,1,1555294706,1555294706,0),(12,'棰嗗鑷磋緸',1,1,1555294706,1555294706,0),(13,'浼佷笟鏋舵瀯',1,1,1555294706,1555294706,0),(14,'鏂囧寲鐞嗗康',1,1,1555294706,1555294706,0),(15,'鍙戝睍鍘嗙▼',1,1,1555294706,1555294706,0),(16,'浜烘墠鐞嗗康',1,1,1555294706,1555294706,0);
/*!40000 ALTER TABLE `coding_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_image`
--

DROP TABLE IF EXISTS `coding_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(50) NOT NULL,
  `sdescribe` varchar(100) NOT NULL COMMENT '描述',
  `author` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `recommend` tinyint(4) NOT NULL,
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `is_line` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
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
INSERT INTO `coding_image` VALUES (17,'绗竴涓�','                            涓嶅啀鏈夎皝...                        ','绛辩','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,8,0,1555995367,0,0),(18,'鍦ㄨ繖涓嬮洦鐨勬椂鍊�','缁濅笉鏀惧紑浣犵殑鎵�','绛辩','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,8,0,0,0,0),(19,'鍝殑鏃跺��','璁╂唱寰�蹇冮噷娴�','绛辩','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,6,0,0,0,0),(20,'showOk','                            You  show do work;                         ','绛辩','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,8,0,1555912804,0,0),(21,'鑰佹瓕','                            璁╅潚鏄ュ惞鍔ㄤ綘鐨勯暱鍙�                        ','鑲栦寒','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,8,0,1556097422,0,0),(22,'灏忔邯鍚垜璇�','缁嗙汗鑺卞紑鏃�','admin','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,10,0,0,0,0),(23,'杩樻湁浠�涔堜笉鑳借','鐢熷懡闃冲厜鏈�娓╂殩鐨�','鍐板績','<p><a href=\"https://www.juzimi.com/ju/25556\" title=\"鏌ョ湅鏈彞\" class=\"xlistju\" style=\"outline: none medium; text-decoration-line: none; color: rgb(0, 0, 0); line-height: 24px; font-family: 瀹嬩綋; display: block; font-size: 13px; overflow: hidden; white-space: normal;\">鎴戞參鎱㈠湴銆佹參鎱㈠湴浜嗚В鍒帮紝鎵�璋撶埗濂虫瘝瀛愪竴鍦猴紝鍙笉杩囨剰鍛崇潃锛屼綘鍜屼粬鐨勭紭鍒嗗氨鏄粖鐢熶粖涓栦笉鏂湴鍦ㄧ洰閫佷粬鐨勮儗褰辨笎琛屾笎杩溿�備綘绔欏湪灏忚矾鐨勮繖涓�绔紝鐪嬬潃浠栭�愭笎娑堝け鍦ㄥ皬璺浆寮殑鍦版柟锛岃�屼笖锛屼粬鐢ㄨ儗褰遍粯榛樺憡璇変綘锛氫笉蹇呰拷銆�</a></p>',1,5,1,11,0,0,0,0),(24,'寮�蹇冨悧?','->validate([\'size\'=>7340023,\'ext\'=>\'MP4,WebM,Ogg\'])->validate([\'size\'=>7340023,\'ext\'=>\'MP4,WebM,Ogg\'','admin','<pre style=\"background-color:#fdf6e3;color:#586e75;font-family:&#39;瀹嬩綋&#39;;font-size:9.0pt;\">-&gt;validate([&#39;size&#39;=&gt;7340023,&#39;ext&#39;=&gt;&#39;MP4,WebM,Ogg&#39;])</pre><pre style=\"background-color:#fdf6e3;color:#586e75;font-family:&#39;瀹嬩綋&#39;;font-size:9.0pt;\">-&gt;validate([&#39;size&#39;=&gt;7340023,&#39;ext&#39;=&gt;&#39;MP4,WebM,Ogg&#39;])</pre><pre style=\"background-color:#fdf6e3;color:#586e75;font-family:&#39;瀹嬩綋&#39;;font-size:9.0pt;\">-&gt;validate([&#39;size&#39;=&gt;7340023,&#39;ext&#39;=&gt;&#39;MP4,WebM,Ogg&#39;])</pre><p><br/></p>',0,5,1,10,0,0,0,0),(25,'榻胯惤杈�','                            椋庢櫙鍥剧墖                        ','admin','<p>椋庢櫙鍥剧墖椋庢櫙鍥剧墖椋庢櫙鍥剧墖椋庢櫙鍥剧墖椋庢櫙鍥剧墖</p>',1,5,1,8,0,1556097412,0,0);
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
INSERT INTO `coding_image_category` VALUES (8,'鎽勫奖',0,1,1555901541,1555901541),(6,'鏄庢槦',0,1,1555901510,1555901510),(7,'缇庡コ',0,1,1555901524,1555901524),(9,'澹佺焊',0,1,1555901548,1555901548),(10,'鍔ㄦ极',0,1,1555901562,1555901562),(11,'浠婃棩鐑浘',0,1,1555901587,1555901600);
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
INSERT INTO `coding_recruit` VALUES (1,'鎬荤粡鐞�',2,21,18,8,10,'閾舵渤绯绘�荤悊鍔炲叕瀹�',1,1,'钃濈繑鎸栨帢鏈轰笓涓�,鏃犳潯浠跺綍鐢�','鍚圭墰','110','鐗规湕鏅�','110@qq.com','鐢风殑\r\n娲荤殑',1,1555568121,1556093623,0,0),(2,'钁ｄ簨闀�',1,21,18,1,1,'鍖椾含鍥藉姟闄�',1,1,'瀹堕噷韫插ぇ瀛�','瀹堕噷韫插ぇ瀛�','123456789','瀹堕噷韫插ぇ瀛�','156481@qq.com','瀹堕噷韫插ぇ瀛�',1,1555576258,1555576258,1,0);
/*!40000 ALTER TABLE `coding_recruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_synopsis`
--

DROP TABLE IF EXISTS `coding_synopsis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_synopsis` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭id',
  `stitle` varchar(50) NOT NULL COMMENT '鏍囬',
  `skeyword` varchar(50) NOT NULL COMMENT '鍏抽敭瀛�',
  `sdescribe` varchar(100) NOT NULL COMMENT '鎻忚堪',
  `sauthor` varchar(50) NOT NULL COMMENT '绠＄悊鍛樹綔鑰�',
  `scontent` text NOT NULL COMMENT '鍐呭',
  `admin_id` int(11) NOT NULL COMMENT '绠＄悊鍛榠d',
  `category_id` int(11) NOT NULL COMMENT '鍒嗙被id',
  `recommend` tinyint(4) NOT NULL,
  `is_line` tinyint(4) NOT NULL,
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_synopsis`
--

LOCK TABLES `coding_synopsis` WRITE;
/*!40000 ALTER TABLE `coding_synopsis` DISABLE KEYS */;
INSERT INTO `coding_synopsis` VALUES (1,'鍏徃绠�浠�','鍏徃绠�浠�','涓存矀甯傛斂闆嗗洟鏈夐檺鍏徃濮嬪缓浜�1961骞达紝鍏锋湁甯傛斂鍏敤宸ョ▼鏂藉伐鎬绘壙鍖呬竴绾э紝鍏矾宸ョ▼鏂藉伐鎬绘壙鍖呬竴绾э紝妗ユ宸ョ▼銆佸叕璺矾闈€�佽矾鍩轰笓涓氭壙鍖呬竴绾ц祫璐紝鎴垮湴浜у紑鍙戙�佸洯鏋楃豢鍖栥�佹按鍒╃瓑涓撲笟鎵垮寘璧勮川锛屽叿澶囧澶栧伐绋嬫壙鍖呰祫鏍笺��','admin','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \"><span style=\"margin: 0px; padding: 0px; line-height: 2.5;\">涓存矀甯傛斂闆嗗洟鏈夐檺鍏徃濮嬪缓浜�1961骞达紝鍏锋湁甯傛斂鍏敤宸ョ▼鏂藉伐鎬绘壙鍖呬竴绾э紝鍏矾宸ョ▼鏂藉伐鎬绘壙鍖呬竴绾э紝妗ユ宸ョ▼銆佸叕璺矾闈€�佽矾鍩轰笓涓氭壙鍖呬竴绾ц祫璐紝鎴垮湴浜у紑鍙戙�佸洯鏋楃豢鍖栥�佹按鍒╃瓑涓撲笟鎵垮寘璧勮川锛屽叿澶囧澶栧伐绋嬫壙鍖呰祫鏍笺�傞泦鍥㈤�氳繃璐ㄩ噺銆佺幆澧冨拰鑱屼笟鍋ュ悍瀹夊叏涓�浣撳寲绠＄悊浣撶郴缁煎悎璁よ瘉銆備笅杈�10涓亴鑳介儴瀹ゃ��31涓垎瀛愬叕鍙革紝骞寸敓浜х粡钀ヨ兘鍔涜繛缁骞寸ǔ灞呭北涓滅渷鍚岃鍓嶅垪銆�</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \"><span style=\"margin: 0px; padding: 0px; line-height: 2.5;\">澶氬勾鏉ワ紝闆嗗洟濮嬬粓鎶婅川閲忚涓轰紒涓氱殑鐢熷懡绾匡紝璁茶瘹淇°�侀【澶у眬锛屽叏鍔涙墦閫犵簿鍝佸伐绋嬶紝鍏堝悗鎵垮缓浜嗕复娌傚競涔濇洸娌傛渤澶фˉ銆佹花娌宠矾銆佽挋灞卞ぇ閬撶娌冲ぇ妗ャ�佹稇娌崇患鍚堟不鐞嗐�佸寳鍩庢柊鍖洪亾璺�佸弻宀矾绔嬩氦妗ャ�佷复宸ュぇ妗ャ�佸北瑗垮お浣抽珮閫熴�佹箹鍗楁��閫氶珮閫熴�佸ぇ宀抽珮閫熴�佹俯宸炵摨娴峰ぇ閬撱�侀潚娴风渷鑼跺崱鑷虫牸灏旀湪鍏矾绛変竴澶ф壒閲嶇偣宸ョ▼锛�6椤瑰伐绋嬭崳鑾烽瞾鐝銆佷腑鍥藉競鏀块噾鏉ず鑼冨伐绋嬶紝杩�30椤瑰伐绋嬭崳鑾峰缓鍥�60鍛ㄥ勾灞变笢鐪佺簿鍝佸缓璁惧伐绋嬨�佹嘲灞辨澂銆佸北涓滅渷甯傛斂閲戞澂绀鸿寖宸ョ▼銆�</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \"><span style=\"margin: 0px; padding: 0px; line-height: 2.5;\">闆嗗洟鑽ｈ幏鍏ㄥ浗鈥滃畨搴锋澂鈥濈珵璧涗紭鑳滀紒涓氥�佸叏鍥芥ā鑼冭亴宸ヤ箣瀹躲�佸叏鍥藉伐浜哄厛閿嬪彿銆佸叏鍥藉伐浼氣�滆亴宸ヤ功灞嬧�濈ず鑼冪偣銆佺瀛︽妧鏈垱鏂板鎶�鏈垱鏂板厛杩涗紒涓氥�佸北涓滅渷浼樼甯傛斂宸ョ▼鏂藉伐浼佷笟銆佸北涓滅渷鑱屽伐鑱屼笟閬撳痉寤鸿鏍囧叺鍗曚綅銆佸北涓滅渷瀵屾皯鍏撮瞾鍔冲姩濂栫姸銆佸北涓滅渷閲嶅悎鍚屽畧淇＄敤浼佷笟銆佸北涓滅渷闈掑勾鏂囨槑鍙风瓑鑽ｈ獕绉板彿銆�</span></p><p><br/></p>',5,9,1,1,1555399290,1555985868),(2,'鍏徃鏍囪瘑','<span></span>','<span></span>','<span></span>','<p>鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</p>',5,10,1,1,1555399409,1555984655),(3,'鑱旂郴鏂瑰紡','鑱旂郴鏂瑰紡','<span></span>','admin','<p>鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</p>',5,11,1,1,1555406102,1555984681),(4,'棰嗗鑷磋緸','<span></span>','<span></span>','<span></span>','<p>鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</p>',5,12,1,1,1555406885,1555983829),(5,'浼佷笟鏋舵瀯','<span></span>','<span></span>','<span></span>','<p><span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</span></p>',5,13,1,1,1555406965,1555983289),(6,'鏂囧寲鐞嗗康','鏂囧寲鐞嗗康','<span></span>','<span></span>','<p>鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</p>',5,14,1,1,1555406965,1555984865),(7,'鍙戝睍鍘嗙▼','鍙戝睍鍘嗙▼','杩欓噷鏄彂灞曞巻绋嬬殑鎽樿','admin','<p>鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</p>',5,15,1,1,1555406965,1555984992),(8,'浜烘墠鐞嗗康','<span></span>','<span></span>','<span></span>','<p>鏈嶅姟鐑嚎锛�0539-8165224&nbsp;&nbsp;&nbsp;&nbsp;閭锛歭yszxx@163.com&nbsp;&nbsp;&nbsp;&nbsp;鍦板潃锛氫复娌傚競钂欏北鍖楄矾63鍙疯景鍧ゅ浗闄�</p>',5,16,1,1,1555406965,1555985033);
/*!40000 ALTER TABLE `coding_synopsis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coding_synopsisfile`
--

DROP TABLE IF EXISTS `coding_synopsisfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coding_synopsisfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `filename` varchar(70) NOT NULL COMMENT '文件名称',
  `synopsis_id` int(11) NOT NULL COMMENT '公司信息id',
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭id',
  `title` varchar(50) NOT NULL COMMENT '鏍囬',
  `filename` varchar(255) DEFAULT NULL,
  `sdescribe` varchar(100) NOT NULL COMMENT '鎻忚堪',
  `author` varchar(50) NOT NULL COMMENT '绠＄悊鍛樹綔鑰�',
  `content` text NOT NULL COMMENT '鍐呭',
  `admin_id` int(11) NOT NULL COMMENT '绠＄悊鍛榠d',
  `category_id` int(11) NOT NULL COMMENT '鍒嗙被id',
  `commentnum` int(11) DEFAULT '0',
  `readnum` int(11) DEFAULT '0',
  `is_line` tinyint(4) NOT NULL COMMENT '涓婄嚎',
  `recommend` tinyint(4) NOT NULL COMMENT '鎺ㄨ崘',
  `created_at` int(11) NOT NULL COMMENT '鍒涘缓鏃堕棿',
  `updated_at` int(11) NOT NULL COMMENT '鏇存柊鏃堕棿',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coding_video`
--

LOCK TABLES `coding_video` WRITE;
/*!40000 ALTER TABLE `coding_video` DISABLE KEYS */;
INSERT INTO `coding_video` VALUES (10,'鏇剧粡鏇剧粡鏇剧粡..','20190424\\65770758eb81010a6835d002ff861e9a.mp4','                            鏇剧粡鏇剧粡鏇剧粡..                        ','admin','<p>鏇剧粡鏇剧粡鏇剧粡..鏇剧粡鏇剧粡鏇剧粡..鏇剧粡鏇剧粡鏇剧粡..鏇剧粡鏇剧粡鏇剧粡..鏇剧粡鏇剧粡鏇剧粡..鏇剧粡鏇剧粡鏇剧粡..</p>',5,7,0,0,1,1,1555908601,1556097597),(11,'AlwayOnline','20190422\\3ef92406cb88eefc75132417cc58132c.mp4','AlwayOnlineAlwayOnlineAlwayOnlineAlwayOnline','admin','<p>AlwayOnlineAlwayOnlineAlwayOnlineAlwayOnlineAlwayOnlineAlwayOnlineAlwayOnline</p>',5,8,0,0,1,1,1555908680,1555908680),(12,'鍑嗗濂戒簡  321','20190422\\57eb79002a036337207ea8cfd2ef8a5b.mp4','鍑嗗濂戒簡  321鍑嗗濂戒簡  321鍑嗗濂戒簡  321鍑嗗濂戒簡  321鍑嗗濂戒簡  321','admin','<p>鍑嗗濂戒簡&nbsp; 321鍑嗗濂戒簡&nbsp; 321鍑嗗濂戒簡&nbsp; 321鍑嗗濂戒簡&nbsp; 321</p>',5,9,0,0,1,1,1555908732,1555908732),(8,'鏄皝閱夐厭绛栭┈','20190422\\48e872d1b14029cd5fada59a6b182d87.mp4','鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈','admin','<p>鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈鏄皝閱夐厭绛栭┈</p>',5,6,0,0,1,1,1555907783,1555907783),(9,'浣犵殑鎷ユ姳鏇剧粡鏄渶娓╂殩鐨勬渶鐔熸倝','20190422\\43fa1bdc164074b89a79d07a1d0b6e8b.mp4','                            浣犵殑鎷ユ姳鏇剧粡鏄渶娓╂殩鐨勬渶鐔熸倝                        ','admin','<p>浣犵殑鎷ユ姳鏇剧粡鏄渶娓╂殩鐨勬渶鐔熸倝</p>',5,5,0,0,1,1,1555908508,1555908564),(13,'every thinking is ok','20190422\\72a807969f98dd11070fee673722bb8e.mp4','every thinking is ok','admin','<p>every thinking is okevery thinking is okevery thinking is ok</p>',5,10,0,0,1,1,1555908814,1555908814);
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
INSERT INTO `coding_video_category` VALUES (6,'鐢靛奖',0,1,1555899205,1555899205),(5,'濞变箰',0,1,1555899192,1555899192),(7,'鐢佃鍓�',0,1,1555899216,1555899216),(8,'缁艰壓',0,1,1555899226,1555899226),(9,'鐗囪姳',0,1,1555899240,1555899240),(10,'鍔ㄦ极',0,1,1555899255,1555899255);
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
