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
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.lc_user:~16 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_user` DISABLE KEYS */;
INSERT INTO `lc_user` (`u_id`, `u_password`, `u_name`, `u_datetime`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialNonExpired`, `u_isEnabled`) VALUES
	('aa', '$2a$10$29jJqDQJLRgoIusSYQZj9.jB82Jlbnd95skdT/f1JLaidlcxLYmfG', 'aa', '2020-08-27 20:43:13', 1, 1, 1, 1),
	('aaa', '$2a$10$ZSE0ra.nli3CWYMXp2mxEuPo0IYDoV2lSXAR99M9/1t6dWEmt2cZy', '123', '2020-08-27 21:47:26', 1, 1, 1, 1),
	('aaaa', '$2a$10$6LGZWfCpwU87zFBSwDv/N.frvFCsZ2F47xvlCDaIh0xwj40O6wR9q', '1234', '2020-08-27 22:03:51', 1, 1, 1, 1),
	('ag', '$2a$10$KQ34MvKc6wRezUn0.8.CluXjGNzUltRsMGyGpji5k/5cTOxVXgKkS', 'xc', '2020-08-27 19:34:13', 1, 1, 1, 1),
	('asdf', '$2a$10$GG7L8hXAkBCLrz6HeZqS0.x0rKwZhSoq8RAz38bnaz43MTl/lejWG', 'asdf', '2020-08-27 19:51:02', 1, 1, 1, 1),
	('dfga', '$2a$10$7b6g4FH2v20BPI.NwEnNTeHubaorDXA94DYoc5OjXhzqQQ8OKdZXa', 'asasdfsdf', '2020-08-27 20:09:13', 1, 1, 1, 1),
	('sbns', '$2a$10$8CPDNATr4gpmkEIVWnVdeOasu7PEL4YRkTepTIcLcM9gtLzKH8tnW', 'dss', '2020-08-27 19:32:33', 1, 1, 1, 1),
	('sbsdb', '$2a$10$raCGDaRA/ua.6B/bOWqbSOsbZQdvLkOraVWpcMxgw0dSuHsa4P6Ay', 'xcbc', '2020-08-27 19:32:47', 1, 1, 1, 1),
	('sd', '$2a$10$e2vBHoZs3PqXCpIRM5tkFufKqrv/Iq4I.4yLBoYJW9vxAtU.vP1tu', 'sdf', '2020-08-27 18:37:04', 1, 1, 1, 1),
	('sdgf', '$2a$10$Y1Gf2q3Szkif6wFCDHRUyOB2dRA/gI8YBlBpu5/BD62ZyJTi8gY4C', 'xcvb', '2020-08-27 20:19:27', 1, 1, 1, 1),
	('sdgh', '$2a$10$idItgEC3okZch6xs3OZXkO.x7qZUPJAH6B54LwXq5idDdm8Gk0gCy', 'wer', '2020-08-27 19:31:38', 1, 1, 1, 1),
	('sdhs', '$2a$10$z5fNToBIi/ztoQXWiq9KJuaJG07HHGKrwgb8bR4crDn6gGOEfeuF6', 'sdg', '2020-08-27 19:33:41', 1, 1, 1, 1),
	('sfb', '$2a$10$wQjfjrYnGixix/j/WSvakOM0XB0j.8yGUi7IVVRSb2O3DaUqGDldO', 'cvb', '2020-08-27 20:11:45', 1, 1, 1, 1),
	('sghsd', '$2a$10$Ax9Z6x6y4UC.UevITHnovu5pc8uxKK6IdqI9x9P6QIhho9bR4xkPy', 'xcv', '2020-08-27 19:34:54', 1, 1, 1, 1),
	('sgsg', '$2a$10$v7jLBZ1QVijLiR75UnCtWOs.8gvvWYtH1u426nrUDcfqZqwbLkZNa', 'shw', '2020-08-27 19:29:29', 1, 1, 1, 1),
	('xcbxc', '$2a$10$7QQ849udemFX92NIlGP6medMRlvaGUFdONyQgu3ucG3jK350Y950G', 'sdfs', '2020-08-27 19:33:25', 1, 1, 1, 1);
/*!40000 ALTER TABLE `lc_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
