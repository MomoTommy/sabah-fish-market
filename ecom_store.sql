-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 25, 2022 at 06:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'malaysia', 'Admin', ' Admin ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(9, 'Jade Calleigh Low', 'jade@gmail.com', '123123123', '990527125631', 'Sandakan', '0168104450', 'LASDLAMDFE', 'profile.jpg', '127.0.0.1', '1827667236'),
(10, 'Huguan', 'huguan@gmail.com', '123123123', '880512125931', 'Penampang', '0167765445', 'Kg.Putatan', '', '127.0.0.1', '34504153'),
(11, 'Nigel Peter Jinivon', 'nigel@gmail.com', '123123123', '990527125631', 'Penampang', '0168104450', 'Kampung Ramayah', '', '127.0.0.1', '562922984'),
(12, 'Johndoe@gmail.com', 'johndoe@gmail.com', '123123123', '990527125631', 'Penampang', '0168104450', 'Kampung Ramayah', '', '127.0.0.1', '165381762'),
(13, 'Nigel Peter Jinivon', 'nigelp@gmail.com', '123123123', '990527125631', 'Penampang', '0168104450', 'Kampung Ramayah', 'profile.jpg', '127.0.0.1', '466360101'),
(14, 'Tommy', 'tommy@gmail.com', '123123123', '990527125631', 'Penampang', '0168104450', 'Kampung Ramayah', 'profile.jpg', '127.0.0.1', '1433515387');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(41, 11, 69, 86449982, 3, '', '2022-01-06 22:14:59', 'Complete'),
(42, 11, 104, 86449982, 4, '', '2022-01-06 22:16:06', 'Complete'),
(43, 12, 94, 329551518, 2, '', '2022-01-06 23:19:43', 'Complete'),
(44, 12, 130, 329551518, 5, '', '2022-01-06 23:17:53', 'pending'),
(45, 13, 160, 1357640037, 4, '', '2022-01-07 00:45:43', 'Complete'),
(46, 9, 50, 1265745318, 5, '', '2022-01-10 10:00:17', 'Complete'),
(47, 14, 60, 1245931711, 4, '', '2022-01-11 07:26:10', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'SNS Dry Food', 'no', 'logo1.jpg'),
(9, 'Bataras', 'no', 'bataras.png'),
(10, 'Hong Fung Seafood Enterprise', 'no', 'hong.jpg'),
(11, 'Hua Yang Seafood Inc', 'no', 'huay.jpg'),
(12, 'Nigel Store', '', 'ttt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(28, 86449982, 69, 'Boost', 847362, 0, '2022-01-07'),
(29, 86449982, 104, 'Boost', 384753, 0, '2022-01-07'),
(30, 329551518, 94, 'GrabPay', 4832753, 0, '2022-01-07'),
(31, 1357640037, 90, 'Boost', 847213, 0, '2022-01-07'),
(32, 1265745318, 50, 'Boost', 0, 0, '2022-01-10'),
(33, 1245931711, 50, 'Boost', 0, 0, '2022-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(41, 11, 86449982, '26', 3, '', 'Complete'),
(42, 11, 86449982, '27', 4, '', 'Complete'),
(43, 12, 329551518, '17', 2, '', 'Complete'),
(44, 12, 329551518, '27', 5, '', 'pending'),
(45, 13, 1357640037, '18', 4, '', 'Complete'),
(46, 9, 1265745318, '28', 5, '', 'Complete'),
(47, 14, 1245931711, '23', 4, '', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(17, 0, 0, 10, '2022-01-06 23:11:07', 'Red Snapper Fish (Ikan Merah)', 'snapper-fish-ikan-merah', 'istockphoto-514675891-612x612.jpg', 'red-snapper-fish-ice-market-group-179722089.jpg', 'images.jpg', 47, 40, '\r\n\r\n\r\nNOTE: \r\n1. Gutting & Scaling reduces gross weight by 10-15%.\r\n2. Seafood is fresh and live, caught in the early morning direct from the boats, on the day of delivery.\r\n3. Fish is cleaned and hygienically packed prior to delivery.\r\n4. Fish is cut into slices, with head cut in half and tail included.\r\n\r\nThe seafood catch daily is not guaranteed, hence item may be unavailable on the day of delivery to you. \r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '', 'New', 'product'),
(18, 0, 0, 11, '2022-01-06 21:46:57', 'Grouper Fish (Kerapu)', 'grouper-fish-kerapu', 'grouper fish facts.jpeg', '3 cheap frozen grouper exporters.jpg', 'imagesf.jpeg', 40, 40, '\r\n\r\n\r\n\r\n\r\nNOTE: \r\n1. Gutting & Scaling reduces gross weight by 10-15%.\r\n2. Seafood is fresh and live, caught in the early morning direct from the boats, on the day of delivery.\r\n3. Fish is cleaned and hygienically packed prior to delivery.\r\n4. Fish is cut into slices, with head cut in half and tail included.\r\n\r\nThe seafood catch daily is not guaranteed, hence item may be unavailable on the day of delivery to you. \r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'grouper fish kerapu', 'New', 'product'),
(23, 5, 0, 2, '2022-01-06 21:18:43', 'Sapak', 'sapak', '135113104455869.jpg', 'fresh-seafood-clams-and-cockles-prepared-in-the-dish-FG4TEP.png', 'fresh-pipi-shell-paphies-australis-260nw-1310563781.png', 15, 15, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'sapak', 'New', 'bundle'),
(24, 0, 0, 9, '2022-01-06 21:02:46', 'Siput', 'siput', '6092e6b7b75c9b3165d8307b63c4e81c.png', '8ecfab3a603bbf30f95efe2e752f3c0b.png', 'fresh_gong_gong_1494626606_8addd2e4.png', 14, 0, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'siput', 'New', 'product'),
(25, 0, 0, 9, '2022-01-06 21:15:42', 'Mussels', 'mussels', 'musselsimage630x420-1-1-1-1-1-1-1.png', 'efef.jpg', '86794586-fresh-mussels-in-water-at-a-market.png', 15, 0, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Mussels', 'New', 'product'),
(26, 0, 0, 9, '2022-01-06 21:22:03', 'Ikan Bawal (Pomfret)', 'ikan-bawal', 'pomfret-fish-1603880434-5619940.png', 'Frozen-Whole-Round-Pomfret-Fish-Fresh-Golden-Pomfret.png', 'GoldenPomfretFish_WeGotMeat_1200x832.png', 23, 0, 'NOTE: \r\n1. Gutting & Scaling reduces gross weight by 10-15%.\r\n2. Seafood is fresh and live, caught in the early morning direct from the boats, on the day of delivery.\r\n3. Fish is cleaned and hygienically packed prior to delivery.\r\n4. Fish is cut into slices, with head cut in half and tail included.\r\n\r\nThe seafood catch daily is not guaranteed, hence item may be unavailable on the day of delivery to you. \r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'ikan bawal', 'New', 'product'),
(27, 0, 0, 2, '2022-01-06 21:25:19', 'Lobster', 'lobster', 'spiny-lobsters-palinuridae-night-market-kota-kinabalu-borneo-malaysia-asia-spiny-lobsters-palinuridae-night-market-147527642.png', '80347667-fresh-lobster-sold-at-night-market-in-kota-kinabalu-sabah-borneo-malaysia-.png', 'bunch-fresh-lobster-market-kota-kinabalu-67499325.png', 26, 0, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'lobster', 'New', 'product'),
(28, 0, 0, 11, '2022-01-06 23:08:19', 'Ikan Bilis', 'ikan-bilis', 'Untitled-design-26-1.jpg', 'index.jpg', '2a219df6fd6b9c6366671870528f8b95.jpg', 10, 0, '\r\n\r\nikan bilis', '\r\n\r\n', '\r\n\r\n', '', 'New', 'product'),
(30, 0, 0, 10, '2022-01-07 00:47:37', 'Tilapia Merah', 'tilapia-merah', 'tt.jpg', 't.jpg', 'ttt.jpg', 14, 0, 'Tilapia \r\n\r\n', '\r\n\r\n', '\r\n\r\n', '', 'New', 'product'),
(31, 0, 0, 10, '2022-01-11 07:28:49', 'Fish', 'fish-ikan-bilis', '2a219df6fd6b9c6366671870528f8b95.jpg', 'index.jpg', 'Untitled-design-26-1.jpg', 10, 0, 'This is ikan bilis', '\r\n\r\n', '\r\n\r\n', '', 'New', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Large Fish', 'no', 'fish.png'),
(5, 'Small Fish', 'no', 'fish.png'),
(6, 'Prawn', 'no', 'fish.png');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'SNS Dry Food', 'logo1.jpg', 'Penjual/pemborong bilis , udang kering & produk sabah dengan harga yang murah.\r\n', 'More about us', 'https://www.facebook.com/SNS.dryfoods.tupperwarebrand/'),
(7, 'Bataras', 'bataras.png', '\r\n\r\n\r\nBataras Sdn Bhd is an enterprise located in Malaysia, with the main office in Labuan. It operates in the Supermarkets and Other Grocery (except Convenience)\r\n\r\n\r\n', 'Website', 'https://bataras.com.my/'),
(9, 'Hong Fung Seafood Enterprise', 'hong.jpg', 'We\'re located in Penampang Plaza Grand Millennium area. Selling nicely vacuum-packed fresh frozen seafood: fish, prawn, squid, crab etc. Wet and dry seafood both available.', 'More about us', 'https://www.facebook.com/hongfungseafoodent/'),
(10, 'Hua Yang Seafood Inc', 'huay.jpg', 'Offering fresh frozen seafood and quality service across the GTA for over 20 years!', 'More about us', 'https://www.facebook.com/huayangseafood/'),
(12, 'CKS', 'CKS.png', 'seafood supplier', 'More about us', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
