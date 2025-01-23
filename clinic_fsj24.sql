-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 04:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic_fsj24`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_appointment` date NOT NULL,
  `time_appointment` time NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `user_id`, `date_appointment`, `time_appointment`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 3, '2025-01-20', '15:30:00', 'Dolor estomacal', 'Pendiente', '2025-01-09 07:32:03', '2025-01-09 07:32:03'),
(2, 3, 1, '2025-03-05', '10:15:00', 'Consulta general', 'Pendiente', '2025-01-09 07:36:36', '2025-01-09 07:36:36'),
(3, 4, 3, '2025-02-15', '11:00:00', 'Infeccion de la garganta', 'Pendiente', '2025-01-09 07:37:09', '2025-01-09 07:37:09'),
(4, 16, 29, '2025-01-15', '13:00:00', 'consulta general', 'Pendiente', '2025-01-15 08:02:16', '2025-01-15 08:02:16'),
(5, 17, 30, '2025-01-15', '13:00:00', 'consulta general', 'Pendiente', '2025-01-15 08:02:44', '2025-01-15 08:02:44'),
(6, 18, 31, '2025-01-15', '13:00:00', 'consulta general', 'Pendiente', '2025-01-15 08:03:01', '2025-01-15 08:03:01'),
(7, 1, 1, '2025-01-22', '14:30:00', 'consulta general', 'Pendiente', '2025-01-21 22:33:50', '2025-01-21 22:33:50'),
(8, 5, 22, '2025-01-24', '09:00:00', 'Infeccion estomacal', 'Pendiente', '2025-01-21 22:35:06', '2025-01-21 22:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_07_011112_create_rol_table', 2),
(5, '2025_01_07_011238_create_patients_table', 2),
(6, '2025_01_07_011257_create_appointments_table', 2),
(7, '2025_01_07_013923_add_rol_id_to_users_table', 3),
(8, '2025_01_08_012516_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_born` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `date_born`, `gender`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Loyal Conroy IV', '1986-07-06', 'Femenino', 'santiago bernabeu, ciudad barcelona', '503-347-693', 'profLoyal19@example.test', '2025-01-08 06:33:28', '2025-01-20 22:55:19'),
(2, 'Brooklyn Hickle', '1986-10-19', 'Femenino', 'Et quas enim nemo amet.', '503-180-357', 'rebekah.johns@example.net', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(3, 'Rubie Cronin Chacon', '1989-11-25', 'Femenino', 'Saepe ut fugiat animi quo, holaaaa', '503-950-227', 'velma20@example.net', '2025-01-08 06:33:28', '2025-01-21 02:28:28'),
(4, 'Madyson Brown', '1983-04-01', 'Femenino', 'Ut quo facere et enim.', '503-119-494', 'alexa45@example.net', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(5, 'Zena Schumm', '1989-07-15', 'Masculino', 'Quis in ut impedit ex.', '503-883-302', 'nolan.elza@example.org', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(6, 'Miss Carmen Wunsch', '1970-10-05', 'Femenino', 'Dicta nemo explicabo quidem.', '503-962-771', 'nellie24@example.net', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(7, 'Prof. Orrin Spencer', '1981-07-21', 'Femenino', 'Quo quia cumque est nulla.', '503-148-747', 'bonnie.kautzer@example.org', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(8, 'Dayna Glover', '1971-12-02', 'Masculino', 'Rerum eum in fuga.', '503-213-668', 'torrey91@example.org', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(9, 'Freeda Yost', '1979-11-23', 'Femenino', 'Et eum consequatur maxime.', '503-416-321', 'kody32@example.com', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(10, 'Mr. Sammie Hermann', '1979-01-17', 'Femenino', 'Qui ut nisi qui eum.', '503-116-285', 'jeff.yundt@example.com', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(11, 'Roberta Alexandra de Figueroa', '1978-03-29', 'Femenino', 'Qui fugit vel eum et eius.', '50310702', 'iharvey@gmail.net', '2025-01-09 06:40:27', '2025-01-09 07:11:31'),
(12, 'Mrs. Victoria Huel MD', '1971-09-07', 'Femenino', 'Cumque illo rerum omnis.', '503-006-411', 'ona.lang@example.org', '2025-01-15 07:30:43', '2025-01-15 07:30:43'),
(13, 'Nelda Bogan', '1994-07-21', 'Femenino', 'Aut perferendis sed ut.', '503-298-523', 'bfahey@example.net', '2025-01-15 07:30:43', '2025-01-15 07:30:43'),
(14, 'Mr. Aric Mohr', '1989-08-08', 'Masculino', 'Similique qui quia fugiat.', '503-007-991', 'tiffany.gulgowski@example.org', '2025-01-15 07:30:43', '2025-01-15 07:30:43'),
(15, 'Kenia Paiz', '1998-08-19', 'Femenino', 'San Ignacio', '76543898', 'kenia@example.com', '2025-01-15 07:47:10', '2025-01-15 07:47:10'),
(16, 'Idella Stroman', '1997-12-04', 'Masculino', 'chalatenango, el paraiso', '503-511-950', 'johann27@example.org', '2025-01-15 08:02:16', '2025-01-22 06:58:40'),
(17, 'Prof. Clifford Cruickshank', '1993-05-16', 'Femenino', 'Iusto aspernatur maiores eum.', '503-910-704', 'bart.wilkinson@example.net', '2025-01-15 08:02:44', '2025-01-15 08:02:44'),
(18, 'Marcelle Wintheiser', '1987-06-18', 'Femenino', 'Est unde mollitia eos sunt.', '503-102-754', 'muriel10@example.net', '2025-01-15 08:03:01', '2025-01-15 08:03:01'),
(19, 'Marcos Antonio Mendez', '2004-02-17', 'Masculino', 'random', '67452345', 'marcos@example.com', '2025-01-20 22:52:30', '2025-01-20 22:52:30'),
(20, 'Katy Guevara', '2011-03-24', 'Femenino', 'chalatenango, el paraiso', '503-7890654', 'katy1920@example.com', '2025-01-21 02:29:36', '2025-01-22 06:59:22'),
(21, 'Ever Bimael Castro', '2010-03-17', 'Masculino', 'san salvador, el salvador', '503-6789456', 'ever@example.test', '2025-01-21 07:46:54', '2025-01-21 07:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api-token', '1b57e3cd88d9d5b2911400347580685e387d228cb9b3f1029bc428297c30f0ae', '[\"*\"]', NULL, NULL, '2025-01-14 07:30:37', '2025-01-14 07:30:37'),
(3, 'App\\Models\\User', 1, 'api-token', '344ce15b4baf68a9c3552ef3b290e24bb957a5e3cccd411069672e934f804bfc', '[\"*\"]', '2025-01-14 07:57:57', NULL, '2025-01-14 07:57:43', '2025-01-14 07:57:57'),
(4, 'App\\Models\\User', 1, 'api-token', 'fda1b0de93e7b03278d914869e31df54ad9788c29bd1f7f8446e7ada2b5038d3', '[\"*\"]', '2025-01-15 06:44:32', NULL, '2025-01-15 06:36:41', '2025-01-15 06:44:32'),
(5, 'App\\Models\\User', 2, 'api-token', '283cfef892cfbfe7f025223f8c950d24b01e0fa9be0eb3590e504b46dc463704', '[\"*\"]', '2025-01-16 06:02:03', NULL, '2025-01-15 06:41:50', '2025-01-16 06:02:03'),
(6, 'App\\Models\\User', 26, 'test_token', 'fce48a4cef0dc2129b1f17517a6e2da04190853c541368472c81ca46aef5718c', '[\"*\"]', '2025-01-15 07:46:45', NULL, '2025-01-15 07:46:45', '2025-01-15 07:46:45'),
(7, 'App\\Models\\User', 27, 'test_token', '773eeadedfab21be94ebeaf519cb0037434c1aee8f611ff29045c188c32016a4', '[\"*\"]', '2025-01-15 07:47:10', NULL, '2025-01-15 07:47:10', '2025-01-15 07:47:10'),
(8, 'App\\Models\\User', 28, 'test_token', '8024cae33aa73fb5cda97f75c802544c91bc4211e959b5b4538554f029f807fa', '[\"*\"]', '2025-01-15 08:02:16', NULL, '2025-01-15 08:02:16', '2025-01-15 08:02:16'),
(9, 'App\\Models\\User', 2, 'api-token', '0234567a86baa60f1f3096dcee0dd77876e27692ab0f3603b1d79799415495b3', '[\"*\"]', NULL, NULL, '2025-01-16 05:56:14', '2025-01-16 05:56:14'),
(10, 'App\\Models\\User', 2, 'api-token', '917fb472e939a2a93c707aefe6f10b9902dbb14e84971c80f68a90219d0f59ed', '[\"*\"]', '2025-01-16 05:59:16', NULL, '2025-01-16 05:58:38', '2025-01-16 05:59:16'),
(11, 'App\\Models\\User', 2, 'api-token', 'ce8f10543586619531af80ba609362d9d7a78785a37a30d4ddf18ccd249e5003', '[\"*\"]', '2025-01-16 06:52:35', NULL, '2025-01-16 06:51:48', '2025-01-16 06:52:35'),
(12, 'App\\Models\\User', 2, 'api_token', '32a79986840775aaf46903994cc64c918fab3d9b6f8e07c492417a1862b7c51b', '[\"*\"]', NULL, NULL, '2025-01-20 21:51:04', '2025-01-20 21:51:04'),
(13, 'App\\Models\\User', 1, 'api_token', '37e5557cf6004eb2ff8acb324b0ebf88d069bc23dee0ed7e9b6d2daa4659734b', '[\"*\"]', NULL, NULL, '2025-01-20 21:51:50', '2025-01-20 21:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'doctor', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'recepcionista', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FmHATa6crx2K61bDU3ILQxGMiF2ujV605DJLyN2e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0N5Y1ZsUVBTUlJNYnU2V21ic0tvamUycGh2eU8xRGp4U0dFY2tDMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXRpZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737511317);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rol_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Caterina Willms II', 'xmitchell@example.net', '2025-01-08 06:30:02', '$2y$12$kqOYFiyPAlMeMAWLegfp4O3Rgxp9Aa8ECEhfClytWBqEEX1qfxsmK', 'V0ff3dtdbw', '2025-01-08 06:30:03', '2025-01-08 06:30:03'),
(2, 3, 'Tina Kling', 'aschaefer@example.com', '2025-01-08 06:30:03', '$2y$12$kqOYFiyPAlMeMAWLegfp4O3Rgxp9Aa8ECEhfClytWBqEEX1qfxsmK', 'NbwAL4MBh9', '2025-01-08 06:30:03', '2025-01-08 06:30:03'),
(3, 1, 'Polly Rau', 'lubowitz.imogene@example.net', '2025-01-08 06:30:03', '$2y$12$kqOYFiyPAlMeMAWLegfp4O3Rgxp9Aa8ECEhfClytWBqEEX1qfxsmK', 'aClI1hLn0b', '2025-01-08 06:30:03', '2025-01-08 06:30:03'),
(4, 3, 'Arianna Schuppe', 'cynthia76@example.net', '2025-01-08 06:30:03', '$2y$12$kqOYFiyPAlMeMAWLegfp4O3Rgxp9Aa8ECEhfClytWBqEEX1qfxsmK', 'QdL71DSXa1', '2025-01-08 06:30:03', '2025-01-08 06:30:03'),
(5, 1, 'Dr. Demetris Brekke', 'mbauch@example.com', '2025-01-08 06:30:03', '$2y$12$kqOYFiyPAlMeMAWLegfp4O3Rgxp9Aa8ECEhfClytWBqEEX1qfxsmK', 'g5imDSmZlJ', '2025-01-08 06:30:03', '2025-01-08 06:30:03'),
(6, 1, 'Asha Schumm', 'joaquin69@example.com', '2025-01-08 06:30:37', '$2y$12$axuJb/rZBlZlB78uyQN3Gubo2bWwiNPHpIwwofEZA4kovktuI.yaq', 'dejDw8PuIm', '2025-01-08 06:30:38', '2025-01-08 06:30:38'),
(7, 2, 'Beverly Parisian PhD', 'dexter.rempel@example.net', '2025-01-08 06:30:38', '$2y$12$axuJb/rZBlZlB78uyQN3Gubo2bWwiNPHpIwwofEZA4kovktuI.yaq', 'm3VnARNQwB', '2025-01-08 06:30:38', '2025-01-08 06:30:38'),
(8, 3, 'Dr. Efrain Weimann', 'akeem64@example.net', '2025-01-08 06:30:38', '$2y$12$axuJb/rZBlZlB78uyQN3Gubo2bWwiNPHpIwwofEZA4kovktuI.yaq', 'qBXYDxJYXa', '2025-01-08 06:30:38', '2025-01-08 06:30:38'),
(9, 2, 'Carley McGlynn', 'damore.breanne@example.org', '2025-01-08 06:30:38', '$2y$12$axuJb/rZBlZlB78uyQN3Gubo2bWwiNPHpIwwofEZA4kovktuI.yaq', 'CBCExCiIsB', '2025-01-08 06:30:38', '2025-01-08 06:30:38'),
(10, 1, 'Ms. Kyra Jerde', 'mrohan@example.net', '2025-01-08 06:30:38', '$2y$12$axuJb/rZBlZlB78uyQN3Gubo2bWwiNPHpIwwofEZA4kovktuI.yaq', 'PmLXmN3dnK', '2025-01-08 06:30:38', '2025-01-08 06:30:38'),
(11, 2, 'Dariana Cassin', 'kraig.oberbrunner@example.org', '2025-01-08 06:32:07', '$2y$12$ITyHu9bkI9uP/vNUFCUTOeZSRPfTDtZx4IkkxUMB93McbwGzTf1zC', 'V5eHutmpuy', '2025-01-08 06:32:08', '2025-01-08 06:32:08'),
(12, 1, 'Terrill Schaden', 'ebode@example.net', '2025-01-08 06:32:08', '$2y$12$ITyHu9bkI9uP/vNUFCUTOeZSRPfTDtZx4IkkxUMB93McbwGzTf1zC', 'V5JFmmt8py', '2025-01-08 06:32:08', '2025-01-08 06:32:08'),
(13, 3, 'Niko Hettinger', 'virginie93@example.net', '2025-01-08 06:32:08', '$2y$12$ITyHu9bkI9uP/vNUFCUTOeZSRPfTDtZx4IkkxUMB93McbwGzTf1zC', 'IBJUmt1M45', '2025-01-08 06:32:08', '2025-01-08 06:32:08'),
(14, 3, 'Layne Kub', 'maggio.hailey@example.com', '2025-01-08 06:32:08', '$2y$12$ITyHu9bkI9uP/vNUFCUTOeZSRPfTDtZx4IkkxUMB93McbwGzTf1zC', 'fveX1LaLnB', '2025-01-08 06:32:08', '2025-01-08 06:32:08'),
(15, 3, 'Margarett Monahan MD', 'nkuhn@example.net', '2025-01-08 06:32:08', '$2y$12$ITyHu9bkI9uP/vNUFCUTOeZSRPfTDtZx4IkkxUMB93McbwGzTf1zC', 'xw9OcffPY0', '2025-01-08 06:32:08', '2025-01-08 06:32:08'),
(16, 2, 'Karson Hahn', 'karine.ruecker@example.net', '2025-01-08 06:32:35', '$2y$12$x9sASy3i47KdUeGIr2v9MOoA8ui9U8BP1SUr5NB3YvVHn/oLqqKUy', '6xuTFyXiiw', '2025-01-08 06:32:35', '2025-01-08 06:32:35'),
(17, 1, 'Alexa Wisozk', 'lrodriguez@example.com', '2025-01-08 06:32:35', '$2y$12$x9sASy3i47KdUeGIr2v9MOoA8ui9U8BP1SUr5NB3YvVHn/oLqqKUy', 'wGpHPPF1nb', '2025-01-08 06:32:35', '2025-01-08 06:32:35'),
(18, 3, 'Dr. Chelsey Rosenbaum Sr.', 'oda68@example.com', '2025-01-08 06:32:35', '$2y$12$x9sASy3i47KdUeGIr2v9MOoA8ui9U8BP1SUr5NB3YvVHn/oLqqKUy', 'x0rJfysZkD', '2025-01-08 06:32:35', '2025-01-08 06:32:35'),
(19, 3, 'Lenny Bosco', 'treynolds@example.com', '2025-01-08 06:32:35', '$2y$12$x9sASy3i47KdUeGIr2v9MOoA8ui9U8BP1SUr5NB3YvVHn/oLqqKUy', 'ClWtuTDBpj', '2025-01-08 06:32:35', '2025-01-08 06:32:35'),
(20, 3, 'Davon Denesik', 'aylin.wiegand@example.org', '2025-01-08 06:32:35', '$2y$12$x9sASy3i47KdUeGIr2v9MOoA8ui9U8BP1SUr5NB3YvVHn/oLqqKUy', '14iK3bcU0X', '2025-01-08 06:32:35', '2025-01-08 06:32:35'),
(21, 2, 'Mr. Rodrigo Strosin MD', 'michele.cassin@example.org', '2025-01-08 06:33:28', '$2y$12$0fS9AJFIfvKfmZcNNcnYAu7DBqHyBh77SekrHSEYsyznRqqtzV3US', 'nmm0qiyEat', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(22, 1, 'Wilbert Bruen', 'whitney.brown@example.com', '2025-01-08 06:33:28', '$2y$12$0fS9AJFIfvKfmZcNNcnYAu7DBqHyBh77SekrHSEYsyznRqqtzV3US', '8dm2lVlzkj', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(23, 1, 'Demetris Lubowitz', 'jrath@example.com', '2025-01-08 06:33:28', '$2y$12$0fS9AJFIfvKfmZcNNcnYAu7DBqHyBh77SekrHSEYsyznRqqtzV3US', 'dGbe162dqw', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(24, 1, 'Emerald Braun', 'keven.champlin@example.com', '2025-01-08 06:33:28', '$2y$12$0fS9AJFIfvKfmZcNNcnYAu7DBqHyBh77SekrHSEYsyznRqqtzV3US', '6xiOf3Luma', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(25, 1, 'Blake Abshire Sr.', 'tony.adams@example.com', '2025-01-08 06:33:28', '$2y$12$0fS9AJFIfvKfmZcNNcnYAu7DBqHyBh77SekrHSEYsyznRqqtzV3US', 'Ti2awhvEKf', '2025-01-08 06:33:28', '2025-01-08 06:33:28'),
(26, 1, 'Dr. Chauncey Leuschke', 'ubayer@example.com', '2025-01-15 07:46:45', '$2y$04$.NL3MTGx3PmNPwIFS8TDUu7LdzmvGfQMbWf2CgthVsi6zx31YxPcy', 'vcbYVlr0So', '2025-01-15 07:46:45', '2025-01-15 07:46:45'),
(27, 1, 'Ms. Ellen Smitham', 'michaela74@example.org', '2025-01-15 07:47:10', '$2y$04$MVmj.c9GHK.5r.Ljx9ITruNyqHfXW8CMe.RXmNw8UWbIq8LtXg6R.', 'ihnaFPsGgq', '2025-01-15 07:47:10', '2025-01-15 07:47:10'),
(28, 2, 'Chelsea Hagenes MD', 'hand.westley@example.net', '2025-01-15 08:02:16', '$2y$04$GUCqNpBgAdJNr9UANK63QuqtIVy2l5ufNPfuwKun833HEnz5zJlAm', '3wZWjcGw6H', '2025-01-15 08:02:16', '2025-01-15 08:02:16'),
(29, 1, 'Prof. Carmella Labadie V', 'ecummerata@example.com', '2025-01-15 08:02:16', '$2y$04$GUCqNpBgAdJNr9UANK63QuqtIVy2l5ufNPfuwKun833HEnz5zJlAm', 'ga391wUH8A', '2025-01-15 08:02:16', '2025-01-15 08:02:16'),
(30, 1, 'Randal Thiel', 'olson.moriah@example.net', '2025-01-15 08:02:44', '$2y$04$mHeulbFsdwD6f5Nn0Ty.GO9BODQMEsSDjc6drIRB6ofXTGQapQdH6', 'LjIguuqv9n', '2025-01-15 08:02:44', '2025-01-15 08:02:44'),
(31, 1, 'Sophia Torp MD', 'patricia98@example.net', '2025-01-15 08:03:01', '$2y$04$SQ/BHLm3pIj0WV5F88VpOOZYtljZLeA6x4E/QyDDniIMOID54kN7a', 'SBi7erLiox', '2025-01-15 08:03:01', '2025-01-15 08:03:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_patient_id_foreign` (`patient_id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_phone_unique` (`phone`),
  ADD UNIQUE KEY `patients_email_unique` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rol_id_foreign` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
