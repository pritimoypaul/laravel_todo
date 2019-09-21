-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 06:53 PM
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
-- Database: `lara_todos_app`
--

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_09_18_080815_create_todos_table', 1);

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
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `name`, `description`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 'Excepturi accusamus aut ab 😂', 'Voluptas quis nihil eligendi velit vero. Et dolor iusto consectetur et impedit unde earum. Incidunt aut perferendis ut qui ut asperiores. Harum aut deleniti culpa ipsum ut est. Blanditiis quod voluptate enim odit.😁', 0, '2019-09-18 02:38:04', '2019-09-21 10:39:19'),
(2, 'Neque sunt et cumque maxime.', 'Quidem quasi id reprehenderit perferendis. Sequi esse ut rerum. Suscipit ullam officiis hic libero.', 0, '2019-09-18 02:38:04', '2019-09-21 10:06:24'),
(3, 'Ipsum tenetur.', 'Earum itaque quia numquam autem velit fugit. Suscipit sed temporibus aliquam delectus voluptates unde. Beatae sunt ut non inventore amet. Tenetur eveniet perferendis at sit amet. Et id dolor sapiente aspernatur est dolorum vel.', 0, '2019-09-18 02:38:04', '2019-09-21 10:06:24'),
(4, 'Et quia nesciunt.', 'Fugiat id velit et earum quod. Sit libero sit vel at vel. Minima quae sunt voluptatem vitae. Molestias quia explicabo quidem sit sapiente corrupti. Possimus neque quam illo aliquid error et.', 0, '2019-09-18 02:38:05', '2019-09-21 10:07:23'),
(5, 'Voluptate sint quia voluptatem.', 'Voluptatem assumenda vel animi quia sit doloribus aliquam. Et consequatur vero cumque. Dolorem ab saepe molestias. Aut animi voluptatum eos et ipsam. Alias quos cumque laudantium sunt magnam enim.', 0, '2019-09-18 02:38:05', '2019-09-21 10:06:21'),
(7, 'Consequatur aspernatur quae.', 'Voluptas optio mollitia minus eos sunt animi. Quia repudiandae qui deleniti ad molestias architecto. Sit consequuntur nemo dolores consequatur provident quia a. Rerum facere culpa sunt magnam maxime est enim.', 0, '2019-09-18 02:38:05', '2019-09-18 02:38:05'),
(8, 'Aperiam enim et.', 'Nam et suscipit molestias porro ea aliquid non. Et beatae illo odio laboriosam autem ducimus. Non nesciunt unde quis blanditiis itaque qui sit blanditiis. Amet dolorum accusantium laborum et similique. Harum sapiente facilis qui at. Omnis ut quibusdam fugiat nemo natus.', 0, '2019-09-18 02:38:05', '2019-09-18 02:38:05'),
(10, 'Enim culpa perferendis fugiat.', 'Fugit doloremque sequi error quaerat perferendis incidunt. Debitis sint ipsam voluptas ipsa nisi. Officia iste delectus omnis quos consequatur deserunt. Molestiae dolor mollitia tempore maxime. Sit dolorum earum voluptas maiores et. Est cum quia animi rerum nihil.', 0, '2019-09-18 02:38:05', '2019-09-18 02:38:05'),
(12, 'Vivamus elementum semper nisi', 'Curabitur a felis in nunc fringilla tristique. Praesent ac sem eget est egestas volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.\r\n\r\nSuspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Cras dapibus. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi.', 0, '2019-09-20 10:20:43', '2019-09-20 10:20:43'),
(13, 'Suspendisse nisl elit rhoncus', 'Donec id justo. In ac felis quis tortor malesuada pretium. Aenean imperdiet. Nullam accumsan lorem in dui. Pellentesque ut neque.', 0, '2019-09-20 10:21:35', '2019-09-20 10:21:35'),
(17, 'Donec vitae sapien ut', 'Vestibulum fringilla pede sit amet augue. Aenean massa. Sed aliquam ultrices mauris. Curabitur turpis. Maecenas vestibulum mollis diam.\r\n\r\nCras non dolor. In consectetuer turpis ut velit. Etiam rhoncus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In consectetuer turpis ut velit.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Cras non dolor. Aliquam erat volutpat.\r\n\r\nVestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Fusce egestas elit eget lorem. Fusce vulputate eleifend sapien. Nunc nulla. Cras sagittis.\r\n\r\nNam at tortor in tellus interdum sagittis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Cras sagittis. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. Morbi mollis tellus ac sapien.', 0, '2019-09-21 10:06:49', '2019-09-21 10:06:49');

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
