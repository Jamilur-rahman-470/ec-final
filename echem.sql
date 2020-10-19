-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 08:21 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ec_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(7, NULL, 1, 'Supplies', 'supplies', '2020-10-16 10:20:18', '2020-10-16 10:20:18'),
(8, NULL, 1, 'Supportive Products', 'supportive-products', '2020-10-16 10:29:09', '2020-10-16 10:29:09'),
(9, NULL, 1, 'Chemicals', 'chemicals', '2020-10-16 10:29:22', '2020-10-16 10:29:22'),
(10, NULL, 1, 'Brands', 'brands', '2020-10-16 10:29:38', '2020-10-16 10:29:38'),
(11, 7, 1, 'Inks', 'inks', '2020-10-16 10:30:04', '2020-10-16 10:30:04'),
(12, 7, 1, 'Film & Output Inks', 'film-and-output-inks', '2020-10-16 10:30:27', '2020-10-16 10:30:27'),
(13, 7, 1, 'Offset Press Inks', 'offset-press-inks', '2020-10-16 10:30:44', '2020-10-16 10:30:44'),
(14, 7, 1, 'Sublimation Inks', 'sublimation-inks', '2020-10-16 10:31:07', '2020-10-16 10:31:07'),
(15, 7, 1, 'Pad Printing Inks', 'pad-printing-inks', '2020-10-16 10:31:30', '2020-10-16 10:31:30'),
(16, 7, 1, 'Security Inks', 'security-inks', '2020-10-16 10:31:53', '2020-10-16 10:31:53'),
(17, 7, 1, 'Heat Transfer Inks', 'heat-transfer-inks', '2020-10-16 10:32:17', '2020-10-16 10:32:17'),
(18, 7, 1, 'Decal Printing Inks', 'decal-printing-inks', '2020-10-16 10:32:38', '2020-10-16 10:32:38'),
(19, 7, 1, 'Digital Printing Inks', 'digital-printing-inks', '2020-10-16 10:33:15', '2020-10-16 10:33:15'),
(20, 7, 1, 'Desktop Printing Inks', 'desktop-printing-inks', '2020-10-16 10:33:32', '2020-10-16 10:33:32'),
(21, 7, 1, 'Pigment Printing Inks', 'pigment-printing-inks', '2020-10-16 10:33:48', '2020-10-16 10:33:48'),
(22, 7, 1, 'Flexo Printing Inks', 'flexo-printing-inks', '2020-10-16 10:34:14', '2020-10-16 10:34:14'),
(23, 8, 1, 'Vinyl', 'vinyl', '2020-10-16 10:34:29', '2020-10-16 10:34:29'),
(24, 8, 1, 'Screen Mesh', 'screen-mesh', '2020-10-16 10:34:43', '2020-10-16 10:34:43'),
(25, 8, 1, 'Squegges', 'squegges', '2020-10-16 10:34:58', '2020-10-16 10:34:58'),
(26, 8, 1, 'Emulsion', 'emulsion', '2020-10-16 10:35:14', '2020-10-16 10:35:14'),
(27, 8, 1, 'Tape, Paper & Film', 'tape-paper-and-film', '2020-10-16 10:35:34', '2020-10-16 10:35:34'),
(28, 9, 1, 'Allover Printing Chemical', 'allover-printing-chemical', '2020-10-16 10:35:59', '2020-10-16 10:35:59'),
(29, 9, 1, 'Digital Printing Chemicals', 'digital-printing-chemicals', '2020-10-16 10:36:15', '2020-10-16 10:36:15'),
(30, 9, 1, 'Washing Chemicals', 'washing-chemicals', '2020-10-16 10:36:40', '2020-10-16 10:36:40'),
(31, 9, 1, 'Dyeing Chemicals', 'dyeing-chemicals', '2020-10-16 10:36:55', '2020-10-16 10:36:55'),
(32, 9, 1, 'Finishing Chemicals', 'finishing-chemicals', '2020-10-16 10:37:13', '2020-10-16 10:37:13'),
(33, 9, 1, 'Laboratory Chemicals', 'laboratory-chemicals', '2020-10-16 10:37:32', '2020-10-16 10:37:32'),
(34, 9, 1, 'Paper Chemicals', 'paper-chemicals', '2020-10-16 10:37:44', '2020-10-16 10:37:44'),
(35, 9, 1, 'Argo Chemicals', 'argo-chemicals', '2020-10-16 10:37:59', '2020-10-16 10:37:59'),
(36, 9, 1, 'Phermaceutical Chemicals', 'phermaceutical-chemicals', '2020-10-16 10:38:22', '2020-10-16 10:38:22'),
(37, 9, 1, 'Packaging Chemicals', 'packaging-chemicals', '2020-10-16 10:38:43', '2020-10-16 10:38:43'),
(38, 9, 1, 'Cleaning Chemicals', 'cleaning-chemicals', '2020-10-16 10:39:02', '2020-10-16 10:39:02'),
(39, 9, 1, 'Ceramic Chemicals', 'ceramic-chemicals', '2020-10-16 10:39:16', '2020-10-16 10:39:16'),
(40, 9, 1, 'Paint & Ink Manufacturing Chemicals', 'paint-and-ink-manufacturing-chemicals', '2020-10-16 10:39:44', '2020-10-16 10:39:44'),
(41, 10, 1, 'Lancer', 'lancer', '2020-10-16 10:40:06', '2020-10-16 10:40:06'),
(42, 10, 1, 'Excalibur', 'excalibur', '2020-10-16 10:40:22', '2020-10-16 10:40:22'),
(43, 10, 1, 'Evolution', 'evolution', '2020-10-16 10:40:42', '2020-10-16 10:40:42'),
(44, 10, 1, 'STI Silicons', 'sti-silicons', '2020-10-16 10:41:04', '2020-10-16 10:41:04'),
(45, 10, 1, 'Hybrid Series', 'hybrid-series', '2020-10-16 10:41:22', '2020-10-16 10:41:22'),
(46, 10, 1, 'Inknovators', 'inknovators', '2020-10-16 10:41:47', '2020-10-16 10:41:47'),
(47, 10, 1, 'uras-chemia', 'uras-chemia', '2020-10-16 10:42:40', '2020-10-16 10:42:40'),
(48, 10, 1, 'Antex', 'antex', '2020-10-16 10:42:52', '2020-10-16 10:42:52'),
(49, 10, 1, 'Afford', 'afford', '2020-10-16 10:43:17', '2020-10-16 10:43:17'),
(50, 10, 1, 'Rhinotech', 'rhinotech', '2020-10-16 10:43:34', '2020-10-16 10:43:34'),
(51, 10, 1, 'Chromline', 'chromline', '2020-10-16 10:43:55', '2020-10-16 10:43:55'),
(52, 10, 1, 'Imagemate', 'imagemate', '2020-10-16 10:44:29', '2020-10-16 10:44:29'),
(53, 10, 1, 'DST', 'dst', '2020-10-16 10:44:40', '2020-10-16 10:44:40'),
(54, 10, 1, 'Acosgraf', 'acosgraf', '2020-10-16 10:44:55', '2020-10-16 10:44:55'),
(55, 10, 1, 'Perfectone', 'perfectone', '2020-10-16 10:45:17', '2020-10-16 10:45:17'),
(56, 10, 1, 'Perfect Color', 'perfect-color', '2020-10-16 10:45:38', '2020-10-16 10:45:38'),
(57, 10, 1, 'South Tech', 'south-tech', '2020-10-16 10:45:57', '2020-10-16 10:45:57'),
(58, 10, 1, 'Salipt', 'salipt', '2020-10-16 10:46:14', '2020-10-16 10:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ssale', '99k', 'discout', '-50%', '50 percent DISCOUNT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'order_number', 'text', 'Order Number', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"Pending\",\"processing\":\"Processing\",\"completed\":\"Completed\",\"decline\":\"Decline\"}}', 4),
(60, 7, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not Paid\",\"checked\":true}', 7),
(63, 7, 'payment_method', 'text', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"cash_on_delivery\":\"Cash On Delivery\",\"card\":\"Card\"}}', 8),
(64, 7, 'shipping_fullname', 'text', 'Shipping Fullname', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'shipping_city', 'text', 'Shipping City', 1, 0, 1, 1, 1, 1, '{}', 11),
(67, 7, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(68, 7, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'shipping_phone', 'text', 'Shipping Phone', 1, 1, 1, 1, 1, 1, '{}', 14),
(70, 7, 'notes', 'text', 'Notes', 0, 1, 1, 1, 1, 1, '{}', 15),
(71, 7, 'billing_fullname', 'text', 'Billing Fullname', 1, 1, 1, 1, 1, 1, '{}', 16),
(72, 7, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 17),
(73, 7, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(74, 7, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(75, 7, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(76, 7, 'billing_phone', 'text', 'Billing Phone', 1, 1, 1, 1, 1, 1, '{}', 21),
(77, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 22),
(78, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(79, 7, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(80, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 8, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inactive\",\"checked\":true}', 4),
(84, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 8, 'rating', 'text', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(87, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(88, 8, 'shop_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(89, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 9, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(92, 9, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(93, 9, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(95, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(96, 9, 'product_belongsto_shop_relationship', 'relationship', 'shops', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Shop\",\"table\":\"shops\",\"type\":\"belongsTo\",\"column\":\"shop_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(97, 9, 'shop_id', 'text', 'Shop Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 9, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_categories\",\"pivot\":\"1\",\"taggable\":\"on\"}', 9),
(101, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(103, 10, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(104, 10, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 4),
(105, 10, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{}', 5),
(106, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(107, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(108, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(7, 'orders', 'orders', 'Order', 'Orders', 'voyager-buy', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-11 02:13:53', '2020-10-12 00:06:06'),
(8, 'shops', 'shops', 'Shop', 'Shops', 'voyager-shop', 'App\\Shop', 'App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-12 00:18:19', '2020-10-12 02:28:20'),
(9, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', 'App\\Policies\\ProductPolicy', 'App\\Http\\Controllers\\Admin\\ProductController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-12 03:02:30', '2020-10-12 21:23:59'),
(10, 'coupons', 'coupons', 'Coupon', 'Coupons', NULL, 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-14 08:44:03', '2020-10-14 08:44:03');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-11 02:06:38', '2020-10-11 02:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-10-11 02:06:38', '2020-10-11 02:06:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-10-11 02:06:39', '2020-10-11 02:06:39', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-10-11 02:06:39', '2020-10-11 02:06:39', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-10-11 02:06:39', '2020-10-11 02:06:39', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-10-11 02:06:39', '2020-10-11 02:06:39', 'voyager.hooks', NULL),
(15, 1, 'Orders', '', '_self', 'voyager-buy', NULL, NULL, 15, '2020-10-11 02:13:53', '2020-10-11 02:13:53', 'voyager.orders.index', NULL),
(16, 1, 'Shops', '', '_self', 'voyager-shop', NULL, NULL, 16, '2020-10-12 00:18:19', '2020-10-12 00:18:19', 'voyager.shops.index', NULL),
(17, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 17, '2020-10-12 03:02:30', '2020-10-12 03:02:30', 'voyager.products.index', NULL),
(18, 1, 'Coupons', '', '_self', NULL, NULL, NULL, 18, '2020-10-14 08:44:03', '2020-10-14 08:44:03', 'voyager.coupons.index', NULL),
(19, 1, 'Order Management', '', '_blank', NULL, '#000000', NULL, 19, '2020-10-15 06:12:53', '2020-10-15 06:25:22', 'seller.orders.index', 'null');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2020_10_04_035759_create_shops_table', 1),
(29, '2020_10_05_092527_create_products_table', 1),
(30, '2020_10_05_124342_create_orders_table', 1),
(31, '2020_10_05_135926_create_order_items_table', 1),
(32, '2020_10_05_162733_create_wishlists_table', 1),
(34, '2020_10_13_092415_create_product_categories_table', 2),
(35, '2020_10_14_162303_create_coupons_table', 3),
(36, '2020_10_15_105035_add_delivered_at_column_to_order_items', 4),
(37, '2020_10_15_123541_create_sub_orders_table', 5),
(38, '2020_10_15_123811_create_sub_order_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','card') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `status`, `grand_total`, `item_count`, `is_paid`, `payment_method`, `shipping_fullname`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zipcode`, `shipping_phone`, `notes`, `billing_fullname`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_phone`, `created_at`, `updated_at`) VALUES
(1, 'OrderNumber-5f88926f2950b', 3, 'pending', 5858.00, 2, 0, 'cash_on_delivery', 'khaled', 'nil', 'nil', 'nil', '255', '120445', NULL, 'khaled', 'nil', 'nil', 'nil', '255', '120445', '2020-10-15 10:18:23', '2020-10-15 10:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`, `delivered_at`) VALUES
(1, 1, 2, 4984.00, 1, NULL, NULL, NULL),
(2, 1, 1, 874.00, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-11 02:06:39', '2020-10-11 02:06:39');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(2, 'browse_bread', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(3, 'browse_database', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(4, 'browse_media', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(5, 'browse_compass', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(6, 'browse_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(7, 'read_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(8, 'edit_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(9, 'add_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(10, 'delete_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(11, 'browse_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(12, 'read_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(13, 'edit_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(14, 'add_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(15, 'delete_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(16, 'browse_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(17, 'read_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(18, 'edit_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(19, 'add_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(20, 'delete_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(21, 'browse_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(22, 'read_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(23, 'edit_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(24, 'add_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(25, 'delete_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(26, 'browse_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(27, 'read_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(28, 'edit_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(29, 'add_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(30, 'delete_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(31, 'browse_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(32, 'read_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(33, 'edit_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(34, 'add_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(35, 'delete_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(36, 'browse_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(37, 'read_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(38, 'edit_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(39, 'add_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(40, 'delete_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(41, 'browse_hooks', NULL, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(42, 'browse_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(43, 'read_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(44, 'edit_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(45, 'add_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(46, 'delete_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(47, 'browse_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(48, 'read_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(49, 'edit_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(50, 'add_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(51, 'delete_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(52, 'browse_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(53, 'read_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(54, 'edit_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(55, 'add_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(56, 'delete_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(57, 'browse_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(58, 'read_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(59, 'edit_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(60, 'add_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(61, 'delete_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n<h2>We can use all kinds of format!</h2>\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-11 02:06:39', '2020-10-11 02:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, 'Marianne', '<p>Tempore cum</p>', 874.00, NULL, 1, '2020-10-12 04:26:00', '2020-10-12 23:24:45'),
(2, 'Kiel Tremblay', '<p>Odio ducimus rem maiores placeat omnis occaecati perspiciatis omnis eum aut quod ut.</p>', 4984.00, 'products\\October2020\\ncfmpHRPTNWP9DrxfAJW.jpg', 1, '2020-10-12 04:26:00', '2020-10-12 04:59:25'),
(3, 'Leonor Reinger', '<p>Dolorem quia doloremque voluptas et atque voluptas sit ut laudantium odit qui est eum temporibus.</p>', 2060.00, 'products\\October2020\\bEsLZpMvfoZFVKoLbG7t.jpg', 1, '2020-10-12 04:26:00', '2020-10-12 05:00:26'),
(4, 'Prof. Isaiah Balistreri', '<p>Sint vitae asperiores quam iure cupiditate consequuntur neque deserunt rem quas id reiciendis cumque ut assumenda est.</p>', 4025.00, NULL, NULL, '2020-10-12 04:26:00', '2020-10-16 10:08:08'),
(5, 'Elouise Ernser III', '<p>Nisi id in numquam maiores ducimus perspiciatis ipsum maiores sunt quaerat quasi dolor.</p>', 6808.00, NULL, NULL, '2020-10-12 04:26:00', '2020-10-16 10:08:49'),
(6, 'Carlee Hayes Sr.', 'Et id velit quo consectetur sapiente officiis corrupti sequi sunt ut temporibus nulla pariatur et ut perspiciatis iste.', 4611.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(7, 'Vesta Purdy', 'Neque culpa voluptatibus cumque totam rerum ut eum esse nulla debitis.', 1521.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(8, 'Miles Kshlerin', 'Molestiae qui accusamus a quas enim omnis et aperiam illum unde.', 2491.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(9, 'Mr. Enrico Pouros I', 'Quia odit vel sequi et mollitia non qui modi culpa recusandae totam odit quis nihil.', 1553.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(10, 'Mr. Jamir Bernhard DVM', 'Porro eaque vel ex ut qui veniam et sint minus.', 8556.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(11, 'Cecelia Keebler', 'Est quaerat impedit dolorem ea similique aut sunt laudantium dolorem ea nihil sequi dolor dolores excepturi numquam.', 6898.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(12, 'Carmine Douglas', 'Odio suscipit ad veniam temporibus ducimus soluta culpa sit minus nesciunt.', 1631.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(13, 'Prof. Kiel Collier', 'Corporis maxime doloremque labore perspiciatis maiores dicta mollitia ea blanditiis sed est quo voluptatem rem culpa.', 1046.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(14, 'Quinton Hammes', 'Accusamus omnis omnis suscipit velit qui sint nemo corrupti illum.', 5458.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(15, 'Mr. Jaylin Gleichner', 'Iusto error illum quae sed et impedit enim minus nihil incidunt dolores nam accusantium dolores amet facilis.', 3401.00, NULL, NULL, '2020-10-12 04:26:30', '2020-10-12 04:26:30'),
(16, 'testing', '<p>test desc</p>', 650.00, 'products\\October2020\\QqEjr5JrDT5KoAzTBISG.jpg', 1, '2020-10-12 23:24:00', '2020-10-13 01:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 1, 5, NULL, NULL),
(4, 2, 6, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 4, 5, NULL, NULL),
(7, 5, 6, NULL, NULL),
(8, 16, 7, NULL, NULL),
(9, 16, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(2, 'user', 'Normal User', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(3, 'seller', 'Seller', '2020-10-12 01:51:03', '2020-10-12 01:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'absolute niche', 4, 1, 'Perfumes', NULL, '2020-10-12 04:46:00', '2020-10-12 04:50:06'),
(2, 'ec', 5, 0, 'Paintings', NULL, '2020-10-12 04:47:33', '2020-10-12 04:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `sub_orders`
--

CREATE TABLE `sub_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_orders`
--

INSERT INTO `sub_orders` (`id`, `order_id`, `seller_id`, `status`, `grand_total`, `item_count`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'pending', 5858.00, 2, '2020-10-15 10:18:23', '2020-10-15 10:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_order_items`
--

CREATE TABLE `sub_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_order_items`
--

INSERT INTO `sub_order_items` (`id`, `sub_order_id`, `product_id`, `price`, `quantity`) VALUES
(1, 1, 2, 4984.00, 1),
(2, 1, 1, 874.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(3, 1, 'admin', 'a@email.com', 'users/default.png', NULL, '$2y$10$PXSXqFlk60LBv.OGGFSHaeIH2oBGVRyyBlROqR4uQiQIwP057/Cl.', NULL, NULL, '2020-10-11 02:09:28', '2020-10-11 02:09:28'),
(4, 3, 'khaled', 'k@gmail.com', 'users/default.png', NULL, '$2y$10$XZRAXbltKpHx3hltOZsZwuocumMz/NKtw2jO6dFXlJIMh3hBappD2', NULL, '{\"locale\":\"en\"}', '2020-10-11 22:51:15', '2020-10-12 04:50:06'),
(5, 2, 'echem', 'e@gmail.com', 'users/default.png', NULL, '$2y$10$LzZgnMh01QKlvKIhuWRbVezEyrCJEPPw3ey.0Q.YgcMIJE3VG1k8u', NULL, NULL, '2020-10-11 22:52:20', '2020-10-11 22:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2020-10-16 09:43:37', '2020-10-16 09:43:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_orders`
--
ALTER TABLE `sub_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_orders_order_id_foreign` (`order_id`),
  ADD KEY `sub_orders_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `sub_order_items`
--
ALTER TABLE `sub_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_order_items_sub_order_id_foreign` (`sub_order_id`),
  ADD KEY `sub_order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_orders`
--
ALTER TABLE `sub_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_order_items`
--
ALTER TABLE `sub_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_orders`
--
ALTER TABLE `sub_orders`
  ADD CONSTRAINT `sub_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_orders_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_order_items`
--
ALTER TABLE `sub_order_items`
  ADD CONSTRAINT `sub_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_order_items_sub_order_id_foreign` FOREIGN KEY (`sub_order_id`) REFERENCES `sub_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
