-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 09:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc company`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Laptops'),
(2, 'Mobile'),
(3, 'fashion'),
(4, 'Tablets'),
(5, 'Sports, Fitness & Outdoors'),
(6, 'Supermarket'),
(7, 'Kitchen & Appliances'),
(8, 'Books'),
(9, 'Automotive'),
(10, 'Toys, Games & Baby');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `full_name`, `email`, `last_login`, `password`, `address`, `telephone`) VALUES
(1, 'Ahmed Mohamed', 'ahmed_mohamed@gmail.com', '2024-06-02 07:29:06', '12345', '2025 M Street, NW, Washington, DC, 20036.', '01524855212'),
(2, 'Mark Jossif', 'mark_jossif@gmail.com', '2024-06-12 14:28:09', '12345', '20 M Street, NW, Washington, DC, 20036.', '01545312812'),
(3, 'Osman Suliman', 'osman_suliman@gmail.com', '2024-05-07 17:36:24', '12345', '2M Street, NW, Washington, DC, 2.', '02185857852'),
(4, 'Mousa Ibrahim', 'Mousa_Ibrahim@gmail.com', '2024-05-15 16:19:14', '12345', '5 M Street, NW, Washington, DC, 036.', '01587749564'),
(5, 'Jasica moon', 'Jasica_moon@gmail.com', '2024-06-17 23:00:00', '12345', '1M Street, NW, Washington, DC, 1.', '015899+7852'),
(6, 'Caroline Jack', 'Caroline_Jack@gmail.com', '2024-05-21 01:08:24', '12345', '5 M Street, NW, Washington, DC, 5.', '01578964322'),
(7, 'Yasser Moataz', 'Yasser_Moataz@gmail.com', '2024-05-21 01:08:24', '12345', '5 M Street, NW, Washington, DC, 5.', '01578964322'),
(8, 'Mohsen Peter', 'Mohsen_Peter@gmail.com', '2024-05-21 01:08:24', '12345', '5 M Street, NW, Washington,5.', '01578964385'),
(9, 'Michel Peter', 'Michel_Peter@gmail.com', '2024-05-21 01:08:24', '12345', '5 M Street, Washington,5.', '01578964789'),
(10, 'Gebraiel Thorn', 'Gebraiel_Thorn@gmail.com', '2024-05-21 01:08:24', '12345', '5 M Street, wefeff,5.', '01578964654');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 6, 1, 1000.00),
(2, 1, 5, 1, 500.00),
(3, 2, 5, 1, 500.00),
(4, 7, 6, 5, 500.00),
(5, 5, 8, 5, 3000.00),
(6, 3, 7, 5, 3000.00),
(7, 9, 5, 5, 1000.00),
(8, 6, 8, 5, 3000.00),
(9, 14, 4, 10, 1000.00),
(10, 13, 9, 54, 100000.00),
(11, 18, 11, 2, 2000.00),
(12, 19, 12, 5, 5000.00),
(13, 8, 5, 5, 500.00),
(14, 9, 14, 5, 500.00),
(15, 12, 9, 5, 3000.00),
(16, 1, 6, 5, 1000.00),
(17, 22, 3, 5, 3000.00),
(18, 23, 13, 5, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `description`) VALUES
(1, 1, '2024-06-22 15:15:45', 'Jeans & T_shairt'),
(2, 2, '2024-05-30 10:14:16', 'T_shirt'),
(3, 6, '2024-05-15 10:14:16', 'SAMSUNG Galaxy s20'),
(4, 5, '2024-05-13 10:14:16', 'SAMSUNG Galaxy s20'),
(5, 4, '2024-04-17 10:14:16', 'IPhone 14'),
(6, 3, '2024-04-17 10:14:16', 'IPhone 14'),
(7, 2, '2024-03-13 10:14:16', 'Jeans'),
(8, 2, '2024-03-13 10:14:16', 'Jeans & T-shirt'),
(9, 1, '2024-03-07 10:14:16', 'Jeans & T-shirt'),
(10, 9, '2024-03-03 10:14:16', 'Jeans & T-shirt'),
(11, 1, '2024-06-21 15:15:45', 'Jeans & T_shairt'),
(12, 2, '2024-03-13 10:14:16', 'ASUS ROG Zephyrus Duo 16 GX650\r\n'),
(13, 1, '2024-06-21 15:15:45', 'ASUS ROG Zephyrus Duo 16 GX650\r\n'),
(14, 8, '2024-03-07 10:14:16', 'ASUS ZenBook ux425'),
(15, 1, '2024-06-21 15:15:45', 'Alienware x16 R2'),
(16, 6, '2024-06-21 15:15:45', 'Alienware x16 R2'),
(17, 8, '2024-06-19 15:15:45', 'ASUS ZenBook ux425'),
(18, 5, '2024-06-27 15:15:45', 'HUAWEI P30 Lite'),
(19, 10, '2024-06-12 15:15:45', 'Samsung Galaxy S24 Ultra'),
(20, 9, '2024-06-14 15:15:45', 'Samsung Galaxy S24 Ultra'),
(21, 6, '2024-06-22 15:15:45', 'Samsung Galaxy S24 Ultra'),
(22, 6, '2024-06-14 15:15:45', 'HP ProBook 450'),
(23, 6, '2024-06-27 15:15:45', 'Shirt dress'),
(24, 10, '2024-06-27 15:15:45', 'Shirt dress'),
(25, 7, '2024-06-21 15:15:45', 'Alienware x16 R2');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `supplier_id`, `description`, `price`, `total_amount`, `category_id`, `images`, `tags`, `comments`) VALUES
(3, 'HP ProBook 450 G6', 6, 'HP ProBook series of laptops are designed for businesses and professionals. These light machines are packed with modern hardware and powerful security features to protect you from various external threats. While consumer laptops are designed to deliver daily productivity performance', 1000.00, 100, 1, NULL, NULL, NULL),
(4, 'ASUS ZenBook ux425', 9, 'Windows 11 Pro - ASUS recommends Windows 11 Pro for business\r\nUp to 12th Gen Intel® Core™ i7 CPU\r\nUp to Intel® Iris Xeᵉ graphics\r\nUp to 64 GB RAM\r\nUp to 2 TB SSD storage\r\n5G and WiFi 6 / WiFi 6E Support\r\nOptional backlit keyboard with ASUS SensePoint and IR camera for face login\r\n360° hinge with stylus support', 2000.00, 50, 1, NULL, NULL, NULL),
(5, 'T_shirt', 7, 'Oversized T-shirt in soft cotton jersey with a rib-trimmed neckline and low dropped shoulders.', 500.00, 1000, 3, NULL, NULL, NULL),
(6, 'Jeans', 3, '5-pocket jeans in stretch cotton denim with a regular waist, zip fly and button and straight legs with good room for movement over the thighs and knees.', 500.00, 500, 3, NULL, NULL, NULL),
(7, 'Samsung Galaxy S20', 7, 'Screen size\r\n6.7 inches\r\nCamera resolution\r\n64 megapixels\r\noperating system\r\nAndroid\r\nStorage capacity\r\n128GB\r\nThe camera of the Galaxy S20+ 5G represents a new milestone in photography. Innovative functions such as Space Zoom, 8K video recording, Single Take or Bright Night open up new possibilities to show yourself in the best light.', 2500.00, 2500, 2, NULL, NULL, NULL),
(8, 'IPhone 14 Plus', 8, 'The refurbed products\r\nRefurbed products are more sustainable and up to 40% cheaper than buying new. Our electronic devices are completely renewed and meticulously tested. This makes them better than used cell phones or kitchen appliances, for example. But we also have new products such as sustainable cell phone cases in our range. In addition, you get at least a 12-month guarantee and can test them free of charge for 30 days.\r\n\r\niPhone 14 Pro - Description\r\nNow available at refurbed: The iPhone 14 Pro\r\n\r\nCompletely redesigned compared to the iPhone 13 Pro\r\nAlways On Display - you immediately see all information on your lock screen. No need to tap to know what\'s going on.\r\n\r\nA new 48 megapixel camera allows you to use the pixels four times - to get a razor-sharp 12 megapixel photo, or - simply a gigantic photo. Thanks to the ultra-wide angle and telephoto lens, you always have the right tool in your pocket for subjects both near and far. The 65% larger sensor of the main camera means more light sensitivity - perfect for photos in the evening!\r\n\r\nThe lightning-fast A16 Bionic chip of the used iPhone 14 Pro is the heart behind it all and offers immense performance for your everyday life while consuming less power. Together with the larger battery, this results in a significantly longer runtime!\r\n\r\nYou can buy the iPhone 14 Pro in the following variants:\r\n\r\niPhone 14 Pro Colors: Dark Purple, Gold, Silver, Space Black\r\nStorage space: 128 GB, 256 GB, 512 GB and 1 TB\r\nCamera: 48.0MP\r\nrefurbed Warranty: min. 12 months\r\nscope of delivery\r\nUSB cable', 3000.00, 3000, 2, NULL, NULL, NULL),
(9, 'ASUS ROG Zephyrus Duo 16 GX650', 4, 'ASUS ROG Zephyrus Duo 16 GX650PZ-NM030W, Gaming Notebook, mit 16 Zoll Display, AMD Ryzen™ 9,7945HX Prozessor, 32 GB RAM, 1 TB SSD, NVIDIA GeForce RTX™ 4080, Schwarz, Windows 11 Home (64 Bit)', 3799.00, 100, 1, NULL, NULL, NULL),
(10, 'Alienware x16 R2', 5, 'connections\r\n(1x) Global headset jack\r\n(1x) Type-C port (including Thunderbolt 4, USB4 ® , 15 W (3 A/5 V) Power Delivery and DisplayPort 1.4)\r\n(1x) Type-C port (USB 3.2 Gen 2, 15 W (3 A/5 V) Power Delivery and DisplayPort 1.4)\r\n(1x) HDMI 2.1 port\r\n(2x) Type-A USB 3.2 Gen 1 port with PowerShare (1x) Mini Display Port 1.4\r\n\r\nSlots\r\n1 MicroSD card slot\r\n\r\nDimensions\r\nHeight: 18.57 mm (0.73\")\r\nWidth: 364.81 mm (14.36\")\r\nDepth: 289.98 mm (11.41\")\r\nWeight (min.): 2.65 kg (5.90 lb)\r\nWeight (max.): 2.72 kg (6.00 lb)\r\n\r\ncamera\r\nFHD HDR RGB and IR camera with 1080p at 30 FPS\r\nDual array microphones\r\n\r\nAudio and speakers\r\nTweeter: 2 x 2 W\r\nWoofer: 4 x 3 W\r\nAll configurations are Dolby Atmos ® certified.', 3.00, 100, 1, NULL, NULL, NULL),
(11, 'HUAWEI P30 Lite', 10, 'Features\r\nUltra Lighting camera with extendable lens\r\nUltra Lighting camera with extendable lens\r\nInnovative extendable camera design\r\nStarry Pattern Design\r\nStarry Pattern Design\r\nExclusive XMAGE label \r\nUltra Speed ​​Snapshot\r\nUltra Speed ​​Snapshot\r\nLightning-fast recordings\r\nSuper robust Kunlun Glass™\r\nSuper robust Kunlun Glass™\r\nImproved scratch resistance and drop resistance\r\nEMUI\r\nEMUI\r\nIntuitive, interactive, intelligent\r\nLearn more\r\nApp Gallery\r\nApp Gallery\r\nWhat does the P series stand for?\r\n', 1.00, 2500, 2, NULL, NULL, NULL),
(12, 'Samsung Galaxy S24 Ultra', 6, 'The Galaxy S24 Ultra is Samsung\'s absolute top model for 2024. The high-end flagship leaves nothing to be desired: 200 MP camera, Snapdragon 8 Gen 3 drive, S Pen and the new Galaxy AI are just some of the highlights that await you.', 57.00, 2500, 2, NULL, NULL, NULL),
(13, 'Shirt dress', 3, 'Shirt dress in woven fabric with a collar and button placket. Dropped shoulders, long sleeves with buttoned cuffs, a gathered seam at the hips and a flared skirt. Unlined.', 700.00, 1000, 3, NULL, NULL, NULL),
(14, 'Scarf', 5, 'Scarf in a soft weave featuring a printed pattern.', 700.00, 1000, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_five`
-- (See below for the actual view)
--
CREATE TABLE `report_five` (
`product_id` int(11)
,`product_name` varchar(255)
,`description` text
,`price` decimal(10,2)
,`images` text
,`tags` text
,`comments` text
,`total_amount` int(11)
,`catagory_name` varchar(255)
,`order_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_four`
-- (See below for the actual view)
--
CREATE TABLE `report_four` (
`product_id` int(11)
,`name` varchar(255)
,`supplier_id` int(11)
,`description` text
,`price` decimal(10,2)
,`total_amount` int(11)
,`category_id` int(11)
,`images` text
,`tags` text
,`comments` text
,`order_id` int(11)
,`returned_resson` varchar(255)
,`returned_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_one`
-- (See below for the actual view)
--
CREATE TABLE `report_one` (
`supplier_id` int(11)
,`name` varchar(255)
,`email` varchar(255)
,`last_login` datetime
,`address` text
,`telephone` varchar(20)
,`number_of_products` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_three`
-- (See below for the actual view)
--
CREATE TABLE `report_three` (
`customer_id` int(11)
,`full_name` varchar(255)
,`email` varchar(255)
,`last_login` datetime
,`address` text
,`telephone` varchar(20)
,`total_purchases` decimal(42,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report_two`
-- (See below for the actual view)
--
CREATE TABLE `report_two` (
`product_id` int(11)
,`product_name` varchar(255)
,`description` text
,`price` decimal(10,2)
,`images` text
,`tags` text
,`comments` text
,`total_amount` int(11)
,`supplier_name` varchar(255)
,`number_of_sold_items` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `returned_orders`
--

CREATE TABLE `returned_orders` (
  `returned_orders_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `returned_resson` varchar(255) NOT NULL,
  `returned_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returned_orders`
--

INSERT INTO `returned_orders` (`returned_orders_id`, `order_id`, `returned_resson`, `returned_date`) VALUES
(1, 8, 'not fit', '2024-06-18 11:15:25'),
(2, 7, 'not fit', '2024-06-09 13:34:19'),
(3, 21, 'Not working', '2024-06-05 13:34:19'),
(4, 6, 'Not working', '2024-05-23 13:34:19'),
(5, 13, 'Over Heating', '2024-05-01 13:34:19'),
(6, 22, 'Hard Issue', '2024-05-11 13:34:19'),
(7, 23, 'Over size', '2024-05-09 13:34:19'),
(8, 18, 'Screen Proken', '2024-05-23 13:34:19'),
(9, 15, 'No Resson', '2024-05-24 13:34:19'),
(10, 7, 'No Resson', '2024-05-24 13:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `returned_products`
--

CREATE TABLE `returned_products` (
  `returned_products_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `returned_resson` varchar(255) NOT NULL,
  `returned_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returned_products`
--

INSERT INTO `returned_products` (`returned_products_id`, `order_id`, `product_id`, `returned_resson`, `returned_date`) VALUES
(1, 1, 6, 'Different size', '2024-06-22 13:25:17'),
(2, 7, 6, 'Different size', '2024-06-22 13:25:17'),
(3, 3, 7, 'Issue', '2024-06-10 13:25:17'),
(4, 21, 12, 'Screen Broken', '2024-06-07 13:25:17'),
(5, 5, 8, 'No Issue', '2024-06-10 13:25:17'),
(6, 22, 3, 'Heating', '2024-06-27 13:25:17'),
(7, 15, 10, 'Heating', '2024-06-24 13:25:17'),
(8, 2, 5, 'Over Size', '2024-06-29 13:25:17'),
(9, 23, 13, 'Over Size', '2024-06-28 13:25:17'),
(10, 7, 6, 'Over Size', '2024-06-29 13:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `email`, `last_login`, `password`, `address`, `telephone`) VALUES
(3, '2B', 'Info@2b.com', '2024-06-20 08:46:40', '1598', NULL, '01578963'),
(4, 'BTech', 'Info@BTech.com', '2024-06-19 12:15:54', '1598', NULL, '01545639'),
(5, 'AMAZON', 'Info@AMAZON.com', '2024-06-12 14:32:18', '1598', NULL, '01512325'),
(6, 'Compuscince', 'Info@Compuscince.com', '2024-06-12 14:32:18', '1598', NULL, '01512325'),
(7, 'Bandary', 'Info@Bandary.com', '2024-06-12 14:32:18', '12345', NULL, '01578964'),
(8, 'Arab Business', 'Info@Arab_Business.com', '2024-06-12 14:32:18', '12345', NULL, '01578349'),
(9, 'SmartWay', 'Info@SmartWay.com', '2024-06-12 14:32:18', '12345', NULL, '01578761'),
(10, 'Roleet', 'Info@Roleet.com', '2024-06-12 14:32:18', '12345', NULL, '01578852');

-- --------------------------------------------------------

--
-- Structure for view `report_five`
--
DROP TABLE IF EXISTS `report_five`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_five`  AS SELECT `p`.`product_id` AS `product_id`, `p`.`name` AS `product_name`, `p`.`description` AS `description`, `p`.`price` AS `price`, `p`.`images` AS `images`, `p`.`tags` AS `tags`, `p`.`comments` AS `comments`, `p`.`total_amount` AS `total_amount`, `c`.`name` AS `catagory_name`, `o`.`order_date` AS `order_date` FROM (((`category` `c` join `products` `p` on(`c`.`category_id` = `p`.`category_id`)) join `orderitems` `oi` on(`p`.`product_id` = `oi`.`product_id`)) join `orders` `o` on(`oi`.`order_id` = `o`.`order_id`)) WHERE `c`.`name` = 'fashion' AND `o`.`order_date` >= curdate() - interval 1 month GROUP BY `oi`.`product_id` ;

-- --------------------------------------------------------

--
-- Structure for view `report_four`
--
DROP TABLE IF EXISTS `report_four`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_four`  AS SELECT `p`.`product_id` AS `product_id`, `p`.`name` AS `name`, `p`.`supplier_id` AS `supplier_id`, `p`.`description` AS `description`, `p`.`price` AS `price`, `p`.`total_amount` AS `total_amount`, `p`.`category_id` AS `category_id`, `p`.`images` AS `images`, `p`.`tags` AS `tags`, `p`.`comments` AS `comments`, `rp`.`order_id` AS `order_id`, `rp`.`returned_resson` AS `returned_resson`, `rp`.`returned_date` AS `returned_date` FROM (`returned_products` `rp` join `products` `p` on(`rp`.`product_id` = `p`.`product_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `report_one`
--
DROP TABLE IF EXISTS `report_one`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_one`  AS SELECT `s`.`supplier_id` AS `supplier_id`, `s`.`name` AS `name`, `s`.`email` AS `email`, `s`.`last_login` AS `last_login`, `s`.`address` AS `address`, `s`.`telephone` AS `telephone`, count(`p`.`product_id`) AS `number_of_products` FROM (`supplier` `s` left join `products` `p` on(`s`.`supplier_id` = `p`.`supplier_id`)) GROUP BY `s`.`supplier_id`, `s`.`name`, `s`.`email`, `s`.`last_login`, `s`.`address`, `s`.`telephone` ;

-- --------------------------------------------------------

--
-- Structure for view `report_three`
--
DROP TABLE IF EXISTS `report_three`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_three`  AS SELECT `c`.`customer_id` AS `customer_id`, `c`.`full_name` AS `full_name`, `c`.`email` AS `email`, `c`.`last_login` AS `last_login`, `c`.`address` AS `address`, `c`.`telephone` AS `telephone`, sum(`oi`.`quantity` * `oi`.`price`) AS `total_purchases` FROM ((`customers` `c` join `orders` `o` on(`c`.`customer_id` = `o`.`customer_id`)) join `orderitems` `oi` on(`o`.`order_id` = `oi`.`order_id`)) GROUP BY `c`.`customer_id`, `c`.`full_name`, `c`.`email`, `c`.`last_login`, `c`.`address`, `c`.`telephone` ;

-- --------------------------------------------------------

--
-- Structure for view `report_two`
--
DROP TABLE IF EXISTS `report_two`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_two`  AS SELECT `p`.`product_id` AS `product_id`, `p`.`name` AS `product_name`, `p`.`description` AS `description`, `p`.`price` AS `price`, `p`.`images` AS `images`, `p`.`tags` AS `tags`, `p`.`comments` AS `comments`, `p`.`total_amount` AS `total_amount`, `s`.`name` AS `supplier_name`, count(`oi`.`order_item_id`) AS `number_of_sold_items` FROM ((`products` `p` join `orderitems` `oi` on(`oi`.`product_id` = `p`.`product_id`)) join `supplier` `s` on(`p`.`supplier_id` = `s`.`supplier_id`)) GROUP BY `p`.`product_id`, `p`.`name`, `p`.`description`, `p`.`price`, `p`.`images`, `p`.`tags`, `p`.`comments`, `p`.`total_amount`, `s`.`name` LIMIT 0, 10 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_orders_customers` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_products_category` (`category_id`),
  ADD KEY `fk_products_supplier` (`supplier_id`);

--
-- Indexes for table `returned_orders`
--
ALTER TABLE `returned_orders`
  ADD PRIMARY KEY (`returned_orders_id`),
  ADD KEY `fk_returned_orders_orders` (`order_id`);

--
-- Indexes for table `returned_products`
--
ALTER TABLE `returned_products`
  ADD PRIMARY KEY (`returned_products_id`),
  ADD KEY `fk_returned_products_products` (`product_id`),
  ADD KEY `fk_returned_products_orders` (`order_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `returned_orders`
--
ALTER TABLE `returned_orders`
  MODIFY `returned_orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `returned_products`
--
ALTER TABLE `returned_products`
  MODIFY `returned_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_products_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `returned_orders`
--
ALTER TABLE `returned_orders`
  ADD CONSTRAINT `fk_returned_orders_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `returned_products`
--
ALTER TABLE `returned_products`
  ADD CONSTRAINT `fk_returned_products_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `fk_returned_products_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
