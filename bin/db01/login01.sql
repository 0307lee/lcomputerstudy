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
INSERT INTO `login01` (`L_NO`, `L_ID`, `L_PW`, `L_LV`, `L_NAME`, `L_LOGINCOUNT`) VALUES
	(00000000001, 'admin1', '1234', 1, 'chale', 0),
	(00000000002, 'admin2', '1234', 3, 'bebe', 0),
	(00000000003, 'admin3', '1234', 2, 'poii', 0),
	(00000000004, 'admin4', '1234', 1, 'jake', 0);
/*!40000 ALTER TABLE `login01` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
