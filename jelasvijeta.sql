-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2021 at 03:24 PM
-- Server version: 8.0.22
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jelasvijeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`) VALUES
(167),
(168),
(169),
(170),
(171),
(172),
(173),
(174),
(175),
(176),
(177),
(178),
(179),
(180),
(181);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `category_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `locale`, `category_id`, `title`) VALUES
(151, 'hr', 167, 'kategorija1 na hr jeziku.'),
(152, 'en', 167, 'kategorija1 na en jeziku.'),
(153, 'hr', 168, 'kategorija2 na hr jeziku.'),
(154, 'en', 168, 'kategorija2 na en jeziku.'),
(155, 'hr', 169, 'kategorija3 na hr jeziku.'),
(156, 'en', 169, 'kategorija3 na en jeziku.'),
(157, 'hr', 170, 'kategorija4 na hr jeziku.'),
(158, 'en', 170, 'kategorija4 na en jeziku.'),
(159, 'hr', 171, 'kategorija5 na hr jeziku.'),
(160, 'en', 171, 'kategorija5 na en jeziku.'),
(161, 'hr', 172, 'kategorija6 na hr jeziku.'),
(162, 'en', 172, 'kategorija6 na en jeziku.'),
(163, 'hr', 173, 'kategorija7 na hr jeziku.'),
(164, 'en', 173, 'kategorija7 na en jeziku.'),
(165, 'hr', 174, 'kategorija8 na hr jeziku.'),
(166, 'en', 174, 'kategorija8 na en jeziku.'),
(167, 'hr', 175, 'kategorija9 na hr jeziku.'),
(168, 'en', 175, 'kategorija9 na en jeziku.'),
(169, 'hr', 176, 'kategorija10 na hr jeziku.'),
(170, 'en', 176, 'kategorija10 na en jeziku.'),
(171, 'hr', 177, 'kategorija11 na hr jeziku.'),
(172, 'en', 177, 'kategorija11 na en jeziku.'),
(173, 'hr', 178, 'kategorija12 na hr jeziku.'),
(174, 'en', 178, 'kategorija12 na en jeziku.'),
(175, 'hr', 179, 'kategorija13 na hr jeziku.'),
(176, 'en', 179, 'kategorija13 na en jeziku.'),
(177, 'hr', 180, 'kategorija14 na hr jeziku.'),
(178, 'en', 180, 'kategorija14 na en jeziku.'),
(179, 'hr', 181, 'kategorija15 na hr jeziku.'),
(180, 'en', 181, 'kategorija15 na en jeziku.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`) VALUES
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_meal`
--

DROP TABLE IF EXISTS `ingredient_meal`;
CREATE TABLE IF NOT EXISTS `ingredient_meal` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meal_id` int UNSIGNED NOT NULL,
  `ingredient_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meal_ingredients_meal_id_index` (`meal_id`),
  KEY `meal_ingredients_ingredient_id_index` (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredient_meal`
--

INSERT INTO `ingredient_meal` (`id`, `meal_id`, `ingredient_id`) VALUES
(1, 402, 32),
(2, 402, 40),
(3, 402, 43),
(4, 403, 34),
(5, 403, 39),
(6, 404, 44),
(7, 405, 38),
(8, 405, 39),
(9, 405, 41),
(10, 406, 40),
(11, 406, 43),
(12, 406, 46),
(13, 407, 36),
(14, 407, 45),
(15, 408, 34),
(16, 408, 35),
(17, 408, 46),
(18, 409, 35),
(19, 409, 39),
(20, 410, 37),
(21, 410, 43),
(22, 411, 32),
(23, 411, 33),
(24, 411, 39),
(25, 412, 37),
(26, 412, 45),
(27, 412, 46),
(28, 413, 45),
(29, 414, 32),
(30, 414, 34),
(31, 415, 41),
(32, 416, 43),
(33, 417, 37),
(34, 418, 33),
(35, 419, 40),
(36, 419, 41),
(37, 419, 45),
(38, 420, 34),
(39, 421, 37),
(40, 421, 40),
(41, 421, 46),
(42, 422, 32),
(43, 422, 34),
(44, 422, 37),
(45, 423, 46),
(46, 424, 36),
(47, 424, 44),
(48, 424, 45),
(49, 425, 38),
(50, 426, 33),
(51, 426, 39),
(52, 426, 43),
(53, 427, 32),
(54, 427, 42),
(55, 428, 33),
(56, 428, 37),
(57, 429, 32),
(58, 429, 41),
(59, 429, 42),
(60, 430, 38),
(61, 430, 40),
(62, 430, 42),
(63, 431, 39),
(64, 431, 44),
(65, 431, 46),
(66, 432, 33),
(67, 432, 43),
(68, 433, 33),
(69, 433, 36),
(70, 434, 41),
(71, 435, 32),
(72, 436, 35),
(73, 437, 37),
(74, 437, 46),
(75, 438, 33),
(76, 438, 39),
(77, 438, 43),
(78, 439, 40),
(79, 439, 43),
(80, 440, 46),
(81, 441, 34),
(82, 441, 35),
(83, 441, 36),
(84, 442, 32),
(85, 442, 46),
(86, 443, 36),
(87, 443, 39),
(88, 443, 41),
(89, 444, 41),
(90, 444, 45),
(91, 445, 39),
(92, 445, 43),
(93, 446, 37),
(94, 446, 38),
(95, 446, 42),
(96, 447, 37),
(97, 447, 40),
(98, 447, 42),
(99, 448, 46),
(100, 449, 45),
(101, 450, 33),
(102, 450, 35),
(103, 450, 39),
(104, 451, 40);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_translations`
--

DROP TABLE IF EXISTS `ingredient_translations`;
CREATE TABLE IF NOT EXISTS `ingredient_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredient_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ingredient_translations_ingredient_id_locale_unique` (`ingredient_id`,`locale`),
  KEY `ingredient_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredient_translations`
--

INSERT INTO `ingredient_translations` (`id`, `locale`, `ingredient_id`, `title`) VALUES
(61, 'hr', 32, 'Sastojak 1 na hr jeziku.'),
(62, 'en', 32, 'Sastojak 1 na en jeziku.'),
(63, 'hr', 33, 'Sastojak 2 na hr jeziku.'),
(64, 'en', 33, 'Sastojak 2 na en jeziku.'),
(65, 'hr', 34, 'Sastojak 3 na hr jeziku.'),
(66, 'en', 34, 'Sastojak 3 na en jeziku.'),
(67, 'hr', 35, 'Sastojak 4 na hr jeziku.'),
(68, 'en', 35, 'Sastojak 4 na en jeziku.'),
(69, 'hr', 36, 'Sastojak 5 na hr jeziku.'),
(70, 'en', 36, 'Sastojak 5 na en jeziku.'),
(71, 'hr', 37, 'Sastojak 6 na hr jeziku.'),
(72, 'en', 37, 'Sastojak 6 na en jeziku.'),
(73, 'hr', 38, 'Sastojak 7 na hr jeziku.'),
(74, 'en', 38, 'Sastojak 7 na en jeziku.'),
(75, 'hr', 39, 'Sastojak 8 na hr jeziku.'),
(76, 'en', 39, 'Sastojak 8 na en jeziku.'),
(77, 'hr', 40, 'Sastojak 9 na hr jeziku.'),
(78, 'en', 40, 'Sastojak 9 na en jeziku.'),
(79, 'hr', 41, 'Sastojak 10 na hr jeziku.'),
(80, 'en', 41, 'Sastojak 10 na en jeziku.'),
(81, 'hr', 42, 'Sastojak 11 na hr jeziku.'),
(82, 'en', 42, 'Sastojak 11 na en jeziku.'),
(83, 'hr', 43, 'Sastojak 12 na hr jeziku.'),
(84, 'en', 43, 'Sastojak 12 na en jeziku.'),
(85, 'hr', 44, 'Sastojak 13 na hr jeziku.'),
(86, 'en', 44, 'Sastojak 13 na en jeziku.'),
(87, 'hr', 45, 'Sastojak 14 na hr jeziku.'),
(88, 'en', 45, 'Sastojak 14 na en jeziku.'),
(89, 'hr', 46, 'Sastojak 15 na hr jeziku.'),
(90, 'en', 46, 'Sastojak 15 na en jeziku.');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`) VALUES
(11, 'hr'),
(12, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

DROP TABLE IF EXISTS `meals`;
CREATE TABLE IF NOT EXISTS `meals` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meals_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `created_at`, `updated_at`, `category_id`, `deleted_at`) VALUES
(402, '2021-03-05 08:50:40', '2021-03-05 08:50:40', NULL, NULL),
(403, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 179, NULL),
(404, '2021-03-05 08:50:40', '2021-03-05 08:50:40', NULL, NULL),
(405, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 181, NULL),
(406, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 178, NULL),
(407, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 178, NULL),
(408, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 179, NULL),
(409, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 180, NULL),
(410, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 168, NULL),
(411, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 179, NULL),
(412, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 175, NULL),
(413, '2021-03-05 08:50:40', '2021-03-05 08:50:40', NULL, NULL),
(414, '2021-03-05 08:50:40', '2021-03-05 08:50:40', NULL, NULL),
(415, '2021-03-05 08:50:40', '2021-03-05 08:50:40', NULL, NULL),
(416, '2021-03-05 08:50:40', '2021-03-05 08:50:40', NULL, NULL),
(417, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 178, NULL),
(418, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 169, NULL),
(419, '2021-03-05 08:50:40', '2021-03-05 08:50:40', 181, NULL),
(420, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 169, NULL),
(421, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 175, NULL),
(422, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(423, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(424, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 169, NULL),
(425, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 172, NULL),
(426, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 176, NULL),
(427, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(428, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(429, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(430, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 167, NULL),
(431, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 170, NULL),
(432, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 171, NULL),
(433, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(434, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 176, NULL),
(435, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 177, NULL),
(436, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 179, NULL),
(437, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 174, NULL),
(438, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 172, NULL),
(439, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 176, NULL),
(440, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 171, NULL),
(441, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 173, NULL),
(442, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 179, NULL),
(443, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 174, NULL),
(444, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL),
(445, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 168, NULL),
(446, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 175, NULL),
(447, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 180, NULL),
(448, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 170, NULL),
(449, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 175, NULL),
(450, '2021-03-05 08:50:41', '2021-03-05 08:50:41', 176, NULL),
(451, '2021-03-05 08:50:41', '2021-03-05 08:50:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meal_tag`
--

DROP TABLE IF EXISTS `meal_tag`;
CREATE TABLE IF NOT EXISTS `meal_tag` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meal_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_meal_meal_id_index` (`meal_id`),
  KEY `tag_meal_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_tag`
--

INSERT INTO `meal_tag` (`id`, `meal_id`, `tag_id`) VALUES
(1, 402, 50),
(2, 402, 51),
(3, 403, 60),
(4, 404, 55),
(5, 405, 47),
(6, 405, 50),
(7, 405, 58),
(8, 406, 48),
(9, 407, 47),
(10, 407, 52),
(11, 408, 56),
(12, 409, 48),
(13, 410, 54),
(14, 410, 57),
(15, 410, 58),
(16, 411, 47),
(17, 411, 58),
(18, 412, 50),
(19, 412, 57),
(20, 413, 49),
(21, 413, 54),
(22, 413, 57),
(23, 414, 46),
(24, 414, 47),
(25, 414, 52),
(26, 415, 50),
(27, 416, 50),
(28, 416, 51),
(29, 417, 47),
(30, 417, 50),
(31, 417, 54),
(32, 418, 49),
(33, 418, 58),
(34, 419, 47),
(35, 419, 54),
(36, 420, 46),
(37, 420, 50),
(38, 420, 55),
(39, 421, 50),
(40, 421, 60),
(41, 422, 54),
(42, 423, 51),
(43, 423, 59),
(44, 424, 53),
(45, 425, 57),
(46, 426, 51),
(47, 427, 57),
(48, 428, 53),
(49, 429, 59),
(50, 429, 60),
(51, 430, 51),
(52, 430, 54),
(53, 430, 60),
(54, 431, 46),
(55, 431, 50),
(56, 432, 49),
(57, 432, 55),
(58, 432, 59),
(59, 433, 56),
(60, 434, 57),
(61, 435, 46),
(62, 436, 55),
(63, 436, 57),
(64, 436, 58),
(65, 437, 50),
(66, 437, 54),
(67, 437, 55),
(68, 438, 55),
(69, 439, 52),
(70, 439, 53),
(71, 439, 54),
(72, 440, 46),
(73, 440, 48),
(74, 441, 47),
(75, 441, 48),
(76, 442, 47),
(77, 443, 48),
(78, 444, 51),
(79, 444, 58),
(80, 445, 48),
(81, 445, 50),
(82, 445, 52),
(83, 446, 55),
(84, 446, 59),
(85, 447, 48),
(86, 447, 56),
(87, 448, 60),
(88, 449, 54),
(89, 450, 60),
(90, 451, 54);

-- --------------------------------------------------------

--
-- Table structure for table `meal_translations`
--

DROP TABLE IF EXISTS `meal_translations`;
CREATE TABLE IF NOT EXISTS `meal_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meal_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meal_translations_meal_id_locale_unique` (`meal_id`,`locale`),
  KEY `meal_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_translations`
--

INSERT INTO `meal_translations` (`id`, `locale`, `meal_id`, `title`, `description`) VALUES
(1, 'hr', 402, 'Naslov jela 1 na hr jeziku', 'Opis jela 1 na hr jeziku'),
(2, 'en', 402, 'Naslov jela 1 na en jeziku', 'Opis jela 1 na en jeziku'),
(3, 'hr', 403, 'Naslov jela 2 na hr jeziku', 'Opis jela 2 na hr jeziku'),
(4, 'en', 403, 'Naslov jela 2 na en jeziku', 'Opis jela 2 na en jeziku'),
(5, 'hr', 404, 'Naslov jela 3 na hr jeziku', 'Opis jela 3 na hr jeziku'),
(6, 'en', 404, 'Naslov jela 3 na en jeziku', 'Opis jela 3 na en jeziku'),
(7, 'hr', 405, 'Naslov jela 4 na hr jeziku', 'Opis jela 4 na hr jeziku'),
(8, 'en', 405, 'Naslov jela 4 na en jeziku', 'Opis jela 4 na en jeziku'),
(9, 'hr', 406, 'Naslov jela 5 na hr jeziku', 'Opis jela 5 na hr jeziku'),
(10, 'en', 406, 'Naslov jela 5 na en jeziku', 'Opis jela 5 na en jeziku'),
(11, 'hr', 407, 'Naslov jela 6 na hr jeziku', 'Opis jela 6 na hr jeziku'),
(12, 'en', 407, 'Naslov jela 6 na en jeziku', 'Opis jela 6 na en jeziku'),
(13, 'hr', 408, 'Naslov jela 7 na hr jeziku', 'Opis jela 7 na hr jeziku'),
(14, 'en', 408, 'Naslov jela 7 na en jeziku', 'Opis jela 7 na en jeziku'),
(15, 'hr', 409, 'Naslov jela 8 na hr jeziku', 'Opis jela 8 na hr jeziku'),
(16, 'en', 409, 'Naslov jela 8 na en jeziku', 'Opis jela 8 na en jeziku'),
(17, 'hr', 410, 'Naslov jela 9 na hr jeziku', 'Opis jela 9 na hr jeziku'),
(18, 'en', 410, 'Naslov jela 9 na en jeziku', 'Opis jela 9 na en jeziku'),
(19, 'hr', 411, 'Naslov jela 10 na hr jeziku', 'Opis jela 10 na hr jeziku'),
(20, 'en', 411, 'Naslov jela 10 na en jeziku', 'Opis jela 10 na en jeziku'),
(21, 'hr', 412, 'Naslov jela 11 na hr jeziku', 'Opis jela 11 na hr jeziku'),
(22, 'en', 412, 'Naslov jela 11 na en jeziku', 'Opis jela 11 na en jeziku'),
(23, 'hr', 413, 'Naslov jela 12 na hr jeziku', 'Opis jela 12 na hr jeziku'),
(24, 'en', 413, 'Naslov jela 12 na en jeziku', 'Opis jela 12 na en jeziku'),
(25, 'hr', 414, 'Naslov jela 13 na hr jeziku', 'Opis jela 13 na hr jeziku'),
(26, 'en', 414, 'Naslov jela 13 na en jeziku', 'Opis jela 13 na en jeziku'),
(27, 'hr', 415, 'Naslov jela 14 na hr jeziku', 'Opis jela 14 na hr jeziku'),
(28, 'en', 415, 'Naslov jela 14 na en jeziku', 'Opis jela 14 na en jeziku'),
(29, 'hr', 416, 'Naslov jela 15 na hr jeziku', 'Opis jela 15 na hr jeziku'),
(30, 'en', 416, 'Naslov jela 15 na en jeziku', 'Opis jela 15 na en jeziku'),
(31, 'hr', 417, 'Naslov jela 16 na hr jeziku', 'Opis jela 16 na hr jeziku'),
(32, 'en', 417, 'Naslov jela 16 na en jeziku', 'Opis jela 16 na en jeziku'),
(33, 'hr', 418, 'Naslov jela 17 na hr jeziku', 'Opis jela 17 na hr jeziku'),
(34, 'en', 418, 'Naslov jela 17 na en jeziku', 'Opis jela 17 na en jeziku'),
(35, 'hr', 419, 'Naslov jela 18 na hr jeziku', 'Opis jela 18 na hr jeziku'),
(36, 'en', 419, 'Naslov jela 18 na en jeziku', 'Opis jela 18 na en jeziku'),
(37, 'hr', 420, 'Naslov jela 19 na hr jeziku', 'Opis jela 19 na hr jeziku'),
(38, 'en', 420, 'Naslov jela 19 na en jeziku', 'Opis jela 19 na en jeziku'),
(39, 'hr', 421, 'Naslov jela 20 na hr jeziku', 'Opis jela 20 na hr jeziku'),
(40, 'en', 421, 'Naslov jela 20 na en jeziku', 'Opis jela 20 na en jeziku'),
(41, 'hr', 422, 'Naslov jela 21 na hr jeziku', 'Opis jela 21 na hr jeziku'),
(42, 'en', 422, 'Naslov jela 21 na en jeziku', 'Opis jela 21 na en jeziku'),
(43, 'hr', 423, 'Naslov jela 22 na hr jeziku', 'Opis jela 22 na hr jeziku'),
(44, 'en', 423, 'Naslov jela 22 na en jeziku', 'Opis jela 22 na en jeziku'),
(45, 'hr', 424, 'Naslov jela 23 na hr jeziku', 'Opis jela 23 na hr jeziku'),
(46, 'en', 424, 'Naslov jela 23 na en jeziku', 'Opis jela 23 na en jeziku'),
(47, 'hr', 425, 'Naslov jela 24 na hr jeziku', 'Opis jela 24 na hr jeziku'),
(48, 'en', 425, 'Naslov jela 24 na en jeziku', 'Opis jela 24 na en jeziku'),
(49, 'hr', 426, 'Naslov jela 25 na hr jeziku', 'Opis jela 25 na hr jeziku'),
(50, 'en', 426, 'Naslov jela 25 na en jeziku', 'Opis jela 25 na en jeziku'),
(51, 'hr', 427, 'Naslov jela 26 na hr jeziku', 'Opis jela 26 na hr jeziku'),
(52, 'en', 427, 'Naslov jela 26 na en jeziku', 'Opis jela 26 na en jeziku'),
(53, 'hr', 428, 'Naslov jela 27 na hr jeziku', 'Opis jela 27 na hr jeziku'),
(54, 'en', 428, 'Naslov jela 27 na en jeziku', 'Opis jela 27 na en jeziku'),
(55, 'hr', 429, 'Naslov jela 28 na hr jeziku', 'Opis jela 28 na hr jeziku'),
(56, 'en', 429, 'Naslov jela 28 na en jeziku', 'Opis jela 28 na en jeziku'),
(57, 'hr', 430, 'Naslov jela 29 na hr jeziku', 'Opis jela 29 na hr jeziku'),
(58, 'en', 430, 'Naslov jela 29 na en jeziku', 'Opis jela 29 na en jeziku'),
(59, 'hr', 431, 'Naslov jela 30 na hr jeziku', 'Opis jela 30 na hr jeziku'),
(60, 'en', 431, 'Naslov jela 30 na en jeziku', 'Opis jela 30 na en jeziku'),
(61, 'hr', 432, 'Naslov jela 31 na hr jeziku', 'Opis jela 31 na hr jeziku'),
(62, 'en', 432, 'Naslov jela 31 na en jeziku', 'Opis jela 31 na en jeziku'),
(63, 'hr', 433, 'Naslov jela 32 na hr jeziku', 'Opis jela 32 na hr jeziku'),
(64, 'en', 433, 'Naslov jela 32 na en jeziku', 'Opis jela 32 na en jeziku'),
(65, 'hr', 434, 'Naslov jela 33 na hr jeziku', 'Opis jela 33 na hr jeziku'),
(66, 'en', 434, 'Naslov jela 33 na en jeziku', 'Opis jela 33 na en jeziku'),
(67, 'hr', 435, 'Naslov jela 34 na hr jeziku', 'Opis jela 34 na hr jeziku'),
(68, 'en', 435, 'Naslov jela 34 na en jeziku', 'Opis jela 34 na en jeziku'),
(69, 'hr', 436, 'Naslov jela 35 na hr jeziku', 'Opis jela 35 na hr jeziku'),
(70, 'en', 436, 'Naslov jela 35 na en jeziku', 'Opis jela 35 na en jeziku'),
(71, 'hr', 437, 'Naslov jela 36 na hr jeziku', 'Opis jela 36 na hr jeziku'),
(72, 'en', 437, 'Naslov jela 36 na en jeziku', 'Opis jela 36 na en jeziku'),
(73, 'hr', 438, 'Naslov jela 37 na hr jeziku', 'Opis jela 37 na hr jeziku'),
(74, 'en', 438, 'Naslov jela 37 na en jeziku', 'Opis jela 37 na en jeziku'),
(75, 'hr', 439, 'Naslov jela 38 na hr jeziku', 'Opis jela 38 na hr jeziku'),
(76, 'en', 439, 'Naslov jela 38 na en jeziku', 'Opis jela 38 na en jeziku'),
(77, 'hr', 440, 'Naslov jela 39 na hr jeziku', 'Opis jela 39 na hr jeziku'),
(78, 'en', 440, 'Naslov jela 39 na en jeziku', 'Opis jela 39 na en jeziku'),
(79, 'hr', 441, 'Naslov jela 40 na hr jeziku', 'Opis jela 40 na hr jeziku'),
(80, 'en', 441, 'Naslov jela 40 na en jeziku', 'Opis jela 40 na en jeziku'),
(81, 'hr', 442, 'Naslov jela 41 na hr jeziku', 'Opis jela 41 na hr jeziku'),
(82, 'en', 442, 'Naslov jela 41 na en jeziku', 'Opis jela 41 na en jeziku'),
(83, 'hr', 443, 'Naslov jela 42 na hr jeziku', 'Opis jela 42 na hr jeziku'),
(84, 'en', 443, 'Naslov jela 42 na en jeziku', 'Opis jela 42 na en jeziku'),
(85, 'hr', 444, 'Naslov jela 43 na hr jeziku', 'Opis jela 43 na hr jeziku'),
(86, 'en', 444, 'Naslov jela 43 na en jeziku', 'Opis jela 43 na en jeziku'),
(87, 'hr', 445, 'Naslov jela 44 na hr jeziku', 'Opis jela 44 na hr jeziku'),
(88, 'en', 445, 'Naslov jela 44 na en jeziku', 'Opis jela 44 na en jeziku'),
(89, 'hr', 446, 'Naslov jela 45 na hr jeziku', 'Opis jela 45 na hr jeziku'),
(90, 'en', 446, 'Naslov jela 45 na en jeziku', 'Opis jela 45 na en jeziku'),
(91, 'hr', 447, 'Naslov jela 46 na hr jeziku', 'Opis jela 46 na hr jeziku'),
(92, 'en', 447, 'Naslov jela 46 na en jeziku', 'Opis jela 46 na en jeziku'),
(93, 'hr', 448, 'Naslov jela 47 na hr jeziku', 'Opis jela 47 na hr jeziku'),
(94, 'en', 448, 'Naslov jela 47 na en jeziku', 'Opis jela 47 na en jeziku'),
(95, 'hr', 449, 'Naslov jela 48 na hr jeziku', 'Opis jela 48 na hr jeziku'),
(96, 'en', 449, 'Naslov jela 48 na en jeziku', 'Opis jela 48 na en jeziku'),
(97, 'hr', 450, 'Naslov jela 49 na hr jeziku', 'Opis jela 49 na hr jeziku'),
(98, 'en', 450, 'Naslov jela 49 na en jeziku', 'Opis jela 49 na en jeziku'),
(99, 'hr', 451, 'Naslov jela 50 na hr jeziku', 'Opis jela 50 na hr jeziku'),
(100, 'en', 451, 'Naslov jela 50 na en jeziku', 'Opis jela 50 na en jeziku');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_27_131842_add_meals_table', 2),
(5, '2021_02_27_134235_add_categories', 3),
(18, '2021_02_27_144126_add_ingredients_table', 4),
(19, '2021_02_27_144932_add_tags_table', 4),
(20, '2021_02_27_145718_add_junction_tables', 4),
(21, '2021_02_28_121513_rename_ingredient_column', 5),
(22, '2021_02_28_124734_rename_table', 5),
(23, '2021_02_28_140234_add_tags_junction_table', 5),
(24, '2021_02_28_142500_rename_meal_tag_table', 5),
(25, '2021_03_04_131917_create_languages_table', 6),
(26, '2021_03_04_133009_create_tag_translations_table', 7),
(27, '2021_03_05_124808_add_meals_soft_deletes', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`) VALUES
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60);

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

DROP TABLE IF EXISTS `tag_translations`;
CREATE TABLE IF NOT EXISTS `tag_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  KEY `tag_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `locale`, `tag_id`, `title`) VALUES
(91, 'hr', 46, 'Tag 1 na hr jeziku.'),
(92, 'en', 46, 'Tag 1 na en jeziku.'),
(93, 'hr', 47, 'Tag 2 na hr jeziku.'),
(94, 'en', 47, 'Tag 2 na en jeziku.'),
(95, 'hr', 48, 'Tag 3 na hr jeziku.'),
(96, 'en', 48, 'Tag 3 na en jeziku.'),
(97, 'hr', 49, 'Tag 4 na hr jeziku.'),
(98, 'en', 49, 'Tag 4 na en jeziku.'),
(99, 'hr', 50, 'Tag 5 na hr jeziku.'),
(100, 'en', 50, 'Tag 5 na en jeziku.'),
(101, 'hr', 51, 'Tag 6 na hr jeziku.'),
(102, 'en', 51, 'Tag 6 na en jeziku.'),
(103, 'hr', 52, 'Tag 7 na hr jeziku.'),
(104, 'en', 52, 'Tag 7 na en jeziku.'),
(105, 'hr', 53, 'Tag 8 na hr jeziku.'),
(106, 'en', 53, 'Tag 8 na en jeziku.'),
(107, 'hr', 54, 'Tag 9 na hr jeziku.'),
(108, 'en', 54, 'Tag 9 na en jeziku.'),
(109, 'hr', 55, 'Tag 10 na hr jeziku.'),
(110, 'en', 55, 'Tag 10 na en jeziku.'),
(111, 'hr', 56, 'Tag 11 na hr jeziku.'),
(112, 'en', 56, 'Tag 11 na en jeziku.'),
(113, 'hr', 57, 'Tag 12 na hr jeziku.'),
(114, 'en', 57, 'Tag 12 na en jeziku.'),
(115, 'hr', 58, 'Tag 13 na hr jeziku.'),
(116, 'en', 58, 'Tag 13 na en jeziku.'),
(117, 'hr', 59, 'Tag 14 na hr jeziku.'),
(118, 'en', 59, 'Tag 14 na en jeziku.'),
(119, 'hr', 60, 'Tag 15 na hr jeziku.'),
(120, 'en', 60, 'Tag 15 na en jeziku.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredient_meal`
--
ALTER TABLE `ingredient_meal`
  ADD CONSTRAINT `meal_ingredients_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `meal_ingredients_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`);

--
-- Constraints for table `ingredient_translations`
--
ALTER TABLE `ingredient_translations`
  ADD CONSTRAINT `ingredient_translations_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `meal_tag`
--
ALTER TABLE `meal_tag`
  ADD CONSTRAINT `tag_meal_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`),
  ADD CONSTRAINT `tag_meal_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `meal_translations`
--
ALTER TABLE `meal_translations`
  ADD CONSTRAINT `meal_translations_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
