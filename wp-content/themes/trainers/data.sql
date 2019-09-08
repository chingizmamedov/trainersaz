-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 08, 2019 at 08:40 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `trainers_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'trainers.az', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@trainers.az', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:160:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"courses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"courses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"courses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"courses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"courses/([^/]+)/embed/?$\";s:40:\"index.php?courses=$matches[1]&embed=true\";s:28:\"courses/([^/]+)/trackback/?$\";s:34:\"index.php?courses=$matches[1]&tb=1\";s:36:\"courses/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?courses=$matches[1]&paged=$matches[2]\";s:43:\"courses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?courses=$matches[1]&cpage=$matches[2]\";s:32:\"courses/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?courses=$matches[1]&page=$matches[2]\";s:24:\"courses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"courses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"courses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"courses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"scool/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"scool/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"scool/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"scool/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"scool/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"scool/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"scool/([^/]+)/embed/?$\";s:38:\"index.php?scool=$matches[1]&embed=true\";s:26:\"scool/([^/]+)/trackback/?$\";s:32:\"index.php?scool=$matches[1]&tb=1\";s:34:\"scool/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?scool=$matches[1]&paged=$matches[2]\";s:41:\"scool/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?scool=$matches[1]&cpage=$matches[2]\";s:30:\"scool/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?scool=$matches[1]&page=$matches[2]\";s:22:\"scool/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"scool/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"scool/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"scool/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"scool/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"scool/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"articles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"articles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"articles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"articles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"articles/([^/]+)/embed/?$\";s:41:\"index.php?articles=$matches[1]&embed=true\";s:29:\"articles/([^/]+)/trackback/?$\";s:35:\"index.php?articles=$matches[1]&tb=1\";s:37:\"articles/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&paged=$matches[2]\";s:44:\"articles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&cpage=$matches[2]\";s:33:\"articles/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?articles=$matches[1]&page=$matches[2]\";s:25:\"articles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"articles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"articles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"articles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"teachers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"teachers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"teachers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"teachers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"teachers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"teachers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"teachers/([^/]+)/embed/?$\";s:41:\"index.php?teachers=$matches[1]&embed=true\";s:29:\"teachers/([^/]+)/trackback/?$\";s:35:\"index.php?teachers=$matches[1]&tb=1\";s:37:\"teachers/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?teachers=$matches[1]&paged=$matches[2]\";s:44:\"teachers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?teachers=$matches[1]&cpage=$matches[2]\";s:33:\"teachers/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?teachers=$matches[1]&page=$matches[2]\";s:25:\"teachers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"teachers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"teachers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"teachers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"teachers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"teachers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?categories=$matches[1]&feed=$matches[2]\";s:46:\"categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?categories=$matches[1]&feed=$matches[2]\";s:27:\"categories/([^/]+)/embed/?$\";s:43:\"index.php?categories=$matches[1]&embed=true\";s:39:\"categories/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?categories=$matches[1]&paged=$matches[2]\";s:21:\"categories/([^/]+)/?$\";s:32:\"index.php?categories=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:23:\"pageviews/pageviews.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'trainers', 'yes'),
(41, 'stylesheet', 'trainers', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'administrator', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1567978062;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568006862;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568050061;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568050071;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568050073;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567099683;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'trainers', 'yes'),
(144, 'theme_mods_trainers', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:15:\"header_top_menu\";i:9;s:18:\"header_bottom_menu\";i:10;s:11:\"mobile_menu\";i:11;s:16:\"footer_main_menu\";i:0;s:17:\"footer_about_menu\";i:13;s:16:\"footer_info_menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(150, 'recently_activated', 'a:1:{s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1567938380;}', 'yes'),
(157, 'acf_version', '5.8.3', 'yes'),
(159, 'recovery_mode_email_last_sent', '1567248993', 'yes'),
(169, 'taxonomy_image_plugin_settings', 'a:1:{s:10:\"taxonomies\";a:1:{i:0;s:10:\"categories\";}}', 'yes'),
(172, 'taxonomy_image_plugin', 'a:2:{i:2;i:6;i:3;i:6;}', 'yes'),
(226, 'category_children', 'a:0:{}', 'yes'),
(299, '_site_transient_timeout_php_check_d1959de4b7de84f195ea226c4728f095', '1568399038', 'no'),
(300, '_site_transient_php_check_d1959de4b7de84f195ea226c4728f095', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(319, '_site_transient_timeout_browser_17ddbd736612d9177aab22f7a5ccaed1', '1568463969', 'no'),
(320, '_site_transient_browser_17ddbd736612d9177aab22f7a5ccaed1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(348, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(353, '_transient_timeout_plugin_slugs', '1568048414', 'no'),
(354, '_transient_plugin_slugs', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:9:\"hello.php\";i:5;s:23:\"pageviews/pageviews.php\";i:6;s:35:\"taxonomy-images/taxonomy-images.php\";i:7;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'no'),
(359, 'wpgmza_global_settings', '{\"wpgmza_google_maps_api_key\":\"AIzaSyCCRV1bAttcfhchzGmawn3m_UbXd3Mi72o\",\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"\\/\\/maps.gstatic.com\\/mapfiles\\/api-3\\/images\\/spotlight-poi2.png\",\"developer_mode\":false,\"wpgmza_gdpr_enabled\":1,\"wpgmza_gdpr_default_notice\":\"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"trainers.az\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\"}', 'yes'),
(360, 'WPGMZA_OTHER_SETTINGS', 'a:10:{s:26:\"wpgmza_google_maps_api_key\";s:39:\"AIzaSyCCRV1bAttcfhchzGmawn3m_UbXd3Mi72o\";s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:59:\"//maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\";s:14:\"developer_mode\";b:0;s:19:\"wpgmza_gdpr_enabled\";i:1;s:26:\"wpgmza_gdpr_default_notice\";s:1972:\"<p>\r\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:11:\"trainers.az\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(361, 'wpgmza_temp_api', 'AIzaSyDjyYKnTqGG2CAF9nmrfB6zgTBE6oPhMk4', 'yes'),
(362, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(363, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(364, 'wpgmza_db_version', '7.11.48', 'yes'),
(365, 'wpgmaps_current_version', '7.11.48', 'yes'),
(366, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(367, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(368, 'WPGMZA_FIRST_TIME', '7.11.48', 'yes'),
(369, 'wpgmza_stats', 'a:2:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:6;s:13:\"last_accessed\";s:19:\"2019-09-08 09:14:55\";s:14:\"first_accessed\";s:19:\"2019-09-08 09:08:21\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2019-09-08 09:14:57\";s:14:\"first_accessed\";s:19:\"2019-09-08 09:12:05\";}}', 'yes'),
(370, 'wpgmza_google_maps_api_key', 'AIzaSyCCRV1bAttcfhchzGmawn3m_UbXd3Mi72o', 'yes'),
(377, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1567952045;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(380, 'new_admin_email', 'info@trainers.az', 'yes'),
(382, '_site_transient_timeout_available_translations', '1567971203', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(383, '_site_transient_available_translations', 'a:117:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.6\";s:7:\"updated\";s:19:\"2019-05-16 12:52:45\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.6/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-03 09:40:59\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.11\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.11/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 20:13:25\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 03:24:43\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-24 05:22:45\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-26 14:27:28\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 05:01:03\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-03 09:38:07\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-08 20:19:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:55:37\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-22 14:40:13\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 08:44:30\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 13:07:53\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:56:19\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-02 11:08:07\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 11:31:40\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 23:50:40\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 16:48:55\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-25 07:12:29\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-21 11:52:29\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-29 12:48:48\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.11\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.11/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-01 01:18:38\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 21:31:06\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-23 10:52:04\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-06 06:39:46\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-20 19:29:21\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-29 15:57:31\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-09 17:11:32\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-20 13:48:04\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-02 18:21:38\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-05 01:45:01\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.11\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.11/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-08-27 04:34:18\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-27 09:34:34\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.14\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.14/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.10\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.10/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-19 07:40:04\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 14:24:29\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-15 14:36:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-16 11:16:09\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 11:47:07\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-07 06:24:50\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-24 16:57:40\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 08:07:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 05:41:06\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-21 16:40:35\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-15 18:30:22\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-10 14:50:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-09-05 08:32:07\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-04 16:57:08\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-22 09:38:21\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-31 10:05:29\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-29 15:44:37\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-27 22:12:50\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.2\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.2/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-22 02:34:32\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-29 00:33:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-05 12:58:25\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-09-01 18:00:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(388, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1567972796', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(389, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4616;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3610;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2641;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2512;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1935;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1753;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1746;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1471;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1450;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1445;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1438;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1382;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1348;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1295;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1154;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1136;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1104;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1073;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1037;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:949;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:860;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:848;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:843;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:811;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:752;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:745;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:733;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:732;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:720;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:705;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:703;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:687;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:681;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:670;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:668;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:655;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:636;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:631;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:624;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:605;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:599;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:576;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:573;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:561;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:561;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:554;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:544;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:537;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:533;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:529;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:524;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:519;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:516;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:513;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:511;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:504;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:481;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:480;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:478;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:476;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:459;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:458;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:447;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:439;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:416;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:413;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:407;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:402;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:400;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:395;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:389;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:388;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:386;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:386;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:382;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:377;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:369;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:363;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:363;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:359;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:357;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:356;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:351;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:348;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:345;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:335;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:326;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:326;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:326;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:322;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:319;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:317;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:313;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:311;}}', 'no'),
(391, '_site_transient_timeout_theme_roots', '1567963808', 'no'),
(392, '_site_transient_theme_roots', 'a:4:{s:8:\"trainers\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(394, 'pageviews_config', 'a:3:{s:7:\"account\";s:40:\"bcc1e8a45444cefdaed7c67e64bf31c5a0c44ed7\";s:6:\"secret\";s:40:\"2fc5f8a88f66cf638de3d11e8770d0af63899498\";s:16:\"notice-dismissed\";b:0;}', 'yes'),
(397, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.3-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1567963708;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(398, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1567963709;s:7:\"checked\";a:4:{s:8:\"trainers\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(399, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1567963710;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"pageviews/pageviews.php\";s:6:\"0.11.0\";s:35:\"taxonomy-images/taxonomy-images.php\";s:3:\"1.0\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:7:\"7.11.48\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-08-05 17:14:46\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.1.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"pageviews\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"0.11.0\";s:7:\"updated\";s:19:\"2018-04-09 07:38:28\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/plugin/pageviews/0.11.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"pageviews/pageviews.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/pageviews\";s:4:\"slug\";s:9:\"pageviews\";s:6:\"plugin\";s:23:\"pageviews/pageviews.php\";s:11:\"new_version\";s:6:\"0.11.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/pageviews/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/pageviews.0.11.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/pageviews/assets/icon-256x256.png?rev=1451114\";s:2:\"1x\";s:62:\"https://ps.w.org/pageviews/assets/icon-128x128.png?rev=1451114\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/pageviews/assets/banner-1544x500.png?rev=1451114\";s:2:\"1x\";s:64:\"https://ps.w.org/pageviews/assets/banner-772x250.png?rev=1451114\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"taxonomy-images/taxonomy-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/taxonomy-images\";s:4:\"slug\";s:15:\"taxonomy-images\";s:6:\"plugin\";s:35:\"taxonomy-images/taxonomy-images.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/taxonomy-images/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/taxonomy-images.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/taxonomy-images/assets/icon-256x256.png?rev=1283547\";s:2:\"1x\";s:68:\"https://ps.w.org/taxonomy-images/assets/icon-128x128.png?rev=1283547\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/taxonomy-images/assets/banner-1544x500.png?rev=1288553\";s:2:\"1x\";s:70:\"https://ps.w.org/taxonomy-images/assets/banner-772x250.png?rev=1288553\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:7:\"7.11.48\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1567214551:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1567865680:1'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1567143156:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1567234792:1'),
(14, 5, '_wp_trash_meta_status', 'draft'),
(15, 5, '_wp_trash_meta_time', '1567214698'),
(16, 5, '_wp_desired_post_slug', ''),
(22, 15, '_edit_last', '1'),
(23, 15, '_edit_lock', '1567959902:1'),
(25, 17, '_edit_last', '1'),
(26, 17, '_edit_lock', '1567261521:1'),
(32, 21, '_edit_last', '1'),
(33, 21, '_edit_lock', '1567244802:1'),
(38, 25, '_wp_attached_file', '2019/08/banking.jpg'),
(39, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:281;s:4:\"file\";s:19:\"2019/08/banking.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banking-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 25, 'img_term', '3'),
(43, 26, '_edit_last', '1'),
(44, 26, '_edit_lock', '1567524313:1'),
(48, 26, '_wp_page_template', 'categories/index.php'),
(49, 32, '_edit_last', '1'),
(50, 32, '_edit_lock', '1567796289:1'),
(51, 33, '_edit_last', '1'),
(52, 33, '_edit_lock', '1567860000:1'),
(53, 11, '_wp_trash_meta_status', 'draft'),
(54, 11, '_wp_trash_meta_time', '1567271628'),
(55, 11, '_wp_desired_post_slug', ''),
(56, 21, '_wp_trash_meta_status', 'publish'),
(57, 21, '_wp_trash_meta_time', '1567272822'),
(58, 21, '_wp_desired_post_slug', 'group_5d6a41d1521f5'),
(59, 22, '_wp_trash_meta_status', 'publish'),
(60, 22, '_wp_trash_meta_time', '1567272822'),
(61, 22, '_wp_desired_post_slug', 'field_5d6a4210d810b'),
(62, 34, '_edit_last', '1'),
(63, 34, '_edit_lock', '1567958858:1'),
(64, 39, '_edit_last', '1'),
(65, 39, '_edit_lock', '1567798695:1'),
(66, 40, '_edit_last', '1'),
(67, 40, '_edit_lock', '1567541961:1'),
(68, 41, '_edit_last', '1'),
(69, 41, '_edit_lock', '1567859194:1'),
(73, 43, '_edit_last', '1'),
(74, 43, '_edit_lock', '1567869474:1'),
(75, 43, 'price', '120'),
(76, 43, '_price', 'field_5d6aaff8fb964'),
(77, 43, 'course-build', ''),
(78, 43, '_course-build', 'field_5d6ab0b7fb965'),
(79, 43, 'course-img', '87'),
(80, 43, '_course-img', 'field_5d6d6ac1f38c4'),
(81, 41, '_wp_old_date', '2019-08-31'),
(82, 41, 'price', '120'),
(83, 41, '_price', 'field_5d6aaff8fb964'),
(84, 41, 'course-build', 'a:1:{i:0;s:2:\"80\";}'),
(85, 41, '_course-build', 'field_5d6ab0b7fb965'),
(86, 41, 'course-img', '87'),
(87, 41, '_course-img', 'field_5d6d6ac1f38c4'),
(88, 39, '_wp_old_date', '2019-08-31'),
(89, 39, 'price', '120'),
(90, 39, '_price', 'field_5d6aaff8fb964'),
(91, 39, 'course-build', 'a:1:{i:0;s:2:\"40\";}'),
(92, 39, '_course-build', 'field_5d6ab0b7fb965'),
(93, 39, 'course-img', '86'),
(94, 39, '_course-img', 'field_5d6d6ac1f38c4'),
(95, 9, 'price', '80'),
(96, 9, '_price', 'field_5d6aaff8fb964'),
(97, 9, 'course-build', 'a:1:{i:0;s:2:\"80\";}'),
(98, 9, '_course-build', 'field_5d6ab0b7fb965'),
(99, 9, 'course-img', '25'),
(100, 9, '_course-img', 'field_5d6d6ac1f38c4'),
(101, 9, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(102, 9, '_curse-teacher', 'field_5d6d6c2e94e99'),
(103, 33, 'price', '80'),
(104, 33, '_price', 'field_5d6aaff8fb964'),
(105, 33, 'course-build', 'a:1:{i:0;s:2:\"80\";}'),
(106, 33, '_course-build', 'field_5d6ab0b7fb965'),
(107, 33, 'course-img', '25'),
(108, 33, '_course-img', 'field_5d6d6ac1f38c4'),
(109, 33, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(110, 33, '_curse-teacher', 'field_5d6d6c2e94e99'),
(111, 32, 'price', '120'),
(112, 32, '_price', 'field_5d6aaff8fb964'),
(113, 32, 'course-build', 'a:1:{i:0;s:2:\"40\";}'),
(114, 32, '_course-build', 'field_5d6ab0b7fb965'),
(115, 32, 'course-img', '86'),
(116, 32, '_course-img', 'field_5d6d6ac1f38c4'),
(117, 32, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(118, 32, '_curse-teacher', 'field_5d6d6c2e94e99'),
(152, 59, '_edit_last', '1'),
(153, 59, '_edit_lock', '1567927072:1'),
(154, 59, '_wp_page_template', 'default'),
(164, 64, '_edit_last', '1'),
(165, 64, '_edit_lock', '1567524345:1'),
(171, 40, '_wp_page_template', 'default'),
(172, 75, '_edit_last', '1'),
(173, 75, '_edit_lock', '1567537885:1'),
(174, 79, '_wp_attached_file', '2019/08/jalal.jpg'),
(175, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1141;s:6:\"height\";i:369;s:4:\"file\";s:17:\"2019/08/jalal.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"jalal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"jalal-300x97.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:97;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"jalal-768x248.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"jalal-1024x331.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:331;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 40, 'scool-img', '79'),
(177, 40, '_scool-img', 'field_5d6ea721cb9be'),
(178, 40, 'scool-address', 'Melik memmed kendi'),
(179, 40, '_scool-address', 'field_5d6ea763cb9bf'),
(180, 80, '_edit_last', '1'),
(181, 80, '_edit_lock', '1567859322:1'),
(182, 80, '_wp_page_template', 'default'),
(183, 80, 'scool-img', '79'),
(184, 80, '_scool-img', 'field_5d6ea721cb9be'),
(185, 80, 'scool-address', 'Boy Ehmetdi'),
(186, 80, '_scool-address', 'field_5d6ea763cb9bf'),
(187, 39, '_wp_page_template', 'default'),
(188, 39, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(189, 39, '_curse-teacher', 'field_5d6d6c2e94e99'),
(190, 39, 'slider-place', 'cotegory_slider'),
(191, 39, '_slider-place', 'field_5d6ecd8b6565a'),
(192, 86, '_wp_attached_file', '2019/09/sport.jpg'),
(193, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:280;s:4:\"file\";s:17:\"2019/09/sport.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sport-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 86, 'img_term', '7'),
(195, 87, '_wp_attached_file', '2019/09/univer.jpg'),
(196, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:280;s:4:\"file\";s:18:\"2019/09/univer.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"univer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 87, 'img_term', '2'),
(198, 88, '_edit_last', '1'),
(199, 88, '_edit_lock', '1567866052:1'),
(200, 88, '_wp_page_template', 'default'),
(201, 88, 'price', '70'),
(202, 88, '_price', 'field_5d6aaff8fb964'),
(203, 88, 'course-build', 'a:1:{i:0;s:2:\"80\";}'),
(204, 88, '_course-build', 'field_5d6ab0b7fb965'),
(205, 88, 'course-img', '86'),
(206, 88, '_course-img', 'field_5d6d6ac1f38c4'),
(207, 88, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(208, 88, '_curse-teacher', 'field_5d6d6c2e94e99'),
(209, 88, 'slider-place', 'main_slider'),
(210, 88, '_slider-place', 'field_5d6ecd8b6565a'),
(211, 41, '_wp_page_template', 'default'),
(212, 41, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(213, 41, '_curse-teacher', 'field_5d6d6c2e94e99'),
(214, 41, 'slider-place', 'main_slider'),
(215, 41, '_slider-place', 'field_5d6ecd8b6565a'),
(216, 33, '_wp_page_template', 'default'),
(217, 33, 'slider-place', 'cotegory_slider'),
(218, 33, '_slider-place', 'field_5d6ecd8b6565a'),
(219, 32, '_wp_page_template', 'default'),
(220, 32, 'slider-place', ''),
(221, 32, '_slider-place', 'field_5d6ecd8b6565a'),
(222, 43, '_wp_page_template', 'default'),
(223, 43, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(224, 43, '_curse-teacher', 'field_5d6d6c2e94e99'),
(225, 43, 'slider-place', 'main_slider'),
(226, 43, '_slider-place', 'field_5d6ecd8b6565a'),
(227, 9, '_wp_page_template', 'default'),
(228, 9, 'slider-place', 'main_slider'),
(229, 9, '_slider-place', 'field_5d6ecd8b6565a'),
(230, 90, '_edit_last', '1'),
(231, 90, '_edit_lock', '1567869331:1'),
(232, 90, '_wp_page_template', 'default'),
(233, 90, 'price', '10'),
(234, 90, '_price', 'field_5d6aaff8fb964'),
(235, 90, 'course-build', 'a:1:{i:0;s:2:\"40\";}'),
(236, 90, '_course-build', 'field_5d6ab0b7fb965'),
(237, 90, 'course-img', '87'),
(238, 90, '_course-img', 'field_5d6d6ac1f38c4'),
(239, 90, 'curse-teacher', 'a:1:{i:0;s:2:\"12\";}'),
(240, 90, '_curse-teacher', 'field_5d6d6c2e94e99'),
(241, 90, 'slider-place', 'main_slider'),
(242, 90, '_slider-place', 'field_5d6ecd8b6565a'),
(243, 91, '_menu_item_type', 'custom'),
(244, 91, '_menu_item_menu_item_parent', '0'),
(245, 91, '_menu_item_object_id', '91'),
(246, 91, '_menu_item_object', 'custom'),
(247, 91, '_menu_item_target', ''),
(248, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 91, '_menu_item_xfn', ''),
(250, 91, '_menu_item_url', 'tel:8192383829'),
(252, 92, '_menu_item_type', 'custom'),
(253, 92, '_menu_item_menu_item_parent', '0'),
(254, 92, '_menu_item_object_id', '92'),
(255, 92, '_menu_item_object', 'custom'),
(256, 92, '_menu_item_target', ''),
(257, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 92, '_menu_item_xfn', ''),
(259, 92, '_menu_item_url', '#'),
(261, 93, '_menu_item_type', 'post_type'),
(262, 93, '_menu_item_menu_item_parent', '0'),
(263, 93, '_menu_item_object_id', '26'),
(264, 93, '_menu_item_object', 'page'),
(265, 93, '_menu_item_target', ''),
(266, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(267, 93, '_menu_item_xfn', ''),
(268, 93, '_menu_item_url', ''),
(270, 59, '_wp_trash_meta_status', 'publish'),
(271, 59, '_wp_trash_meta_time', '1567927218'),
(272, 59, '_wp_desired_post_slug', 'center'),
(273, 64, '_wp_trash_meta_status', 'draft'),
(274, 64, '_wp_trash_meta_time', '1567927221'),
(275, 64, '_wp_desired_post_slug', ''),
(276, 95, '_edit_last', '1'),
(277, 95, '_edit_lock', '1567944659:1'),
(278, 95, '_wp_page_template', 'default'),
(288, 98, '_edit_last', '1'),
(289, 98, '_edit_lock', '1567963440:1'),
(290, 95, 'image-for-pages', '79'),
(291, 95, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(292, 100, 'image-for-pages', '79'),
(293, 100, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(294, 101, 'image-for-pages', '79'),
(295, 101, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(296, 103, 'image-for-pages', '79'),
(297, 103, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(298, 102, 'image-for-pages', '79'),
(299, 102, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(300, 95, 'phone', '89123179728'),
(301, 95, '_phone', 'field_5d74b63203291'),
(302, 95, 'mail_addres', 'ildirimovic@gmail.com'),
(303, 95, '_mail_addres', 'field_5d74b6af03292'),
(304, 95, 'work-time', '00:08:00'),
(305, 95, '_work-time', 'field_5d74b6fa03293'),
(306, 107, 'image-for-pages', '79'),
(307, 107, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(308, 107, 'phone', '89123179728'),
(309, 107, '_phone', 'field_5d74b63203291'),
(310, 107, 'mail_addres', 'ildirimovic@gmail.com'),
(311, 107, '_mail_addres', 'field_5d74b6af03292'),
(312, 107, 'work-time', '00:08:00'),
(313, 107, '_work-time', 'field_5d74b6fa03293'),
(314, 95, 'start-work-time', '08:00:00'),
(315, 95, '_start-work-time', 'field_5d74b6fa03293'),
(316, 95, 'end-work-time', '20:00:00'),
(317, 95, '_end-work-time', 'field_5d74c2e0ab006'),
(318, 109, 'image-for-pages', '79'),
(319, 109, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(320, 109, 'phone', '89123179728'),
(321, 109, '_phone', 'field_5d74b63203291'),
(322, 109, 'mail_addres', 'ildirimovic@gmail.com'),
(323, 109, '_mail_addres', 'field_5d74b6af03292'),
(324, 109, 'work-time', '00:08:00'),
(325, 109, '_work-time', 'field_5d74b6fa03293'),
(326, 109, 'start-work-time', '08:00:00'),
(327, 109, '_start-work-time', 'field_5d74b6fa03293'),
(328, 109, 'end-work-time', ''),
(329, 109, '_end-work-time', 'field_5d74c2e0ab006'),
(330, 110, 'image-for-pages', '79'),
(331, 110, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(332, 110, 'phone', '89123179728'),
(333, 110, '_phone', 'field_5d74b63203291'),
(334, 110, 'mail_addres', 'ildirimovic@gmail.com'),
(335, 110, '_mail_addres', 'field_5d74b6af03292'),
(336, 110, 'work-time', '00:08:00'),
(337, 110, '_work-time', 'field_5d74b6fa03293'),
(338, 110, 'start-work-time', '08:00:00'),
(339, 110, '_start-work-time', 'field_5d74b6fa03293'),
(340, 110, 'end-work-time', '20:00:00'),
(341, 110, '_end-work-time', 'field_5d74c2e0ab006'),
(342, 111, 'image-for-pages', '79'),
(343, 111, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(344, 111, 'phone', '89123179728'),
(345, 111, '_phone', 'field_5d74b63203291'),
(346, 111, 'mail_addres', 'ildirimovic@gmail.com'),
(347, 111, '_mail_addres', 'field_5d74b6af03292'),
(348, 111, 'work-time', '00:08:00'),
(349, 111, '_work-time', 'field_5d74b6fa03293'),
(350, 111, 'start-work-time', '08:00:00'),
(351, 111, '_start-work-time', 'field_5d74b6fa03293'),
(352, 111, 'end-work-time', '20:00:00'),
(353, 111, '_end-work-time', 'field_5d74c2e0ab006'),
(354, 95, 'map', 'a:3:{s:7:\"address\";s:0:\"\";s:3:\"lat\";s:17:\"40.41551064990679\";s:3:\"lng\";s:18:\"50.129525976849436\";}'),
(355, 95, '_map', 'field_5d74cbfffa333'),
(356, 113, 'image-for-pages', '79'),
(357, 113, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(358, 113, 'phone', '89123179728'),
(359, 113, '_phone', 'field_5d74b63203291'),
(360, 113, 'mail_addres', 'ildirimovic@gmail.com'),
(361, 113, '_mail_addres', 'field_5d74b6af03292'),
(362, 113, 'work-time', '00:08:00'),
(363, 113, '_work-time', 'field_5d74b6fa03293'),
(364, 113, 'start-work-time', '08:00:00'),
(365, 113, '_start-work-time', 'field_5d74b6fa03293'),
(366, 113, 'end-work-time', '20:00:00'),
(367, 113, '_end-work-time', 'field_5d74c2e0ab006'),
(368, 113, 'map', 'a:3:{s:7:\"address\";s:0:\"\";s:3:\"lat\";s:17:\"40.41551064990679\";s:3:\"lng\";s:18:\"50.129525976849436\";}'),
(369, 113, '_map', 'field_5d74cbfffa333'),
(370, 114, '_form', '<label class=\"about__form__item\"> Tam ad [text* your-name] </label>\n\n<label class=\"about__form__item\"> Email:[email* your-email] </label>\n\n<label class=\"about__form__item\"> Tel: [tel* form-phone placeholder \"Nomrenizi elave edin\"] </label>\n\n\n[submit class:m-btn class:m-btn__about]'),
(371, 114, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:28:\"trainers.az \"[your-subject]\"\";s:6:\"sender\";s:30:\"trainers.az <info@trainers.az>\";s:9:\"recipient\";s:16:\"info@trainers.az\";s:4:\"body\";s:171:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on trainers.az (http://localhost:8888)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(372, 114, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"trainers.az \"[your-subject]\"\";s:6:\"sender\";s:30:\"trainers.az <info@trainers.az>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on trainers.az (http://localhost:8888)\";s:18:\"additional_headers\";s:26:\"Reply-To: info@trainers.az\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(373, 114, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(374, 114, '_additional_settings', ''),
(375, 114, '_locale', 'ru_RU'),
(376, 115, '_edit_last', '1'),
(377, 115, '_edit_lock', '1567959581:1'),
(378, 120, '_edit_last', '1'),
(379, 120, '_edit_lock', '1567960070:1'),
(380, 120, 'mini-img', '87'),
(381, 120, '_mini-img', 'field_5d7526d04798f'),
(382, 120, 'inpost-img', '79'),
(383, 120, '_inpost-img', 'field_5d75270280cba'),
(384, 120, 'slider-place', 'main_slider'),
(385, 120, '_slider-place', 'field_5d7527e787f01'),
(386, 120, '_wp_old_date', '2019-09-08'),
(387, 123, '_edit_last', '1'),
(388, 123, '_edit_lock', '1567964145:1'),
(389, 123, '_wp_page_template', 'articles/index.php'),
(390, 123, 'image-for-pages', ''),
(391, 123, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(392, 123, 'phone', ''),
(393, 123, '_phone', 'field_5d74b63203291'),
(394, 123, 'mail_addres', ''),
(395, 123, '_mail_addres', 'field_5d74b6af03292'),
(396, 123, 'start-work-time', ''),
(397, 123, '_start-work-time', 'field_5d74b6fa03293'),
(398, 123, 'end-work-time', ''),
(399, 123, '_end-work-time', 'field_5d74c2e0ab006'),
(400, 123, 'map', ''),
(401, 123, '_map', 'field_5d74cbfffa333'),
(402, 125, 'image-for-pages', ''),
(403, 125, '_image-for-pages', 'field_5d74aeb4e6c0a'),
(404, 125, 'phone', ''),
(405, 125, '_phone', 'field_5d74b63203291'),
(406, 125, 'mail_addres', ''),
(407, 125, '_mail_addres', 'field_5d74b6af03292'),
(408, 125, 'start-work-time', ''),
(409, 125, '_start-work-time', 'field_5d74b6fa03293'),
(410, 125, 'end-work-time', ''),
(411, 125, '_end-work-time', 'field_5d74c2e0ab006'),
(412, 125, 'map', ''),
(413, 125, '_map', 'field_5d74cbfffa333'),
(414, 126, '_menu_item_type', 'post_type'),
(415, 126, '_menu_item_menu_item_parent', '0'),
(416, 126, '_menu_item_object_id', '123'),
(417, 126, '_menu_item_object', 'page'),
(418, 126, '_menu_item_target', ''),
(419, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(420, 126, '_menu_item_xfn', ''),
(421, 126, '_menu_item_url', ''),
(423, 127, '_menu_item_type', 'post_type'),
(424, 127, '_menu_item_menu_item_parent', '0'),
(425, 127, '_menu_item_object_id', '95'),
(426, 127, '_menu_item_object', 'page'),
(427, 127, '_menu_item_target', ''),
(428, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(429, 127, '_menu_item_xfn', ''),
(430, 127, '_menu_item_url', ''),
(441, 129, '_menu_item_type', 'post_type'),
(442, 129, '_menu_item_menu_item_parent', '0'),
(443, 129, '_menu_item_object_id', '123'),
(444, 129, '_menu_item_object', 'page'),
(445, 129, '_menu_item_target', ''),
(446, 129, '_menu_item_classes', 'a:1:{i:0;s:17:\"mobile__menu_link\";}'),
(447, 129, '_menu_item_xfn', ''),
(448, 129, '_menu_item_url', ''),
(450, 130, '_menu_item_type', 'post_type'),
(451, 130, '_menu_item_menu_item_parent', '0'),
(452, 130, '_menu_item_object_id', '95'),
(453, 130, '_menu_item_object', 'page'),
(454, 130, '_menu_item_target', ''),
(455, 130, '_menu_item_classes', 'a:1:{i:0;s:17:\"mobile__menu_link\";}'),
(456, 130, '_menu_item_xfn', ''),
(457, 130, '_menu_item_url', ''),
(459, 131, '_menu_item_type', 'post_type'),
(460, 131, '_menu_item_menu_item_parent', '0'),
(461, 131, '_menu_item_object_id', '26'),
(462, 131, '_menu_item_object', 'page'),
(463, 131, '_menu_item_target', ''),
(464, 131, '_menu_item_classes', 'a:1:{i:0;s:17:\"mobile__menu_link\";}'),
(465, 131, '_menu_item_xfn', ''),
(466, 131, '_menu_item_url', ''),
(468, 132, '_menu_item_type', 'custom'),
(469, 132, '_menu_item_menu_item_parent', '0'),
(470, 132, '_menu_item_object_id', '132'),
(471, 132, '_menu_item_object', 'custom'),
(472, 132, '_menu_item_target', ''),
(473, 132, '_menu_item_classes', 'a:1:{i:0;s:17:\"mobile__menu_link\";}'),
(474, 132, '_menu_item_xfn', ''),
(475, 132, '_menu_item_url', 'tel:8198233891'),
(477, 133, '_menu_item_type', 'post_type'),
(478, 133, '_menu_item_menu_item_parent', '0'),
(479, 133, '_menu_item_object_id', '123'),
(480, 133, '_menu_item_object', 'page'),
(481, 133, '_menu_item_target', ''),
(482, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 133, '_menu_item_xfn', ''),
(484, 133, '_menu_item_url', ''),
(486, 134, '_menu_item_type', 'post_type'),
(487, 134, '_menu_item_menu_item_parent', '0'),
(488, 134, '_menu_item_object_id', '95'),
(489, 134, '_menu_item_object', 'page'),
(490, 134, '_menu_item_target', ''),
(491, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 134, '_menu_item_xfn', ''),
(493, 134, '_menu_item_url', ''),
(495, 135, '_menu_item_type', 'post_type'),
(496, 135, '_menu_item_menu_item_parent', '0'),
(497, 135, '_menu_item_object_id', '26'),
(498, 135, '_menu_item_object', 'page'),
(499, 135, '_menu_item_target', ''),
(500, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 135, '_menu_item_xfn', ''),
(502, 135, '_menu_item_url', ''),
(504, 136, '_menu_item_type', 'custom'),
(505, 136, '_menu_item_menu_item_parent', '0'),
(506, 136, '_menu_item_object_id', '136'),
(507, 136, '_menu_item_object', 'custom'),
(508, 136, '_menu_item_target', ''),
(509, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 136, '_menu_item_xfn', ''),
(511, 136, '_menu_item_url', '/faq/');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2019-08-31 04:24:58', '2019-08-31 01:24:58', '<img class=\"alignnone size-medium wp-image-6\" src=\"http://localhost:8888/wp-content/uploads/2019/08/cateqory-bg-290x300.jpg\" alt=\"\" width=\"290\" height=\"300\" />', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-08-31 04:24:58', '2019-08-31 01:24:58', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=5', 0, 'courses', '', 0),
(9, 1, '2019-08-29 23:40:27', '2019-08-29 20:40:27', 'Ingilis dili kursu', 'Ingilis dili', '', 'publish', 'closed', 'closed', '', 'pox-kursu', '', '', '2019-09-07 17:16:49', '2019-09-07 14:16:49', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=9', 0, 'courses', '', 0),
(11, 1, '2019-08-31 20:13:48', '2019-08-31 17:13:48', '', 'ingilis dili', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-08-31 20:13:48', '2019-08-31 17:13:48', '', 0, 'http://localhost:8888/?post_type=teachers&#038;p=11', 0, 'teachers', '', 0),
(12, 1, '2019-08-31 04:24:37', '2019-08-31 01:24:37', 'Rufige', 'Rufige', '', 'publish', 'closed', 'closed', '', 'rufige', '', '', '2019-08-31 10:01:55', '2019-08-31 07:01:55', '', 0, 'http://localhost:8888/?post_type=teachers&#038;p=12', 0, 'teachers', '', 0),
(15, 1, '2019-08-31 04:39:54', '2019-08-31 01:39:54', 'Aynure seyderesdi', 'Aynure', '', 'publish', 'open', 'open', '', 'aynure', '', '', '2019-08-31 17:27:19', '2019-08-31 14:27:19', '', 0, 'http://localhost:8888/?p=15', 0, 'post', '', 0),
(16, 1, '2019-08-31 04:39:54', '2019-08-31 01:39:54', 'Aynure seyderesdi', 'Aynure', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-08-31 04:39:54', '2019-08-31 01:39:54', '', 15, 'http://localhost:8888/2019/08/31/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-08-31 04:40:24', '2019-08-31 01:40:24', 'Zabil xiyardi', 'Zabil', '', 'publish', 'open', 'open', '', 'zabil', '', '', '2019-08-31 17:27:27', '2019-08-31 14:27:27', '', 0, 'http://localhost:8888/?p=17', 0, 'post', '', 0),
(18, 1, '2019-08-31 04:40:24', '2019-08-31 01:40:24', 'Zabil xiyardi', 'Zabil', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-08-31 04:40:24', '2019-08-31 01:40:24', '', 17, 'http://localhost:8888/2019/08/31/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-08-31 12:48:32', '2019-08-31 09:48:32', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"categories:inglish\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"categories:russian\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Cat Img', 'cat-img', 'trash', 'closed', 'closed', '', 'group_5d6a41d1521f5__trashed', '', '', '2019-08-31 20:33:42', '2019-08-31 17:33:42', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2019-08-31 12:48:32', '2019-08-31 09:48:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:50:\"Изображение для таксономии\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Cat Img', 'cat_img', 'trash', 'closed', 'closed', '', 'field_5d6a4210d810b__trashed', '', '', '2019-08-31 20:33:42', '2019-08-31 17:33:42', '', 21, 'http://localhost:8888/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(25, 1, '2019-08-31 17:25:21', '2019-08-31 14:25:21', '', 'banking', '', 'inherit', 'open', 'closed', '', 'banking', '', '', '2019-09-02 22:31:23', '2019-09-02 19:31:23', '', 33, 'http://localhost:8888/wp-content/uploads/2019/08/banking.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-08-31 17:52:10', '2019-08-31 14:52:10', '', 'categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2019-09-03 18:21:13', '2019-09-03 15:21:13', '', 0, 'http://localhost:8888/?page_id=26', 0, 'page', '', 0),
(29, 1, '2019-08-31 17:56:20', '2019-08-31 14:56:20', '', 'Категории', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-08-31 17:56:20', '2019-08-31 14:56:20', '', 26, 'http://localhost:8888/2019/08/31/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-08-31 18:45:02', '2019-08-31 15:45:02', '', 'categories', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-08-31 18:45:02', '2019-08-31 15:45:02', '', 26, 'http://localhost:8888/2019/08/31/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-08-31 18:45:05', '2019-08-31 15:45:05', '', 'categories', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2019-08-31 18:45:05', '2019-08-31 15:45:05', '', 26, 'http://localhost:8888/2019/08/31/26-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2019-08-31 19:30:36', '2019-08-31 16:30:36', 'russ dili', 'russ dili', '', 'publish', 'closed', 'closed', '', 'russ-dili', '', '', '2019-09-06 22:00:21', '2019-09-06 19:00:21', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=32', 0, 'courses', '', 0),
(33, 1, '2019-08-31 19:33:23', '2019-08-31 16:33:23', 'russ dili', 'Ermeni dili', '', 'publish', 'closed', 'closed', '', 'russ-dili-2', '', '', '2019-09-07 15:30:47', '2019-09-07 12:30:47', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=33', 0, 'courses', '', 0),
(34, 1, '2019-08-31 20:40:39', '2019-08-31 17:40:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"courses\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Курсы', '%d0%ba%d1%83%d1%80%d1%81%d1%8b', 'publish', 'closed', 'closed', '', 'group_5d6aaf78a3ad4', '', '', '2019-09-07 18:18:49', '2019-09-07 15:18:49', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=34', 0, 'acf-field-group', '', 0),
(37, 1, '2019-08-31 20:40:39', '2019-08-31 17:40:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"Цена одно цыкла курса\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:54:\"Добавьте цена за цыкл занятий\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"AZN\";s:9:\"maxlength\";s:0:\"\";}', 'Цена', 'price', 'publish', 'closed', 'closed', '', 'field_5d6aaff8fb964', '', '', '2019-08-31 20:40:39', '2019-08-31 17:40:39', '', 34, 'http://localhost:8888/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2019-08-31 20:40:39', '2019-08-31 17:40:39', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:5:\"scool\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'заведение где проводится курс', 'course-build', 'publish', 'closed', 'closed', '', 'field_5d6ab0b7fb965', '', '', '2019-09-03 22:14:13', '2019-09-03 19:14:13', '', 34, 'http://localhost:8888/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
(39, 1, '2019-09-02 22:19:46', '2019-09-02 19:19:46', 'Adi budu ozu de budu', 'Riyazziyat 1', '', 'publish', 'closed', 'closed', '', 'riyazziyat', '', '', '2019-09-06 22:39:56', '2019-09-06 19:39:56', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=39', 0, 'courses', '', 0),
(40, 1, '2019-08-31 20:41:52', '2019-08-31 17:41:52', 'Bu jalal kursu zordu diyesen paah', 'Jalal Course', '', 'publish', 'closed', 'closed', '', 'jalal-course', '', '', '2019-09-03 22:23:13', '2019-09-03 19:23:13', '', 0, 'http://localhost:8888/?post_type=scool&#038;p=40', 0, 'scool', '', 0),
(41, 1, '2019-09-02 22:19:27', '2019-09-02 19:19:27', 'Riyazit yani cebr hendese', 'Hendese', '', 'publish', 'closed', 'closed', '', 'riyyaziyat-2', '', '', '2019-09-07 15:28:10', '2019-09-07 12:28:10', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=41', 0, 'courses', '', 0),
(43, 1, '2019-08-31 20:44:46', '2019-08-31 17:44:46', 'yani cebr ve hendese', 'Riyyaziyat', '', 'publish', 'closed', 'closed', '', 'riyyaziyat', '', '', '2019-09-07 18:19:13', '2019-09-07 15:19:13', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=43', 0, 'courses', '', 0),
(44, 1, '2019-09-02 22:18:39', '2019-09-02 19:18:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:70:\"Сюда добавлять изображение для курсов\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение курсов', 'course-img', 'publish', 'closed', 'closed', '', 'field_5d6d6ac1f38c4', '', '', '2019-09-02 22:18:39', '2019-09-02 19:18:39', '', 34, 'http://localhost:8888/?post_type=acf-field&p=44', 2, 'acf-field', '', 0),
(45, 1, '2019-09-02 22:24:40', '2019-09-02 19:24:40', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:8:\"teachers\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'учитель курса', 'curse-teacher', 'publish', 'closed', 'closed', '', 'field_5d6d6c2e94e99', '', '', '2019-09-03 22:14:47', '2019-09-03 19:14:47', '', 34, 'http://localhost:8888/?post_type=acf-field&#038;p=45', 3, 'acf-field', '', 0),
(47, 1, '2019-09-02 22:46:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-02 22:46:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=47', 0, 'page', '', 0),
(58, 1, '2019-09-03 08:17:12', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 08:17:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=58', 0, 'page', '', 0),
(59, 1, '2019-09-03 08:20:20', '2019-09-03 05:20:20', '', 'Центр', '', 'trash', 'closed', 'closed', '', 'center__trashed', '', '', '2019-09-08 10:20:18', '2019-09-08 07:20:18', '', 0, 'http://localhost:8888/?page_id=59', 0, 'page', '', 0),
(60, 1, '2019-09-03 08:20:20', '2019-09-03 05:20:20', '', 'Центр', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-09-03 08:20:20', '2019-09-03 05:20:20', '', 59, 'http://localhost:8888/2019/09/03/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-09-03 17:42:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 17:42:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=62', 0, 'page', '', 0),
(63, 1, '2019-09-03 18:21:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:21:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=63', 0, 'page', '', 0),
(64, 1, '2019-09-08 10:20:21', '2019-09-08 07:20:21', '', 'Шаблон постов', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-09-08 10:20:21', '2019-09-08 07:20:21', '', 0, 'http://localhost:8888/?page_id=64', 0, 'page', '', 0),
(67, 1, '2019-09-03 18:27:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:27:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=67', 0, 'page', '', 0),
(68, 1, '2019-09-03 18:28:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:28:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=68', 0, 'page', '', 0),
(69, 1, '2019-09-03 18:29:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:29:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=69', 0, 'page', '', 0),
(70, 1, '2019-09-03 18:29:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:29:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=70', 0, 'page', '', 0),
(71, 1, '2019-09-03 18:30:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:30:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-09-03 18:30:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:30:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=72', 0, 'page', '', 0),
(73, 1, '2019-09-03 18:31:06', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:31:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=73', 0, 'page', '', 0),
(74, 1, '2019-09-03 18:31:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 18:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=74', 0, 'page', '', 0),
(75, 1, '2019-09-03 20:50:28', '2019-09-03 17:50:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"scool\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Образовательные центры', '%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%86%d0%b5%d0%bd%d1%82%d1%80%d1%8b', 'publish', 'closed', 'closed', '', 'group_5d6ea6eb46622', '', '', '2019-09-03 20:57:57', '2019-09-03 17:57:57', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2019-09-03 20:47:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 20:47:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=acf-field-group&p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2019-09-03 20:50:28', '2019-09-03 17:50:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Изображения для центров заведения\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'scool-img', 'scool-img', 'publish', 'closed', 'closed', '', 'field_5d6ea721cb9be', '', '', '2019-09-03 20:50:28', '2019-09-03 17:50:28', '', 75, 'http://localhost:8888/?post_type=acf-field&p=77', 0, 'acf-field', '', 0),
(78, 1, '2019-09-03 20:50:28', '2019-09-03 17:50:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Адрес центра заведения\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес центра завведения', 'scool-address', 'publish', 'closed', 'closed', '', 'field_5d6ea763cb9bf', '', '', '2019-09-03 20:50:28', '2019-09-03 17:50:28', '', 75, 'http://localhost:8888/?post_type=acf-field&p=78', 1, 'acf-field', '', 0),
(79, 1, '2019-09-03 20:59:04', '2019-09-03 17:59:04', '', 'jalal', '', 'inherit', 'open', 'closed', '', 'jalal', '', '', '2019-09-03 20:59:04', '2019-09-03 17:59:04', '', 40, 'http://localhost:8888/wp-content/uploads/2019/08/jalal.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-09-03 21:00:12', '2019-09-03 18:00:12', 'Bilik kursu bele yerdi.', 'Bilik kursu', '', 'publish', 'closed', 'closed', '', 'bilik-kursu', '', '', '2019-09-03 21:00:27', '2019-09-03 18:00:27', '', 0, 'http://localhost:8888/?post_type=scool&#038;p=80', 0, 'scool', '', 0),
(81, 1, '2019-09-03 22:22:13', '2019-09-03 19:22:13', 'Bu jalal kursu zordu diyesen <del datetime=\"2019-09-03T19:15:43+00:00\">paah</del>', 'Jalal Course', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2019-09-03 22:22:13', '2019-09-03 19:22:13', '', 40, 'http://localhost:8888/2019/09/03/40-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2019-09-03 23:21:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-03 23:21:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=courses&p=82', 0, 'courses', '', 0),
(85, 1, '2019-09-03 23:32:42', '2019-09-03 20:32:42', 'a:10:{s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:4:\"none\";s:4:\"none\";s:11:\"main_slider\";s:11:\"main_slider\";s:15:\"cotegory_slider\";s:15:\"cotegory_slider\";}s:10:\"allow_null\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Вывод в слайдере', 'slider-place', 'publish', 'closed', 'closed', '', 'field_5d6ecd8b6565a', '', '', '2019-09-07 18:18:49', '2019-09-07 15:18:49', '', 34, 'http://localhost:8888/?post_type=acf-field&#038;p=85', 4, 'acf-field', '', 0),
(86, 1, '2019-09-04 23:23:50', '2019-09-04 20:23:50', '', 'sport', '', 'inherit', 'open', 'closed', '', 'sport', '', '', '2019-09-04 23:26:13', '2019-09-04 20:26:13', '', 88, 'http://localhost:8888/wp-content/uploads/2019/09/sport.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-09-04 23:24:50', '2019-09-04 20:24:50', '', 'univer', '', 'inherit', 'open', 'closed', '', 'univer', '', '', '2019-09-04 23:43:40', '2019-09-04 20:43:40', '', 41, 'http://localhost:8888/wp-content/uploads/2019/09/univer.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-09-04 23:26:13', '2019-09-04 20:26:13', 'Joqa da', 'Joga', '', 'publish', 'closed', 'closed', '', 'joga', '', '', '2019-09-07 15:27:28', '2019-09-07 12:27:28', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=88', 0, 'courses', '', 0),
(89, 1, '2019-09-06 21:23:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-06 21:23:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=89', 0, 'post', '', 0),
(90, 1, '2019-09-07 17:17:43', '2019-09-07 14:17:43', 'Hungri dili kimi', 'Hungry dili', '', 'publish', 'closed', 'closed', '', 'hungry-dili', '', '', '2019-09-07 18:17:24', '2019-09-07 15:17:24', '', 0, 'http://localhost:8888/?post_type=courses&#038;p=90', 0, 'courses', '', 0),
(91, 1, '2019-09-08 10:06:59', '2019-09-08 07:06:59', '', '8192383829', '', 'publish', 'closed', 'closed', '', '8192383829', '', '', '2019-09-08 10:11:53', '2019-09-08 07:11:53', '', 0, 'http://localhost:8888/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2019-09-08 10:06:59', '2019-09-08 07:06:59', '', 'Giris', '', 'publish', 'closed', 'closed', '', 'giris', '', '', '2019-09-08 10:11:53', '2019-09-08 07:11:53', '', 0, 'http://localhost:8888/?p=92', 2, 'nav_menu_item', '', 0),
(93, 1, '2019-09-08 10:08:58', '2019-09-08 07:08:58', '', 'Katalog', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%82%d0%b0%d0%bb%d0%be%d0%b3', '', '', '2019-09-08 23:29:20', '2019-09-08 20:29:20', '', 0, 'http://localhost:8888/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2019-09-08 10:20:21', '2019-09-08 07:20:21', '', 'Шаблон постов', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-09-08 10:20:21', '2019-09-08 07:20:21', '', 64, 'http://localhost:8888/2019/09/08/64-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-09-08 10:27:14', '2019-09-08 07:27:14', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj\r\n\r\n\r\n[wpgmza id=\"1\"]', 'Hakkimizda', '', 'publish', 'closed', 'closed', '', 'hakkimizda', '', '', '2019-09-08 12:47:26', '2019-09-08 09:47:26', '', 0, 'http://localhost:8888/?page_id=95', 0, 'page', '', 0),
(96, 1, '2019-09-08 10:27:14', '2019-09-08 07:27:14', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam tempore sunt perspiciatis accusantium libero laborum temporibus saepe id laboriosam atque. Laboriosam dolor possimus dicta voluptate sit quisquam ullam perferendis facere at et eveniet est cum autem itaque ipsum iure, qui eligendi commodi voluptates inventore temporibus adipisci nihil? Placeat corrupti asperiores in ipsa ea autem cupiditate quibusdam, quia, obcaecati culpa doloremque veniam fugit ex dolore saepe error quasi fugiat commodi voluptatum quo possimus eveniet. Praesentium, quos excepturi dicta placeat architecto nesciunt eaque. Excepturi deserunt ipsa provident, aliquid quam quos eligendi esse earum facere doloremque veritatis explicabo voluptates libero nulla sapiente vitae, modi, est reiciendis quia necessitatibus accusamus dolorum quasi voluptatem! Deleniti, quasi recusandae nemo eligendi incidunt labore provident aperiam quia saepe, fugiat inventore quo, earum quae aliquam facilis? Possimus aspernatur nesciunt provident voluptatem? Hic dolores tempore veniam. Dicta magnam neque veniam dignissimos quas, error tenetur doloremque vero nesciunt maiores officia nemo ab maxime fuga quisquam optio mollitia blanditiis perferendis voluptate sapiente libero eaque quaerat reiciendis. Quibusdam laudantium laboriosam, amet iusto omnis commodi perspiciatis ab minus et dolore quasi, nulla dolores doloribus placeat accusamus id. Veniam distinctio saepe, repudiandae assumenda architecto illo quisquam iste ab sequi laborum laboriosam sunt obcaecati, velit optio.</div>\r\n<div></div>\r\n</div>', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 10:27:14', '2019-09-08 07:27:14', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-09-08 10:35:09', '2019-09-08 07:35:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для страниц', '%d0%b4%d0%bb%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86', 'publish', 'closed', 'closed', '', 'group_5d74aea73853a', '', '', '2019-09-08 20:26:21', '2019-09-08 17:26:21', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(99, 1, '2019-09-08 10:35:09', '2019-09-08 07:35:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Добавьте изображение для страницы\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображения для страниц', 'image-for-pages', 'publish', 'closed', 'closed', '', 'field_5d74aeb4e6c0a', '', '', '2019-09-08 20:26:20', '2019-09-08 17:26:20', '', 98, 'http://localhost:8888/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0),
(100, 1, '2019-09-08 10:35:26', '2019-09-08 07:35:26', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam tempore sunt perspiciatis accusantium libero laborum temporibus saepe id laboriosam atque. Laboriosam dolor possimus dicta voluptate sit quisquam ullam perferendis facere at et eveniet est cum autem itaque ipsum iure, qui eligendi commodi voluptates inventore temporibus adipisci nihil? Placeat corrupti asperiores in ipsa ea autem cupiditate quibusdam, quia, obcaecati culpa doloremque veniam fugit ex dolore saepe error quasi fugiat commodi voluptatum quo possimus eveniet. Praesentium, quos excepturi dicta placeat architecto nesciunt eaque. Excepturi deserunt ipsa provident, aliquid quam quos eligendi esse earum facere doloremque veritatis explicabo voluptates libero nulla sapiente vitae, modi, est reiciendis quia necessitatibus accusamus dolorum quasi voluptatem! Deleniti, quasi recusandae nemo eligendi incidunt labore provident aperiam quia saepe, fugiat inventore quo, earum quae aliquam facilis? Possimus aspernatur nesciunt provident voluptatem? Hic dolores tempore veniam. Dicta magnam neque veniam dignissimos quas, error tenetur doloremque vero nesciunt maiores officia nemo ab maxime fuga quisquam optio mollitia blanditiis perferendis voluptate sapiente libero eaque quaerat reiciendis. Quibusdam laudantium laboriosam, amet iusto omnis commodi perspiciatis ab minus et dolore quasi, nulla dolores doloribus placeat accusamus id. Veniam distinctio saepe, repudiandae assumenda architecto illo quisquam iste ab sequi laborum laboriosam sunt obcaecati, velit optio.</div>\r\n<div></div>\r\n</div>', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 10:35:26', '2019-09-08 07:35:26', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-09-08 11:00:05', '2019-09-08 08:00:05', '<p>\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam tempore sunt perspiciatis accusantium libero laborum temporibus saepe id laboriosam atque. Laboriosam dolor possimus dicta voluptate sit quisquam ullam perferendis facere at et eveniet est cum autem itaque ipsum iure, qui eligendi commodi voluptates inventore temporibus adipisci nihil? Placeat corrupti asperiores in ipsa ea autem cupiditate quibusdam, quia, obcaecati culpa doloremque veniam fugit ex dolore saepe error quasi fugiat commodi voluptatum quo possimus eveniet. Praesentium, quos excepturi dicta placeat architecto nesciunt eaque. Excepturi deserunt ipsa provident, aliquid quam quos eligendi esse earum facere doloremque veritatis explicabo voluptates libero nulla sapiente vitae, modi, est reiciendis quia necessitatibus accusamus dolorum quasi voluptatem! Deleniti, quasi recusandae nemo eligendi incidunt labore provident aperiam quia saepe, fugiat inventore quo, earum quae aliquam facilis? Possimus aspernatur nesciunt provident voluptatem? Hic dolores tempore veniam. Dicta magnam neque veniam dignissimos quas, error tenetur doloremque vero nesciunt maiores officia nemo ab maxime fuga quisquam optio mollitia blanditiis perferendis voluptate sapiente libero eaque quaerat reiciendis. Quibusdam laudantium laboriosam, amet iusto omnis commodi perspiciatis ab minus et dolore quasi, nulla dolores doloribus placeat accusamus id. Veniam distinctio saepe, repudiandae assumenda architecto illo quisquam iste ab sequi laborum laboriosam sunt obcaecati, velit optio.\r\n</p>', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 11:00:05', '2019-09-08 08:00:05', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-09-08 11:04:32', '2019-09-08 08:04:32', '<blockquote>Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj</blockquote>', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2019-09-08 11:04:32', '2019-09-08 08:04:32', '', 95, 'http://localhost:8888/2019/09/08/95-autosave-v1/', 0, 'revision', '', 0),
(103, 1, '2019-09-08 11:02:31', '2019-09-08 08:02:31', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 11:02:31', '2019-09-08 08:02:31', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-09-08 11:09:19', '2019-09-08 08:09:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Вводите номер телефона\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Номер телефона', 'phone', 'publish', 'closed', 'closed', '', 'field_5d74b63203291', '', '', '2019-09-08 20:26:20', '2019-09-08 17:26:20', '', 98, 'http://localhost:8888/?post_type=acf-field&#038;p=104', 1, 'acf-field', '', 0),
(105, 1, '2019-09-08 11:09:19', '2019-09-08 08:09:19', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:27:\"Почта компании\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:33:\"Электронная почта\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Адрес  электронной почты', 'mail_addres', 'publish', 'closed', 'closed', '', 'field_5d74b6af03292', '', '', '2019-09-08 20:26:21', '2019-09-08 17:26:21', '', 98, 'http://localhost:8888/?post_type=acf-field&#038;p=105', 2, 'acf-field', '', 0),
(106, 1, '2019-09-08 11:09:19', '2019-09-08 08:09:19', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Начало рабочего времени', 'start-work-time', 'publish', 'closed', 'closed', '', 'field_5d74b6fa03293', '', '', '2019-09-08 12:05:30', '2019-09-08 09:05:30', '', 98, 'http://localhost:8888/?post_type=acf-field&#038;p=106', 3, 'acf-field', '', 0),
(107, 1, '2019-09-08 11:13:30', '2019-09-08 08:13:30', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 11:13:30', '2019-09-08 08:13:30', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-09-08 12:00:19', '2019-09-08 09:00:19', 'a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Конец рабочего времени', 'end-work-time', 'publish', 'closed', 'closed', '', 'field_5d74c2e0ab006', '', '', '2019-09-08 12:05:30', '2019-09-08 09:05:30', '', 98, 'http://localhost:8888/?post_type=acf-field&#038;p=108', 4, 'acf-field', '', 0),
(109, 1, '2019-09-08 12:02:55', '2019-09-08 09:02:55', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 12:02:55', '2019-09-08 09:02:55', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-09-08 12:03:38', '2019-09-08 09:03:38', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 12:03:38', '2019-09-08 09:03:38', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-09-08 12:11:49', '2019-09-08 09:11:49', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj\r\n\r\n\r\n[wpgmza id=\"1\"]', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 12:11:49', '2019-09-08 09:11:49', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-09-08 12:39:19', '2019-09-08 09:39:19', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:40:\"Расположение на карте\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";i:10;s:6:\"height\";i:376;}', 'Карта', 'map', 'publish', 'closed', 'closed', '', 'field_5d74cbfffa333', '', '', '2019-09-08 12:39:19', '2019-09-08 09:39:19', '', 98, 'http://localhost:8888/?post_type=acf-field&p=112', 5, 'acf-field', '', 0),
(113, 1, '2019-09-08 12:47:26', '2019-09-08 09:47:26', 'Bu sehifede duz emelli text ola biler olmaya da biler ,mem sene de deim ay braaat sdkajdkj asdkj asdjkb asndasjk ndjasbd asbdkj basjd basjdb jashbd kasjd asbdjhbas dbasnbd nasbdm asbdk asdj hakljsdn kasbd manbd basljidh askjdbn ,asbd masnbd nasbd jakshd lkaj\r\n\r\n\r\n[wpgmza id=\"1\"]', 'Hakkimizda', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-09-08 12:47:26', '2019-09-08 09:47:26', '', 95, 'http://localhost:8888/2019/09/08/95-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-09-08 14:14:05', '2019-09-08 11:14:05', '<label class=\"about__form__item\"> Tam ad [text* your-name] </label>\r\n\r\n<label class=\"about__form__item\"> Email:[email* your-email] </label>\r\n\r\n<label class=\"about__form__item\"> Tel: [tel* form-phone placeholder \"Nomrenizi elave edin\"] </label>\r\n\r\n\r\n[submit class:m-btn class:m-btn__about]\n1\ntrainers.az \"[your-subject]\"\ntrainers.az <info@trainers.az>\ninfo@trainers.az\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on trainers.az (http://localhost:8888)\nReply-To: [your-email]\n\n\n\n\ntrainers.az \"[your-subject]\"\ntrainers.az <info@trainers.az>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on trainers.az (http://localhost:8888)\nReply-To: info@trainers.az\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-09-08 15:12:21', '2019-09-08 12:12:21', '', 0, 'http://localhost:8888/?post_type=wpcf7_contact_form&#038;p=114', 0, 'wpcf7_contact_form', '', 0),
(115, 1, '2019-09-08 19:05:46', '2019-09-08 16:05:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"articles\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Статьи', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8', 'publish', 'closed', 'closed', '', 'group_5d75248f58921', '', '', '2019-09-08 19:15:57', '2019-09-08 16:15:57', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=115', 0, 'acf-field-group', '', 0),
(116, 1, '2019-09-08 18:56:03', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-08 18:56:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=acf-field-group&p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2019-09-08 18:56:07', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-08 18:56:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?post_type=articles&p=117', 0, 'articles', '', 0),
(118, 1, '2019-09-08 19:05:46', '2019-09-08 16:05:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:51:\"Мини изображение для статьи\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'миниатюра', 'mini-img', 'publish', 'closed', 'closed', '', 'field_5d7526d04798f', '', '', '2019-09-08 19:07:29', '2019-09-08 16:07:29', '', 115, 'http://localhost:8888/?post_type=acf-field&#038;p=118', 0, 'acf-field', '', 0),
(119, 1, '2019-09-08 19:07:29', '2019-09-08 16:07:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:65:\"Изображение для внутренней старицы\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение для статьи', 'inpost-img', 'publish', 'closed', 'closed', '', 'field_5d75270280cba', '', '', '2019-09-08 19:07:29', '2019-09-08 16:07:29', '', 115, 'http://localhost:8888/?post_type=acf-field&p=119', 1, 'acf-field', '', 0),
(120, 1, '2019-08-08 19:08:23', '2019-08-08 16:08:23', 'bdsa lka daslkd aksdj lakdj lakljdsl kj ksajlk jasldk jdasd', 'Muhasibat nedir', '', 'publish', 'closed', 'closed', '', 'muhasibat-nedir', '', '', '2019-09-08 19:27:50', '2019-09-08 16:27:50', '', 0, 'http://localhost:8888/?post_type=articles&#038;p=120', 0, 'articles', '', 0),
(121, 1, '2019-09-08 19:12:57', '2019-09-08 16:12:57', 'a:10:{s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:79:\"Выбор - в каком слайдере будут отображаться\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:4:\"none\";s:4:\"none\";s:11:\"main_slider\";s:11:\"main_slider\";s:15:\"cotegory_slider\";s:15:\"cotegory_slider\";}s:10:\"allow_null\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Вывод в слайдере', 'slider-place', 'publish', 'closed', 'closed', '', 'field_5d7527e787f01', '', '', '2019-09-08 19:12:57', '2019-09-08 16:12:57', '', 115, 'http://localhost:8888/?post_type=acf-field&p=121', 2, 'acf-field', '', 0),
(122, 1, '2019-09-08 19:15:57', '2019-09-08 16:15:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Автор статьи\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Автор', 'autor', 'publish', 'closed', 'closed', '', 'field_5d75290002c44', '', '', '2019-09-08 19:15:57', '2019-09-08 16:15:57', '', 115, 'http://localhost:8888/?post_type=acf-field&p=122', 3, 'acf-field', '', 0),
(123, 1, '2019-09-08 20:26:32', '2019-09-08 17:26:32', '', 'Articles', '', 'publish', 'closed', 'closed', '', 'articles', '', '', '2019-09-08 20:26:32', '2019-09-08 17:26:32', '', 0, 'http://localhost:8888/?page_id=123', 0, 'page', '', 0),
(124, 1, '2019-09-08 20:25:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-08 20:25:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?page_id=124', 0, 'page', '', 0),
(125, 1, '2019-09-08 20:26:32', '2019-09-08 17:26:32', '', 'Articles', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2019-09-08 20:26:32', '2019-09-08 17:26:32', '', 123, 'http://localhost:8888/123-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-09-08 20:40:03', '2019-09-08 17:40:03', '', 'Meqaleler', '', 'publish', 'closed', 'closed', '', 'meqaleler', '', '', '2019-09-08 23:29:20', '2019-09-08 20:29:20', '', 0, 'http://localhost:8888/?p=126', 2, 'nav_menu_item', '', 0),
(127, 1, '2019-09-08 20:40:03', '2019-09-08 17:40:03', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-09-08 23:29:20', '2019-09-08 20:29:20', '', 0, 'http://localhost:8888/?p=127', 3, 'nav_menu_item', '', 0),
(129, 1, '2019-09-08 22:35:50', '2019-09-08 19:35:50', '', 'Meqaleler', '', 'publish', 'closed', 'closed', '', 'meqaleler-2', '', '', '2019-09-08 22:43:04', '2019-09-08 19:43:04', '', 0, 'http://localhost:8888/?p=129', 2, 'nav_menu_item', '', 0),
(130, 1, '2019-09-08 22:35:50', '2019-09-08 19:35:50', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-09-08 22:43:04', '2019-09-08 19:43:04', '', 0, 'http://localhost:8888/?p=130', 3, 'nav_menu_item', '', 0),
(131, 1, '2019-09-08 22:35:50', '2019-09-08 19:35:50', '', 'Kataloq', '', 'publish', 'closed', 'closed', '', 'kataloq', '', '', '2019-09-08 22:43:04', '2019-09-08 19:43:04', '', 0, 'http://localhost:8888/?p=131', 1, 'nav_menu_item', '', 0),
(132, 1, '2019-09-08 22:42:17', '2019-09-08 19:42:17', '', '912309138', '', 'publish', 'closed', 'closed', '', '912309138', '', '', '2019-09-08 22:43:04', '2019-09-08 19:43:04', '', 0, 'http://localhost:8888/?p=132', 4, 'nav_menu_item', '', 0),
(133, 1, '2019-09-08 23:11:05', '2019-09-08 20:11:05', '', 'Meqaleler', '', 'publish', 'closed', 'closed', '', 'meqaleler-3', '', '', '2019-09-08 23:11:05', '2019-09-08 20:11:05', '', 0, 'http://localhost:8888/?p=133', 1, 'nav_menu_item', '', 0),
(134, 1, '2019-09-08 23:11:05', '2019-09-08 20:11:05', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2019-09-08 23:11:05', '2019-09-08 20:11:05', '', 0, 'http://localhost:8888/?p=134', 3, 'nav_menu_item', '', 0),
(135, 1, '2019-09-08 23:11:05', '2019-09-08 20:11:05', '', 'Kateqoriyalar', '', 'publish', 'closed', 'closed', '', 'kateqoriyalar', '', '', '2019-09-08 23:11:05', '2019-09-08 20:11:05', '', 0, 'http://localhost:8888/?p=135', 2, 'nav_menu_item', '', 0),
(136, 1, '2019-09-08 23:13:50', '2019-09-08 20:13:50', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-09-08 23:13:50', '2019-09-08 20:13:50', '', 0, 'http://localhost:8888/?p=136', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_thumbnail_id', '87'),
(2, 3, '_thumbnail_id', '25'),
(3, 5, '_thumbnail_id', '25'),
(4, 6, '_thumbnail_id', '87'),
(5, 7, '_thumbnail_id', '86'),
(6, 8, '_thumbnail_id', '87');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Ingilis dili', 'inglish', 0),
(3, 'Rus dili', 'russian', 0),
(5, 'Bank isi', 'banking', 0),
(6, 'Riyyaziyat', 'math', 0),
(7, 'Idman', 'sport', 0),
(8, 'Universitet haziriqlari', 'universiti', 0),
(9, 'Header top menu', 'header-top-menu', 0),
(10, 'Header bottom menu', 'header-bottom-menu', 0),
(11, 'Mobile menu', 'mobile-menu', 0),
(12, 'Main footer menu', 'main-footer-menu', 0),
(13, 'Menu footer about', 'menu-footer-about', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(9, 5, 0),
(12, 2, 0),
(12, 3, 0),
(15, 1, 0),
(15, 2, 0),
(17, 1, 0),
(17, 2, 0),
(32, 2, 0),
(33, 2, 0),
(39, 6, 0),
(43, 6, 0),
(88, 7, 0),
(91, 9, 0),
(92, 9, 0),
(93, 10, 0),
(126, 10, 0),
(127, 10, 0),
(129, 11, 0),
(130, 11, 0),
(131, 11, 0),
(132, 11, 0),
(133, 12, 0),
(134, 12, 0),
(135, 12, 0),
(136, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'categories', '', 0, 5),
(3, 3, 'categories', '', 0, 1),
(5, 5, 'categories', '', 0, 1),
(6, 6, 'categories', '', 0, 2),
(7, 7, 'categories', '', 0, 1),
(8, 8, 'categories', '', 0, 0),
(9, 9, 'nav_menu', '', 0, 2),
(10, 10, 'nav_menu', '', 0, 3),
(11, 11, 'nav_menu', '', 0, 4),
(12, 12, 'nav_menu', '', 0, 3),
(13, 13, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"0746d205582aa42ffa5731df28167cab38ea2ec3ae6ca8526755febaf5399aba\";a:4:{s:10:\"expiration\";i:1568309271;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1567099671;}s:64:\"b1a1b3f939806eb5d0a4088f5d73b76a8bf0007bdffd1515b5ddae8f412bfd88\";a:4:{s:10:\"expiration\";i:1567967037;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567794237;}s:64:\"b1d160c592e8ba8042674ffe902dfc0657784c8378273fcb1d87499eeb4a924f\";a:4:{s:10:\"expiration\";i:1567967038;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567794238;}s:64:\"935f77d459ebe3633c0dbbb806e0e63963100f424b8906d9d4072f5abe54182c\";a:4:{s:10:\"expiration\";i:1569068767;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567859167;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '89'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=excerpt&editor=tinymce&hidetb=0&editor_plain_text_paste_warning=2'),
(19, 1, 'wp_user-settings-time', '1567958741'),
(20, 1, 'edit_scool_per_page', '20'),
(21, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:\"revisionsdiv\";}'),
(22, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(23, 1, 'closedpostboxes_courses', 'a:0:{}'),
(24, 1, 'metaboxhidden_courses', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-courses\";i:1;s:19:\"add-post-type-scool\";i:2;s:22:\"add-post-type-teachers\";i:3;s:12:\"add-post_tag\";i:4;s:14:\"add-categories\";}'),
(27, 1, 'nav_menu_recently_edited', '10'),
(28, 1, 'manageedit-articlescolumnshidden', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2SjfthRJjTyq11mY2htV5xUwMjAOF0', 'admin', 'info@trainers.az', '', '2019-08-29 17:27:41', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(2083) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', 0x0000000001010000004a60730e9e63424098608967bfda5dc0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464398418106', '-109.81550500000003', '45.950464398418106,-109.81550500000003', 2, '0', 1, 0, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '%', 'px', 1, 0, 1, 2, 0, '', 'a:2:{s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
