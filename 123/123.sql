-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.23 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных marka
CREATE DATABASE IF NOT EXISTS `marka` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `marka`;


-- Дамп структуры для таблица marka.marki
CREATE TABLE IF NOT EXISTS `marki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) DEFAULT NULL,
  `many` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `tematika` varchar(50) DEFAULT NULL,
  `tirazh` int(11) DEFAULT NULL,
  `osobenosti` varchar(200) DEFAULT NULL,
  `name_vlad` varchar(50) DEFAULT NULL,
  `telefon_vlad` varchar(50) DEFAULT NULL,
  `adres_vlad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы marka.marki: ~12 rows (приблизительно)
/*!40000 ALTER TABLE `marki` DISABLE KEYS */;
INSERT INTO `marki` (`id`, `country`, `many`, `year`, `tematika`, `tirazh`, `osobenosti`, `name_vlad`, `telefon_vlad`, `adres_vlad`) VALUES
	(188, 'Китай', 1, 1900, 'Спорт', 1, '1', '1', '1', '1'),
	(189, 'Китай', 2, 1901, 'Спорт', 2, '1', '1', '1', '1'),
	(190, 'Китай', 3, 1902, 'Спорт', 3, '1', '1', '1', '1'),
	(191, 'Китай', 4, 1903, 'Спорт', 4, '1', '1', '1', '1'),
	(192, 'Китай', 5, 1904, 'Спорт', 5, '1', '1', '1', '1'),
	(193, 'Китай', 6, 1905, 'Спорт', 6, '1', '1', '1', '1'),
	(194, 'Китай', 7, 1906, 'Спорт', 7, '1', '1', '1', '1'),
	(195, 'Китай', 8, 1907, 'Спорт', 8, '1', '1', '1', '1'),
	(196, 'Китай', 9, 1908, 'Спорт', 9, '1', '1', '1', '1'),
	(197, 'Китай', 1, 1700, 'Сигареты', 1, '1', '1', '1', '1'),
	(198, '1', 1, 1600, '1', 1, '1', '1', '1', '1'),
	(199, '1', 1, 2016, '1', 1, '1', '1', '1', '1');
/*!40000 ALTER TABLE `marki` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
