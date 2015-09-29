-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2015 at 09:14 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trydevsi_myschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE IF NOT EXISTS `contributors` (
  `pid`       BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`      VARCHAR(100)        NOT NULL,
  `fb_url`    VARCHAR(5000)       NOT NULL,
  `tweet_url` VARCHAR(5000)       NOT NULL,
  `image`     VARCHAR(5000)       NOT NULL,
  PRIMARY KEY (`pid`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 1;

-- --------------------------------------------------------

--
-- Table structure for table `gcm_tokens`
--

CREATE TABLE IF NOT EXISTS `gcm_tokens` (
  `sno`   BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` VARCHAR(300)        NOT NULL,
  `date`  TIMESTAMP           NULL     DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `token` (`token`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 53;

--
-- Dumping data for table `gcm_tokens`
--

INSERT INTO `gcm_tokens` (`sno`, `token`, `date`) VALUES
  (42, 'tokencheck', '2015-08-31 09:00:09'),
  (43, 'd0pzeQIfP7I:APA91bEjUxJC82a1JHPyruHYZzc5C-RcoTRKFTAmxeebPkWu91l5VEnu4TXfHTtdgDHFfSzipO5SKgrHN_OKc-NBHi1QyophZnORvm4-meMygC1tppBoEg16mdfitBQLbkglsL_iT97d', '2015-08-31 09:03:23'),
  (44, 'dtI2W0oAFco:APA91bGFUG0DwYkV_mMe9UneHzah-lYLKMRQSLMNHi5l2ulORhtlDWcE25zl_Ijg4OmSOcOn8qWsQwt5yzBTh_t10QXKSa8MK-CgWy3TbScIUDtPXoTFmPRMGgyCNs_mLQqM1Pbm-vVq', '2015-08-31 09:11:25'),
  (45, 'es7Rbtf5hTM:APA91bFcexwFedc5xcaAMtagSCEpa_0MI3SfuYy1Gwk5GYl0m3OXNU_tc10nLZ7oJn6g2akzHCdSKawHTDXc7-JDkGf_y0duyVWxlqNA_oJHYJZ8eiQLRSpwspv8q1t35NRopaB8C_Is', '2015-08-31 09:13:08'),
  (46, 'eESf5jt9PQY:APA91bE8zW0_w1jnM77uOwv4LrwD3sMqPdlQm5nTokfWcMyxC2B5BWUAhy_f87O1ip-seRPqoIOvj6Hcv10vR-mFEaGW_zi6eKquf0smiVmZhT1dw5VbXAMhxR3aw4vF8J7mMF_687zM', '2015-08-31 09:14:15'),
  (47, 'f2rdopbPEoo:APA91bEKDVkzrVnHYZVFJ3O-sUAaZ2XxATONqbxK5cIIpd0GqePTJJVmmYJnCG8TuY-3da_jVCkdw7ZEbnh1Xi17rTmEED1x86huKUtEXStmQ4kl_Edph7YQSd1PgvDfuNPKijWrvJ7n', '2015-08-31 09:19:03'),
  (48, 'dkfNVyxkvRA:APA91bHssqJCk-3fJK98hrasez5cVYCk_6NMcuROSq4uez7xh9ln-lrRL_C6CbSC9wjbxM-zREP5oFX41XYw4D9hcbYyjFxIa2pbL9wJFyIoy1c1-a1WoHYVKOI4RHWw0jmxk_0OY2Ob', '2015-08-31 12:18:08'),
  (49, 'fFPjYTQtji4:APA91bEQNAfwj7YEcAtrPWl30ja5s_lNHSvoSBZZiGinJoAqV6Nm06sg6CBhiKLAvyNGX51N0p1sPoJ2H22Ntaj0meInD_3BLmvJ-3ndBLIpWNRfcZG7czh9kpE6g_XEUVACXCo-rznU', '2015-08-31 12:51:44'),
  (50, 'd1j0y0PmmOs:APA91bHtpaxi245JUmra8n8qi3rx6GGmirRU30iwdqJtr7IKcc9k1DZmoxrKRFto0QCB4sM9Scp2YvcEXzl5BVPa9R20dxrNCBIxripFfqa9X9fHKmwVtOqSjrn43zjr71d7Me8nm5FJ', '2015-08-31 16:13:21'),
  (51, 'f6TSRYveB7A:APA91bEIilwl1Tm-1gP50Lsvwt-YBq5gwPnkkFGhtREuoS_82RFL6lqrxbzC-ePHRbaYMcNRqP26DHGPgk1j3tFtvZt85l_hBfoJwOjzIPXM4l8trJTkLjeGOlgokUDWhAmZA86I2hj7', '2015-09-16 04:22:30'),
  (52, '', '2015-09-29 14:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `sno`   INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50)      NOT NULL,
  `image` TEXT             NOT NULL,
  `time`  TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 19;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`sno`, `title`, `image`, `time`) VALUES
  (1, '', 'http://myschool.askyourfriend.in/image/5a6b391938500a5d5a21f028d6794f12.jpg', '2015-08-27 14:01:21'),
  (2, '', 'http://myschool.askyourfriend.in/image/a2d121f841a36d23710f55b765157c26.jpg', '2015-08-27 14:02:29'),
  (3, '', 'http://myschool.askyourfriend.in/image/34942e21e4a623fc856850822d5c29d1.jpg', '2015-08-27 14:02:49'),
  (4, '', 'http://myschool.askyourfriend.in/image/b38f6fb6928ba75827a629441564c07d.jpg', '2015-08-27 14:03:17'),
  (5, '', 'http://myschool.askyourfriend.in/image/07c33aba980b113d8c5910bfdf11908b.jpg', '2015-08-27 14:03:32'),
  (6, '', 'http://myschool.askyourfriend.in/image/720ed3d82fb4e893ffd3e61cbd309123.jpg', '2015-08-27 14:03:59'),
  (7, '', 'http://myschool.askyourfriend.in/image/3b741d60e11e898cc67b42b93c797533.jpg', '2015-08-27 14:05:01'),
  (8, '', 'http://myschool.askyourfriend.in/image/053ab7a7c4ce925bc7123d816649cd56.jpg', '2015-08-27 14:05:19'),
  (9, '', 'http://myschool.askyourfriend.in/image/2e76d1aa8c8edf0b91604919d0f5409a.jpg', '2015-08-27 14:05:27'),
  (10, '', 'http://myschool.askyourfriend.in/image/2a04b588ac6557c4a18591c0cec156da.jpg', '2015-08-27 14:05:37'),
  (11, '', 'http://myschool.askyourfriend.in/image/9daa05b0ff133fb4749a6ac52ae214a3.jpg', '2015-08-27 14:05:52'),
  (12, '', 'http://myschool.askyourfriend.in/image/a940e4dbc4de3264254d3e76c2323456.jpg', '2015-08-27 14:06:09'),
  (13, '', 'http://myschool.askyourfriend.in/image/b77c6275b34e96509ddb7b61c228001f.jpg', '2015-08-27 14:14:10'),
  (14, 'chek', 'http://myschool.askyourfriend.in/image/99192d3739b376f7a8289c5054dec13c.jpg', '2015-09-01 00:58:15'),
  (15, 'check', 'http://myschool.askyourfriend.in/image/89a15f6fd0f2eb8fea6866a24dbfcecb.jpg', '2015-09-01 01:01:37'),
  (16, '', 'http://myschool.askyourfriend.in/image/e8a3838b20d650b3af48ff95243e9b3c.jpg', '2015-09-01 01:45:29'),
  (17, '', 'http://myschool.askyourfriend.in/image/0553c29c65a290899980b457ad6b1fb8.jpg', '2015-09-01 01:49:44'),
  (18, '', 'http://myschool.askyourfriend.in/image/717e64097d77899fa822eff2bc15aa5d.jpg', '2015-09-01 01:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `pid`         BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title`       TEXT                NOT NULL,
  `description` TEXT                NOT NULL,
  `name`        TEXT                NOT NULL,
  `image`       TEXT,
  `url`         VARCHAR(5000)       NOT NULL,
  `oftype`      VARCHAR(20)         NOT NULL,
  `time`        TIMESTAMP           NULL     DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 42;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `title`, `description`, `name`, `image`, `url`, `oftype`, `time`) VALUES
  (5, 'My EVS project', 'It was fun trying this out....', 'Sundar',
   'http://myschool.askyourfriend.in/image/11949c9454d2cc741f2c0dd97defdf66.jpg', '', '', '2015-09-01 02:44:43'),
  (6, 'My EVS project', 'It was fun trying this out....', 'Sundar', 'http://myschool.askyourfriend.in/image/95d160dfda1643868dba863f8eaa19c6.jpg', '', '', '2015-09-01 03:13:24'),
  (7, 'My EVS project', 'It was fun trying this out....', 'Sundar', 'http://myschool.askyourfriend.in/image/490f96a82cbe635c3843754f57e10ee9.jpg', '', '', '2015-09-01 03:19:56'),
  (20, 'CSE', 'ASDFG', 'Sundar', '', '', '', '2015-09-16 05:00:17'),
  (19, 'CSE', 'ASDFG', 'Sundar', '', '', '', '2015-09-16 04:49:59'),
  (18, 'just another post', 'aaa', 'sundar', '', '', '', '2015-09-16 04:15:07'),
  (17, 'asdfghj', 'qwertyuio', 'Sanjay', 'http://myschool.askyourfriend.in/pages/image/66b206b8355c17551e53d430c05186df.jpg', '', '', '2015-09-15 03:33:13'),
  (16, 'Check', 'Message', 'Susa', 'http://myschool.askyourfriend.in/pages/image/f8b3d6a34f9a78793b1214cc1d9b7645.jpg', '', '', '2015-09-15 02:26:32'),
  (15, 'New Web page', 'We are here with a new Web page.', 'Sundareswaran C', 'http://myschool.askyourfriend.in/pages/image/cd7f121dc706dfe0efc937599f5df89e.png', '', '', '2015-09-09 03:22:46'),
  (21, 'CSE', 'qwer', 'Sundar', '', '', '', '2015-09-16 05:00:57'),
  (22, 'CSE', 'qwer', 'ha ha...', '', '', '', '2015-09-16 05:01:20'),
  (23, 'hdx', '', 'hjdx', '', '', '', '2015-09-16 13:53:42'),
  (24, 'Good day to you', 'Happy birthday', 'Abhishek', '', '', '', '2015-09-16 14:40:25'),
  (25, 'Sad', 'I am very sad.', 'Sundar', '', '', '', '2015-09-17 04:47:05'),
  (26, 'Dev', 'Hello ', 'Ahmed ', '', '', '', '2015-09-17 20:07:23'),
  (27, 'Check', 'Check', 'Check', '', '', '', '2015-09-18 12:36:37'),
  (28, 'check', 'checking', 'Check', '', '', '', '2015-09-22 13:06:37'),
  (29, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:11:09'),
  (30, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:12:09'),
  (31, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:12:31'),
  (32, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:13:07'),
  (33, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:13:37'),
  (34, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:14:38'),
  (35, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:14:43'),
  (36, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:15:10'),
  (37, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:15:15'),
  (38, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:15:35'),
  (39, 'check', 'checking gun', 'Check', '', '', '', '2015-09-22 13:15:55'),
  (40, 'Hi', 'This is a checking', 'Sundareswaran C', '', '', '', '2015-09-22 15:56:08'),
  (41, 'Mani in room', 'Here is mani...', 'Sundar', '', '', '', '2015-09-28 15:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tokens`
--

CREATE TABLE IF NOT EXISTS `sub_tokens` (
  `sid`   INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` VARCHAR(500)     NOT NULL,
  `uid`   INT(11)          NOT NULL,
  `date`  TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `token` (`token`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 15;

--
-- Dumping data for table `sub_tokens`
--

INSERT INTO `sub_tokens` (`sid`, `token`, `uid`, `date`) VALUES
  (4, 'AmritaSchoolTiruppurKumarananthapuram', 7, '2015-09-26 08:22:23'),
  (5, 'AmritaTiruppurKumarananthapuram', 8, '2015-09-26 08:22:40'),
  (6, 'IJMHSSTiruppurKumarananthapuram', 9, '2015-09-26 08:22:56'),
  (10, 'SundareswaranCTiruppurKumarananthapuram', 0, '2015-09-28 17:54:20'),
  (12, 'Arunkannafremontasd', 0, '2015-09-28 17:58:10'),
  (13, 'SCHOKKALINGAMTiruppurdasd', 0, '2015-09-28 17:59:27'),
  (14, 'ArunkannafremontKumarananthapuram', 0, '2015-09-28 18:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `uid`        INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uname`      TEXT             NOT NULL,
  `mail_id`    VARCHAR(150)     NOT NULL,
  `address_no` TEXT             NOT NULL,
  `area`       TEXT             NOT NULL,
  `city`       TEXT             NOT NULL,
  `pincode`    INT(11)          NOT NULL,
  `password`   TEXT             NOT NULL,
  `date`       TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `mail_id` (`mail_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 11;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `uname`, `mail_id`, `address_no`, `area`, `city`, `pincode`, `password`, `date`)
VALUES
  (7, 'Amrita School', 'sundarmail9@gmail.com', '58/72, Anna Street,', 'Kumarananthapuram', 'Tiruppur', 641602,
   'a8bf48e5d8a66cfe804ddd5239274907', '2015-09-26 08:22:23'),
  (8, 'Amrita', 'sundarkid@gmail.com', '58/72, Anna Street,', 'Kumarananthapuram', 'Tiruppur', 641602,
   'a8bf48e5d8a66cfe804ddd5239274907', '2015-09-26 08:22:40'),
  (9, 'IJMHSS', 'sundareswaran25@gmail.com', '58/72, Anna Street,', 'Kumarananthapuram', 'Tiruppur', 641602,
   'a8bf48e5d8a66cfe804ddd5239274907', '2015-09-26 08:22:56'),
  (10, 'Amrita', '', '58/72, Anna Street,', 'Kumarananthapuram', 'Tiruppur', 641602, 'a8bf48e5d8a66cfe804ddd5239274907',
   '2015-09-28 17:49:13');

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
