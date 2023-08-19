-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 08:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matshya_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `event`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 6, NULL, NULL, '[]', NULL, 'created', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(2, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 7, NULL, NULL, '[]', NULL, 'created', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(3, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 8, NULL, NULL, '[]', NULL, 'created', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(4, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 9, NULL, NULL, '[]', NULL, 'created', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(5, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 10, NULL, NULL, '[]', NULL, 'created', '2023-07-25 10:56:59', '2023-07-25 10:56:59'),
(6, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 11, NULL, NULL, '[]', NULL, 'created', '2023-07-25 10:56:59', '2023-07-25 10:56:59'),
(7, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-07-25 21:51:26', '2023-07-25 21:51:26'),
(8, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 7, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-07-29 23:42:21', '2023-07-29 23:42:21'),
(9, 'default', 'created', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 10:26:40', '2023-08-02 10:26:40'),
(10, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 10:26:41', '2023-08-02 10:26:41'),
(11, 'default', 'created', 'App\\Models\\Admin\\Slider', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 10:26:43', '2023-08-02 10:26:43'),
(12, 'default', 'updated', 'App\\Models\\Admin\\Slider', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 10:26:43', '2023-08-02 10:26:43'),
(13, 'default', 'created', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 10:34:15', '2023-08-02 10:34:15'),
(14, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 10:34:15', '2023-08-02 10:34:15'),
(15, 'default', 'deleted', 'App\\Models\\Admin\\Slider', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-02 10:42:39', '2023-08-02 10:42:39'),
(16, 'default', 'created', 'App\\Models\\Admin\\Slider', 4, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 10:45:03', '2023-08-02 10:45:03'),
(17, 'default', 'updated', 'App\\Models\\Admin\\Slider', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 10:45:03', '2023-08-02 10:45:03'),
(18, 'default', 'created', 'App\\Models\\Admin\\Slider', 5, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 11:00:51', '2023-08-02 11:00:51'),
(19, 'default', 'updated', 'App\\Models\\Admin\\Slider', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:00:51', '2023-08-02 11:00:51'),
(20, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:02:23', '2023-08-02 11:02:23'),
(21, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:02:23', '2023-08-02 11:02:23'),
(22, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:02:57', '2023-08-02 11:02:57'),
(23, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:02:57', '2023-08-02 11:02:57'),
(24, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:03:55', '2023-08-02 11:03:55'),
(25, 'default', 'updated', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:04:04', '2023-08-02 11:04:04'),
(26, 'default', 'updated', 'App\\Models\\Admin\\Slider', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:04:17', '2023-08-02 11:04:17'),
(27, 'default', 'deleted', 'App\\Models\\Admin\\Slider', 5, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-02 11:13:31', '2023-08-02 11:13:31'),
(28, 'default', 'deleted', 'App\\Models\\Admin\\Slider', 1, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-02 11:15:40', '2023-08-02 11:15:40'),
(29, 'default', 'deleted', 'App\\Models\\Admin\\Slider', 4, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-02 11:15:59', '2023-08-02 11:15:59'),
(30, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:18:35', '2023-08-02 11:18:35'),
(31, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:18:35', '2023-08-02 11:18:35'),
(32, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:21:40', '2023-08-02 11:21:40'),
(33, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:21:41', '2023-08-02 11:21:41'),
(34, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:22:59', '2023-08-02 11:22:59'),
(35, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:23:00', '2023-08-02 11:23:00'),
(36, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:23:21', '2023-08-02 11:23:21'),
(37, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:23:22', '2023-08-02 11:23:22'),
(38, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:25:31', '2023-08-02 11:25:31'),
(39, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:25:31', '2023-08-02 11:25:31'),
(40, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:25:32', '2023-08-02 11:25:32'),
(41, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:25:33', '2023-08-02 11:25:33'),
(42, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:25:54', '2023-08-02 11:25:54'),
(43, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:25:54', '2023-08-02 11:25:54'),
(44, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:27:46', '2023-08-02 11:27:46'),
(45, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:28:32', '2023-08-02 11:28:32'),
(46, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:28:32', '2023-08-02 11:28:32'),
(47, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:28:48', '2023-08-02 11:28:48'),
(48, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:29:23', '2023-08-02 11:29:23'),
(49, 'default', 'created', 'App\\Models\\Admin\\Slider', 6, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 11:29:36', '2023-08-02 11:29:36'),
(50, 'default', 'updated', 'App\\Models\\Admin\\Slider', 6, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:29:36', '2023-08-02 11:29:36'),
(51, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 7, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:32:04', '2023-08-02 11:32:04'),
(52, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:36:06', '2023-08-02 11:36:06'),
(53, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:36:07', '2023-08-02 11:36:07'),
(54, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:36:08', '2023-08-02 11:36:08'),
(55, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:36:09', '2023-08-02 11:36:09'),
(56, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:36:09', '2023-08-02 11:36:09'),
(57, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:37:57', '2023-08-02 11:37:57'),
(58, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:37:58', '2023-08-02 11:37:58'),
(59, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 11:37:59', '2023-08-02 11:37:59'),
(60, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 12, NULL, NULL, '[]', NULL, 'created', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(61, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 13, NULL, NULL, '[]', NULL, 'created', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(62, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 14, NULL, NULL, '[]', NULL, 'created', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(63, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 15, NULL, NULL, '[]', NULL, 'created', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(64, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 16, NULL, NULL, '[]', NULL, 'created', '2023-08-02 11:49:01', '2023-08-02 11:49:01'),
(65, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 17, NULL, NULL, '[]', NULL, 'created', '2023-08-02 11:49:01', '2023-08-02 11:49:01'),
(66, 'default', 'created', 'App\\Models\\Admin\\Service', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 12:16:45', '2023-08-02 12:16:45'),
(67, 'default', 'updated', 'App\\Models\\Admin\\Service', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:16:45', '2023-08-02 12:16:45'),
(68, 'default', 'created', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-02 12:17:14', '2023-08-02 12:17:14'),
(69, 'default', 'updated', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:17:14', '2023-08-02 12:17:14'),
(70, 'default', 'updated', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:23:02', '2023-08-02 12:23:02'),
(71, 'default', 'updated', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:23:34', '2023-08-02 12:23:34'),
(72, 'default', 'updated', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:23:34', '2023-08-02 12:23:34'),
(73, 'default', 'updated', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:23:47', '2023-08-02 12:23:47'),
(74, 'default', 'updated', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:23:47', '2023-08-02 12:23:47'),
(75, 'default', 'deleted', 'App\\Models\\Admin\\Service', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-02 12:24:00', '2023-08-02 12:24:00'),
(76, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-02 12:59:55', '2023-08-02 12:59:55'),
(77, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 18, NULL, NULL, '[]', NULL, 'created', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(78, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 19, NULL, NULL, '[]', NULL, 'created', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(79, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 20, NULL, NULL, '[]', NULL, 'created', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(80, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 21, NULL, NULL, '[]', NULL, 'created', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(81, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 22, NULL, NULL, '[]', NULL, 'created', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(82, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 23, NULL, NULL, '[]', NULL, 'created', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(83, 'default', 'created', 'App\\Models\\Admin\\Category', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-03 06:28:42', '2023-08-03 06:28:42'),
(84, 'default', 'updated', 'App\\Models\\Admin\\Category', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:28:45', '2023-08-03 06:28:45'),
(85, 'default', 'created', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-03 06:28:59', '2023-08-03 06:28:59'),
(86, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:29:00', '2023-08-03 06:29:00'),
(87, 'default', 'deleted', 'App\\Models\\Admin\\Category', 1, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-03 06:35:53', '2023-08-03 06:35:53'),
(88, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:37:05', '2023-08-03 06:37:05'),
(89, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:37:19', '2023-08-03 06:37:19'),
(90, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:38:40', '2023-08-03 06:38:40'),
(91, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:38:41', '2023-08-03 06:38:41'),
(92, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:39:01', '2023-08-03 06:39:01'),
(93, 'default', 'updated', 'App\\Models\\Admin\\Category', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:39:01', '2023-08-03 06:39:01'),
(94, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 06:47:15', '2023-08-03 06:47:15'),
(95, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 24, NULL, NULL, '[]', NULL, 'created', '2023-08-03 09:56:56', '2023-08-03 09:56:56'),
(96, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 25, NULL, NULL, '[]', NULL, 'created', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(97, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 26, NULL, NULL, '[]', NULL, 'created', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(98, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 27, NULL, NULL, '[]', NULL, 'created', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(99, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 28, NULL, NULL, '[]', NULL, 'created', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(100, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 29, NULL, NULL, '[]', NULL, 'created', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(101, 'default', 'created', 'App\\Models\\Admin\\Product', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-03 13:01:38', '2023-08-03 13:01:38'),
(102, 'default', 'updated', 'App\\Models\\Admin\\Product', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 13:01:39', '2023-08-03 13:01:39'),
(103, 'default', 'created', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-03 13:01:40', '2023-08-03 13:01:40'),
(104, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 13:01:40', '2023-08-03 13:01:40'),
(105, 'default', 'deleted', 'App\\Models\\Admin\\Product', 1, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-03 13:01:49', '2023-08-03 13:01:49'),
(106, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 13:03:28', '2023-08-03 13:03:28'),
(107, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 13:04:02', '2023-08-03 13:04:02'),
(108, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 13:04:32', '2023-08-03 13:04:32'),
(109, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-03 13:04:32', '2023-08-03 13:04:32'),
(110, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 01:32:06', '2023-08-04 01:32:06'),
(111, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 01:33:27', '2023-08-04 01:33:27'),
(112, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 01:33:58', '2023-08-04 01:33:58'),
(113, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 01:33:58', '2023-08-04 01:33:58'),
(114, 'default', 'created', 'App\\Models\\Admin\\Product', 3, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 01:37:00', '2023-08-04 01:37:00'),
(115, 'default', 'updated', 'App\\Models\\Admin\\Product', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 01:37:00', '2023-08-04 01:37:00'),
(116, 'default', 'created', 'App\\Models\\Admin\\Product', 4, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 04:08:56', '2023-08-04 04:08:56'),
(117, 'default', 'updated', 'App\\Models\\Admin\\Product', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:08:56', '2023-08-04 04:08:56'),
(118, 'default', 'updated', 'App\\Models\\Admin\\Product', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:09:34', '2023-08-04 04:09:34'),
(119, 'default', 'created', 'App\\Models\\Admin\\Product', 5, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 04:30:37', '2023-08-04 04:30:37'),
(120, 'default', 'updated', 'App\\Models\\Admin\\Product', 5, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:30:37', '2023-08-04 04:30:37'),
(121, 'default', 'deleted', 'App\\Models\\Admin\\Product', 5, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 04:30:43', '2023-08-04 04:30:43'),
(122, 'default', 'deleted', 'App\\Models\\Admin\\Product', 4, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 04:30:47', '2023-08-04 04:30:47'),
(123, 'default', 'created', 'App\\Models\\Admin\\Product', 6, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 04:33:37', '2023-08-04 04:33:37'),
(124, 'default', 'updated', 'App\\Models\\Admin\\Product', 6, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:33:37', '2023-08-04 04:33:37'),
(125, 'default', 'created', 'App\\Models\\Admin\\Product', 7, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 04:33:37', '2023-08-04 04:33:37'),
(126, 'default', 'updated', 'App\\Models\\Admin\\Product', 7, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:33:38', '2023-08-04 04:33:38'),
(127, 'default', 'deleted', 'App\\Models\\Admin\\Product', 6, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 04:33:59', '2023-08-04 04:33:59'),
(128, 'default', 'deleted', 'App\\Models\\Admin\\Product', 7, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 04:35:57', '2023-08-04 04:35:57'),
(129, 'default', 'created', 'App\\Models\\Admin\\Product', 8, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 04:36:15', '2023-08-04 04:36:15'),
(130, 'default', 'updated', 'App\\Models\\Admin\\Product', 8, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:36:15', '2023-08-04 04:36:15'),
(131, 'default', 'created', 'App\\Models\\Admin\\Product', 9, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 04:38:18', '2023-08-04 04:38:18'),
(132, 'default', 'updated', 'App\\Models\\Admin\\Product', 9, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 04:38:19', '2023-08-04 04:38:19'),
(133, 'default', 'deleted', 'App\\Models\\Admin\\Product', 8, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 04:38:45', '2023-08-04 04:38:45'),
(134, 'default', 'deleted', 'App\\Models\\Admin\\Product', 9, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 04:38:48', '2023-08-04 04:38:48'),
(135, 'default', 'created', 'App\\Models\\Admin\\Product', 10, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 05:10:13', '2023-08-04 05:10:13'),
(136, 'default', 'updated', 'App\\Models\\Admin\\Product', 10, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 05:10:13', '2023-08-04 05:10:13'),
(137, 'default', 'deleted', 'App\\Models\\Admin\\Product', 10, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 05:10:19', '2023-08-04 05:10:19'),
(138, 'default', 'created', 'App\\Models\\Admin\\Category', 3, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 08:27:22', '2023-08-04 08:27:22'),
(139, 'default', 'updated', 'App\\Models\\Admin\\Category', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 08:27:22', '2023-08-04 08:27:22'),
(140, 'default', 'created', 'App\\Models\\Admin\\Product', 11, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 08:28:59', '2023-08-04 08:28:59'),
(141, 'default', 'updated', 'App\\Models\\Admin\\Product', 11, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 08:29:00', '2023-08-04 08:29:00'),
(142, 'default', 'updated', 'App\\Models\\Admin\\Product', 11, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 08:41:10', '2023-08-04 08:41:10'),
(143, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 30, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(144, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(145, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 32, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(146, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 33, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(147, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 34, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(148, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 35, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:43:56', '2023-08-04 08:43:56'),
(149, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 36, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:44:05', '2023-08-04 08:44:05'),
(150, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 37, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:44:05', '2023-08-04 08:44:05'),
(151, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 38, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:44:05', '2023-08-04 08:44:05'),
(152, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 39, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:44:06', '2023-08-04 08:44:06'),
(153, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 40, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:44:06', '2023-08-04 08:44:06'),
(154, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 41, NULL, NULL, '[]', NULL, 'created', '2023-08-04 08:44:06', '2023-08-04 08:44:06'),
(155, 'default', 'created', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 09:28:25', '2023-08-04 09:28:25'),
(156, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 09:28:26', '2023-08-04 09:28:26'),
(157, 'default', 'created', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 09:28:29', '2023-08-04 09:28:29'),
(158, 'default', 'updated', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 09:28:29', '2023-08-04 09:28:29'),
(159, 'default', 'updated', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 09:30:23', '2023-08-04 09:30:23'),
(160, 'default', 'updated', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 09:30:24', '2023-08-04 09:30:24'),
(161, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 09:32:46', '2023-08-04 09:32:46'),
(162, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 09:32:46', '2023-08-04 09:32:46'),
(163, 'default', 'deleted', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 09:33:43', '2023-08-04 09:33:43'),
(164, 'default', 'deleted', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 09:33:52', '2023-08-04 09:33:52'),
(165, 'default', 'created', 'App\\Models\\Admin\\Blog', 3, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 10:33:09', '2023-08-04 10:33:09'),
(166, 'default', 'updated', 'App\\Models\\Admin\\Blog', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:33:09', '2023-08-04 10:33:09'),
(167, 'default', 'created', 'App\\Models\\Admin\\Blog', 4, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 10:33:10', '2023-08-04 10:33:10'),
(168, 'default', 'updated', 'App\\Models\\Admin\\Blog', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:33:10', '2023-08-04 10:33:10'),
(169, 'default', 'created', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 10:39:03', '2023-08-04 10:39:03'),
(170, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:39:03', '2023-08-04 10:39:03'),
(171, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:45:46', '2023-08-04 10:45:46'),
(172, 'default', 'created', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 10:55:55', '2023-08-04 10:55:55'),
(173, 'default', 'updated', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:55:55', '2023-08-04 10:55:55'),
(174, 'default', 'updated', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:56:09', '2023-08-04 10:56:09'),
(175, 'default', 'deleted', 'App\\Models\\Admin\\Blog', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 10:56:34', '2023-08-04 10:56:34'),
(176, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:57:32', '2023-08-04 10:57:32'),
(177, 'default', 'updated', 'App\\Models\\Admin\\Blog', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 10:57:32', '2023-08-04 10:57:32'),
(178, 'default', 'created', 'App\\Models\\Admin\\Gallery', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 11:11:39', '2023-08-04 11:11:39'),
(179, 'default', 'updated', 'App\\Models\\Admin\\Gallery', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:11:39', '2023-08-04 11:11:39'),
(180, 'default', 'created', 'App\\Models\\Admin\\Gallery', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 11:11:40', '2023-08-04 11:11:40'),
(181, 'default', 'updated', 'App\\Models\\Admin\\Gallery', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:11:40', '2023-08-04 11:11:40'),
(182, 'default', 'deleted', 'App\\Models\\Admin\\Gallery', 1, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 11:14:13', '2023-08-04 11:14:13'),
(183, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:20:21', '2023-08-04 11:20:21'),
(184, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:20:23', '2023-08-04 11:20:23'),
(185, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:20:24', '2023-08-04 11:20:24'),
(186, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:20:36', '2023-08-04 11:20:36'),
(187, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:21:04', '2023-08-04 11:21:04'),
(188, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:21:04', '2023-08-04 11:21:04'),
(189, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:23:11', '2023-08-04 11:23:11'),
(190, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:24:04', '2023-08-04 11:24:04'),
(191, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:24:04', '2023-08-04 11:24:04'),
(192, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:24:05', '2023-08-04 11:24:05'),
(193, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:24:11', '2023-08-04 11:24:11'),
(194, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 19, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:24:58', '2023-08-04 11:24:58'),
(195, 'default', 'created', 'App\\Models\\Admin\\Gallery', 3, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 11:29:14', '2023-08-04 11:29:14'),
(196, 'default', 'updated', 'App\\Models\\Admin\\Gallery', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:29:15', '2023-08-04 11:29:15'),
(197, 'default', 'created', 'App\\Models\\Admin\\Gallery', 4, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-04 11:29:15', '2023-08-04 11:29:15'),
(198, 'default', 'updated', 'App\\Models\\Admin\\Gallery', 4, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 11:29:15', '2023-08-04 11:29:15'),
(199, 'default', 'deleted', 'App\\Models\\Admin\\Gallery', 3, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 11:29:45', '2023-08-04 11:29:45'),
(200, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 14, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-04 11:32:05', '2023-08-04 11:32:05'),
(201, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 12, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 23:02:21', '2023-08-04 23:02:21'),
(202, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 12, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 23:04:56', '2023-08-04 23:04:56'),
(203, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 13, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 23:04:57', '2023-08-04 23:04:57'),
(204, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 16, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 23:04:57', '2023-08-04 23:04:57'),
(205, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 17, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-04 23:04:57', '2023-08-04 23:04:57'),
(206, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 42, NULL, NULL, '[]', NULL, 'created', '2023-08-04 23:08:56', '2023-08-04 23:08:56'),
(207, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 43, NULL, NULL, '[]', NULL, 'created', '2023-08-04 23:08:56', '2023-08-04 23:08:56'),
(208, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 44, NULL, NULL, '[]', NULL, 'created', '2023-08-04 23:08:56', '2023-08-04 23:08:56'),
(209, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 45, NULL, NULL, '[]', NULL, 'created', '2023-08-04 23:08:57', '2023-08-04 23:08:57'),
(210, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 46, NULL, NULL, '[]', NULL, 'created', '2023-08-04 23:08:57', '2023-08-04 23:08:57'),
(211, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 47, NULL, NULL, '[]', NULL, 'created', '2023-08-04 23:08:57', '2023-08-04 23:08:57'),
(212, 'default', 'created', 'App\\Models\\Admin\\Faq', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 00:27:01', '2023-08-05 00:27:01'),
(213, 'default', 'created', 'App\\Models\\Admin\\Faq', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 00:27:02', '2023-08-05 00:27:02'),
(214, 'default', 'deleted', 'App\\Models\\Admin\\Faq', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-05 00:27:57', '2023-08-05 00:27:57'),
(215, 'default', 'updated', 'App\\Models\\Admin\\Faq', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 00:33:37', '2023-08-05 00:33:37'),
(216, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 48, NULL, NULL, '[]', NULL, 'created', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(217, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 49, NULL, NULL, '[]', NULL, 'created', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(218, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 50, NULL, NULL, '[]', NULL, 'created', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(219, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 51, NULL, NULL, '[]', NULL, 'created', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(220, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 52, NULL, NULL, '[]', NULL, 'created', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(221, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 53, NULL, NULL, '[]', NULL, 'created', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(222, 'default', 'created', 'App\\Models\\Admin\\Testimonial', 1, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 00:49:34', '2023-08-05 00:49:34'),
(223, 'default', 'updated', 'App\\Models\\Admin\\Testimonial', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 00:49:34', '2023-08-05 00:49:34'),
(224, 'default', 'updated', 'App\\Models\\Admin\\Testimonial', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 00:50:08', '2023-08-05 00:50:08'),
(225, 'default', 'created', 'App\\Models\\Admin\\Testimonial', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 00:53:27', '2023-08-05 00:53:27'),
(226, 'default', 'updated', 'App\\Models\\Admin\\Testimonial', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 00:53:27', '2023-08-05 00:53:27'),
(227, 'default', 'created', 'App\\Models\\User', 2, NULL, NULL, '[]', NULL, 'created', '2023-08-05 02:02:08', '2023-08-05 02:02:08'),
(228, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 11, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-05 02:07:53', '2023-08-05 02:07:53'),
(229, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 8, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:09:42', '2023-08-05 02:09:42'),
(230, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 18, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:11:22', '2023-08-05 02:11:22'),
(231, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 18, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:11:45', '2023-08-05 02:11:45'),
(232, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 18, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:11:45', '2023-08-05 02:11:45'),
(233, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 8, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:12:13', '2023-08-05 02:12:13'),
(234, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 8, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:12:13', '2023-08-05 02:12:13'),
(235, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 19, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:14:16', '2023-08-05 02:14:16'),
(236, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 19, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:14:35', '2023-08-05 02:14:35'),
(237, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 20, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:15:10', '2023-08-05 02:15:10'),
(238, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 21, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:16:05', '2023-08-05 02:16:05'),
(239, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 20, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:16:48', '2023-08-05 02:16:48'),
(240, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 21, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:16:48', '2023-08-05 02:16:48'),
(241, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 19, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:16:48', '2023-08-05 02:16:48'),
(242, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 19, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:16:49', '2023-08-05 02:16:49'),
(243, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 20, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:26:29', '2023-08-05 02:26:29'),
(244, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 10, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:27:12', '2023-08-05 02:27:12'),
(245, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 22, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:28:57', '2023-08-05 02:28:57'),
(246, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 22, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:29:07', '2023-08-05 02:29:07'),
(247, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 22, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:29:25', '2023-08-05 02:29:25'),
(248, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 22, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 02:30:17', '2023-08-05 02:30:17'),
(249, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 23, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:30:48', '2023-08-05 02:30:48'),
(250, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 24, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:31:42', '2023-08-05 02:31:42'),
(251, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 25, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:32:11', '2023-08-05 02:32:11'),
(252, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 26, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:33:01', '2023-08-05 02:33:01'),
(253, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 27, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:33:41', '2023-08-05 02:33:41'),
(254, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 28, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:34:18', '2023-08-05 02:34:18'),
(255, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 29, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:34:19', '2023-08-05 02:34:19'),
(256, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 30, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:35:04', '2023-08-05 02:35:04'),
(257, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 16, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-05 02:35:27', '2023-08-05 02:35:27'),
(258, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 31, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 02:35:52', '2023-08-05 02:35:52'),
(259, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 32, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 03:55:55', '2023-08-05 03:55:55'),
(260, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 03:56:20', '2023-08-05 03:56:20'),
(261, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 32, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 03:56:20', '2023-08-05 03:56:20'),
(262, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 25, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 03:56:20', '2023-08-05 03:56:20'),
(263, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 27, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 03:56:21', '2023-08-05 03:56:21'),
(264, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 30, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 03:56:21', '2023-08-05 03:56:21'),
(265, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 04:34:08', '2023-08-05 04:34:08'),
(266, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 04:45:46', '2023-08-05 04:45:46'),
(267, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 04:46:01', '2023-08-05 04:46:01'),
(268, 'default', 'updated', 'App\\Models\\Admin\\Slider', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 06:18:17', '2023-08-05 06:18:17'),
(269, 'default', 'updated', 'App\\Models\\Admin\\Product', 2, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 06:20:29', '2023-08-05 06:20:29'),
(270, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 33, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 07:19:14', '2023-08-05 07:19:14'),
(271, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 34, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 07:19:43', '2023-08-05 07:19:43'),
(272, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 35, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 07:20:13', '2023-08-05 07:20:13'),
(273, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 36, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 07:20:46', '2023-08-05 07:20:46'),
(274, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 33, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 07:21:22', '2023-08-05 07:21:22'),
(275, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 34, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 07:21:22', '2023-08-05 07:21:22'),
(276, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 35, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 07:21:22', '2023-08-05 07:21:22'),
(277, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 36, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 07:21:22', '2023-08-05 07:21:22'),
(278, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 23, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 07:25:41', '2023-08-05 07:25:41'),
(279, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 07:25:42', '2023-08-05 07:25:42'),
(280, 'default', 'updated', 'App\\Models\\Admin\\Product', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 08:17:10', '2023-08-05 08:17:10'),
(281, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 37, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 13:28:35', '2023-08-05 13:28:35'),
(282, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 38, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-05 13:29:15', '2023-08-05 13:29:15'),
(283, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 37, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 13:29:48', '2023-08-05 13:29:48'),
(284, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 38, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 13:29:48', '2023-08-05 13:29:48'),
(285, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 38, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 13:29:48', '2023-08-05 13:29:48'),
(286, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 37, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-05 13:34:56', '2023-08-05 13:34:56'),
(287, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 9, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-06 10:33:19', '2023-08-06 10:33:19'),
(288, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 9, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-06 10:33:20', '2023-08-06 10:33:20'),
(289, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-06 10:33:28', '2023-08-06 10:33:28'),
(290, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 9, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-06 10:34:54', '2023-08-06 10:34:54'),
(291, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 9, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-06 10:34:54', '2023-08-06 10:34:54'),
(292, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-06 10:35:01', '2023-08-06 10:35:01'),
(293, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 39, 'App\\Models\\User', 1, '[]', NULL, 'created', '2023-08-09 04:09:24', '2023-08-09 04:09:24'),
(294, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 39, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-09 04:11:09', '2023-08-09 04:11:09'),
(295, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 29, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-09 04:11:52', '2023-08-09 04:11:52'),
(296, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 24, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-09 04:15:53', '2023-08-09 04:15:53'),
(297, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 25, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-09 04:15:53', '2023-08-09 04:15:53'),
(298, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 28, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-09 04:19:15', '2023-08-09 04:19:15'),
(299, 'default', 'updated', 'Pratiksh\\Adminetic\\Models\\Admin\\Setting', 26, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-09 04:19:24', '2023-08-09 04:19:24'),
(300, 'default', 'deleted', 'App\\Models\\User', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2023-08-13 05:51:52', '2023-08-13 05:51:52'),
(301, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2023-08-17 00:58:17', '2023-08-17 00:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `author`, `description`, `date`, `meta_name`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'The Art of Fish Keeping: A Guide to Creating a Serene Underwater World', 'website/blog/qA6XxyhXCpn8cO2lStE07L5nAvNJRkRRZsei1jGN.jpg', 'Ayush Karmacharya', '<p>Fish keeping, also known as aquaristics, is a captivating and rewarding hobby that allows enthusiasts to create a vibrant underwater world right in the comfort of their homes. The art of fish keeping is an age-old practice that dates back centuries, and its popularity continues to grow as people appreciate the beauty, tranquility, and therapeutic benefits it offers. In this blog, we delve into the fascinating world of fish keeping, exploring its benefits, key considerations, and essential tips for maintaining a thriving aquatic ecosystem.</p>\r\n\r\n<p><strong>Benefits of Fish Keeping:</strong> Fish keeping is more than just a captivating hobby; it provides a host of benefits for both the fish and the keepers. Here are some of the advantages of maintaining an aquarium:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Stress Reduction: Studies have shown that watching fish swimming gracefully can lower stress levels and promote relaxation. The gentle movement of fish has a calming effect, making fish tanks a great addition to homes, offices, and healthcare facilities.</p>\r\n	</li>\r\n	<li>\r\n	<p>Educational Value: Fish keeping offers an excellent opportunity to learn about aquatic ecosystems, biology, and marine life. It fosters a sense of responsibility and promotes environmental awareness.</p>\r\n	</li>\r\n	<li>\r\n	<p>Therapeutic Effects: Many therapists use fish tanks as a form of therapy, known as aqua therapy. The mesmerizing presence of fish can help reduce anxiety and improve mental well-being.</p>\r\n	</li>\r\n	<li>\r\n	<p>Enhancing Aesthetics: A well-maintained aquarium is a beautiful decorative piece that adds an element of elegance and visual appeal to any space.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Key Considerations for Fish Keeping:</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Choosing the Right Fish: Not all fish are suitable for beginners, and different species have varying requirements. Research and select fish species that are easy to care for and compatible with each other.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tank Size and Setup: The size of the tank is critical for the well-being of the fish. Larger tanks provide more stability and are easier to maintain. Ensure proper filtration, aeration, and lighting to mimic a natural environment.</p>\r\n	</li>\r\n	<li>\r\n	<p>Water Quality: Maintaining optimal water conditions is essential for the health of your fish. Regularly test the water for pH, ammonia, nitrite, and nitrate levels. Perform partial water changes to keep the water clean and toxin-free.</p>\r\n	</li>\r\n	<li>\r\n	<p>Feeding and Nutrition: Feed your fish a balanced diet suited to their species. Overfeeding can lead to water pollution and health issues. Monitor their eating habits and adjust the feeding schedule accordingly.</p>\r\n	</li>\r\n	<li>\r\n	<p>Compatibility: Some fish species can be territorial and aggressive towards others. Research the temperament and social behavior of your chosen fish to ensure they coexist harmoniously.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Essential Tips for Successful Fish Keeping:</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Patience is Key: Establishing a healthy aquatic environment takes time. Allow the nitrogen cycle to complete before introducing fish to your tank.</p>\r\n	</li>\r\n	<li>\r\n	<p>Regular Maintenance: Set up a routine for tank cleaning, water changes, and filter maintenance. Consistent care ensures a thriving and clean environment for your fish.</p>\r\n	</li>\r\n	<li>\r\n	<p>Quarantine New Fish: Before introducing new fish to your main tank, quarantine them in a separate tank for a few weeks to monitor their health and prevent the spread of diseases.</p>\r\n	</li>\r\n	<li>\r\n	<p>Observation: Regularly observe your fish for any signs of stress, disease, or unusual behavior. Early detection can prevent serious health issues.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Conclusion:</strong> Fish keeping is an enchanting and gratifying hobby that allows individuals to explore the wonders of marine life from the comfort of their own homes. From creating a serene and visually captivating environment to reaping the therapeutic benefits of observing these graceful creatures, fish keeping offers an array of rewards. By following proper care guidelines and providing a nurturing habitat, you can embark on a journey of building an underwater world that brings joy, peace, and wonderment to your life. So dive in, and let the beauty of fish keeping mesmerize you!</p>', '2023-08-02', 'The Art of Fish Keeping: Dive into a Tranquil Underwater World', 'Discover the therapeutic wonders of fish keeping. Create a serene underwater world with our comprehensive guide to fish keeping, fostering relaxation and environmental awareness.', 'Fish Keeping, Aquaristics, Aquarium Hobby, Serene Underwater World, Therapeutic Benefits, Environmental Awareness, Marine Life, Aqua Therapy', '2023-08-04 10:39:02', '2023-08-04 10:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Fishes', 'website/category/VrCC4Oi19IzbOmYn0u4lVmlXhJxHAyLbmBpaJUpL.jpg', 1, '2023-08-03 06:28:59', '2023-08-03 06:39:01'),
(3, 'Gadgets', 'website/category/EoYh14opUx5wFjuCHYbcL1TDDykTRCENYDn77oG9.jpg', 1, '2023-08-04 08:27:22', '2023-08-04 08:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'From the time I first contact you to the time my dispute is finalized, what is the time frame of this whole process?', 'I am sorry idk, ok bye', '2023-08-05 00:27:01', '2023-08-05 00:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Jack', 'website/gallery/6RFdHciNFwpUR1zBPpt7qg4wxHlgHpAsTDRrVY58.jpg', '2023-08-04 11:11:40', '2023-08-04 11:11:40'),
(4, NULL, 'website/gallery/J8l9MhGLlGmP4ILjtcMAXWveugLEidyUIyfeO18e.jpg', '2023-08-04 11:29:15', '2023-08-04 11:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_11_11_065705_create_roles_table', 1),
(6, '2020_11_12_073142_create_profiles_table', 1),
(7, '2020_11_13_000001_create_role_user_table', 1),
(8, '2020_11_19_072559_create_permissions_table', 1),
(9, '2021_01_04_050820_create_activity_log_table', 1),
(10, '2021_05_24_000001_create_data_table', 1),
(11, '2021_05_26_123406_create_settings_table', 1),
(12, '2021_05_28_043043_create_preferences_table', 1),
(13, '2021_05_28_051525_create_preference_user_table', 1),
(16, '2023_07_25_164157_create_sliders_table', 2),
(17, '2023_08_02_173359_create_services_table', 3),
(18, '2023_08_03_114732_create_categories_table', 4),
(19, '2023_08_03_154155_create_products_table', 5),
(20, '2023_08_04_092525_add_media_columns_to_products_table', 6),
(21, '2023_08_04_100411_create_media_table', 7),
(26, '2023_08_04_142854_create_galleries_table', 8),
(27, '2023_08_04_142905_create_blogs_table', 8),
(28, '2023_08_05_045355_create_faqs_table', 9),
(29, '2023_08_05_062031_create_testimonials_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `can` tinyint(1) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `browse`, `read`, `edit`, `add`, `delete`, `name`, `can`, `role_id`, `model`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Role', '2023-07-12 11:56:35', '2023-07-12 11:56:35'),
(2, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Permission', '2023-07-12 11:56:35', '2023-07-12 11:56:35'),
(3, 1, 1, 1, 1, 1, NULL, NULL, 2, 'User', '2023-07-12 11:56:35', '2023-07-12 11:56:35'),
(4, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Setting', '2023-07-12 11:56:35', '2023-08-04 11:24:05'),
(5, 0, 0, 0, 0, 0, NULL, NULL, 2, 'Preference', '2023-07-12 11:56:35', '2023-08-02 11:36:09'),
(6, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Slider', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(7, 1, 0, 1, 1, 1, 'Slider', 1, 2, 'Slider', '2023-07-25 10:56:58', '2023-08-02 11:32:04'),
(8, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Slider', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(9, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Slider', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(10, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Slider', '2023-07-25 10:56:58', '2023-07-25 10:56:58'),
(11, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Slider', '2023-07-25 10:56:59', '2023-07-25 10:56:59'),
(12, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Service', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(13, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Service', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(14, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Service', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(15, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Service', '2023-08-02 11:49:00', '2023-08-02 11:49:00'),
(16, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Service', '2023-08-02 11:49:01', '2023-08-02 11:49:01'),
(17, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Service', '2023-08-02 11:49:01', '2023-08-02 11:49:01'),
(18, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Category', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(19, 1, 0, 1, 1, 1, NULL, NULL, 2, 'Category', '2023-08-03 06:02:33', '2023-08-04 11:24:58'),
(20, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Category', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(21, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Category', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(22, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Category', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(23, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Category', '2023-08-03 06:02:33', '2023-08-03 06:02:33'),
(24, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Product', '2023-08-03 09:56:56', '2023-08-03 09:56:56'),
(25, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Product', '2023-08-03 09:56:56', '2023-08-03 09:56:56'),
(26, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Product', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(27, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Product', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(28, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Product', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(29, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Product', '2023-08-03 09:56:57', '2023-08-03 09:56:57'),
(30, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Gallery', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(31, 1, 0, 0, 1, 1, NULL, NULL, 2, 'Gallery', '2023-08-04 08:43:55', '2023-08-04 11:24:11'),
(32, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Gallery', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(33, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Gallery', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(34, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Gallery', '2023-08-04 08:43:55', '2023-08-04 08:43:55'),
(35, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Gallery', '2023-08-04 08:43:56', '2023-08-04 08:43:56'),
(36, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Blog', '2023-08-04 08:44:05', '2023-08-04 08:44:05'),
(37, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Blog', '2023-08-04 08:44:05', '2023-08-04 08:44:05'),
(38, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Blog', '2023-08-04 08:44:05', '2023-08-04 08:44:05'),
(39, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Blog', '2023-08-04 08:44:06', '2023-08-04 08:44:06'),
(40, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Blog', '2023-08-04 08:44:06', '2023-08-04 08:44:06'),
(41, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Blog', '2023-08-04 08:44:06', '2023-08-04 08:44:06'),
(42, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Faq', '2023-08-04 23:08:56', '2023-08-04 23:08:56'),
(43, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Faq', '2023-08-04 23:08:56', '2023-08-04 23:08:56'),
(44, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Faq', '2023-08-04 23:08:56', '2023-08-04 23:08:56'),
(45, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Faq', '2023-08-04 23:08:57', '2023-08-04 23:08:57'),
(46, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Faq', '2023-08-04 23:08:57', '2023-08-04 23:08:57'),
(47, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Faq', '2023-08-04 23:08:57', '2023-08-04 23:08:57'),
(48, 1, 1, 1, 1, 1, NULL, NULL, 1, 'Testimonial', '2023-08-05 00:35:31', '2023-08-05 00:35:31'),
(49, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Testimonial', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(50, 1, 1, 1, 1, 1, NULL, NULL, 3, 'Testimonial', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(51, 1, 1, 1, 1, 1, NULL, NULL, 4, 'Testimonial', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(52, 1, 1, 1, 1, 1, NULL, NULL, 5, 'Testimonial', '2023-08-05 00:35:32', '2023-08-05 00:35:32'),
(53, 1, 1, 1, 1, 1, NULL, NULL, 6, 'Testimonial', '2023-08-05 00:35:32', '2023-08-05 00:35:32');

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
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`roles`)),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preference_user`
--

CREATE TABLE `preference_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` int(11) NOT NULL,
  `sp` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `is_best_selling` tinyint(1) NOT NULL DEFAULT 0,
  `is_new_arrival` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `mrp`, `sp`, `description`, `is_active`, `is_popular`, `is_best_selling`, `is_new_arrival`, `created_at`, `updated_at`) VALUES
(2, 2, 'Betta FIsh', 'website/product/vjC6vKjA1TgTZhyqppr1GlwXuDcA0egct2X0uJY8.jpg', 10000, 8000, '<p>Lorem Ipsum</p>', 1, 1, 1, 0, '2023-08-03 13:01:40', '2023-08-05 06:20:29'),
(3, 2, 'Jack Dempsey', 'website/product/CsLxLimxAFBPEtYe0SyNaDF43Gke6stR0YFXySMQ.jpg', 5000, 4500, '<p>🐟 Introducing the Jack Dempsey Fish (Rocio octofasciata):</p>\r\n\r\n<ul>\r\n	<li>🌈 Vibrant Colors: Experience a mesmerizing display of colors, from electrifying blues to fiery oranges, making your aquarium a living work of art.</li>\r\n	<li>🎨 Distinctive Patterns: Each Jack Dempsey flaunts unique patterns, creating an enchanting spectacle that captivates every onlooker.</li>\r\n	<li>🥊 Named after a Legend: Inspired by the legendary boxer, this fish embodies strength, charisma, and a captivating personality in your tank.</li>\r\n	<li>🏠 Perfect for Your Aquarium: Thriving in well-maintained aquariums, the Jack Dempsey loves exploring its habitat, bringing life and excitement to your setup.</li>\r\n	<li>🤝 Social Yet Fierce: Watch as they interact with other fish, showcasing both social behavior and territorial instincts, adding dynamic energy to your aquatic community.</li>\r\n	<li>🧠 Intelligent and Curious: Delight in their smart and inquisitive nature, as they respond to your presence and interact with their environment in delightful ways.</li>\r\n	<li>💖 Rewarding Companions: With proper care, these fish will reward you with their stunning beauty and engaging personalities, making them cherished companions for years to come.</li>\r\n</ul>\r\n\r\n<p>🌊 Dive into the world of Jack Dempsey fish, where beauty, strength, and personality converge in a captivating aquatic masterpiece that will leave you in awe. Experience the allure of this legendary fish for yourself and elevate your aquarium to a whole new level of wonder!</p>', 0, 1, 0, 1, '2023-08-04 01:37:00', '2023-08-05 08:17:10'),
(11, 3, 'Filter', 'website/product/JDF0sDknMks6hhmaFc58VXmLbwoA2lTMFqWMAEsj.jpg', 1499, 999, '<p>Dive into a whole new realm of aquarium filtration with the AquaticFlow Pro Aquarium Filter. Crafted with precision and designed for perfection, this advanced filtration system sets the standard for superior water quality and a thriving aquatic environment.</p>\r\n\r\n<p><strong>Key Features:</strong></p>\r\n\r\n<p>🐟 <strong>Powerful Filtration:</strong> Say goodbye to murky waters and debris-filled tanks. The AquaticFlow Pro boasts a high-performance filtration system that effortlessly clears out impurities, leaving your aquarium water crystal clear and pristine.</p>\r\n\r\n<p>🌊<strong> Multi-Stage Filtration:</strong> Experience the harmony of mechanical, biological, and chemical filtration. Our filter combines multiple stages to efficiently remove uneaten food, toxins, and harmful waste, creating a harmonious habitat for your beloved fish.</p>\r\n\r\n<p>💡 <strong>Whisper-quiet Operation:</strong> Enjoy a tranquil aquatic experience with our cutting-edge sound-dampening technology. The AquaticFlow Pro operates with near-silent efficiency, allowing you and your fish to bask in the soothing ambiance of your aquarium<strong>.</strong></p>\r\n\r\n<p><strong>🔄 Easy Maintenance: </strong>We understand your time is valuable, so we&#39;ve made maintenance a breeze. The filter&#39;s user-friendly design enables quick and straightforward cleaning and media replacement, ensuring you spend more time enjoying your aquatic world and less time maintaining it.</p>\r\n\r\n<p><strong>📈 Adjustable Flow Rate: </strong>Take control of your aquarium&#39;s water flow. With our customizable flow rate feature, you can tailor the filtration to meet the specific needs of your aquatic inhabitants, ensuring their comfort and well-being.</p>\r\n\r\n<p><strong>🚀 High Capacity:</strong> The AquaticFlow Pro comes in various sizes, catering to aquariums of all shapes and sizes. Whether you have a cozy mini tank or a grand aquatic wonderland, we have the perfect fit for you.</p>\r\n\r\n<p><strong>🔧 Simple Installation:</strong> No more complex setup processes! Our filter comes with a hassle-free installation kit and step-by-step instructions, making it a breeze for beginners and seasoned aquarists alike.</p>\r\n\r\n<p><strong>🌱 Promote Marine Life</strong>: Create the ideal habitat for your aquatic plants and marine life to flourish. With the AquaticFlow Pro, you&#39;ll witness the vibrant colors and lively behavior of your underwater ecosystem like never before.</p>\r\n\r\n<p>Upgrade your aquarium&#39;s filtration game and embark on an aquatic adventure with the AquaticFlow Pro Aquarium Filter. Watch your aquatic world thrive and become a spectacle of natural beauty that will captivate your guests and mesmerize your senses. Experience the power of advanced filtration and enhance your aquarium experience today!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<form>&nbsp;</form>', 1, 1, 1, 1, '2023-08-04 08:28:59', '2023-08-04 08:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `gender` int(11) DEFAULT NULL,
  `martial_status` int(11) DEFAULT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`phone_no`)),
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `username`, `profile_pic`, `status`, `gender`, `martial_status`, `blood_group`, `country`, `address`, `phone_no`, `email`, `birthday`, `facebook`, `instagram`, `twitter`, `linkedin`, `father_name`, `mother_name`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-12 11:56:36', '2023-07-12 11:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'This is a super admin user', 5, NULL, NULL),
(2, 'admin', 'This is an admin user', 4, NULL, NULL),
(3, 'moderator', 'This is an moderator', 3, NULL, NULL),
(4, 'editor', 'This is an editor', 2, NULL, NULL),
(5, 'user', 'This is an normal user', 1, NULL, NULL),
(6, 'unverified', 'This is an unverified user', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-07-12 11:56:36', '2023-07-12 11:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `image`, `excerpt`, `created_at`, `updated_at`) VALUES
(1, 'Maintenance', 'website/service/lDVkVKyRDbC6phTdLbucR6IxSwzG8gIbmoE2QacP.png', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Optio at quos, numquam minus, vel quae, tenetur sapiente nihil debitis quaerat id quam exercitationem nostrum dolore? Voluptate amet accusamus ullam numquam dolorum. Ut sed dicta doloribus, quia quo cum doloremque soluta?</p>', '2023-08-02 12:16:45', '2023-08-02 12:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `setting_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`setting_json`)),
  `setting_custom` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`setting_custom`)),
  `setting_type` int(11) NOT NULL,
  `setting_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_name`, `string_value`, `integer_value`, `text_value`, `boolean_value`, `setting_json`, `setting_custom`, `setting_type`, `setting_group`, `created_at`, `updated_at`) VALUES
(5, 'logo', 'admin/setting/HtyI1G0umRsYwwcYVSbI3FTTjdVfR3UnQFjs4e8M.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"logo\\\",\\r\\n    \\\"id\\\": \\\"logo\\\"\\r\\n}\"', 10, 'multimedia', '2023-03-23 02:34:08', '2023-07-23 11:22:54'),
(6, 'favicon', 'admin/setting/SEKFYHarj8jXYZMv1fZz2fH9h453OgxFAATConbc.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"favicon\\\",\\r\\n    \\\"id\\\": \\\"favicon\\\"\\r\\n}\"', 10, 'multimedia', '2023-03-23 02:34:26', '2023-07-23 09:13:58'),
(7, 'dark_logo', 'admin/setting/a9XNFwxpZe7syVF5LHWtePFaHqSIeTa7ScTePn6a.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"dark_logo\\\",\\r\\n    \\\"id\\\": \\\"dark_logo\\\"\\r\\n}\"', 10, 'multimedia', '2023-03-23 02:34:45', '2023-07-23 09:13:59'),
(8, 'headerbanner', 'admin/setting/ly9ZxXsmQ9v8yZQQRO3uG6lpdVCtL3Ru666LEpsC.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"headerBanner\\\",\\r\\n    \\\"id\\\": \\\"headerBanner\\\"\\r\\n}\"', 10, 'multimedia', '2023-03-23 02:35:00', '2023-08-05 02:12:13'),
(9, 'login_register_bg_image', 'admin/setting/dTC4G8Ks7qwmMaHRGE8Q3rJDnHWcBIe2aTKRogfN.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"login_register_bg_image\\\",\\r\\n    \\\"id\\\": \\\"login_register_bg_image\\\"\\r\\n}\"', 10, 'multimedia', '2023-03-23 02:35:15', '2023-08-06 10:34:54'),
(10, 'title', 'Matshya Gallery', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"title\\\",\\r\\n    \\\"id\\\": \\\"title\\\",\\r\\n    \\\"placeholder\\\": \\\"Site Title Here!!\\\"\\r\\n}\"', 1, 'general', '2023-03-23 02:35:41', '2023-08-05 02:27:12'),
(12, 'phone', '+977 9812345678', 0, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"phone\\\",\\r\\n    \\\"id\\\": \\\"id\\\",\\r\\n    \\\"placeholder\\\": \\\"Contact Number Here!!\\\"\\r\\n}\"', 1, 'general', '2023-03-23 02:39:52', '2023-08-04 23:04:56'),
(13, 'email', 'matshyagallery@gmail.com', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"email\\\",\\r\\n    \\\"id\\\": \\\"email\\\",\\r\\n    \\\"placeholder\\\": \\\"Email Address\\\"\\r\\n}\"', 1, 'general', '2023-03-23 02:40:21', '2023-08-04 23:04:57'),
(17, 'address', 'Kamalbinayak, Bhaktapur', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"address\\\",\\r\\n    \\\"id\\\": \\\"address\\\",\\r\\n    \\\"placeholder\\\": \\\"Address Here\\\"\\r\\n}\"', 1, 'general', '2023-03-23 02:43:27', '2023-08-04 23:04:57'),
(18, 'footerbanner', 'admin/setting/KuSbgkz9rikIFo3gJFtL4SywB6vl3T5Oey7Y4QA2.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"footerBanner\\\",\\r\\n    \\\"id\\\": \\\"footerBanner\\\",\\r\\n   \\r\\n}\"', 10, 'multimedia', '2023-08-05 02:11:21', '2023-08-05 02:11:45'),
(19, 'about_background', 'admin/setting/xDk1uqM7enElop4IQ7OnTbrdPBJAXxPTvoHNWmRj.jpg', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n}\"', 10, 'about_us', '2023-08-05 02:14:16', '2023-08-05 02:16:48'),
(20, 'about_body', NULL, NULL, '<p>Immerse Yourself in Beauty&nbsp;with our breathtaking Custom Fish Tanks, Luxury Aquarium Design, Installation, and Maintenance services. Our team of skilled artisans and aquatic experts are passionate about creating mesmerizing underwater worlds that elevate any space.</p>\r\n\r\n<p>From intimate residential setups to extravagant commercial installations, we turn your vision into reality. 🌊 &quot;Let Your Imagination Swim Free&quot; as we craft an aquatic masterpiece uniquely tailored to your style and budget.</p>\r\n\r\n<p>Explore our gallery and &quot;Dive into Underwater Elegance&quot; as you witness the beauty of our creations. Contact us today, and together, we&#39;ll &quot;Transform Your Space into an Aquatic Paradise&quot; that leaves a lasting impression on all who behold it. 🌟🌊💎</p>', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter some text\\\"\\r\\n}\"', 4, 'about_us', '2023-08-05 02:15:09', '2023-08-05 02:26:28'),
(21, 'about_title', 'Specialists In Custom Fish Tanks, Luxury Aquarium Design, Installation And Maintenance', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"placeholder\\\": \\\"About us Title Here!!\\\"\\r\\n}\"', 1, 'about_us', '2023-08-05 02:16:05', '2023-08-05 02:16:48'),
(22, 'facebook_link', 'https://www.facebook.com', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"placeholder\\\": \\\"Facebook link\\\"\\r\\n}\"', 1, 'general', '2023-08-05 02:28:57', '2023-08-05 02:30:17'),
(23, 'instagram_link', 'https://www.instagram.com', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"placeholder\\\": \\\"Instagram link\\\"\\r\\n}\"', 1, 'general', '2023-08-05 02:30:47', '2023-08-05 07:25:41'),
(24, 'return_policy_title', 'How do I return?', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"placeholder\\\": \\\"Return Policy Title Here!!\\\"\\r\\n}\"', 1, 'return_policy', '2023-08-05 02:31:42', '2023-08-09 04:15:53'),
(25, 'return_policy_body', NULL, NULL, '<p>No you cannot, paidaina vanesi paidaina paidaina !!</p>', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter content here!!\\\"\\r\\n}\"', 4, 'return_policy', '2023-08-05 02:32:11', '2023-08-09 04:15:53'),
(26, 'shipping_policy_title', 'hi hi', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"placeholder\\\": \\\"Shipping Policy Title Here!!\\\"\\r\\n}\"', 1, 'shipping_policy', '2023-08-05 02:33:00', '2023-08-09 04:19:24'),
(27, 'shipping_policy_body', NULL, NULL, '<p>Enter Shipping Policy Contents!!</p>', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter Shipping Policy Contents!!\\\"\\r\\n}\"', 4, 'shipping_policy', '2023-08-05 02:33:41', '2023-08-05 03:56:21'),
(28, 'terms_and_condition_title', 'hello', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n    \\\"placeholder\\\": \\\"Terms and Condition Title Here!!\\\"\\r\\n}\"', 1, 'terms_and_conditions', '2023-08-05 02:34:17', '2023-08-09 04:19:15'),
(30, 'terms_and_condition_body', NULL, NULL, '<p>Enter terms and condition contents here!!</p>', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter terms and condition contents here!!\\\"\\r\\n}\"', 4, 'terms_and_conditions', '2023-08-05 02:35:03', '2023-08-05 03:56:21'),
(31, 'map', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3533.35205098806!2d85.44493347515544!3d27.675511976200823!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb05455aa0697b%3A0xc110fa617e527a1e!2sKamalbinayak%2C%20Bhaktapur!5e0!3m2!1sen!2snp!4v1689060184125!5m2!1sen!2snp', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter map link here!!\\\"\\r\\n}\"', 3, 'general', '2023-08-05 02:35:52', '2023-08-05 07:25:42'),
(32, 'short_description', NULL, NULL, 'Matshya Gallery is a heaven for fish lovers.', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter some text about website\\\"\\r\\n}\"', 3, 'general', '2023-08-05 03:55:55', '2023-08-05 03:56:20'),
(33, 'happy_customers', '150+', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n}\"', 1, 'achievements', '2023-08-05 07:19:13', '2023-08-05 07:21:21'),
(34, 'items_sold', '1000+', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n}\"', 1, 'achievements', '2023-08-05 07:19:43', '2023-08-05 07:21:22'),
(35, '5_star_ratings', '120+', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n}\"', 1, 'achievements', '2023-08-05 07:20:13', '2023-08-05 07:21:22'),
(36, 'years_of_experience', '10+', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n}\"', 1, 'achievements', '2023-08-05 07:20:46', '2023-08-05 07:21:22'),
(37, 'payment_details', NULL, NULL, '<ul>\r\n	<li><strong>A/C Number:</strong>&nbsp;01748549621578</li>\r\n	<li><strong>Bank Name:&nbsp;</strong>NMB Bank</li>\r\n	<li><strong>Branch</strong>:&nbsp;Chucchepati, Chabahil</li>\r\n	<li><strong>Esewa Id:</strong>&nbsp;+977 986-1456789</li>\r\n	<li><strong>Khalti Id:</strong>&nbsp;+977 986-1456789</li>\r\n</ul>', NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\",\\r\\n    \\\"value\\\": \\\"Enter payment details here!!\\\"\\r\\n}\"', 4, 'payment_page', '2023-08-05 13:28:35', '2023-08-05 13:34:56'),
(38, 'qr_code', 'admin/setting/LZhHtT9svWyNfelZO7DCQB3FsRGqOAtEs4mz6KBV.png', NULL, NULL, NULL, NULL, '\"{\\r\\n    \\\"class\\\": \\\"my_class\\\",\\r\\n    \\\"id\\\": \\\"my_id\\\"\\r\\n}\"', 10, 'payment_page', '2023-08-05 13:29:15', '2023-08-05 13:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Couple Fish', 'website/slider/FDcRvovHLgLSxkj4Xre4kOzp2YFGmYUquv0CahVS.jpg', 1, '2023-08-02 10:34:15', '2023-08-05 06:18:17'),
(6, 'Single Fish', 'website/slider/yp1UwtP1ud4968wzhpKW4gy6cNXHl7h3pcAo5Zth.jpg', 1, '2023-08-02 11:29:36', '2023-08-02 11:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `excerpt`, `created_at`, `updated_at`) VALUES
(1, 'Ayush Karmacharya123', 'website/testimonial/yjMrqydsC9YlBBFbb9jS4wjz6onKZTLEDv2gUJT0.jpg', '<p>123Dive into an aquatic wonderland! The Aquarium Shop is a mesmerizing haven for all aquarium enthusiasts. Discover a captivating range of vibrant fish and exquisite marine life. From colorful tropical fish to graceful aquatic plants, they have it all! Immerse yourself in the tranquil beauty of their stunning displays and find everything you need to create your own underwater paradise. The Aquarium Shop truly makes dreams come alive for every aquarium lover!</p>', '2023-08-05 00:49:33', '2023-08-05 00:50:08'),
(2, 'Anush Hada', 'website/testimonial/H4hJPmNJjATkNfaaes76MnH6uX3UW9jIMixrRqZi.jpg', '<p>I love to eat fishes. They provide varierty of tasty fish, large ones, some are 10 inches long and thick. I like to get suffocated.</p>', '2023-08-05 00:53:26', '2023-08-05 00:53:27');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$8ENtxZQmG9TdrgBeR/U1Le9bnkidPBT8pQS0srfSZBPkfjmfJxuiG', 'B4CjetYNZGAq5lUNzRCAdBkrWHO178uQU1mkAq4cGjCON1CSQd8d8ehIqmjW', '2023-07-12 11:56:36', '2023-07-12 11:56:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preference_user`
--
ALTER TABLE `preference_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preference_user`
--
ALTER TABLE `preference_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
