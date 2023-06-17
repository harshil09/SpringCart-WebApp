-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shopping
CREATE DATABASE IF NOT EXISTS `shopping` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_bin */;
USE `shopping`;

-- Dumping structure for table shopping.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `lastUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `manufacturer` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `name` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `price` double NOT NULL,
  `productType` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `qtyInStock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- Data exporting was unselected.

-- Dumping structure for table shopping.usr_order
CREATE TABLE IF NOT EXISTS `usr_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `lastUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `manufacturer` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `orderId` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `price` double NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `productType` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `userId` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  `imgPath` varchar(255) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usr_order_product` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
