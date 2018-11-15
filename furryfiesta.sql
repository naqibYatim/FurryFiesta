-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 05:24 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furryfiesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='hold category of the products (cat, dog, rabbit, hamster)';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'cat'),
(2, 'dog'),
(3, 'rabbit'),
(4, 'hamster');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `city_region` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cc_number` varchar(19) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='maintains customer details';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `city_region`, `cc_number`) VALUES
(1, 'azli ramzan', 'azli.ramzan@gmail.com', '0127421365', 'Lot 21 Jalan Matahari', '2', '2134211257980423'),
(2, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(3, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(4, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(5, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(6, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(7, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(8, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(9, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(10, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(11, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(12, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(13, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(14, 'Muhammad Naqib', 'naqibpeace@gmail.com', '0123456789', '149, Persiaran Menteri Satu, Taman Menteri', '1', '111222333444'),
(15, 'Ahmad', 'ahmad@gmail.com', '01293847564', 'ahmad Hill, California', '1', '222444666888'),
(16, 'ali baba', 'baba@gmail.com', '0129876543', 'ali baba street, California', '1', '111111000'),
(17, 'Rosman', 'rosman@gmail.com', '0198765432', 'Jalan Rosman, Kamunting, Perak', '1', '000022225555'),
(18, 'Rahim', 'rahim@gmail.com', '0198765432', 'Jalan Kakak Tua, Pulau Pinang', '1', '444555333555'),
(19, 'Afiq', 'afiq@gmail.com', '0123987456', 'Wangsa Maju, KL', '1', '111222333000'),
(20, 'Hamid', 'hamid@gmail.com', '0198765431', 'Taman Melati, Bangladesh', '1', '000999222444'),
(21, 'Hadi', 'hadi@gmail.com', '0187654321', 'Jalan Raja Muda, Kelantan', '1', '111333222666'),
(22, 'Ah Meng', 'ameng@gmail.com', '0176543212', 'Lot 4, Jalan Dua, Sabah', '1', '999444777222'),
(23, 'syed', 'syed@gmail.com', '0167898765', 'Blok 404, Sri Rampai', '1', '666444555999'),
(24, 'Henry', 'henry@gmail.com', '0120987654', 'Jalan Hendry Gurney, Sepang', '1', '444555222777'),
(25, 'Kaido', 'kaido@gmail.com', '0178909876', 'Mount Kiara', '1', '444666555888'),
(26, 'Doflamingo', 'df@gmail.com', '0134567890', 'Punk Hazard, East', '1', '555333888666'),
(27, 'Zoro', 'zoro@gmail.com', '0198765435', 'Lost Island', '1', '444777555999'),
(28, 'Nami', 'nami@gmail.com', '0197654345', 'Peach Island', '1', '666888666888'),
(29, 'Chopper', 'chopper@gmail.com', '0187656789', 'Snow Island', '1', '000999888777'),
(30, 'Sanji', 'sanji@gmail.com', '0198765678', 'East Blue', '1', '333555444666'),
(31, 'Enri', 'enri@gmail.com', '0198767876', 'Tokyo, Japan', '1', '444333555777666'),
(32, 'vegapunk', 'vegapunk@gmai.com', '0198887654', 'West Blue', '1', '555666888777');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmation_number` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='contains order from customers';

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `amount`, `date_created`, `confirmation_number`, `customer_id`) VALUES
(2, '149.50', '2018-11-13 00:19:33', 529609160, 2),
(3, '149.50', '2018-11-13 00:33:27', 129106735, 3),
(4, '149.50', '2018-11-13 00:58:20', 273425152, 4),
(5, '149.50', '2018-11-13 01:06:21', 97219436, 5),
(6, '149.50', '2018-11-13 01:14:16', 983260255, 6),
(7, '149.50', '2018-11-13 01:18:05', 737075350, 7),
(8, '182.40', '2018-11-13 17:00:39', 888474195, 8),
(9, '149.50', '2018-11-13 20:17:10', 198374368, 9),
(10, '149.50', '2018-11-13 22:53:08', 587471343, 10),
(11, '108.90', '2018-11-13 22:58:20', 149064593, 11),
(12, '149.50', '2018-11-13 23:31:00', 872609126, 12),
(13, '149.50', '2018-11-13 23:40:31', 767711578, 13),
(14, '149.50', '2018-11-13 23:53:07', 686347610, 14),
(15, '1538.50', '2018-11-14 00:35:23', 145143921, 15),
(16, '752.00', '2018-11-14 00:50:05', 869040232, 16),
(17, '149.50', '2018-11-15 09:57:52', 660239394, 17),
(18, '159.00', '2018-11-15 10:28:27', 434460624, 18),
(19, '159.00', '2018-11-15 10:34:09', 588163590, 19),
(20, '149.50', '2018-11-15 12:06:24', 981305135, 20),
(21, '149.50', '2018-11-15 12:13:29', 540583465, 21),
(22, '118.90', '2018-11-15 12:20:34', 488334221, 22),
(23, '189.00', '2018-11-15 13:56:18', 768516118, 23),
(24, '54.90', '2018-11-15 14:21:56', 165685716, 24),
(25, '53.00', '2018-11-15 14:34:11', 661509434, 25),
(26, '193.40', '2018-11-15 14:59:23', 242826838, 26),
(27, '180.80', '2018-11-15 15:27:42', 592461909, 27),
(28, '142.80', '2018-11-15 15:29:05', 454067828, 28),
(29, '193.40', '2018-11-15 15:33:27', 730120436, 29),
(30, '100.40', '2018-11-15 15:43:13', 863090558, 30),
(31, '280.40', '2018-11-15 15:57:31', 161787328, 31),
(32, '184.00', '2018-11-15 16:10:56', 684591642, 32);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product`
--

CREATE TABLE `ordered_product` (
  `customer_order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ordered_product`
--

INSERT INTO `ordered_product` (`customer_order_id`, `product_id`, `quantity`) VALUES
(16, 15, 10),
(16, 16, 10),
(17, 1, 1),
(17, 2, 1),
(18, 1, 1),
(18, 3, 1),
(19, 1, 1),
(19, 3, 1),
(20, 1, 1),
(20, 2, 1),
(21, 1, 1),
(21, 2, 1),
(22, 1, 1),
(22, 15, 1),
(23, 5, 1),
(23, 8, 1),
(24, 10, 1),
(24, 12, 1),
(25, 10, 2),
(26, 5, 1),
(26, 7, 1),
(27, 6, 2),
(28, 7, 1),
(28, 15, 1),
(29, 5, 1),
(29, 7, 1),
(30, 13, 3),
(30, 14, 1),
(31, 1, 1),
(31, 14, 2),
(31, 15, 4),
(32, 13, 3),
(32, 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='contains all products with it''s details';

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `description`, `last_update`, `category_id`) VALUES
(1, 'Oceanique', '76.00', 'Oceanique Taika Lamb Dry Cat Food (7kg)', '2018-11-06 04:50:11', 1),
(2, 'Oven-Baked Tradition', '70.50', 'Oven-Baked Tradition Chicken Dry Cat Food (6.7kg)', '2018-11-06 04:50:12', 1),
(3, 'Monge', '80.00', 'Monge Indoor Dry Cat Food (7kg)', '2018-11-06 04:50:12', 1),
(4, 'Power Cat', '70.90', 'Power Cat Fresh Ocean Fish Cat Dry Food (7.7kg)', '2018-11-06 04:50:12', 1),
(5, 'Zignature', '90.50', 'Zignature Salmon Formula Dog Food (8kg)', '2018-11-06 04:50:13', 2),
(6, 'Addiction Le Lamb', '88.90', 'Addiction Le Lamb Dog Dry Food (7.5kg)', '2018-11-06 04:50:13', 2),
(7, 'Primal Formula', '99.90', 'Primal Freeze Dried Canine Lamb Nuggets (10kg)', '2018-11-06 04:50:13', 2),
(8, 'Eukanuba', '95.50', 'Eukanuba Senior Lamb & Rice Formula Dry Dog Food (9kg)', '2018-11-06 04:50:13', 2),
(9, 'Pio-Pa', '21.50', 'Pio-Pa Complete and balanced food for Rabbits (5kg)', '2018-11-06 04:50:13', 3),
(10, 'Versele', '25.00', 'Versele Laga Cuni Adult Complete Food (4kg)', '2018-11-06 04:50:13', 3),
(11, 'Beaphar', '25.20', 'Beaphar Nature Rabbit (5kg)', '2018-11-06 04:50:13', 3),
(12, 'Vitakraft', '26.90', 'Vitakraft Food for Small Rabbits (3kg)', '2018-11-06 04:50:14', 3),
(13, 'Ebers', '25.50', 'Ebers Hamster Food (3kg)', '2018-11-06 04:50:14', 4),
(14, 'Petssion', '20.90', 'Petssion Premium Hamster Food (2.5kg)', '2018-11-06 04:50:14', 4),
(15, 'SmartHeart', '39.90', 'SmartHeart Guinea Pig & Hamster Food (3.5kg)', '2018-11-06 04:50:14', 4),
(16, 'Brit', '35.00', 'Brit Care Small Animal Hamster (3kg)', '2018-11-06 04:50:14', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_order_customer_idx` (`customer_id`);

--
-- Indexes for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD PRIMARY KEY (`customer_order_id`,`product_id`),
  ADD KEY `fk_customer_order_has_product_product1_idx` (`product_id`),
  ADD KEY `fk_customer_order_has_product_customer_order1_idx` (`customer_order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category_idx` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `fk_customer_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD CONSTRAINT `fk_ordered_product_customer_order` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordered_product_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
