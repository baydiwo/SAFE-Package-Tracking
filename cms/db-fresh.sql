-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2015 at 05:29 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `safe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sf_commentmeta`
--

CREATE TABLE IF NOT EXISTS `sf_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sf_comments`
--

CREATE TABLE IF NOT EXISTS `sf_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sf_comments`
--

INSERT INTO `sf_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-03-17 12:45:29', '2015-03-17 12:45:29', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sf_links`
--

CREATE TABLE IF NOT EXISTS `sf_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sf_options`
--

CREATE TABLE IF NOT EXISTS `sf_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=229 ;

--
-- Dumping data for table `sf_options`
--

INSERT INTO `sf_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/safe/package-tracking', 'yes'),
(2, 'home', 'http://localhost/safe/package-tracking', 'yes'),
(3, 'blogname', 'SAFE', 'yes'),
(4, 'blogdescription', 'SAFE Logistics', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'baydiwo@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '2', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:31:"query-monitor/query-monitor.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:47:"better-search-replace/better-search-replace.php";i:3;s:27:"wp-clean-up/wp-clean-up.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '7', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:88:"D:\\xampp\\htdocs\\safe\\package-tracking/wp-content/plugins/query-monitor/query-monitor.php";i:1;s:0:"";}', 'no'),
(41, 'template', 'SAFE-PackageTracking', 'yes'),
(42, 'stylesheet', 'SAFE-PackageTracking', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '0', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '300', 'yes'),
(60, 'thumbnail_size_h', '240', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '16', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'sf_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"view_query_monitor";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1426921740;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1426941952;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1426942026;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1426942202;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1426912015;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes'),
(99, '_transient_random_seed', '76e433b7614e201684c50c7701dcce3c', 'yes'),
(104, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1426912018;s:7:"checked";a:5:{s:20:"SAFE-PackageTracking";s:3:"1.0";s:27:"angularjs-demo-theme-master";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(107, 'can_compress_scripts', '1', 'yes'),
(127, 'recently_activated', 'a:1:{s:47:"post-revision-display/post-revision-display.php";i:1426901946;}', 'yes'),
(128, 'acf_version', '4.4.1', 'yes'),
(131, 'category_children', 'a:0:{}', 'yes'),
(140, '_transient_twentyfifteen_categories', '2', 'yes'),
(158, '_transient_timeout_plugin_slugs', '1426998438', 'no'),
(159, '_transient_plugin_slugs', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:27:"angularjs-for-wp/plugin.php";i:3;s:47:"better-search-replace/better-search-replace.php";i:4;s:9:"hello.php";i:5;s:47:"post-revision-display/post-revision-display.php";i:6;s:31:"query-monitor/query-monitor.php";i:7;s:27:"wp-clean-up/wp-clean-up.php";}', 'no'),
(160, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1426937772', 'no'),
(161, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/03/wordpress-4-2-beta-2/''>WordPress 4.2 Beta 2</a> <span class="rss-date">March 19, 2015</span><div class="rssSummary">WordPress 4.2 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.2, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/wordcamp-london-2015-contributor-day-in-photos''>WPTavern: WordCamp London 2015 Contributor Day in Photos</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/slack-releases-standalone-app-for-windows''>WPTavern: Slack Releases Standalone App For Windows</a></li><li><a class=''rsswidget'' href=''http://ma.tt/2015/03/typewriter/''>Matt: The Billionaire’s Typewriter</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/ninja-forms/'' class=''dashboard-news-plugin-link''>Ninja Forms</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=ninja-forms&amp;_wpnonce=6df12dfc47&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Ninja Forms''>Install</a>)</span></li></ul></div>', 'no'),
(162, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426894625;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(163, 'current_theme', 'SAFE', 'yes'),
(164, 'theme_mods_angularjs-demo-theme-master', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426894899;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(169, 'theme_mods_SAFE-PackageTracking', 'a:1:{i:0;b:0;}', 'yes'),
(175, 'WPLANG', '', 'yes'),
(196, 'prd_revs_on_posts', '1', 'yes'),
(197, 'prd_rev_list_header', '<h4>Post Revisions:</h4>', 'yes'),
(198, 'prd_rev_diffs_header', '<h4>Changes:</h4>', 'yes'),
(199, 'prd_revs_on_pages', '1', 'yes'),
(200, 'prd_hide_message_when_no_revs', '', 'yes'),
(201, 'prd_manual_mode', '1', 'yes'),
(208, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1426920184', 'yes'),
(209, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4916";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3078";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3022";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2529";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2346";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1892";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1729";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1680";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1678";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1676";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1612";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1609";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1505";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1322";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1276";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1175";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1171";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1083";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1079";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"918";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"905";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"874";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"843";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"837";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"794";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"758";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"748";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"709";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"700";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"692";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"682";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"657";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"649";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"642";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"642";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"623";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"620";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"605";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"600";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"593";}}', 'yes'),
(218, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=16&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(225, '_site_transient_timeout_theme_roots', '1426913433', 'yes'),
(226, '_site_transient_theme_roots', 'a:5:{s:20:"SAFE-PackageTracking";s:7:"/themes";s:27:"angularjs-demo-theme-master";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(228, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1426912035;s:7:"checked";a:8:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.1";s:19:"akismet/akismet.php";s:5:"3.0.4";s:27:"angularjs-for-wp/plugin.php";s:3:"1.2";s:47:"better-search-replace/better-search-replace.php";s:5:"1.0.4";s:9:"hello.php";s:3:"1.6";s:47:"post-revision-display/post-revision-display.php";s:3:"0.9";s:31:"query-monitor/query-monitor.php";s:5:"2.7.1";s:27:"wp-clean-up/wp-clean-up.php";s:5:"1.2.3";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:27:"angularjs-for-wp/plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"51251";s:4:"slug";s:16:"angularjs-for-wp";s:6:"plugin";s:27:"angularjs-for-wp/plugin.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:47:"https://wordpress.org/plugins/angularjs-for-wp/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/angularjs-for-wp.zip";}s:47:"better-search-replace/better-search-replace.php";O:8:"stdClass":6:{s:2:"id";s:5:"56596";s:4:"slug";s:21:"better-search-replace";s:6:"plugin";s:47:"better-search-replace/better-search-replace.php";s:11:"new_version";s:5:"1.0.4";s:3:"url";s:52:"https://wordpress.org/plugins/better-search-replace/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/better-search-replace.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"post-revision-display/post-revision-display.php";O:8:"stdClass":7:{s:2:"id";s:4:"4914";s:4:"slug";s:21:"post-revision-display";s:6:"plugin";s:47:"post-revision-display/post-revision-display.php";s:11:"new_version";s:3:"0.9";s:14:"upgrade_notice";s:62:"Internationalization support added and Spanish language files.";s:3:"url";s:52:"https://wordpress.org/plugins/post-revision-display/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/post-revision-display.0.9.zip";}s:31:"query-monitor/query-monitor.php";O:8:"stdClass":6:{s:2:"id";s:5:"10302";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:5:"2.7.1";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/query-monitor.2.7.1.zip";}s:27:"wp-clean-up/wp-clean-up.php";O:8:"stdClass":6:{s:2:"id";s:5:"36782";s:4:"slug";s:11:"wp-clean-up";s:6:"plugin";s:27:"wp-clean-up/wp-clean-up.php";s:11:"new_version";s:5:"1.2.3";s:3:"url";s:42:"https://wordpress.org/plugins/wp-clean-up/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wp-clean-up.1.2.3.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sf_postmeta`
--

CREATE TABLE IF NOT EXISTS `sf_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=493 ;

--
-- Dumping data for table `sf_postmeta`
--

INSERT INTO `sf_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, 'field_55082465737ee', 'a:11:{s:3:"key";s:19:"field_55082465737ee";s:5:"label";s:10:"Picking Up";s:4:"name";s:10:"picking_up";s:4:"type";s:8:"checkbox";s:12:"instructions";s:16:"Check the status";s:8:"required";s:1:"1";s:7:"choices";a:1:{i:0;s:10:"Picking Up";}s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cc218d8152";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(5, 5, 'position', 'normal'),
(6, 5, 'layout', 'default'),
(7, 5, 'hide_on_screen', 'a:2:{i:0;s:11:"the_content";i:1;s:8:"comments";}'),
(8, 5, '_edit_lock', '1426909884:1'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1426899158:1'),
(13, 8, '_edit_last', '1'),
(18, 8, 'tracking_status', '3'),
(19, 8, '_tracking_status', 'field_55082465737ee'),
(20, 8, '_edit_lock', '1426898501:1'),
(21, 10, '_edit_last', '1'),
(22, 10, '_edit_lock', '1426909238:1'),
(27, 10, 'tracking_status', '1'),
(28, 10, '_tracking_status', 'field_55082465737ee'),
(29, 12, '_edit_last', '1'),
(30, 12, '_edit_lock', '1426909098:1'),
(35, 12, 'tracking_status', '0'),
(36, 12, '_tracking_status', 'field_55082465737ee'),
(37, 14, '_edit_last', '1'),
(38, 14, '_edit_lock', '1426910518:1'),
(43, 14, 'tracking_status', '2'),
(44, 14, '_tracking_status', 'field_55082465737ee'),
(45, 5, 'field_550828afdf96c', 'a:13:{s:3:"key";s:19:"field_550828afdf96c";s:5:"label";s:19:"Destination Address";s:4:"name";s:19:"destination_address";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"3";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(47, 16, '_edit_last', '1'),
(48, 16, '_edit_lock', '1426895589:1'),
(49, 16, '_wp_page_template', 'package-tracking.php'),
(50, 18, '_edit_last', '1'),
(51, 18, '_edit_lock', '1426897239:1'),
(52, 18, '_wp_page_template', 'searchpage.php'),
(53, 18, '_wp_trash_meta_status', 'publish'),
(54, 18, '_wp_trash_meta_time', '1426897388'),
(61, 8, 'destination_address', ''),
(62, 8, '_destination_address', 'field_550828afdf96c'),
(69, 12, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(70, 12, '_destination_address', 'field_550828afdf96c'),
(71, 5, 'field_550cbf18939c3', 'a:11:{s:3:"key";s:19:"field_550cbf18939c3";s:5:"label";s:14:"Order Received";s:4:"name";s:14:"order_received";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(81, 14, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(82, 14, '_destination_address', 'field_550cea55b6e9c'),
(83, 14, 'order_received', 'Saturday, 21 March 2015'),
(84, 14, '_order_received', 'field_550ceab9b6e9e'),
(88, 6, '_wp_trash_meta_status', 'draft'),
(89, 6, '_wp_trash_meta_time', '1426899301'),
(98, 5, 'field_550cc1add8151', 'a:8:{s:3:"key";s:19:"field_550cc1add8151";s:5:"label";s:21:"Warehouse Transit TAB";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"1";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(99, 5, 'field_550cc218d8152', 'a:11:{s:3:"key";s:19:"field_550cc218d8152";s:5:"label";s:17:"Warehouse Transit";s:4:"name";s:17:"warehouse_transit";s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:1:{i:1;s:17:"Warehouse Transit";}s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(100, 5, 'field_550cc284d8153', 'a:8:{s:3:"key";s:19:"field_550cc284d8153";s:5:"label";s:14:"Delivered  TAB";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(101, 5, 'field_550cc2bed8154', 'a:11:{s:3:"key";s:19:"field_550cc2bed8154";s:5:"label";s:9:"Delivered";s:4:"name";s:9:"delivered";s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:1:{i:2;s:9:"Delivered";}s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(115, 12, 'order_received', 'Friday, 20 March 2015'),
(116, 12, '_order_received', 'field_550cbf18939c3'),
(117, 12, 'warehouse_transit', ''),
(118, 12, '_warehouse_transit', 'field_550cc218d8152'),
(119, 12, 'delivered', 'a:1:{i:0;s:1:"3";}'),
(120, 12, '_delivered', 'field_550cc2bed8154'),
(121, 5, 'field_550cc39bdd8f8', 'a:8:{s:3:"key";s:19:"field_550cc39bdd8f8";s:5:"label";s:8:"Statuses";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(135, 5, 'field_550cc48d69e15', 'a:8:{s:3:"key";s:19:"field_550cc48d69e15";s:5:"label";s:12:"Returned TAB";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cc218d8152";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(136, 5, 'field_550cc4b369e16', 'a:11:{s:3:"key";s:19:"field_550cc4b369e16";s:5:"label";s:8:"Returned";s:4:"name";s:8:"returned";s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:1:{i:3;s:8:"Returned";}s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(139, 5, 'field_550cc578c5420', 'a:11:{s:3:"key";s:19:"field_550cc578c5420";s:5:"label";s:12:"Pick Up Date";s:4:"name";s:12:"pick_up_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(140, 5, 'field_550cc52dc541d', 'a:11:{s:3:"key";s:19:"field_550cc52dc541d";s:5:"label";s:22:"Warehouse Transit Date";s:4:"name";s:22:"warehouse_transit_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(141, 5, 'field_550cc54fc541e', 'a:11:{s:3:"key";s:19:"field_550cc54fc541e";s:5:"label";s:14:"Delivered Date";s:4:"name";s:14:"delivered_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(142, 5, 'field_550cc561c541f', 'a:11:{s:3:"key";s:19:"field_550cc561c541f";s:5:"label";s:13:"Returned Date";s:4:"name";s:13:"returned_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_55082465737ee";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
(168, 12, 'picking_up', 'a:1:{i:0;s:1:"0";}'),
(169, 12, '_picking_up', 'field_55082465737ee'),
(170, 12, 'pick_up_date', 'Friday, 20 March 2015'),
(171, 12, '_pick_up_date', 'field_550cc578c5420'),
(172, 12, 'warehouse_transit_date', 'Thursday, 19 March 2015'),
(173, 12, '_warehouse_transit_date', 'field_550cc52dc541d'),
(174, 12, 'delivered_date', 'Sunday, 22 March 2015'),
(175, 12, '_delivered_date', 'field_550cc54fc541e'),
(176, 12, 'returned', ''),
(177, 12, '_returned', 'field_550cc4b369e16'),
(178, 12, 'returned_date', 'Friday, 27 March 2015'),
(179, 12, '_returned_date', 'field_550cc561c541f'),
(317, 14, 'picking_up', 'a:1:{i:0;s:1:"0";}'),
(318, 14, '_picking_up', 'field_55082465737ee'),
(319, 14, 'pick_up_date', 'Saturday, 21 March 2015'),
(320, 14, '_pick_up_date', 'field_550cea7bb6e9d'),
(321, 14, 'warehouse_transit', 'a:1:{i:0;s:1:"1";}'),
(322, 14, '_warehouse_transit', 'field_550cc218d8152'),
(323, 14, 'warehouse_transit_date', 'Sunday, 29 March 2015'),
(324, 14, '_warehouse_transit_date', 'field_550ceaedb6e9f'),
(325, 14, 'delivered', ''),
(326, 14, '_delivered', 'field_550cc2bed8154'),
(327, 14, 'delivered_date', 'Sunday, 29 March 2015'),
(328, 14, '_delivered_date', 'field_550cc54fc541e'),
(329, 14, 'returned', ''),
(330, 14, '_returned', 'field_550cc4b369e16'),
(331, 14, 'returned_date', 'Monday, 30 March 2015'),
(332, 14, '_returned_date', 'field_550ceb08b6ea0'),
(401, 10, 'picking_up', 'a:1:{i:0;s:1:"0";}'),
(402, 10, '_picking_up', 'field_55082465737ee'),
(403, 10, 'destination_address', 'Jl. Jimbaran Blok LA 12A/6 Komplek Ruko Daan Mogot Baru\r\nKali Deres, Jakarta Barat 11840, Indonesia\r\nPhone: +62 21 5444 991, Fax: +62 21 545 6819'),
(404, 10, '_destination_address', 'field_550828afdf96c'),
(405, 10, 'pick_up_date', 'Thursday, 19 March 2015'),
(406, 10, '_pick_up_date', 'field_550cc578c5420'),
(407, 10, 'order_received', 'Sunday, 29 March 2015'),
(408, 10, '_order_received', 'field_550cbf18939c3'),
(409, 10, 'warehouse_transit', 'a:1:{i:0;s:1:"1";}'),
(410, 10, '_warehouse_transit', 'field_550cc218d8152'),
(411, 10, 'warehouse_transit_date', 'Thursday, 26 March 2015'),
(412, 10, '_warehouse_transit_date', 'field_550cc52dc541d'),
(413, 10, 'delivered', 'a:1:{i:0;s:1:"2";}'),
(414, 10, '_delivered', 'field_550cc2bed8154'),
(415, 10, 'delivered_date', 'Sunday, 29 March 2015'),
(416, 10, '_delivered_date', 'field_550cc54fc541e'),
(417, 10, 'returned', ''),
(418, 10, '_returned', 'field_550cc4b369e16'),
(419, 10, 'returned_date', ''),
(420, 10, '_returned_date', 'field_550cc561c541f'),
(421, 5, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(422, 37, '_edit_last', '1'),
(423, 37, 'field_550cea15b6e9b', 'a:12:{s:3:"key";s:19:"field_550cea15b6e9b";s:5:"label";s:6:"Status";s:4:"name";s:6:"status";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:4:{i:0;s:10:"Picking Up";i:1;s:17:"Warehouse Transit";i:2;s:9:"Delivered";i:3;s:8:"Returned";}s:13:"default_value";s:1:"0";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(424, 37, 'field_550cea55b6e9c', 'a:13:{s:3:"key";s:19:"field_550cea55b6e9c";s:5:"label";s:19:"Destination Address";s:4:"name";s:19:"destination_address";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"3";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cea15b6e9b";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(425, 37, 'field_550cea7bb6e9d', 'a:11:{s:3:"key";s:19:"field_550cea7bb6e9d";s:5:"label";s:12:"Pick Up Date";s:4:"name";s:12:"pick_up_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cea15b6e9b";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(426, 37, 'field_550ceab9b6e9e', 'a:11:{s:3:"key";s:19:"field_550ceab9b6e9e";s:5:"label";s:14:"Order Received";s:4:"name";s:14:"order_received";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cea15b6e9b";s:8:"operator";s:2:"==";s:5:"value";s:1:"0";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(427, 37, 'field_550ceaedb6e9f', 'a:11:{s:3:"key";s:19:"field_550ceaedb6e9f";s:5:"label";s:22:"Warehouse Transit Date";s:4:"name";s:22:"warehouse_transit_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"1";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cea15b6e9b";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(428, 37, 'field_550ceb08b6ea0', 'a:11:{s:3:"key";s:19:"field_550ceb08b6ea0";s:5:"label";s:13:"Returned Date";s:4:"name";s:13:"returned_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"date_format";s:11:"DD, d MM yy";s:14:"display_format";s:11:"DD, d MM yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"1";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_550cea15b6e9b";s:8:"operator";s:2:"==";s:5:"value";s:1:"3";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(430, 37, 'position', 'normal'),
(431, 37, 'layout', 'no_box'),
(432, 37, 'hide_on_screen', ''),
(433, 37, '_edit_lock', '1426910496:1'),
(434, 37, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(437, 38, 'status', '2'),
(438, 38, '_status', 'field_550cea15b6e9b'),
(439, 38, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(440, 38, '_destination_address', 'field_550cea55b6e9c'),
(441, 38, 'pick_up_date', 'Saturday, 21 March 2015'),
(442, 38, '_pick_up_date', 'field_550cea7bb6e9d'),
(443, 38, 'order_received', 'Saturday, 21 March 2015'),
(444, 38, '_order_received', 'field_550ceab9b6e9e'),
(445, 14, 'status', '2'),
(446, 14, '_status', 'field_550cea15b6e9b'),
(449, 39, 'status', '1'),
(450, 39, '_status', 'field_550cea15b6e9b'),
(451, 39, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(452, 39, '_destination_address', 'field_550cea55b6e9c'),
(453, 39, 'pick_up_date', 'Saturday, 21 March 2015'),
(454, 39, '_pick_up_date', 'field_550cea7bb6e9d'),
(455, 39, 'order_received', 'Saturday, 21 March 2015'),
(456, 39, '_order_received', 'field_550ceab9b6e9e'),
(457, 39, 'warehouse_transit_date', 'Sunday, 29 March 2015'),
(458, 39, '_warehouse_transit_date', 'field_550ceaedb6e9f'),
(461, 40, 'status', '3'),
(462, 40, '_status', 'field_550cea15b6e9b'),
(463, 40, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(464, 40, '_destination_address', 'field_550cea55b6e9c'),
(465, 40, 'pick_up_date', 'Saturday, 21 March 2015'),
(466, 40, '_pick_up_date', 'field_550cea7bb6e9d'),
(467, 40, 'order_received', 'Saturday, 21 March 2015'),
(468, 40, '_order_received', 'field_550ceab9b6e9e'),
(469, 40, 'returned_date', 'Monday, 30 March 2015'),
(470, 40, '_returned_date', 'field_550ceb08b6ea0'),
(473, 41, 'status', '1'),
(474, 41, '_status', 'field_550cea15b6e9b'),
(475, 41, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(476, 41, '_destination_address', 'field_550cea55b6e9c'),
(477, 41, 'pick_up_date', 'Saturday, 21 March 2015'),
(478, 41, '_pick_up_date', 'field_550cea7bb6e9d'),
(479, 41, 'order_received', 'Saturday, 21 March 2015'),
(480, 41, '_order_received', 'field_550ceab9b6e9e'),
(481, 41, 'warehouse_transit_date', 'Sunday, 29 March 2015'),
(482, 41, '_warehouse_transit_date', 'field_550ceaedb6e9f'),
(485, 42, 'status', '2'),
(486, 42, '_status', 'field_550cea15b6e9b'),
(487, 42, 'destination_address', 'Ghani Djemat Law Office, Plaza Ghani Djemat Lt.8, Jalan Imam Bonjol, Kota Jakarta Pusat'),
(488, 42, '_destination_address', 'field_550cea55b6e9c'),
(489, 42, 'pick_up_date', 'Saturday, 21 March 2015'),
(490, 42, '_pick_up_date', 'field_550cea7bb6e9d'),
(491, 42, 'order_received', 'Saturday, 21 March 2015'),
(492, 42, '_order_received', 'field_550ceab9b6e9e');

-- --------------------------------------------------------

--
-- Table structure for table `sf_posts`
--

CREATE TABLE IF NOT EXISTS `sf_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `sf_posts`
--

INSERT INTO `sf_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-17 12:45:29', '2015-03-17 12:45:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-03-17 12:45:29', '2015-03-17 12:45:29', '', 0, 'http://localhost/safe/package-tracking/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-17 12:45:29', '2015-03-17 12:45:29', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/safe/package-tracking/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-03-17 12:45:29', '2015-03-17 12:45:29', '', 0, 'http://localhost/safe/package-tracking/?page_id=2', 0, 'page', '', 0),
(5, 1, '2015-03-17 12:58:20', '2015-03-17 12:58:20', '', 'Package Tracking Status', '', 'draft', 'closed', 'closed', '', 'acf_package-tracking-status', '', '', '2015-03-21 10:48:08', '2015-03-21 03:48:08', '', 0, 'http://localhost/safe/package-tracking/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 1, '2015-03-21 07:54:35', '2015-03-21 00:54:35', '', 'pkg05', '', 'trash', 'open', 'open', '', 'pkg05', '', '', '2015-03-21 07:55:02', '2015-03-21 00:55:02', '', 0, 'http://localhost/safe/package-tracking/?p=6', 0, 'post', '', 0),
(8, 1, '2015-03-17 13:01:20', '2015-03-17 13:01:20', '', 'pkg01', '', 'publish', 'open', 'open', '', 'pkg01', '', '', '2015-03-21 00:43:16', '2015-03-21 00:43:16', '', 0, 'http://localhost/safe/package-tracking/?p=8', 0, 'post', '', 0),
(10, 1, '2015-03-17 13:01:47', '2015-03-17 13:01:47', '', 'pkg02', '', 'publish', 'open', 'open', '', 'pkg02', '', '', '2015-03-21 10:41:50', '2015-03-21 03:41:50', '', 0, 'http://localhost/safe/package-tracking/?p=10', 0, 'post', '', 0),
(12, 1, '2015-03-17 13:02:11', '2015-03-17 13:02:11', '', 'pkg03', '', 'publish', 'open', 'open', '', 'pkg03', '', '', '2015-03-21 09:50:52', '2015-03-21 02:50:52', '', 0, 'http://localhost/safe/package-tracking/?p=12', 0, 'post', '', 0),
(14, 1, '2015-03-17 13:02:31', '2015-03-17 13:02:31', '', 'pkg04', '', 'publish', 'open', 'open', '', 'pkg04', '', '', '2015-03-21 11:03:45', '2015-03-21 04:03:45', '', 0, 'http://localhost/safe/package-tracking/?p=14', 0, 'post', '', 0),
(16, 1, '2015-03-20 23:43:07', '2015-03-20 23:43:07', '', 'Package Tracking', '', 'publish', 'open', 'open', '', 'package-tracking', '', '', '2015-03-20 23:49:32', '2015-03-20 23:49:32', '', 0, 'http://localhost/safe/package-tracking/?page_id=16', 0, 'page', '', 0),
(18, 1, '2015-03-21 00:16:57', '2015-03-21 00:16:57', '', 'Search', '', 'trash', 'open', 'open', '', 'search', '', '', '2015-03-21 00:23:08', '2015-03-21 00:23:08', '', 0, 'http://localhost/safe/package-tracking/?page_id=18', 0, 'page', '', 0),
(37, 1, '2015-03-21 10:53:22', '2015-03-21 03:53:22', '', 'Tracking Status Selec', '', 'publish', 'closed', 'closed', '', 'acf_tracking-status-selec', '', '', '2015-03-21 10:53:43', '2015-03-21 03:53:43', '', 0, 'http://localhost/safe/package-tracking/?post_type=acf&#038;p=37', 0, 'acf', '', 0),
(38, 1, '2015-03-21 10:54:32', '2015-03-21 03:54:32', '', 'pkg04', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-21 10:54:32', '2015-03-21 03:54:32', '', 14, 'http://localhost/safe/package-tracking/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-03-21 11:00:13', '2015-03-21 04:00:13', '', 'pkg04', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-21 11:00:13', '2015-03-21 04:00:13', '', 14, 'http://localhost/safe/package-tracking/?p=39', 0, 'revision', '', 0),
(40, 1, '2015-03-21 11:00:38', '2015-03-21 04:00:38', '', 'pkg04', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-21 11:00:38', '2015-03-21 04:00:38', '', 14, 'http://localhost/safe/package-tracking/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-03-21 11:03:24', '2015-03-21 04:03:24', '', 'pkg04', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-21 11:03:24', '2015-03-21 04:03:24', '', 14, 'http://localhost/safe/package-tracking/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-03-21 11:03:45', '2015-03-21 04:03:45', '', 'pkg04', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-21 11:03:45', '2015-03-21 04:03:45', '', 14, 'http://localhost/safe/package-tracking/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-03-21 11:14:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-21 11:14:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/safe/package-tracking/?p=43', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sf_terms`
--

CREATE TABLE IF NOT EXISTS `sf_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sf_terms`
--

INSERT INTO `sf_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Tracking Status', 'tracking-status', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sf_term_relationships`
--

CREATE TABLE IF NOT EXISTS `sf_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sf_term_relationships`
--

INSERT INTO `sf_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(8, 2, 0),
(10, 2, 0),
(12, 2, 0),
(14, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sf_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `sf_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sf_term_taxonomy`
--

INSERT INTO `sf_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', 'Controlling status of packages for tracking for displaying to user.', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sf_usermeta`
--

CREATE TABLE IF NOT EXISTS `sf_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `sf_usermeta`
--

INSERT INTO `sf_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'sf_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'sf_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"afd804a6f64497d86419c2f4d44f3efd6be0ad981210687e6062a7fcc7e48f56";a:4:{s:10:"expiration";i:1427805970;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:5:"login";i:1426596370;}s:64:"7c2b9645d479e73b3b1ad68fa0fd3827528935ffcb24e95bfa23c445703e91d3";a:4:{s:10:"expiration";i:1428120309;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:5:"login";i:1426910709;}}'),
(15, 1, 'sf_dashboard_quick_press_last_post_id', '43'),
(16, 1, 'closedpostboxes_post', 'a:0:{}'),
(17, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `sf_users`
--

CREATE TABLE IF NOT EXISTS `sf_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sf_users`
--

INSERT INTO `sf_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2ddePjFu/co8/4y/CfgaHi9hVSsVr/', 'admin', 'baydiwo@gmail.com', '', '2015-03-17 12:45:28', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sf_commentmeta`
--
ALTER TABLE `sf_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `sf_comments`
--
ALTER TABLE `sf_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `sf_links`
--
ALTER TABLE `sf_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `sf_options`
--
ALTER TABLE `sf_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `sf_postmeta`
--
ALTER TABLE `sf_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `sf_posts`
--
ALTER TABLE `sf_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `sf_terms`
--
ALTER TABLE `sf_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `sf_term_relationships`
--
ALTER TABLE `sf_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `sf_term_taxonomy`
--
ALTER TABLE `sf_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `sf_usermeta`
--
ALTER TABLE `sf_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `sf_users`
--
ALTER TABLE `sf_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sf_commentmeta`
--
ALTER TABLE `sf_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sf_comments`
--
ALTER TABLE `sf_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sf_links`
--
ALTER TABLE `sf_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sf_options`
--
ALTER TABLE `sf_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `sf_postmeta`
--
ALTER TABLE `sf_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=493;
--
-- AUTO_INCREMENT for table `sf_posts`
--
ALTER TABLE `sf_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `sf_terms`
--
ALTER TABLE `sf_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sf_term_taxonomy`
--
ALTER TABLE `sf_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sf_usermeta`
--
ALTER TABLE `sf_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sf_users`
--
ALTER TABLE `sf_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
