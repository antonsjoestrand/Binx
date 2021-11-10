-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2021 at 12:03 AM
-- Server version: 8.0.24
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelbinx`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_11_04_071129_create_products_table', 1),
(11, '2021_11_04_193632_create_products_table', 2),
(12, '2021_11_05_032457_add_status_to_products', 3),
(13, '2021_11_06_220023_create_product_highlight_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('anton@admin.com', '$2y$10$jctSQul3pWrzvPKThLrJxeQ6z8fvIkD6k.xNaXcMw83uSZ8/d84Me', '2021-11-07 12:24:46'),
('anton.r.sjostrand@gmail.com', '$2y$10$FSqu7lCgAgCLCkrWzeswH.FkTNhmubpF.hv2tnybhsrrvQJUCp7dK', '2021-11-08 02:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_description`, `description`, `price`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 'LeBron 18 Low', 'Basketball Shoe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, sceleris.</p>', '210.00', '20211105022904.webp', NULL, '2021-11-08 16:08:00', 1),
(2, 'LeBron Witness 6', 'Basketball Shoe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '135.00', '20211105023239.webp', NULL, '2021-11-07 16:07:24', 1),
(3, 'Air Jordan 11 Low Quai', 'Basketball Shoe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '165.00', '20211105023422.webp', NULL, '2021-11-05 10:44:07', 1),
(4, 'Celtics City Edition', 'Men\'s Nike NBA Jacket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '220.00', '20211105023534.webp', NULL, '2021-11-05 10:44:23', 1),
(5, 'Warriors City Edition', 'Men\'s Nike NBA Jacket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '220.00', '20211105023629.webp', NULL, '2021-11-05 10:44:29', 1),
(6, 'Lakers City Edition', 'Men\'s Nike NBA Jacket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '220.00', '20211105023657.webp', NULL, '2021-11-05 10:44:33', 1),
(7, 'Lakers Heritage', 'Men\'s Nike NBA Shorts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '95.00', '20211105023757.webp', NULL, '2021-11-05 10:47:32', 1),
(8, 'Raptors Icon 2020', 'Men\'s Nike NBA Swingman Shorts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '100.00', '20211105024029.webp', NULL, '2021-11-05 10:47:41', 1),
(9, 'Warriors Icon 2020', 'Men\'s Nike NBA Swingman Shorts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque metus arcu, tempus semper diam in, tempor tempus mi. Suspendisse sed laoreet nulla. Aenean dignissim lorem id augue fringilla, ut pharetra ligula mattis. Donec luctus diam ex, id porta tellus accumsan nec. Vestibulum eget sem id massa fermentum lacinia. Sed interdum dignissim urna, sollicitudin maximus lorem. Proin nulla neque, tincidunt at sapien non, dignissim vehicula urna. Vivamus ut venenatis turpis. Curabitur ac metus mi. Curabitur imperdiet lectus fermentum, efficitur sapien sit amet, malesuada leo. Cras vitae erat ullamcorper, scelerisque massa a, sodales ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '100.00', '20211105024039.webp', NULL, '2021-11-05 10:47:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anton', 'anton@admin.com', NULL, 1, '$2y$10$uPFd7.Ob83wWpzX6jf9LdeWTHBhsFjlo31ssPeQhE/aFNzJK4/jcC', NULL, '2021-11-05 01:37:27', '2021-11-05 01:37:27'),
(2, 'User', 'user@binx.com', NULL, 0, '$2y$10$5xNckpF2iUweSMZIIpsSpOdhNP.Cu/zSKd/Q0M77zqkl65qjPuGjC', NULL, '2021-11-05 01:37:27', '2021-11-05 01:37:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
