-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Host: db744827846.db.1and1.com
-- Generation Time: Oct 03, 2018 at 11:48 PM
-- Server version: 5.5.60-0+deb7u1-log
-- PHP Version: 5.4.45-0+deb7u14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db744827846`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id_sessions` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `session_id` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(42) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `logged` tinyint(4) NOT NULL DEFAULT '0',
  `date_logged_in` int(11) NOT NULL DEFAULT '0',
  `date_logged_out` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_sessions`),
  KEY `id_user` (`id_user`),
  KEY `id_user_2` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id_sessions`, `id_user`, `session_id`, `ip_address`, `logged`, `date_logged_in`, `date_logged_out`) VALUES
(9, 4, 'nohod8v7dg34uma15r319e4ngqlds6t3', '::1', 0, 1538541046, 0),
(10, 4, 'nohod8v7dg34uma15r319e4ngqlds6t3', '::1', 0, 1538541113, 0),
(11, 4, 'nohod8v7dg34uma15r319e4ngqlds6t3', '::1', 0, 1538541180, 0),
(12, 4, '0ev6ptnq2i5g9aue3aktknh86f0piemm', '::1', 0, 1538541275, 0),
(13, 4, '0ev6ptnq2i5g9aue3aktknh86f0piemm', '::1', 0, 1538541565, 0),
(14, 4, 'hdcm6talej9su2b2cbmvldko8ch89rv2', '::1', 1, 1538541611, 0),
(15, 1, 'hdcm6talej9su2b2cbmvldko8ch89rv2', '::1', 0, 1538541846, 0),
(16, 1, 'hdcm6talej9su2b2cbmvldko8ch89rv2', '::1', 0, 1538541893, 0),
(17, 1, '94157q3od1j4a3570qcnj104an51jp42', '::1', 0, 1538542099, 0),
(18, 1, '5cq9s5iqo3clii19t4rk584bhen12u12', '::1', 0, 1538542707, 0),
(19, 1, '5cq9s5iqo3clii19t4rk584bhen12u12', '::1', 0, 1538542736, 0),
(20, 1, '5cq9s5iqo3clii19t4rk584bhen12u12', '::1', 0, 1538542811, 1538543660),
(21, 1, 'sgn4q4tduf5v7qtc2rch8e0t52s6v22k', '::1', 0, 1538543708, 1538543710),
(22, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538543921, 0),
(23, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538543956, 0),
(24, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538543975, 0),
(25, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538544034, 0),
(26, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538544051, 1538544246),
(27, 1, 'p85orpj712rira6k4toi7acceltkib9f', '::1', 0, 1538544277, 1538544299),
(28, 1, 'd69c9a73659aafe43cac1060c00fc616415584e3', '76.14.106.9', 0, 1538546111, 1538546136),
(29, 1, 'a5d6f6535f1415cbed4aa613fa3ef7cdaa44e7e9', '76.14.106.9', 0, 1538548080, 0),
(30, 1, 'a5d6f6535f1415cbed4aa613fa3ef7cdaa44e7e9', '76.14.106.9', 0, 1538548233, 1538548273),
(31, 1, '850005e26318a7c6f11f5c8f9ec2deb221cfaf07', '76.14.106.9', 0, 1538548348, 1538548380),
(32, 1, '316cf42b8061ea4e652837f8aec5dbec397ea39d', '76.14.106.9', 0, 1538548391, 1538548418),
(33, 1, 'e16a969179f8c4c35e3a4df3a713d8eb08813d72', '76.14.106.9', 0, 1538611476, 1538611548);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id_education` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(128) COLLATE utf8_bin NOT NULL,
  `date_from` int(11) NOT NULL,
  `date_to` int(11) NOT NULL,
  `fee` decimal(10,0) DEFAULT '0',
  `status` varchar(32) COLLATE utf8_bin NOT NULL,
  `details` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_education`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id_education`, `course`, `date_from`, `date_to`, `fee`, `status`, `details`) VALUES
(1, 'Amateur Radio Extra Class', 1533816000, 1539259200, '8', 'in session', 'Dates: 08/09/2018 - 10/11/2018\r\n\r\nLocation: The Salvation Army, 950 Clayton Road (at West St.), Concord \r\n\r\nAdditional details on MDARC site: http://www.mdarc.org/activities/education/Classes '),
(2, 'Amateur Radio License Class', 1538827200, 1538827200, '30', 'OPEN', 'http://files.arrleb.org/Ham-Class-Oct2018-flyer.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

DROP TABLE IF EXISTS `new_user`;
CREATE TABLE IF NOT EXISTS `new_user` (
  `id_new_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_team` int(11) NOT NULL,
  `id_league` int(11) NOT NULL,
  `id_division` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `fname` varchar(64) COLLATE utf8_bin NOT NULL,
  `lname` varchar(64) COLLATE utf8_bin NOT NULL,
  `street` varchar(64) COLLATE utf8_bin NOT NULL,
  `city` varchar(64) COLLATE utf8_bin NOT NULL,
  `state_cd` varchar(6) COLLATE utf8_bin NOT NULL,
  `zip_cd` varchar(10) COLLATE utf8_bin NOT NULL,
  `phone` varchar(24) COLLATE utf8_bin NOT NULL,
  `email` varchar(128) COLLATE utf8_bin NOT NULL,
  `callsign` varchar(12) COLLATE utf8_bin DEFAULT 'none',
  `category` tinyint(4) NOT NULL,
  `team_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `league_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `division_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_new_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`id_new_user`, `id_team`, `id_league`, `id_division`, `role`, `fname`, `lname`, `street`, `city`, `state_cd`, `zip_cd`, `phone`, `email`, `callsign`, `category`, `team_name`, `league_name`, `division_name`) VALUES
(1, 0, 0, 0, 0, 'John', 'Doe', '123 Street St.', 'San Francisco', 'CA', '94108', '8889997777', 'doe@spearheads.com', '', 0, NULL, NULL, NULL),
(2, 0, 0, 0, 0, 'John', 'Doe', '123 Street St.', 'San Francisco', 'CA', '94108', '8889997777', 'doe@spearheads.com', '', 0, NULL, NULL, NULL),
(3, 0, 0, 0, 0, 'John', 'Doe', '123 Street St.', 'San Francisco', 'CA', '94108', '8889997777', 'doe@spearheads.com', '', 0, NULL, NULL, NULL),
(4, 0, 0, 0, 0, 'John', 'Doe', '123 Street St.', 'San Francisco', 'CA', '94108', '8889997777', 'doe@spearhea.com', '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` tinyint(4) NOT NULL,
  `role` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `pass` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `callsign` varchar(12) COLLATE latin1_general_ci DEFAULT 'none',
  `phone` varchar(32) COLLATE latin1_general_ci DEFAULT NULL,
  `street` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `state_cd` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `zip_cd` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `authorized` tinyint(4) NOT NULL DEFAULT '0',
  `verifystr` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `email_key` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`),
  KEY `id_user_types` (`type_code`),
  KEY `id_user_types_2` (`type_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `type_code`, `role`, `pass`, `username`, `fname`, `lname`, `email`, `callsign`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `authorized`, `verifystr`, `email_key`, `active`) VALUES
(1, 99, 'MST', '$2y$12$EHMhD8HBUrBAIZ3WGzyI8.si77tuAYcBzhbdytDR8IT4UB2pXf6Fi', 'hacq', 'Craig', 'Topper', 'jkulisek.us@gmail.com', 'KM6NFC', '8889997777', '123 Street St.', 'Chicago', 'AL', '99447', 1, 'http://localhost/mdarc/index.php/public_ctl/confirm_reg/573f016b853c92b03f51adf9', '573f016b853c92b03f51adf9', 1),
(4, 0, NULL, '$2y$12$hme9BxaPSmj0SnyEpChDRuzknuYBHM/w7PA1k6sgFkVh0xUbYgEHq', 'hector', 'John', 'Doe', 'doe@spearheads.com', '', '8889997777', '123 Street St.', 'San Francisco', 'CA', '94108', 0, 'http://localhost/arrleb/index.php/public_ctl/confirm_reg/da9e75bd133304e176165a61', 'da9e75bd133304e176165a61', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_1_tbl`
--

DROP TABLE IF EXISTS `user_1_tbl`;
CREATE TABLE IF NOT EXISTS `user_1_tbl` (
  `id_user_1_tbl` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_user_1_tbl`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_1_tbl`
--

INSERT INTO `user_1_tbl` (`id_user_1_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `state_cd`, `zip_cd`) VALUES
(1, 1, 'Craig', 'Topper', 'hacq', 'jkulisek.us@gmail.com', '8889997777', '123 Street St.', 'Chicago', 'AL', '99447');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `id_user_types` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` tinyint(4) NOT NULL,
  `description` varchar(32) COLLATE utf8_bin NOT NULL,
  `code_str` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_user_types`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id_user_types`, `type_code`, `description`, `code_str`) VALUES
(1, 99, 'master', 'MST'),
(2, 1, 'education', 'EDT'),
(3, 2, 'events', 'EVS'),
(4, 0, 'not set', 'NON');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
