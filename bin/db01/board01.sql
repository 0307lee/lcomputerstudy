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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Board';

-- 테이블 데이터 db01.board01:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board01` DISABLE KEYS */;
INSERT INTO `board01` (`B_NUM`, `B_TITLE`, `B_NAME`, `B_TIME`, `L_NO`, `B_CONTENT`, `B_LOOK`) VALUES
	(0000000001, 'aaTITLE', 'ANAME_SQL', 0000000001, 1, 'sdfasdgsh', NULL),
	(0000000002, 'bbTITLE', 'BNAME_SQL', 0510260111, 1, 'nothing', 0),
	(0000000003, 'ccTITLE', 'CNAME_SQL', 0051026114, 2, 'asdisd', 0);
/*!40000 ALTER TABLE `board01` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
