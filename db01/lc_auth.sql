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

-- 테이블 db01.lc_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_auth` (
  `u_id` varchar(50) DEFAULT NULL,
  `u_auth` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 db01.lc_auth:~15 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_auth` DISABLE KEYS */;
INSERT INTO `lc_auth` (`u_id`, `u_auth`) VALUES
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
	('aaaa', 'ROLE_USER');
/*!40000 ALTER TABLE `lc_auth` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
