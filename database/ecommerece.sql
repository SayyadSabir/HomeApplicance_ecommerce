-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ecommerce_cart
CREATE DATABASE IF NOT EXISTS `ecommerce_cart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `ecommerce_cart`;

-- Dumping structure for table ecommerce_cart.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `o_quantity` int(11) NOT NULL,
  `o_date` varchar(450) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ecommerce_cart.orders: ~4 rows (approximately)
INSERT INTO `orders` (`o_id`, `p_id`, `u_id`, `o_quantity`, `o_date`) VALUES
	(25, 3, 1, 3, '2021-05-15'),
	(26, 2, 1, 1, '2021-05-15'),
	(28, 3, 1, 1, '2023-02-23'),
	(30, 3, 1, 1, '2023-02-23');

-- Dumping structure for table ecommerce_cart.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `category` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ecommerce_cart.products: ~6 rows (approximately)
INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
	(1, 'New Arrival Femal Shoes', 'Female Shoes', 120, 'female-shoes.jpg'),
	(2, 'Ladies Pure PU Shoulder Bag', 'Ladis Bag', 69.99, 'ladis-bag.jpg'),
	(3, 'Stylish Men Office Suits', 'Men Clothes', 169, 'men-suits.jpg'),
	(4, 'Jaeger-LeCoultre Men Watch', 'Men Watch', 2500.99, 'men-watch.jpg'),
	(5, 'FreeMax e-cigarettes VB-456', 'E-Cigarattes', 310, 'smoking-e-cigarette.jpg'),
	(6, 'GeekVapee e-cigarattes MM-632', 'E-Cigarattes', 555.5, 'smoking-e-cigarette-2.jpg');

-- Dumping structure for table ecommerce_cart.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `phoneno` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ecommerce_cart.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `phoneno`, `email`, `password`) VALUES
	(1, 'Adnan', '', 'admin@ibmr.com', '12345'),
	(5, 'Sabir', '12345', 'Sabir@g.com', '1234'),
	(6, 'Sohail', '1234', 'Sohail@pickupbizz.com', '12345');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
