-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2021 at 07:17 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `WeAreProgress`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
(1, 'siteurl', 'http://localhost:8888/weareprogress', 'yes'),
(2, 'home', 'http://localhost:8888/weareprogress', 'yes'),
(3, 'blogname', 'We are progress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'demosystango@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=41&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'progress', 'yes'),
(41, 'stylesheet', 'progress', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '41', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1650782196', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:3:{i:7;a:1:{s:7:\"content\";s:165:\"<!-- wp:paragraph -->\n<p><strong>Brainbit Smarter Software</strong><br>12 Madden Street, Auckland, Auckland, 1010, New Zealand 027262 2919</p>\n<!-- /wp:paragraph -->\";}i:8;a:1:{s:7:\"content\";s:121:\"<!-- wp:paragraph -->\n<p><meta charset=\"utf-8\">Tel: 49 89 1215 90-0<br>hello@tellmystory.co.nz</p>\n<!-- /wp:paragraph -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:7:\"block-7\";i:1;s:7:\"block-8\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1635510997;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1635532597;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1635575797;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635575802;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635575804;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635921397;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1635498733;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635230283;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1635498736;s:7:\"checked\";a:4:{s:8:\"progress\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_timeout_browser_b8938fdd8ca369c69c46e77380b534f2', '1635835003', 'no'),
(129, '_site_transient_browser_b8938fdd8ca369c69c46e77380b534f2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.81\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_20f4df878f211a5689e76acb3f9067a8', '1635835004', 'no'),
(131, '_site_transient_php_check_20f4df878f211a5689e76acb3f9067a8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', '', 'yes'),
(153, 'theme_mods_progress', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:12;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(158, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'site_logo', '12', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(180, 'acf_version', '5.8.7', 'yes'),
(192, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(214, '_site_transient_timeout_browser_1e152579148d40741d6352ecc0f05a5f', '1636000573', 'no'),
(215, '_site_transient_browser_1e152579148d40741d6352ecc0f05a5f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"95.0.4638.54\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(249, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1636017899', 'no'),
(250, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(258, '_transient_timeout_acf_plugin_updates', '1635585134', 'no'),
(259, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:63:\"cURL error 60: SSL certificate problem: certificate has expired\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(260, '_site_transient_timeout_theme_roots', '1635500535', 'no'),
(261, '_site_transient_theme_roots', 'a:4:{s:8:\"progress\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(262, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1635498737;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

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
(15, 7, '_customize_draft_post_name', 'create-your-website-with-blocks'),
(16, 7, '_customize_changeset_uuid', '58febcb9-358d-4c11-bb40-80251dc363fe'),
(17, 8, '_customize_draft_post_name', 'about'),
(18, 8, '_customize_changeset_uuid', '58febcb9-358d-4c11-bb40-80251dc363fe'),
(19, 9, '_customize_draft_post_name', 'contact'),
(20, 9, '_customize_changeset_uuid', '58febcb9-358d-4c11-bb40-80251dc363fe'),
(21, 10, '_customize_draft_post_name', 'blog'),
(22, 10, '_customize_changeset_uuid', '58febcb9-358d-4c11-bb40-80251dc363fe'),
(23, 12, '_wp_attached_file', '2021/10/TellMyStory_Logo_Black_MED-1.png'),
(24, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:115;s:6:\"height\";i:102;s:4:\"file\";s:40:\"2021/10/TellMyStory_Logo_Black_MED-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 11, '_edit_lock', '1635231569:1'),
(98, 17, '_wp_trash_meta_status', 'publish'),
(99, 17, '_wp_trash_meta_time', '1635231597'),
(100, 30, '_menu_item_type', 'custom'),
(101, 30, '_menu_item_menu_item_parent', '0'),
(102, 30, '_menu_item_object_id', '30'),
(103, 30, '_menu_item_object', 'custom'),
(104, 30, '_menu_item_target', ''),
(105, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 30, '_menu_item_xfn', ''),
(107, 30, '_menu_item_url', '#'),
(109, 31, '_menu_item_type', 'custom'),
(110, 31, '_menu_item_menu_item_parent', '0'),
(111, 31, '_menu_item_object_id', '31'),
(112, 31, '_menu_item_object', 'custom'),
(113, 31, '_menu_item_target', ''),
(114, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 31, '_menu_item_xfn', ''),
(116, 31, '_menu_item_url', '#'),
(118, 32, '_menu_item_type', 'custom'),
(119, 32, '_menu_item_menu_item_parent', '0'),
(120, 32, '_menu_item_object_id', '32'),
(121, 32, '_menu_item_object', 'custom'),
(122, 32, '_menu_item_target', ''),
(123, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 32, '_menu_item_xfn', ''),
(125, 32, '_menu_item_url', '#'),
(127, 33, '_menu_item_type', 'custom'),
(128, 33, '_menu_item_menu_item_parent', '0'),
(129, 33, '_menu_item_object_id', '33'),
(130, 33, '_menu_item_object', 'custom'),
(131, 33, '_menu_item_target', ''),
(132, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 33, '_menu_item_xfn', ''),
(134, 33, '_menu_item_url', '#'),
(136, 34, '_menu_item_type', 'custom'),
(137, 34, '_menu_item_menu_item_parent', '0'),
(138, 34, '_menu_item_object_id', '34'),
(139, 34, '_menu_item_object', 'custom'),
(140, 34, '_menu_item_target', ''),
(141, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 34, '_menu_item_xfn', ''),
(143, 34, '_menu_item_url', '#'),
(149, 37, '_wp_attached_file', '2021/10/image-1.png'),
(150, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1100;s:4:\"file\";s:19:\"2021/10/image-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-1-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image-1-1024x587.png\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-1-768x440.png\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"image-1-1536x880.png\";s:5:\"width\";i:1536;s:6:\"height\";i:880;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"image-1-1568x898.png\";s:5:\"width\";i:1568;s:6:\"height\";i:898;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 38, '_edit_lock', '1635234087:1'),
(176, 40, '_edit_lock', '1635234156:1'),
(177, 41, '_edit_lock', '1635409393:1'),
(178, 41, '_wp_page_template', 'template/front-page.php'),
(179, 41, '_thumbnail_id', '37'),
(182, 44, '_edit_last', '1'),
(183, 44, '_edit_lock', '1635407824:1'),
(184, 41, '_edit_last', '1'),
(185, 41, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(186, 41, '_banner_heading', 'field_6178de5b629a1'),
(187, 47, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(188, 47, '_banner_heading', 'field_6178de5b629a1'),
(189, 51, '_wp_attached_file', '2021/10/Group-1765.png'),
(190, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:687;s:6:\"height\";i:534;s:4:\"file\";s:22:\"2021/10/Group-1765.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Group-1765-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Group-1765-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 41, 'img_gallery', '51'),
(192, 41, '_img_gallery', 'field_6178f55e1b0e8'),
(193, 41, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(194, 41, '_description_para', 'field_6178f69374803'),
(195, 52, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(196, 52, '_banner_heading', 'field_6178de5b629a1'),
(197, 52, 'img_gallery', '51'),
(198, 52, '_img_gallery', 'field_6178f55e1b0e8'),
(199, 52, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(200, 52, '_description_para', 'field_6178f69374803'),
(201, 41, 'work_btn', 'a:3:{s:5:\"title\";s:12:\"See our work\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(202, 41, '_work_btn', 'field_6178f7baa2aae'),
(203, 41, 'work-btn-outline', 'a:3:{s:5:\"title\";s:18:\"View our portfolio\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(204, 41, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(205, 55, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(206, 55, '_banner_heading', 'field_6178de5b629a1'),
(207, 55, 'img_gallery', '51'),
(208, 55, '_img_gallery', 'field_6178f55e1b0e8'),
(209, 55, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(210, 55, '_description_para', 'field_6178f69374803'),
(211, 55, 'work_btn', 'See our work'),
(212, 55, '_work_btn', 'field_6178f7baa2aae'),
(213, 55, 'work-btn-outline', 'View our portfolio'),
(214, 55, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(215, 41, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(216, 41, '_video_production_heading', 'field_617904b0b42f1'),
(217, 41, 'production_wrapper', '3'),
(218, 41, '_production_wrapper', 'field_61790515b42f2'),
(219, 61, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(220, 61, '_banner_heading', 'field_6178de5b629a1'),
(221, 61, 'img_gallery', '51'),
(222, 61, '_img_gallery', 'field_6178f55e1b0e8'),
(223, 61, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(224, 61, '_description_para', 'field_6178f69374803'),
(225, 61, 'work_btn', 'See our work'),
(226, 61, '_work_btn', 'field_6178f7baa2aae'),
(227, 61, 'work-btn-outline', 'View our portfolio'),
(228, 61, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(229, 61, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(230, 61, '_video_production_heading', 'field_617904b0b42f1'),
(231, 61, 'production_wrapper', ''),
(232, 61, '_production_wrapper', 'field_61790515b42f2'),
(233, 41, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(234, 41, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(235, 41, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(236, 41, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(237, 41, 'production_wrapper_0_production_image', '77'),
(238, 41, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(239, 63, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(240, 63, '_banner_heading', 'field_6178de5b629a1'),
(241, 63, 'img_gallery', '51'),
(242, 63, '_img_gallery', 'field_6178f55e1b0e8'),
(243, 63, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(244, 63, '_description_para', 'field_6178f69374803'),
(245, 63, 'work_btn', 'See our work'),
(246, 63, '_work_btn', 'field_6178f7baa2aae'),
(247, 63, 'work-btn-outline', 'View our portfolio'),
(248, 63, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(249, 63, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(250, 63, '_video_production_heading', 'field_617904b0b42f1'),
(251, 63, 'production_wrapper', '1'),
(252, 63, '_production_wrapper', 'field_61790515b42f2'),
(253, 63, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(254, 63, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(255, 63, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(256, 63, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(257, 63, 'production_wrapper_0_production_image', ''),
(258, 63, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(259, 64, '_wp_attached_file', '2021/10/Mask-Group-1.png'),
(260, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:518;s:4:\"file\";s:24:\"2021/10/Mask-Group-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Mask-Group-1-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Mask-Group-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Mask-Group-1-768x414.png\";s:5:\"width\";i:768;s:6:\"height\";i:414;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 65, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(262, 65, '_banner_heading', 'field_6178de5b629a1'),
(263, 65, 'img_gallery', '51'),
(264, 65, '_img_gallery', 'field_6178f55e1b0e8'),
(265, 65, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(266, 65, '_description_para', 'field_6178f69374803'),
(267, 65, 'work_btn', 'See our work'),
(268, 65, '_work_btn', 'field_6178f7baa2aae'),
(269, 65, 'work-btn-outline', 'View our portfolio'),
(270, 65, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(271, 65, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(272, 65, '_video_production_heading', 'field_617904b0b42f1'),
(273, 65, 'production_wrapper', '1'),
(274, 65, '_production_wrapper', 'field_61790515b42f2'),
(275, 65, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(276, 65, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(277, 65, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(278, 65, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(279, 65, 'production_wrapper_0_production_image', '64'),
(280, 65, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(281, 66, '_wp_attached_file', '2021/10/Mask-Group-2.png'),
(282, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:809;s:6:\"height\";i:518;s:4:\"file\";s:24:\"2021/10/Mask-Group-2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Mask-Group-2-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Mask-Group-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Mask-Group-2-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 41, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(284, 41, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(285, 41, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(286, 41, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(287, 41, 'production_wrapper_1_production_image', '66'),
(288, 41, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(289, 67, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(290, 67, '_banner_heading', 'field_6178de5b629a1'),
(291, 67, 'img_gallery', '51'),
(292, 67, '_img_gallery', 'field_6178f55e1b0e8'),
(293, 67, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(294, 67, '_description_para', 'field_6178f69374803'),
(295, 67, 'work_btn', 'See our work'),
(296, 67, '_work_btn', 'field_6178f7baa2aae'),
(297, 67, 'work-btn-outline', 'View our portfolio'),
(298, 67, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(299, 67, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(300, 67, '_video_production_heading', 'field_617904b0b42f1'),
(301, 67, 'production_wrapper', '2'),
(302, 67, '_production_wrapper', 'field_61790515b42f2'),
(303, 67, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(304, 67, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(305, 67, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(306, 67, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(307, 67, 'production_wrapper_0_production_image', '64'),
(308, 67, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(309, 67, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(310, 67, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(311, 67, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(312, 67, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(313, 67, 'production_wrapper_1_production_image', '66'),
(314, 67, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(315, 68, '_wp_attached_file', '2021/10/Mask-Group-3.png'),
(316, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:809;s:6:\"height\";i:518;s:4:\"file\";s:24:\"2021/10/Mask-Group-3.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Mask-Group-3-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Mask-Group-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Mask-Group-3-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 41, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(318, 41, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(319, 41, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(320, 41, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(321, 41, 'production_wrapper_2_production_image', '68'),
(322, 41, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(323, 69, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(324, 69, '_banner_heading', 'field_6178de5b629a1'),
(325, 69, 'img_gallery', '51'),
(326, 69, '_img_gallery', 'field_6178f55e1b0e8'),
(327, 69, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(328, 69, '_description_para', 'field_6178f69374803'),
(329, 69, 'work_btn', 'See our work'),
(330, 69, '_work_btn', 'field_6178f7baa2aae'),
(331, 69, 'work-btn-outline', 'View our portfolio'),
(332, 69, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(333, 69, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(334, 69, '_video_production_heading', 'field_617904b0b42f1'),
(335, 69, 'production_wrapper', '3'),
(336, 69, '_production_wrapper', 'field_61790515b42f2'),
(337, 69, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(338, 69, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(339, 69, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(340, 69, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(341, 69, 'production_wrapper_0_production_image', '64'),
(342, 69, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(343, 69, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(344, 69, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(345, 69, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(346, 69, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(347, 69, 'production_wrapper_1_production_image', '66'),
(348, 69, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(349, 69, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(350, 69, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(351, 69, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(352, 69, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(353, 69, 'production_wrapper_2_production_image', '68'),
(354, 69, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(355, 75, '_wp_attached_file', '2021/10/Mask-Group-4.png'),
(356, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1618;s:6:\"height\";i:665;s:4:\"file\";s:24:\"2021/10/Mask-Group-4.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Mask-Group-4-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Mask-Group-4-1024x421.png\";s:5:\"width\";i:1024;s:6:\"height\";i:421;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Mask-Group-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Mask-Group-4-768x316.png\";s:5:\"width\";i:768;s:6:\"height\";i:316;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Mask-Group-4-1536x631.png\";s:5:\"width\";i:1536;s:6:\"height\";i:631;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"Mask-Group-4-1568x644.png\";s:5:\"width\";i:1568;s:6:\"height\";i:644;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(357, 41, 'footer_banner', '75'),
(358, 41, '_footer_banner', 'field_617910340f7a2'),
(359, 41, 'footer_heading', 'Stand Out In Crowded Marketplace With Top-Tier Video Production'),
(360, 41, '_footer_heading', 'field_617910550f7a3'),
(361, 41, 'footer_content', 'Work with an elite team of directors, production designers, cinematographers and colourists to take your brand story to the next level and stand apart from your competitors.  Your company, brand or product can be the next cultural hit, with a hit commercial by us. And, that is all just one hour-long consultation away (potentially).'),
(362, 41, '_footer_content', 'field_617910660f7a4'),
(363, 41, 'footer_note', 'Try out our corporate video production services today!'),
(364, 41, '_footer_note', 'field_617910790f7a5'),
(365, 76, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(366, 76, '_banner_heading', 'field_6178de5b629a1'),
(367, 76, 'img_gallery', '51'),
(368, 76, '_img_gallery', 'field_6178f55e1b0e8'),
(369, 76, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(370, 76, '_description_para', 'field_6178f69374803'),
(371, 76, 'work_btn', 'See our work'),
(372, 76, '_work_btn', 'field_6178f7baa2aae'),
(373, 76, 'work-btn-outline', 'View our portfolio'),
(374, 76, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(375, 76, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(376, 76, '_video_production_heading', 'field_617904b0b42f1'),
(377, 76, 'production_wrapper', '3'),
(378, 76, '_production_wrapper', 'field_61790515b42f2'),
(379, 76, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(380, 76, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(381, 76, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(382, 76, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(383, 76, 'production_wrapper_0_production_image', '64'),
(384, 76, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(385, 76, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(386, 76, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(387, 76, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(388, 76, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(389, 76, 'production_wrapper_1_production_image', '66'),
(390, 76, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(391, 76, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(392, 76, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(393, 76, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(394, 76, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(395, 76, 'production_wrapper_2_production_image', '68'),
(396, 76, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(397, 76, 'footer_banner', '75'),
(398, 76, '_footer_banner', 'field_617910340f7a2'),
(399, 76, 'footer_heading', 'Stand Out In Crowded Marketplace With Top-Tier Video Production'),
(400, 76, '_footer_heading', 'field_617910550f7a3'),
(401, 76, 'footer_content', 'Work with an elite team of directors, production designers, cinematographers and colourists to take your brand story to the next level and stand apart from your competitors.  Your company, brand or product can be the next cultural hit, with a hit commercial by us. And, that is all just one hour-long consultation away (potentially).'),
(402, 76, '_footer_content', 'field_617910660f7a4'),
(403, 76, 'footer_note', 'Try out our corporate video production services today!'),
(404, 76, '_footer_note', 'field_617910790f7a5'),
(405, 77, '_wp_attached_file', '2021/10/Mask-Group-5.png'),
(406, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:518;s:4:\"file\";s:24:\"2021/10/Mask-Group-5.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Mask-Group-5-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Mask-Group-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Mask-Group-5-768x414.png\";s:5:\"width\";i:768;s:6:\"height\";i:414;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 78, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(408, 78, '_banner_heading', 'field_6178de5b629a1'),
(409, 78, 'img_gallery', '51'),
(410, 78, '_img_gallery', 'field_6178f55e1b0e8'),
(411, 78, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(412, 78, '_description_para', 'field_6178f69374803'),
(413, 78, 'work_btn', 'See our work'),
(414, 78, '_work_btn', 'field_6178f7baa2aae'),
(415, 78, 'work-btn-outline', 'View our portfolio'),
(416, 78, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(417, 78, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(418, 78, '_video_production_heading', 'field_617904b0b42f1'),
(419, 78, 'production_wrapper', '3'),
(420, 78, '_production_wrapper', 'field_61790515b42f2'),
(421, 78, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(422, 78, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(423, 78, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(424, 78, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(425, 78, 'production_wrapper_0_production_image', '77'),
(426, 78, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(427, 78, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(428, 78, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(429, 78, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(430, 78, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(431, 78, 'production_wrapper_1_production_image', '66'),
(432, 78, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(433, 78, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(434, 78, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(435, 78, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(436, 78, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(437, 78, 'production_wrapper_2_production_image', '68'),
(438, 78, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(439, 78, 'footer_banner', '75'),
(440, 78, '_footer_banner', 'field_617910340f7a2'),
(441, 78, 'footer_heading', 'Stand Out In Crowded Marketplace With Top-Tier Video Production'),
(442, 78, '_footer_heading', 'field_617910550f7a3'),
(443, 78, 'footer_content', 'Work with an elite team of directors, production designers, cinematographers and colourists to take your brand story to the next level and stand apart from your competitors.  Your company, brand or product can be the next cultural hit, with a hit commercial by us. And, that is all just one hour-long consultation away (potentially).'),
(444, 78, '_footer_content', 'field_617910660f7a4'),
(445, 78, 'footer_note', 'Try out our corporate video production services today!'),
(446, 78, '_footer_note', 'field_617910790f7a5'),
(447, 79, '_menu_item_type', 'custom'),
(448, 79, '_menu_item_menu_item_parent', '0'),
(449, 79, '_menu_item_object_id', '79'),
(450, 79, '_menu_item_object', 'custom'),
(451, 79, '_menu_item_target', ''),
(452, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(453, 79, '_menu_item_xfn', ''),
(454, 79, '_menu_item_url', '#'),
(456, 80, '_menu_item_type', 'custom'),
(457, 80, '_menu_item_menu_item_parent', '0'),
(458, 80, '_menu_item_object_id', '80'),
(459, 80, '_menu_item_object', 'custom'),
(460, 80, '_menu_item_target', ''),
(461, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(462, 80, '_menu_item_xfn', ''),
(463, 80, '_menu_item_url', '#'),
(465, 81, '_menu_item_type', 'custom'),
(466, 81, '_menu_item_menu_item_parent', '0'),
(467, 81, '_menu_item_object_id', '81'),
(468, 81, '_menu_item_object', 'custom'),
(469, 81, '_menu_item_target', ''),
(470, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(471, 81, '_menu_item_xfn', ''),
(472, 81, '_menu_item_url', '#'),
(473, 82, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(474, 82, '_banner_heading', 'field_6178de5b629a1'),
(475, 82, 'img_gallery', '51'),
(476, 82, '_img_gallery', 'field_6178f55e1b0e8'),
(477, 82, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(478, 82, '_description_para', 'field_6178f69374803'),
(479, 82, 'work_btn', 'a:3:{s:5:\"title\";s:12:\"See our work\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(480, 82, '_work_btn', 'field_6178f7baa2aae'),
(481, 82, 'work-btn-outline', 'View our portfolio'),
(482, 82, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(483, 82, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(484, 82, '_video_production_heading', 'field_617904b0b42f1'),
(485, 82, 'production_wrapper', '3'),
(486, 82, '_production_wrapper', 'field_61790515b42f2'),
(487, 82, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(488, 82, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(489, 82, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(490, 82, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(491, 82, 'production_wrapper_0_production_image', '77'),
(492, 82, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(493, 82, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(494, 82, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(495, 82, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(496, 82, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(497, 82, 'production_wrapper_1_production_image', '66'),
(498, 82, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(499, 82, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(500, 82, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(501, 82, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(502, 82, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(503, 82, 'production_wrapper_2_production_image', '68'),
(504, 82, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(505, 82, 'footer_banner', '75'),
(506, 82, '_footer_banner', 'field_617910340f7a2'),
(507, 82, 'footer_heading', 'Stand Out In Crowded Marketplace With Top-Tier Video Production'),
(508, 82, '_footer_heading', 'field_617910550f7a3'),
(509, 82, 'footer_content', 'Work with an elite team of directors, production designers, cinematographers and colourists to take your brand story to the next level and stand apart from your competitors.  Your company, brand or product can be the next cultural hit, with a hit commercial by us. And, that is all just one hour-long consultation away (potentially).'),
(510, 82, '_footer_content', 'field_617910660f7a4'),
(511, 82, 'footer_note', 'Try out our corporate video production services today!'),
(512, 82, '_footer_note', 'field_617910790f7a5'),
(513, 83, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(514, 83, '_banner_heading', 'field_6178de5b629a1'),
(515, 83, 'img_gallery', '51'),
(516, 83, '_img_gallery', 'field_6178f55e1b0e8'),
(517, 83, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(518, 83, '_description_para', 'field_6178f69374803'),
(519, 83, 'work_btn', 'a:3:{s:5:\"title\";s:12:\"See our work\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(520, 83, '_work_btn', 'field_6178f7baa2aae'),
(521, 83, 'work-btn-outline', 'View our portfolio'),
(522, 83, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(523, 83, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(524, 83, '_video_production_heading', 'field_617904b0b42f1'),
(525, 83, 'production_wrapper', '3'),
(526, 83, '_production_wrapper', 'field_61790515b42f2'),
(527, 83, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(528, 83, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(529, 83, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(530, 83, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(531, 83, 'production_wrapper_0_production_image', '77'),
(532, 83, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(533, 83, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(534, 83, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(535, 83, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(536, 83, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(537, 83, 'production_wrapper_1_production_image', '66'),
(538, 83, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(539, 83, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(540, 83, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(541, 83, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(542, 83, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(543, 83, 'production_wrapper_2_production_image', '68'),
(544, 83, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(545, 83, 'footer_banner', '75'),
(546, 83, '_footer_banner', 'field_617910340f7a2'),
(547, 83, 'footer_heading', 'Stand Out In Crowded Marketplace With Top-Tier Video Production'),
(548, 83, '_footer_heading', 'field_617910550f7a3'),
(549, 83, 'footer_content', 'Work with an elite team of directors, production designers, cinematographers and colourists to take your brand story to the next level and stand apart from your competitors.  Your company, brand or product can be the next cultural hit, with a hit commercial by us. And, that is all just one hour-long consultation away (potentially).'),
(550, 83, '_footer_content', 'field_617910660f7a4'),
(551, 83, 'footer_note', 'Try out our corporate video production services today!'),
(552, 83, '_footer_note', 'field_617910790f7a5'),
(553, 84, 'banner_heading', 'Everyone has a story to tell, we at Tell My Story, help you convey it well.'),
(554, 84, '_banner_heading', 'field_6178de5b629a1'),
(555, 84, 'img_gallery', '51'),
(556, 84, '_img_gallery', 'field_6178f55e1b0e8'),
(557, 84, 'description_para', 'Visual storytelling is one of the most appealing and engaging forms of present-day communication. We, at our video production house in Auckland, combine creative concepts with a strategic approach to strengthen brand messages and increase the memory recall of the viewers. Whether you want to promote your business, shoot a TV ad or advertise a new product/ service, we can cater for all your corporate video production needs.'),
(558, 84, '_description_para', 'field_6178f69374803'),
(559, 84, 'work_btn', 'a:3:{s:5:\"title\";s:12:\"See our work\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(560, 84, '_work_btn', 'field_6178f7baa2aae'),
(561, 84, 'work-btn-outline', 'a:3:{s:5:\"title\";s:18:\"View our portfolio\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(562, 84, '_work-btn-outline', 'field_6178f7d0a2aaf'),
(563, 84, 'video_production_heading', 'What Makes Us Auckland’s Top-Ranked Video Production Company?'),
(564, 84, '_video_production_heading', 'field_617904b0b42f1'),
(565, 84, 'production_wrapper', '3'),
(566, 84, '_production_wrapper', 'field_61790515b42f2'),
(567, 84, 'production_wrapper_0_production_heading', 'Cinematic, and Sleek Commercials That Speak Your Brand'),
(568, 84, '_production_wrapper_0_production_heading', 'field_6179053cbce10'),
(569, 84, 'production_wrapper_0_production_content', 'We create a kick-ass short film that is filmed using advanced equipment and state-of-the-art technology. We know what your potential audience will prefer and that’s why we can carry your message across New Zealand and around the world in a quirky way.'),
(570, 84, '_production_wrapper_0_production_content', 'field_6179054abce11'),
(571, 84, 'production_wrapper_0_production_image', '77'),
(572, 84, '_production_wrapper_0_production_image', 'field_6179074a122c3'),
(573, 84, 'production_wrapper_1_production_heading', 'Product Videos That Boosts Sales'),
(574, 84, '_production_wrapper_1_production_heading', 'field_6179053cbce10'),
(575, 84, 'production_wrapper_1_production_content', 'We showcase your amazing product with cinematic eye candy and a visually driven sizzle spot. Rather than focusing on who or why our product video helps the audience understand how the product is the best fit for their personal and professional lives.'),
(576, 84, '_production_wrapper_1_production_content', 'field_6179054abce11'),
(577, 84, 'production_wrapper_1_production_image', '66'),
(578, 84, '_production_wrapper_1_production_image', 'field_6179074a122c3'),
(579, 84, 'production_wrapper_2_production_heading', 'Content That Tells Stories & Delight Customers'),
(580, 84, '_production_wrapper_2_production_heading', 'field_6179053cbce10'),
(581, 84, 'production_wrapper_2_production_content', 'Our video marketing services cover everything from explainer videos that entice to food films that make the audience crave and cinematic event sizzles that propel sign-ups. We are equipped to handle every type of branded and sponsored content.'),
(582, 84, '_production_wrapper_2_production_content', 'field_6179054abce11'),
(583, 84, 'production_wrapper_2_production_image', '68'),
(584, 84, '_production_wrapper_2_production_image', 'field_6179074a122c3'),
(585, 84, 'footer_banner', '75'),
(586, 84, '_footer_banner', 'field_617910340f7a2'),
(587, 84, 'footer_heading', 'Stand Out In Crowded Marketplace With Top-Tier Video Production'),
(588, 84, '_footer_heading', 'field_617910550f7a3'),
(589, 84, 'footer_content', 'Work with an elite team of directors, production designers, cinematographers and colourists to take your brand story to the next level and stand apart from your competitors.  Your company, brand or product can be the next cultural hit, with a hit commercial by us. And, that is all just one hour-long consultation away (potentially).'),
(590, 84, '_footer_content', 'field_617910660f7a4'),
(591, 84, 'footer_note', 'Try out our corporate video production services today!'),
(592, 84, '_footer_note', 'field_617910790f7a5'),
(593, 85, '_edit_lock', '1635408574:1'),
(594, 86, '_wp_attached_file', '2021/10/twitter-1.png'),
(595, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:20;s:6:\"height\";i:20;s:4:\"file\";s:21:\"2021/10/twitter-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(596, 87, '_wp_attached_file', '2021/10/tumblr-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(597, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:19;s:6:\"height\";i:20;s:4:\"file\";s:20:\"2021/10/tumblr-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(598, 88, '_wp_attached_file', '2021/10/snapchat-1.png'),
(599, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:21;s:6:\"height\";i:20;s:4:\"file\";s:22:\"2021/10/snapchat-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(600, 89, '_wp_attached_file', '2021/10/instagram-sketched-1.png'),
(601, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:19;s:6:\"height\";i:20;s:4:\"file\";s:32:\"2021/10/instagram-sketched-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(602, 90, '_wp_attached_file', '2021/10/facebook-1.png'),
(603, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:20;s:6:\"height\";i:20;s:4:\"file\";s:22:\"2021/10/facebook-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

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
(4, 1, '2021-10-26 06:36:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-26 06:36:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?p=4', 0, 'post', '', 0),
(7, 1, '2021-10-26 06:59:29', '0000-00-00 00:00:00', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost:8888/weareprogress/wp-content/themes/progress/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost:8888/weareprogress/wp-content/themes/progress/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost:8888/weareprogress/wp-content/themes/progress/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-26 06:58:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-10-26 06:59:29', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-26 06:58:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-10-26 06:59:29', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-26 06:58:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-10-26 06:59:29', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-26 06:58:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-10-26 06:59:29', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            7,\n            8,\n            9,\n            10\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:8888/weareprogress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"progress::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Secondary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"progress::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:58:02\"\n    },\n    \"progress::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:29\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '58febcb9-358d-4c11-bb40-80251dc363fe', '', '', '2021-10-26 06:59:29', '2021-10-26 06:59:29', '', 0, 'http://localhost:8888/weareprogress/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2021-10-26 06:58:24', '2021-10-26 06:58:24', '', 'TellMyStory_Logo_Black_MED 1', '', 'inherit', 'open', 'closed', '', 'tellmystory_logo_black_med-1', '', '', '2021-10-26 06:58:24', '2021-10-26 06:58:24', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/TellMyStory_Logo_Black_MED-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-10-26 06:59:57', '2021-10-26 06:59:57', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            13,\n            14,\n            15,\n            16\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:46\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:8888/weareprogress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"progress::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:46\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Secondary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    },\n    \"progress::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:46\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:46\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:46\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:46\"\n    },\n    \"progress::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-10-26 06:59:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd2b224d-1991-40fa-b462-51fa994cf7c0', '', '', '2021-10-26 06:59:57', '2021-10-26 06:59:57', '', 0, 'http://localhost:8888/weareprogress/?p=17', 0, 'customize_changeset', '', 0),
(30, 1, '2021-10-26 07:42:45', '2021-10-26 07:02:31', '', 'what we do', '', 'publish', 'closed', 'closed', '', 'what-we-do', '', '', '2021-10-26 07:42:45', '2021-10-26 07:42:45', '', 0, 'http://localhost:8888/weareprogress/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-10-26 07:42:45', '2021-10-26 07:02:31', '', 'people', '', 'publish', 'closed', 'closed', '', 'people', '', '', '2021-10-26 07:42:45', '2021-10-26 07:42:45', '', 0, 'http://localhost:8888/weareprogress/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2021-10-26 07:42:45', '2021-10-26 07:02:31', '', 'our show reel', '', 'publish', 'closed', 'closed', '', 'our-show-reel', '', '', '2021-10-26 07:42:45', '2021-10-26 07:42:45', '', 0, 'http://localhost:8888/weareprogress/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2021-10-26 07:42:45', '2021-10-26 07:02:31', '', 'behind the scene', '', 'publish', 'closed', 'closed', '', 'behind-the-scene', '', '', '2021-10-26 07:42:45', '2021-10-26 07:42:45', '', 0, 'http://localhost:8888/weareprogress/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2021-10-26 07:42:45', '2021-10-26 07:02:31', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-10-26 07:42:45', '2021-10-26 07:42:45', '', 0, 'http://localhost:8888/weareprogress/?p=34', 5, 'nav_menu_item', '', 0),
(37, 1, '2021-10-26 07:32:20', '2021-10-26 07:32:20', '', 'image 1', '', 'inherit', 'open', 'closed', '', 'image-1', '', '', '2021-10-26 07:32:20', '2021-10-26 07:32:20', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/image-1.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2021-10-26 07:43:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-10-26 07:43:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?page_id=38', 0, 'page', '', 0),
(40, 1, '2021-10-26 07:44:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-26 07:44:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?p=40', 0, 'post', '', 0),
(41, 1, '2021-10-26 07:45:16', '2021-10-26 07:45:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-10-28 06:26:20', '2021-10-28 06:26:20', '', 0, 'http://localhost:8888/weareprogress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2021-10-26 07:45:16', '2021-10-26 07:45:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-26 07:45:16', '2021-10-26 07:45:16', '', 41, 'http://localhost:8888/weareprogress/?p=42', 0, 'revision', '', 0),
(44, 1, '2021-10-27 05:06:12', '2021-10-27 05:06:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"41\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_6178de2ea68c0', '', '', '2021-10-28 06:24:49', '2021-10-28 06:24:49', '', 0, 'http://localhost:8888/weareprogress/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2021-10-27 05:06:58', '2021-10-27 05:06:58', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_6178de47629a0', '', '', '2021-10-27 05:06:58', '2021-10-27 05:06:58', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2021-10-27 05:06:58', '2021-10-27 05:06:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Heading', 'banner_heading', 'publish', 'closed', 'closed', '', 'field_6178de5b629a1', '', '', '2021-10-27 05:06:58', '2021-10-27 05:06:58', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2021-10-27 05:08:54', '2021-10-27 05:08:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 05:08:54', '2021-10-27 05:08:54', '', 41, 'http://localhost:8888/weareprogress/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-10-27 06:44:56', '2021-10-27 06:44:56', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_6178f46d1b0e7', '', '', '2021-10-27 06:44:56', '2021-10-27 06:44:56', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=48', 2, 'acf-field', '', 0),
(49, 1, '2021-10-27 06:44:56', '2021-10-27 06:44:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Images', 'img_gallery', 'publish', 'closed', 'closed', '', 'field_6178f55e1b0e8', '', '', '2021-10-27 06:50:08', '2021-10-27 06:50:08', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=49', 3, 'acf-field', '', 0),
(50, 1, '2021-10-27 06:50:08', '2021-10-27 06:50:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description Para', 'description_para', 'publish', 'closed', 'closed', '', 'field_6178f69374803', '', '', '2021-10-27 06:50:08', '2021-10-27 06:50:08', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=50', 4, 'acf-field', '', 0),
(51, 1, '2021-10-27 06:51:04', '2021-10-27 06:51:04', '', 'Group 1765', '', 'inherit', 'open', 'closed', '', 'group-1765', '', '', '2021-10-27 06:51:04', '2021-10-27 06:51:04', '', 41, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/Group-1765.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-10-27 06:51:25', '2021-10-27 06:51:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 06:51:25', '2021-10-27 06:51:25', '', 41, 'http://localhost:8888/weareprogress/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-10-27 06:55:39', '2021-10-27 06:55:39', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'work button', 'work_btn', 'publish', 'closed', 'closed', '', 'field_6178f7baa2aae', '', '', '2021-10-28 05:58:12', '2021-10-28 05:58:12', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=53', 5, 'acf-field', '', 0),
(54, 1, '2021-10-27 06:55:39', '2021-10-27 06:55:39', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'work button outline', 'work-btn-outline', 'publish', 'closed', 'closed', '', 'field_6178f7d0a2aaf', '', '', '2021-10-28 06:24:49', '2021-10-28 06:24:49', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=54', 6, 'acf-field', '', 0),
(55, 1, '2021-10-27 06:56:23', '2021-10-27 06:56:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 06:56:23', '2021-10-27 06:56:23', '', 41, 'http://localhost:8888/weareprogress/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-10-27 07:52:11', '2021-10-27 07:52:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Video Production', 'video_production', 'publish', 'closed', 'closed', '', 'field_6179048db42f0', '', '', '2021-10-27 08:01:29', '2021-10-27 08:01:29', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=56', 7, 'acf-field', '', 0),
(57, 1, '2021-10-27 07:52:11', '2021-10-27 07:52:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Video Production heading', 'video_production_heading', 'publish', 'closed', 'closed', '', 'field_617904b0b42f1', '', '', '2021-10-27 07:52:11', '2021-10-27 07:52:11', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=57', 8, 'acf-field', '', 0),
(58, 1, '2021-10-27 07:52:11', '2021-10-27 07:52:11', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Production Wrapper', 'production_wrapper', 'publish', 'closed', 'closed', '', 'field_61790515b42f2', '', '', '2021-10-27 08:01:29', '2021-10-27 08:01:29', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=58', 9, 'acf-field', '', 0),
(59, 1, '2021-10-27 07:53:05', '2021-10-27 07:53:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Production Heading', 'production_heading', 'publish', 'closed', 'closed', '', 'field_6179053cbce10', '', '', '2021-10-27 07:53:05', '2021-10-27 07:53:05', '', 58, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2021-10-27 07:53:05', '2021-10-27 07:53:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Production Content', 'production_content', 'publish', 'closed', 'closed', '', 'field_6179054abce11', '', '', '2021-10-27 07:53:05', '2021-10-27 07:53:05', '', 58, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2021-10-27 07:54:59', '2021-10-27 07:54:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 07:54:59', '2021-10-27 07:54:59', '', 41, 'http://localhost:8888/weareprogress/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-10-27 08:01:29', '2021-10-27 08:01:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Production Image', 'production_image', 'publish', 'closed', 'closed', '', 'field_6179074a122c3', '', '', '2021-10-27 08:02:33', '2021-10-27 08:02:33', '', 58, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=62', 2, 'acf-field', '', 0),
(63, 1, '2021-10-27 08:02:18', '2021-10-27 08:02:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 08:02:18', '2021-10-27 08:02:18', '', 41, 'http://localhost:8888/weareprogress/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-10-27 08:02:50', '2021-10-27 08:02:50', '', 'Mask Group (1)', '', 'inherit', 'open', 'closed', '', 'mask-group-1', '', '', '2021-10-27 08:02:50', '2021-10-27 08:02:50', '', 41, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/Mask-Group-1.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2021-10-27 08:02:57', '2021-10-27 08:02:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 08:02:57', '2021-10-27 08:02:57', '', 41, 'http://localhost:8888/weareprogress/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-10-27 08:03:33', '2021-10-27 08:03:33', '', 'Mask Group (2)', '', 'inherit', 'open', 'closed', '', 'mask-group-2', '', '', '2021-10-27 08:03:33', '2021-10-27 08:03:33', '', 41, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/Mask-Group-2.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2021-10-27 08:03:38', '2021-10-27 08:03:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 08:03:38', '2021-10-27 08:03:38', '', 41, 'http://localhost:8888/weareprogress/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-10-27 08:04:17', '2021-10-27 08:04:17', '', 'Mask Group (3)', '', 'inherit', 'open', 'closed', '', 'mask-group-3', '', '', '2021-10-27 08:04:17', '2021-10-27 08:04:17', '', 41, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/Mask-Group-3.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2021-10-27 08:04:22', '2021-10-27 08:04:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 08:04:22', '2021-10-27 08:04:22', '', 41, 'http://localhost:8888/weareprogress/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-10-27 08:39:01', '2021-10-27 08:39:01', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer Banner', '', 'publish', 'closed', 'closed', '', 'field_6179101e0ca90', '', '', '2021-10-27 08:40:37', '2021-10-27 08:40:37', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&#038;p=70', 10, 'acf-field', '', 0),
(71, 1, '2021-10-27 08:40:37', '2021-10-27 08:40:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer Banner', 'footer_banner', 'publish', 'closed', 'closed', '', 'field_617910340f7a2', '', '', '2021-10-27 08:40:37', '2021-10-27 08:40:37', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=71', 11, 'acf-field', '', 0),
(72, 1, '2021-10-27 08:40:37', '2021-10-27 08:40:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Heading', 'footer_heading', 'publish', 'closed', 'closed', '', 'field_617910550f7a3', '', '', '2021-10-27 08:40:37', '2021-10-27 08:40:37', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=72', 12, 'acf-field', '', 0),
(73, 1, '2021-10-27 08:40:37', '2021-10-27 08:40:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Content', 'footer_content', 'publish', 'closed', 'closed', '', 'field_617910660f7a4', '', '', '2021-10-27 08:40:37', '2021-10-27 08:40:37', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=73', 13, 'acf-field', '', 0),
(74, 1, '2021-10-27 08:40:37', '2021-10-27 08:40:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Note', 'footer_note', 'publish', 'closed', 'closed', '', 'field_617910790f7a5', '', '', '2021-10-27 08:40:37', '2021-10-27 08:40:37', '', 44, 'http://localhost:8888/weareprogress/?post_type=acf-field&p=74', 14, 'acf-field', '', 0),
(75, 1, '2021-10-27 08:41:11', '2021-10-27 08:41:11', '', 'Mask Group (4)', '', 'inherit', 'open', 'closed', '', 'mask-group-4', '', '', '2021-10-27 08:41:11', '2021-10-27 08:41:11', '', 41, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/Mask-Group-4.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2021-10-27 08:41:51', '2021-10-27 08:41:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 08:41:51', '2021-10-27 08:41:51', '', 41, 'http://localhost:8888/weareprogress/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-10-27 10:01:05', '2021-10-27 10:01:05', '', 'Mask Group (5)', '', 'inherit', 'open', 'closed', '', 'mask-group-5', '', '', '2021-10-27 10:01:05', '2021-10-27 10:01:05', '', 41, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/Mask-Group-5.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2021-10-27 10:01:10', '2021-10-27 10:01:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-27 10:01:10', '2021-10-27 10:01:10', '', 41, 'http://localhost:8888/weareprogress/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-10-27 10:19:08', '2021-10-27 10:19:08', '', 'Imprint', '', 'publish', 'closed', 'closed', '', 'imprint', '', '', '2021-10-27 10:19:08', '2021-10-27 10:19:08', '', 0, 'http://localhost:8888/weareprogress/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2021-10-27 10:19:08', '2021-10-27 10:19:08', '', 'Data Protection', '', 'publish', 'closed', 'closed', '', 'data-protection', '', '', '2021-10-27 10:19:08', '2021-10-27 10:19:08', '', 0, 'http://localhost:8888/weareprogress/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2021-10-27 10:19:08', '2021-10-27 10:19:08', '', 'Cookies Policy', '', 'publish', 'closed', 'closed', '', 'cookies-policy', '', '', '2021-10-27 10:19:08', '2021-10-27 10:19:08', '', 0, 'http://localhost:8888/weareprogress/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2021-10-28 05:58:52', '2021-10-28 05:58:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-28 05:58:52', '2021-10-28 05:58:52', '', 41, 'http://localhost:8888/weareprogress/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-10-28 06:01:17', '2021-10-28 06:01:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-28 06:01:17', '2021-10-28 06:01:17', '', 41, 'http://localhost:8888/weareprogress/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-10-28 06:26:20', '2021-10-28 06:26:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-10-28 06:26:20', '2021-10-28 06:26:20', '', 41, 'http://localhost:8888/weareprogress/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-10-28 07:59:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-28 07:59:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/weareprogress/?p=85', 0, 'post', '', 0),
(86, 1, '2021-10-28 10:00:29', '2021-10-28 10:00:29', '', 'twitter 1', '', 'inherit', 'open', 'closed', '', 'twitter-1', '', '', '2021-10-28 10:00:29', '2021-10-28 10:00:29', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/twitter-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2021-10-28 10:00:30', '2021-10-28 10:00:30', '', 'tumblr 1', '', 'inherit', 'open', 'closed', '', 'tumblr-1', '', '', '2021-10-28 10:00:30', '2021-10-28 10:00:30', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/tumblr-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2021-10-28 10:00:31', '2021-10-28 10:00:31', '', 'snapchat 1', '', 'inherit', 'open', 'closed', '', 'snapchat-1', '', '', '2021-10-28 10:00:31', '2021-10-28 10:00:31', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/snapchat-1.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2021-10-28 10:00:31', '2021-10-28 10:00:31', '', 'instagram-sketched 1', '', 'inherit', 'open', 'closed', '', 'instagram-sketched-1', '', '', '2021-10-28 10:00:31', '2021-10-28 10:00:31', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/instagram-sketched-1.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2021-10-28 10:00:32', '2021-10-28 10:00:32', '', 'facebook 1', '', 'inherit', 'open', 'closed', '', 'facebook-1', '', '', '2021-10-28 10:00:32', '2021-10-28 10:00:32', '', 0, 'http://localhost:8888/weareprogress/wp-content/uploads/2021/10/facebook-1.png', 0, 'attachment', 'image/png', 0);

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary menu', 'primary-menu', 0),
(3, 'Secondary menu', 'secondary-menu', 0);

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
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(79, 3, 0),
(80, 3, 0),
(81, 3, 0);

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
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 3);

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
(16, 1, 'session_tokens', 'a:3:{s:64:\"e9136d9dceca625096b2d9e66672432cb2565415c3d53e508668a7386e2f13e5\";a:4:{s:10:\"expiration\";i:1635576422;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36\";s:5:\"login\";i:1635403622;}s:64:\"733ea32dd50ac033d1106a9167499a0029ba8d07bcb53c6f5cb5a917e3328f75\";a:4:{s:10:\"expiration\";i:1635576448;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36\";s:5:\"login\";i:1635403648;}s:64:\"60075cf0c054bb72bc967e74ae793d6fc5ceee63d6a3a9c7a51284e53c613856\";a:4:{s:10:\"expiration\";i:1635585897;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36\";s:5:\"login\";i:1635413097;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1635231581'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

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
(1, 'admin', '$P$BgMXmcAq3IzBHHOQxIJ2oDLdPy8cFQ/', 'admin', 'demosystango@gmail.com', 'http://localhost:8888/weareprogress', '2021-10-26 06:36:36', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
