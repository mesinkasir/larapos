-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 01:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`sale_id`, `product_id`, `amount`, `created_at`, `updated_at`, `created`) VALUES
(3, 23, 1, '2020-05-26 11:58:50', '2020-05-26 11:58:50', '2020-05-26'),
(5, 12, 1, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26'),
(5, 21, 1, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26'),
(5, 22, 1, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26'),
(6, 21, 1, '2020-05-26 12:01:22', '2020-05-26 12:01:22', '2020-05-26'),
(8, 12, 1, '2020-05-26 12:04:05', '2020-05-26 12:04:05', '2020-05-26'),
(8, 23, 1, '2020-05-26 12:04:05', '2020-05-26 12:04:05', '2020-05-26'),
(9, 21, 1, '2020-05-27 11:24:16', '2020-05-27 11:24:16', '2020-05-27'),
(9, 23, 1, '2020-05-27 11:24:16', '2020-05-27 11:24:16', '2020-05-27'),
(10, 12, 1, '2020-05-27 11:24:27', '2020-05-27 11:24:27', '2020-05-27'),
(10, 22, 1, '2020-05-27 11:24:27', '2020-05-27 11:24:27', '2020-05-27'),
(11, 12, 1, '2020-05-27 11:26:38', '2020-05-27 11:26:38', '2020-05-27'),
(11, 22, 1, '2020-05-27 11:26:38', '2020-05-27 11:26:38', '2020-05-27'),
(12, 12, 1, '2020-05-27 11:27:12', '2020-05-27 11:27:12', '2020-05-27'),
(12, 22, 1, '2020-05-27 11:27:12', '2020-05-27 11:27:12', '2020-05-27'),
(13, 21, 1, '2020-05-27 12:03:30', '2020-05-27 12:03:30', '2020-05-27'),
(13, 22, 1, '2020-05-27 12:03:30', '2020-05-27 12:03:30', '2020-05-27'),
(14, 23, 1, '2020-05-27 12:03:53', '2020-05-27 12:03:53', '2020-05-27'),
(15, 12, 1, '2020-05-28 02:47:13', '2020-05-28 02:47:13', '2020-05-28'),
(15, 23, 1, '2020-05-28 02:47:13', '2020-05-28 02:47:13', '2020-05-28'),
(16, 21, 1, '2020-05-28 02:49:16', '2020-05-28 02:49:16', '2020-05-28'),
(16, 23, 1, '2020-05-28 02:49:16', '2020-05-28 02:49:16', '2020-05-28'),
(17, 21, 1, '2020-05-28 02:49:50', '2020-05-28 02:49:50', '2020-05-28'),
(17, 23, 1, '2020-05-28 02:49:50', '2020-05-28 02:49:50', '2020-05-28'),
(18, 21, 1, '2020-05-28 02:50:14', '2020-05-28 02:50:14', '2020-05-28'),
(19, 12, 1, '2020-06-11 17:47:59', '2020-06-11 17:47:59', '2020-06-12'),
(20, 21, 1, '2020-06-11 17:48:21', '2020-06-11 17:48:21', '2020-06-12'),
(21, 21, 1, '2020-06-17 10:51:06', '2020-06-17 10:51:06', '2020-06-17'),
(22, 21, 1, '2020-06-17 10:53:09', '2020-06-17 10:53:09', '2020-06-17'),
(23, 21, 1, '2020-06-17 10:53:27', '2020-06-17 10:53:27', '2020-06-17'),
(24, 21, 1, '2020-06-17 10:54:14', '2020-06-17 10:54:14', '2020-06-17'),
(25, 21, 1, '2020-06-17 10:59:35', '2020-06-17 10:59:35', '2020-06-17'),
(25, 23, 1, '2020-06-17 10:59:35', '2020-06-17 10:59:35', '2020-06-17'),
(26, 21, 1, '2020-06-17 11:35:31', '2020-06-17 11:35:31', '2020-06-17'),
(26, 23, 1, '2020-06-17 11:35:32', '2020-06-17 11:35:32', '2020-06-17'),
(27, 12, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17'),
(27, 21, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17'),
(27, 22, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17'),
(27, 23, 1, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17'),
(28, 21, 1, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17'),
(28, 22, 1, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17'),
(28, 23, 1, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17'),
(29, 21, 1, '2020-06-17 12:09:16', '2020-06-17 12:09:16', '2020-06-17'),
(29, 22, 1, '2020-06-17 12:09:16', '2020-06-17 12:09:16', '2020-06-17'),
(30, 22, 5, '2020-06-17 12:10:37', '2020-06-17 12:10:37', '2020-06-17'),
(31, 12, 1, '2020-06-17 12:54:04', '2020-06-17 12:54:04', '2020-06-17'),
(31, 22, 1, '2020-06-17 12:54:04', '2020-06-17 12:54:04', '2020-06-17'),
(32, 21, 1, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17'),
(32, 22, 1, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17'),
(32, 23, 1, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17'),
(33, 22, 1, '2020-07-23 10:21:56', '2020-07-23 10:21:56', '2020-07-23'),
(34, 21, 1, '2020-09-03 10:21:10', '2020-09-03 10:21:10', '2020-09-03'),
(35, 12, 1, '2020-09-03 10:22:54', '2020-09-03 10:22:54', '2020-09-03'),
(35, 22, 1, '2020-09-03 10:22:54', '2020-09-03 10:22:54', '2020-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Chocolate', '2020-05-26 04:15:49', '2020-05-26 04:15:49'),
(7, 'Tshirt', '2020-05-26 11:12:17', '2020-05-26 11:12:17'),
(8, 'Food', '2020-05-26 11:12:32', '2020-05-26 11:12:32'),
(9, 'Drink', '2020-05-26 11:12:36', '2020-05-26 11:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `rfc` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`rfc`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
('francis ngannou', 'francis ngannou', NULL, NULL, NULL, '2020-05-26 11:08:25', '2020-05-26 11:08:25'),
('Jon Jones', 'Jon Bon Jones', NULL, NULL, NULL, '2020-05-26 11:07:12', '2020-05-26 11:07:12'),
('Jose Aldo', 'Jose Aldo', NULL, NULL, NULL, '2020-05-26 11:11:27', '2020-05-26 11:11:27'),
('umum', 'General', 'admin@example.com', '081', 'umum', '2020-05-26 04:23:48', '2020-05-26 08:09:20');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_13_160458_create_clients_table', 1),
(5, '2020_04_13_160512_create_categories_table', 1),
(6, '2020_04_13_160525_create_sales_table', 1),
(7, '2020_04_13_160541_create_products_table', 1),
(8, '2020_04_13_160554_create_carts_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `product_left` int(11) DEFAULT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `cost` double(8,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `product_left`, `price`, `cost`, `category_id`, `created_at`, `updated_at`) VALUES
(12, 'SilverQueen', 'Silverqueen coklat enak dan lezat maknyuss', 55, 15000.00, 12000.00, 2, '2020-05-26 04:18:26', '2020-05-26 10:19:05'),
(21, 'Sprite', 'Sprite minuman segar kaula muda', 125, 15000.00, 12000.00, 9, '2020-05-26 11:15:41', '2020-05-26 11:15:41'),
(22, 'Coca Cola', 'Coca cola coke softdrink cools', 120, 15000.00, 12000.00, 9, '2020-05-26 11:16:08', '2020-05-26 11:16:08'),
(23, 'Nike Shirt Blue', 'Nike shirt blue with 3D animation', 22, 150000.00, 120000.00, 7, '2020-05-26 11:16:38', '2020-05-26 11:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `total` double(8,2) UNSIGNED NOT NULL,
  `rfc` varchar(191) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `total`, `rfc`, `id`, `created_at`, `updated_at`, `created`) VALUES
(3, 150000.00, 'Jon Jones', 7, '2020-05-26 11:58:50', '2020-05-26 11:58:50', '2020-05-26'),
(5, 45000.00, 'francis ngannou', 7, '2020-05-26 12:00:30', '2020-05-26 12:00:30', '2020-05-26'),
(6, 15000.00, 'umum', 7, '2020-05-26 12:01:22', '2020-05-26 12:01:22', '2020-05-26'),
(8, 165000.00, 'Jose Aldo', 7, '2020-05-26 12:04:05', '2020-05-26 12:04:05', '2020-05-26'),
(9, 165000.00, 'Jose Aldo', 4, '2020-05-27 11:24:16', '2020-05-27 11:24:16', '2020-05-27'),
(10, 30000.00, 'francis ngannou', 4, '2020-05-27 11:24:27', '2020-05-27 11:24:27', '2020-05-27'),
(11, 30000.00, 'Jon Jones', 4, '2020-05-27 11:26:38', '2020-05-27 11:26:38', '2020-05-27'),
(12, 30000.00, 'Jon Jones', 4, '2020-05-27 11:27:12', '2020-05-27 11:27:12', '2020-05-27'),
(13, 30000.00, 'francis ngannou', 4, '2020-05-27 12:03:30', '2020-05-27 12:03:30', '2020-05-27'),
(14, 150000.00, 'Jose Aldo', 4, '2020-05-27 12:03:53', '2020-05-27 12:03:53', '2020-05-27'),
(15, 165000.00, 'Jon Jones', 4, '2020-05-28 02:47:12', '2020-05-28 02:47:12', '2020-05-28'),
(16, 165000.00, 'Jose Aldo', 4, '2020-05-28 02:49:16', '2020-05-28 02:49:16', '2020-05-28'),
(17, 165000.00, 'francis ngannou', 4, '2020-05-28 02:49:50', '2020-05-28 02:49:50', '2020-05-28'),
(18, 15000.00, 'Jose Aldo', 4, '2020-05-28 02:50:14', '2020-05-28 02:50:14', '2020-05-28'),
(19, 15000.00, 'Jon Jones', 4, '2020-06-11 17:47:59', '2020-06-11 17:47:59', '2020-06-12'),
(20, 15000.00, 'francis ngannou', 4, '2020-06-11 17:48:21', '2020-06-11 17:48:21', '2020-06-12'),
(21, 15000.00, 'umum', 4, '2020-06-17 10:51:05', '2020-06-17 10:51:05', '2020-06-17'),
(22, 15000.00, 'Jose Aldo', 4, '2020-06-17 10:53:09', '2020-06-17 10:53:09', '2020-06-17'),
(23, 15000.00, 'Jon Jones', 4, '2020-06-17 10:53:27', '2020-06-17 10:53:27', '2020-06-17'),
(24, 15000.00, 'Jose Aldo', 4, '2020-06-17 10:54:14', '2020-06-17 10:54:14', '2020-06-17'),
(25, 165000.00, 'Jon Jones', 4, '2020-06-17 10:59:35', '2020-06-17 10:59:35', '2020-06-17'),
(26, 165000.00, 'Jose Aldo', 4, '2020-06-17 11:35:31', '2020-06-17 11:35:31', '2020-06-17'),
(27, 195000.00, 'Jose Aldo', 4, '2020-06-17 11:46:21', '2020-06-17 11:46:21', '2020-06-17'),
(28, 180000.00, 'Jose Aldo', 4, '2020-06-17 12:02:02', '2020-06-17 12:02:02', '2020-06-17'),
(29, 30000.00, 'Jose Aldo', 4, '2020-06-17 12:09:16', '2020-06-17 12:09:16', '2020-06-17'),
(30, 75000.00, 'Jose Aldo', 4, '2020-06-17 12:10:37', '2020-06-17 12:10:37', '2020-06-17'),
(31, 30000.00, 'umum', 4, '2020-06-17 12:54:04', '2020-06-17 12:54:04', '2020-06-17'),
(32, 180000.00, 'Jon Jones', 4, '2020-06-17 12:54:18', '2020-06-17 12:54:18', '2020-06-17'),
(33, 15000.00, 'Jose Aldo', 4, '2020-07-23 10:21:56', '2020-07-23 10:21:56', '2020-07-23'),
(34, 15000.00, 'Jon Jones', 4, '2020-09-03 10:21:10', '2020-09-03 10:21:10', '2020-09-03'),
(35, 30000.00, 'francis ngannou', 4, '2020-09-03 10:22:54', '2020-09-03 10:22:54', '2020-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `administrator` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `administrator`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@admin.com', NULL, NULL, '$2y$10$MbAPF0KLEbARFK8DN3LpfOT4BhpmJ87t7ruL4BWycLTEh7smFspYa', 0, NULL, NULL, NULL),
(5, 'jhon doe', 'jhondoe@mail.com', NULL, NULL, '$2y$10$qq0Z4W8/fYwOk5Qr/9jeIO79zIX2cWnvpAmRWao6qs2l.tpTdmlAC', 0, NULL, '2020-05-26 08:17:34', '2020-05-26 08:17:34'),
(6, 'James Bond', 'james@bond.com', NULL, NULL, '$2y$10$fvVAwrhEmO1tIfURhAm4fubGhn9lDGW8nKG5Du99E4KuNUB2xuGd6', 0, NULL, '2020-05-26 08:18:08', '2020-05-26 08:18:08'),
(7, 'Cornor Mcgregor', 'hockeycorpmarketing@gmail.com', NULL, NULL, '$2y$10$IyiVEZQKHZWJdGzxxTwEyuBY1ZBiizkit5vAd3eIyZrAPE6HDjKmG', 0, NULL, '2020-05-26 08:18:38', '2020-05-26 08:18:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`sale_id`,`product_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`rfc`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD UNIQUE KEY `clients_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `sales_id_foreign` (`id`),
  ADD KEY `sales_rfc_foreign` (`rfc`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_rfc_foreign` FOREIGN KEY (`rfc`) REFERENCES `clients` (`rfc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
