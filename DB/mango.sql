-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 08:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mango`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_orderdetails`
--

CREATE TABLE `admin_orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kg` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_orderdetails`
--

INSERT INTO `admin_orderdetails` (`id`, `product_id`, `order`, `product`, `price`, `qty`, `kg`, `total`, `created_at`, `updated_at`) VALUES
(1, '3', '1', 'Mr. Maleq', '444', '1', 0, '444', '2020-05-16 09:45:40', '2020-05-16 09:45:40'),
(2, '4', '1', 'খিরসাপাতি ২০ কেজি', '1600', '3', 0, '4800', '2020-05-16 09:45:40', '2020-05-16 09:45:40'),
(3, '2384347', '2', 'Saiful Haque', '500', '7', 0, '3500', '2020-05-16 10:00:28', '2020-05-16 10:00:28'),
(4, '3', '3', 'Mr. Maleq', '444', '4', 16, '1776', '2020-05-16 18:18:59', '2020-05-16 18:18:59'),
(5, '4', '3', 'খিরসাপাতি ২০ কেজি', '1600', '6', 120, '9600', '2020-05-16 18:18:59', '2020-05-16 18:18:59'),
(6, '2', '4', 'খিরসাপাতি ২৫ কেজি', '1800', '4', 100, '7200', '2020-05-16 18:31:51', '2020-05-16 18:31:51'),
(7, '4', '4', 'খিরসাপাতি ২০ কেজি', '1600', '4', 80, '6400', '2020-05-16 18:31:51', '2020-05-16 18:31:51'),
(8, '3', '5', 'Mr. Maleq', '444', '3', 12, '1332', '2020-05-16 19:01:22', '2020-05-16 19:01:22'),
(9, '4', '5', 'খিরসাপাতি ২০ কেজি', '1600', '4', 80, '6400', '2020-05-16 19:01:22', '2020-05-16 19:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_orders`
--

CREATE TABLE `admin_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalkg` int(11) NOT NULL,
  `shipcost` int(11) NOT NULL,
  `packcost` int(11) NOT NULL,
  `status_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_orders`
--

INSERT INTO `admin_orders` (`id`, `invoice`, `customer`, `shipping`, `total`, `payment`, `qty`, `totalkg`, `shipcost`, `packcost`, `status_type`, `created_at`, `updated_at`) VALUES
(1, '87237', '5', '5', '6396', '6396', '4', 0, 0, 0, 0, '2020-05-16 09:45:39', '2020-05-16 09:45:39'),
(2, '73503', '7', '6', '7280', '7280', '7', 0, 0, 0, 0, '2020-05-16 10:00:28', '2020-05-16 16:18:32'),
(3, '69170', '4', '8', '13824', '13824', '10', 136, 0, 0, 0, '2020-05-16 18:18:59', '2020-05-16 18:18:59'),
(4, '97959', '6', '9', '16840', '16840', '8', 180, 0, 0, 0, '2020-05-16 18:31:51', '2020-05-16 18:31:51'),
(5, '51769', '6', '10', '9388', '9388', '7', 92, 1380, 276, 0, '2020-05-16 19:01:22', '2020-05-16 19:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_payments`
--

CREATE TABLE `admin_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_payments`
--

INSERT INTO `admin_payments` (`id`, `order_id`, `pay_type`, `amount`, `trxid`, `send_no`, `created_at`, `updated_at`) VALUES
(1, '1', 'Bkash', '6396', 'rrrrrrr', '1318712782', '2020-05-16 09:45:40', '2020-05-16 09:45:40'),
(2, '2', 'Nagad', '7280', '4576rgffv', '1318712782', '2020-05-16 10:00:28', '2020-05-16 10:00:28'),
(3, '3', 'Rocket', '13824', 'efkjer734', '01318712782', '2020-05-16 18:18:59', '2020-05-16 18:18:59'),
(4, '4', 'Nagad', '16840', '4576rgffv', '1318712782', '2020-05-16 18:31:51', '2020-05-16 18:31:51'),
(5, '5', 'Rocket', '9388', '4576rgffv', '1318712782', '2020-05-16 19:01:22', '2020-05-16 19:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_shippings`
--

CREATE TABLE `admin_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_shippings`
--

INSERT INTO `admin_shippings` (`id`, `name`, `email`, `phone`, `division`, `district`, `courier`, `address`, `created_at`, `updated_at`) VALUES
(5, 'Nurul Islam Sayeed', 'abu.sayeed.diu@gmail.com', '01798493171', 'Rajshahi', 'Joypurhat', 'S.A.Paribahan', 'mirpur-13 block-B Road-4 house-28', '2020-05-16 08:07:21', '2020-05-16 08:07:21'),
(6, 'Nurul Islam Sayeed', 'abu.sayeed.diu@gmail.com', '01318712782', 'Rajshahi', 'Natore', 'S.A.Paribahan', 'mirpur-13 block-B Road-4 house-28', '2020-05-16 10:00:13', '2020-05-16 10:00:13'),
(7, 'Nurul Islam Sayeed', 'abu.sayeed.diu@gmail.com', '01798493171', 'Dhaka', 'Joypurhat', 'S.A.Paribahan', 'mirpur-13 block-B Road-4 house-28', '2020-05-16 10:04:24', '2020-05-16 10:04:24'),
(8, 'Nurul Islam Sayeed', 'abu.sayeed.diu@gmail.com', '01318712782', 'Dhaka', 'Pabna', 'Sundarban Courier', 'mirpur-13 block-B Road-4 house-28', '2020-05-16 18:18:43', '2020-05-16 18:18:43'),
(9, 'Hello World', NULL, '01318712782', 'Rajshahi', 'Rajshahi', 'S.A.Paribahan', 'mirpur-13 block-B Road-4 house-28', '2020-05-16 18:28:57', '2020-05-16 18:28:57'),
(10, 'Nurul Islam Sayeed', 'abu.sayeed.diu@gmail.com', '01798493171', 'Rajshahi', 'Natore', 'Sundarban Courier', 'mirpur-13 block-B Road-4 house-28', '2020-05-16 19:01:09', '2020-05-16 19:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'ক্ষিরসাপাতি', '2020-05-12 04:20:48', '2020-05-13 17:22:19'),
(2, 'ল্যাংড়া', '2020-05-12 04:30:01', '2020-05-13 17:21:40'),
(3, 'গোপালভোগ', '2020-05-12 04:58:52', '2020-05-13 17:22:33'),
(4, 'ফজলি', '2020-05-13 17:22:44', '2020-05-13 17:22:44'),
(5, 'আম্রপালি', '2020-05-13 17:22:56', '2020-05-13 17:22:56'),
(6, 'হিমসাগর', '2020-05-13 17:23:29', '2020-05-13 17:23:29'),
(7, 'কাচামিঠা', '2020-05-13 17:23:49', '2020-05-13 17:23:49'),
(8, 'লিচু', '2020-05-13 17:24:00', '2020-05-13 17:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` int(255) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `password`, `status`, `type`, `free`, `free1`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 555, '$2y$10$hJ8g7HIgvVe1.OqBSZDky.yzRYCOlhJoRjd2OBdohenHBsZQDhmAi', '1', '1', NULL, NULL, '2020-05-11 09:39:45', '2020-05-13 09:20:17'),
(3, 'Sayeed Telecom', 1949384257, '$2y$10$rwDrxXMQrPNRoF2kEob3luZoE6Nym/7fgohJv6kmasmJAKxoxcQJC', '1', '2', NULL, NULL, '2020-05-11 09:41:10', '2020-05-11 09:41:10'),
(6, 'Mr. Maleq', 1670078232, '$2y$10$9DIEu8tgGq4AHmQUwqjTCeNAhUbYLVtIRJUoTwzlCfTr1ZZ1HWRPi', '1', '2', NULL, NULL, '2020-05-11 10:40:41', '2020-05-11 10:40:41'),
(7, 'Nurul Islam Sayeed', 1700000000, '$2y$10$LMVjY/78Nl63zuOpC7LpuO/7RfXbeO0JU5iehZI6IWZiS5aUz7oKK', '1', '2', NULL, NULL, '2020-05-13 09:38:16', '2020-05-13 09:38:16'),
(8, 'Nurul Islam Sayeed', 1670078231, '$2y$10$O9FgALV/UfStVkT.aZ5HsOkQkQgmM2RwSVY9vVPQCtObQMXaQoGl.', '1', '2', NULL, NULL, '2020-05-15 17:14:05', '2020-05-15 17:14:05'),
(9, 'Nurul Islam Sayeed', 1670078233, '$2y$10$AsmEDaMpDKSIvOfrZo9Dp.HkgyowxSHTQtT7xcccLd9LVRcHIcaG6', '1', '2', NULL, NULL, '2020-05-17 09:38:39', '2020-05-17 09:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_10_223221_create_customers_table', 1),
(2, '2020_05_10_224500_create_sliders_table', 2),
(3, '2020_05_12_101439_create_categories_table', 3),
(4, '2020_05_12_111309_create_products_table', 4),
(5, '2020_05_13_132030_create_packages_table', 5),
(6, '2020_05_16_001240_create_admin_orders_table', 6),
(7, '2020_05_16_001251_create_admin_orderdetails_table', 6),
(8, '2020_05_16_001316_create_admin_shippings_table', 6),
(9, '2020_05_16_001351_create_admin_payments_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `weight`, `one`, `two`, `three`, `created_at`, `updated_at`) VALUES
(383443, 'Family', '1000', '50', 'Mollika 20 KG', 'Langra  25 KG', 'Gopalvog 5 KG', '2020-05-13 07:46:18', '2020-05-17 18:27:32'),
(1394873, 'Official', '100', '20', 'Mollika 10 KG', 'Langra  5 KG', 'Gopalvog 5 KG', '2020-05-13 07:44:55', '2020-05-17 18:28:48'),
(2384347, 'Small Family', '500', '30', 'Mollika 10 KG', 'Langra  15 KG', 'Gopalvog 5 KG', '2020-05-13 07:45:45', '2020-05-17 18:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `name`, `price`, `weight`, `size`, `stock`, `details`, `image`, `free`, `created_at`, `updated_at`) VALUES
(2, '1', 'খিরসাপাতি ২৫ কেজি', '1800', '25', '200 গ্রাম প্রতিটি আম', 'Upcoming', 'খিরসাপাতি অনেক মজার আম।', 'public/image/5ebc3278d2cf6download.jpg', NULL, '2020-05-12 05:30:11', '2020-05-13 17:46:32'),
(3, '5', 'আম্রপালি 40 কেজি', '2200', '40', '140 by 500', 'Avaible', 'A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.', 'public/image/5ebacaffa96b4IMG_20200427_174243.jpg', NULL, '2020-05-12 05:48:17', '2020-05-17 17:59:08'),
(4, '1', 'খিরসাপাতি ২০ কেজি', '1600', '20', '200 গ্রাম প্রতিটি আম', 'Upcoming', 'সরাসরি রাজশাহী থেকে আমরা আপনার বাসাই আম পোচ্ছে দিচ্ছি।', 'public/image/5ebc30493f109d558081bfb95a6ea2369669381eb8403-5c4c69d801a0b.webp', NULL, '2020-05-12 16:32:22', '2020-05-13 17:40:49'),
(5, '8', 'লিচু  100 টি', '250', '0', 'বিভিন্ন সাইজের আছে', 'Upcoming', 'Lychee is the sole member of the genus Litchi in the soapberry family, Sapindaceae. It is a tropical tree native to the Guangdong and Fujian provinces of southeastern China, where cultivation is documented from the 11th century', 'public/image/5ec17d312393c3582212538_97aee199c2_b.jpg', NULL, '2020-05-17 18:06:41', '2020-05-17 18:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `header`, `title`, `details`, `image`, `created_at`, `updated_at`) VALUES
(1, 'কেন আমাদের আম কিনবেন ?', 'ঘরে বসেই আম কিনুন', 'পাকা আমের স্বাদ যেমন ভালো তেমনি গুনেও অসাধারন।চারিদিকে আমের মো মো গন্ধ। বাজারের ফলের দোকান গুলোতে এখন পাওয়া যাচ্ছে নানা জাতের আম। বাজার না এখন ঘরে বসেই আম কিনুন।', 'public/image/5ebc20941e89e1088-removebg-preview.png', '2020-05-11 11:27:41', '2020-05-14 07:40:32'),
(2, 'সম্পন্ন ফরমালিন মুক্ত', 'বাগান থেকে সরাসরি আপনার কাছে', 'আমরা সেরা মানের আম বাছাই করে দিয়ে থাকি।আমাদের নিজেদের বাগান থেকে পেড়ে সম্পন্ন ফরমালিন মুক্ত আম আপনার হাতে তুলে দিতে চাই।', 'public/image/5ebc211e28ee3hapus-mango-500x500-removebg-preview.png', '2020-05-11 11:29:20', '2020-05-13 17:03:53'),
(3, 'রাজশাহীর আম', 'আপনার জন্য আমাদের প্রচেষ্টা', 'আম একটি রসালো ও গ্রীষ্ম মণ্ডলীয় ফল। পাকলে এটিকে সরাসরি খাওয়া যায় কিংবা কাঁচা অবস্থায় আঁঁচার কিংবা চাটনি বানানো যায়। দুনিয়ায় নানা বৈচিত্র্যের আম রয়েছে, যার সবগুলো হয়তো আমাদের সুপার মার্কেটে পাওয়া যাবে না। আমরা আপনাকে সকল আম দিয়ে থাকবো', 'public/image/5ebc1e72ef51ahealth-benefits-of-mango-removebg-preview.png', '2020-05-11 12:03:19', '2020-05-13 17:17:37'),
(4, 'শুধু দেখতে না খেতেও দারুন', 'রাজশাহীর সেরা বাগানের সেরা আম', 'আমের জাত আমাদের দেশে জনপ্রিয় কতগুলো আমের জাত রয়েছে যেমন- গোপালভোগ, ল্যাংড়া, হাঁড়িভাঙা, ক্ষীরসাপাতি, হিমসাগর, ফজলি ও আশ্বিনা এসব। এ জাতগুলো ইদানীং বাণিজ্যিকভাবেও চাষাবাদ হচ্ছে।চাষ এর না সরাসরি বাগান থেকে আপনার কাছে ।', 'public/image/5ebc1af092c7c6652964_thumb.png', '2020-05-11 15:59:14', '2020-05-13 17:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_orderdetails`
--
ALTER TABLE `admin_orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_orders`
--
ALTER TABLE `admin_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payments`
--
ALTER TABLE `admin_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_shippings`
--
ALTER TABLE `admin_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_orderdetails`
--
ALTER TABLE `admin_orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_orders`
--
ALTER TABLE `admin_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_payments`
--
ALTER TABLE `admin_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_shippings`
--
ALTER TABLE `admin_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2384348;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
