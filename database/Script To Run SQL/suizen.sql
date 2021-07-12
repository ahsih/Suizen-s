-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 12, 2021 at 09:10 PM
-- Server version: 5.7.26
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
-- Database: `attendance`
--
CREATE DATABASE IF NOT EXISTS `attendance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attendance`;

-- --------------------------------------------------------

--
-- Table structure for table `active_lessons`
--

DROP TABLE IF EXISTS `active_lessons`;
CREATE TABLE IF NOT EXISTS `active_lessons` (
  `module_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `question_count` int(11) NOT NULL,
  `end_point` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `active_lessons`
--

INSERT INTO `active_lessons` (`module_id`, `lesson_id`, `question_count`, `end_point`) VALUES
(1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_settings`
--

DROP TABLE IF EXISTS `attendance_settings`;
CREATE TABLE IF NOT EXISTS `attendance_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `percentRate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_settings`
--

INSERT INTO `attendance_settings` (`id`, `module_id`, `percentRate`) VALUES
(2, 1, '60.00');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `prize_taken` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `module_id`, `user_id`, `reward_id`, `prize_taken`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 1, '2018-04-04 00:05:32', '2018-04-04 23:06:53'),
(2, 1, 2, 4, 0, '2018-04-18 20:23:13', '2018-04-18 20:23:13'),
(3, 1, 2, 5, 0, '2018-04-18 20:28:46', '2018-04-18 20:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `message`, `user_id`, `fullName`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'Starting conversation for: CS3000', 3, 'Tutor one', 1, '2018-03-27 17:18:57', '2018-03-27 17:18:57'),
(2, 'Starting conversation for: CS4020', 3, 'Tutor one', 2, '2018-04-01 22:17:55', '2018-04-01 22:17:55'),
(3, 'Hello There', 3, 'Tutor one', 2, '2018-04-17 22:10:22', '2018-04-17 22:10:21'),
(4, 'hey', 3, 'Tutor one', 2, '2018-04-18 21:40:29', '2018-04-18 21:40:28'),
(5, 'hey', 3, 'Tutor one', 1, '2018-04-23 17:48:18', '2018-04-23 17:48:17'),
(6, '321', 3, 'Tutor one', 1, '2018-04-23 17:49:32', '2018-04-23 17:49:31'),
(7, 'Starting conversation for: CS5000', 3, 'Tutor one', 3, '2018-04-23 17:50:34', '2018-04-23 17:50:34'),
(8, 'heelol', 3, 'Tutor one', 1, '2018-04-23 21:00:43', '2018-04-23 21:00:42'),
(9, 'Testing again to see if it\'s working.', 3, 'Tutor one', 1, '2018-04-23 21:10:55', '2018-04-23 21:10:54'),
(10, 'testing 123', 3, 'Tutor one', 1, '2018-04-23 21:13:21', '2018-04-23 21:13:20'),
(11, 'testing', 3, 'Tutor one', 1, '2018-04-23 21:17:31', '2018-04-23 21:17:30'),
(12, 'Hello there', 6, 'student Four', 1, '2018-04-23 21:23:53', '2018-04-23 21:23:52'),
(13, 'hello there 123', 3, 'Tutor one', 1, '2018-04-23 21:28:47', '2018-04-23 21:28:46'),
(14, 'Starting conversation for: CS6000', 3, 'Tutor one', 4, '2018-04-23 21:35:51', '2018-04-23 21:35:51'),
(28, 'test456', 3, 'Tutor one', 4, '2018-04-23 22:43:32', '2018-04-23 22:43:31'),
(27, '55555', 3, 'Tutor one', 4, '2018-04-23 22:35:22', '2018-04-23 22:35:21'),
(29, 'tttt', 3, 'Tutor one', 4, '2018-04-23 22:59:57', '2018-04-23 22:59:56'),
(30, 'asd', 3, 'Tutor one', 4, '2018-04-23 23:40:44', '2018-04-23 23:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `decline_modules`
--

DROP TABLE IF EXISTS `decline_modules`;
CREATE TABLE IF NOT EXISTS `decline_modules` (
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `decline_modules`
--

INSERT INTO `decline_modules` (`module_name`, `user_id`) VALUES
('CS4020', 8);

-- --------------------------------------------------------

--
-- Table structure for table `email_request_modules`
--

DROP TABLE IF EXISTS `email_request_modules`;
CREATE TABLE IF NOT EXISTS `email_request_modules` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_request_modules`
--

INSERT INTO `email_request_modules` (`id`, `email`, `module_id`) VALUES
(1, 'jack@email.com', 1),
(2, 'studentThree@example.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `firstchoiceusermodule`
--

DROP TABLE IF EXISTS `firstchoiceusermodule`;
CREATE TABLE IF NOT EXISTS `firstchoiceusermodule` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firstchoiceusermodule`
--

INSERT INTO `firstchoiceusermodule` (`id`, `user_id`, `module_id`) VALUES
(1, 3, 1),
(2, 2, 4),
(5, 5, 1),
(6, 4, 1),
(7, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
CREATE TABLE IF NOT EXISTS `group_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `lesson_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `module_id`, `lesson_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lecture 1', '2018-03-27 17:19:13', '2018-03-27 17:19:13'),
(2, 1, 'Lecture 2', '2018-04-02 23:33:28', '2018-04-02 23:33:28'),
(3, 1, 'Lecture 1', '2018-04-23 21:36:07', '2018-04-23 21:36:07'),
(4, 4, 'Lecture 1', '2018-04-23 21:36:14', '2018-04-23 21:36:14'),
(5, 4, 'hey hey hey', '2018-04-23 21:47:20', '2018-04-23 21:47:20'),
(6, 1, 'hi', '2018-04-23 21:53:41', '2018-04-23 21:53:41'),
(7, 1, 'hello', '2018-04-24 10:02:23', '2018-04-24 10:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_starts`
--

DROP TABLE IF EXISTS `lesson_starts`;
CREATE TABLE IF NOT EXISTS `lesson_starts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_starts`
--

INSERT INTO `lesson_starts` (`id`, `module_id`, `start_time`) VALUES
(2, 2, '2018-04-06 19:33:56'),
(3, 1, '2018-04-07 23:09:17'),
(4, 1, '2018-04-08 01:05:51'),
(5, 1, '2018-04-09 19:35:21'),
(6, 2, '2018-04-10 00:43:20'),
(7, 2, '2018-04-12 17:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `login_times`
--

DROP TABLE IF EXISTS `login_times`;
CREATE TABLE IF NOT EXISTS `login_times` (
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_times`
--

INSERT INTO `login_times` (`user_id`, `login_time`, `logout`) VALUES
(2, '2018-05-23 14:33:47', 0),
(6, '2018-04-23 22:24:19', 1),
(4, '2018-04-21 12:41:54', 1),
(7, '2018-04-18 00:37:38', 1),
(5, '2018-04-21 12:42:10', 1),
(8, '2018-05-28 00:29:06', 0),
(9, '2018-04-23 21:40:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_22_104627_create_roles_table', 1),
(4, '2017_11_22_115135_create_role_user_table', 1),
(5, '2017_12_20_202804_create_conversations_table', 1),
(6, '2017_12_20_202835_create_groups_table', 1),
(7, '2017_12_20_203044_create_group_user_table', 1),
(8, '2017_12_20_203044_create_module_user_table', 1),
(9, '2018_01_18_232934_create_modules_table', 1),
(10, '2018_01_26_205431_first_choice_users_modules_table', 1),
(11, '2018_02_18_233302_create_request_modules_table', 1),
(12, '2018_02_22_233921_create_decline_modules_table', 1),
(13, '2018_03_09_002938_create_questions_table', 1),
(14, '2018_03_09_003847_create_optional_answers_table', 1),
(15, '2018_03_13_224312_create_responses_table', 1),
(16, '2018_03_20_011218_create_rewards_table', 1),
(17, '2018_03_23_194717_create_lessons_table', 1),
(18, '2018_03_23_201454_create_lesson_pointers_table', 1),
(19, '2018_03_29_220807_create_email_request_modules_table', 2),
(21, '2018_04_02_232733_create_reward_achieves_table', 3),
(22, '2018_04_04_002011_create_awards_table', 4),
(23, '2018_04_06_160058_create_login_times_table', 5),
(24, '2018_04_06_173119_create_lesson_starts_table', 6),
(25, '2018_04_07_231715_create_student_attendances_table', 7),
(26, '2018_04_14_181439_create_attendance_settings_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'CS3000', '2018-03-27 17:18:57', '2018-03-27 17:18:57'),
(2, 'CS4020', '2018-04-01 22:17:55', '2018-04-01 22:17:55'),
(3, 'CS5000', '2018-04-23 17:50:34', '2018-04-23 17:50:34'),
(4, 'CS6000', '2018-04-23 21:35:51', '2018-04-23 21:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `module_user`
--

DROP TABLE IF EXISTS `module_user`;
CREATE TABLE IF NOT EXISTS `module_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_user`
--

INSERT INTO `module_user` (`id`, `module_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 2, NULL, NULL),
(4, 1, 4, NULL, NULL),
(8, 1, 5, NULL, NULL),
(9, 2, 3, NULL, NULL),
(10, 2, 2, NULL, NULL),
(12, 1, 7, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 3, 3, NULL, NULL),
(15, 3, 8, NULL, NULL),
(16, 4, 3, NULL, NULL),
(17, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `optional_answers`
--

DROP TABLE IF EXISTS `optional_answers`;
CREATE TABLE IF NOT EXISTS `optional_answers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `optional_answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `optional_answers`
--

INSERT INTO `optional_answers` (`id`, `question_id`, `optional_answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'HEYHEYHEY', '2018-03-27 17:19:28', '2018-03-27 17:19:28'),
(2, 1, 'DELTA', '2018-03-27 17:19:28', '2018-03-27 17:19:28'),
(3, 2, 'Test 2', '2018-03-27 17:19:45', '2018-03-27 17:19:45'),
(4, 2, 'Test 4', '2018-03-27 17:19:45', '2018-03-27 17:19:45'),
(5, 2, 'Test 5', '2018-03-27 17:19:45', '2018-03-27 17:19:45'),
(6, 3, 'test 2', '2018-04-02 22:54:21', '2018-04-02 22:54:21'),
(7, 3, 'test 4', '2018-04-02 22:54:21', '2018-04-02 22:54:21'),
(8, 4, '4', '2018-04-02 23:32:25', '2018-04-02 23:32:25'),
(9, 4, '2', '2018-04-02 23:32:25', '2018-04-02 23:32:25'),
(10, 4, '3', '2018-04-02 23:32:25', '2018-04-02 23:32:25'),
(11, 4, '5', '2018-04-02 23:32:25', '2018-04-02 23:32:25'),
(12, 5, '4', '2018-04-02 23:46:40', '2018-04-02 23:46:40'),
(13, 5, '5', '2018-04-02 23:46:40', '2018-04-02 23:46:40'),
(14, 6, '8', '2018-04-19 19:19:18', '2018-04-19 19:19:18'),
(15, 6, '4', '2018-04-19 19:19:18', '2018-04-19 19:19:18'),
(16, 7, '4', '2018-04-23 21:36:52', '2018-04-23 21:36:52'),
(17, 7, '5', '2018-04-23 21:36:52', '2018-04-23 21:36:52'),
(18, 7, '6', '2018-04-23 21:36:52', '2018-04-23 21:36:52'),
(19, 7, '7', '2018-04-23 21:36:52', '2018-04-23 21:36:52'),
(20, 8, 'London', '2018-04-24 10:02:57', '2018-04-24 10:02:57'),
(21, 8, 'Birmingham', '2018-04-24 10:02:57', '2018-04-24 10:02:57'),
(22, 8, 'Manchester', '2018-04-24 10:02:57', '2018-04-24 10:02:57'),
(23, 9, 'test', '2018-04-24 16:55:52', '2018-04-24 16:55:52'),
(24, 9, 'tset', '2018-04-24 16:55:52', '2018-04-24 16:55:52');

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

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `lesson_id`, `user_id`, `question`, `correct_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'What is BITCONNECT', 2, '2018-03-27 17:19:28', '2018-03-27 17:19:28'),
(2, 1, 3, 'What is computer science', 0, '2018-03-27 17:19:45', '2018-03-27 17:19:45'),
(3, 1, 3, 'What is testing', 7, '2018-04-02 22:54:21', '2018-04-02 22:54:21'),
(4, 1, 3, 'What is 1 + 1', 9, '2018-04-02 23:32:25', '2018-04-02 23:32:25'),
(5, 1, 3, 'What is 2 + 2', 12, '2018-04-02 23:46:40', '2018-04-02 23:46:40'),
(6, 2, 3, 'What is 4 + 4', 14, '2018-04-19 19:19:18', '2018-04-19 19:19:18'),
(7, 4, 3, 'what is 2 + 2', 16, '2018-04-23 21:36:52', '2018-04-23 21:36:52'),
(8, 7, 3, 'What is the capital city of Birmingham', 21, '2018-04-24 10:02:57', '2018-04-24 10:02:57'),
(9, 1, 3, 'test 123', 0, '2018-04-24 16:55:52', '2018-04-24 16:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `request_modules`
--

DROP TABLE IF EXISTS `request_modules`;
CREATE TABLE IF NOT EXISTS `request_modules` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
CREATE TABLE IF NOT EXISTS `responses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `optionalAnswer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `optionalAnswer_id`, `question_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2018-03-27 18:03:31', '2018-03-27 18:03:31'),
(2, 4, 2, 2, '2018-03-27 19:38:54', '2018-03-27 19:38:54'),
(3, 1, 1, 4, '2018-03-27 19:39:57', '2018-03-27 19:39:57'),
(4, 4, 2, 4, '2018-03-27 21:06:50', '2018-03-27 21:06:50'),
(5, 2, 1, 5, '2018-03-31 22:07:51', '2018-03-31 22:07:51'),
(6, 5, 2, 5, '2018-03-31 22:12:20', '2018-03-31 22:12:20'),
(7, 9, 4, 2, '2018-04-02 23:42:03', '2018-04-02 23:42:03'),
(8, 12, 5, 2, '2018-04-02 23:47:39', '2018-04-02 23:47:39'),
(9, 6, 3, 2, '2018-04-18 22:04:17', '2018-04-18 22:04:17'),
(10, 6, 3, 4, '2018-04-21 11:34:57', '2018-04-21 11:34:57'),
(11, 9, 4, 4, '2018-04-21 11:35:35', '2018-04-21 11:35:35'),
(12, 12, 5, 4, '2018-04-21 11:41:21', '2018-04-21 11:41:21'),
(13, 9, 4, 5, '2018-04-21 11:42:06', '2018-04-21 11:42:06'),
(14, 9, 4, 6, '2018-04-23 21:23:36', '2018-04-23 21:23:36'),
(15, 17, 7, 2, '2018-04-23 21:58:15', '2018-04-23 21:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reward_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_to_achieve` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `reward_name`, `amount_to_achieve`, `module_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Free Coffee', 12, 1, 3, '2018-04-03 23:59:19', '2018-04-03 23:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `reward_achieves`
--

DROP TABLE IF EXISTS `reward_achieves`;
CREATE TABLE IF NOT EXISTS `reward_achieves` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_achieves`
--

INSERT INTO `reward_achieves` (`id`, `module_id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 110, '2018-04-02 23:42:03', '2018-04-18 20:34:44'),
(2, 1, 4, 2, '2018-04-21 11:35:35', '2018-04-21 11:41:21'),
(3, 1, 5, 1, '2018-04-21 11:42:06', '2018-04-21 11:42:06'),
(4, 1, 6, 1, '2018-04-23 21:23:36', '2018-04-23 21:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'student', 'A Student User', '2018-03-27 17:12:55', '2018-03-27 17:12:55'),
(2, 'tutor', 'A Tutor User', '2018-03-27 17:12:55', '2018-03-27 17:12:55'),
(3, 'admin', 'A Admin User', '2018-03-27 17:12:55', '2018-03-27 17:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 3, 1),
(2, 1, 2),
(9, 2, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6),
(11, 2, 7),
(12, 1, 8),
(14, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

DROP TABLE IF EXISTS `student_attendances`;
CREATE TABLE IF NOT EXISTS `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `lessonStart_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `user_id`, `module_id`, `lessonStart_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4, '2018-04-08 00:24:09', '2018-04-08 00:24:09'),
(2, 2, 1, 5, '2018-04-09 18:41:48', '2018-04-09 18:41:48'),
(3, 2, 2, 6, '2018-04-09 23:43:48', '2018-04-09 23:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$RQsIAd.4Gprsglq.8Jm4tuKeaSy3KSfzPzDL9C0CHsTe6jh6v6gzC', 'L2AwB3z8iMgId1m5GFrG0Vr5ID8ok205IUuS8xQJxSCsvoTmDJK08VeZ7s0d', '2018-03-27 17:12:55', '2018-03-27 17:12:55'),
(2, 'student One', 'studentOne@example.com', '$2y$10$sC5Gx4nlafav56eKWckLUeG7LYMPFjtNeMLtAGqeVAODvp8S0CumS', 'wkS0XxGGiQxkL6cxyGEH24CJYtlOQfvPOG1sdPpa84R2uHoe0zc81RZpKJg1', '2018-03-27 17:13:32', '2018-03-27 17:13:32'),
(3, 'Tutor one', 'tutor@example.com', '$2y$10$9qh3anbLGQrR2Gkb04V1WuCY57a5LHB3HIJeDL6ui.KQsAZcgMu8O', 'dNb4pRmls4IRmyhe9WL5VDSPTpMKynyBoARaUamKBTNupGnelkY3oXvqV1v3', '2018-03-27 17:18:26', '2018-03-27 17:18:26'),
(4, 'Student Two', 'studentTwo@example.com', '$2y$10$.bFgiJjuqZfZwJlIMgzCj.IDjSxwOoXo7HtTDNxQgsuvZTprGELfi', 'T6abPflKINuh0Czu0529dpyl9oPchJwqwjEH4PabKXfdk5q89q3JuWJq1I36', '2018-03-27 19:39:36', '2018-03-27 19:39:36'),
(5, 'student Three', 'studentThree@example.com', '$2y$10$UYrXVROk6CPguSE/f5v9vuV6K875VuTFUz46GcHv5y1xhtSvaVvgG', 'P8rj6j8mtljxdlBZ6xOnI72K8kBwPMD7STvF5uIyKc9NbKxy3vNUJydsy1D3', '2018-03-29 23:28:11', '2018-03-29 23:28:11'),
(6, 'student Four', 'studentFour@example.com', '$2y$10$rQ82uZXnt3YHxvJ0LE6yJ.98ibCusZ9iq0L8VRR/gEI64g6YzPI3q', '58IaTft0oygXzoWaL8pzwZGwZAvIRsQ1qRs6cIJWguKNyNU7m29lTitPB5Cx', '2018-03-31 00:21:47', '2018-03-31 00:21:47'),
(7, 'tutor two', 'tutorTwo@example.com', '$2y$10$d7RcaVBL/Zu4Zfu5hZQEiuaDiNDjA9R2mwIgSmFFwi8VLyIPPGJb6', 'jz7nRRuURMzBx4GHF0MM9Cxy7dTrlBK0duMfSvjxrU0pBn56Z8vjkBJoD1Sk', '2018-04-17 23:37:25', '2018-04-17 23:37:25'),
(8, 'student five', 'studentFive@example.com', '$2y$10$NCx0PxqSfn2RxVZQoLaYRueWEQkRTdG/Xwnro8EoGyHqY85JPpoaG', 'dJv9HwcIm9v9HUcgvKfgi5ateHWpclgDgY4Pozbxmu7JUBBDNgGEBMSAYSrM', '2018-04-22 10:50:29', '2018-04-22 10:50:29'),
(9, 'Tutor Three', 'tutorThree@example.com', '$2y$10$kBjtCY8h/JLfG6.qNQQAG.O5BH6EKPVxicQiGjK/phmd1MnrKdmdS', 'uCUxBBnqeNjph0zMDop2sz7l223HUKKHgtkiFmedoLfcsjhi66wAz9v7LqFy', '2018-04-23 20:40:17', '2018-04-23 20:40:17');
--
-- Database: `suizen`
--
CREATE DATABASE IF NOT EXISTS `suizen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `suizen`;

-- --------------------------------------------------------

--
-- Table structure for table `chef_specials`
--

DROP TABLE IF EXISTS `chef_specials`;
CREATE TABLE IF NOT EXISTS `chef_specials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` decimal(5,2) NOT NULL,
  `Recommended` tinyint(1) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chef_specials`
--

INSERT INTO `chef_specials` (`id`, `OrderNumber`, `FoodName`, `HelpText`, `Price`, `Recommended`, `HeadDishes_Id`) VALUES
(1, '105', 'Traditional Cantonese Beef Brisket 广式牛腩 ', NULL, '6.00', 1, 23),
(2, '105.1', 'Beef Brisket Noodle Soup 牛腩汤面 ', NULL, '6.50', 1, 23),
(3, '105.2', 'Beef Brisket Curry 咖喱牛腩 ', NULL, '6.00', 0, 23),
(4, 'N/A', 'Salt & Pepper Beef 椒盐牛', NULL, '6.00', 0, 23),
(5, '1161.5', 'Sea-Spiced Aubergines 鱼香茄子 ', NULL, '6.00', 0, 23),
(6, '40a', 'Wat Tan Hor 滑蛋河 ', NULL, '6.50', 0, 23),
(7, '40b', 'Fukien Fried Rice 福州炒饭 ', NULL, '6.50', 1, 23),
(8, '41a', 'XO Seafood Udon/Fried Rice 海鲜炒乌冬/炒饭 ', 'Fish cakes, Prawns & Crabmeat Cooked With XO sauce. Very tasty and a little bit spicy!!!', '6.00', 1, 23),
(9, '41e', 'Roast Duck Rice BBQ 烧鸭饭(中式烧汁)', 'Roast Duck Dip With BBQ Sauce On Top Of The Egg Fried Rice', '6.50', 1, 23),
(10, '41f', 'Charsiu Rice BBQ 叉烧饭(中式烧汁) ', 'Char Siu Dip With BBQ Sauce On Top Of The Egg Fried Rice', '6.00', 0, 23),
(11, '1172a', 'MaPo Tofu 麻婆豆腐 ', 'Tofu Mixed With Minced Pork, Then Cooked With Spicy Sezchuan Sauce.', '6.00', 1, 23),
(12, '161h', 'Minced Pork with Green Bean 猪肉炒四季豆(辣)', 'Green Beans Cooked With Minced Pork, Then Mixed With A Delicious Spicy Sauce. ', '6.50', 1, 23),
(13, '1049ab', 'Sweet & Sour/Thai Style Fish 酸甜鱼', 'Battered Cod Fish Cooked With Sweet&Sour/Thai Style', '6.50', 0, 23),
(14, '1051', 'Chili & Salt Fish 椒盐鱼 ', NULL, '6.50', 0, 23),
(15, '1052', 'Braised Fish Tofu Rice 斑斓豆腐鱼 ', 'Battered Cod Fish Mixed With Tofu, Broccoli Then Cooked With Cantonese Oyster Sauce. Very Sweet and tasty!!! ', '6.50', 1, 23),
(16, '41g', 'Five Spices Roast Pork Ear/Belly 五香猪耳/猪肚 ', 'Pork Ear Or Pork Belly Cooked With Spicy Sauce & Then Mixed With Green Pepper & Onions. Very tasty If You Eat Pork!!!', '6.50', 1, 23),
(17, '105.4', 'Zhai Cai Shredded Pork Soup Noodle 榨菜肉丝汤面 ', NULL, '6.50', 0, 23),
(18, '41.1', 'Cumin & Chili Beef 孜然鸡肉', NULL, '6.50', 1, 23),
(19, '41.2', 'Cumin & Chili Chicken 孜然鸡肉', NULL, '6.50', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `combo_meal__meats`
--

DROP TABLE IF EXISTS `combo_meal__meats`;
CREATE TABLE IF NOT EXISTS `combo_meal__meats` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChineseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combo_meal__meats`
--

INSERT INTO `combo_meal__meats` (`id`, `FoodName`, `ChineseName`) VALUES
(1, 'Duck', '鸭肉'),
(2, 'Chicken', '鸡肉'),
(3, 'Beef', '牛肉'),
(4, 'King Prawn', '大虾'),
(5, 'Shrimp', '虾仁'),
(6, 'Char Siu (Pork)', '叉烧'),
(7, 'Tofu', '豆腐'),
(8, 'Mutton', '羊肉'),
(9, 'Fish Cake', '鱼饼'),
(10, 'Crab meat (Ocean Sticks)', '蟹肉'),
(11, 'Vegetables', '蔬菜');

-- --------------------------------------------------------

--
-- Table structure for table `combo_meal__sides`
--

DROP TABLE IF EXISTS `combo_meal__sides`;
CREATE TABLE IF NOT EXISTS `combo_meal__sides` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChinseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combo_meal__sides`
--

INSERT INTO `combo_meal__sides` (`id`, `FoodName`, `ChinseName`, `HelpText`) VALUES
(1, 'Chips', '薯条', NULL),
(2, 'Egg Fried Rice', '蛋炒饭', NULL),
(3, 'Plain boiled rice', '白饭', 'Steam rice'),
(4, 'Thick Egg Noodles', '粗蛋面', NULL),
(5, 'Thin Egg Noodles', '细蛋面', NULL),
(6, 'Flat Rice Noodles ', '河粉', 'Ho Fun'),
(7, 'Thin Rice Noodles', '米粉', 'Vermicelli'),
(8, 'Ramen Style Noodles', '方便面 ', 'Instant Noodles');

-- --------------------------------------------------------

--
-- Table structure for table `combo_meal__styles`
--

DROP TABLE IF EXISTS `combo_meal__styles`;
CREATE TABLE IF NOT EXISTS `combo_meal__styles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChineseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChineseHelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combo_meal__styles`
--

INSERT INTO `combo_meal__styles` (`id`, `OrderNumber`, `FoodName`, `ChineseName`, `HelpText`, `ChineseHelpText`) VALUES
(1, '1050', 'CURRY', '咖喱味', 'Delicious Oriental Mild Curry Sauce With Onion & Peas', NULL),
(2, '1051', 'SATAY', '沙爹酱', 'Delicious Spicy Peanut Satay Sauce mixed with Green Peppers, Baby Corn, Onions and Pineapples', NULL),
(3, '1052', 'SINGAPORE', '星洲味', 'Red Pepper Fried with Hot Chili Oil', NULL),
(4, '1053', 'SZCHUAN', '四川味', 'A Delicious Hot & Spicy Sauce with Onions, Baby Corn and Green Peppers.', NULL),
(5, '1054', 'BLACK BEAN SAUCE', '士椒味', 'Onions， Green Peppers and Carrots Cooked with Black Bean Sauce (Salty and a Hint of sweet)', NULL),
(6, '1055', 'CANTONESE', '广式味', 'A Delicious Oyster Sauce (Sweet) mixed with Onions, Carrots, Baby Corn and Lettuce', NULL),
(7, '1056', 'VIETNAMESE', '越南味', 'Garlic Fish Sauce mixed with Onions, Bamboo Shoots & Water Chestnuts, Green Peppers and Pineapples', NULL),
(8, '1057', 'SOUP BASED STYLE', '汤面类', 'Plain and Mild Soup mixed with Broccoli, Lettuce and Onions', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `head_dishes`
--

DROP TABLE IF EXISTS `head_dishes`;
CREATE TABLE IF NOT EXISTS `head_dishes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Dish_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `head_dishes`
--

INSERT INTO `head_dishes` (`id`, `Dish_Name`, `HelpText`, `created_at`, `updated_at`) VALUES
(1, 'Thai Menu', 'May Contains Bamboo Shoots & Water Chestnuts, Pineapple, Green Peppers, Tomatoes and Onions mixed with Sweet & Sour Hot Thai sauce ', NULL, NULL),
(2, 'VEGETARIAN DISHES 素菜類 ', 'May Contains Bamboo Shoots & Water Chestnuts, Beansprouts, Onions, Chinese  Cabbage Mushrooms, Carrots and Baby Corn ', NULL, NULL),
(3, 'Duckling Dishes 鸭肉', NULL, NULL, NULL),
(4, 'KING PRAWN DISHES 大蝦類 ', NULL, NULL, NULL),
(5, 'BEEF DISHES 牛類 ', NULL, NULL, NULL),
(6, 'CHICKEN DISHES 雞類', NULL, NULL, NULL),
(7, 'FRIED RICE DISHES 炒飯類 ', NULL, NULL, NULL),
(8, 'CHOP SUEY DISHES 炒蔬菜 ', NULL, NULL, NULL),
(9, 'Spare Ribs 排骨类', NULL, NULL, NULL),
(10, 'Pork 叉烧', NULL, NULL, NULL),
(11, 'CURRY DISHES 咖喱類 ', NULL, NULL, NULL),
(12, 'EGG FOO YUNG DISHES 芙蓉類 ', NULL, NULL, NULL),
(13, 'OMELETTE DISHES 煎蛋類', NULL, NULL, NULL),
(14, 'EXTRA PORTIONS ', NULL, NULL, NULL),
(15, 'SATAY DISHES 沙爹類 ', NULL, NULL, NULL),
(16, 'KUNG PO DISHES 宮保類(英式) ', 'Hot & Sweet Sauce Mixed with Cashewnuts, Onions, Green Peppers and Pineapples ', NULL, NULL),
(17, 'SWEET & SOUR 酸甜類 (Cantonese Style) ', 'Crispy Coated Pieces, Cooked in Sweet & Sour Sauce with Green Peppers, Onions and Pineapple', NULL, NULL),
(18, 'SWEET & SOUR 酸甜類 (Sauce are in separated container)', NULL, NULL, NULL),
(19, 'CAPITAL SAUCE DISHES 京汁類 ', 'Rich, Fruity, Sweet & Spicy Sauce', NULL, NULL),
(20, 'STARTERS  小菜', 'SMALL £3.50  LARGE £4.30', NULL, NULL),
(21, 'Soups 湯類 ', 'In Small Container 小碗', NULL, NULL),
(22, 'CHOW MEIN DISHES 炒面類', NULL, NULL, NULL),
(23, 'CHEF SPECIAL 特别介绍 ', NULL, NULL, NULL),
(24, 'Chinese Vegetables  各式菜类', 'Cooked in Garlic and Oyster Sauce 蒜蓉和蚝油做法', NULL, NULL),
(25, 'Set Meal 套餐 ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Spicyness` int(10) UNSIGNED NOT NULL,
  `Special` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `OrderNumber`, `FoodName`, `Price`, `HeadDishes_Id`, `HelpText`, `Spicyness`, `Special`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Crispy Shredded Beef(With Capital Sauce)香脆干牛丝', '5.50', NULL, NULL, 0, 1, NULL, NULL),
(2, 'B', 'Vietnamese Special Stir Fry 越南风味小炒', '5.50', NULL, '(King Prawn, Chicken, Beef, Char Siu (Pork), Assorted Vietnamese Vegetables In Vietnamese Sauce) ', 0, 1, NULL, NULL),
(3, 'C', ' Shanghai Special Stir Fry 上海风味小炒 ', '5.50', NULL, '(King Prawn, Chicken, Beef, Char Siu (Pork), Assorted Mixed Vegetables in Hot & Spicy Shanghai Sauce) ', 1, 1, NULL, NULL),
(4, '118', 'Four Seasons Roast Duck 四季鸭 ', '5.80', NULL, '(Duck, King Prawn, Chicken, Pork & Beef In Delicious Chinese Vegetables) ', 0, 1, NULL, NULL),
(5, 'T1', 'Thai Special Fried Noodles 泰式招牌炒面 ', '5.80', 1, NULL, 0, 0, NULL, NULL),
(6, 'T2', 'Thai Special Fried Rice 泰式招牌炒饭', '5.80', 1, NULL, 0, 0, NULL, NULL),
(7, 'T3', 'Thai Stir Fry Vegetables 泰式招牌素菜 ', '4.60', 1, NULL, 0, 0, NULL, NULL),
(8, 'T4', ' Thai Special Stir Fry Garlic & Spices泰式蒜辣小炒 ', '5.50', 1, NULL, 0, 0, NULL, NULL),
(9, 'T5', 'Thai Special Kprawn Garlic & Spices泰式蒜辣大虾', '5.50', 1, NULL, 0, 0, NULL, NULL),
(10, 'T6', 'Thai Style Beef Garlic & Spices泰式蒜辣炒牛肉 ', '5.50', 1, NULL, 0, 0, NULL, NULL),
(11, 'T7', 'Thai Style Chicken Garlic & Spices 泰式蒜辣炒鸡肉', '5.50', 1, NULL, 0, 0, NULL, NULL),
(12, 'T8', 'Roast Duck Thai Style 泰式蒜辣烤鸭', '6.00', 1, NULL, 0, 0, NULL, NULL),
(13, 'V1', 'Vegetables Chow Mein广式蔬菜炒面(干', '4.80', 2, NULL, 0, 0, NULL, NULL),
(14, 'V2', 'Vegetables Fried Rice 广式蔬菜炒饭(干) ', '4.60', 2, NULL, 0, 0, NULL, NULL),
(15, 'V3', 'Vegetables Satay沙爹蔬菜小炒 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(16, 'V4', 'Szechuan Vegetables 四川风味蔬菜小炒', '4.50', 2, NULL, 0, 0, NULL, NULL),
(17, 'V5', 'Fried Mushroom & Onion Mix 蘑菇炒洋葱', '3.50', 2, NULL, 0, 0, NULL, NULL),
(18, 'V6', 'Sweet & Sour Vegetables 酸甜蔬菜 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(19, 'V7', ' Kung Po Vegetables 宮保蔬菜 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(20, 'V8', 'Vegetables in Black Bean Sauce士椒蔬菜小炒 ', '4.50', 2, NULL, 0, 0, NULL, NULL),
(21, '1', 'Roast Duck with Mushrooms 鸭肉炒蘑菇', '6.00', 3, NULL, 0, 0, NULL, NULL),
(22, '2', 'Roast Duck Bamboo Shoots & Water Chestnuts ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(23, '3', ' Roast Duck with Pineapple 鸭肉炒菠萝 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(24, '4', 'Roast Duck with Beausprouts 鸭肉炒芽菜 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(25, '5', 'Roast Duck in Black Bean Sauce 士椒鸭肉炒青椒 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(26, '6', 'King Prawn with Mushrooms 蘑菇大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(27, '7', 'Kprawn with Bamboo shoots & Water Chestnuts ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(28, '8', 'King Prawn with Pineapple 菠萝大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(29, '9', 'King Prawn with Beansprouts 芽菜大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(30, '10', 'King Prawn with Tomatoes 番茄大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(31, '11', 'King Prawn with Cashewnuts 腰果大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(32, '12', 'King Prawn with Onions 大虾炒洋葱 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(33, '13', ' King Prawn in Black Bean Sauce士椒大虾炒青椒 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(34, '16', 'Beef with Mushrooms 牛肉炒蘑菇', '5.50', 5, NULL, 0, 0, NULL, NULL),
(35, '17', 'Beef with Bamboo Shoots & Water Chestnuts', '5.50', 5, NULL, 0, 0, NULL, NULL),
(36, '18', 'Beef with Pineapple 牛肉炒凤梨', '5.50', 5, NULL, 0, 0, NULL, NULL),
(37, '19', 'Beef with Beansprouts 牛肉炒芽菜 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(38, '20', 'Beef with Tomatoes 番茄牛肉 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(39, '22', 'Beef with Cashewnuts 腰果牛肉 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(40, '23', 'Beef with Onions 牛肉炒洋葱', '5.50', 5, NULL, 0, 0, NULL, NULL),
(41, '24', 'Beef in Black Bean Sauce 士椒牛肉炒青椒 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(42, '25', 'Chicken with Mushrooms鸡肉炒蘑菇 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(43, '26', 'Chicken with Bamboo Shoots & Water Chestnuts ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(44, '27', 'Chicken with Pineapple 鸡肉炒菠萝 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(45, '28', 'Chicken with Beansprouts (Crisp Chicken)鸡肉炒豆芽 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(46, '29', 'Chicken with Tomatoes 番茄鸡肉 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(47, '31', 'Chicken with Cashewnuts 腰果鸡肉 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(48, '32', 'Chicken with Onions 鸡肉炒洋葱 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(49, '33', 'Chicken in Black Bean Sauce 士椒鸡肉炒青椒 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(50, '46A', 'Special Fried Rice 广式招牌炒饭  ', '6.00', 7, 'DRY ', 0, 0, NULL, NULL),
(51, '46B', 'Special Fried Rice 广式招牌炒饭 ', '6.50', 7, '(A Mixture of Chicken, Beef, Duck, Char Siu (Pork), Prawn and Vegetables Cooked in  Delicious Sauce with a separate Egg Fried Rice On the Side (SAUCE) ) ', 0, 0, NULL, NULL),
(52, '47', 'King Prawn Fried Rice 大虾炒饭 ', '5.50', 7, NULL, 0, 0, NULL, NULL),
(53, '48', 'Chicken Fried  Rice 鸡丝炒饭', '5.50', 7, NULL, 0, 0, NULL, NULL),
(54, '49', 'Beef Fried Rice 牛肉炒饭 ', '5.50', 7, NULL, 0, 0, NULL, NULL),
(55, '50', 'Prawn/Shrimp Fried Rice 虾仁炒饭 ', '5.50', 7, NULL, 0, 0, NULL, NULL),
(56, '51', 'Yung Chow Fried Rice 扬州炒饭 ', '5.50', 7, NULL, 0, 0, NULL, NULL),
(57, '52', 'Singapore Fried Rice 星洲炒饭 ', '5.50', 7, '(A Mixture of Chicken, Prawn and Char Siu Cooked in Red Pepper Fried with Hot Chilli Oil DRY) ', 2, 0, NULL, NULL),
(58, '53', 'Char Siu Fried Rice 叉烧炒饭 ', '5.30', 7, NULL, 0, 0, NULL, NULL),
(59, '54', 'Mushroom Fried Rice 蘑菇炒饭 ', '4.80', 7, NULL, 0, 0, NULL, NULL),
(60, '55', 'Special Chop Suey 招牌蔬菜小炒 ', '6.00', 8, NULL, 0, 0, NULL, NULL),
(61, '56', 'King Prawn Chop Suey 大虾炒蔬菜', '6.00', 8, NULL, 0, 0, NULL, NULL),
(62, '57', 'Prawn/Shrimp Chop Suey 虾仁炒蔬菜 ', '6.00', 8, NULL, 0, 0, NULL, NULL),
(63, '58', 'Chicken Chop Suey 鸡肉炒蔬菜 ', '5.50', 8, NULL, 0, 0, NULL, NULL),
(64, '59', 'Beef Chop Suey 牛肉炒蔬菜', '5.50', 8, NULL, 0, 0, NULL, NULL),
(65, '60', 'Char Siu Chop Suey 叉烧炒蔬菜', '5.50', 8, NULL, 0, 0, NULL, NULL),
(66, '61', 'Mixed Vegetable Chop Suey 蔬菜小炒 ', '5.00', 8, NULL, 0, 0, NULL, NULL),
(67, '62', 'Spare Ribs in Black Bean Sauce 士椒排骨', '5.80', 9, NULL, 0, 0, NULL, NULL),
(68, '63', 'Spare Ribs Dry (with A Lemon Wedge)烤排骨配柠檬 ', '5.80', 9, NULL, 0, 0, NULL, NULL),
(69, '64', 'Spare Ribs in Barbecue Sauce 烧汁BBQ排骨 ', '5.80', 9, NULL, 0, 0, NULL, NULL),
(70, '65', 'Spare Ribs in Syrup 烤排骨配蜜糖 ', '5.80', 9, NULL, 0, 0, NULL, NULL),
(71, '65a', 'Small Portion Of Spare Ribs ', '4.50', 9, NULL, 0, 0, NULL, NULL),
(72, '80', 'Spare Ribs in Sweet & Sour Sauce 酸甜排骨 ', '5.80', 9, NULL, 0, 0, NULL, NULL),
(73, '171', 'Chili & Salt Spare Ribs 椒盐排骨', '5.80', 9, '(Delicious Hot & Spicy)', 2, 0, NULL, NULL),
(74, '172', 'Spare Ribs in Capital/Peking Sauce 京汁排骨 ', '5.80', 9, NULL, 0, 0, NULL, NULL),
(75, '66', 'Char Siu with Bamboo shoots & Water Chestnuts ', '5.50', 10, NULL, 0, 0, NULL, NULL),
(76, '67', 'Char Siu with Pineapple 叉烧炒菠萝 ', '5.50', 10, NULL, 0, 0, NULL, NULL),
(77, '68', 'Char Siu in Black Bean Sauce 士椒叉烧炒青椒 ', '5.50', 10, NULL, 0, 0, NULL, NULL),
(78, '69', 'Char Siu with Beansprouts 豆芽叉烧 ', '5.50', 10, NULL, 0, 0, NULL, NULL),
(79, '69a', 'Char Siu with Mushrooms 叉烧炒蘑菇 ', '5.50', 10, NULL, 0, 0, NULL, NULL),
(80, '70', 'Special Curry 招牌咖喱 ', '5.30', 11, 'A Mixture of Chicken, Beef, Duck, Char Siu (Pork), Prawn, Onion, Peas Cooked in  Delicious Curry Sauce  ', 0, 0, NULL, NULL),
(81, '71', 'Duck Curry 咖喱鸭', '5.00', 11, NULL, 0, 0, NULL, NULL),
(82, '72', 'King Prawn Curry 咖喱大虾 ', '5.00', 11, NULL, 0, 0, NULL, NULL),
(83, '73', 'Prawn/Shrimp Curry 咖喱虾仁 ', '5.00', 11, NULL, 0, 0, NULL, NULL),
(84, '74', 'Chicken Curry 咖喱鸡肉 ', '4.50', 11, NULL, 0, 0, NULL, NULL),
(85, '75', 'Beef Curry 咖喱牛肉 ', '4.80', 11, NULL, 0, 0, NULL, NULL),
(86, '76', 'Mutton Curry 咖喱羊肉 ', '4.80', 11, NULL, 0, 0, NULL, NULL),
(87, '77', 'Char Siu Curry 咖喱叉烧 ', '4.50', 11, NULL, 0, 0, NULL, NULL),
(88, '78', 'Mixed Vegetable Curry 咖喱蔬菜 ', '4.30', 11, NULL, 0, 0, NULL, NULL),
(89, '79', 'Mushroom Curry 咖喱蘑菇 ', '4.30', 11, NULL, 0, 0, NULL, NULL),
(90, '84', 'Special Foo Yung 招牌芙蓉 ', '6.00', 12, NULL, 0, 0, NULL, NULL),
(91, '85', 'King Prawn Foo Yung 大虾芙蓉', '6.00', 12, NULL, 0, 0, NULL, NULL),
(92, '86', 'Prawn/Shrimp Foo Yung 虾仁芙蓉 ', '6.00', 12, NULL, 0, 0, NULL, NULL),
(93, '87', 'Chicken Foo Yung 鸡肉芙蓉 ', '5.50', 12, NULL, 0, 0, NULL, NULL),
(94, '88', 'Mushroom Foo Yung 蘑菇芙蓉', '4.50', 12, NULL, 0, 0, NULL, NULL),
(95, '89', 'Special Omelette  招牌煎蛋 ', '6.00', 13, NULL, 0, 0, NULL, NULL),
(96, '91', 'King Prawn Omelette 大虾煎蛋 ', '6.00', 13, NULL, 0, 0, NULL, NULL),
(97, '92', 'Prawn/Shrimp Omelette 虾仁煎蛋 ', '6.00', 13, NULL, 0, 0, NULL, NULL),
(98, '93', 'Mushroom Omelette 蘑菇煎蛋 ', '4.70', 13, NULL, 0, 0, NULL, NULL),
(99, '95', 'Char Siu Omelette 叉烧煎蛋 ', '5.50', 13, NULL, 0, 0, NULL, NULL),
(100, '96', 'Chicken Omelette 鸡肉煎蛋', '5.50', 13, NULL, 0, 0, NULL, NULL),
(101, '98', 'Chips 薯条 ', '1.30', 14, NULL, 0, 0, NULL, NULL),
(102, '100', 'Egg Fried Rice 蛋炒饭', '1.90', 14, NULL, 0, 0, NULL, NULL),
(103, '101', 'Plain Boiled Rice 白饭 ', '1.70', 14, NULL, 0, 0, NULL, NULL),
(104, '102', 'Mushrooms 炒蘑菇 ', '2.20', 14, NULL, 0, 0, NULL, NULL),
(105, '103', 'Bamboo Shoots & Water Chestnuts 炒竹笋马蹄 ', '2.20', 14, NULL, 0, 0, NULL, NULL),
(106, '104', 'Beansprouts 炒芽菜', '2.20', 14, NULL, 0, 0, NULL, NULL),
(107, '105', 'Onions 炒洋葱', '2.20', 14, NULL, 0, 0, NULL, NULL),
(108, '106', 'Egg Noodle 炒面条', '2.80', 14, 'Thick Egg/ Thin Egg 粗/细蛋面', 0, 0, NULL, NULL),
(109, '107', 'Prawn Cracker 虾片 ', '1.20', 14, NULL, 0, 0, NULL, NULL),
(110, '108', 'Sauces ', '1.20', 14, '(Sweet & Sour/ Sweet & Chilli/ Curry/BBQ)', 0, 0, NULL, NULL),
(111, '109', 'Sauces', '1.50', 14, '(Satay/ Black Bean/ Szechuan/ Plum/ Lemon)', 0, 0, NULL, NULL),
(112, '110', 'Cashewnuts 腰果', '2.80', 14, NULL, 0, 0, NULL, NULL),
(113, '111', 'Banana or Pineapple Fritters 炸香蕉/炸菠萝', '2.50', 14, NULL, 0, 0, NULL, NULL),
(114, '112', 'Mixed Vegetables 蔬菜小炒', '2.70', 14, NULL, 0, 0, NULL, NULL),
(115, '119', 'Roast Duck Chinese Style 中式烤鸭 ', '6.00', 3, 'Crispy Duck on a bed of Beansprouts with a Touch of Soy Sauce', 0, 0, NULL, NULL),
(116, '120', 'Roast Duck In Plum Sauce 梅子烤鸭 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(117, '121', 'Roast Duck in Lemon Sauce 烤鸭配柠檬汁 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(118, '122', 'Roast Duck in Orange Sauce 烤鸭配橙汁 ', '5.50', 3, NULL, 0, 0, NULL, NULL),
(119, '123', 'Roast Duck Chinese Mushrooms 鸭肉炒冬菇 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(120, '124', 'Roast Duck with Straw Mushrooms 鸭肉炒草菇 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(121, '125', 'Roast Duck with Baby Corn 鸭肉炒朱笋 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(122, '126', 'Roast Duck with Pickled Ginger 子萝鸭肉 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(123, '127', 'Roast Duck with Oyster Sauce 广式(蚝油)鸭肉 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(124, '128', 'Roast Duck Spring Onions & Ginger 姜葱鸭肉 ', '6.00', 3, NULL, 0, 0, NULL, NULL),
(125, '129', 'King Prawn with Chilli & Salt 椒盐大虾', '6.00', 4, NULL, 2, 0, NULL, NULL),
(126, '130', 'King Prawn with Chinese Mushrooms 冬菇大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(127, '131', 'King Prawn with Straw Mushrooms大虾炒草菇 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(128, '132', 'King Prawn with Baby Corn大虾炒朱笋 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(129, '133', 'King Prawn with Pickled Ginger子萝大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(130, '134', 'Kprawn with Spring Onions & Ginger 姜葱大虾 ', '6.00', 4, NULL, 0, 0, NULL, NULL),
(131, '135', 'King Prawn with Oyster Sauce 广式(蚝油)大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(132, '136', 'Hot & Sour King Prawn 酸辣大虾 ', '5.50', 4, NULL, 1, 0, NULL, NULL),
(133, '137', 'Szechuan King Prawn 四川口味大虾 ', '5.50', 4, NULL, 0, 0, NULL, NULL),
(134, '138', 'Beef with Chinese Mushrooms 牛肉炒冬菇 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(135, '139', 'Beef with Straw Mushrooms 牛肉炒草菇 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(136, '140', 'Beef with Baby Corn 牛肉炒朱笋 ', '5.00', 5, '', 0, 0, NULL, NULL),
(137, '141', 'Beef with Pickled Ginger 子萝牛肉 ', '5.00', 5, NULL, 0, 0, NULL, NULL),
(138, '142', 'Beef with Spring Onions & Ginger 姜葱牛肉 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(139, '143', 'Beef with Oyster Sauce 广式(蚝油)牛肉 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(140, '144', 'Hot & Sour Beef 酸辣牛肉 ', '5.50', 5, NULL, 0, 0, NULL, NULL),
(141, '145', 'Szechuan Beef 四川牛肉 ', '5.50', 5, NULL, 2, 0, NULL, NULL),
(142, '146', 'Roast Chicken Chinese Style 中式炸鸡 ', '5.50', 6, '(Crispy Chicken Breast on a Bed of Mixed Vegetables with Touch of Soy Sauce) ', 0, 0, NULL, NULL),
(143, '147', 'Chicken with Chinese Mushrooms 鸡肉炒冬菇 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(144, '148', 'Chicken with Straw Mushrooms 鸡肉炒草菇 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(145, '149', 'Chicken with Baby Corn 鸡肉炒朱笋 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(146, '150', 'Chicken with Pickled Ginger 子萝鸡肉 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(147, '151', 'Chicken with Oyster Sauce 广式(蚝油)鸡肉 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(148, '152', 'Chicken with Spring Onions & Ginger 姜葱鸡 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(149, '153', 'Chicken with Lemon Sauce 柠檬炸鸡', '5.50', 6, NULL, 0, 0, NULL, NULL),
(150, '154', 'Hot & Sour Chicken 酸辣鸡(脆) ', '5.50', 6, NULL, 1, 0, NULL, NULL),
(151, '155', 'Szechuan Chicken 四川鸡 ', '5.50', 6, NULL, 0, 0, NULL, NULL),
(152, '156', 'Special Satay (A mixture of meats) 招牌沙爹 ', '5.50', 15, NULL, 0, 0, NULL, NULL),
(153, '157', 'Duck Satay 沙爹鸭 ', '5.50', 15, NULL, 0, 0, NULL, NULL),
(154, '158', 'King Prawn Satay 沙爹大虾 ', '5.50', 15, NULL, 0, 0, NULL, NULL),
(155, '159', 'Beef Satay 沙爹牛肉 ', '5.50', 15, NULL, 0, 0, NULL, NULL),
(156, '160', 'Chicken Satay 沙爹鸡肉 ', '5.50', 15, NULL, 0, 0, NULL, NULL),
(157, '161', 'Char Siu Satay 沙爹叉烧 ', '5.00', 15, NULL, 0, 0, NULL, NULL),
(158, '162', 'Special Kung Po 招牌宫保 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(159, '163', 'Kung Po Duck 宫保鸭 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(160, '164', 'Kung Po King Prawn 宫保大虾 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(161, '165', 'Kung Po Beef 宫保牛肉 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(162, '166', 'Kung Po Chicken 宫保鸡丁 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(163, '167', 'Kung Po Char Siu 宫保叉烧 ', '5.50', 16, NULL, 1, 0, NULL, NULL),
(164, '168', 'Sweet & Sour King Prawn 酸甜大虾 ', '5.50', 17, NULL, 0, 0, NULL, NULL),
(165, '169', 'Sweet & Sour Chicken 酸甜鸡(咕噜鸡) ', '5.50', 17, NULL, 0, 0, NULL, NULL),
(166, '170', 'Sweet & Sour Pork 酸甜猪肉 ', '5.50', 17, NULL, 0, 0, NULL, NULL),
(168, '81', 'Sweet & Sour King Prawn (Balls) 香脆大虾球配酸甜汁 ', '5.50', 18, 'Approx 10 King Prawn Balls ', 0, 0, NULL, NULL),
(169, '82', 'Sweet & Sour Chicken (Balls) 香脆鸡球配酸甜汁 ', '5.50', 18, 'Approx 10 Chicken Balls', 0, 0, NULL, NULL),
(170, '173', 'Beef with Capital Sauce 京汁牛肉 ', '5.50', 19, NULL, 1, 0, NULL, NULL),
(171, '174', 'Duck in Capital Sauce 京汁鸭肉 ', '5.50', 19, NULL, 1, 0, NULL, NULL),
(172, '175', 'Chicken in Capital Sauce 京汁鸡肉', '5.50', 19, NULL, 1, 0, NULL, NULL),
(173, '176', 'Char Siu in Capital Sauce 京汁叉烧 ', '5.50', 19, NULL, 1, 0, NULL, NULL),
(174, '177', 'King Prawn in Capital Sauce 京汁大虾 ', '5.50', 19, NULL, 1, 0, NULL, NULL),
(175, '34', 'Special Chow Mein (DRY) 广式招牌炒面(干炒) ', '6.00', 22, 'a Mixture of Meat & Vegetables Cooked with Noodles', 0, 0, NULL, NULL),
(176, '34a', 'Special Chow Mein (SAUCE) 广式招牌炒面(有汁) ', '6.50', 22, 'I personally recommend the DRY special chowmein, it taste better.', 0, 0, NULL, NULL),
(177, '35', 'Duck Chow Mein 广式鸭肉炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(178, '36', 'King Prawn Chow Mein 广式大虾炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(179, '37', 'Singapore Chow Mein 星洲炒面 ', '5.50', 22, 'Highly Recommended !!!', 1, 0, NULL, NULL),
(180, '37a', 'Singapore Vermicelli Chow Mein 星洲炒米粉 ', '5.50', 22, 'Highly Recommended!!!', 1, 0, NULL, NULL),
(181, '38', 'Beef Chow Mein 广式牛肉炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(182, '38a', 'Beef Dry HoFun Chow Mein 干炒牛河 ', '6.00', 22, NULL, 0, 0, NULL, NULL),
(183, '39', 'Chicken Chow Mein 广式鸡肉炒面 ', '5.50', 22, NULL, 0, 0, NULL, NULL),
(184, '1161a', 'Broccoli 西兰花', '5.50', 24, NULL, 0, 0, NULL, NULL),
(185, '1161d', 'Pak Choi 小白菜 ', '5.50', 24, NULL, 0, 0, NULL, NULL),
(186, '1161f', 'Choi Sum 菜心 ', '5.50', 24, NULL, 0, 0, NULL, NULL),
(187, '1161g', 'Chinese Leaf 大白菜', '5.50', 24, NULL, 0, 0, NULL, NULL),
(188, '161g', 'Kai-Lan 芥蓝', '7.00', 24, 'Please check with the staff first if this order is available. Thanks', 0, 0, NULL, NULL),
(189, 'W9', 'Set Meal A 套餐A', '8.00', 25, '(Fried Tofu, Pak Choi, & Red-cooked pork with Rice) (炸豆腐+红烧肉+青菜+白饭)', 0, 0, NULL, NULL),
(190, 'W10', 'Set Meal B 套餐B ', '8.00', 25, '(Beef Brisket, Pak Choi, & Fried Fish with Rice) (牛腩+炸鱼+青菜+白饭) ', 0, 0, NULL, NULL),
(191, 'W11', 'Set Meal C 套餐C ', '8.00', 25, '(Roast Duck, Pak Choi, & Fried Fish with Rice) (中式汁鸭+炸鱼+青菜+白饭) ', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_02_20_223346_create_menus_table', 1),
(8, '2019_02_20_223925_create_head_dishes_table', 1),
(9, '2019_03_01_223740_create_starters_table', 2),
(10, '2019_03_01_225046_create_soups_table', 3),
(11, '2019_03_01_232558_create_chef_specials_table', 4),
(12, '2019_08_14_192340_create_combo_meal__meats_table', 5),
(13, '2019_08_14_192510_create_combo_meal__styles_table', 5),
(14, '2019_08_14_192653_create_combo_meal__sides_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soups`
--

DROP TABLE IF EXISTS `soups`;
CREATE TABLE IF NOT EXISTS `soups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Recommended` int(11) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soups`
--

INSERT INTO `soups` (`id`, `OrderNumber`, `FoodName`, `HelpText`, `Recommended`, `HeadDishes_Id`, `created_at`, `updated_at`) VALUES
(1, '1040', 'Hot & Sour Soup 酸辣汤', NULL, 0, 21, NULL, NULL),
(2, '1041', ' Seafood Soup/ Hot & Sour Seafood Soup 海鲜汤/海鲜酸辣汤 ', NULL, 0, NULL, NULL, NULL),
(3, '1041a', 'Seaweed Egg Soup 紫菜汤', NULL, 1, 21, NULL, NULL),
(4, '1042', 'Chicken & Sweetcorn Soup 鸡粒玉米汤 ', NULL, 1, 21, NULL, NULL),
(5, '1042a', 'Crabmeat & Sweetcorn Soup 蟹肉玉米汤', NULL, 1, 21, NULL, NULL),
(6, '1043', 'Wonton Soup 云吞汤 ', NULL, 0, 21, NULL, NULL),
(7, '1043a', 'Tomato Egg Soup 番茄蛋汤 ', NULL, 0, 21, NULL, NULL),
(8, '1044', 'Mixed Vegetables Soup 蔬菜汤 ', NULL, 0, 21, NULL, NULL),
(9, '1045', 'Chicken & Mushroom Soup 鸡丝蘑菇汤 ', NULL, 0, 21, NULL, NULL),
(10, '1046', 'Chicken & Noodle Soup 鸡丝面汤 ', NULL, 0, 21, NULL, NULL),
(11, '1047', 'Sliced Duck Soup 鸭丝汤 ', NULL, 0, 21, NULL, NULL),
(12, '1048', 'Hot & Sour Mixed Veg Soup 蔬菜酸辣汤 ', NULL, 0, 21, NULL, NULL),
(13, '1041a', 'Tom Yum Soup 冬阴功汤', 'This soup is good for you if you got cold during the winter!', 0, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `starters`
--

DROP TABLE IF EXISTS `starters`;
CREATE TABLE IF NOT EXISTS `starters` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FoodName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HelpText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Small` decimal(5,2) NOT NULL,
  `Large` decimal(5,2) NOT NULL,
  `Recommended` int(11) NOT NULL,
  `HeadDishes_Id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `starters`
--

INSERT INTO `starters` (`id`, `OrderNumber`, `FoodName`, `HelpText`, `Small`, `Large`, `Recommended`, `HeadDishes_Id`, `created_at`, `updated_at`) VALUES
(1, '1010', 'Mini Spring Rolls with Vietnamese Sauce 酥炸蔬菜春卷 ', 'Mini Vegetables Spring Rolls Served with Garlic, Chilli & Lemon Sauce', '3.50', '4.30', 0, 20, NULL, NULL),
(2, '1011', 'Crispy Won Ton with Sweet Chilli Sauce 酥炸馄饨 ', 'Minced Chicken & Prawn Wrapped in Crispy Water Pastry Served with Sweet Chilli Sauce', '3.50', '4.30', 1, 20, NULL, NULL),
(3, '1012', 'Oriental King Prawn Rolls 酥炸大虾卷 ', 'Deep Fried Tail-On King Prawns, Wrapped in Authentic Oriental Pastry & Served with Sweet Chili Dip', '3.50', '4.30', 0, 20, NULL, NULL),
(4, '1013', 'Butterfly King Prawns 酥炸凤尾虾', 'Deep Fried King Prawns in a Light Crispy Batter Served with Sweet Chili Sauce', '3.50', '4.30', 0, 20, NULL, NULL),
(5, '1014', 'King Prawn Toast 酥炸下多士 ', 'King Prawn Paste Generously Spread on Toast, Topped with Sesame Seeds', '3.50', '4.30', 1, 20, NULL, NULL),
(6, '1015', 'Breaded Calamari Rings 酥炸鱿鱼圈 ', 'Deep Fried Calamari in a Light Crispy Batter Served with Sweet Chilli Sauce', '3.50', '4.30', 0, 20, NULL, NULL),
(7, '1017', 'Onion Rings 脆香洋葱圈 ', 'Deep Fried in a Light Crispy Batter Served with a Dip', '3.50', '4.30', 0, 20, NULL, NULL),
(8, '1018', 'Chicken Wings 炸鸡翅  ', '4-5 On Small Portions and 8-9 On Large Portions. Sauces: Chili & Salt / BBQ / Dry / Capital(Peking) / Satay . I recommend Chili & Salt - spicy.', '3.50', '4.30', 1, 20, NULL, NULL),
(9, '1020', 'Chilli & Salt Spicy Chips 椒盐薯条 ', 'Chips Spiced with Onions, Green Peppers & Fresh Chili', '3.50', '4.30', 0, 20, NULL, NULL),
(10, '1021', 'Salt & Peppers Squids 椒盐鱿鱼', 'Battered Squids Cooked with chili and salt.\r\nI highly recommend you go for the large portion.', '3.80', '5.50', 1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `zhangz17_db`
--
CREATE DATABASE IF NOT EXISTS `zhangz17_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zhangz17_db`;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `clientid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`clientid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientid`, `username`, `password`) VALUES
(1, 'snowbunny', 'snowbunny'),
(2, 'skiwidow', 'skiwidow'),
(3, 'scaredofsnow', 'scaredofsnow'),
(4, 'zoomer77', 'zoomer77'),
(5, 'doctorluz', 'doctorluz'),
(6, 'CornMeister', 'CornMeister'),
(7, 'masterJones', 'masterJones'),
(8, 'LegInTraction', 'LegInTraction'),
(9, 'Harperman', 'Harperman'),
(10, 'Harperman', 'Harperman');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `description` varchar(35) NOT NULL,
  `level` smallint(6) DEFAULT NULL,
  `startDateTime` datetime NOT NULL,
  `endDateTime` datetime NOT NULL,
  `lessonid` varchar(6) NOT NULL,
  PRIMARY KEY (`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`description`, `level`, `startDateTime`, `endDateTime`, `lessonid`) VALUES
('Snowboarding for dummies', 1, '2010-12-01 09:00:00', '2010-12-01 12:00:00', 'L1'),
('Advanced Carving Techniques', 3, '2010-12-02 09:00:00', '2010-12-02 14:00:00', 'L2'),
('How to not fall off the draglift', 1, '2010-12-02 14:00:00', '2010-12-02 16:00:00', 'L3'),
('Gnarliness Extreeeeeeeme', 3, '2010-12-03 10:00:00', '2010-12-03 13:00:00', 'L4'),
('Parallel turns', 2, '2010-12-04 09:30:00', '2010-12-04 12:30:00', 'L5'),
('How to splint a broken leg with a s', 1, '2010-12-04 13:00:00', '2010-12-04 15:30:00', 'L6'),
('Cross-country techniques', 2, '2010-12-05 09:30:00', '2010-12-05 12:30:00', 'L7'),
('Aerobatics', 3, '2010-12-05 13:30:00', '2010-12-05 16:30:00', 'L8'),
('Intermediate Slalom ', 2, '2010-12-06 09:30:00', '2010-12-06 12:30:00', 'L9');

-- --------------------------------------------------------

--
-- Table structure for table `lessons_booked`
--

DROP TABLE IF EXISTS `lessons_booked`;
CREATE TABLE IF NOT EXISTS `lessons_booked` (
  `clientid` int(11) NOT NULL DEFAULT '1',
  `lessonid` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`clientid`,`lessonid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lessons_booked`
--

INSERT INTO `lessons_booked` (`clientid`, `lessonid`) VALUES
(1, 'L1'),
(1, 'L3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
