-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 نوفمبر 2015 الساعة 23:19
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web_shop_jsp`
--

-- --------------------------------------------------------

--
-- بنية الجدول `customer_product`
--

CREATE TABLE IF NOT EXISTS `customer_product` (
  `product_code` int(11) NOT NULL,
  `product_image` varchar(200) DEFAULT NULL,
  `customer_email` varchar(100) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RecievingDate` varchar(100) DEFAULT '0000-00-00',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_code` (`product_code`),
  KEY `customer_email` (`customer_email`),
  KEY `customer_email_2` (`customer_email`),
  KEY `product_code_2` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- إرجاع أو استيراد بيانات الجدول `customer_product`
--

INSERT INTO `customer_product` (`product_code`, `product_image`, `customer_email`, `product_name`, `company_name`, `company_email`, `price`, `date`, `RecievingDate`, `id`, `Description`) VALUES
(20305148, NULL, 'ahmed33@yahoo.com', 'Product4', 'MyCompany1', 'MyCompany1@yahoo.com', '5000.0', '2015-11-21 19:24:43', '0000-00-00', 8, 'dddd'),
(4589, NULL, 'ahmed33@yahoo.com', 'Product6', 'MyCompany3', 'MyCompany3@yahoo.com', '2000.0', '2015-11-08 14:34:21', '0000-00-00', 9, '7789'),
(20305148, NULL, 'ahmed33@yahoo.com', 'Product4', 'MyCompany1', 'MyCompany1@yahoo.com', '5000.0', '2015-11-21 19:24:43', '0000-00-00', 10, 'dddd'),
(20305148, NULL, 'NewCustomer@yahoo.com', 'Product4', 'MyCompany1', 'MyCompany1@yahoo.com', '5000.0', '2015-11-21 19:24:43', '0000-00-00', 13, 'dddd'),
(24588, NULL, 'NewCustomer@yahoo.com', 'PMyCompany5 34', 'MyCompany5', 'MyCompany5@yahoo.com', '3000.0', '2015-11-23 22:14:32', '0000-00-00', 14, 'P5V1'),
(2459, NULL, 'NewCustomer@yahoo.com', 'PMyCompany5 34', 'MyCompany5', 'MyCompany5@yahoo.com', '3000.0', '2015-11-23 22:13:52', '0000-00-00', 16, 'P5 v2');

-- --------------------------------------------------------

--
-- بنية الجدول `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field Info` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- إرجاع أو استيراد بيانات الجدول `field`
--

INSERT INTO `field` (`id`, `Field Info`) VALUES
(1, 'mail'),
(2, 'name'),
(3, 'tell');

-- --------------------------------------------------------

--
-- بنية الجدول `method field`
--

CREATE TABLE IF NOT EXISTS `method field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Method Id` int(11) NOT NULL,
  `Field Id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Method Id` (`Method Id`),
  KEY `Field Id` (`Field Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- إرجاع أو استيراد بيانات الجدول `method field`
--

INSERT INTO `method field` (`id`, `Method Id`, `Field Id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 3);

-- --------------------------------------------------------

--
-- بنية الجدول `myfiles`
--

CREATE TABLE IF NOT EXISTS `myfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) NOT NULL,
  `file_URL` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- إرجاع أو استيراد بيانات الجدول `myfiles`
--

INSERT INTO `myfiles` (`id`, `file_name`, `file_URL`, `date`, `user_email`) VALUES
(1, '798_22-08-15_1.png', 'images/uploaded/mohamedgalal9454@gmail.com/798_22-08-15_1.png', '2015-08-22 15:29:26', 'mohamedgalal9454@gmail.com'),
(2, '490_22-08-15_603666_925538600806650_17404049_n.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/490_22-08-15_603666_925538600806650_17404049_n.jpg', '2015-08-22 15:29:26', 'mohamedgalal9454@gmail.com'),
(3, '944_22-08-15_Ø§Ø¨Ù† Ø§Ù„Ù‚ÙŠÙ….jpg', 'images/uploaded/mohamedgalal9454@gmail.com/944_22-08-15_Ø§Ø¨Ù† Ø§Ù„Ù‚ÙŠÙ….jpg', '2015-08-22 15:30:19', 'mohamedgalal9454@gmail.com'),
(4, '168_22-08-15_Ø§ØªØ±Ùƒ Ù…Ø§ ØªÙ‡ÙˆÙ‰ Ù„Ø§Ø¬Ù„ Ù…Ù† ØªØ®Ø´Ù‰.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/168_22-08-15_Ø§ØªØ±Ùƒ Ù…Ø§ ØªÙ‡ÙˆÙ‰ Ù„Ø§Ø¬Ù„ Ù…Ù† ØªØ®Ø´Ù‰.jpg', '2015-08-22 15:30:19', 'mohamedgalal9454@gmail.com'),
(5, '632_22-08-15_1.png', 'images/uploaded/ahmed33@yahoo.com/632_22-08-15_1.png', '2015-08-22 15:50:15', 'ahmed33@yahoo.com'),
(6, '742_22-08-15_1.png', 'images/uploaded/ahmed33@yahoo.com/742_22-08-15_1.png', '2015-08-22 15:50:15', 'ahmed33@yahoo.com'),
(7, '556_22-08-15_3.jpg', 'images/uploaded/ahmed33@yahoo.com/556_22-08-15_3.jpg', '2015-08-22 15:52:05', 'ahmed33@yahoo.com'),
(8, '924_22-08-15_397517_754748777882244_492268532_n.jpg', 'images/uploaded/ahmed33@yahoo.com/924_22-08-15_397517_754748777882244_492268532_n.jpg', '2015-08-22 15:52:05', 'ahmed33@yahoo.com'),
(9, '888_22-08-15_1902078_663225333725475_1539846869_n (1).jpg', 'images/uploaded/ahmed33@yahoo.com/888_22-08-15_1902078_663225333725475_1539846869_n (1).jpg', '2015-08-22 15:53:00', 'ahmed33@yahoo.com'),
(10, '312_22-08-15_1911648_623213717734438_1768289915_n.jpg', 'images/uploaded/ahmed33@yahoo.com/312_22-08-15_1911648_623213717734438_1768289915_n.jpg', '2015-08-22 15:53:00', 'ahmed33@yahoo.com'),
(11, '975_22-08-15_1.png', 'images/uploaded/UCompany@gmail.com/975_22-08-15_1.png', '2015-08-22 17:25:12', 'UCompany@gmail.com'),
(12, '31_22-08-15_65470_291862300968366_1829969268_n.jpg', 'images/uploaded/UCompany@gmail.com/31_22-08-15_65470_291862300968366_1829969268_n.jpg', '2015-08-22 17:25:12', 'UCompany@gmail.com'),
(13, '560_22-08-15_603666_925538600806650_17404049_n.jpg', 'images/uploaded/UCompany@gmail.com/560_22-08-15_603666_925538600806650_17404049_n.jpg', '2015-08-22 17:25:28', 'UCompany@gmail.com'),
(14, '321_22-08-15_644158_288161324671797_545358358_n.jpg', 'images/uploaded/UCompany@gmail.com/321_22-08-15_644158_288161324671797_545358358_n.jpg', '2015-08-22 17:25:28', 'UCompany@gmail.com'),
(15, '256_22-08-15_1.png', 'images/uploaded/UCompany@gmail.com/256_22-08-15_1.png', '2015-08-22 17:28:17', 'UCompany@gmail.com'),
(16, '491_22-08-15_65470_291862300968366_1829969268_n.jpg', 'images/uploaded/UCompany@gmail.com/491_22-08-15_65470_291862300968366_1829969268_n.jpg', '2015-08-22 17:28:17', 'UCompany@gmail.com'),
(17, '454_22-08-15_378729_249246951800437_1639386043_n.jpg', 'images/uploaded/UCompany@gmail.com/454_22-08-15_378729_249246951800437_1639386043_n.jpg', '2015-08-22 17:28:17', 'UCompany@gmail.com'),
(18, '571_22-08-15_397517_754748777882244_492268532_n.jpg', 'images/uploaded/UCompany@gmail.com/571_22-08-15_397517_754748777882244_492268532_n.jpg', '2015-08-22 17:28:17', 'UCompany@gmail.com'),
(19, '121_22-08-15_1.png', 'images/uploaded/ahmed33@yahoo.com/121_22-08-15_1.png', '2015-08-22 17:52:11', 'ahmed33@yahoo.com'),
(20, '830_22-08-15_644158_288161324671797_545358358_n.jpg', 'images/uploaded/ahmed33@yahoo.com/830_22-08-15_644158_288161324671797_545358358_n.jpg', '2015-08-22 17:52:12', 'ahmed33@yahoo.com'),
(21, '17_22-08-15_1604806_683809888346785_645869557_n.jpg', 'images/uploaded/ahmed33@yahoo.com/17_22-08-15_1604806_683809888346785_645869557_n.jpg', '2015-08-22 17:52:12', 'ahmed33@yahoo.com'),
(22, '715_22-08-15_1620583_264605613704191_2143254419_n.jpg', 'images/uploaded/ahmed33@yahoo.com/715_22-08-15_1620583_264605613704191_2143254419_n.jpg', '2015-08-22 17:52:12', 'ahmed33@yahoo.com'),
(23, '132_22-08-15_1620839_639625859417874_1965003846_n.jpg', 'images/uploaded/ahmed33@yahoo.com/132_22-08-15_1620839_639625859417874_1965003846_n.jpg', '2015-08-22 17:52:12', 'ahmed33@yahoo.com'),
(24, '854_22-08-15_3.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/854_22-08-15_3.jpg', '2015-08-22 17:54:54', 'mohamedgalal9454@gmail.com'),
(25, '121_22-08-15_285_img.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/121_22-08-15_285_img.jpg', '2015-08-22 17:54:54', 'mohamedgalal9454@gmail.com'),
(26, '876_22-08-15_3.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/876_22-08-15_3.jpg', '2015-08-22 17:55:14', 'mohamedgalal9454@gmail.com'),
(27, '196_22-08-15_285_img.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/196_22-08-15_285_img.jpg', '2015-08-22 17:55:14', 'mohamedgalal9454@gmail.com'),
(28, '272_22-08-15_1.png', 'images/uploaded/UCompany255@gmail.com/272_22-08-15_1.png', '2015-08-22 18:03:17', 'UCompany255@gmail.com'),
(29, '241_23-08-15_65470_291862300968366_1829969268_n.jpg', 'images/uploaded/UCompany@gmail.com/241_23-08-15_65470_291862300968366_1829969268_n.jpg', '2015-08-23 05:21:17', 'UCompany@gmail.com'),
(30, '585_23-08-15_644158_288161324671797_545358358_n.jpg', 'images/uploaded/UCompany@gmail.com/585_23-08-15_644158_288161324671797_545358358_n.jpg', '2015-08-23 05:21:18', 'UCompany@gmail.com'),
(31, '935_23-08-15_1.png', 'images/uploaded/ahmed@yahoo.com/935_23-08-15_1.png', '2015-08-23 05:26:13', 'ahmed@yahoo.com'),
(32, '639_23-08-15_564698_444208292375841_1475193822_n.jpg', 'images/uploaded/lA@YAHOO.COM/639_23-08-15_564698_444208292375841_1475193822_n.jpg', '2015-08-23 05:30:59', 'lA@YAHOO.COM'),
(33, '859_23-08-15_1098340_640959619319930_6912332317652696593_n.jpg', 'images/uploaded/lA@YAHOO.COM/859_23-08-15_1098340_640959619319930_6912332317652696593_n.jpg', '2015-08-23 05:30:59', 'lA@YAHOO.COM'),
(34, '520_23-08-15_1424329_665816353477526_311458037_n.jpg', 'images/uploaded/lA@YAHOO.COM/520_23-08-15_1424329_665816353477526_311458037_n.jpg', '2015-08-23 05:31:32', 'lA@YAHOO.COM'),
(35, '393_23-08-15_1476371_627684293970062_1978690965_n.jpg', 'images/uploaded/lA@YAHOO.COM/393_23-08-15_1476371_627684293970062_1978690965_n.jpg', '2015-08-23 05:31:32', 'lA@YAHOO.COM'),
(36, '569_23-08-15_1.png', 'images/uploaded/ahmed33@yahoo.com/569_23-08-15_1.png', '2015-08-23 05:51:20', 'ahmed33@yahoo.com'),
(37, '871_23-08-15_644158_288161324671797_545358358_n.jpg', 'images/uploaded/ahmed33@yahoo.com/871_23-08-15_644158_288161324671797_545358358_n.jpg', '2015-08-23 05:51:20', 'ahmed33@yahoo.com'),
(38, '424_23-08-15_285_img.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/424_23-08-15_285_img.jpg', '2015-08-23 06:01:10', 'mohamedgalal9454@gmail.com'),
(39, '990_23-08-15_1422437_769900806357619_1191745467_n.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/990_23-08-15_1422437_769900806357619_1191745467_n.jpg', '2015-08-23 06:01:10', 'mohamedgalal9454@gmail.com'),
(40, '185_23-08-15_1424329_665816353477526_311458037_n.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/185_23-08-15_1424329_665816353477526_311458037_n.jpg', '2015-08-23 06:01:11', 'mohamedgalal9454@gmail.com'),
(41, '87_23-08-15_1476371_627684293970062_1978690965_n.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/87_23-08-15_1476371_627684293970062_1978690965_n.jpg', '2015-08-23 06:01:11', 'mohamedgalal9454@gmail.com'),
(42, '403_27-08-15_644158_288161324671797_545358358_n.jpg', 'images/uploaded/MyCompany@gmail.com/403_27-08-15_644158_288161324671797_545358358_n.jpg', '2015-08-27 00:55:39', 'MyCompany@gmail.com'),
(43, '359_27-08-15_988382_550206438435200_1500284352_n.jpg', 'images/uploaded/MyCompany@gmail.com/359_27-08-15_988382_550206438435200_1500284352_n.jpg', '2015-08-27 00:57:35', 'MyCompany@gmail.com'),
(44, '485_27-08-15_1010889_523393954450062_5985861021929923070_n.jpg', 'images/uploaded/MyCompany@gmail.com/485_27-08-15_1010889_523393954450062_5985861021929923070_n.jpg', '2015-08-27 00:57:35', 'MyCompany@gmail.com'),
(45, '879_27-08-15_1376443_448720935245719_2027973059_n.jpg', 'images/uploaded/MyCompany@gmail.com/879_27-08-15_1376443_448720935245719_2027973059_n.jpg', '2015-08-27 00:57:35', 'MyCompany@gmail.com'),
(46, '987_27-08-15_1379717_565113333561694_1617070Ø§Ù„Ø²Ø±ÙŠØ¨Ø©446_n.jpg', 'images/uploaded/MyCompany@gmail.com/987_27-08-15_1379717_565113333561694_1617070Ø§Ù„Ø²Ø±ÙŠØ¨Ø©446_n.jpg', '2015-08-27 00:57:35', 'MyCompany@gmail.com'),
(47, '174_27-08-15_1.png', 'images/uploaded/MyCompany@gmail.com/174_27-08-15_1.png', '2015-08-27 04:12:21', 'MyCompany@gmail.com'),
(48, '648_27-08-15_1.png', 'images/uploaded/MyCompany@gmail.com/648_27-08-15_1.png', '2015-08-27 07:00:34', 'MyCompany@gmail.com'),
(49, '312_27-08-15_285_img.jpg', 'images/uploaded/MyCompany@gmail.com/312_27-08-15_285_img.jpg', '2015-08-27 07:00:53', 'MyCompany@gmail.com'),
(50, '573_27-08-15_2000 like.png', 'images/uploaded/MyCompany@gmail.com/573_27-08-15_2000 like.png', '2015-08-27 07:00:53', 'MyCompany@gmail.com'),
(51, '177_29-08-15_1.png', 'images/uploaded/MyCompany@gmail.com/177_29-08-15_1.png', '2015-08-29 08:45:21', 'MyCompany@gmail.com'),
(52, '299_29-08-15_1010889_523393954450062_5985861021929923070_n.jpg', 'images/uploaded/MyCompany@gmail.com/299_29-08-15_1010889_523393954450062_5985861021929923070_n.jpg', '2015-08-29 08:45:22', 'MyCompany@gmail.com'),
(53, '12_29-08-15_1620843_861815937177416_3012322891056714364_n.jpg', 'images/uploaded/MyCompany@gmail.com/12_29-08-15_1620843_861815937177416_3012322891056714364_n.jpg', '2015-08-29 08:45:22', 'MyCompany@gmail.com'),
(54, '229_31-08-15_1.png', 'images/uploaded/MyCompany@gmail.com/229_31-08-15_1.png', '2015-08-31 11:43:56', 'MyCompany@gmail.com'),
(55, '666_31-08-15_1600999_423531737778076_19722058_n.jpg', 'images/uploaded/MyCompany@gmail.com/666_31-08-15_1600999_423531737778076_19722058_n.jpg', '2015-08-31 11:43:56', 'MyCompany@gmail.com'),
(56, '360_31-08-15_1601072_358912534249572_1704016702_n.jpg', 'images/uploaded/MyCompany@gmail.com/360_31-08-15_1601072_358912534249572_1704016702_n.jpg', '2015-08-31 11:43:56', 'MyCompany@gmail.com'),
(57, '294_31-08-15_1424329_665816353477526_311458037_n.jpg', 'images/uploaded/lA@YAHOO.COM/294_31-08-15_1424329_665816353477526_311458037_n.jpg', '2015-08-31 12:08:48', 'lA@YAHOO.COM'),
(58, '495_31-08-15_1513864_771469402881034_185921089_n.jpg', 'images/uploaded/lA@YAHOO.COM/495_31-08-15_1513864_771469402881034_185921089_n.jpg', '2015-08-31 12:08:48', 'lA@YAHOO.COM'),
(59, '9_06-09-15_644158_288161324671797_545358358_n.jpg', 'images/uploaded/Apple_fcih@yahoo.com/9_06-09-15_644158_288161324671797_545358358_n.jpg', '2015-09-06 00:53:14', 'Apple_fcih@yahoo.com'),
(60, '494_06-09-15_1511910_732598103451073_7875128715549032494_n.jpg', 'images/uploaded/Apple_fcih@yahoo.com/494_06-09-15_1511910_732598103451073_7875128715549032494_n.jpg', '2015-09-06 00:53:33', 'Apple_fcih@yahoo.com'),
(61, '625_06-09-15_1513822_291862340968362_1282990043_n.jpg', 'images/uploaded/Apple_fcih@yahoo.com/625_06-09-15_1513822_291862340968362_1282990043_n.jpg', '2015-09-06 00:53:34', 'Apple_fcih@yahoo.com'),
(62, '853_06-09-15_1239758_288602741294322_1815299161_n.jpg', 'images/uploaded/Apple_fcih@yahoo.com/853_06-09-15_1239758_288602741294322_1815299161_n.jpg', '2015-09-06 00:58:09', 'Apple_fcih@yahoo.com'),
(63, '607_06-09-15_1376443_448720935245719_2027973059_n.jpg', 'images/uploaded/Apple_fcih@yahoo.com/607_06-09-15_1376443_448720935245719_2027973059_n.jpg', '2015-09-06 00:58:09', 'Apple_fcih@yahoo.com'),
(64, '899_11-09-15_33b438dc888e89aeb38d1e59622e21eb.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/899_11-09-15_33b438dc888e89aeb38d1e59622e21eb.jpg', '2015-09-11 12:32:22', 'mohamedgalal9454@gmail.com'),
(65, '659_11-09-15_282998_384947281576635_1518068663_n[1].jpg', 'images/uploaded/mohamedgalal9454@gmail.com/659_11-09-15_282998_384947281576635_1518068663_n[1].jpg', '2015-09-11 12:32:22', 'mohamedgalal9454@gmail.com'),
(66, '988_11-09-15_523126_492192007459867_200719552_n[1].jpg', 'images/uploaded/mohamedgalal9454@gmail.com/988_11-09-15_523126_492192007459867_200719552_n[1].jpg', '2015-09-11 12:32:22', 'mohamedgalal9454@gmail.com'),
(67, '412_11-09-15_140527c21191f0e47055f184bf037501.jpg', 'images/uploaded/testCom@yahoo.com/412_11-09-15_140527c21191f0e47055f184bf037501.jpg', '2015-09-11 12:37:21', 'testCom@yahoo.com'),
(68, '875_11-09-15_282998_384947281576635_1518068663_n[1].jpg', 'images/uploaded/testCom@yahoo.com/875_11-09-15_282998_384947281576635_1518068663_n[1].jpg', '2015-09-11 12:37:21', 'testCom@yahoo.com'),
(69, '237_11-09-15_282998_384947281576635_1518068663_n[1].jpg', 'images/uploaded/testCom@yahoo.com/237_11-09-15_282998_384947281576635_1518068663_n[1].jpg', '2015-09-11 13:01:59', 'testCom@yahoo.com'),
(70, '616_11-09-15_7fb9ee77a5659c21df21395183320a4a.jpg', 'images/uploaded/ahmed@yahoo.com/616_11-09-15_7fb9ee77a5659c21df21395183320a4a.jpg', '2015-09-11 13:16:38', 'ahmed@yahoo.com'),
(71, '78_11-09-15_140527c21191f0e47055f184bf037501.jpg', 'images/uploaded/ahmed@yahoo.com/78_11-09-15_140527c21191f0e47055f184bf037501.jpg', '2015-09-11 13:16:38', 'ahmed@yahoo.com'),
(72, '696_11-09-15_282998_384947281576635_1518068663_n[1].jpg', 'images/uploaded/ahmed@yahoo.com/696_11-09-15_282998_384947281576635_1518068663_n[1].jpg', '2015-09-11 13:16:38', 'ahmed@yahoo.com'),
(73, '509_11-09-15_33b438dc888e89aeb38d1e59622e21eb.jpg', 'images/uploaded/testCom@yahoo.com/509_11-09-15_33b438dc888e89aeb38d1e59622e21eb.jpg', '2015-09-11 14:24:54', 'testCom@yahoo.com'),
(74, '821_11-09-15_140527c21191f0e47055f184bf037501.jpg', 'images/uploaded/testCom@yahoo.com/821_11-09-15_140527c21191f0e47055f184bf037501.jpg', '2015-09-11 14:24:54', 'testCom@yahoo.com'),
(75, '872_01-10-15_iphone.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/872_01-10-15_iphone.jpg', '2015-10-01 08:20:48', 'mohamedgalal9454@gmail.com'),
(76, '320_01-10-15_koi.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/320_01-10-15_koi.jpg', '2015-10-01 08:20:48', 'mohamedgalal9454@gmail.com'),
(77, '36_01-10-15_backgrondWrabber1.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/36_01-10-15_backgrondWrabber1.jpg', '2015-10-01 08:24:53', 'mohamedgalal9454@gmail.com'),
(78, '682_01-10-15_backgrondWrabber2.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/682_01-10-15_backgrondWrabber2.jpg', '2015-10-01 08:24:53', 'mohamedgalal9454@gmail.com'),
(79, '265_01-10-15_backgrondWrabber1.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/265_01-10-15_backgrondWrabber1.jpg', '2015-10-01 08:25:02', 'mohamedgalal9454@gmail.com'),
(80, '914_01-10-15_backgrondWrabber2.jpg', 'images/uploaded/mohamedgalal9454@gmail.com/914_01-10-15_backgrondWrabber2.jpg', '2015-10-01 08:25:03', 'mohamedgalal9454@gmail.com'),
(81, '559_01-10-15_backgrondWrabber1.jpg', 'images/uploaded/Apple_fcih@yahoo.com/559_01-10-15_backgrondWrabber1.jpg', '2015-10-01 09:30:01', 'Apple_fcih@yahoo.com'),
(82, '358_01-10-15_arrow2.png', 'images/uploaded/ahmed@yahoo.com/358_01-10-15_arrow2.png', '2015-10-01 18:18:56', 'ahmed@yahoo.com'),
(83, '237_01-10-15_Error1.png', 'images/uploaded/ahmed@yahoo.com/237_01-10-15_Error1.png', '2015-10-01 21:17:05', 'ahmed@yahoo.com'),
(84, '518_01-10-15_Error2.png', 'images/uploaded/ahmed@yahoo.com/518_01-10-15_Error2.png', '2015-10-01 21:17:06', 'ahmed@yahoo.com'),
(85, '708_02-10-15_koi.jpg', 'images/uploaded/MyCompany1@yahoo.com/708_02-10-15_koi.jpg', '2015-10-02 08:17:21', 'MyCompany1@yahoo.com'),
(86, '190_02-10-15_koi.jpg', 'images/uploaded/ahmed33@yahoo.com/190_02-10-15_koi.jpg', '2015-10-02 12:30:09', 'ahmed33@yahoo.com'),
(87, '246_02-10-15_life.jpg', 'images/uploaded/ahmed33@yahoo.com/246_02-10-15_life.jpg', '2015-10-02 12:30:09', 'ahmed33@yahoo.com');

-- --------------------------------------------------------

--
-- بنية الجدول `payment method`
--

CREATE TABLE IF NOT EXISTS `payment method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Method Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- إرجاع أو استيراد بيانات الجدول `payment method`
--

INSERT INTO `payment method` (`id`, `Method Name`) VALUES
(1, 'credit_card'),
(2, 'visa');

-- --------------------------------------------------------

--
-- بنية الجدول `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `name` varchar(50) NOT NULL,
  `c_mail` varchar(100) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `product_code` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `product_image` varchar(200) DEFAULT '96_02-10-15_iphone.jpg',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` text NOT NULL,
  PRIMARY KEY (`product_code`),
  KEY `c_mail` (`c_mail`),
  KEY `product_code` (`product_code`),
  KEY `c_name` (`c_name`),
  KEY `Num` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- إرجاع أو استيراد بيانات الجدول `product`
--

INSERT INTO `product` (`name`, `c_mail`, `c_name`, `product_code`, `price`, `product_image`, `id`, `date`, `Description`) VALUES
('PMyCompany5 34', 'MyCompany5@yahoo.com', 'MyCompany5', 2458, '3000.0', '96_02-10-15_iphone.jpg', 11, '2015-11-23 22:14:16', 'P5 v 3'),
('PMyCompany5 34', 'MyCompany5@yahoo.com', 'MyCompany5', 2459, '3000.0', '96_02-10-15_iphone.jpg', 12, '2015-11-23 22:13:52', 'P5 v2'),
('Product6', 'MyCompany3@yahoo.com', 'MyCompany3', 4589, '2000.0', '855_02-10-15_phone.jpg', 6, '2015-11-08 14:34:21', '7789'),
('PMyCompany5 34', 'MyCompany5@yahoo.com', 'MyCompany5', 24588, '3000.0', '96_02-10-15_iphone.jpg', 14, '2015-11-23 22:14:32', 'P5V1'),
('Product4', 'MyCompany1@yahoo.com', 'MyCompany1', 20305148, '5000.0', '96_02-10-15_iphone.jpg', 1, '2015-11-21 19:24:43', 'dddd');

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Tel` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UserType` int(11) NOT NULL,
  PRIMARY KEY (`user_email`),
  KEY `id` (`id`),
  KEY `UserType` (`UserType`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`id`, `Name`, `Tel`, `user_email`, `user_password`, `date`, `UserType`) VALUES
(6, 'ahmed33', '12345', 'ahmed33@yahoo.com', '123', '2015-10-02 08:35:24', 2),
(7, 'mohamed', '11235', 'ggg2yahoo.com', '0123', '2015-11-01 13:31:58', 1),
(1, 'mohamedme', '1245', 'mohamedgalal9454@gmail.com', '123', '2015-10-01 08:45:50', 1),
(2, 'MyCompany1', '123045', 'MyCompany1@yahoo.com', '123', '2015-10-02 08:08:59', 3),
(3, 'MyCompany2', '12345', 'MyCompany2@yahoo.com', '123', '2015-10-02 08:23:01', 3),
(5, 'MyCompany3', '56217', 'MyCompany3@yahoo.com', '123', '2015-10-02 08:26:06', 3),
(15, 'MyCompany5', '12354', 'MyCompany5@yahoo.com', '123', '2015-11-23 22:10:51', 3),
(12, 'NewCustomer', '44', 'NewCustomer@yahoo.com', '123', '2015-11-07 00:55:36', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- إرجاع أو استيراد بيانات الجدول `usertype`
--

INSERT INTO `usertype` (`id`, `type`) VALUES
(1, 'Admin'),
(2, 'Customer'),
(3, 'Company');

-- --------------------------------------------------------

--
-- بنية الجدول `user_payment`
--

CREATE TABLE IF NOT EXISTS `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usermail` varchar(100) NOT NULL,
  `method_field_id` int(11) NOT NULL,
  `product_code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usermail` (`usermail`),
  KEY `method_field_id` (`method_field_id`),
  KEY `usermail_2` (`usermail`),
  KEY `method_field_id_2` (`method_field_id`),
  KEY `product_code` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `customer_product`
--
ALTER TABLE `customer_product`
  ADD CONSTRAINT `customer_product_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `product` (`product_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_product_ibfk_2` FOREIGN KEY (`customer_email`) REFERENCES `user` (`user_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `method field`
--
ALTER TABLE `method field`
  ADD CONSTRAINT `method field_ibfk_1` FOREIGN KEY (`Method Id`) REFERENCES `payment method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`c_mail`) REFERENCES `user` (`user_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`UserType`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `user_payment`
--
ALTER TABLE `user_payment`
  ADD CONSTRAINT `user_payment_ibfk_1` FOREIGN KEY (`usermail`) REFERENCES `user` (`user_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_payment_ibfk_2` FOREIGN KEY (`method_field_id`) REFERENCES `method field` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_payment_ibfk_3` FOREIGN KEY (`product_code`) REFERENCES `product` (`product_code`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
