-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 07:54 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_chain`
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
  `admin_image` mediumtext NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` mediumtext NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Yasser Dalouzi', 'admin', '123', 'admin.jpg', '077885221', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `customers_orders`
--

CREATE TABLE `customers_orders` (
  `order_id` int(11) NOT NULL,
  `marchant_id` int(11) NOT NULL,
  `due_amount` double NOT NULL,
  `order_date` date NOT NULL,
  `order_status` mediumtext NOT NULL,
  `reciever_name` text NOT NULL,
  `delivery_zone_id` int(11) NOT NULL,
  `delivery_address` mediumtext NOT NULL,
  `invoice_no` mediumtext NOT NULL,
  `reseller_gained` double NOT NULL,
  `order_list` text NOT NULL,
  `delivery_charge` double NOT NULL,
  `reciever_phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers_orders`
--

INSERT INTO `customers_orders` (`order_id`, `marchant_id`, `due_amount`, `order_date`, `order_status`, `reciever_name`, `delivery_zone_id`, `delivery_address`, `invoice_no`, `reseller_gained`, `order_list`, `delivery_charge`, `reciever_phone`) VALUES
(17, 2, 10000, '2020-09-16', 'failed', 'test', 1, 'test', 'test', 100, '', 100, ''),
(18, 2, 10000, '2021-01-16', 'delivered', 'test', 1, 'test', 'test', 100, '', 100, ''),
(27, 2, 10000, '2020-09-15', 'rejected', 'test', 1, 'sdfhsdf dfah sdfha , asdfasdfas', 'test', 100, '', 100, '01516185792'),
(30, 8, 505, '2020-11-05', 'delivered', 'fff', 0, 'fgadfgdsfgsdfgdsfg', '6706309986900', 100, '[\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"n/a\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 100.0,\n    \"sub_total\": 505.0,\n    \"var_id\": 4\n  }\n]', 50, '01516185792'),
(31, 8, 1020, '2020-10-18', 'delivered', 'test', 0, 'tesats', '6264251577800', 210, '[\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"159921359570371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 2,\n    \"reseller_gained_per_item\": 105.0,\n    \"reseller_total_gained\": 210.0,\n    \"sub_total\": 1020.0,\n    \"title\": \"testas title UPDATED\",\n    \"var_id\": 1\n  }\n]', 100, '44'),
(32, 8, 2915, '2020-10-21', 'pending', 'this is a test ', 0, 'asdfasdfasdf', '2365580998000', 800, '[\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1603142513unnamed.webp\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 38,\n    \"qty\": 2,\n    \"reseller_gained_per_item\": 400.0,\n    \"reseller_total_gained\": 800.0,\n    \"sub_total\": 2915.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 6\n  },\n  {\n    \"actual_unit_price\": 75.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 23,\n    \"qty\": 2,\n    \"reseller_gained_per_item\": 400.0,\n    \"reseller_total_gained\": 800.0,\n    \"sub_total\": 2915.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  },\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"159921359570371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 800.0,\n    \"reseller_total_gained\": 800.0,\n    \"sub_total\": 2915.0,\n    \"title\": \"testas title UPDATED\",\n    \"var_id\": 1\n  },\n  {\n    \"actual_unit_price\": 420.0,\n    \"color\": \"160079278170371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 24,\n    \"qty\": 3,\n    \"reseller_gained_per_item\": 266.6666666666667,\n    \"reseller_total_gained\": 800.0,\n    \"sub_total\": 2915.0,\n    \"title\": \"so\",\n    \"var_id\": 0\n  }\n]', 0, '015161855'),
(33, 8, 1265, '2020-10-21', 'pending', 'dd', 0, 'defdfd', '3076854955200', 515, '[\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 36,\n    \"qty\": 2,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 200.0,\n    \"sub_total\": 1265.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  },\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1603142513unnamed.webp\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 38,\n    \"qty\": 3,\n    \"reseller_gained_per_item\": 105.0,\n    \"reseller_total_gained\": 315.0,\n    \"sub_total\": 1265.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 6\n  }\n]', 0, '555'),
(34, 10, 1900, '2020-10-21', 'pending', 'tis is  a tesd', 0, 'cndnx', '200591633609416', 535, '[\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"159921359570371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 10,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 3,\n    \"reseller_gained_per_item\": 145.0,\n    \"reseller_total_gained\": 435.0,\n    \"sub_total\": 1900.0,\n    \"title\": \"testas title UPDATED\",\n    \"var_id\": 0\n  },\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1603142513unnamed.webp\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 10,\n    \"order_id\": 0,\n    \"product_id\": 38,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 100.0,\n    \"sub_total\": 1900.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 6\n  }\n]', 0, '0151689752'),
(35, 8, 1265, '2020-10-21', 'pending', 'fff', 0, 'asdfasdf', '4690029017400', 515, '[\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 36,\n    \"qty\": 2,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 200.0,\n    \"sub_total\": 1265.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  },\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1603142513unnamed.webp\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 38,\n    \"qty\": 3,\n    \"reseller_gained_per_item\": 105.0,\n    \"reseller_total_gained\": 315.0,\n    \"sub_total\": 1265.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 6\n  }\n]', 0, '454'),
(36, 10, 1900, '2020-10-21', 'pending', 'xjxj', 0, 'zxxxxx', '200782759348822', 535, '[\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"159921359570371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 10,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 3,\n    \"reseller_gained_per_item\": 145.0,\n    \"reseller_total_gained\": 435.0,\n    \"sub_total\": 1900.0,\n    \"title\": \"testas title UPDATED\",\n    \"var_id\": 0\n  },\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1603142513unnamed.webp\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 10,\n    \"order_id\": 0,\n    \"product_id\": 38,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 100.0,\n    \"sub_total\": 1900.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 6\n  }\n]', 0, '5888'),
(37, 12, 1030, '2020-10-22', 'pending', 'Thamina Omar Toma', 0, 'Barura,cumilla,Bangladesh', '78957874402483', 400, '[\n  {\n    \"actual_unit_price\": 75.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 12,\n    \"order_id\": 0,\n    \"product_id\": 23,\n    \"qty\": 3,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 300.0,\n    \"sub_total\": 1030.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  },\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"159921359570371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 12,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 100.0,\n    \"sub_total\": 1030.0,\n    \"title\": \"testas title UPDATED\",\n    \"var_id\": 1\n  }\n]', 0, '01521351362'),
(38, 12, 0, '2020-10-22', 'pending', 'Thamina Omar Toma', 0, 'Barura,cumilla,Bangladesh\n\n', '81737604846579', 0, '[]', 0, '01521351362'),
(39, 13, 168, '2020-10-22', 'pending', 'ytgg', 0, 'barura', '548579929480471', 18, '[\n  {\n    \"actual_unit_price\": 150.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 13,\n    \"order_id\": 0,\n    \"product_id\": 25,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 18.0,\n    \"reseller_total_gained\": 18.0,\n    \"sub_total\": 168.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  }\n]', 0, '01712024295'),
(40, 13, 76, '2020-10-22', 'pending', 'n', 0, 'zb', '548765614646650', 1, '[\n  {\n    \"actual_unit_price\": 75.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 13,\n    \"order_id\": 0,\n    \"product_id\": 23,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 1.0,\n    \"reseller_total_gained\": 1.0,\n    \"sub_total\": 76.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  }\n]', 0, '7'),
(41, 14, 540, '2020-10-23', 'delivered', 'shaiful', 0, 'dhaka', '75948004516340', 135, '[\n  {\n    \"actual_unit_price\": 405.0,\n    \"color\": \"159921359570371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 14,\n    \"order_id\": 0,\n    \"product_id\": 1,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 135.0,\n    \"reseller_total_gained\": 135.0,\n    \"sub_total\": 540.0,\n    \"title\": \"testas title UPDATED\",\n    \"var_id\": 1\n  }\n]', 100, '01864289077'),
(42, 14, 520, '2020-10-23', 'delivered', 'new', 0, 'Dhaka ', '76502064252170', 100, '[\n  {\n    \"actual_unit_price\": 420.0,\n    \"color\": \"160079278170371815_2520615741348830_8593665161938599936_o.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 14,\n    \"order_id\": 0,\n    \"product_id\": 22,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 100.0,\n    \"reseller_total_gained\": 100.0,\n    \"sub_total\": 520.0,\n    \"title\": \"so\",\n    \"var_id\": 0\n  }\n]', 60, '01864289077'),
(43, 15, 150, '2020-10-23', 'delivered', 'swapon', 0, 'H-13 R-15, Nikunja-2 ', '135404768763449', 75, '[\n  {\n    \"actual_unit_price\": 75.0,\n    \"color\": \"1601450739group .png\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 15,\n    \"order_id\": 0,\n    \"product_id\": 23,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 75.0,\n    \"reseller_total_gained\": 75.0,\n    \"sub_total\": 150.0,\n    \"title\": \"with  subcat \",\n    \"var_id\": 0\n  }\n]', 60, '01818400003'),
(53, 8, 550, '2021-01-11', 'delivered', 'Sujon', 0, 'test address .', '1356558398500', 50, '[\n  {\n    \"actual_unit_price\": 500.0,\n    \"color\": \"1610342479shammi-tshirt-image-unisex-mydesignation-.jpg\",\n    \"invoice_no\": \"invoice\",\n    \"marchant_id\": 8,\n    \"order_id\": 0,\n    \"product_id\": 43,\n    \"qty\": 1,\n    \"reseller_gained_per_item\": 50.0,\n    \"reseller_total_gained\": 50.0,\n    \"sub_total\": 550.0,\n    \"title\": \"shammi (black)\",\n    \"var_id\": 0\n  }\n]', 100, '12345678912');

-- --------------------------------------------------------

--
-- Table structure for table `marchants`
--

CREATE TABLE `marchants` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `image` text NOT NULL,
  `password` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL COMMENT 'o means ban 1 means active',
  `store_name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bkash` text DEFAULT NULL,
  `ucash` text DEFAULT NULL,
  `rocket` text DEFAULT NULL,
  `bank_details` text DEFAULT NULL,
  `nottification_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marchants`
--

INSERT INTO `marchants` (`id`, `name`, `phone`, `email`, `image`, `password`, `is_active`, `store_name`, `address`, `bkash`, `ucash`, `rocket`, `bank_details`, `nottification_id`) VALUES
(1, 'Thamina Toma', '454545', 'omartoma33@gmail.com', '160208358968899629_2377000772348787_6107532130152087552_n.jpg', 'fff', 1, NULL, NULL, NULL, NULL, NULL, NULL, '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(2, 'test seller ', '444', 'test@gmail.com', '1597919448Capture.PNG', 'testUPDATE', 0, 'test shop ', 'fasdfasdf', '', '', '', '', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(5, 'sss', '55', 'NULL', 'NULL', 'NULL', 3, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(6, 'sss', '515', 'NULL', 'NULL', 'NULL', 3, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(7, 'অমিত ', '+8801516185792', 'NULL', 'NULL', 'NULL', 3, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(8, 'test user  ', '01516185792', 'test1234@gmail.com', 'NULL', 'NULL', 1, 'testsho', 'test daddresaf sfka SDS df sdfasdf', '015164', 'TEST', '0000', 'NULL', '76618c3c-7adc-4cff-99b0-8aa32dad1aee'),
(9, 'sss dfghdf dfg sdf', '567', 'NULL', 'NULL', 'NULL', 3, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(10, 'Rahat Shovo', '01648009475', 'rahatshovo6666@gmail.com', 'NULL', 'NULL', 1, ' shovos store', NULL, '01516185792', 'TEST', '', '', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(11, 'Shakhawat Md. Shaheen', '01953470680', 'NULL', 'NULL', 'NULL', 3, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(12, 'Thamina Omar Toma', '01521351362', 'hhjjk@gmail.com\n\n\n\n', 'NULL', 'NULL', 1, '\n', NULL, 'hhhh\n\n\n\n\n\n\n\n', 'TEST', 'bhjj\n\n\n\n\n', 'ghhhh\nnnnnn\nnnnn\nnnnnn\njjjjj\n', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(13, 'BARURA HAJI NOWAB', '01712024295', 'tyu', 'NULL', 'NULL', 1, 'ty', 'jjhj\n', '36', 'TEST', '66', 'h\n', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(14, 'shaiful', '01864289077', 'bdexclusive45@gmail.com', 'NULL', 'NULL', 1, 'legend', 'dhaka', '01864289077', 'TEST', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(15, 'Yasin Arafat', '01799868168', 'yasinseu13@gmail.com', 'NULL', 'NULL', 1, 'Jack & Black ', 'H11,R-3,B-B,Nikunja-2 ', '01963910001', 'TEST', 'NULL', 'NULL', '1c095e95-ab43-4c73-8700-e7fa8c855b7e'),
(16, 'Sadek', '01610249496', 'NULL', 'NULL', 'NULL', 3, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'fa136800-70eb-4e2b-adff-74c69611525b');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(399) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE `misc` (
  `id` int(10) NOT NULL,
  `admin_perchant` double NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` mediumtext NOT NULL,
  `slider1` text NOT NULL,
  `slider2` text NOT NULL,
  `slider3` text NOT NULL,
  `f_page_top_banner` text NOT NULL,
  `f_page_bottom_banner` text NOT NULL,
  `s_page_bottom_banner` text NOT NULL,
  `f_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `misc`
--

INSERT INTO `misc` (`id`, `admin_perchant`, `term_link`, `term_desc`, `slider1`, `slider2`, `slider3`, `f_page_top_banner`, `f_page_bottom_banner`, `s_page_bottom_banner`, `f_id`, `s_id`, `t_id`) VALUES
(1, 20, 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>', '1599037890adv1-min.png', '1599037890bata_template_1-min.png', '1599037890shirt_col-min.png', '1610347304logo.jpeg', '1599037890bata_template_1-min.png', '1599037890shirt_col-min.png', 43, 43, 43);

-- --------------------------------------------------------

--
-- Table structure for table `notificaiton_db`
--

CREATE TABLE `notificaiton_db` (
  `id` int(11) NOT NULL,
  `marchant_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `descp` text NOT NULL,
  `date` date DEFAULT NULL,
  `nottification_type` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notificaiton_db`
--

INSERT INTO `notificaiton_db` (`id`, `marchant_id`, `title`, `descp`, `date`, `nottification_type`, `p_id`) VALUES
(1, 2, 'Your Order Recent Order Was Failed To Deliver', 'this is a test ', NULL, NULL, NULL),
(2, 2, 'Your Order Recent Order Was Failed To Deliver', 'this is a test failure ', NULL, NULL, NULL),
(3, -5, 'tt', 'fgdfg', '2020-10-24', -5, -5),
(4, 15, 'Your Order Was Rejected !!', 'Admin Rejected One Of  Your Recent Order . Order Id 47 please Contact Admin For More Details', '2020-10-24', -888, 47),
(5, 15, 'Your Order Was Accepted ', 'Admin Accepted Your Order !!!', '2020-10-24', -888, 46),
(6, 15, 'Your Recent Order Was Failed To Deliver', 'adsfg', '2020-10-24', -888, 46),
(7, 15, 'Congratulation !!!', 'Order Id 46 Was Successfully Delivered !!', '2020-10-24', -888, 46),
(8, 15, 'Your Order Was Rejected !!', 'Admin Rejected One Of  Your Recent Order . Order Id 49 please Contact Admin For More Details', '2020-10-30', -888, 49),
(9, 14, 'Your Order Was Accepted ', 'Admin Accepted Your Order !!!', '2020-10-30', -888, 45),
(10, 14, 'Your Recent Order Was Failed To Deliver', 'not recievd', '2020-10-30', -888, 45),
(11, 8, 'Your Order Was Accepted ', 'Admin Accepted Your Order !!!', '2021-01-11', -888, 53),
(12, 8, 'Congratulation !!!', 'Order Id 53 Was Successfully Delivered !!', '2021-01-11', -888, 53),
(13, -5, 'Hey ', 'akjlsndfkj', '2021-01-11', -5, -5);

-- --------------------------------------------------------

--
-- Table structure for table `offerdb`
--

CREATE TABLE `offerdb` (
  `offer_id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offerdb`
--

INSERT INTO `offerdb` (`offer_id`, `name`) VALUES
(1, 'Best Offer'),
(2, 'Sale');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(10) NOT NULL,
  `marchant_id` int(10) NOT NULL,
  `invoice_no` mediumtext NOT NULL,
  `qty` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` mediumtext NOT NULL,
  `sub_total` double NOT NULL,
  `var_id` int(11) NOT NULL,
  `reseller_total_gained` double NOT NULL,
  `actual_unit_price` double NOT NULL,
  `reseller_gained_per_item` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `marchant_id`, `invoice_no`, `qty`, `order_id`, `product_id`, `color`, `sub_total`, `var_id`, `reseller_total_gained`, `actual_unit_price`, `reseller_gained_per_item`) VALUES
(16, 2, 'xx', 3, 1, 1, 'white', 150, 1, 120, 0, 0),
(17, 2, 'xx45', 2, 1, 1, 'white', 150, 2, 0, 0, 0),
(18, 2, 'xx4', 1, 1, 1, 'white', 150, 3, 0, 0, 0),
(19, 2, 'xx3', 1, 1, 1, 'white', 150, 4, 0, 0, 0),
(20, 2, 'xx2', 3, 1, 1, 'white', 150, 1, 0, 0, 0),
(21, 2, 'xx12', 2, 1, 1, 'white', 150, 3, 0, 0, 0),
(22, 2, 'xx1', 2, 1, 1, 'white', 150, 3, 0, 0, 0),
(23, 2, 'test33', 2, 1, 1, 'white', 150, 2, 0, 0, 0),
(24, 2, 'test1', 2, 1, 1, 'white', 150, 2, 0, 0, 0),
(25, 2, 'test', 1, 27, 1, 'white', 550, 2, 100, 450, 0),
(26, 1, 'sdf', 1, 28, 1, 'n/a', 505, 1, 100, 405, 100),
(27, 1, '3453', 1, 29, 1, 'n/a', 505, 1, 100, 405, 100),
(28, 8, '6706309986900', 1, 30, 1, 'n/a', 505, 4, 100, 405, 100),
(29, 8, '6264251577800', 2, 31, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 1020, 1, 210, 405, 105),
(30, 8, '2365580998000', 2, 32, 38, '1603142513unnamed.webp', 2915, 6, 800, 150, 400),
(31, 8, '2365580998000', 2, 32, 23, '1601450739group .png', 2915, 0, 800, 75, 400),
(32, 8, '2365580998000', 1, 32, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 2915, 1, 800, 405, 800),
(33, 8, '2365580998000', 3, 32, 24, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 2915, 0, 800, 420, 266.66666666667),
(34, 8, '3076854955200', 2, 33, 36, '1601450739group .png', 1265, 0, 200, 150, 100),
(35, 8, '3076854955200', 3, 33, 38, '1603142513unnamed.webp', 1265, 6, 315, 150, 105),
(36, 10, '200591633609416', 3, 34, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 1900, 0, 435, 405, 145),
(37, 10, '200591633609416', 1, 34, 38, '1603142513unnamed.webp', 1900, 6, 100, 150, 100),
(38, 8, '4690029017400', 2, 35, 36, '1601450739group .png', 1265, 0, 200, 150, 100),
(39, 8, '4690029017400', 3, 35, 38, '1603142513unnamed.webp', 1265, 6, 315, 150, 105),
(40, 10, '200782759348822', 3, 36, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 1900, 0, 435, 405, 145),
(41, 10, '200782759348822', 1, 36, 38, '1603142513unnamed.webp', 1900, 6, 100, 150, 100),
(42, 12, '78957874402483', 3, 37, 23, '1601450739group .png', 1030, 0, 300, 75, 100),
(43, 12, '78957874402483', 1, 37, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 1030, 1, 100, 405, 100),
(44, 13, '548579929480471', 1, 39, 25, '1601450739group .png', 168, 0, 18, 150, 18),
(45, 13, '548765614646650', 1, 40, 23, '1601450739group .png', 76, 0, 1, 75, 1),
(46, 14, '75948004516340', 1, 41, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 540, 1, 135, 405, 135),
(47, 14, '76502064252170', 1, 42, 22, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 520, 0, 100, 420, 100),
(48, 15, '135404768763449', 1, 43, 23, '1601450739group .png', 150, 0, 75, 75, 75),
(49, 15, '135590398377649', 1, 44, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 505, 2, 100, 405, 100),
(50, 14, '82106344855397', 1, 45, 38, '1603142513unnamed.webp', 750, 6, 100, 150, 100),
(51, 14, '82106344855397', 1, 45, 24, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 750, 0, 80, 420, 80),
(52, 15, '176169883361492', 1, 46, 24, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 675, 0, 80, 420, 80),
(53, 15, '176169883361492', 1, 46, 23, '1601450739group .png', 675, 0, 100, 75, 100),
(54, 15, '243710225047811', 1, 47, 38, '1603142513unnamed.webp', 280, 6, 130, 150, 130),
(55, 15, '370311514206495', 1, 48, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 505, 1, 100, 405, 100),
(56, 15, '512833166690773', 1, 49, 22, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 890, 0, 20, 420, 20),
(57, 15, '512833166690773', 1, 49, 1, '159921359570371815_2520615741348830_8593665161938599936_o.jpg', 890, 1, 45, 405, 45),
(58, 14, '83785613650275', 1, 50, 22, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 1040, 0, 100, 420, 100),
(59, 14, '83785613650275', 1, 50, 37, '160079278170371815_2520615741348830_8593665161938599936_o.jpg', 1040, 0, 100, 420, 100),
(60, 15, '788934558796907', 1, 51, 39, '160348857467343536_2229440413819146_4414174035991068672_n.jpg', 1000, 0, 500, 500, 500),
(61, 8, '622790288588360', 1, 52, 21, '1600792559a1.png', 614, 0, 100, 120, 100),
(62, 8, '622790288588360', 1, 52, 41, '1604066761Screenshot (75).png', 614, 0, 100, 294, 100),
(63, 8, '1356558398500', 1, 53, 43, '1610342479shammi-tshirt-image-unisex-mydesignation-.jpg', 550, 0, 50, 500, 50);

-- --------------------------------------------------------

--
-- Table structure for table `payment_request`
--

CREATE TABLE `payment_request` (
  `id` int(11) NOT NULL,
  `marchant_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `requsted_amount` double NOT NULL,
  `method` text NOT NULL,
  `method_details` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_request`
--

INSERT INTO `payment_request` (`id`, `marchant_id`, `date`, `requsted_amount`, `method`, `method_details`, `status`) VALUES
(1, 1, '2020-09-12', 1500, 'bkash', '', 'pending'),
(2, 8, '2020-10-19', 240, 'BKASH', 'test', 'pending'),
(3, 8, '2020-10-19', 25, 'BKASH', 'test', 'pending'),
(4, 14, '2020-10-23', 100, 'BKASH', 'NULL', 'pending'),
(5, 15, '2020-10-23', 75, 'BKASH', 'NULL', 'pending'),
(6, 14, '2020-10-23', 129, 'BKASH', 'NULL', 'pending'),
(7, 14, '2020-10-25', 200, 'BKASH', 'NULL', 'pending'),
(8, 14, '2020-10-30', 230, 'BKASH', 'NULL', 'pending'),
(9, 14, '2020-11-03', 35, 'BKASH', 'NULL', 'pending'),
(10, 14, '2020-11-21', 35, 'BKASH', 'NULL', 'pending'),
(11, 14, '2020-12-05', 20, 'BKASH', 'NULL', 'pending'),
(12, 8, '2021-01-11', 300, 'BKASH', 'NULL', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `product_title` mediumtext NOT NULL,
  `product_img1` mediumtext NOT NULL,
  `product_img2` mediumtext NOT NULL,
  `product_img3` mediumtext NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `status` text NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `discount` double NOT NULL,
  `sugested_price` text NOT NULL,
  `sku` text NOT NULL,
  `warranty_policy` text NOT NULL,
  `tag` text NOT NULL,
  `product_video` text NOT NULL,
  `product_material` text NOT NULL,
  `color` text NOT NULL,
  `sold_qty` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`, `status`, `sub_cat_id`, `discount`, `sugested_price`, `sku`, `warranty_policy`, `tag`, `product_video`, `product_material`, `color`, `sold_qty`, `offer_id`, `banner_id`) VALUES
(1, 7, '2020-09-03', 'testas title UPDATED', '159921359570371815_2520615741348830_8593665161938599936_o.jpg', '1599664147illustration.png', 'NULL', 450, 'ce the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'TESXT', 'available', 0, 10, '550', 'XL-12 XXL-13 S-1', '4 year warranty ', 'REE', 'fasdfasdfasdfasf', '100% cotton ', 'RED', 4, 2, 0),
(21, 4, '2020-09-22', 'this fir test ', '1600792559a1.png', '160079255968899629_2377000772348787_6107532130152087552_n.jpg', 'NULL', 120, 'sadfasdf', 'fsadf', 'available', 0, 0, '150', 'gg4gt', 'asdfasdf', 'df', 'asdfasdf', 'asdfas', 'Black', 0, 1, 0),
(22, 0, '2020-09-22', 'so', '160079278170371815_2520615741348830_8593665161938599936_o.jpg', '160079278167343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 420, 'asdf', 'sdfasd', 'available', 0, 0, '450', 'dd', 'adsf', 'sdf', 'ff', 'fas', 'Yellow', 1, 0, 0),
(23, 5, '2020-09-30', 'with  subcat ', '1601450739group .png', 'NULL', 'NULL', 150, 'asdfasdf', 'asdfasdf', 'available', 0, 50, '200-250', 'asdf', 'fasdfasdf', 'asdf', 'asdfasd', 'asdfasdf', '29', 57, 0, 0),
(24, 0, '2020-09-22', 'so', '160079278170371815_2520615741348830_8593665161938599936_o.jpg', '160079278167343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 420, 'asdf', 'sdfasd', 'available', 0, 0, '450', 'dd', 'adsf', 'sdf', 'ff', 'fas', 'Yellow', 1, 0, 2),
(25, 5, '2020-10-15', 'with  subcat ', '1601450739group .png', 'NULL', 'NULL', 150, 'asdfasdf', 'asdfasdf', 'available', 0, 0, '200', 'asdf', 'fasdfasdf', 'asdf', 'asdfasd', 'asdfasdf', '29', 5, 0, 1),
(26, 7, '2020-09-03', 'testas title UPDATED', '159921359570371815_2520615741348830_8593665161938599936_o.jpg', '1599664147illustration.png', 'NULL', 450, 'ce the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'TESXT', 'available', 0, 10, '550', 'XL-12 XXL-13 S-1', '4 year warranty ', 'REE', 'fasdfasdfasdfasf', '100% cotton ', 'RED', 0, 0, 0),
(27, 7, '2020-09-22', 'this fir test ', '1600792295a1.png', '160079229568899629_2377000772348787_6107532130152087552_n.jpg', 'NULL', 120, 'sadfasdf', 'fsadf', 'available', 0, 0, '150', 'gg4gt', 'asdfasdf', 'df', 'asdfasdf', 'asdfas', 'Black', 0, 0, 0),
(28, 4, '2020-09-22', 'this fir test ', '1600792559a1.png', '160079255968899629_2377000772348787_6107532130152087552_n.jpg', 'NULL', 120, 'sadfasdf', 'fsadf', 'available', 0, 0, '150', 'gg4gt', 'asdfasdf', 'df', 'asdfasdf', 'asdfas', 'Black', 0, 0, 0),
(29, 0, '2020-09-22', 'so', '160079278170371815_2520615741348830_8593665161938599936_o.jpg', '160079278167343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 420, 'asdf', 'sdfasd', 'available', 0, 0, '450', 'dd', 'adsf', 'sdf', 'ff', 'fas', 'Yellow', 0, 1, 0),
(30, 5, '2020-09-30', 'with  subcat ', '1601450739group .png', 'NULL', 'NULL', 150, 'asdfasdf', 'asdfasdf', 'available', 0, 0, '200', 'asdf', 'fasdfasdf', 'asdf', 'asdfasd', 'asdfasdf', '29', 5, 0, 0),
(31, 7, '2020-09-22', 'so', '160079278170371815_2520615741348830_8593665161938599936_o.jpg', '160079278167343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 420, 'asdf', 'sdfasd', 'available', 29, 0, '450', 'dd', 'adsf', 'sdf', 'ff', 'fas', 'Yellow', 0, 0, 0),
(32, 5, '2020-09-30', 'with  subcat ', '1601450739group .png', 'NULL', 'NULL', 150, 'asdfasdf', 'asdfasdf', 'available', 0, 0, '200', 'asdf', 'fasdfasdf', 'asdf', 'asdfasd', 'asdfasdf', '29', 5, 0, 0),
(34, 7, '2020-09-22', 'this fir test ', '1600792559a1.png', '160079255968899629_2377000772348787_6107532130152087552_n.jpg', 'NULL', 120, 'sadfasdf', 'fsadf', 'available', 33, 0, '150', 'gg4gt', 'asdfasdf', 'df', 'asdfasdf', 'asdfas', 'Black', 0, 0, 0),
(35, 0, '2020-09-22', 'so', '160079278170371815_2520615741348830_8593665161938599936_o.jpg', '160079278167343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 420, 'asdf', 'sdfasd', 'available', 0, 0, '450', 'dd', 'adsf', 'sdf', 'ff', 'fas', 'Yellow', 0, 0, 0),
(36, 5, '2020-09-30', 'with  subcat ', '1601450739group .png', 'NULL', 'NULL', 150, 'asdfasdf', 'asdfasdf', 'available', 0, 0, '200', 'asdf', 'fasdfasdf', 'asdf', 'asdfasd', 'asdfasdf', '29', 5, 0, 0),
(37, 7, '2020-09-22', 'so', '160079278170371815_2520615741348830_8593665161938599936_o.jpg', '160079278167343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 420, 'asdf', 'sdfasd', 'available', 28, 0, '450-456', 'dd', 'adsf', 'sdf', 'ff', 'fas', 'Yellow', 0, 0, 0),
(38, 5, '2020-09-30', 'with  subcat ', '1603142513unnamed.webp', 'NULL', 'NULL', 150, 'asdfasdf', 'asdfasdf', 'available', 0, 0, '200-250', 'asdf', 'fasdfasdf', 'asdf', 'asdfasd', 'asdfasdf', '29', 5, 0, 0),
(39, 6, '2020-10-23', 'this is  test from web ', '160348857467343536_2229440413819146_4414174035991068672_n.jpg', 'NULL', 'NULL', 500, 'test test is is ', 'd , df ', 'available', 0, 0, '600-650', '5565', '1 Year Warranty ', 'tes ', 'eee.com', 'tet ', '', 0, 0, 0),
(40, 5, '2020-10-23', 'this is a test (YT)', '1603489385Capture.PNG', '1603489532Capture.PNG', 'NULL', 56, 'dfdff', 'sdfas', 'available', 30, 0, '60-1000', '55', 'asdf', 'df', 'https://www.youtube.com/watch?v=92S4zgXN17o&list=PL2_aWCzGMAwI3W_JlcBbtYTwiQSsOTa6P&index=1', 'sdfas', '', 0, 0, 0),
(41, 4, '2020-10-30', 'new ', '1604066761Screenshot (75).png', 'NULL', 'NULL', 350, '', 'new', 'available', 0, 16, '380-390', 'sb24', '', 'new', '', '', 'white', 0, 0, 0),
(42, 6, '2020-10-30', 'new product', '1604067208Screenshot (20).png', 'NULL', 'NULL', 400, 'new product', 'product', 'available', 0, 0, '450 - 500', 'sb26', '', 'product', '', '', 'white', 0, 0, 0),
(43, 4, '2021-01-11', 'shammi (black)', '1610342479shammi-tshirt-image-unisex-mydesignation-.jpg', 'NULL', 'NULL', 500, 'Body fabrics: 100% cotton s/J GSM: 175 from 185 Neck Rib: 100% cotton Stitching: top stitch 2 needle bottom+sleeve hem Stitch color: DTM Print: Rubber paint Size- M, L, XL,XXL M-Length(দৈর্ঘ্য) 28\" chest(বুকে) 39\" L-Length(দৈর্ঘ্য) 29\" chest(বুকে) 41\" XL-Length(দৈর্ঘ্য) 31\" chest(বুকে) 43\" XXL-Length(দৈর্ঘ্য) 32\" chest(বুকে) 45', 'black , tshirt ', 'available', 0, 0, '520-600', '0X2DA98', '', 'black , tshirt ', '', '170 GSM\r\n', 'BLACK', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` mediumtext NOT NULL,
  `p_cat_image` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Men\'s Fashion', 'yes', 'image3.jpg'),
(5, 'Women\'s Fashion', 'yes', 'image2.jpg'),
(6, 'Gift\'s Item', 'yes', 'sweater.jpg'),
(7, 'Gadget & Electronic', 'yes', 'jacket.jpg'),
(9, 'Bags', 'yes', 'j.jpg'),
(10, 'Sunglass', 'yes', ''),
(11, 'Shoe\'s', 'yes', '0P8A3457-e1572538462227.jpg'),
(12, 'grocery', 'yes', 'Screenshot (72).png');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

CREATE TABLE `product_sub_categories` (
  `sub_cat_id` int(10) NOT NULL,
  `sub_cat_title` mediumtext NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`sub_cat_id`, `sub_cat_title`, `parent_cat_id`, `image`) VALUES
(28, 'testasts', 7, ''),
(29, 'this is test ', 7, '68899629_2377000772348787_6107532130152087552_n.jpg'),
(30, 'Shari', 5, ''),
(31, 'test bag', 9, ''),
(32, 'test again', 9, ''),
(33, 'Mobile', 7, 'Capture.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_db`
--

CREATE TABLE `ticket_db` (
  `id` int(11) NOT NULL,
  `descp` text NOT NULL,
  `image` text NOT NULL,
  `marchant_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `answer` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_db`
--

INSERT INTO `ticket_db` (`id`, `descp`, `image`, `marchant_id`, `date`, `answer`, `status`) VALUES
(1, 'tes123456666', 'gmail..com', 8, '2020-09-12', '', ''),
(2, 'dfgdfgdsfgdsfgsdfgdsfgdsfg', 'null', 8, '2020-09-12', '', ''),
(5, 'this is a test', 'null', 8, '2020-09-12', '', ''),
(8, 'dfgdfgdsfgdsfgsdfgdsfgdsfg', '1599904209myfile.jpg', 8, '2020-09-12', '', ''),
(9, 'ttttasdfasa', '1599904413myfile.jpg', 8, '2020-09-12', 'jjj', 'answered'),
(10, 'fasfasdfasdfasdf', '160323128668899629_2377000772348787_6107532130152087552_n.jpg', 8, '2020-10-12', 'Still Not Answered', 'pending'),
(11, 'fasfasdfasdfasdf', '1603231313xxxxxxxxxxxxxxxxxxxxx.jpg', 8, '2020-10-12', 'Still Not Answered', 'pending'),
(12, 'fasfasdfasdfasdf', '1603231602xxxxxxxxxxxxxxxxxxxxx.jpg', 8, '2020-10-12', 'Still Not Answered', 'pending'),
(13, 'fasfasdfasdfasdf', '1603231641ppppppppppppppppppppppp.jpg', 8, '2020-10-12', 'anfsdf', 'answered'),
(14, 'there is some  problem  plzz', 'NULL', 10, '2020-10-22', 'Still Not Answered', 'pending'),
(15, 'check this issue ', '1603394013cropped8043513742477841170.jpg', 15, '2020-10-23', 'ok solved', 'answered'),
(16, 'complain ', '1603394076cropped7040244978825657910.jpg', 15, '2020-10-23', 'pending', 'answered'),
(17, 'fasdfs', '1610346834cropped5075638111847367642.jpg', 8, '2021-01-11', 'Still Not Answered', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `marchant_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_type` text NOT NULL,
  `payment_date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `invoice_no` text NOT NULL,
  `admin_gained` double NOT NULL,
  `reseller_gained` double NOT NULL,
  `var_id` int(11) NOT NULL,
  `payment_method` text NOT NULL,
  `is_deducted` text NOT NULL,
  `payment_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `marchant_id`, `amount`, `payment_type`, `payment_date`, `product_id`, `quantity`, `invoice_no`, `admin_gained`, `reseller_gained`, `var_id`, `payment_method`, `is_deducted`, `payment_details`) VALUES
(81, 1, 150, 'debit', '0000-00-00', 3, 1, 'xx', 0, 5, 1, 'bkash', '', ''),
(82, 1, 150, 'debit', '0000-00-00', 6, 1, 'xx', 0, 5, 1, 'bkash', '', ''),
(84, 2, 150, 'debit', '0000-00-00', 4, 2, 'xx', 0, 0, 1, 'bkash', '', ''),
(88, 1, 150, 'debit', '0000-00-00', 6, 1, 'xx', 0, 5, 1, 'bkash', '', ''),
(91, 1, 150, 'debit', '0000-00-00', 1, 3, 'xx', 147, 3, 1, 'bkash', '', ''),
(92, 1, 150, 'debit', '0000-00-00', 2, 2, 'xx', 147, 3, 1, 'bkash', '', ''),
(93, 1, 150, 'debit', '0000-00-00', 3, 1, 'xx', 147, 3, 1, 'bkash', '', ''),
(94, 1, 150, 'debit', '0000-00-00', 6, 1, 'xx', 147, 3, 1, 'bkash', '', ''),
(95, 1, 150, 'debit', '0000-00-00', 5, 3, 'xx', 147, 3, 1, 'bkash', '', ''),
(96, 2, 150, 'debit', '0000-00-00', 4, 2, 'xx', 147, 3, 1, 'bkash', '', ''),
(98, 1, 150, 'debit', '0000-00-00', 1, 3, 'xx', 3, 147, 1, 'bkash', '', ''),
(99, 1, 150, 'debit', '0000-00-00', 2, 2, 'xx', 3, 147, 1, 'bkash', '', ''),
(100, 1, 150, 'credit', '0000-00-00', 3, 1, 'xx', 3, 147, 1, 'bkash', '', ''),
(101, 1, 150, 'debit', '0000-00-00', 6, 1, 'xx', 3, 147, 1, 'bkash', '', ''),
(102, 1, 150, 'debit', '0000-00-00', 5, 3, 'xx', 3, 147, 1, 'bkash', '', ''),
(103, 1, 150, 'debit', '0000-00-00', 4, 2, 'xx', 3, 147, 1, 'bkash', '', ''),
(104, 2, 150, 'debit', '0000-00-00', 1, 3, 'xx', 3, 147, 1, 'bkash', '', ''),
(105, 1, 150, 'debit', '0000-00-00', 2, 2, 'xx', 3, 147, 1, 'bkash', '', ''),
(106, 1, 150, 'debit', '0000-00-00', 3, 1, 'xx', 3, 147, 1, 'bkash', '', ''),
(107, 1, 150, 'debit', '0000-00-00', 6, 1, 'xx', 3, 147, 1, 'bkash', '', ''),
(108, 1, 150, 'debit', '0000-00-00', 5, 3, 'xx', 3, 147, 1, 'bkash', '', ''),
(109, 2, 150, 'debit', '0000-00-00', 4, 2, 'xx', 3, 147, 1, 'bkash', '', ''),
(110, 1, 150, 'debit', '0000-00-00', 1, 3, 'xx', 3, 147, 1, 'bkash', '', ''),
(111, 1, 150, 'debit', '0000-00-00', 2, 2, 'xx', 3, 147, 1, 'bkash', '', ''),
(112, 1, 150, 'debit', '0000-00-00', 3, 1, 'xx', 3, 147, 1, 'bkash', '', ''),
(113, 1, 150, 'debit', '0000-00-00', 6, 1, 'xx', 3, 147, 1, 'bkash', '', ''),
(114, 1, 150, 'debit', '0000-00-00', 5, 3, 'xx', 3, 147, 1, 'bkash', '', ''),
(115, 1, 150, 'debit', '0000-00-00', 4, 2, 'xx', 3, 147, 1, 'bkash', '', ''),
(123, 2, 550, 'debit', '2020-09-21', 1, 1, 'test', 450, 100, 0, '', '', ''),
(124, 1, 54, 'debit', '2020-10-17', 0, 0, 'debited', 0, 0, 0, '', 'no', 'given your money '),
(125, 1, -10, 'credit', '2020-10-17', 0, 0, 'credited', 0, 0, 0, '', 'true', 'taken'),
(126, 1, 100, 'credit', '2020-10-17', 0, 0, 'credited', 0, 0, 0, '', 'no', 'withdraw via bkash '),
(127, 8, 505, 'debit', '2020-10-17', 1, 1, '6706309986900', 405, 100, 0, '', '', ''),
(129, 8, -30, 'credit', '2020-10-17', 0, 0, 'credited', 0, -30, 0, '', 'true', 'some thing went wrong so we deucted '),
(133, 8, -20, 'credit', '2020-10-17', 0, 0, 'withdrawed', 0, -20, 0, '', 'no', 'withdraw'),
(134, 8, 10, 'debit', '2020-10-17', 0, 0, 'Balance Added', 0, 10, 0, '', 'no', 'Balance was Given '),
(135, 8, 1020, 'debit', '2020-10-18', 1, 2, '6264251577800', 810, 210, 0, '', '', ''),
(136, 15, 150, 'debit', '2020-10-22', 23, 1, '135404768763449', 75, 75, 0, '', '', ''),
(137, 14, 520, 'debit', '2020-10-22', 22, 1, '76502064252170', 420, 100, 0, '', '', ''),
(138, 14, 540, 'debit', '2020-10-22', 1, 1, '75948004516340', 405, 135, 0, '', '', ''),
(139, 15, 675, 'debit', '2020-10-24', 24, 1, '176169883361492', 420, 80, 0, '', '', ''),
(140, 15, 675, 'debit', '2020-10-24', 23, 1, '176169883361492', 75, 100, 0, '', '', ''),
(141, 14, -230, 'credit', '2020-10-30', 0, 0, 'withdrawed', 0, -230, 0, '', 'no', 'complete'),
(142, 14, 35, 'debit', '2020-10-30', 0, 0, 'Balance Added', 0, 35, 0, '', 'no', ''),
(143, 16, 0, 'credit', '2021-01-03', 0, 0, 'withdrawed', 0, 0, 0, '', 'no', ''),
(144, 8, 550, 'debit', '2021-01-11', 43, 1, '1356558398500', 500, 50, 0, '', '', ''),
(145, 8, -300, 'credit', '2021-01-11', 0, 0, 'withdrawed', 0, -300, 0, '', 'no', 'withdrawed'),
(146, 8, 10, 'debit', '2021-01-11', 0, 0, 'Balance Added', 0, 10, 0, '', 'no', 'Bonus For Performance');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(399) NOT NULL,
  `email` varchar(399) NOT NULL,
  `password` varchar(399) NOT NULL,
  `image` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `variaton_db`
--

CREATE TABLE `variaton_db` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `qty` int(11) NOT NULL,
  `sell_qty` int(11) NOT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variaton_db`
--

INSERT INTO `variaton_db` (`id`, `product_id`, `name`, `qty`, `sell_qty`, `last_updated`) VALUES
(1, 1, 'XXL', 9, 3, '2020-09-04'),
(2, 1, 'M', 100, 0, '2020-09-04'),
(3, 1, 'S', 123, 0, '2020-09-08'),
(4, 1, 'XL', 3433, 1, '2020-09-09'),
(5, 20, 'XL', 12, 0, '2020-09-22'),
(6, 38, 'TEST', 12, 0, '2020-10-21'),
(7, 42, 'XL', 12, 0, '2020-10-30'),
(8, 42, 'XXL', 13, 0, '2020-10-30'),
(9, 42, 's', 16, 0, '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) NOT NULL,
  `marchant_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `marchant_id`, `date`, `image`, `name`) VALUES
(2, 2, '0000-00-00', 'dddd.jpg', 'tsesa '),
(3, 8, '2020-10-19', 'NULL', 'test '),
(4, 8, '2020-10-19', '1603128578cropped3385107725376074263.jpg', 'with image '),
(5, 13, '2020-10-22', '1603379950cropped8912061002747975712.jpg', 'Demo\n'),
(6, 13, '2020-10-22', '1603380468cropped4603850417376785831.jpg', 'warning ');

-- --------------------------------------------------------

--
-- Table structure for table `youtubelist`
--

CREATE TABLE `youtubelist` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `yt_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtubelist`
--

INSERT INTO `youtubelist` (`id`, `title`, `link`, `yt_id`) VALUES
(2, 'fff', 'vvvv', 'vvv'),
(3, 'ggg', 'gfadfg', 'sdfsdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customers_orders`
--
ALTER TABLE `customers_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `marchants`
--
ALTER TABLE `marchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misc`
--
ALTER TABLE `misc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificaiton_db`
--
ALTER TABLE `notificaiton_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerdb`
--
ALTER TABLE `offerdb`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_request`
--
ALTER TABLE `payment_request`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `ticket_db`
--
ALTER TABLE `ticket_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variaton_db`
--
ALTER TABLE `variaton_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtubelist`
--
ALTER TABLE `youtubelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers_orders`
--
ALTER TABLE `customers_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `marchants`
--
ALTER TABLE `marchants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `misc`
--
ALTER TABLE `misc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notificaiton_db`
--
ALTER TABLE `notificaiton_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offerdb`
--
ALTER TABLE `offerdb`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payment_request`
--
ALTER TABLE `payment_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  MODIFY `sub_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ticket_db`
--
ALTER TABLE `ticket_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variaton_db`
--
ALTER TABLE `variaton_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `youtubelist`
--
ALTER TABLE `youtubelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
