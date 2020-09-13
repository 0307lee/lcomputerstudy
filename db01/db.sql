-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- db01 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `db01` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db01`;

-- 테이블 db01.board01 구조 내보내기
CREATE TABLE IF NOT EXISTS `board01` (
  `B_NUM` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `B_TITLE` varchar(255) DEFAULT NULL,
  `B_NAME` varchar(255) DEFAULT NULL,
  `B_TIME` int(10) unsigned zerofill DEFAULT NULL,
  `L_NO` int(11) unsigned DEFAULT NULL,
  `B_CONTENT` varchar(255) DEFAULT NULL,
  `B_LOOK` int(11) DEFAULT NULL,
  PRIMARY KEY (`B_NUM`) USING BTREE,
  KEY `L_NO` (`L_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Board';

-- 테이블 데이터 db01.board01:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board01` DISABLE KEYS */;
REPLACE INTO `board01` (`B_NUM`, `B_TITLE`, `B_NAME`, `B_TIME`, `L_NO`, `B_CONTENT`, `B_LOOK`) VALUES
	(0000000001, 'aaTITLE', 'ANAME_SQL', 0000000001, 1, 'sdfasdgsh', NULL),
	(0000000002, 'bbTITLE', 'BNAME_SQL', 0510260111, 1, 'nothing', 0),
	(0000000003, 'ccTITLE', 'CNAME_SQL', 0051026114, 2, 'asdisd', 0),
	(0000000004, 'ddTITLE', 'DNAME_SQL', 0002132132, 0, '21SVASVC좀핫핫', 1);
/*!40000 ALTER TABLE `board01` ENABLE KEYS */;

-- 테이블 db01.lc_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_auth` (
  `u_id` varchar(50) DEFAULT NULL,
  `u_auth` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.lc_auth:~18 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_auth` DISABLE KEYS */;
REPLACE INTO `lc_auth` (`u_id`, `u_auth`) VALUES
	('sgsg', 'ROLE_USER'),
	('sdgh', 'ROLE_USER'),
	('sbns', 'ROLE_USER'),
	('sbsdb', 'ROLE_USER'),
	('xcbxc', 'ROLE_USER'),
	('sdhs', 'ROLE_USER'),
	('ag', 'ROLE_USER'),
	('sghsd', 'ROLE_USER'),
	('asdf', 'ROLE_USER'),
	('dfga', 'ROLE_USER'),
	('sfb', 'ROLE_USER'),
	('sdgf', 'ROLE_USER'),
	('aa', 'ROLE_USER'),
	('aaa', 'ROLE_USER'),
	('aaaa', 'ROLE_USER'),
	('lee', 'ROLE_USER'),
	('aaa1', 'ROLE_USER'),
	('a', 'ROLE_USER');
/*!40000 ALTER TABLE `lc_auth` ENABLE KEYS */;

-- 테이블 db01.lc_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_board` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(255) DEFAULT NULL,
  `b_content` text DEFAULT NULL,
  `b_writer` varchar(255) DEFAULT NULL,
  `b_datetime` datetime DEFAULT current_timestamp(),
  `u_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `user_id` (`u_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`u_id`) REFERENCES `lc_user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.lc_board:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_board` DISABLE KEYS */;
REPLACE INTO `lc_board` (`b_id`, `b_title`, `b_content`, `b_writer`, `b_datetime`, `u_id`) VALUES
	(1, 'wdefs', 'content', 'lee', '2020-08-26 19:11:37', 'a'),
	(2, 'sdf', 'csdfs', 'sfg', '2020-08-26 19:11:56', 'aaa'),
	(3, 'x', 'sdfsf', 'wee', '2020-09-09 19:56:26', 'aaa'),
	(4, '진또배기', '한뚝배기', 'asd', '2020-09-09 21:48:20', 'aaa'),
	(14, 'wagw', 'sdf', '234', '2020-09-10 19:26:28', 'aaa'),
	(15, '235215235', 'sg', 'sfg', '2020-09-11 21:54:49', NULL);
/*!40000 ALTER TABLE `lc_board` ENABLE KEYS */;

-- 테이블 db01.lc_board_delete_temp 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_board_delete_temp` (
  `b_id` int(11) NOT NULL DEFAULT 0,
  `b_title` varchar(255) DEFAULT NULL,
  `b_content` text DEFAULT NULL,
  `b_writer` varchar(255) DEFAULT NULL,
  `b_datetime` datetime DEFAULT current_timestamp(),
  `u_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.lc_board_delete_temp:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_board_delete_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_board_delete_temp` ENABLE KEYS */;

-- 테이블 db01.lc_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_user` (
  `u_id` varchar(50) NOT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_datetime` datetime DEFAULT current_timestamp(),
  `u_isAccountNonExpired` tinyint(4) DEFAULT NULL,
  `u_isAccountNonLocked` tinyint(4) DEFAULT NULL,
  `u_isCredentialNonExpired` tinyint(4) DEFAULT NULL,
  `u_isEnabled` tinyint(4) DEFAULT NULL,
  `u_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.lc_user:~19 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_user` DISABLE KEYS */;
REPLACE INTO `lc_user` (`u_id`, `u_password`, `u_name`, `u_datetime`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialNonExpired`, `u_isEnabled`, `u_level`) VALUES
	('a', '$2a$10$wpZt/mvoudYbcLrMvBBNTeSCTjVUjqTE/Ks/wsguWMq7iHkT/2pS6', '123', '2020-09-11 21:49:47', 1, 1, 1, 1, NULL),
	('aa', '$2a$10$29jJqDQJLRgoIusSYQZj9.jB82Jlbnd95skdT/f1JLaidlcxLYmfG', 'aa', '2020-08-27 20:43:13', 1, 1, 1, 1, 1),
	('aaa', '$2a$10$ZSE0ra.nli3CWYMXp2mxEuPo0IYDoV2lSXAR99M9/1t6dWEmt2cZy', '123', '2020-08-27 21:47:26', 1, 1, 1, 1, 3),
	('aaa1', '$2a$10$J2yBs4RgdSoFG2C8gjEoneYZElG0Ys.ShtdWUheRRFo7YFgKCjkz6', '123a', '2020-09-08 21:09:43', 1, 1, 1, 1, 1),
	('aaaa', '$2a$10$6LGZWfCpwU87zFBSwDv/N.frvFCsZ2F47xvlCDaIh0xwj40O6wR9q', '1234', '2020-08-27 22:03:51', 1, 1, 1, 1, 1),
	('ag', '$2a$10$KQ34MvKc6wRezUn0.8.CluXjGNzUltRsMGyGpji5k/5cTOxVXgKkS', 'xc', '2020-08-27 19:34:13', 1, 1, 1, 1, 1),
	('asdf', '$2a$10$GG7L8hXAkBCLrz6HeZqS0.x0rKwZhSoq8RAz38bnaz43MTl/lejWG', 'asdf', '2020-08-27 19:51:02', 1, 1, 1, 1, 1),
	('dfga', '$2a$10$7b6g4FH2v20BPI.NwEnNTeHubaorDXA94DYoc5OjXhzqQQ8OKdZXa', 'asasdfsdf', '2020-08-27 20:09:13', 1, 1, 1, 1, 1),
	('lee', '$2a$10$rRrKgzBMblB9gqlwIxPDJ.gzGZlpJIGUz/owQmicN3/rzwwqikxrm', '이', '2020-09-07 20:31:59', 1, 1, 1, 1, 1),
	('sbns', '$2a$10$8CPDNATr4gpmkEIVWnVdeOasu7PEL4YRkTepTIcLcM9gtLzKH8tnW', 'dss', '2020-08-27 19:32:33', 1, 1, 1, 1, 1),
	('sbsdb', '$2a$10$raCGDaRA/ua.6B/bOWqbSOsbZQdvLkOraVWpcMxgw0dSuHsa4P6Ay', 'xcbc', '2020-08-27 19:32:47', 1, 1, 1, 1, 1),
	('sd', '$2a$10$e2vBHoZs3PqXCpIRM5tkFufKqrv/Iq4I.4yLBoYJW9vxAtU.vP1tu', 'sdf', '2020-08-27 18:37:04', 1, 1, 1, 1, 1),
	('sdgf', '$2a$10$Y1Gf2q3Szkif6wFCDHRUyOB2dRA/gI8YBlBpu5/BD62ZyJTi8gY4C', 'xcvb', '2020-08-27 20:19:27', 1, 1, 1, 1, 1),
	('sdgh', '$2a$10$idItgEC3okZch6xs3OZXkO.x7qZUPJAH6B54LwXq5idDdm8Gk0gCy', 'wer', '2020-08-27 19:31:38', 1, 1, 1, 1, 1),
	('sdhs', '$2a$10$z5fNToBIi/ztoQXWiq9KJuaJG07HHGKrwgb8bR4crDn6gGOEfeuF6', 'sdg', '2020-08-27 19:33:41', 1, 1, 1, 1, 1),
	('sfb', '$2a$10$wQjfjrYnGixix/j/WSvakOM0XB0j.8yGUi7IVVRSb2O3DaUqGDldO', 'cvb', '2020-08-27 20:11:45', 1, 1, 1, 1, 1),
	('sghsd', '$2a$10$Ax9Z6x6y4UC.UevITHnovu5pc8uxKK6IdqI9x9P6QIhho9bR4xkPy', 'xcv', '2020-08-27 19:34:54', 1, 1, 1, 1, 1),
	('sgsg', '$2a$10$v7jLBZ1QVijLiR75UnCtWOs.8gvvWYtH1u426nrUDcfqZqwbLkZNa', 'shw', '2020-08-27 19:29:29', 1, 1, 1, 1, 1),
	('xcbxc', '$2a$10$7QQ849udemFX92NIlGP6medMRlvaGUFdONyQgu3ucG3jK350Y950G', 'sdfs', '2020-08-27 19:33:25', 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `lc_user` ENABLE KEYS */;

-- 테이블 db01.login01 구조 내보내기
CREATE TABLE IF NOT EXISTS `login01` (
  `L_NO` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `L_ID` varchar(255) DEFAULT NULL,
  `L_PW` varchar(255) DEFAULT NULL,
  `L_LV` int(11) DEFAULT NULL,
  `L_NAME` varchar(255) DEFAULT NULL,
  `L_LOGINCOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`L_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='로그인 세션\r\n';

-- 테이블 데이터 db01.login01:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `login01` DISABLE KEYS */;
REPLACE INTO `login01` (`L_NO`, `L_ID`, `L_PW`, `L_LV`, `L_NAME`, `L_LOGINCOUNT`) VALUES
	(00000000001, 'admin1', '1234', 1, 'chale', 0),
	(00000000002, 'admin2', '1234', 3, 'bebe', 0),
	(00000000003, 'admin3', '1234', 2, 'poii', 0),
	(00000000004, 'admin4', '1234', 1, 'jake', 0);
/*!40000 ALTER TABLE `login01` ENABLE KEYS */;

-- 테이블 db01.login02 구조 내보내기
CREATE TABLE IF NOT EXISTS `login02` (
  `L_NO` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `L_ID` varchar(255) DEFAULT NULL,
  `L_PW` varchar(255) DEFAULT NULL,
  `L_LV` int(11) DEFAULT NULL,
  `L_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`L_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='로그인 세션\r\n';

-- 테이블 데이터 db01.login02:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `login02` DISABLE KEYS */;
REPLACE INTO `login02` (`L_NO`, `L_ID`, `L_PW`, `L_LV`, `L_NAME`) VALUES
	(00000000001, 'admin1', '1234', 1, 'chale'),
	(00000000002, 'admin2', '1234', 3, 'bebe'),
	(00000000003, 'admin3', '1234', 2, 'paii'),
	(00000000004, 'admin4', '1234', 1, 'jake');
/*!40000 ALTER TABLE `login02` ENABLE KEYS */;

-- 테이블 db01.old01 구조 내보내기
CREATE TABLE IF NOT EXISTS `old01` (
  `o_key` int(11) DEFAULT NULL,
  `o_old` int(11) DEFAULT NULL,
  `o_oldband` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  KEY `FK_old01_board01` (`o_oldband`),
  CONSTRAINT `FK_old01_board01` FOREIGN KEY (`o_oldband`) REFERENCES `board01` (`B_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OLD\r\n';

-- 테이블 데이터 db01.old01:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `old01` DISABLE KEYS */;
/*!40000 ALTER TABLE `old01` ENABLE KEYS */;

-- 테이블 db01.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 db01.spring_session:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
REPLACE INTO `spring_session` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
	('de3f8c98-82f4-4149-a622-594e85a37dc1', 'bc47d665-9ca6-4492-8725-ac6549c49fa0', 1599987079635, 1599989264758, 7200, 1599996464758, 'aaa');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;

-- 테이블 db01.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 db01.spring_session_attributes:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
REPLACE INTO `spring_session_attributes` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
	('de3f8c98-82f4-4149-a622-594e85a37dc1', 'SPRING_SECURITY_CONTEXT', _binary 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C00000000000002120200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000002120200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000002120200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B7870740009524F4C455F555345527871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000002120200024C000D72656D6F74654164647265737371007E000F4C000973657373696F6E496471007E000F787074000F303A303A303A303A303A303A303A3174002466363535356430322D663236302D343036612D626264622D6139666134366531613931377073720028636F6D2E6C636F6D707574657273747564792E6578616D706C652E646F6D61696E2E55736572564F00000000000000010200095A001369734163636F756E744E6F6E457870697265645A001269734163636F756E744E6F6E4C6F636B65645A0016697343726564656E7469616C4E6F6E457870697265645A00096973456E61626C65644C000B617574686F72697469657371007E00064C000870617373776F726471007E000F4C0009754461746554696D6571007E000F4C0005754E616D6571007E000F4C0008757365726E616D6571007E000F7870010101017371007E000C0000000177040000000171007E00107874003C243261243130245A53453072612E6E6C69334357594D5870326D784575506F304959446F56326C5358415239394D392F3174366457456D7432635A7970740003313233740003616161);
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;

-- 테이블 db01.student 구조 내보내기
CREATE TABLE IF NOT EXISTS `student` (
  `id` tinyint(4) NOT NULL,
  `name` char(4) NOT NULL,
  `sex` enum('남자','여자') NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.student:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- 테이블 db01.user01 구조 내보내기
CREATE TABLE IF NOT EXISTS `user01` (
  `u_userkey` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) DEFAULT NULL,
  `u_gender` varchar(255) DEFAULT 'NULL',
  `u_onoff` tinyint(4) DEFAULT NULL,
  `u_old` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_userkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='level1\r\n';

-- 테이블 데이터 db01.user01:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user01` DISABLE KEYS */;
REPLACE INTO `user01` (`u_userkey`, `u_name`, `u_gender`, `u_onoff`, `u_old`) VALUES
	(1, '저다', 'man', 1, 13),
	(2, '민지나', 'lady', 0, 41),
	(3, '투아', 'man', 1, 15),
	(4, '후나', 'lady', 1, 35);
/*!40000 ALTER TABLE `user01` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
