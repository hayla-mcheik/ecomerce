-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 01:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'hsein & hayla ', 'electronics', 0, '2023-02-19 17:44:25', '2023-06-03 15:42:13', 8),
(3, 'hayla', 'hayla', 0, '2023-02-20 08:13:38', '2023-06-03 15:42:05', 7),
(5, 'eight', 'eight', 0, '2023-02-23 10:35:02', '2023-06-03 15:31:01', 8),
(6, 'provoc', 'provoc', 0, '2023-02-23 10:35:13', '2023-06-03 15:30:48', 7);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(8, 'mobile', 'women', 'this a women', 'uploads/category/1694427626.jpg', 'this is a description', 'hjds', 'hjgfdsh', 0, '2023-02-23 10:34:16', '2023-09-11 07:20:26'),
(9, 'laptop', 'laptop', 'laptop', 'uploads/category/1694427611.jpg', 'lap', 'lap', 'lap', 0, '2023-07-10 05:35:22', '2023-09-11 07:20:11'),
(10, 'lashes', 'lashes', 'lashes', 'uploads/category/1694427598.jpg', 'lashes', 'lashes', 'lashes', 0, '2023-07-10 05:36:00', '2023-09-11 07:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'white', 'white', 0, '2023-02-22 12:49:40', '2023-05-20 13:16:19'),
(3, 'black', 'black', 0, '2023-02-22 13:00:45', '2023-02-22 13:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `first_grid_image`
--

CREATE TABLE `first_grid_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imgone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgtwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgthree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgfour` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgfive` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titletwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titlethree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titlefour` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titlefive` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desctwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descthree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descfour` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descfive` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `first_grid_image`
--

INSERT INTO `first_grid_image` (`id`, `imgone`, `imgtwo`, `imgthree`, `imgfour`, `imgfive`, `titleone`, `titletwo`, `titlethree`, `titlefour`, `titlefive`, `descone`, `desctwo`, `descthree`, `descfour`, `descfive`, `created_at`, `updated_at`) VALUES
(7, 'upload/169409555723928.jpg', 'upload/169408886628223.jpg', 'upload/169408886618252.jpg', 'upload/169409563926426.jpg', 'upload/169409560743574.jpg', 'lashes', 'lashes', 'lashes', 'lashes', 'lashes', 'small description about lashes', 'small description about lashes', 'small description about lashes', 'small description about lashes', 'small description about lashes', '2023-09-07 08:32:47', '2023-09-07 11:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `image_video`
--

CREATE TABLE `image_video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_video`
--

INSERT INTO `image_video` (`id`, `image`, `video`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'upload/16940862681392.jpg', 'upload/169408626817067.mp4', NULL, NULL, '2023-09-07 08:26:19', '2023-09-07 08:31:08'),
(2, '', '', '', '', '2023-09-07 08:28:41', '2023-09-07 08:28:41'),
(3, '', '', '', '', '2023-09-07 08:31:08', '2023-09-07 08:31:08'),
(4, '', '', '', '', '2023-09-07 08:31:21', '2023-09-07 08:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `instagram_image`
--

CREATE TABLE `instagram_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_17_133716_add_to_users_table', 2),
(7, '2023_02_17_200909_create_categories_table', 3),
(8, '2023_02_19_155654_create_brands_table', 4),
(9, '2023_02_20_113916_create_products_table', 5),
(10, '2023_02_20_123813_create_product_images_table', 5),
(11, '2023_02_20_124951_create_product_images_table', 6),
(13, '2023_02_22_134818_create_colors_table', 7),
(14, '2023_02_23_081600_create_product_colors_table', 8),
(15, '2023_05_20_182821_create_sliders_table', 9),
(16, '2023_05_20_183446_create_sliders_table', 10),
(17, '2023_06_03_173809_add_category_id_to_brands_table', 11),
(18, '2023_06_06_085034_create_wishlists_table', 12),
(19, '2023_06_07_110634_create_carts_table', 13),
(20, '2023_06_08_131927_create_orders_table', 14),
(21, '2023_06_08_132443_create_orders_items_table', 14),
(23, '2023_07_04_080515_create_settings_table', 15),
(29, '2023_07_08_065449_create_user_details_table', 16),
(30, '2023_09_07_082335_create_first_grid_image_table', 16),
(31, '2023_09_07_083320_create_second_grid_image_table', 16),
(32, '2023_09_07_083629_create_image_video_table', 16),
(33, '2023_09_07_085557_create_instagram_image_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(2, 1, 'ecomerce-YvqFoiGReC', 'hayla', 'admin@ecomerce.gmail', '1212121211', '111111', 'lkj', 'completed', 'Cash on Delivery', NULL, '2023-06-09 03:23:14', '2023-06-09 03:23:14'),
(3, 1, 'ecomerce-MdrgFVB2J6', 'hayla', 'admin@ecomerce.gmail', '4545454545', '112222', ';dslkf', 'completed', 'Cash on Delivery', NULL, '2023-06-11 04:16:34', '2023-06-11 16:02:01'),
(4, 1, 'ecomerce-gqx7d1dFay', 'hayla', 'admin@ecomerce.gmail', '7878787878', '656565', 'hello', 'in progress', 'Cash on Delivery', NULL, '2023-06-12 06:20:32', '2023-06-12 04:55:41'),
(5, 1, 'ecomerce-SGbaL5OHUi', 'hsein', 'admin@ecomerce.gmail', '7878787878', '444444', 'dskajdfkjs', 'in progress', 'Cash on Delivery', NULL, '2023-06-13 15:18:37', '2023-06-13 15:19:11'),
(15, 1, 'ecomerce-vEeYlWV9Sd', 'hayla', 'admin@ecomerce.gmail', '7891313999', '000000', 'dfm', 'in progress', 'Cash on Delivery', NULL, '2023-09-12 17:39:45', '2023-09-12 17:39:45'),
(16, 1, 'ecomerce-F4UqEpPhTd', 'hayla', 'admin@ecomerce.gmail', '2132121312', '000000', 'dfm', 'completed', 'Cash on Delivery', NULL, '2023-09-21 15:27:26', '2023-09-21 15:29:07'),
(17, 1, 'ecomerce-nHjdKuOnI8', 'hayla', 'admin@ecomerce.gmail', '87878787878', '000000', 'dfm', 'completed', 'Cash on Delivery', NULL, '2023-10-11 05:33:57', '2023-10-11 05:36:51'),
(18, 7, 'ecomerce-dBtXhou4op', 'roy', 'roy@gmail.com', '1234567891', '000000', 'lkj;', 'in progress', 'Cash on Delivery', NULL, '2023-10-18 07:26:16', '2023-10-18 07:26:16'),
(19, 7, 'ecomerce-287mj3JK14', 'roy', 'roy@gmail.com', '1234567891', '000000', 'lkll', 'in progress', 'Cash on Delivery', NULL, '2023-10-18 10:24:10', '2023-10-18 10:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 6, NULL, 8, 4, '2023-06-09 03:19:25', '2023-06-09 03:19:25'),
(2, 1, 9, 3, 15, 5, '2023-06-09 03:19:25', '2023-06-09 03:19:25'),
(3, 2, 6, NULL, 8, 4, '2023-06-09 03:23:14', '2023-06-09 03:23:14'),
(4, 2, 9, 3, 15, 5, '2023-06-09 03:23:14', '2023-06-09 03:23:14'),
(5, 3, 9, 2, 15, 5, '2023-06-09 04:16:34', '2023-06-09 04:16:34'),
(6, 3, 9, 3, 15, 5, '2023-06-09 04:16:34', '2023-06-09 04:16:34'),
(7, 3, 6, NULL, 8, 4, '2023-06-09 04:16:34', '2023-06-09 04:16:34'),
(8, 4, 9, 2, 15, 5, '2023-06-09 06:20:32', '2023-06-09 06:20:32'),
(9, 4, 9, 3, 15, 5, '2023-06-09 06:20:32', '2023-06-09 06:20:32'),
(10, 5, 9, 2, 15, 5, '2023-06-13 15:18:37', '2023-06-13 15:18:37'),
(11, 5, 9, 3, 15, 5, '2023-06-13 15:18:37', '2023-06-13 15:18:37'),
(12, 6, 6, NULL, 6, 4, '2023-07-10 05:33:37', '2023-07-10 05:33:37'),
(13, 6, 11, 7, 9, 40, '2023-07-10 05:33:37', '2023-07-10 05:33:37'),
(14, 7, 14, 13, 2, 200, '2023-07-10 05:38:55', '2023-07-10 05:38:55'),
(15, 8, 11, 7, 9, 40, '2023-07-10 05:40:46', '2023-07-10 05:40:46'),
(16, 9, 14, 12, 2, 200, '2023-07-12 13:08:49', '2023-07-12 13:08:49'),
(17, 10, 9, 3, 15, 5, '2023-08-12 07:58:42', '2023-08-12 07:58:42'),
(18, 11, 14, 12, 2, 200, '2023-08-15 11:06:18', '2023-08-15 11:06:18'),
(19, 11, 11, 8, 9, 40, '2023-08-15 11:06:18', '2023-08-15 11:06:18'),
(20, 12, 14, 13, 2, 200, '2023-08-15 11:14:43', '2023-08-15 11:14:43'),
(21, 13, 15, 15, 10, 60, '2023-08-16 05:06:49', '2023-08-16 05:06:49'),
(22, 14, 11, 8, 9, 40, '2023-08-16 05:09:03', '2023-08-16 05:09:03'),
(23, 15, 17, 19, 9, 4, '2023-09-12 17:39:45', '2023-09-12 17:39:45'),
(24, 15, 15, 14, 10, 60, '2023-09-12 17:39:45', '2023-09-12 17:39:45'),
(25, 15, 15, 15, 10, 60, '2023-09-12 17:39:45', '2023-09-12 17:39:45'),
(26, 16, 17, 19, 9, 4, '2023-09-21 15:27:26', '2023-09-21 15:27:26'),
(27, 17, 18, 20, 8, 4, '2023-10-11 05:33:57', '2023-10-11 05:33:57'),
(28, 18, 18, 21, 8, 4, '2023-10-18 07:26:16', '2023-10-18 07:26:16'),
(29, 18, 17, 18, 9, 4, '2023-10-18 07:26:16', '2023-10-18 07:26:16'),
(30, 19, 17, 18, 9, 4, '2023-10-18 10:24:10', '2023-10-18 10:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@ecomerce.gmail', '$2y$10$Tu9dYBMCWauqwvEJsy5iP.tGf3b6oaFhnqJ6C0bU4LUIKoVoI12a.', '2023-02-24 17:30:38'),
('mcheikhayla26@gmail.com', '$2y$10$qsCvMpw5CBRkNJE5Q0VtHedwpzzd13v08LopvF371fxQ6SowFSB3a', '2023-10-18 10:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL COMMENT '1=featured,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(11, 8, 'product two', 'product-two', 'provoc', 'product two product two', 'product two product two product two', 40, 40, 10, 1, 0, 0, 'product two', 'product two', 'product two', '2023-06-14 05:58:27', '2023-10-18 08:36:21'),
(14, 9, 'laptop', 'laptop', 'hsein & hayla', 'laptop', 'laptop', 255, 200, 9, 1, 0, 0, 'lap', 'lap', 'lap', '2023-07-10 05:37:21', '2023-10-18 08:36:33'),
(15, 8, 'lashes', 'lashes', 'eight', 'kjhkj', 'jhkhj', 54, 60, 10, 1, 1, 0, 'kjjjkl', 'lkjl', 'hjghghj', '2023-08-14 14:30:36', '2023-08-14 14:30:36'),
(16, 10, 'lashes', 'lashes', 'provoc', 'kjkjkjjkj', 'lkajs', 54, 50, 10, 1, 1, 0, 'klsj', 'skldj', 'salkmd', '2023-09-07 04:21:26', '2023-10-18 08:36:53'),
(17, 10, 'lasshhh', 'lashhh', 'hsein & hayla', 'dlsfm', 'ds;lf', 54, 4, 9, 1, 1, 0, 'd', 'd', 'd', '2023-09-11 08:35:15', '2023-09-11 08:35:15'),
(18, 10, 'Design', 'design', 'hsein & hayla', 'll;lk', 'kj', 20, 4, 8, 1, 1, 0, 'kk', 'll', 'll', '2023-09-11 08:36:05', '2023-09-11 08:36:05'),
(19, 10, 'hassouna', 'design', 'hsein & hayla', 'll;lk', 'kj', 20, 4, 8, 1, 1, 0, 'kk', 'll', 'll', '2023-09-11 08:36:05', '2023-09-11 08:36:05'),
(20, 10, 'hassouna', 'design', 'hsein & hayla', 'll;lk', 'kj', 20, 4, 8, 1, 1, 0, 'kk', 'll', 'll', '2023-09-11 08:36:05', '2023-09-11 08:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 11, 1, 4, '2023-06-14 05:58:27', '2023-10-18 08:35:36'),
(8, 11, 3, 6, '2023-06-14 05:58:27', '2023-10-18 08:35:40'),
(12, 14, 1, 6, '2023-07-10 05:37:21', '2023-10-18 08:34:48'),
(13, 14, 3, 2, '2023-07-10 05:37:21', '2023-10-18 08:34:54'),
(14, 15, 1, 5, '2023-08-14 14:30:36', '2023-09-12 17:39:45'),
(15, 15, 3, 0, '2023-08-14 14:30:36', '2023-09-12 17:39:45'),
(16, 16, 1, 5, '2023-09-07 04:21:26', '2023-10-18 08:37:44'),
(17, 16, 3, 5, '2023-09-07 04:21:26', '2023-10-18 08:37:49'),
(18, 17, 1, 1, '2023-09-11 08:35:15', '2023-10-18 10:24:10'),
(19, 17, 3, 4, '2023-09-11 08:35:15', '2023-10-18 08:37:13'),
(20, 18, 1, 0, '2023-09-11 08:36:05', '2023-10-11 05:33:57'),
(21, 18, 3, 2, '2023-09-11 08:36:05', '2023-10-18 07:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(41, 11, 'uploads/products/16944317141.jpg', '2023-09-11 08:28:34', '2023-09-11 08:28:34'),
(42, 14, 'uploads/products/16944317631.jpg', '2023-09-11 08:29:23', '2023-09-11 08:29:23'),
(43, 15, 'uploads/products/16944317871.jpg', '2023-09-11 08:29:47', '2023-09-11 08:29:47'),
(44, 16, 'uploads/products/16944318091.jpg', '2023-09-11 08:30:09', '2023-09-11 08:30:09'),
(45, 11, 'uploads/products/16944318731.jpg', '2023-09-11 08:31:13', '2023-09-11 08:31:13'),
(46, 14, 'uploads/products/16944318901.jpg', '2023-09-11 08:31:30', '2023-09-11 08:31:30'),
(47, 15, 'uploads/products/16944319241.jpg', '2023-09-11 08:32:04', '2023-09-11 08:32:04'),
(48, 16, 'uploads/products/16944319381.jpg', '2023-09-11 08:32:18', '2023-09-11 08:32:18'),
(49, 17, 'uploads/products/16944321151.jpg', '2023-09-11 08:35:15', '2023-09-11 08:35:15'),
(51, 17, 'uploads/products/16944321971.jpg', '2023-09-11 08:36:37', '2023-09-11 08:36:37'),
(60, 18, 'uploads/products/16953198391.jpg', '2023-09-21 15:10:39', '2023-09-21 15:10:39'),
(61, 18, 'uploads/products/16953198521.jpg', '2023-09-21 15:10:52', '2023-09-21 15:10:52'),
(62, 19, 'uploads/products/16953199141.jpg', '2023-09-21 15:11:54', '2023-09-21 15:11:54'),
(63, 19, 'uploads/products/16953199261.jpg', '2023-09-21 15:12:06', '2023-09-21 15:12:06'),
(64, 20, 'uploads/products/16953199401.jpg', '2023-09-21 15:12:20', '2023-09-21 15:12:20'),
(65, 20, 'uploads/products/16953199621.jpg', '2023-09-21 15:12:42', '2023-09-21 15:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `second_grid_image`
--

CREATE TABLE `second_grid_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imgone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgtwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgthree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgfour` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgfive` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `second_grid_image`
--

INSERT INTO `second_grid_image` (`id`, `imgone`, `imgtwo`, `imgthree`, `imgfour`, `imgfive`, `created_at`, `updated_at`) VALUES
(1, 'upload/169409544437624.jpg', 'upload/169409544447443.jpg', 'upload/16940954444183.jpg', 'upload/169409544419057.jpg', 'upload/16940954446960.jpg', '2023-09-07 08:24:57', '2023-09-07 11:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `instagram`, `twitter`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'my Ecomerce', 'ecomerce.com', 'ecomerce', 'ecomerce', 'ecomerce', 'kjl', '54', '65', 'ecomerce@gmail.com', 'ecomerce@gmail.com', 'ecomerce', NULL, 'ecomerce', NULL, '2023-07-04 07:02:37', '2023-10-18 04:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Enhance Your Beauty', 'Welcome to house lashes , your ultimate destination for exquisite lash transformations.', 'uploads/slider/1694426187.png', 0, '2023-05-31 04:39:13', '2023-09-11 06:56:27'),
(3, 'Timeless Beauty Redefined', 'Elevate your allure with lashes that captivate hearts and leave a lasting impression.', 'uploads/slider/1694426016.jpg', 0, '2023-05-31 04:40:20', '2023-09-11 06:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'hayla', 'admin@ecomerce.gmail', '2024-01-12 12:37:31', '$2y$10$N/Wn7qTTAZfkPJUTCxmmO.2os6BMpuHlvuxes8mLg5iXY0MDE6Zm6', 'kpOcUTQhyZcETFii4qzX4kHiv4O0ePS1YQVZTdc2Mhh5dW8hs5d3AgULcT4B', '2023-02-17 10:31:42', '2023-07-10 11:49:30', 1),
(2, 'user', 'user@ecomerce.gmail', NULL, '$2y$10$GFa.9mK0.wSujsndROdgf.Ssqn4Kij0XK7krFTlJsO3tshStermhC', NULL, '2023-02-17 17:14:49', '2023-07-07 13:58:54', 0),
(7, 'roy666', 'roy@gmail.com', NULL, '$2y$10$bgM6JAlAPlLvqm3VtOf5e.HLuzKv7mjxXteiQ49hOe.p1PQGXKbTS', NULL, '2023-10-18 06:19:41', '2023-10-18 10:27:25', 0),
(8, 'l', 'lkk@gmail.com', NULL, '$2y$10$wXwtgMyJ2WICSeoEyhiM9eDBAFfR9TJDdTDiQ/850GLogoCpsAuQ.', NULL, '2023-10-18 10:52:08', '2023-10-18 10:52:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, '5435\r\n', '000000', 'dfm', NULL, NULL),
(2, 7, '2223334445', '444555', 'sdsds', '2023-10-18 10:27:12', '2023-10-18 10:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2023-06-06 06:32:51', '2023-06-06 06:32:51'),
(4, 1, 8, '2023-06-06 11:20:47', '2023-06-06 11:20:47'),
(5, 1, 13, '2023-07-03 10:34:32', '2023-07-03 10:34:32'),
(6, 1, 11, '2023-07-10 05:32:35', '2023-07-10 05:32:35'),
(7, 1, 10, '2023-08-12 07:33:04', '2023-08-12 07:33:04'),
(8, 1, 16, '2023-09-11 11:46:45', '2023-09-11 11:46:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `first_grid_image`
--
ALTER TABLE `first_grid_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_video`
--
ALTER TABLE `image_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instagram_image`
--
ALTER TABLE `instagram_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `second_grid_image`
--
ALTER TABLE `second_grid_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_grid_image`
--
ALTER TABLE `first_grid_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `image_video`
--
ALTER TABLE `image_video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instagram_image`
--
ALTER TABLE `instagram_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `second_grid_image`
--
ALTER TABLE `second_grid_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
