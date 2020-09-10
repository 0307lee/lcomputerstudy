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
INSERT INTO `user01` (`u_userkey`, `u_name`, `u_gender`, `u_onoff`, `u_old`) VALUES
	(1, '저다', 'man', 1, 13),
	(2, '민지나', 'lady', 0, 41),
	(3, '투아', 'man', 1, 15),
	(4, '후나', 'lady', 1, 35);
/*!40000 ALTER TABLE `user01` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
