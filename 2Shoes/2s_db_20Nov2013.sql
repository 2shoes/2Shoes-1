
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.244.200
-- Generation Time: Nov 19, 2013 at 10:37 PM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Twoshoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL auto_increment,
  `classtitle` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` VALUES(23, 'Science ', 6, 26);
INSERT INTO `class` VALUES(25, 'Math', 6, 21);
INSERT INTO `class` VALUES(26, 'Biology ', 6, 27);
INSERT INTO `class` VALUES(27, 'rkjclass', 1, 25);
INSERT INTO `class` VALUES(28, 'Neumann ', 6, 28);
INSERT INTO `class` VALUES(29, 'Global Test', 6, 29);
INSERT INTO `class` VALUES(30, 'Global Summit ', 6, 30);
INSERT INTO `class` VALUES(31, 'Mansion', 7, 0);
INSERT INTO `class` VALUES(32, 'Question Time', 8, 0);
INSERT INTO `class` VALUES(33, 'History', 6, 31);
INSERT INTO `class` VALUES(34, 'SCMAO Presentation', 14, 0);
INSERT INTO `class` VALUES(35, 'Test Subject', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_code`
--

CREATE TABLE `class_code` (
  `id` int(11) NOT NULL auto_increment,
  `id_class` int(11) NOT NULL,
  `class_code` varchar(200) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `status` varchar(255) default NULL,
  `class_datetime` datetime default NULL,
  `feedback_id` int(11) NOT NULL default '0',
  `mode` varchar(150) NOT NULL default 'Online',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `class_code`
--

INSERT INTO `class_code` VALUES(33, 27, '786786Z', 1, 'Closed', '2013-11-02 01:11:24', 25, 'Online');
INSERT INTO `class_code` VALUES(32, 23, '023', 6, 'Closed', '2013-11-01 01:11:51', 26, 'Online');
INSERT INTO `class_code` VALUES(31, 23, '000', 6, 'Closed', '2013-11-01 01:11:12', 26, 'Online');
INSERT INTO `class_code` VALUES(34, 26, 'cell', 6, 'Closed', '2013-11-05 07:11:50', 27, 'Online');
INSERT INTO `class_code` VALUES(35, 28, 'Neumann1', 6, 'Closed', '2013-11-05 09:11:43', 28, 'Online');
INSERT INTO `class_code` VALUES(36, 28, '12ab', 6, 'Start', '2013-11-05 09:11:29', 28, 'Online');
INSERT INTO `class_code` VALUES(37, 28, '098', 6, 'Closed', '2013-11-05 10:11:30', 28, 'Online');
INSERT INTO `class_code` VALUES(38, 28, '000', 6, 'Start', '2013-11-06 10:11:27', 28, 'Online');
INSERT INTO `class_code` VALUES(39, 28, '098765', 6, 'Closed', '2013-11-06 10:11:25', 28, 'Online');
INSERT INTO `class_code` VALUES(40, 28, '54321', 6, 'Closed', '2013-11-07 09:11:57', 28, 'Online');
INSERT INTO `class_code` VALUES(41, 28, '654321', 6, 'Closed', '2013-11-07 10:11:37', 28, 'Online');
INSERT INTO `class_code` VALUES(42, 29, 'test', 2, 'Closed', '2013-11-07 10:11:54', 29, 'Online');
INSERT INTO `class_code` VALUES(43, 30, 'trust ', 6, 'Closed', '2013-11-08 08:11:45', 30, 'Online');
INSERT INTO `class_code` VALUES(44, 30, 'trends', 6, 'Start', '2013-11-09 01:11:03', 30, 'Online');
INSERT INTO `class_code` VALUES(45, 31, 'today1', 7, 'Start', '2013-11-10 06:11:00', 0, 'Online');
INSERT INTO `class_code` VALUES(46, 32, '11111', 8, 'Closed', '2013-11-11 09:11:48', 0, 'Online');
INSERT INTO `class_code` VALUES(47, 33, 'founding', 6, 'Closed', '2013-11-16 02:11:37', 0, 'Online');
INSERT INTO `class_code` VALUES(48, 33, 'usa', 6, 'Closed', '2013-11-16 02:11:18', 31, 'Online');
INSERT INTO `class_code` VALUES(49, 34, 'SCMAONS', 14, 'Start', '2013-11-18 08:11:45', 0, 'Online');
INSERT INTO `class_code` VALUES(50, 34, 'Event Code', 14, 'Start', '2013-11-18 08:11:51', 0, 'Online');
INSERT INTO `class_code` VALUES(51, 35, 'test', 15, 'Start', '2013-11-18 03:11:07', 0, 'Online');
INSERT INTO `class_code` VALUES(52, 35, 'poop', 15, 'Closed', '2013-11-18 03:11:51', 0, 'Online');
INSERT INTO `class_code` VALUES(53, 23, 'cell', 6, 'Start', '2013-11-19 07:11:47', 26, 'Offline');
INSERT INTO `class_code` VALUES(54, 23, 'cell wall', 6, 'Closed', '2013-11-19 07:11:23', 26, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL auto_increment,
  `classcode` int(11) NOT NULL,
  `studenid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=289 ;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` VALUES(40, 786786, 40);
INSERT INTO `counter` VALUES(39, 23, 39);
INSERT INTO `counter` VALUES(38, 0, 38);
INSERT INTO `counter` VALUES(37, 2, 37);
INSERT INTO `counter` VALUES(36, 786786, 36);
INSERT INTO `counter` VALUES(35, 22, 35);
INSERT INTO `counter` VALUES(34, 11, 34);
INSERT INTO `counter` VALUES(33, 40, 33);
INSERT INTO `counter` VALUES(32, 50, 32);
INSERT INTO `counter` VALUES(31, 60, 31);
INSERT INTO `counter` VALUES(30, 70, 30);
INSERT INTO `counter` VALUES(29, 80, 29);
INSERT INTO `counter` VALUES(28, 90, 28);
INSERT INTO `counter` VALUES(41, 0, 41);
INSERT INTO `counter` VALUES(42, 0, 42);
INSERT INTO `counter` VALUES(43, 0, 43);
INSERT INTO `counter` VALUES(44, 0, 44);
INSERT INTO `counter` VALUES(45, 0, 45);
INSERT INTO `counter` VALUES(46, 0, 46);
INSERT INTO `counter` VALUES(47, 0, 47);
INSERT INTO `counter` VALUES(48, 0, 48);
INSERT INTO `counter` VALUES(49, 0, 49);
INSERT INTO `counter` VALUES(50, 0, 50);
INSERT INTO `counter` VALUES(51, 0, 51);
INSERT INTO `counter` VALUES(52, 0, 52);
INSERT INTO `counter` VALUES(53, 0, 53);
INSERT INTO `counter` VALUES(54, 0, 54);
INSERT INTO `counter` VALUES(55, 0, 55);
INSERT INTO `counter` VALUES(56, 0, 56);
INSERT INTO `counter` VALUES(57, 0, 57);
INSERT INTO `counter` VALUES(58, 0, 58);
INSERT INTO `counter` VALUES(59, 0, 59);
INSERT INTO `counter` VALUES(60, 0, 60);
INSERT INTO `counter` VALUES(61, 0, 61);
INSERT INTO `counter` VALUES(62, 0, 62);
INSERT INTO `counter` VALUES(63, 0, 63);
INSERT INTO `counter` VALUES(64, 0, 64);
INSERT INTO `counter` VALUES(65, 0, 65);
INSERT INTO `counter` VALUES(66, 0, 66);
INSERT INTO `counter` VALUES(67, 0, 67);
INSERT INTO `counter` VALUES(68, 0, 68);
INSERT INTO `counter` VALUES(69, 0, 69);
INSERT INTO `counter` VALUES(70, 0, 70);
INSERT INTO `counter` VALUES(71, 0, 71);
INSERT INTO `counter` VALUES(72, 0, 72);
INSERT INTO `counter` VALUES(73, 0, 73);
INSERT INTO `counter` VALUES(74, 0, 74);
INSERT INTO `counter` VALUES(75, 0, 75);
INSERT INTO `counter` VALUES(76, 0, 76);
INSERT INTO `counter` VALUES(77, 0, 77);
INSERT INTO `counter` VALUES(78, 0, 78);
INSERT INTO `counter` VALUES(79, 0, 79);
INSERT INTO `counter` VALUES(80, 0, 80);
INSERT INTO `counter` VALUES(81, 0, 81);
INSERT INTO `counter` VALUES(82, 0, 82);
INSERT INTO `counter` VALUES(83, 0, 83);
INSERT INTO `counter` VALUES(84, 0, 84);
INSERT INTO `counter` VALUES(85, 12, 85);
INSERT INTO `counter` VALUES(86, 12, 86);
INSERT INTO `counter` VALUES(87, 12, 87);
INSERT INTO `counter` VALUES(88, 12, 88);
INSERT INTO `counter` VALUES(89, 12, 89);
INSERT INTO `counter` VALUES(90, 12, 90);
INSERT INTO `counter` VALUES(91, 12, 91);
INSERT INTO `counter` VALUES(92, 12, 92);
INSERT INTO `counter` VALUES(93, 12, 93);
INSERT INTO `counter` VALUES(94, 12, 94);
INSERT INTO `counter` VALUES(95, 12, 95);
INSERT INTO `counter` VALUES(96, 12, 96);
INSERT INTO `counter` VALUES(97, 12, 97);
INSERT INTO `counter` VALUES(98, 12, 98);
INSERT INTO `counter` VALUES(99, 12, 99);
INSERT INTO `counter` VALUES(100, 12, 100);
INSERT INTO `counter` VALUES(101, 12, 101);
INSERT INTO `counter` VALUES(102, 12, 102);
INSERT INTO `counter` VALUES(103, 12, 103);
INSERT INTO `counter` VALUES(104, 12, 104);
INSERT INTO `counter` VALUES(105, 12, 105);
INSERT INTO `counter` VALUES(106, 0, 106);
INSERT INTO `counter` VALUES(107, 12, 107);
INSERT INTO `counter` VALUES(108, 12, 108);
INSERT INTO `counter` VALUES(109, 98, 109);
INSERT INTO `counter` VALUES(110, 98, 110);
INSERT INTO `counter` VALUES(111, 98, 111);
INSERT INTO `counter` VALUES(112, 98, 112);
INSERT INTO `counter` VALUES(113, 98, 113);
INSERT INTO `counter` VALUES(114, 98, 114);
INSERT INTO `counter` VALUES(115, 98, 115);
INSERT INTO `counter` VALUES(116, 98, 116);
INSERT INTO `counter` VALUES(117, 98, 117);
INSERT INTO `counter` VALUES(118, 98, 118);
INSERT INTO `counter` VALUES(119, 98, 119);
INSERT INTO `counter` VALUES(120, 98, 120);
INSERT INTO `counter` VALUES(121, 98, 121);
INSERT INTO `counter` VALUES(122, 98, 122);
INSERT INTO `counter` VALUES(123, 98, 123);
INSERT INTO `counter` VALUES(124, 98, 124);
INSERT INTO `counter` VALUES(125, 98, 125);
INSERT INTO `counter` VALUES(126, 98, 126);
INSERT INTO `counter` VALUES(127, 98, 127);
INSERT INTO `counter` VALUES(128, 98, 128);
INSERT INTO `counter` VALUES(129, 98, 129);
INSERT INTO `counter` VALUES(130, 98, 130);
INSERT INTO `counter` VALUES(131, 98, 131);
INSERT INTO `counter` VALUES(132, 98, 132);
INSERT INTO `counter` VALUES(133, 98, 133);
INSERT INTO `counter` VALUES(134, 98765, 134);
INSERT INTO `counter` VALUES(135, 98765, 135);
INSERT INTO `counter` VALUES(136, 98765, 136);
INSERT INTO `counter` VALUES(137, 98765, 137);
INSERT INTO `counter` VALUES(138, 98765, 138);
INSERT INTO `counter` VALUES(139, 98765, 139);
INSERT INTO `counter` VALUES(140, 98765, 140);
INSERT INTO `counter` VALUES(141, 98765, 141);
INSERT INTO `counter` VALUES(142, 98765, 142);
INSERT INTO `counter` VALUES(143, 98765, 143);
INSERT INTO `counter` VALUES(144, 98765, 144);
INSERT INTO `counter` VALUES(145, 0, 145);
INSERT INTO `counter` VALUES(146, 98765, 146);
INSERT INTO `counter` VALUES(147, 98765, 147);
INSERT INTO `counter` VALUES(148, 98765, 148);
INSERT INTO `counter` VALUES(149, 98765, 149);
INSERT INTO `counter` VALUES(150, 98765, 150);
INSERT INTO `counter` VALUES(151, 98765, 151);
INSERT INTO `counter` VALUES(152, 98765, 152);
INSERT INTO `counter` VALUES(153, 98765, 153);
INSERT INTO `counter` VALUES(154, 98765, 154);
INSERT INTO `counter` VALUES(155, 98765, 155);
INSERT INTO `counter` VALUES(156, 123456, 156);
INSERT INTO `counter` VALUES(157, 54321, 157);
INSERT INTO `counter` VALUES(158, 54321, 158);
INSERT INTO `counter` VALUES(159, 54321, 159);
INSERT INTO `counter` VALUES(160, 54321, 160);
INSERT INTO `counter` VALUES(161, 54321, 161);
INSERT INTO `counter` VALUES(162, 54321, 162);
INSERT INTO `counter` VALUES(163, 54321, 163);
INSERT INTO `counter` VALUES(164, 54321, 164);
INSERT INTO `counter` VALUES(165, 54321, 165);
INSERT INTO `counter` VALUES(166, 54321, 166);
INSERT INTO `counter` VALUES(167, 54321, 167);
INSERT INTO `counter` VALUES(168, 54321, 168);
INSERT INTO `counter` VALUES(169, 54321, 169);
INSERT INTO `counter` VALUES(170, 54321, 170);
INSERT INTO `counter` VALUES(171, 0, 171);
INSERT INTO `counter` VALUES(172, 54321, 172);
INSERT INTO `counter` VALUES(173, 54321, 173);
INSERT INTO `counter` VALUES(174, 54321, 174);
INSERT INTO `counter` VALUES(175, 54321, 175);
INSERT INTO `counter` VALUES(176, 54321, 176);
INSERT INTO `counter` VALUES(177, 54321, 177);
INSERT INTO `counter` VALUES(178, 54321, 178);
INSERT INTO `counter` VALUES(179, 54321, 179);
INSERT INTO `counter` VALUES(180, 654321, 180);
INSERT INTO `counter` VALUES(181, 0, 181);
INSERT INTO `counter` VALUES(182, 654321, 182);
INSERT INTO `counter` VALUES(183, 654321, 183);
INSERT INTO `counter` VALUES(184, 654321, 184);
INSERT INTO `counter` VALUES(185, 654321, 185);
INSERT INTO `counter` VALUES(186, 654321, 186);
INSERT INTO `counter` VALUES(187, 654321, 187);
INSERT INTO `counter` VALUES(188, 654321, 188);
INSERT INTO `counter` VALUES(189, 654321, 189);
INSERT INTO `counter` VALUES(190, 654321, 190);
INSERT INTO `counter` VALUES(191, 654321, 191);
INSERT INTO `counter` VALUES(192, 654321, 192);
INSERT INTO `counter` VALUES(193, 0, 193);
INSERT INTO `counter` VALUES(194, 0, 194);
INSERT INTO `counter` VALUES(195, 0, 195);
INSERT INTO `counter` VALUES(196, 0, 196);
INSERT INTO `counter` VALUES(197, 0, 197);
INSERT INTO `counter` VALUES(198, 0, 198);
INSERT INTO `counter` VALUES(199, 0, 199);
INSERT INTO `counter` VALUES(200, 0, 200);
INSERT INTO `counter` VALUES(201, 0, 201);
INSERT INTO `counter` VALUES(202, 0, 202);
INSERT INTO `counter` VALUES(203, 0, 203);
INSERT INTO `counter` VALUES(204, 0, 204);
INSERT INTO `counter` VALUES(205, 0, 205);
INSERT INTO `counter` VALUES(206, 0, 206);
INSERT INTO `counter` VALUES(207, 0, 207);
INSERT INTO `counter` VALUES(208, 0, 208);
INSERT INTO `counter` VALUES(209, 0, 209);
INSERT INTO `counter` VALUES(210, 0, 210);
INSERT INTO `counter` VALUES(211, 0, 211);
INSERT INTO `counter` VALUES(212, 0, 212);
INSERT INTO `counter` VALUES(213, 0, 213);
INSERT INTO `counter` VALUES(214, 0, 214);
INSERT INTO `counter` VALUES(215, 0, 215);
INSERT INTO `counter` VALUES(216, 0, 216);
INSERT INTO `counter` VALUES(217, 0, 217);
INSERT INTO `counter` VALUES(218, 0, 218);
INSERT INTO `counter` VALUES(219, 0, 219);
INSERT INTO `counter` VALUES(220, 0, 220);
INSERT INTO `counter` VALUES(221, 0, 221);
INSERT INTO `counter` VALUES(222, 0, 222);
INSERT INTO `counter` VALUES(223, 0, 223);
INSERT INTO `counter` VALUES(224, 0, 224);
INSERT INTO `counter` VALUES(225, 0, 225);
INSERT INTO `counter` VALUES(226, 0, 226);
INSERT INTO `counter` VALUES(227, 0, 227);
INSERT INTO `counter` VALUES(228, 0, 228);
INSERT INTO `counter` VALUES(229, 0, 229);
INSERT INTO `counter` VALUES(230, 0, 230);
INSERT INTO `counter` VALUES(231, 0, 231);
INSERT INTO `counter` VALUES(232, 0, 232);
INSERT INTO `counter` VALUES(233, 0, 233);
INSERT INTO `counter` VALUES(234, 0, 234);
INSERT INTO `counter` VALUES(235, 0, 235);
INSERT INTO `counter` VALUES(236, 0, 236);
INSERT INTO `counter` VALUES(237, 0, 237);
INSERT INTO `counter` VALUES(238, 0, 238);
INSERT INTO `counter` VALUES(239, 0, 239);
INSERT INTO `counter` VALUES(240, 0, 240);
INSERT INTO `counter` VALUES(241, 0, 241);
INSERT INTO `counter` VALUES(242, 0, 242);
INSERT INTO `counter` VALUES(243, 0, 243);
INSERT INTO `counter` VALUES(244, 0, 244);
INSERT INTO `counter` VALUES(245, 0, 245);
INSERT INTO `counter` VALUES(246, 0, 246);
INSERT INTO `counter` VALUES(247, 0, 247);
INSERT INTO `counter` VALUES(248, 0, 248);
INSERT INTO `counter` VALUES(249, 0, 249);
INSERT INTO `counter` VALUES(250, 0, 250);
INSERT INTO `counter` VALUES(251, 0, 251);
INSERT INTO `counter` VALUES(252, 0, 252);
INSERT INTO `counter` VALUES(253, 0, 253);
INSERT INTO `counter` VALUES(254, 0, 254);
INSERT INTO `counter` VALUES(255, 0, 255);
INSERT INTO `counter` VALUES(256, 0, 256);
INSERT INTO `counter` VALUES(257, 0, 257);
INSERT INTO `counter` VALUES(258, 0, 258);
INSERT INTO `counter` VALUES(259, 0, 259);
INSERT INTO `counter` VALUES(260, 0, 260);
INSERT INTO `counter` VALUES(261, 0, 261);
INSERT INTO `counter` VALUES(262, 0, 262);
INSERT INTO `counter` VALUES(263, 0, 263);
INSERT INTO `counter` VALUES(264, 0, 264);
INSERT INTO `counter` VALUES(265, 0, 265);
INSERT INTO `counter` VALUES(266, 0, 266);
INSERT INTO `counter` VALUES(267, 0, 267);
INSERT INTO `counter` VALUES(268, 0, 268);
INSERT INTO `counter` VALUES(269, 0, 269);
INSERT INTO `counter` VALUES(270, 0, 270);
INSERT INTO `counter` VALUES(271, 0, 271);
INSERT INTO `counter` VALUES(272, 0, 272);
INSERT INTO `counter` VALUES(273, 11111, 273);
INSERT INTO `counter` VALUES(274, 0, 274);
INSERT INTO `counter` VALUES(275, 0, 275);
INSERT INTO `counter` VALUES(276, 0, 276);
INSERT INTO `counter` VALUES(277, 0, 277);
INSERT INTO `counter` VALUES(278, 0, 278);
INSERT INTO `counter` VALUES(279, 0, 279);
INSERT INTO `counter` VALUES(280, 0, 280);
INSERT INTO `counter` VALUES(281, 0, 281);
INSERT INTO `counter` VALUES(282, 0, 282);
INSERT INTO `counter` VALUES(283, 0, 283);
INSERT INTO `counter` VALUES(284, 0, 284);
INSERT INTO `counter` VALUES(285, 0, 285);
INSERT INTO `counter` VALUES(286, 0, 286);
INSERT INTO `counter` VALUES(287, 0, 287);
INSERT INTO `counter` VALUES(288, 0, 288);

-- --------------------------------------------------------

--
-- Table structure for table `editfeed`
--

CREATE TABLE `editfeed` (
  `id` int(11) NOT NULL auto_increment,
  `question1` varchar(255) NOT NULL,
  `question2` varchar(255) NOT NULL,
  `question3` varchar(255) NOT NULL,
  `classid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `editfeed`
--

INSERT INTO `editfeed` VALUES(26, 'How did you like this class?', 'Did you feel respected?', 'How were the readings? ', 0);
INSERT INTO `editfeed` VALUES(27, 'How did you like this class?', 'How did you like the readings?', 'Did you feel respected?', 0);
INSERT INTO `editfeed` VALUES(28, 'Did you find 2Shoes easy to use?', 'Do you think 2Shoes would be useful in a large presenation setting?', 'Did using 2Shoes make it more comfortable to ask questions?', 0);
INSERT INTO `editfeed` VALUES(29, 'How is this?', 'Like the app?', 'Ready for bed?', 0);
INSERT INTO `editfeed` VALUES(30, 'Did the speaker motivate and inspire you?', 'Was the content of this conference useful to you and your organization? ', 'Did 2Shoes help you interact with the presenter during this presentation?', 0);
INSERT INTO `editfeed` VALUES(31, 'Did the teacher make today''s class engaging?', 'Were the examples used in today''s class helpful in conveying the day''s lessons?', 'Were you treated fairly and respected by the teacher, in today''s class?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL auto_increment,
  `question1` int(11) NOT NULL,
  `question2` int(11) NOT NULL,
  `question3` int(11) NOT NULL,
  `classcode` varchar(200) NOT NULL,
  `studentid` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `classtitle` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` VALUES(27, 4, 4, 5, '023', 39, '2013-11-01', 'Science ');
INSERT INTO `feedback` VALUES(26, 4, 5, 4, '000', 38, '2013-11-01', 'Science ');
INSERT INTO `feedback` VALUES(28, 5, 5, 5, 'cell', 41, '2013-11-05', 'Biology ');
INSERT INTO `feedback` VALUES(29, 5, 5, 5, 'Neumann1', 74, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(30, 5, 5, 5, 'Neumann1', 70, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(31, 5, 2, 4, 'Neumann1', 83, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(32, 5, 4, 5, 'Neumann1', 69, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(33, 4, 5, 5, 'Neumann1', 62, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(34, 4, 4, 4, 'Neumann1', 80, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(35, 5, 5, 5, 'Neumann1', 84, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(36, 4, 4, 4, 'Neumann1', 81, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(37, 5, 3, 5, 'Neumann1', 55, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(38, 5, 4, 5, 'Neumann1', 65, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(39, 5, 4, 4, 'Neumann1', 60, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(40, 5, 5, 5, 'Neumann1', 76, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(41, 4, 3, 4, 'Neumann1', 67, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(42, 5, 4, 5, '098', 126, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(43, 3, 3, 5, '098', 131, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(44, 5, 4, 5, '098', 112, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(45, 4, 3, 4, '098', 121, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(46, 5, 3, 4, '098', 122, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(47, 5, 4, 5, '098', 117, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(48, 5, 4, 5, '098', 132, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(49, 5, 3, 3, '098', 123, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(50, 5, 3, 5, '098', 110, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(51, 5, 3, 4, '098', 133, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(52, 5, 1, 5, '098', 120, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(53, 4, 3, 5, '098', 113, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(54, 4, 3, 4, '098', 124, '2013-11-05', 'Neumann ');
INSERT INTO `feedback` VALUES(55, 5, 3, 4, '098765', 152, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(56, 5, 5, 4, '098765', 139, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(57, 5, 4, 5, '098765', 147, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(58, 5, 4, 4, '098765', 142, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(59, 5, 3, 5, '098765', 138, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(60, 5, 3, 4, '098765', 153, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(61, 5, 3, 5, '098765', 140, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(62, 5, 4, 4, '098765', 154, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(63, 4, 2, 3, '098765', 146, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(64, 5, 5, 4, '098765', 136, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(65, 4, 4, 5, '098765', 155, '2013-11-06', 'Neumann ');
INSERT INTO `feedback` VALUES(66, 5, 5, 5, '54321', 162, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(67, 4, 4, 4, '54321', 166, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(68, 5, 5, 5, '54321', 172, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(69, 5, 5, 5, '54321', 176, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(70, 4, 5, 4, '54321', 159, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(71, 4, 5, 5, '54321', 168, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(72, 5, 5, 5, '54321', 174, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(73, 5, 4, 4, '54321', 177, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(74, 5, 3, 4, '54321', 178, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(75, 5, 3, 5, '54321', 163, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(76, 4, 3, 5, '54321', 165, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(77, 2, 4, 5, '54321', 173, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(78, 5, 4, 2, '54321', 161, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(79, 5, 4, 5, '54321', 179, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(80, 5, 5, 5, '654321', 190, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(81, 5, 5, 5, '654321', 184, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(82, 5, 4, 5, '654321', 182, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(83, 5, 5, 5, '654321', 191, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(84, 4, 5, 5, '654321', 183, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(85, 5, 5, 5, '654321', 192, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(86, 4, 3, 4, '654321', 186, '2013-11-07', 'Neumann ');
INSERT INTO `feedback` VALUES(87, 5, 5, 5, 'test', 193, '2013-11-07', 'Global Test');
INSERT INTO `feedback` VALUES(88, 5, 5, 5, 'test', 197, '2013-11-07', 'Global Test');
INSERT INTO `feedback` VALUES(89, 2, 3, 5, 'test', 194, '2013-11-07', 'Global Test');
INSERT INTO `feedback` VALUES(90, 5, 5, 5, 'trust ', 239, '2013-11-08', 'Global Summit ');
INSERT INTO `feedback` VALUES(91, 2, 5, 5, 'usa', 281, '2013-11-16', 'History');
INSERT INTO `feedback` VALUES(92, 4, 5, 5, 'cell wall', 288, '2013-11-19', 'Science ');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL auto_increment,
  `id_class` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `classcode` varchar(200) NOT NULL,
  `studentid` int(11) NOT NULL,
  `rating` int(11) default NULL,
  `status` varchar(100) NOT NULL default 'Posted',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` VALUES(34, 19, 'Hello!', '090', 28, 1, 'Posted');
INSERT INTO `question` VALUES(35, 19, 'I love science!', '090', 28, 2, 'Posted');
INSERT INTO `question` VALUES(36, 19, 'This works well so far. ', '080', 29, 1, 'Posted');
INSERT INTO `question` VALUES(37, 19, 'Indeed!', '080', 29, 2, 'Posted');
INSERT INTO `question` VALUES(38, 19, 'How about know?', '070', 30, 2, 'Posted');
INSERT INTO `question` VALUES(39, 19, 'Does this work?', '070', 30, 1, 'Posted');
INSERT INTO `question` VALUES(40, 19, 'Great event!', '060', 31, 1, 'Posted');
INSERT INTO `question` VALUES(41, 19, 'We are liking the edits so far.', '050', 32, 2, 'Posted');
INSERT INTO `question` VALUES(42, 19, 'It seems to have a small bug though.', '050', 32, 1, 'Posted');
INSERT INTO `question` VALUES(43, 24, 'What is addition?', '040', 33, 1, 'Posted');
INSERT INTO `question` VALUES(44, 24, 'How do I do long division?', '040', 33, 2, 'Posted');
INSERT INTO `question` VALUES(45, 26, 'What is a cell wall?', '011', 34, 1, 'Posted');
INSERT INTO `question` VALUES(46, 26, 'How do single cell organisms work?', '011', 34, 2, 'Posted');
INSERT INTO `question` VALUES(47, 26, 'What do red blood cells do?', '022', 35, 1, 'Posted');
INSERT INTO `question` VALUES(48, 26, 'Can we see cells?', '022', 35, 2, 'Posted');
INSERT INTO `question` VALUES(49, 27, 'my first question', '786786A', 36, 2, 'Posted');
INSERT INTO `question` VALUES(50, 27, 'second question', '786786A', 36, 2, 'Posted');
INSERT INTO `question` VALUES(51, 27, 'third question', '786786A', 36, 2, 'Posted');
INSERT INTO `question` VALUES(52, 27, 'fourth question', '786786A', 36, 1, 'Posted');
INSERT INTO `question` VALUES(53, 27, 'dasdsa', '2ndclass', 37, 0, 'Posted');
INSERT INTO `question` VALUES(54, 27, 'dasdgfhgfhgfh', '2ndclass', 37, 1, 'Posted');
INSERT INTO `question` VALUES(55, 27, 'tretertret', '2ndclass', 37, 2, 'Posted');
INSERT INTO `question` VALUES(56, 23, 'I love science!', '000', 38, 2, 'Posted');
INSERT INTO `question` VALUES(57, 23, 'What can you do with a beaker?', '000', 38, 1, 'Posted');
INSERT INTO `question` VALUES(58, 23, 'Does this work now?', '023', 39, 2, 'Posted');
INSERT INTO `question` VALUES(59, 23, 'I hope the graph shows up!', '023', 39, 1, 'Posted');
INSERT INTO `question` VALUES(60, 27, 'First question', '786786Z', 40, 2, 'Posted');
INSERT INTO `question` VALUES(61, 27, 'secod question', '786786Z', 40, 1, 'Posted');
INSERT INTO `question` VALUES(62, 26, 'What is a cell wall?\r\n', 'cell', 41, 2, 'Posted');
INSERT INTO `question` VALUES(63, 26, 'Morning!', 'cell', 42, 1, 'Posted');
INSERT INTO `question` VALUES(64, 26, 'haha morning!\r\n', 'cell', 41, 1, 'Posted');
INSERT INTO `question` VALUES(65, 26, 'Can we see molecules?', 'cell', 41, 2, 'Posted');
INSERT INTO `question` VALUES(66, 26, 'What is a the meaning of life  ', 'cell', 42, 1, 'Posted');
INSERT INTO `question` VALUES(67, 28, 'What is the meaning of life?', 'Neumann1', 83, 2, 'Posted');
INSERT INTO `question` VALUES(68, 28, 'How closely was the upvote/downvote system based off reddit\\''s?', 'Neumann1', 74, 1, 'Posted');
INSERT INTO `question` VALUES(69, 28, 'How do you create private notes for CourseLoad? ', 'Neumann1', 65, 1, 'Posted');
INSERT INTO `question` VALUES(70, 28, 'So this app is internet-based only?\r\n', 'Neumann1', 62, 2, 'Posted');
INSERT INTO `question` VALUES(71, 28, 'What specifically are we doing for the showcase project? What sorts of ideas should we bring for next class?\r\n ', 'Neumann1', 67, 0, 'Posted');
INSERT INTO `question` VALUES(72, 28, 'Where do we turn the course load assignment in on blackboard? ', 'Neumann1', 60, 0, 'Posted');
INSERT INTO `question` VALUES(73, 28, 'What should the report look like for ABP3?\r\n', 'Neumann1', 84, 1, 'Posted');
INSERT INTO `question` VALUES(74, 28, 'Why can I upvote and downvote the same post?\r\n', 'Neumann1', 74, 1, 'Posted');
INSERT INTO `question` VALUES(75, 28, 'How do y\\''all make money?', 'Neumann1', 81, 2, 'Posted');
INSERT INTO `question` VALUES(76, 28, 'Up vote and down vote?', 'Neumann1', 76, 1, 'Posted');
INSERT INTO `question` VALUES(77, 28, 'How does this work?', '12ab', 95, 4, 'Posted');
INSERT INTO `question` VALUES(78, 28, '', '12ab', 103, 2, 'Posted');
INSERT INTO `question` VALUES(79, 28, 'When was this created?\r\n', '12ab', 91, 1, 'Posted');
INSERT INTO `question` VALUES(80, 28, 'How do you submit the ABP on Blackboard?', '12ab', 85, 3, 'Posted');
INSERT INTO `question` VALUES(81, 28, 'Will you ever put ads on this?', '12ab', 87, 4, 'Posted');
INSERT INTO `question` VALUES(82, 28, '', '12ab', 94, 2, 'Posted');
INSERT INTO `question` VALUES(83, 28, '', '12ab', 103, 1, 'Posted');
INSERT INTO `question` VALUES(84, 28, 'Why are some questions not showing up?\r\n', '12ab', 90, 3, 'Posted');
INSERT INTO `question` VALUES(85, 28, 'What is predicted to happen with a larger amount of students?\r\n', '12ab', 86, 1, 'Posted');
INSERT INTO `question` VALUES(86, 28, 'Is Dr. Neumann  going to answer the questions we are posing here?', '12ab', 105, 2, 'Posted');
INSERT INTO `question` VALUES(87, 28, 'Submit a Question', '12ab', 105, 1, 'Posted');
INSERT INTO `question` VALUES(88, 28, 'Where do we upload the courseload material analysis on blackboard?', '12ab', 100, 12, 'Posted');
INSERT INTO `question` VALUES(89, 28, 'Hello Class!', '098', 109, 1, 'Posted');
INSERT INTO `question` VALUES(90, 28, 'Can you see this?', '098', 111, 0, 'Posted');
INSERT INTO `question` VALUES(91, 28, 'How\\''s your day?', '098', 112, 0, 'Posted');
INSERT INTO `question` VALUES(92, 28, 'Why the domain destsite?\r\n', '098', 120, 2, 'Posted');
INSERT INTO `question` VALUES(93, 28, 'When are the test scores coming out?', '098', 111, 10, 'Posted');
INSERT INTO `question` VALUES(94, 28, 'Will we be talking about CourseLoad today?', '098', 117, 2, 'Posted');
INSERT INTO `question` VALUES(95, 28, 'How much wood could a woodchuck chuck if a woodchuck could chuck wood?', '098', 111, 0, 'Posted');
INSERT INTO `question` VALUES(96, 28, 'Is our APB2 graded yet?\r\n', '098', 112, 8, 'Posted');
INSERT INTO `question` VALUES(97, 28, 'Is there a downloadable app for this system?', '098', 121, 4, 'Posted');
INSERT INTO `question` VALUES(98, 28, 'Happy homecoming week everyone!\r\n', '098', 110, 1, 'Posted');
INSERT INTO `question` VALUES(99, 28, 'Where\\''s Waldo\r\n', '098', 122, 1, 'Posted');
INSERT INTO `question` VALUES(100, 28, 'I feel like a lot of inappropriate things could be posted.', '098', 111, 1, 'Posted');
INSERT INTO `question` VALUES(101, 28, 'This is very straightforward. ', '098', 128, 0, 'Posted');
INSERT INTO `question` VALUES(102, 28, 'What if they\\''re on wifi?', '098', 111, 0, 'Posted');
INSERT INTO `question` VALUES(103, 28, 'Would it be useful for a teacher to be able to flag important questions separately from the students ranking so they can find them easily later during the lecture?\r\n', '098', 113, 3, 'Posted');
INSERT INTO `question` VALUES(104, 28, 'I think you should make it an app, have people create a profile but keep the anonymity.', '098', 111, 0, 'Posted');
INSERT INTO `question` VALUES(105, 28, 'Is it possible to access this without an internet connection? For example in the main section at Centennial, the UA wifi signal is very weak...', '098', 117, 9, 'Posted');
INSERT INTO `question` VALUES(106, 28, 'Are the questions permanently saved so they can be viewed later?\r\n', '098', 113, 1, 'Posted');
INSERT INTO `question` VALUES(107, 28, 'What\\''s up with airline food?', '098', 111, -1, 'Posted');
INSERT INTO `question` VALUES(108, 28, 'I bet Obama hates cookies', '098', 131, 0, 'Posted');
INSERT INTO `question` VALUES(109, 28, 'Hello!', '098765', 134, 1, 'Posted');
INSERT INTO `question` VALUES(110, 28, 'Did you get the upvote/downvote idea from reddit?\r\n', '098765', 138, 7, 'Posted');
INSERT INTO `question` VALUES(111, 28, 'Is it live updating or refreshing?', '098765', 140, 2, 'Posted');
INSERT INTO `question` VALUES(112, 28, 'Do professors like this, or does this prevent complete control of the classroom?', '098765', 140, 2, 'Posted');
INSERT INTO `question` VALUES(113, 28, 'In classes of seven hundred people, how would the professor sort through which questions to answer?', '098765', 149, 4, 'Posted');
INSERT INTO `question` VALUES(114, 28, 'Hello Class!\r\n', '54321', 157, 0, 'Posted');
INSERT INTO `question` VALUES(115, 28, 'tthis is a question?\r\n', '54321', 157, -1, 'Posted');
INSERT INTO `question` VALUES(116, 28, 'Hi! How are you?', '54321', 161, 1, 'Posted');
INSERT INTO `question` VALUES(117, 28, 'How did you pick the \\"2shoes\\" name for your company?\r\n', '54321', 167, 4, 'Posted');
INSERT INTO `question` VALUES(118, 28, 'Why did you choose the name 2shoes?\r\n', '54321', 169, 1, 'Posted');
INSERT INTO `question` VALUES(119, 28, 'Why did the chicken cross the road', '54321', 162, 1, 'Posted');
INSERT INTO `question` VALUES(120, 28, 'Why did my question already get asked?', '54321', 158, 0, 'Posted');
INSERT INTO `question` VALUES(121, 28, 'Why not a million shoes ðŸ‘ ðŸ‘ ðŸ‘ ðŸ‘ ðŸ‘ ðŸ‘ ', '54321', 161, 3, 'Posted');
INSERT INTO `question` VALUES(122, 28, 'Shoes are the best', '54321', 161, 0, 'Posted');
INSERT INTO `question` VALUES(123, 28, '#shoegirl', '54321', 161, -2, 'Posted');
INSERT INTO `question` VALUES(124, 28, 'Were you in greek life at UA?\r\n', '54321', 170, 3, 'Posted');
INSERT INTO `question` VALUES(125, 28, 'why do we have to click submit (vs just pressing enter)?\r\n', '54321', 167, 3, 'Posted');
INSERT INTO `question` VALUES(126, 28, 'How do you make a profit from 2 shoes ? ', '54321', 172, 3, 'Posted');
INSERT INTO `question` VALUES(127, 28, 'What\\''s your fave kinda shoe', '54321', 161, 1, 'Posted');
INSERT INTO `question` VALUES(128, 28, 'How do you sort questions when they receive up or downvotes?', '54321', 159, 2, 'Posted');
INSERT INTO `question` VALUES(129, 28, 'I loloooovvvveeee shoes', '54321', 161, 0, 'Posted');
INSERT INTO `question` VALUES(130, 28, 'Have you considered showing the number of upvotes and downvotes?', '54321', 160, 3, 'Posted');
INSERT INTO `question` VALUES(131, 28, 'I couldn\\''t find your app on the App Store. Will it be coming soon?', '54321', 173, 3, 'Posted');
INSERT INTO `question` VALUES(132, 28, ' ( Í¡Â° ÍœÊ– Í¡Â°) ', '54321', 177, 2, 'Posted');
INSERT INTO `question` VALUES(133, 28, 'Hello Class!', '654321', 180, 2, 'Posted');
INSERT INTO `question` VALUES(134, 28, 'How are you?', '654321', 182, 1, 'Posted');
INSERT INTO `question` VALUES(135, 28, 'Buenos dias', '654321', 182, 1, 'Posted');
INSERT INTO `question` VALUES(136, 28, 'Hi', '654321', 183, 1, 'Posted');
INSERT INTO `question` VALUES(137, 28, 'woah ', '654321', 184, 1, 'Posted');
INSERT INTO `question` VALUES(138, 28, 'Hey', '654321', 188, 3, 'Posted');
INSERT INTO `question` VALUES(139, 28, 'What\\''s up?\r\n', '654321', 186, 2, 'Posted');
INSERT INTO `question` VALUES(140, 28, 'Me gusta los tacos.', '654321', 189, 2, 'Posted');
INSERT INTO `question` VALUES(141, 28, 'Hi!!!!', '654321', 190, 1, 'Posted');
INSERT INTO `question` VALUES(142, 28, 'where did you get the \\"Empowering Curiosity\\" tag line?\r\n', '654321', 187, 2, 'Posted');
INSERT INTO `question` VALUES(143, 29, 'How does this look?', 'test', 193, 2, 'Posted');
INSERT INTO `question` VALUES(144, 29, 'How does this update?', 'test', 196, 1, 'Posted');
INSERT INTO `question` VALUES(145, 29, 'What is the global summit? ', 'test', 194, 2, 'Posted');
INSERT INTO `question` VALUES(146, 29, 'Hey how can I get a beer? ', 'test', 197, 2, 'Posted');
INSERT INTO `question` VALUES(147, 29, 'Does this work at the right pace?', 'test', 193, 1, 'Posted');
INSERT INTO `question` VALUES(148, 29, 'anyone else want a beer?', 'test', 193, 1, 'Posted');
INSERT INTO `question` VALUES(149, 29, 'This is cool.', 'test', 197, 1, 'Posted');
INSERT INTO `question` VALUES(150, 30, 'Hello Global Summit!', 'trust ', 199, 0, 'Posted');
INSERT INTO `question` VALUES(151, 30, 'Hi there!', 'trust ', 199, 0, 'Posted');
INSERT INTO `question` VALUES(152, 30, 'How does trust play in terms of importance in a global economy?', 'trust ', 229, 2, 'Posted');
INSERT INTO `question` VALUES(153, 30, 'Which country or society has been most difficult for you to build trust in? Why?', 'trust ', 233, 3, 'Posted');
INSERT INTO `question` VALUES(154, 30, 'What implications, if any , does the NSA spying scandal have on Institutional Trust ?', 'trust ', 236, 3, 'Posted');
INSERT INTO `question` VALUES(155, 30, 'In PWC what role does inclusion play in building a trusting environment?', 'trust ', 234, 3, 'Posted');
INSERT INTO `question` VALUES(156, 30, '', 'trust ', 237, 0, 'Posted');
INSERT INTO `question` VALUES(157, 0, 'What strategies or mechanisms do you use to ensure that partners or other people are trustworthy? ', '', 0, 1, 'Posted');
INSERT INTO `question` VALUES(158, 30, 'How much influence/ partnership did your clients have in driving the PwC global delivery model?', 'trust ', 244, 4, 'Posted');
INSERT INTO `question` VALUES(159, 0, 'Could you go into more detail about reconciling the Indian and US mental models.', '', 0, 1, 'Posted');
INSERT INTO `question` VALUES(160, 0, 'Could you go into more detail about reconciling the Indian and US mental models.', '', 0, 1, 'Posted');
INSERT INTO `question` VALUES(161, 30, 'How can an organization address the lack of institutional trust from within and with clients who fear cloud technology as a source of innovation and mobility? ', 'trust ', 246, 3, 'Posted');
INSERT INTO `question` VALUES(162, 30, 'You said that PwC partners have 1 goal in their client relationships - \\"do whatever it takes to do it.\\"  Doesn\\''t that  \\"get it done\\" value get overemphasized resulting in ethical problems that impact institutional trust?', 'trust ', 247, 3, 'Posted');
INSERT INTO `question` VALUES(163, 30, 'Hello!', 'trends', 261, 1, 'Posted');
INSERT INTO `question` VALUES(164, 32, 'Hi!', '11111', 273, 1, 'Posted');
INSERT INTO `question` VALUES(165, 33, 'who were the founding fathers?', 'founding', 275, 2, 'Posted');
INSERT INTO `question` VALUES(166, 33, 'I don\\''t understand what the Boston tea party is.', 'founding', 274, 2, 'Posted');
INSERT INTO `question` VALUES(167, 33, 'What year was the US created?', 'founding', 274, 2, 'Posted');
INSERT INTO `question` VALUES(168, 33, 'when can we see our grades from the last test?', 'founding', 275, 3, 'Posted');
INSERT INTO `question` VALUES(169, 33, 'Could you explain the declaration of independence? ', 'founding', 274, 1, 'Posted');
INSERT INTO `question` VALUES(170, 33, 'Do we have veterans day off?', 'founding', 279, 1, 'Posted');
INSERT INTO `question` VALUES(171, 33, 'Who signed it?', 'founding', 275, 1, 'Posted');
INSERT INTO `question` VALUES(172, 33, 'Who signed it?', 'founding', 274, 1, 'Posted');
INSERT INTO `question` VALUES(173, 33, 'Who were the founding fathers?', 'usa', 281, 2, 'Posted');
INSERT INTO `question` VALUES(174, 33, 'What year was the US created?', 'usa', 280, 2, 'Posted');
INSERT INTO `question` VALUES(175, 33, 'I don\\''t understand what the Boston Tea Party is.', 'usa', 282, 2, 'Posted');
INSERT INTO `question` VALUES(176, 33, 'Could you explain the deceleration of independence?', 'usa', 281, 1, 'Posted');
INSERT INTO `question` VALUES(177, 33, 'When can we see out grades for the last test?', 'usa', 282, 2, 'Posted');
INSERT INTO `question` VALUES(178, 33, 'Do we have veteran\\''s day off?', 'usa', 282, 1, 'Posted');
INSERT INTO `question` VALUES(179, 33, 'Who signed the decoloration?', 'usa', 280, 2, 'Posted');
INSERT INTO `question` VALUES(180, 34, 'How badly does your procurement need transforming?\r\nReally bad!\r\nWe could certainly do some things better\r\nWe are pretty good, always room to improve\r\nWhy am I here again?', 'SCMAONS', 283, 0, 'Posted');
INSERT INTO `question` VALUES(181, 35, 'How are you?\r\n', 'poop', 285, 2, 'Posted');
INSERT INTO `question` VALUES(182, 35, 'Q1\r\n', 'poop', 285, 1, 'Posted');
INSERT INTO `question` VALUES(183, 35, 'Q2', 'poop', 285, 1, 'Posted');
INSERT INTO `question` VALUES(184, 35, 'Q3', 'poop', 285, 1, 'Posted');
INSERT INTO `question` VALUES(185, 23, 'What is a cell wall?', 'cell wall', 288, 1, 'Posted');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `ratings` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `classcode` int(11) NOT NULL,
  `votetype` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=323 ;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` VALUES(14, 35, 1, 28, 90, 'Up');
INSERT INTO `ratings` VALUES(15, 37, 1, 29, 80, 'Up');
INSERT INTO `ratings` VALUES(16, 38, 1, 30, 70, 'Up');
INSERT INTO `ratings` VALUES(17, 41, 1, 32, 50, 'Up');
INSERT INTO `ratings` VALUES(18, 44, 1, 33, 40, 'Up');
INSERT INTO `ratings` VALUES(19, 46, 1, 34, 11, 'Up');
INSERT INTO `ratings` VALUES(20, 48, 1, 35, 22, 'Up');
INSERT INTO `ratings` VALUES(21, 49, 1, 36, 786786, 'Up');
INSERT INTO `ratings` VALUES(22, 50, 1, 36, 786786, 'Up');
INSERT INTO `ratings` VALUES(23, 51, 1, 36, 786786, 'Up');
INSERT INTO `ratings` VALUES(24, 53, 1, 37, 2, 'Down');
INSERT INTO `ratings` VALUES(25, 55, 1, 37, 2, 'Up');
INSERT INTO `ratings` VALUES(26, 56, 1, 38, 0, 'Up');
INSERT INTO `ratings` VALUES(27, 58, 1, 39, 23, 'Up');
INSERT INTO `ratings` VALUES(28, 60, 1, 40, 786786, 'Up');
INSERT INTO `ratings` VALUES(29, 65, 1, 41, 0, 'Up');
INSERT INTO `ratings` VALUES(30, 62, 1, 41, 0, 'Up');
INSERT INTO `ratings` VALUES(31, 67, 1, 69, 0, 'Down');
INSERT INTO `ratings` VALUES(32, 69, 1, 74, 0, 'Up');
INSERT INTO `ratings` VALUES(33, 70, 1, 74, 0, 'Down');
INSERT INTO `ratings` VALUES(34, 69, 1, 74, 0, 'Down');
INSERT INTO `ratings` VALUES(35, 67, 1, 79, 0, 'Up');
INSERT INTO `ratings` VALUES(36, 72, 1, 74, 0, 'Down');
INSERT INTO `ratings` VALUES(37, 71, 1, 67, 0, 'Down');
INSERT INTO `ratings` VALUES(38, 69, 1, 67, 0, 'Down');
INSERT INTO `ratings` VALUES(39, 68, 1, 67, 0, 'Up');
INSERT INTO `ratings` VALUES(40, 70, 1, 74, 0, 'Up');
INSERT INTO `ratings` VALUES(41, 67, 1, 69, 0, 'Up');
INSERT INTO `ratings` VALUES(42, 68, 1, 80, 0, 'Down');
INSERT INTO `ratings` VALUES(43, 67, 1, 80, 0, 'Up');
INSERT INTO `ratings` VALUES(44, 67, 1, 67, 0, 'Up');
INSERT INTO `ratings` VALUES(45, 67, 1, 55, 0, 'Down');
INSERT INTO `ratings` VALUES(46, 67, 1, 67, 0, 'Down');
INSERT INTO `ratings` VALUES(47, 69, 1, 70, 0, 'Up');
INSERT INTO `ratings` VALUES(48, 70, 1, 62, 0, 'Up');
INSERT INTO `ratings` VALUES(49, 70, 1, 68, 0, 'Up');
INSERT INTO `ratings` VALUES(50, 70, 1, 68, 0, 'Down');
INSERT INTO `ratings` VALUES(51, 75, 1, 81, 0, 'Up');
INSERT INTO `ratings` VALUES(52, 81, 1, 87, 12, 'Up');
INSERT INTO `ratings` VALUES(53, 80, 1, 102, 12, 'Up');
INSERT INTO `ratings` VALUES(54, 82, 1, 103, 12, 'Up');
INSERT INTO `ratings` VALUES(55, 86, 1, 105, 12, 'Up');
INSERT INTO `ratings` VALUES(56, 78, 1, 103, 12, 'Up');
INSERT INTO `ratings` VALUES(57, 80, 1, 100, 12, 'Up');
INSERT INTO `ratings` VALUES(58, 80, 1, 85, 12, 'Down');
INSERT INTO `ratings` VALUES(59, 86, 1, 86, 12, 'Up');
INSERT INTO `ratings` VALUES(60, 77, 1, 103, 12, 'Up');
INSERT INTO `ratings` VALUES(61, 88, 1, 95, 12, 'Up');
INSERT INTO `ratings` VALUES(62, 81, 1, 86, 12, 'Up');
INSERT INTO `ratings` VALUES(63, 77, 1, 85, 12, 'Up');
INSERT INTO `ratings` VALUES(64, 80, 1, 85, 12, 'Up');
INSERT INTO `ratings` VALUES(65, 77, 1, 90, 12, 'Down');
INSERT INTO `ratings` VALUES(66, 77, 1, 90, 12, 'Up');
INSERT INTO `ratings` VALUES(67, 88, 1, 85, 12, 'Up');
INSERT INTO `ratings` VALUES(68, 88, 1, 103, 12, 'Up');
INSERT INTO `ratings` VALUES(69, 88, 1, 91, 12, 'Up');
INSERT INTO `ratings` VALUES(70, 88, 1, 90, 12, 'Up');
INSERT INTO `ratings` VALUES(71, 88, 1, 87, 12, 'Up');
INSERT INTO `ratings` VALUES(72, 88, 1, 102, 12, 'Up');
INSERT INTO `ratings` VALUES(73, 88, 1, 94, 12, 'Up');
INSERT INTO `ratings` VALUES(74, 88, 1, 96, 12, 'Up');
INSERT INTO `ratings` VALUES(75, 88, 1, 105, 12, 'Up');
INSERT INTO `ratings` VALUES(76, 80, 1, 86, 12, 'Up');
INSERT INTO `ratings` VALUES(77, 81, 1, 108, 12, 'Up');
INSERT INTO `ratings` VALUES(78, 88, 1, 108, 12, 'Down');
INSERT INTO `ratings` VALUES(79, 88, 1, 86, 12, 'Up');
INSERT INTO `ratings` VALUES(80, 88, 1, 92, 12, 'Up');
INSERT INTO `ratings` VALUES(81, 80, 1, 108, 12, 'Down');
INSERT INTO `ratings` VALUES(82, 77, 1, 108, 12, 'Up');
INSERT INTO `ratings` VALUES(83, 86, 1, 108, 12, 'Down');
INSERT INTO `ratings` VALUES(84, 84, 1, 108, 12, 'Up');
INSERT INTO `ratings` VALUES(85, 84, 1, 86, 12, 'Up');
INSERT INTO `ratings` VALUES(86, 93, 1, 116, 98, 'Up');
INSERT INTO `ratings` VALUES(87, 93, 1, 111, 98, 'Up');
INSERT INTO `ratings` VALUES(88, 92, 1, 120, 98, 'Up');
INSERT INTO `ratings` VALUES(89, 94, 1, 116, 98, 'Up');
INSERT INTO `ratings` VALUES(90, 93, 1, 120, 98, 'Up');
INSERT INTO `ratings` VALUES(91, 94, 1, 111, 98, 'Down');
INSERT INTO `ratings` VALUES(92, 97, 1, 117, 98, 'Up');
INSERT INTO `ratings` VALUES(93, 95, 1, 117, 98, 'Down');
INSERT INTO `ratings` VALUES(94, 93, 1, 112, 98, 'Up');
INSERT INTO `ratings` VALUES(95, 93, 1, 110, 98, 'Up');
INSERT INTO `ratings` VALUES(96, 93, 1, 126, 98, 'Down');
INSERT INTO `ratings` VALUES(97, 97, 1, 114, 98, 'Up');
INSERT INTO `ratings` VALUES(98, 96, 1, 112, 98, 'Up');
INSERT INTO `ratings` VALUES(99, 98, 1, 113, 98, 'Down');
INSERT INTO `ratings` VALUES(100, 96, 1, 119, 98, 'Up');
INSERT INTO `ratings` VALUES(101, 98, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(102, 96, 1, 117, 98, 'Up');
INSERT INTO `ratings` VALUES(103, 99, 1, 122, 98, 'Up');
INSERT INTO `ratings` VALUES(104, 93, 1, 119, 98, 'Up');
INSERT INTO `ratings` VALUES(105, 93, 1, 122, 98, 'Up');
INSERT INTO `ratings` VALUES(106, 93, 1, 128, 98, 'Up');
INSERT INTO `ratings` VALUES(107, 99, 1, 117, 98, 'Down');
INSERT INTO `ratings` VALUES(108, 99, 1, 111, 98, 'Up');
INSERT INTO `ratings` VALUES(109, 92, 1, 113, 98, 'Up');
INSERT INTO `ratings` VALUES(110, 96, 1, 126, 98, 'Up');
INSERT INTO `ratings` VALUES(111, 98, 1, 123, 98, 'Up');
INSERT INTO `ratings` VALUES(112, 99, 1, 129, 98, 'Down');
INSERT INTO `ratings` VALUES(113, 99, 1, 113, 98, 'Up');
INSERT INTO `ratings` VALUES(114, 97, 1, 126, 98, 'Up');
INSERT INTO `ratings` VALUES(115, 93, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(116, 98, 1, 129, 98, 'Down');
INSERT INTO `ratings` VALUES(117, 93, 1, 123, 98, 'Up');
INSERT INTO `ratings` VALUES(118, 96, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(119, 96, 1, 128, 98, 'Up');
INSERT INTO `ratings` VALUES(120, 97, 1, 128, 98, 'Up');
INSERT INTO `ratings` VALUES(121, 95, 1, 129, 98, 'Down');
INSERT INTO `ratings` VALUES(122, 94, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(123, 95, 1, 113, 98, 'Up');
INSERT INTO `ratings` VALUES(124, 97, 1, 129, 98, 'Up');
INSERT INTO `ratings` VALUES(125, 103, 1, 129, 98, 'Up');
INSERT INTO `ratings` VALUES(126, 91, 1, 129, 98, 'Down');
INSERT INTO `ratings` VALUES(127, 102, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(128, 92, 1, 119, 98, 'Up');
INSERT INTO `ratings` VALUES(129, 99, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(130, 105, 1, 117, 98, 'Up');
INSERT INTO `ratings` VALUES(131, 105, 1, 119, 98, 'Up');
INSERT INTO `ratings` VALUES(132, 90, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(133, 89, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(134, 104, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(135, 95, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(136, 101, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(137, 105, 1, 129, 98, 'Up');
INSERT INTO `ratings` VALUES(138, 105, 1, 113, 98, 'Up');
INSERT INTO `ratings` VALUES(139, 92, 1, 129, 98, 'Down');
INSERT INTO `ratings` VALUES(140, 97, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(141, 92, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(142, 105, 1, 112, 98, 'Up');
INSERT INTO `ratings` VALUES(143, 105, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(144, 105, 1, 110, 98, 'Up');
INSERT INTO `ratings` VALUES(145, 103, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(146, 107, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(147, 97, 1, 110, 98, 'Up');
INSERT INTO `ratings` VALUES(148, 94, 1, 131, 98, 'Up');
INSERT INTO `ratings` VALUES(149, 99, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(150, 103, 1, 120, 98, 'Up');
INSERT INTO `ratings` VALUES(151, 93, 1, 131, 98, 'Down');
INSERT INTO `ratings` VALUES(152, 100, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(153, 105, 1, 131, 98, 'Up');
INSERT INTO `ratings` VALUES(154, 96, 1, 131, 98, 'Up');
INSERT INTO `ratings` VALUES(155, 97, 1, 121, 98, 'Down');
INSERT INTO `ratings` VALUES(156, 93, 1, 126, 98, 'Up');
INSERT INTO `ratings` VALUES(157, 97, 1, 131, 98, 'Down');
INSERT INTO `ratings` VALUES(158, 95, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(159, 89, 1, 121, 98, 'Up');
INSERT INTO `ratings` VALUES(160, 108, 1, 131, 98, 'Up');
INSERT INTO `ratings` VALUES(161, 100, 1, 131, 98, 'Down');
INSERT INTO `ratings` VALUES(162, 99, 1, 131, 98, 'Down');
INSERT INTO `ratings` VALUES(163, 94, 1, 131, 98, 'Down');
INSERT INTO `ratings` VALUES(164, 103, 1, 131, 98, 'Down');
INSERT INTO `ratings` VALUES(165, 108, 1, 113, 98, 'Down');
INSERT INTO `ratings` VALUES(166, 108, 1, 119, 98, 'Up');
INSERT INTO `ratings` VALUES(167, 107, 1, 117, 98, 'Down');
INSERT INTO `ratings` VALUES(168, 108, 1, 117, 98, 'Down');
INSERT INTO `ratings` VALUES(169, 108, 1, 119, 98, 'Down');
INSERT INTO `ratings` VALUES(170, 109, 1, 138, 98765, 'Down');
INSERT INTO `ratings` VALUES(171, 111, 1, 136, 98765, 'Up');
INSERT INTO `ratings` VALUES(172, 111, 1, 136, 98765, 'Down');
INSERT INTO `ratings` VALUES(173, 110, 1, 148, 98765, 'Up');
INSERT INTO `ratings` VALUES(174, 111, 1, 143, 98765, 'Up');
INSERT INTO `ratings` VALUES(175, 110, 1, 135, 98765, 'Up');
INSERT INTO `ratings` VALUES(176, 110, 1, 146, 98765, 'Down');
INSERT INTO `ratings` VALUES(177, 110, 1, 142, 98765, 'Up');
INSERT INTO `ratings` VALUES(178, 111, 1, 143, 98765, 'Down');
INSERT INTO `ratings` VALUES(179, 111, 1, 144, 98765, 'Up');
INSERT INTO `ratings` VALUES(180, 109, 1, 148, 98765, 'Up');
INSERT INTO `ratings` VALUES(181, 111, 1, 146, 98765, 'Up');
INSERT INTO `ratings` VALUES(182, 110, 1, 140, 98765, 'Up');
INSERT INTO `ratings` VALUES(183, 110, 1, 138, 98765, 'Up');
INSERT INTO `ratings` VALUES(184, 109, 1, 146, 98765, 'Up');
INSERT INTO `ratings` VALUES(185, 110, 1, 146, 98765, 'Up');
INSERT INTO `ratings` VALUES(186, 111, 1, 146, 98765, 'Down');
INSERT INTO `ratings` VALUES(187, 109, 1, 146, 98765, 'Down');
INSERT INTO `ratings` VALUES(188, 110, 1, 136, 98765, 'Up');
INSERT INTO `ratings` VALUES(189, 112, 1, 148, 98765, 'Up');
INSERT INTO `ratings` VALUES(190, 113, 1, 140, 98765, 'Up');
INSERT INTO `ratings` VALUES(191, 113, 1, 148, 98765, 'Up');
INSERT INTO `ratings` VALUES(192, 113, 1, 143, 98765, 'Up');
INSERT INTO `ratings` VALUES(193, 115, 1, 168, 54321, 'Down');
INSERT INTO `ratings` VALUES(194, 114, 1, 168, 54321, 'Up');
INSERT INTO `ratings` VALUES(195, 114, 1, 168, 54321, 'Down');
INSERT INTO `ratings` VALUES(196, 117, 1, 162, 54321, 'Up');
INSERT INTO `ratings` VALUES(197, 117, 1, 169, 54321, 'Up');
INSERT INTO `ratings` VALUES(198, 117, 1, 160, 54321, 'Up');
INSERT INTO `ratings` VALUES(199, 118, 1, 169, 54321, 'Up');
INSERT INTO `ratings` VALUES(200, 121, 1, 159, 54321, 'Down');
INSERT INTO `ratings` VALUES(201, 121, 1, 170, 54321, 'Up');
INSERT INTO `ratings` VALUES(202, 121, 1, 160, 54321, 'Up');
INSERT INTO `ratings` VALUES(203, 117, 1, 159, 54321, 'Up');
INSERT INTO `ratings` VALUES(204, 119, 1, 162, 54321, 'Up');
INSERT INTO `ratings` VALUES(205, 117, 1, 165, 54321, 'Down');
INSERT INTO `ratings` VALUES(206, 120, 1, 159, 54321, 'Down');
INSERT INTO `ratings` VALUES(207, 117, 1, 166, 54321, 'Up');
INSERT INTO `ratings` VALUES(208, 118, 1, 159, 54321, 'Down');
INSERT INTO `ratings` VALUES(209, 122, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(210, 122, 1, 161, 54321, 'Up');
INSERT INTO `ratings` VALUES(211, 117, 1, 158, 54321, 'Up');
INSERT INTO `ratings` VALUES(212, 114, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(213, 117, 1, 165, 54321, 'Up');
INSERT INTO `ratings` VALUES(214, 124, 1, 170, 54321, 'Up');
INSERT INTO `ratings` VALUES(215, 125, 1, 169, 54321, 'Up');
INSERT INTO `ratings` VALUES(216, 121, 1, 165, 54321, 'Up');
INSERT INTO `ratings` VALUES(217, 114, 1, 172, 54321, 'Up');
INSERT INTO `ratings` VALUES(218, 117, 1, 172, 54321, 'Up');
INSERT INTO `ratings` VALUES(219, 128, 1, 159, 54321, 'Up');
INSERT INTO `ratings` VALUES(220, 117, 1, 172, 54321, 'Down');
INSERT INTO `ratings` VALUES(221, 121, 1, 161, 54321, 'Up');
INSERT INTO `ratings` VALUES(222, 121, 1, 172, 54321, 'Up');
INSERT INTO `ratings` VALUES(223, 121, 1, 172, 54321, 'Down');
INSERT INTO `ratings` VALUES(224, 117, 1, 161, 54321, 'Down');
INSERT INTO `ratings` VALUES(225, 130, 1, 169, 54321, 'Up');
INSERT INTO `ratings` VALUES(226, 123, 1, 172, 54321, 'Down');
INSERT INTO `ratings` VALUES(227, 131, 1, 169, 54321, 'Up');
INSERT INTO `ratings` VALUES(228, 130, 1, 160, 54321, 'Up');
INSERT INTO `ratings` VALUES(229, 123, 1, 162, 54321, 'Down');
INSERT INTO `ratings` VALUES(230, 130, 1, 159, 54321, 'Up');
INSERT INTO `ratings` VALUES(231, 122, 1, 162, 54321, 'Down');
INSERT INTO `ratings` VALUES(232, 119, 1, 159, 54321, 'Down');
INSERT INTO `ratings` VALUES(233, 131, 1, 159, 54321, 'Up');
INSERT INTO `ratings` VALUES(234, 129, 1, 162, 54321, 'Down');
INSERT INTO `ratings` VALUES(235, 115, 1, 172, 54321, 'Down');
INSERT INTO `ratings` VALUES(236, 114, 1, 172, 54321, 'Down');
INSERT INTO `ratings` VALUES(237, 125, 1, 172, 54321, 'Up');
INSERT INTO `ratings` VALUES(238, 121, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(239, 117, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(240, 124, 1, 175, 54321, 'Up');
INSERT INTO `ratings` VALUES(241, 125, 1, 175, 54321, 'Up');
INSERT INTO `ratings` VALUES(242, 130, 1, 175, 54321, 'Up');
INSERT INTO `ratings` VALUES(243, 124, 1, 176, 54321, 'Up');
INSERT INTO `ratings` VALUES(244, 126, 1, 177, 54321, 'Up');
INSERT INTO `ratings` VALUES(245, 126, 1, 160, 54321, 'Up');
INSERT INTO `ratings` VALUES(246, 125, 1, 177, 54321, 'Down');
INSERT INTO `ratings` VALUES(247, 124, 1, 177, 54321, 'Down');
INSERT INTO `ratings` VALUES(248, 126, 1, 176, 54321, 'Up');
INSERT INTO `ratings` VALUES(249, 132, 1, 177, 54321, 'Up');
INSERT INTO `ratings` VALUES(250, 131, 1, 172, 54321, 'Up');
INSERT INTO `ratings` VALUES(251, 132, 1, 160, 54321, 'Up');
INSERT INTO `ratings` VALUES(252, 123, 1, 174, 54321, 'Down');
INSERT INTO `ratings` VALUES(253, 126, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(254, 130, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(255, 131, 1, 160, 54321, 'Down');
INSERT INTO `ratings` VALUES(256, 130, 1, 177, 54321, 'Down');
INSERT INTO `ratings` VALUES(257, 117, 1, 177, 54321, 'Down');
INSERT INTO `ratings` VALUES(258, 132, 1, 159, 54321, 'Down');
INSERT INTO `ratings` VALUES(259, 138, 1, 185, 654321, 'Up');
INSERT INTO `ratings` VALUES(260, 139, 1, 185, 654321, 'Up');
INSERT INTO `ratings` VALUES(261, 138, 1, 184, 654321, 'Up');
INSERT INTO `ratings` VALUES(262, 140, 1, 183, 654321, 'Up');
INSERT INTO `ratings` VALUES(263, 140, 1, 184, 654321, 'Down');
INSERT INTO `ratings` VALUES(264, 140, 1, 189, 654321, 'Up');
INSERT INTO `ratings` VALUES(265, 140, 1, 184, 654321, 'Up');
INSERT INTO `ratings` VALUES(266, 133, 1, 183, 654321, 'Up');
INSERT INTO `ratings` VALUES(267, 140, 1, 190, 654321, 'Down');
INSERT INTO `ratings` VALUES(268, 142, 1, 184, 654321, 'Up');
INSERT INTO `ratings` VALUES(269, 143, 1, 193, 0, 'Up');
INSERT INTO `ratings` VALUES(270, 145, 1, 197, 0, 'Up');
INSERT INTO `ratings` VALUES(271, 146, 1, 194, 0, 'Up');
INSERT INTO `ratings` VALUES(272, 150, 1, 201, 0, 'Down');
INSERT INTO `ratings` VALUES(273, 150, 1, 204, 0, 'Up');
INSERT INTO `ratings` VALUES(274, 150, 1, 204, 0, 'Down');
INSERT INTO `ratings` VALUES(275, 151, 1, 210, 0, 'Down');
INSERT INTO `ratings` VALUES(276, 150, 1, 209, 0, 'Up');
INSERT INTO `ratings` VALUES(277, 151, 1, 209, 0, 'Up');
INSERT INTO `ratings` VALUES(278, 151, 1, 199, 0, 'Up');
INSERT INTO `ratings` VALUES(279, 152, 1, 229, 0, 'Down');
INSERT INTO `ratings` VALUES(280, 152, 1, 229, 0, 'Up');
INSERT INTO `ratings` VALUES(281, 152, 1, 199, 0, 'Up');
INSERT INTO `ratings` VALUES(282, 152, 1, 230, 0, 'Up');
INSERT INTO `ratings` VALUES(283, 153, 1, 234, 0, 'Up');
INSERT INTO `ratings` VALUES(284, 151, 1, 231, 0, 'Down');
INSERT INTO `ratings` VALUES(285, 153, 1, 235, 0, 'Up');
INSERT INTO `ratings` VALUES(286, 153, 1, 235, 0, 'Up');
INSERT INTO `ratings` VALUES(287, 152, 1, 237, 0, 'Up');
INSERT INTO `ratings` VALUES(288, 154, 1, 234, 0, 'Up');
INSERT INTO `ratings` VALUES(289, 155, 1, 234, 0, 'Up');
INSERT INTO `ratings` VALUES(290, 154, 1, 237, 0, 'Up');
INSERT INTO `ratings` VALUES(291, 154, 1, 239, 0, 'Up');
INSERT INTO `ratings` VALUES(292, 155, 1, 239, 0, 'Up');
INSERT INTO `ratings` VALUES(293, 153, 1, 239, 0, 'Down');
INSERT INTO `ratings` VALUES(294, 152, 1, 239, 0, 'Down');
INSERT INTO `ratings` VALUES(295, 156, 1, 237, 0, 'Down');
INSERT INTO `ratings` VALUES(296, 151, 1, 237, 0, 'Down');
INSERT INTO `ratings` VALUES(297, 150, 1, 237, 0, 'Down');
INSERT INTO `ratings` VALUES(298, 158, 1, 234, 0, 'Up');
INSERT INTO `ratings` VALUES(299, 152, 1, 234, 0, 'Down');
INSERT INTO `ratings` VALUES(300, 162, 1, 251, 0, 'Up');
INSERT INTO `ratings` VALUES(301, 161, 1, 251, 0, 'Up');
INSERT INTO `ratings` VALUES(302, 162, 1, 239, 0, 'Up');
INSERT INTO `ratings` VALUES(303, 154, 1, 239, 0, 'Down');
INSERT INTO `ratings` VALUES(304, 161, 1, 239, 0, 'Up');
INSERT INTO `ratings` VALUES(305, 158, 1, 239, 0, 'Up');
INSERT INTO `ratings` VALUES(306, 158, 1, 244, 0, 'Up');
INSERT INTO `ratings` VALUES(307, 167, 1, 275, 0, 'Up');
INSERT INTO `ratings` VALUES(308, 168, 1, 275, 0, 'Up');
INSERT INTO `ratings` VALUES(309, 168, 1, 274, 0, 'Up');
INSERT INTO `ratings` VALUES(310, 165, 1, 274, 0, 'Up');
INSERT INTO `ratings` VALUES(311, 170, 1, 274, 0, 'Down');
INSERT INTO `ratings` VALUES(312, 170, 1, 275, 0, 'Up');
INSERT INTO `ratings` VALUES(313, 166, 1, 275, 0, 'Up');
INSERT INTO `ratings` VALUES(314, 174, 1, 281, 0, 'Up');
INSERT INTO `ratings` VALUES(315, 177, 1, 281, 0, 'Up');
INSERT INTO `ratings` VALUES(316, 173, 1, 282, 0, 'Up');
INSERT INTO `ratings` VALUES(317, 179, 1, 281, 0, 'Up');
INSERT INTO `ratings` VALUES(318, 175, 1, 282, 0, 'Up');
INSERT INTO `ratings` VALUES(319, 222, 1, 0, 0, 'Up');
INSERT INTO `ratings` VALUES(320, 180, 1, 283, 0, 'Down');
INSERT INTO `ratings` VALUES(321, 181, 1, 285, 0, 'Up');
INSERT INTO `ratings` VALUES(322, 186, 1, 288, 0, 'Up');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=289 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` VALUES(28, '', '');
INSERT INTO `student` VALUES(29, '', '');
INSERT INTO `student` VALUES(30, '', '');
INSERT INTO `student` VALUES(31, '', '');
INSERT INTO `student` VALUES(32, '', '');
INSERT INTO `student` VALUES(33, '', '');
INSERT INTO `student` VALUES(34, '', '');
INSERT INTO `student` VALUES(35, '', '');
INSERT INTO `student` VALUES(36, '', '');
INSERT INTO `student` VALUES(37, '', '');
INSERT INTO `student` VALUES(38, '', '');
INSERT INTO `student` VALUES(39, '', '');
INSERT INTO `student` VALUES(40, '', '');
INSERT INTO `student` VALUES(41, '', '');
INSERT INTO `student` VALUES(42, '', '');
INSERT INTO `student` VALUES(43, '', '');
INSERT INTO `student` VALUES(44, '', '');
INSERT INTO `student` VALUES(45, '', '');
INSERT INTO `student` VALUES(46, '', '');
INSERT INTO `student` VALUES(47, '', '');
INSERT INTO `student` VALUES(48, '', '');
INSERT INTO `student` VALUES(49, '', '');
INSERT INTO `student` VALUES(50, '', '');
INSERT INTO `student` VALUES(51, '', '');
INSERT INTO `student` VALUES(52, '', '');
INSERT INTO `student` VALUES(53, '', '');
INSERT INTO `student` VALUES(54, '', '');
INSERT INTO `student` VALUES(55, '', '');
INSERT INTO `student` VALUES(56, '', '');
INSERT INTO `student` VALUES(57, '', '');
INSERT INTO `student` VALUES(58, '', '');
INSERT INTO `student` VALUES(59, '', '');
INSERT INTO `student` VALUES(60, '', '');
INSERT INTO `student` VALUES(61, '', '');
INSERT INTO `student` VALUES(62, '', '');
INSERT INTO `student` VALUES(63, '', '');
INSERT INTO `student` VALUES(64, '', '');
INSERT INTO `student` VALUES(65, '', '');
INSERT INTO `student` VALUES(66, '', '');
INSERT INTO `student` VALUES(67, '', '');
INSERT INTO `student` VALUES(68, '', '');
INSERT INTO `student` VALUES(69, '', '');
INSERT INTO `student` VALUES(70, '', '');
INSERT INTO `student` VALUES(71, '', '');
INSERT INTO `student` VALUES(72, '', '');
INSERT INTO `student` VALUES(73, '', '');
INSERT INTO `student` VALUES(74, '', '');
INSERT INTO `student` VALUES(75, '', '');
INSERT INTO `student` VALUES(76, '', '');
INSERT INTO `student` VALUES(77, '', '');
INSERT INTO `student` VALUES(78, '', '');
INSERT INTO `student` VALUES(79, '', '');
INSERT INTO `student` VALUES(80, '', '');
INSERT INTO `student` VALUES(81, '', '');
INSERT INTO `student` VALUES(82, '', '');
INSERT INTO `student` VALUES(83, '', '');
INSERT INTO `student` VALUES(84, '', '');
INSERT INTO `student` VALUES(85, '', '');
INSERT INTO `student` VALUES(86, '', '');
INSERT INTO `student` VALUES(87, '', '');
INSERT INTO `student` VALUES(88, '', '');
INSERT INTO `student` VALUES(89, '', '');
INSERT INTO `student` VALUES(90, '', '');
INSERT INTO `student` VALUES(91, '', '');
INSERT INTO `student` VALUES(92, '', '');
INSERT INTO `student` VALUES(93, '', '');
INSERT INTO `student` VALUES(94, '', '');
INSERT INTO `student` VALUES(95, '', '');
INSERT INTO `student` VALUES(96, '', '');
INSERT INTO `student` VALUES(97, '', '');
INSERT INTO `student` VALUES(98, '', '');
INSERT INTO `student` VALUES(99, '', '');
INSERT INTO `student` VALUES(100, '', '');
INSERT INTO `student` VALUES(101, '', '');
INSERT INTO `student` VALUES(102, '', '');
INSERT INTO `student` VALUES(103, '', '');
INSERT INTO `student` VALUES(104, '', '');
INSERT INTO `student` VALUES(105, '', '');
INSERT INTO `student` VALUES(106, '', '');
INSERT INTO `student` VALUES(107, '', '');
INSERT INTO `student` VALUES(108, '', '');
INSERT INTO `student` VALUES(109, '', '');
INSERT INTO `student` VALUES(110, '', '');
INSERT INTO `student` VALUES(111, '', '');
INSERT INTO `student` VALUES(112, '', '');
INSERT INTO `student` VALUES(113, '', '');
INSERT INTO `student` VALUES(114, '', '');
INSERT INTO `student` VALUES(115, '', '');
INSERT INTO `student` VALUES(116, '', '');
INSERT INTO `student` VALUES(117, '', '');
INSERT INTO `student` VALUES(118, '', '');
INSERT INTO `student` VALUES(119, '', '');
INSERT INTO `student` VALUES(120, '', '');
INSERT INTO `student` VALUES(121, '', '');
INSERT INTO `student` VALUES(122, '', '');
INSERT INTO `student` VALUES(123, '', '');
INSERT INTO `student` VALUES(124, '', '');
INSERT INTO `student` VALUES(125, '', '');
INSERT INTO `student` VALUES(126, '', '');
INSERT INTO `student` VALUES(127, '', '');
INSERT INTO `student` VALUES(128, '', '');
INSERT INTO `student` VALUES(129, '', '');
INSERT INTO `student` VALUES(130, '', '');
INSERT INTO `student` VALUES(131, '', '');
INSERT INTO `student` VALUES(132, '', '');
INSERT INTO `student` VALUES(133, '', '');
INSERT INTO `student` VALUES(134, '', '');
INSERT INTO `student` VALUES(135, '', '');
INSERT INTO `student` VALUES(136, '', '');
INSERT INTO `student` VALUES(137, '', '');
INSERT INTO `student` VALUES(138, '', '');
INSERT INTO `student` VALUES(139, '', '');
INSERT INTO `student` VALUES(140, '', '');
INSERT INTO `student` VALUES(141, '', '');
INSERT INTO `student` VALUES(142, '', '');
INSERT INTO `student` VALUES(143, '', '');
INSERT INTO `student` VALUES(144, '', '');
INSERT INTO `student` VALUES(145, '', '');
INSERT INTO `student` VALUES(146, '', '');
INSERT INTO `student` VALUES(147, '', '');
INSERT INTO `student` VALUES(148, '', '');
INSERT INTO `student` VALUES(149, '', '');
INSERT INTO `student` VALUES(150, '', '');
INSERT INTO `student` VALUES(151, '', '');
INSERT INTO `student` VALUES(152, '', '');
INSERT INTO `student` VALUES(153, '', '');
INSERT INTO `student` VALUES(154, '', '');
INSERT INTO `student` VALUES(155, '', '');
INSERT INTO `student` VALUES(156, '', '');
INSERT INTO `student` VALUES(157, '', '');
INSERT INTO `student` VALUES(158, '', '');
INSERT INTO `student` VALUES(159, '', '');
INSERT INTO `student` VALUES(160, '', '');
INSERT INTO `student` VALUES(161, '', '');
INSERT INTO `student` VALUES(162, '', '');
INSERT INTO `student` VALUES(163, '', '');
INSERT INTO `student` VALUES(164, '', '');
INSERT INTO `student` VALUES(165, '', '');
INSERT INTO `student` VALUES(166, '', '');
INSERT INTO `student` VALUES(167, '', '');
INSERT INTO `student` VALUES(168, '', '');
INSERT INTO `student` VALUES(169, '', '');
INSERT INTO `student` VALUES(170, '', '');
INSERT INTO `student` VALUES(171, '', '');
INSERT INTO `student` VALUES(172, '', '');
INSERT INTO `student` VALUES(173, '', '');
INSERT INTO `student` VALUES(174, '', '');
INSERT INTO `student` VALUES(175, '', '');
INSERT INTO `student` VALUES(176, '', '');
INSERT INTO `student` VALUES(177, '', '');
INSERT INTO `student` VALUES(178, '', '');
INSERT INTO `student` VALUES(179, '', '');
INSERT INTO `student` VALUES(180, '', '');
INSERT INTO `student` VALUES(181, '', '');
INSERT INTO `student` VALUES(182, '', '');
INSERT INTO `student` VALUES(183, '', '');
INSERT INTO `student` VALUES(184, '', '');
INSERT INTO `student` VALUES(185, '', '');
INSERT INTO `student` VALUES(186, '', '');
INSERT INTO `student` VALUES(187, '', '');
INSERT INTO `student` VALUES(188, '', '');
INSERT INTO `student` VALUES(189, '', '');
INSERT INTO `student` VALUES(190, '', '');
INSERT INTO `student` VALUES(191, '', '');
INSERT INTO `student` VALUES(192, '', '');
INSERT INTO `student` VALUES(193, '', '');
INSERT INTO `student` VALUES(194, '', '');
INSERT INTO `student` VALUES(195, '', '');
INSERT INTO `student` VALUES(196, '', '');
INSERT INTO `student` VALUES(197, '', '');
INSERT INTO `student` VALUES(198, '', '');
INSERT INTO `student` VALUES(199, '', '');
INSERT INTO `student` VALUES(200, '', '');
INSERT INTO `student` VALUES(201, '', '');
INSERT INTO `student` VALUES(202, '', '');
INSERT INTO `student` VALUES(203, '', '');
INSERT INTO `student` VALUES(204, '', '');
INSERT INTO `student` VALUES(205, '', '');
INSERT INTO `student` VALUES(206, '', '');
INSERT INTO `student` VALUES(207, '', '');
INSERT INTO `student` VALUES(208, '', '');
INSERT INTO `student` VALUES(209, '', '');
INSERT INTO `student` VALUES(210, '', '');
INSERT INTO `student` VALUES(211, '', '');
INSERT INTO `student` VALUES(212, '', '');
INSERT INTO `student` VALUES(213, '', '');
INSERT INTO `student` VALUES(214, '', '');
INSERT INTO `student` VALUES(215, '', '');
INSERT INTO `student` VALUES(216, '', '');
INSERT INTO `student` VALUES(217, '', '');
INSERT INTO `student` VALUES(218, '', '');
INSERT INTO `student` VALUES(219, '', '');
INSERT INTO `student` VALUES(220, '', '');
INSERT INTO `student` VALUES(221, '', '');
INSERT INTO `student` VALUES(222, '', '');
INSERT INTO `student` VALUES(223, '', '');
INSERT INTO `student` VALUES(224, '', '');
INSERT INTO `student` VALUES(225, '', '');
INSERT INTO `student` VALUES(226, '', '');
INSERT INTO `student` VALUES(227, '', '');
INSERT INTO `student` VALUES(228, '', '');
INSERT INTO `student` VALUES(229, '', '');
INSERT INTO `student` VALUES(230, '', '');
INSERT INTO `student` VALUES(231, '', '');
INSERT INTO `student` VALUES(232, '', '');
INSERT INTO `student` VALUES(233, '', '');
INSERT INTO `student` VALUES(234, '', '');
INSERT INTO `student` VALUES(235, '', '');
INSERT INTO `student` VALUES(236, '', '');
INSERT INTO `student` VALUES(237, '', '');
INSERT INTO `student` VALUES(238, '', '');
INSERT INTO `student` VALUES(239, '', '');
INSERT INTO `student` VALUES(240, '', '');
INSERT INTO `student` VALUES(241, '', '');
INSERT INTO `student` VALUES(242, '', '');
INSERT INTO `student` VALUES(243, '', '');
INSERT INTO `student` VALUES(244, '', '');
INSERT INTO `student` VALUES(245, '', '');
INSERT INTO `student` VALUES(246, '', '');
INSERT INTO `student` VALUES(247, '', '');
INSERT INTO `student` VALUES(248, '', '');
INSERT INTO `student` VALUES(249, '', '');
INSERT INTO `student` VALUES(250, '', '');
INSERT INTO `student` VALUES(251, '', '');
INSERT INTO `student` VALUES(252, '', '');
INSERT INTO `student` VALUES(253, '', '');
INSERT INTO `student` VALUES(254, '', '');
INSERT INTO `student` VALUES(255, '', '');
INSERT INTO `student` VALUES(256, '', '');
INSERT INTO `student` VALUES(257, '', '');
INSERT INTO `student` VALUES(258, '', '');
INSERT INTO `student` VALUES(259, '', '');
INSERT INTO `student` VALUES(260, '', '');
INSERT INTO `student` VALUES(261, '', '');
INSERT INTO `student` VALUES(262, '', '');
INSERT INTO `student` VALUES(263, '', '');
INSERT INTO `student` VALUES(264, '', '');
INSERT INTO `student` VALUES(265, '', '');
INSERT INTO `student` VALUES(266, '', '');
INSERT INTO `student` VALUES(267, '', '');
INSERT INTO `student` VALUES(268, '', '');
INSERT INTO `student` VALUES(269, '', '');
INSERT INTO `student` VALUES(270, '', '');
INSERT INTO `student` VALUES(271, '', '');
INSERT INTO `student` VALUES(272, '', '');
INSERT INTO `student` VALUES(273, '', '');
INSERT INTO `student` VALUES(274, '', '');
INSERT INTO `student` VALUES(275, '', '');
INSERT INTO `student` VALUES(276, '', '');
INSERT INTO `student` VALUES(277, '', '');
INSERT INTO `student` VALUES(278, '', '');
INSERT INTO `student` VALUES(279, '', '');
INSERT INTO `student` VALUES(280, '', '');
INSERT INTO `student` VALUES(281, '', '');
INSERT INTO `student` VALUES(282, '', '');
INSERT INTO `student` VALUES(283, '', '');
INSERT INTO `student` VALUES(284, '', '');
INSERT INTO `student` VALUES(285, '', '');
INSERT INTO `student` VALUES(286, '', '');
INSERT INTO `student` VALUES(287, '', '');
INSERT INTO `student` VALUES(288, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` VALUES(1, 'rizwan', 'rkjamvi@gmail.com', 'monalisa');
INSERT INTO `teacher` VALUES(2, 'Super Admin', 'admin', 'aawerk123');
INSERT INTO `teacher` VALUES(7, 'Elliot L', 'Ellman34@gmail.com', 'val19ley');
INSERT INTO `teacher` VALUES(6, 'Daniel Kirk', 'kirkdanielp@gmail.com', 'fieldeplanur');
INSERT INTO `teacher` VALUES(8, 'Davis Bauer', 'bauerd@email.arizona.edu', 'nolan123');
INSERT INTO `teacher` VALUES(9, 'Taylor Salberg', 'taylorsalberg@email.arizona.edu', 'GoingCollege2');
INSERT INTO `teacher` VALUES(10, 'Davis Bauer', 'official2shoes@yahoo.com', 'nolan123');
INSERT INTO `teacher` VALUES(11, 'Davis Bauer', 'bauerd@email.arizona.edu', 'nolan123');
INSERT INTO `teacher` VALUES(12, 'Kate Kirk', 'kathleenelizabethkirk@gmail.com', 'Candide!');
INSERT INTO `teacher` VALUES(13, 'Davis Bauer', 'bauerd@email.arizona.edu', 'nolan123');
INSERT INTO `teacher` VALUES(14, 'Nick', 'nseiersen@hotmail.com', 'Timber!!');
INSERT INTO `teacher` VALUES(15, 'Amit', 'asen@email.arizona.edu', '643309876a');
INSERT INTO `teacher` VALUES(16, '', '', '');
INSERT INTO `teacher` VALUES(17, ' ', 'Administrator Email', 'Administrator Password');
INSERT INTO `teacher` VALUES(18, 'a', 'sd', 'sd');
