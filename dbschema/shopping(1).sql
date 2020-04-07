-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2020 at 03:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `baskets`
--

CREATE TABLE `baskets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `price` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `user_id`, `product_id`, `count`, `price`, `status`, `created_at`, `updated_at`) VALUES
(7, 1, 6, 2, 3365000, '0', '2020-03-15 13:23:42', '2020-03-15 13:28:54'),
(8, 1, 5, 2, 2290000, '0', '2020-03-15 13:37:21', '2020-03-15 13:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `en_name`, `created_at`, `updated_at`) VALUES
(3, 'بای‌نت', 'buynett', '2020-03-11 06:28:29', '2020-03-11 06:28:29'),
(4, 'مانگو', 'mango', '2020-03-11 06:32:09', '2020-03-11 06:32:09'),
(5, 'اسمارا', 'esmara', '2020-03-11 06:32:37', '2020-03-11 06:32:37'),
(6, 'اپل', 'apple', '2020-03-11 06:33:19', '2020-03-11 06:33:19'),
(7, 'سامسونگ', 'samsung', '2020-03-11 06:33:35', '2020-03-11 06:35:21'),
(8, 'ایسوس', 'asus', '2020-03-11 06:36:02', '2020-03-11 06:36:02'),
(9, 'لنووو', 'lenovo', '2020-03-11 06:36:21', '2020-03-11 06:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chId` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_fa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `chId`, `image`, `title`, `title_fa`, `created_at`, `updated_at`) VALUES
(4, 0, 'uploads/1583918553-clothes.jpg', 'clothes', 'پوشاک', '2020-03-11 05:52:33', '2020-03-11 05:52:33'),
(5, 0, 'uploads/1583918653-digital.jpg', 'digital', 'کالای دیجیتال', '2020-03-11 05:54:13', '2020-03-11 05:54:13'),
(6, 4, 'uploads/1583918827-Menswear.jpg', 'Menswear', 'لباس مردانه', '2020-03-11 05:57:07', '2020-03-11 05:57:07'),
(7, 4, 'uploads/1583918898-ladieswear.jpg', 'ladieswear', 'لباس زنانه', '2020-03-11 05:58:18', '2020-03-11 05:58:18'),
(8, 5, 'uploads/1583919018-mobile.jpg', 'mobile', 'موبایل', '2020-03-11 06:00:18', '2020-03-11 06:00:18'),
(9, 5, 'uploads/1583919160-laptop.jpg', 'laptop', 'لپ‌تاپ', '2020-03-11 06:02:40', '2020-03-11 06:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `category_id`, `name`, `en_name`, `parent_id`, `type`, `created_at`, `updated_at`) VALUES
(4, 2, 'بر اساس سیستم عامل', 'os', 0, 1, NULL, NULL),
(5, 1, 'مدل', 'model', 0, 1, NULL, NULL),
(6, 2, 'آلترابوک', 'ultrabook', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_09_13_070520_add_verification_to_user_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_02_22_161934_create_products_table', 1),
(6, '2020_02_22_164716_create_brands_table', 1),
(7, '2020_02_22_164726_create_images_table', 1),
(8, '2020_02_28_160109_create_role_and_permission_table', 1),
(9, '2020_03_02_201113_create_categories_table', 1),
(10, '2020_03_06_191541_create_sliders_table', 1),
(11, '2020_03_08_200509_create_product_images_table', 2),
(12, '2020_03_08_220814_create_filters_table', 3),
(13, '2020_03_11_182220_create_slider_parents_table', 4),
(14, '2020_03_12_114310_create_brands_table', 2),
(15, '2020_03_12_114310_create_categories_table', 2),
(16, '2020_03_12_114310_create_failed_jobs_table', 2),
(17, '2020_03_12_114310_create_filters_table', 2),
(18, '2020_03_12_114310_create_images_table', 2),
(19, '2020_03_12_114310_create_password_resets_table', 2),
(20, '2020_03_12_114310_create_permission_role_table', 2),
(21, '2020_03_12_114310_create_permissions_table', 2),
(22, '2020_03_12_114310_create_product_images_table', 2),
(23, '2020_03_12_114310_create_products_table', 2),
(24, '2020_03_12_114310_create_role_user_table', 2),
(25, '2020_03_12_114310_create_roles_table', 2),
(26, '2020_03_12_114310_create_slider_parents_table', 2),
(27, '2020_03_12_114310_create_sliders_table', 2),
(28, '2020_03_12_114310_create_users_table', 2),
(29, '2020_03_12_114609_create_brands_table', 0),
(30, '2020_03_12_114609_create_categories_table', 0),
(31, '2020_03_12_114609_create_failed_jobs_table', 0),
(32, '2020_03_12_114609_create_filters_table', 0),
(33, '2020_03_12_114609_create_images_table', 0),
(34, '2020_03_12_114609_create_password_resets_table', 0),
(35, '2020_03_12_114609_create_permission_role_table', 0),
(36, '2020_03_12_114609_create_permissions_table', 0),
(37, '2020_03_12_114609_create_product_images_table', 0),
(38, '2020_03_12_114609_create_products_table', 0),
(39, '2020_03_12_114609_create_role_user_table', 0),
(40, '2020_03_12_114609_create_roles_table', 0),
(41, '2020_03_12_114609_create_slider_parents_table', 0),
(42, '2020_03_12_114609_create_sliders_table', 0),
(43, '2020_03_12_114609_create_users_table', 0),
(44, '2020_03_13_204050_create_baskets_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `salesـnumber` int(11) NOT NULL DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `brand_id`, `body`, `image`, `price`, `discount`, `status`, `count`, `salesـnumber`, `special`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 1, 'سوییشرت مردانه بای نت کد 563-1', 3, 'جنس: تریکو، نخ\r\nطرح پارچه: ساده\r\nفرم: معمولی\r\nکلاه: کلاه دار\r\nنحوه ی بسته شدن: جلو باز', 'uploads/1583921425-سوییشرت مردانه بای نت کد 563-1.jpg', 188000, 26, 1, 50, 1, 1, 6, '2020-03-11 06:40:25', '2020-03-11 06:40:25'),
(3, 1, 'پیراهن مردانه کد M02246', 3, 'جنس: پنبه، ویسکوز\r\nقد: روی باسن\r\nطرح پارچه: ساده\r\nیقه: برگردان\r\nفرم: جذب\r\nقد آستین: بلند\r\nمورد استفاده: روزمره مهمانی', 'uploads/1583921538-پیراهن مردانه کد M02246.jpg', 80000, 38, 1, 50, 2, 1, 6, '2020-03-11 06:42:18', '2020-03-11 06:42:18'),
(4, 1, 'شلوار زنانه مانگو مدل alice', 4, 'جنس: نخ\r\nفرم: جذب\r\nقد: بلند\r\nمورد استفاده: روزمره\r\nنوع فاق: کوتاه\r\nطرح پارچه: ساده', 'uploads/1583922653-شلوار زنانه مانگو مدل alice .jpg', 627000, 17, 1, 50, 3, 1, 7, '2020-03-11 07:00:53', '2020-03-11 07:00:53'),
(5, 1, 'پالتو میدی زنانه - مانگو', 4, 'این پالتو زنانه یقه گرد دارد\r\nجلوی پالتو با زیپ بسته می شود\r\nدارای دو جیب زیپی طرفین لباس\r\nلبه آستین ها دو دکمه تزیینی دارد\r\nفرم پالتو آزاد و قد آن تا روی زانو است', 'uploads/1583922932-پالتو میدی زنانه - مانگو.jpg', 2290000, 15, 1, 50, 4, 1, 7, '2020-03-11 07:05:32', '2020-03-11 07:05:32'),
(6, 1, 'گوشی موبایل A50', 7, 'سیستم عامل: Android \r\nشبکه های ارتباطی: 2G، 3G، 4G', 'uploads/1583923588-A50.jpg', 3365000, 0, 1, 50, 5, 1, 8, '2020-03-11 07:17:18', '2020-03-11 07:27:57'),
(7, 1, 'گوشی موبایل A5۱', 7, 'سیستم عامل: Android \r\nشبکه های ارتباطی: 2G، 3G، 4G', 'uploads/1583923931-A51.jpg', 4600000, 0, 1, 50, 6, 1, 8, '2020-03-11 07:22:11', '2020-03-11 07:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `url`) VALUES
(1, 1, 'uploads/gallery/1583700134-1.png'),
(2, 1, 'uploads/gallery/1583700134-fQsaq3Pn.jpg medium.jpeg'),
(3, 1, 'uploads/gallery/1583700193-photo_2020-02-10_20-41-28.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user', 'کاربر', '2020-03-09 16:14:44', '2020-03-09 16:15:53'),
(2, 'admin', 'ادمین', '2020-03-09 16:15:30', '2020-03-09 16:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(2, 1),
(1, 2),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_parent_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_parent_id`, `title`, `url`, `image`, `created_at`, `updated_at`) VALUES
(4, 1, 'اسلایدر ۱', 'http://google.com', 'uploads/1583874932-slide1.jpg', '2020-03-10 17:45:33', '2020-03-10 17:45:33'),
(5, 1, 'اسلایدر ۲', '#', 'uploads/1583875179-slide2.jpg', '2020-03-10 17:49:39', '2020-03-10 17:49:39'),
(6, 3, 'اسلایدر بنر ۱', '#', 'uploads/1583954137-banner1.jpg', '2020-03-11 15:45:37', '2020-03-11 15:45:37'),
(8, 3, 'اسلایدر بنر ۳', '#', 'uploads/1583954378-banner3.jpg', '2020-03-11 15:49:38', '2020-03-11 15:49:38'),
(9, 3, 'اسلایدر بنر ۲', '#', 'uploads/1583954420-banner2.jpg', '2020-03-11 15:50:20', '2020-03-11 15:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `slider_parents`
--

CREATE TABLE `slider_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_parents`
--

INSERT INTO `slider_parents` (`id`, `name`, `en_name`, `created_at`, `updated_at`) VALUES
(1, 'اسلایدر فرانت', 'front slider', '2020-03-11 15:13:45', '2020-03-11 15:13:45'),
(3, 'اسلایدر بنر', 'banner slider', '2020-03-11 15:20:54', '2020-03-11 15:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://lorempixel.com/40/40/people',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `verified`, `verification_token`) VALUES
(1, 'batul saeidi', 'saeidi.batul@gmail.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$/WUbC.CqDOuMVnXUDSy6Tul1695OYJ//nAVKE017bovEZeRebXA4a', NULL, '2020-03-06 16:15:40', '2020-03-06 16:15:40', 1, NULL),
(2, 'بتول سعیدی', 'saeidi.batul@yahoo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$GrhJJj/tYE4JncHZOEWSZO2fiRd9oKgNXmSeFJKCzo2qAawqkJnpe', 'XIPcLOSi7jI9zZWcPqxqTfVCANJNpyrMuDwo1sTIJELKf9gCD7fF5IxdrsfB', '2020-03-09 16:17:07', '2020-03-09 16:17:07', 1, 'a1b5f9305c3b641cf9c87abceb952c9dace1a5fa481ac84990ba238125d3891e'),
(3, 'مهدیس', 'mahdis@yahoo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$0mQpuAS1BqjdAgdcLHLJUOrwN5IfT39z9O51EmR6jkBTSFwHgd9Ai', 'xh9ey6rwgXZ6nddoWKNrc1mJtjPgtxhKswIesZPrAzLRS4iWMOdkx06QCIZ2', '2020-03-12 14:51:08', '2020-03-12 14:51:09', 0, '311f123e0e81c0d265860afbebb5a2be4379c5f8454c9a60ac8ed2e7619de142'),
(5, 'نفیسه سعیدی', 'nafis@yahoo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$.SSYVEgjVagpBjZC6kdZ4usFmV2QWgmB3.MoEB/GO9X20OnRM/4yS', NULL, '2020-03-12 15:32:34', '2020-03-12 15:32:34', 0, '62fb6405204c7bf0381e6c7630ca047b78e891aaab3274c8063a7dfc49dd07a6'),
(6, 'batool', 'homa@yahoo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$SzLD9rHiKBbpB045O4KMTu6/ZsbXPaDuPfwpjjLmxa55t.Z8JfF1S', 'WkWwPbx0cYHUWcdTyIW7sf3LKKxaOBxGMui3vwm4wqWIJ71sjZViBlbF8zkG', '2020-03-12 15:43:26', '2020-03-12 15:43:26', 0, 'ebecd5cf33fd176980106cc0a1e090a6c6370dac795f92f4c34aec742dee537a'),
(7, 'nima', 'nima@yahoo.com', 'http://lorempixel.com/40/40/people', '2020-03-12 16:00:06', '$2y$10$tHeadklso/JqycOKcO3Icejmkjl2wDYX7ADICYk/Pc.bqmCQmQQj2', 'y47kIMXTyj3GxtPDJvYJjICGT9acKFVQ7HIGehjFcsqr5Pd11tBb9GnUvbVy', '2020-03-12 15:45:41', '2020-03-12 15:45:41', 1, NULL),
(8, 'Javad', 'javad@yahoo.com', 'http://lorempixel.com/40/40/people', '2020-03-12 15:58:47', '$2y$10$0N3Lsrxc6O1KGfrFWJUScOlw5QugznaJHCGNuJgKcYgZ5UTSgbgBq', 'XnCGihkTXArKHKLTUl4JwWYIOC2YmAKi75wchviQ5Kn0BpWxTLO2elazTaeo', '2020-03-12 15:55:15', '2020-03-12 15:55:15', 1, NULL),
(9, 'Mojde', 'mojde@yahoo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$Cuni52JYVKhR6xE.Duwp.OTTr7823FG7iK8n7Q0rh1Oo0TJ4gkyRe', 'KJAtvD2XHKkKv8uyma966SRSjRpmrKpXfQhrJXKuml944tUfoKhIVel2Y4sj', '2020-03-12 16:04:34', '2020-03-12 16:04:34', 0, 'cf901af1d74bb8ea00ab9d9a8dc04b18be4213744c393c22786658e47371cc81'),
(10, 'Mojde', 'mojdeh@yahoo.com', 'http://lorempixel.com/40/40/people', '2020-03-12 16:18:49', '$2y$10$1SY3ZIFggS7elp2H9seqfOkmCU7JcFuDMDhN3NFysn0uTj8uUTtb6', NULL, '2020-03-12 16:05:47', '2020-03-12 16:05:47', 1, NULL),
(11, 'mom', 'mom@yahoo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$otDmdnCsOuhBWGvAwYMve.kfv51EGpKgw8CMf/DOdwMXfkoDZF8dq', NULL, '2020-03-12 16:32:48', '2020-03-12 16:32:48', 0, '1c95de6ffa67793ae7dc78bf6471a88e346be1e0e5eea17945c1a280b023fdc9'),
(12, 'mom', 'mom@yahooo.com', 'http://lorempixel.com/40/40/people', NULL, '$2y$10$VOGhhc1Yo/PkMZ3QnZAnnOIB2cpvCU.O6/8aLQ/DmsKFNDt.FncMu', NULL, '2020-03-12 16:33:54', '2020-03-12 16:33:55', 0, '03cc0d15d5c044de684e1563ae23b835dd5c050e38edf3bc243a90f8374da984');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_parents`
--
ALTER TABLE `slider_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider_parents`
--
ALTER TABLE `slider_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
