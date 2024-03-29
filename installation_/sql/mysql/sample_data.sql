-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2012 at 05:30 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zt_meda25`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_assets`
--

DROP TABLE IF EXISTS `jos_assets`;
CREATE TABLE IF NOT EXISTS `jos_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) Engine=MyISAM  AUTO_INCREMENT=177 ;

--
-- Dumping data for table `jos_assets`
--

INSERT INTO `jos_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 430, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 87, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 88, 309, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 310, 311, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 312, 313, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.create":[],"core.delete":[],"core.edit.state":[]}'),
(11, 1, 314, 315, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 316, 317, 1, 'com_login', 'com_login', '{}'),
(13, 1, 318, 319, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 320, 321, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 322, 323, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 324, 325, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 328, 329, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 330, 337, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 338, 339, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 340, 341, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 342, 343, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 344, 345, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 346, 347, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 348, 365, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 366, 367, 1, 'com_wrapper', 'com_wrapper', '{}'),
(39, 8, 109, 278, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 355, 356, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 333, 334, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(34, 8, 105, 108, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 25, 86, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 335, 336, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 357, 364, 2, 'com_weblinks.category.18', 'Sample Data-Weblinks', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 110, 241, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 111, 218, 4, 'com_content.category.20', 'Extensions', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 112, 127, 5, 'com_content.category.21', 'Components', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 128, 187, 5, 'com_content.category.22', 'Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 188, 199, 5, 'com_content.category.23', 'Templates', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 200, 201, 5, 'com_content.category.24', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 202, 217, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 242, 273, 3, 'com_content.category.26', 'Park Site', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 243, 248, 4, 'com_content.category.27', 'Park Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 249, 270, 4, 'com_content.category.28', 'Photo Gallery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 8, 301, 308, 2, 'com_content.category.29', 'ZT LatestNews ', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(55, 8, 291, 300, 2, 'com_content.category.30', 'ZT HeadLine', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(56, 43, 358, 359, 3, 'com_weblinks.category.31', 'Park Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 360, 363, 3, 'com_weblinks.category.32', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 361, 362, 4, 'com_weblinks.category.33', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 26, 27, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 28, 85, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 29, 30, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 31, 84, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 32, 33, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 34, 35, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 36, 37, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 38, 39, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 40, 41, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 42, 43, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 44, 45, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 46, 47, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 48, 49, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 50, 51, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 52, 53, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 54, 55, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 56, 57, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 58, 59, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 60, 61, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 62, 63, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 64, 65, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 66, 67, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 68, 69, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 70, 71, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 72, 73, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 74, 75, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 76, 77, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 78, 79, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 80, 81, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 82, 83, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 113, 114, 6, 'com_content.article.1', 'Administrator Components', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 130, 131, 7, 'com_content.article.2', 'Archive Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 132, 133, 7, 'com_content.article.3', 'Article Categories Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 134, 135, 7, 'com_content.article.4', 'Articles Category Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 129, 144, 6, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 145, 152, 6, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 153, 166, 6, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 167, 178, 6, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 189, 190, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 191, 192, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 193, 194, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 195, 196, 6, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 203, 204, 6, 'com_content.article.5', 'Authentication', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 271, 272, 4, 'com_content.article.6', 'Australian Parks ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 154, 155, 7, 'com_content.article.7', 'Banner Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 219, 220, 4, 'com_content.article.8', 'Beginners', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 115, 116, 6, 'com_content.article.9', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 117, 118, 6, 'com_content.article.10', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 261, 262, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 250, 259, 5, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 260, 269, 5, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 156, 157, 7, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 302, 303, 3, 'com_content.article.13', 'Aliquam tortor ipsum', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 205, 206, 6, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 207, 208, 6, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 158, 159, 7, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 244, 245, 5, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 246, 247, 5, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 160, 161, 7, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 304, 305, 3, 'com_content.article.20', 'Nulla facilisi', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 221, 222, 4, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 223, 224, 4, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 292, 293, 3, 'com_content.article.23', 'Sollicitudin eget', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 225, 226, 4, 'com_content.article.24', 'Donec iaculis dignissim', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 251, 252, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 168, 169, 7, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 136, 137, 7, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 146, 147, 7, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 182, 183, 7, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 138, 139, 7, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 140, 141, 7, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 227, 228, 4, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 253, 254, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 263, 264, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 229, 230, 4, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 162, 163, 7, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 142, 143, 7, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 231, 232, 4, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 119, 120, 6, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 170, 171, 7, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 209, 210, 6, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 274, 275, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 255, 256, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 172, 173, 7, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 174, 175, 7, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 211, 212, 6, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 233, 234, 4, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 235, 236, 4, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 197, 198, 6, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 237, 238, 4, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 213, 214, 6, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 121, 122, 6, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 239, 240, 4, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 123, 124, 6, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 164, 165, 7, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 148, 149, 7, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 257, 258, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 294, 295, 3, 'com_content.article.58', 'Justo accumsan', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 176, 177, 7, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 125, 126, 6, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 184, 185, 7, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 215, 216, 6, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 265, 266, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 267, 268, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 150, 151, 7, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 181, 186, 6, 'com_content.category.75', 'Navigation Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 8, 279, 290, 2, 'com_content.category.76', 'ZT SlideShow', '{"core.create":{"10":1,"12":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1,"12":1}}'),
(168, 34, 106, 107, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 167, 280, 281, 3, 'com_content.article.68', 'Phasellus in porta ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(170, 167, 282, 283, 3, 'com_content.article.69', 'Donec in justo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(171, 167, 284, 285, 3, 'com_content.article.70', 'Donec laoreet', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(172, 167, 286, 287, 3, 'com_content.article.71', 'Aenean convallis', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(173, 167, 288, 289, 3, 'com_content.article.72', 'Cras id justo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(174, 55, 296, 297, 3, 'com_content.article.73', 'Massa venenatis', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(175, 55, 298, 299, 3, 'com_content.article.74', 'Nam et purus', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(176, 54, 306, 307, 3, 'com_content.article.75', 'Morbi a nibh lectus', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_associations`
--

DROP TABLE IF EXISTS `jos_associations`;
CREATE TABLE IF NOT EXISTS `jos_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_associations`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_banners`
--

DROP TABLE IF EXISTS `jos_banners`;
CREATE TABLE IF NOT EXISTS `jos_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) Engine=MyISAM  AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_banners`
--

INSERT INTO `jos_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`) VALUES
(2, 3, 0, 'Shop 1', 'shop-1', 0, 64, 2, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 15, 'Get books about Joomla! at the Joomla! book shop.', '', 0, 1, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Books"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(3, 2, 0, 'Shop 2', 'shop-2', 0, 114, 2, 'http://shop.joomla.org', 1, 15, 'T Shirts, caps and more from the Joomla! Shop.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Shop"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(4, 1, 0, 'Support Joomla!', 'support-joomla', 0, 33, 1, 'http://contribute.joomla.org', 1, 15, 'Your contributions of time, talent and money make Joomla! possible.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en-GB');

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner_clients`
--

DROP TABLE IF EXISTS `jos_banner_clients`;
CREATE TABLE IF NOT EXISTS `jos_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) Engine=MyISAM  AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_banner_clients`
--

INSERT INTO `jos_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1),
(2, 'Shop', 'Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(3, 'Bookstore', 'Bookstore Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner_tracks`
--

DROP TABLE IF EXISTS `jos_banner_tracks`;
CREATE TABLE IF NOT EXISTS `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) Engine=MyISAM  AUTO_INCREMENT=77 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 133, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(9, 34, 1, 125, 126, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(10, 35, 1, 123, 124, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(11, 36, 1, 119, 120, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(12, 37, 1, 55, 56, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(13, 38, 1, 51, 52, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(14, 39, 1, 9, 50, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(15, 40, 1, 121, 122, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(16, 41, 1, 57, 118, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(17, 42, 1, 53, 54, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', 'Sample Data-Weblinks', 'sample-data-weblinks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensions', 'extensions', '', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla! extensions.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Components', 'components', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-component.png" class="image-left" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed.In the Joomla! administrator there are additional extensions suce as Menus, Redirection, and the extension managers.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Modules', 'modules', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-module.png" alt="Media Image" class="image-left" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 17 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Templates', 'templates', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colors, type faces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with four templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Template_Manager_Templates">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:42:02', 0, '*'),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Languages', 'languages', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Language_Manager_Installed">Help</a></p>\r\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation.</p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:07:45', 0, '*'),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla!. Most beginning users do not need to change any of the plugins that install with Joomla!. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Plugin_Manager_Edit">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:05:05', 0, '*'),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Park Blog', 'park-blog', '', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write you blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description (this part) displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add  extensions for <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>, <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, and <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>.   You will also enable the syndication that is included in Joomla! (in the Integration Options set Show Feed Link to Show an make sure to display the syndication module on the page).</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Photo Gallery', 'photo-gallery', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\r\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(29, 54, 1, 131, 132, 1, 'zt-latestnews', 'com_content', 'ZT LatestNews ', 'zt-latestnews', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-09-26 10:17:17', 0, '*'),
(30, 55, 1, 129, 130, 1, 'zt-headline', 'com_content', 'ZT HeadLine', 'zt-headline', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-09-26 09:35:53', 0, '*'),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', 'Park Links', 'park-links', '', '<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', 'Joomla! Specific Links', 'joomla-specific-links', '', '<p><div style="font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 76%; background-color: #ffffff; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.3em; color: #333333;"><p>A selection of links that are all related to the Joomla! Project.</p></div></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', 'Other Resources', 'other-resources', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(34, 59, 16, 58, 59, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(35, 60, 16, 60, 117, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(36, 61, 35, 61, 62, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(37, 62, 35, 63, 116, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(38, 63, 37, 64, 65, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(39, 64, 37, 66, 67, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(40, 65, 37, 68, 69, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(41, 66, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(42, 67, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(43, 68, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(44, 69, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(45, 70, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(46, 71, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(47, 72, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(48, 73, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(49, 74, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(50, 75, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(51, 76, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(52, 77, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(53, 78, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(54, 79, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(55, 80, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(56, 81, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(57, 82, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(58, 83, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(59, 84, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(60, 85, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(61, 86, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(62, 87, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(63, 88, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Content Modules', 'articles-modules', '', '<p>Content modules display article and other information from the content component.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'User Modules', 'user-modules', '', '<p>User modules interact with the user system, allowing users to login, showing who is logged in, and showing the most recently registered users.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Display Modules', 'display-modules', '', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utility Modules', 'utility-modules', '', '<p>Utility modules provide useful functionality such as search, syndication, and statistics.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\r\n<p> </p>\r\n<ul>\r\n<li><a href="index.php?Itemid=285">Home Page</a></li>\r\n<li><a href="index.php?Itemid=316">Typography</a></li>\r\n</ul>\r\n<p> </p>\r\n<p> </p>\r\n<p><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customize template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=424">Home Page</a></li>\r\n<li><a href="index.php?Itemid=423">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez5', 'com_content', 'Beez5', 'beez5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\r\n<p> </p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=458">Home Page</a></li>\r\n<li><a href="index.php?Itemid=457">Typography</a></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animals', 'animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Scenery', 'scenery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(76, 167, 1, 127, 128, 1, 'zt-slideshow', 'com_content', 'ZT SlideShow', 'zt-slideshow', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-09-26 05:01:06', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) Engine=MyISAM  AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-08 17:39:00', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', NULL, 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bananas', 'bananas', 'Scientific Name: Musa', 'Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\r\n<p> </p>', 'images/sampledata/fruitshop/bananas_2.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 39, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Apples', 'apples', 'Scientific Name: Malus domestica', 'Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 38, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tamarind', 'tamarind', 'Scientific Name: Tamarindus indica', 'Image Credit: Franz Eugen Köhler, Köhler''s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>', 'images/sampledata/fruitshop/tamarind.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 57, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) Engine=MyISAM  AUTO_INCREMENT=76 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrator Components', 'administrator-components', '', '<p>All components also are used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\r\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned for Joomla! 1.6, although the core install and uninstall functionality remains the same as in Joomla 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\r\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\r\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\r\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\r\n<h3>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n</h3>\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 12:57:27', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 7, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 104, 'Beginners', 'beginners', '', '<p>If this is your first Joomla site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla!.</p>\r\n', '\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works.(When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the beginners'' areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\r\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the Joomla Site Showcase to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla! installation will let you get a great site up and running, but when you are ready for more features the power of Joomla! is in the creative ways that developers have extended it to do all kinds of things. Visit the Joomla! Extensions Directory to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional on the Joomla! Resources Directory.</p>\r\n<p>Want to learn more? Consider attending a Joomla! Day or other event or joining a local Joomla! Users Group. Can''t find one near you? Start one yourself.</p>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-09 16:41:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 4, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(2, 90, 'Archive Module', 'archive-module', '', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\r\n<p>{loadposition archiveload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:21:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, 'modules, content', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Banner Module', 'banner-module', '', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners">Help</a>.</p>\r\n<p>{loadposition bannersload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:41:15', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 6, '', '', 1, 2, '', 0, '*', ''),
(3, 91, 'Article Categories Module', 'article-categories-module', '', '<p>This module displays a list of categories from one parent category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\r\n<p>{loadposition articlescategoriesload}</p>\r\n<p> </p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:24:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 6, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Articles Category Module', 'articles-category-module', '', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category">Help</a></p>\r\n<p>{loadposition articlescategoryload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:57:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 7, '', 'articles,content', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Authentication', 'authentication', '', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p><p>Default on:</p><ul><li>Joomla</li></ul><p>Default off:</p><ul><li>Gmail</li><li>LDAP</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 3, '', '', 1, 1, '', 0, '*', ''),
(6, 102, 'Australian Parks ', 'australian-parks', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site,"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>', '', 1, 0, 0, 26, '2011-01-01 00:00:01', 42, 'Parks webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 105, 'Contacts', 'contact', '', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:15:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'Content', 'content', '', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, '', '2011-01-10 04:28:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '', '<p><img src="images/sampledata/parks/landscape/250px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Alan J.W.C.</p><p class="caption">License: GNU Free Documentation License v . 1.2 or later</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(12, 110, 'Custom HTML Module', 'custom-html-module', '', '<p>This Module allows you to create your own HTML Module using a WYSIWYG editor. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\r\n<p>{loadposition customload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:46:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 2, '', 0, '*', ''),
(13, 111, 'Aliquam tortor ipsum', 'aliquam-tortor-ipsum', '', '<img src="images/news/3.png" width="150" height="150" class="caption" />\r\nSed vel justo ut lectus placerat tristique eget quis mi. Integer nisi mauris, viverra nec feugiat vitae, accumsan eu neque. Vivamus suscipit vestibulum bibendum. Suspendisse a tincidunt turpis. Suspendisse a faucibus massa. Vestibulum vitae dui nisi; non tempor lacus. Aliquam tortor ipsum, malesuada ac sollicitudin in, congue quis justo. Cras luctus, mauris quis porta hendrerit, nisl orci ultrices enim, eget elementum arcu velit sit amet ipsum. Aliquam vel turpis nunc?\r\n\r\nNam sodales accumsan scelerisque. Mauris non odio ornare enim porttitor pharetra a eu libero! Etiam mauris nisl, eleifend non adipiscing quis, rhoncus eu metus. Etiam aliquam pulvinar massa a commodo. Nullam facilisis ligula sit amet tortor mattis ut condimentum felis porttitor. Sed rutrum, quam vitae adipiscing cursus, quam quam vehicula metus, nec suscipit dolor ipsum quis lorem. Ut massa tellus, lacinia at aliquam et, sodales sit amet mauris. Proin eu pretium dolor? Pellentesque adipiscing, neque hendrerit luctus aliquam, felis neque tincidunt quam, vel posuere urna dui eget turpis. Nam mattis congue justo ut scelerisque. Aenean et dolor est, nec iaculis tortor. Mauris sed mauris nunc, eu semper augue? Sed leo nulla, molestie at suscipit non, tempus sed eros?\r\n\r\nInteger sit amet sodales ante. Sed eget tortor vel erat consectetur consequat vel in purus. Curabitur vulputate eros sed risus lobortis sed feugiat tellus semper. Donec placerat, tortor in gravida rutrum, nulla turpis auctor nisl, vitae bibendum nibh dui sit amet nisi. Praesent auctor iaculis consequat. Proin interdum viverra lacus, a tristique dui tempus vestibulum. In lectus tellus, sodales adipiscing gravida sit amet, malesuada non purus. Morbi ut enim eu dolor porttitor ornare a vitae justo. Sed facilisis consequat turpis, eget convallis leo dapibus et. Vivamus nec nulla id sapien pulvinar condimentum et sed nulla. Duis dui felis, feugiat non tempus eu, hendrerit dictum lorem. Nulla at augue eu metus blandit convallis. Maecenas at aliquet justo. Integer velit quam, tristique sed tempor eget, posuere ac urna. Mauris ac cursus arcu. Pellentesque fringilla consectetur cursus.', '', 1, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-09-26 10:17:56', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 112, 'Editors', 'editors', '', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p><p>Default on:</p><ul><li>CodeMirror Help</li><li>TinyMCE Help</li><li>No Editor Help</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 5, '', '', 1, 0, '', 0, '*', ''),
(15, 113, 'Editors-xtd', 'editors-xtd', '', '<p>These plugins are behind the buttons found beneath your editor. They only run when an editor plugin runs.</p><p>Default on:</p><ul><li>Editor Button: Image</li><li>Editor Button: Readmore</li><li>Editor Button: Page Break</li><li>Editor Button: Article</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 6, '', '', 1, 1, '', 0, '*', ''),
(16, 114, 'Feed Display', 'feed-display', '', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p><p>{loadposition feeddisplayload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(17, 115, 'First Blog Post', 'first-blog-post', '', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 1, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 0, '', 0, '*', ''),
(18, 116, 'Second Blog Post', 'second-blog-post', '', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 1, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 0, '', 0, '*', ''),
(19, 117, 'Footer Module', 'footer-module', '', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\r\n<p>{loadposition footerload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:43:33', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(20, 118, 'Nulla facilisi', 'nulla-facilisi', '', '<img src="images/news/2.png" width="150" height="150" class="caption" />\r\nNulla facilisi. Ut mauris eros, sodales eget semper id, pellentesque non augue. Aliquam volutpat egestas libero non feugiat. Pellentesque at cursus neque! Aliquam malesuada orci eu arcu convallis a elementum mauris placerat. Vivamus mauris ligula, luctus vitae porttitor sed, sodales nec augue? Maecenas faucibus placerat sagittis. In iaculis rutrum elementum. Sed et velit lacus, id mollis tortor. Maecenas ac sagittis erat.\r\n\r\nInteger quis lectus in quam lobortis venenatis at nec lacus! Quisque nisl neque, fringilla sed dictum eu, sagittis nec metus. Sed aliquam arcu in tortor vulputate ultricies. Mauris posuere ante id elit fringilla cursus mattis nec lectus. Duis et mi at dolor semper malesuada. Ut odio nibh, varius pellentesque feugiat at; commodo sit amet nulla. Sed congue arcu et quam fermentum vel pretium neque lobortis. Cras in dolor ut leo aliquam consequat. Suspendisse potenti. Nulla facilisi.\r\n\r\nQuisque egestas lacinia magna posuere lobortis. Aliquam arcu sem, mollis aliquam porta pretium, convallis eget quam. Phasellus condimentum nisl non odio blandit porta. Aliquam dignissim arcu sed sapien sollicitudin convallis. Donec cursus sapien ac ligula ullamcorper elementum. Integer a arcu augue! Duis nunc leo, semper laoreet ultrices et, ultrices eget dui. Aliquam pharetra pharetra purus sit amet feugiat! Aliquam consequat eleifend elit, vel commodo sapien hendrerit ac? Praesent at purus lorem, ut pharetra purus. Nunc vel sagittis enim. Nullam sem nisi, ultrices et cursus sit amet, condimentum vitae libero. Pellentesque mi erat; eleifend eu consectetur non, vulputate vitae odio. Cras fringilla lacinia turpis, quis aliquet orci gravida sit amet.', '', 1, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-09-26 10:18:16', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 119, 'Getting Help', 'getting-help', '', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\r\n<li><a href="http://docs.joomla.org">Documentation</a></li>\r\n<li><a href="http://resources.joomla.org">Professionals</a></li>\r\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\r\n</ul>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 15:32:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 10, 0, 8, '', '', 1, 16, '', 0, '*', ''),
(22, 120, 'Getting Started', 'getting-started', '', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see.  The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p><p>Log in to the administrator using the username and password created during the installation of Joomla!.</p><h3>Logging in</h3><p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name an password that were created as part of the installation process. Once logged in you will be able to create and edit articles.</p><p>In managing your site, you will be able to create content that only logged in users are able to see.</p><h3>Creating an article</h3><p>Once you are logged in, a new menu will be visible.  To create a new article, click on the "submit article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title an put something in the content area. To make it easy to find, set the state to published an put it in the Joomla! category.</p><div>You can edit an existing article by  clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 9, '', '', 1, 0, '', 0, '*', ''),
(23, 121, 'Sollicitudin eget', 'sollicitudin-eget', '', '<img src="images/lastest/1.png" class="caption" alt="ZooTemlate" width="150" height="150" />\r\nSed porta nibh at eros auctor vitae egestas justo feugiat. Duis nunc ligula, mattis vel condimentum eget, molestie consectetur erat. Fusce at consequat lorem. Nulla ut hendrerit lacus. Sed vulputate auctor eleifend. Sed vitae dui nibh. Nulla eu ipsum nulla, id eleifend ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar, mauris a tincidunt egestas, nunc purus auctor augue, vel condimentum lectus elit at enim. In blandit neque in nunc pulvinar tempor. Quisque risus libero, sagittis non semper vel, malesuada eu velit? Aenean pulvinar venenatis elementum. Nullam dui metus, sodales a lobortis adipiscing, sagittis id nibh. Aenean convallis pulvinar nisl, id venenatis nunc tincidunt sed.\r\n\r\nAliquam eget magna urna. Mauris convallis tristique libero sit amet pretium. Sed porta; augue vitae vulputate semper, purus lorem laoreet sapien, at consectetur tortor elit sit amet tellus. Sed tristique facilisis ligula, eget viverra tellus mattis eu. Pellentesque sit amet tempus sem. Fusce a dui sit amet urna condimentum cursus a sit amet massa? Nunc viverra ullamcorper lorem vitae mollis. Aenean in libero nisl! Suspendisse potenti. Vestibulum nulla nisi, accumsan quis convallis ac, dignissim at nibh.\r\n\r\nSed placerat sollicitudin felis, eu tincidunt ante ultricies semper! In ultrices, odio dapibus imperdiet scelerisque, ligula turpis dapibus ligula, sed ultricies tortor erat in quam. Cras ultricies, enim eget aliquam gravida, felis urna semper libero, eu dapibus lectus leo non lacus. Fusce ante lorem, ultricies euismod lacinia eu, hendrerit id lectus. Donec aliquam aliquet mollis? Proin aliquet, nisi sit amet ultrices molestie, leo sapien mattis urna, sit amet tristique orci leo vitae quam. Nunc cursus gravida gravida! Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce sed lectus non nibh fringilla blandit eget vitae ipsum. Suspendisse imperdiet sapien commodo nulla sollicitudin tempus. Curabitur at augue tincidunt lorem hendrerit egestas nec eu lorem.', '', 1, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-09-26 09:36:39', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 122, 'Donec iaculis dignissim', 'donec-iaculis-dignissim', '', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed varius orci eget velit varius eget sodales elit placerat. Proin tincidunt, neque ut semper vehicula, massa nulla malesuada orci, a sagittis mauris arcu eu purus? Proin est elit, dapibus rhoncus laoreet in; faucibus et elit. Ut vehicula viverra orci vitae sollicitudin. Pellentesque ultrices elit eu ligula egestas vitae fringilla purus semper.\r\n\r\nUt elementum euismod justo. ', '  Ut quis euismod massa.Praesent euismod augue eget mauris pulvinar ullamcorper sed eget erat.Vestibulum commodo risus eget sem lacinia ullamcorper. Proin dapibus justo in arcu sagittis laoreet. Cras tristique pulvinar mi tristique varius. Nam convallis elit id sapien interdum et eleifend quam imperdiet. In hac habitasse platea dictumst. Donec blandit, est sit amet fermentum bibendum, diam libero gravida nulla, quis mollis velit lorem vitae leo. Phasellus non libero sit amet turpis consequat facilisis eu vitae arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nUt facilisis neque eget nulla mattis et volutpat enim gravida? Aliquam erat volutpat. Pellentesque quis dui lorem. Nulla tincidunt ipsum et risus mollis facilisis. Maecenas justo odio, iaculis tempus ullamcorper ac, gravida vel dolor? Pellentesque a urna velit, eu vehicula odio. Nulla nec magna sit amet sem porta dignissim ut sed lorem.\r\n', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-27 03:18:40', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 6, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(25, 123, 'Koala', 'koala', '', '<p><img src="images/sampledata/parks/animals/180px_koala_ag1.jpg" border="0" alt="Koala  Thumbnail" width="180" height="123" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/800px_koala_ag1.jpg" border="0" alt="Koala Climbing Tree" width="500" height="341" style="vertical-align: middle; border: 0;" /></p><p> </p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Koala-ag1.jpg</p><p class="caption">Author: Arnaud Gaillard</p><p><span class="caption">License: Creative Commons Share Alike Attribution Generic 1.0</span></p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(26, 124, 'Language Switcher', 'language-switcher', '', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labellled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:57:35', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(27, 125, 'Latest Articles Module', 'latest-articles-module', '', '<p>This Module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\r\n<p>{loadposition articleslatestload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:18:38', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(28, 126, 'Login Module', 'login-module', '', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login" title="Login">Help</a></p>\r\n<p>{loadposition loginload}</p>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:36:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 2, '', '', 1, 3, '', 0, '*', ''),
(29, 127, 'Menu Module', 'menu-module', '', '<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu">Help</a></p>\r\n<p>{loadposition menuload}</p>', '', 1, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:07:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 4, '', 0, '*', ''),
(30, 128, 'Most Read Content', 'most-read-content', '', '<p>This Module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\r\n<p>{loadposition articlespopularload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:13:53', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'News Flash', 'news-flash', '', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\r\n<p>{loadposition newsflashload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:16:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Parameters', 'parameters', '', '<p>As you make your Joomla! site using the extension you will control the details of the display using <em>parameter</em><strong>s</strong>. Parameters control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p><p>Default parameters for each components are changed using the Options button on the component toolbar.</p><p>Parameters can also be set on an individual item, such as an article or contact and in menu links.</p><p>If you are happy with how your site looks, it is fine to leave all of the parameters set to the defaults that were created when your site was installed. As you become more experienced with Joomla! you will use parameters more.</p><p> </p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 10, '', '', 1, 1, '', 0, '*', ''),
(33, 131, 'Phyllopteryx', 'phyllopteryx', '', '<p><img src="images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p> </p>', '<p><img src="images/sampledata/parks/animals/800px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p> </p><p>Source: http://en.wikipedia.org/wiki/File:Phyllopteryx_taeniolatus1.jpg</p><p>Author: Richard Ling</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 3, '', '', 1, 0, '', 0, '*', ''),
(34, 132, 'Pinnacles', 'pinnacles', '', '<p><img src="images/sampledata/parks/landscape/120px_pinnacles_western_australia.jpg" border="0" alt="Kings Canyon" width="120" height="90" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_pinnacles_western_australia.jpg" border="0" alt="King''s Canyon" width="500" height="374" style="vertical-align: middle; border: 0;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Pinnacles_Western_Australia.jpg</p><p class="caption">Author: <a class="new" href="http://commons.wikimedia.org/w/index.php?title=User:Markdoe&action=edit&redlink=1" title="User:Markdoe (page does not exist)"></a>Martin Gloss</p><p class="caption">License: GNU Free Documentation license v 1.2 or later.</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 0, '', 0, '*', ''),
(35, 133, 'Professionals', 'professionals', '', '<p>Joomla! 1.7 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n', '\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above and ending legacy support for Joomla 1.0 extensions makes Joomla! lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla!. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">Changes since 1.5</a></li>\r\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\r\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\r\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\r\n<li><a href="http://docs.joomla.org/API16:Framework">Joomla! AP</a>I</li>\r\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\r\n<li><a href="http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6">Xmlrpc</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\r\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\r\n</ul>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-07-15 00:02:40', 42, 0, '0000-00-00 00:00:00', '2011-01-09 16:41:13', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 14, 0, 5, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(36, 134, 'Random Image Module', 'random-image-module', '', '<p>This Module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\r\n<p>{loadposition randomimageload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:39:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(37, 135, 'Related Items Module', 'related-items-module', '', '<p>This Module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\r\n<p>{loadposition relateditemsload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:23:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sample Sites', 'sample-sites', '', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with builidng your own site.</p><p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla!. It includes a personal blog, weblinks, and a very simple image gallery.</p><p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p><p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla! users start off by modifying the <a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 11, '', '', 1, 2, '', 0, '*', ''),
(39, 137, 'Search', 'search-component', '', '<p>The search component proviedes basic search functionality for the information contained in your core components. Many third party extensions also can be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:19:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 138, 'Search Module', 'search-module', '', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search" title="Search">Help</a></p>\r\n<p>{loadposition searchload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:55:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 3, '', 0, '*', ''),
(41, 139, 'Search ', 'search-plugin', '', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p><p>Default On:</p><ul><li>Content Help</li><li>Contacts Help</li><li>Weblinks Help</li><li>News Feeds Help</li><li>Categories Help</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(42, 140, 'Site Map', 'site-map', '', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', 1, 0, 0, 14, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '', '<p><img src="images/sampledata/parks/animals/220px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/789px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle;" /></p><p> </p><p>Source: http://en.wikipedia.org/wiki/File:SpottedQuoll_2005_SeanMcClean.jpg</p><p>Author: Sean McClean</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 0, '', 0, '*', ''),
(44, 142, 'Statistics Module', 'statistics', '', '<p>The Statistics Module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p><p>{loadposition statisticsload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 5, '', '', 1, 1, '', 0, '*', ''),
(45, 143, 'Syndicate Module', 'syndicate-module', '', '<p>The syndicate module allows you to display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p><p>{loadposition syndicateload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 6, '', '', 1, 1, '', 0, '*', ''),
(46, 144, 'System', 'system', '', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled.  New in 1.6 is the redirect plugin that with the redirect component assist you in managing changes in URLs.</p><p>Default on:</p><ul><li>Remember me Help</li><li>SEF Help</li><li>Debug Help</li></ul><p>Default off:</p><ul><li>Cache Help</li><li>Log Help</li><li>Redirect Help</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 1, '', 0, '*', ''),
(47, 145, 'The Joomla! Community', 'the-joomla-community', '', '<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p><p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>\r\n<p>Vivamus eu vestibulum nulla. Maecenas dapibus neque eu velit tristique ac ultricies lacus tristique. Quisque in erat lectus. Curabitur eu euismod mi. Nam vel risus justo. Vivamus auctor, eros sed mattis gravida, massa ante condimentum nisi, sit amet varius tellus massa in mi. Nunc vitae congue turpis. Aenean convallis, purus et ullamcorper tristique, nulla neque vestibulum ante; in pellentesque elit nunc eget lorem?\r\n\r\nAliquam erat volutpat. Ut nec justo vel purus dapibus pellentesque. Curabitur et eros ac ligula fringilla iaculis sed ut sem. Cras eleifend commodo nulla vitae congue. Sed porttitor adipiscing quam non tincidunt. Pellentesque id purus nec neque sollicitudin ultrices et quis odio. Donec sed velit metus. Donec magna massa, posuere vel semper in, pulvinar at enim. Quisque sodales viverra tellus, vel elementum est aliquet in. Maecenas mollis commodo interdum. Ut a massa nisi, non porta odio. Sed consectetur volutpat augue, quis gravida arcu semper at.\r\n\r\nAenean at lacus a nisl vehicula consectetur quis sed erat. Morbi a ligula non sapien gravida dapibus a nec metus. Morbi lobortis magna sit amet dui ultricies non consectetur urna gravida. Nunc sed convallis dui. Sed posuere nunc vel ante vehicula adipiscing. Integer sagittis rutrum dictum? Donec facilisis nunc vitae quam aliquet quis cursus dolor scelerisque. Aenean porttitor purus ultrices lorem venenatis pulvinar. Nullam faucibus luctus congue.\r\nAliquam erat volutpat. Ut nec justo vel purus dapibus pellentesque. Curabitur et eros ac ligula fringilla iaculis sed ut sem. Cras eleifend commodo nulla vitae congue. Sed porttitor adipiscing quam non tincidunt. Pellentesque id purus nec neque sollicitudin ultrices et quis odio. Donec sed velit metus. \r\n</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-27 04:00:31', 42, 42, '2011-09-27 04:00:31', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 4, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 146, 'The Joomla! Project', 'the-joomla-project', '', '<p>The Joomla! Project consists of all of the people who make and support the Joomla! Web Platform and Content Management System.</p><p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p><p>The core values are:</p><ul><li>Freedom</li><li>Equality</li><li>Trust</li><li>Community</li><li>Collaboration</li><li>Usability</li></ul><p>In our vision, we see:</p><ul><li>People publishing and collaborating in their communities and around the world</li><li>Software that is free, secure, and high-quality</li><li>A community that is enjoyable and rewarding to participate in</li><li>People around the world using their preferred languages</li><li>A project that acts autonomously</li><li>A project that is socially responsible</li><li>A project dedicated to maintaining the trust of its users</li></ul><p>There are millions of users around the world and thousands of people who contribute to the Joomla! Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p><p>Joomla! is a free and open source project, which uses the GNU General Public License version 2 or later.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(49, 147, 'Typography', 'typography', '', '<div class="clearfix" style="overflow:hidden;">\r\n<div class="zt-typo-col zt-typo-col3">\r\n<ul class="plus">\r\n<li><a href="#heading-styles" title="">Heading Styles</a></li>\r\n<li><a href="#pre-code-styles" title="">Pre Code Styles</a></li>\r\n<li><a href="#highlight-styles" title="">Highlight Styles</a></li>\r\n<li><a href="#icons-styles" title="">Icons Styles</a></li>\r\n<li><a href="#order-list-styles" title="">Order List Styles</a></li>\r\n</ul>\r\n</div>\r\n<div class="zt-typo-col zt-typo-col3">\r\n<ul class="plus">\r\n<li><a href="#bullet-styles" title="">Bullet Styles</a></li>\r\n<li><a href="#content-box-styles" title="">Content Box Styles</a></li>\r\n<li><a href="#bubble-styles" title="">Bubble Styles</a></li>\r\n<li><a href="#blockquote-styles" title="">Blockquote Styles</a></li>\r\n</ul>\r\n</div>\r\n<div class="zt-typo-col zt-typo-col3">\r\n<ul class="plus">\r\n<li><a href="#blocknumber-styles" title="">Blocknumber Styles</a></li>\r\n<li><a href="#dropcap-styles" title="">Dropcap Styles</a></li>\r\n<li><a href="#legend-styles" title="">Legend Styles</a></li>\r\n<li><a href="#table-styles" title="">Table Styles</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n\r\n<p id="heading-styles" class="zt-typo-title"><span>Heading Styles</span></p>\r\n\r\n<h1>This is an Heading 1</h1>\r\n<h2>This is an Heading 2</h2>\r\n<h3>This is an Heading 3</h3>\r\n<h4>This is an Heading 4</h4>\r\n\r\n<p id="pre-code-styles" class="zt-typo-title"><span>Pre Code Styles</span></p>\r\n\r\n<p>Below is a sample of &lt;pre&gt; or &lt;div class="code"&gt;</p>\r\n\r\n<pre>#zt-body {<br /> width: 180px;<br /> float: right;<br /> color: #EEEEEE;<br />}</pre>\r\n\r\n\r\n<p id="highlight-styles" class="zt-typo-title"><span>Highlight Styles</span></p>\r\n\r\n<p>This is a <span class="highlight">highlight phrase</span>. Use <em>&lt;span class="<strong>highlight</strong>"&gt;Your highlight phrase goes here!&lt;/span&gt;.</em></p>\r\n<p>This is a <span class="highlight1">highlight phrase</span>. Use <em>&lt;span class="<strong>highlight1</strong>"&gt;Your highlight phrase goes here!&lt;/span&gt;.</em></p>\r\n<p>This is a <span class="highlight2">highlight phrase</span>. Use <em>&lt;span class="<strong>highlight2</strong>"&gt;Your highlight phrase goes here!&lt;/span&gt;.</em></p>\r\n<p>This is a <span class="highlight3">highlight phrase</span>. Use <em>&lt;span class="<strong>highlight3</strong>"&gt;Your highlight phrase goes here!&lt;/span&gt;.</em></p>\r\n\r\n\r\n<p id="icons-styles" class="zt-typo-title"><span>Icons Styles</span></p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n\r\n<div class="zt-typo-col zt-typo-col2">\r\n<p class="zt-info">Use <em>&lt;p class="<strong>zt-info</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-help">Use <em>&lt;p class="<strong>zt-help</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-comment">Use <em>&lt;p class="<strong>zt-comment</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-accept">Use <em>&lt;p class="<strong>zt-accept</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-add">Use <em>&lt;p class="<strong>zt-add</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tip">Use <em>&lt;p class="<strong>zt-tip</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-warning">Use <em>&lt;p class="<strong>zt-warning</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-error">Use <em>&lt;p class="<strong>zt-error</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-email">Use <em>&lt;p class="<strong>zt-email</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-phone">Use <em>&lt;p class="<strong>zt-phone</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-mobile">Use <em>&lt;p class="<strong>zt-mobile</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-time">Use <em>&lt;p class="<strong>zt-time</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-world">Use <em>&lt;p class="<strong>zt-world</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-book">Use <em>&lt;p class="<strong>zt-book</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-stock">Use <em>&lt;p class="<strong>zt-stock</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-cart">Use <em>&lt;p class="<strong>zt-cart</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col2">\r\n<p class="zt-date">Use <em>&lt;p class="<strong>zt-date</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-key">Use <em>&lt;p class="<strong>zt-key</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-yes">Use <em>&lt;p class="<strong>zt-yes</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-no">Use <em>&lt;p class="<strong>zt-no</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-male">Use <em>&lt;p class="<strong>zt-male</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-female">Use <em>&lt;p class="<strong>zt-female</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-blue">Use <em>&lt;p class="<strong>zt-tag-blue</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-green">Use <em>&lt;p class="<strong>zt-tag-green</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-orange">Use <em>&lt;p class="<strong>zt-tag-orange</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-pink">Use <em>&lt;p class="<strong>zt-tag-pink</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-purple">Use <em>&lt;p class="<strong>zt-tag-purple</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-red">Use <em>&lt;p class="<strong>zt-tag-red</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-tag-yellow">Use <em>&lt;p class="<strong>zt-tag-yellow</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-green">Use <em>&lt;p class="<strong>zt-green</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-yellow">Use <em>&lt;p class="<strong>zt-yellow</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n<p class="zt-red">Use <em>&lt;p class="<strong>zt-red</strong>"&gt;Your info message goes here!&lt;/p&gt;</em>.</p>\r\n</div>\r\n\r\n</div>\r\n\r\n<p id="order-list-styles" class="zt-typo-title"><span>Order List Styles</span></p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n<div class="zt-typo-col zt-typo-col2">\r\nUse <em>&lt;ol&gt;&lt;li&gt;...&lt;/li&gt;&lt;/ol&gt;</em>.\r\n<ol>\r\n<li>Suspendisse <strong>hendrerit ante</strong> vel quam.</li>\r\n<li>Vestibulum nisl. Integer urna.</li>\r\n<li>Aenean hendrerit. Maecenas condimentum.</li>\r\n<li>Sed odio sem, placerat faucibus.</li>\r\n</ol>\r\n</div>\r\n<div class="zt-typo-col zt-typo-col2">\r\nUse <em>&lt;dl&gt;&lt;dt&gt;...&lt;/dt&gt;&lt;/dl&gt;</em>.\r\n<dl>\r\n<dt>Suspendisse <strong>hendrerit ante</strong> vel quam.</dt>\r\n<dt>Vestibulum nisl. Integer urna.</dt>\r\n<dt>Aenean hendrerit. Maecenas condimentum.</dt>\r\n<dt>Sed odio sem, placerat faucibus.</dt>\r\n</dl>\r\n</div>\r\n</div>\r\n\r\n\r\n<p id="bullet-styles" class="zt-typo-title"><span>Bullet Styles</span></p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n\r\n<div class="zt-typo-col zt-typo-col3">\r\n<ul class="circle">\r\n<li>This is a sample <strong>Circle list</strong>.</li>\r\n<li>Condimentum quis.</li>\r\n<li>Congue Quisque augue elit dolor.</li>\r\n<li>Nunc cursus sem et sapien eget.</li>\r\n</ul>\r\n\r\n<ul class="checklist">\r\n<li>This is a sample <strong>Check list</strong>.</li>\r\n<li>Dolor Curabitur Nam Nulla augue id.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col3">\r\n<ul class="star">\r\n<li>This is a sample <strong>Star list</strong></li>\r\n<li>Dolor Curabitur Nam Nulla augue id iaculis.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n\r\n<ul class="arrow">\r\n<li>This is a sample <strong>Arrow list</strong>.</li>\r\n<li>Dolor Curabitur Nam Nulla augue id iaculis.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col3">\r\n<ul class="square">\r\n<li>This is a sample <strong>Square list</strong></li>\r\n<li>Dolor Curabitur Nam Nulla augue id iaculis.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n\r\n<ul class="plus">\r\n<li>This is a sample <strong>Plus list</strong>.</li>\r\n<li>Dolor Curabitur Nam Nulla augue id iaculis.</li>\r\n<li>Lorem et nunc congue pede auctor</li>\r\n<li>Nunc cursus sem et pretium.</li>\r\n</ul>\r\n</div>\r\n\r\n</div>\r\n\r\n<p id="content-box-styles" class="zt-typo-title"><span>Content Box Styles</span></p>\r\n\r\n<p class="zt-box-info">This is a sample clip note. Use <strong>&lt;p class="box-info"&gt;Your clip note goes here!</strong>&lt;/p&gt; to form a clip note!</p>\r\n\r\n<p class="zt-box-warning">This is a sample clip note. Use <strong>&lt;p class="box-warning"&gt;Your clip note goes here!</strong>&lt;/p&gt; to form a clip note!</p>\r\n\r\n<p class="zt-box-stickynote">This is a sample clip note. Use <strong>&lt;p class="box-stickynote"&gt;Your clip note goes here!</strong>&lt;/p&gt; to form a clip note!</p>\r\n\r\n<p class="zt-box-download">This is a sample clip note. Use <strong>&lt;p class="box-download"&gt;Your clip note goes here!</strong>&lt;/p&gt; to form a clip note!</p>\r\n\r\n\r\n<p class="zt-box-faq">This is a sample clip note. Use <strong>&lt;p class="box-faq"&gt;Your clip note goes here!</strong>&lt;/p&gt; to form a clip note!</p>\r\n\r\n\r\n<p class="zt-box-flag">This is a sample clip note. Use <strong>&lt;p class="box-flag"&gt;Your clip note goes here!</strong>&lt;/p&gt; to form a clip note!</p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n<div class="zt-typo-col zt-typo-col3">\r\n<div class="zt-box1">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box1</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n<div class="zt-box2">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box2</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n<div class="zt-box3">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box2</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col3">\r\n<div class="zt-box4">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box4</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n<div class="zt-box5">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box5</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n<div class="zt-box6">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box6</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col3">\r\n<div class="zt-box7">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box7</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n<div class="zt-box8">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box8</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n<div class="zt-box9">This is a sample block number.<br />Use <em>&lt;div class="<strong>zt-box9</strong>"&gt;Your content goes here!&lt;/div&gt;</em>!</div>\r\n</div>\r\n</div>\r\n\r\n<p id="bubble-styles" class="zt-typo-title"><span>Bubble Styles</span></p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n\r\n<div class="zt-typo-col zt-typo-col4">\r\n<div class="zt-bubble bubble1">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble1]</strong> </span></div>\r\n</div>\r\n\r\n<div class="zt-bubble bubble2">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble2]</strong> </span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col4">\r\n<div class="zt-bubble bubble3">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble3]</strong> </span></div>\r\n</div>\r\n\r\n<div class="zt-bubble bubble4">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble4]</strong> </span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col4">\r\n<div class="zt-bubble bubble5">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble5]</strong> </span></div>\r\n</div>\r\n\r\n<div class="zt-bubble bubble6">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble6]</strong> </span></div>\r\n</div>\r\n</div>\r\n\r\n<div class="zt-typo-col zt-typo-col4">\r\n<div class="zt-bubble bubble7">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble7]</strong> </span></div>\r\n</div>\r\n\r\n<div class="zt-bubble bubble8">\r\n<div class="zt-bubble-top">Praesent bibendum, lacus non dignissim ullamcorper, ligula nibh porttitor magna, id adipiscing eros neque id orci. Sed imperdiet ultrices ante, sed facilisis felis varius sit amet.</div>\r\n<div class="zt-bubble-bottom"><div class="zt-bubble-arrow"> </div><span class="zt-bubble-author">Author <strong>[Bubble8]</strong> </span></div>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<p id="blocknumber-styles" class="zt-typo-title"><span>Blocknumber Styles</span></p>\r\n\r\n<p class="zt-blocknumber blocknumber1"><span class="bignumber">01</span> Mauris turpis quam, sodales vel aliquet sed, sodales vitae felis. Donec et nulla felis. Sed semper, massa non molestie vehicula, ipsum diam mattis dolor, ac accumsan nisl tellus vitae augue. Sed non venenatis turpis!</p>\r\n<p class="zt-blocknumber blocknumber2"><span class="bignumber">02</span> Mauris turpis quam, sodales vel aliquet sed, sodales vitae felis. Donec et nulla felis. Sed semper, massa non molestie vehicula, ipsum diam mattis dolor, ac accumsan nisl tellus vitae augue. Sed non venenatis turpis!</p>\r\n<p class="zt-blocknumber blocknumber3"><span class="bignumber">03</span> Mauris turpis quam, sodales vel aliquet sed, sodales vitae felis. Donec et nulla felis. Sed semper, massa non molestie vehicula, ipsum diam mattis dolor, ac accumsan nisl tellus vitae augue. Sed non venenatis turpis!</p>\r\n<p class="zt-blocknumber blocknumber4"><span class="bignumber">04</span> Mauris turpis quam, sodales vel aliquet sed, sodales vitae felis. Donec et nulla felis. Sed semper, massa non molestie vehicula, ipsum diam mattis dolor, ac accumsan nisl tellus vitae augue. Sed non venenatis turpis!</p>\r\n\r\n<p id="blockquote-styles" class="zt-typo-title"><span>Blockquote Styles</span></p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n<div class="zt-typo-col zt-typo-col2">\r\n<blockquote class="alignleft"><p class="close">Lorem ipsum dolor sit amet consectetuer interdum pulvinar orci Nunc elit.</p></blockquote>Praesent augue libero, dignissim accumsan sagittis vitae, adipiscing non erat. Vivamus congue diam vel justo ultricies nec vestibulum lacus varius. Nullam tellus urna, scelerisque in laoreet quis, viverra lacinia neque.<p> Curabitur pretium, nunc dignissim dapibus ultricies, tortor diam tempus erat, ut gravida sem enim vitae nunc. Fusce libero justo, sodales sed vulputate sodales, euismod in lacus. Suspendisse eget magna a ante laoreet placerat ac id purus. In gravida, nibh a luctus faucibus, nunc neque pellentesque ipsum, ac cursus elit neque sit amet urna.</p>\r\n</div>\r\n<div class="zt-typo-col zt-typo-col2">\r\n<blockquote class="alignright"><p>Lorem ipsum dolor sit amet consectetuer interdum pulvinar orci Nunc elit.</p></blockquote>Praesent augue libero, dignissim accumsan sagittis vitae, adipiscing non erat. Vivamus congue diam vel justo ultricies nec vestibulum lacus varius. Nullam tellus urna, scelerisque in laoreet quis, viverra lacinia neque.<p> Curabitur pretium, nunc dignissim dapibus ultricies, tortor diam tempus erat, ut gravida sem enim vitae nunc. Fusce libero justo, sodales sed vulputate sodales, euismod in lacus. Suspendisse eget magna a ante laoreet placerat ac id purus. In gravida, nibh a luctus faucibus, nunc neque pellentesque ipsum, ac cursus elit neque sit amet urna.</p>\r\n</div>\r\n</div>\r\n\r\n<p id="dropcap-styles" class="zt-typo-title"><span>Dropcap Styles</span></p>\r\n\r\n<p>Example: <em>&lt;p class="<strong>dropcap</strong>"&gt;This is the text with dropcap symbol &lt;/p&gt;.</em></p>\r\n<p class="dropcap">This is special drop cap symbol styling for magazine / newspaper text paragraph. Vestibulum elementum consectetur nunc sed auctor. Phasellus sed nulla enim, vitae dignissim augue. Cras nunc ligula, vestibulum ac ornare et, tempus interdum odio. Morbi quam dui, hendrerit vitae ornare quis, tempor ut arcu. Donec sed quam non magna fringilla iaculis non ac arcu. Nunc vel eros sed massa fringilla accumsan nec nec orci. Integer quis lacinia sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n<p class="dropcap">Praesent adipiscing diam sed quam scelerisque scelerisque. Nullam tristique, tortor id laoreet dignissim, arcu velit porttitor sem, scelerisque tincidunt mauris metus vel mi. Praesent quis nunc tortor, dapibus tincidunt eros. Vestibulum eleifend, neque adipiscing molestie posuere, nisi odio faucibus ipsum, a pretium eros ante fringilla dui. Aliquam rhoncus nunc sed est porttitor eget varius erat suscipit. Donec dignissim convallis urna, et volutpat libero fringilla non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dictum rutrum posuere. Aenean semper porttitor felis quis suscipit. Vivamus et dolor et dolor sodales lacinia. </p>\r\n\r\n<p id="legend-styles" class="zt-typo-title"><span>Legend Styles</span></p>\r\n\r\n<div class="clearfix" style="overflow:hidden;">\r\n<div class="zt-typo-col zt-typo-col2">\r\n<div class="zt-legend legend1"><span class="legend-title">Legend style</span>\r\n<p>[<em><strong>legend1</strong></em>] Use Lorem ipsum dolor sit amet consectetuer at elit augue In lorem. Quis Donec libero at Vivamus mi fringilla neque commodo at vitae. A mauris risus consequat ac egestas netus est Vestibulum Curabitur consectetuer.</p></div>\r\n<div class="zt-legend legend2 zt-dotted"><span class="legend-title">Legend style</span>\r\n<p>[<em><strong>legend2 zt-dotted</strong></em>] Use Lorem ipsum dolor sit amet consectetuer at elit augue In lorem. Quis Donec libero at Vivamus mi fringilla neque commodo at vitae. A mauris risus consequat ac egestas netus est Vestibulum Curabitur consectetuer.</p></div>\r\n</div>\r\n<div class="zt-typo-col zt-typo-col2">\r\n<div class="zt-legend legend3 zt-rounded"><span class="legend-title">Legend style</span>\r\n<p>[<em><strong>legend3 zt-rounded</strong></em>] Use Lorem ipsum dolor sit amet consectetuer at elit augue In lorem. Quis Donec libero at Vivamus mi fringilla neque commodo at vitae. A mauris risus consequat ac egestas netus est Vestibulum.</p></div>\r\n<div class="zt-legend legend4 zt-dotted zt-rounded"><span class="legend-title">Legend style</span>\r\n<p>[<em><strong>legend4 zt-dotted zt-rounded</strong></em>] Use Lorem ipsum dolor sit amet consectetuer at elit augue In lorem. Quis Donec libero at Vivamus mi fringilla neque commodo at vitae. A mauris risus consequat ac egestas netus est Vestibulum Curabitur consectetuer.</p></div>\r\n</div>\r\n</div>\r\n\r\n<p id="table-styles" class="zt-typo-title"><span>Table Styles</span></p>\r\n\r\n<p>Example: <em>&lt;table class="<strong>plainrows</strong>"&gt;&lt;thead&gt;...&lt;/thead&gt;&lt;tbody&gt;...&lt;/tbody&gt;&lt;tfoot&gt;...&lt;/tfoot&gt;&lt;/table&gt;</em></p>\r\n<table class="plainrows" border="0" width="100%" summary="Plain Rows style">\r\n<thead> \r\n<tr>\r\n<th scope="col">Table header</th> <th scope="col">Column header 1</th> <th scope="col">Column header 2</th> <th scope="col">Column header 3</th> <th scope="col">Column header 4</th> <th scope="col">Column header 5</th>\r\n</tr>\r\n</thead> <tfoot> \r\n<tr>\r\n<th scope="row">Table footer</th>\r\n<td colspan="5">Footer data</td>\r\n</tr>\r\n</tfoot> \r\n<tbody>\r\n<tr class="odd">\r\n<th scope="row">Row header 1</th>\r\n<td>Lorem ipsum</td>\r\n<td>Dolor sit amet</td>\r\n<td>Consectetuer adipiscing</td>\r\n<td>Aliquam quis urna</td>\r\n<td>Sed felis</td>\r\n</tr>\r\n<tr>\r\n<th scope="row">Row header 2</th>\r\n<td>Nullam nec odio</td>\r\n<td>Vivamus turpis metus</td>\r\n<td>Feugiat sit amet</td>\r\n<td>Class aptent</td>\r\n<td>Ad litora torquent</td>\r\n</tr>\r\n<tr class="odd">\r\n<th scope="row">Row header 3</th>\r\n<td>Pulvinar sed</td>\r\n<td>Tincidunt sit amet</td>\r\n<td>Massa</td>\r\n<td>Dolor sit amet</td>\r\n<td>Consectetuer adipiscing</td>\r\n</tr>\r\n<tr>\r\n<th scope="row">Row header 4</th>\r\n<td>Vivamus turpis metus</td>\r\n<td>Feugiat sit amet</td>\r\n<td>Class aptent</td>\r\n<td>Ad litora torquent</td>\r\n<td>Nullam nec odio</td>\r\n</tr>\r\n<tr class="odd">\r\n<th scope="row">Row header 5</th>\r\n<td>Massa</td>\r\n<td>Dolor sit amet</td>\r\n<td>Tincidunt sit amet</td>\r\n<td>Pulvinar sed</td>\r\n<td>Consectetuer adipiscing</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Example: <em>&lt;table class="<strong>colorstripes</strong>"&gt;&lt;thead&gt;...&lt;/thead&gt;&lt;tbody&gt;...&lt;/tbody&gt;&lt;tfoot&gt;...&lt;/tfoot&gt;&lt;/table&gt;</em></p>\r\n<table class="colorstripes" border="0" width="100%" summary="Color Stripes style">\r\n<thead> \r\n<tr>\r\n<th scope="col">Table header</th> <th scope="col">Column header 1</th> <th scope="col">Column header 2</th> <th scope="col">Column header 3</th> <th scope="col">Column header 4</th> <th scope="col">Column header 5</th>\r\n</tr>\r\n</thead> <tfoot> \r\n<tr>\r\n<th scope="row">Table footer</th>\r\n<td colspan="5">Footer data</td>\r\n</tr>\r\n</tfoot> \r\n<tbody>\r\n<tr class="odd">\r\n<th scope="row">Row header 1</th>\r\n<td>Lorem ipsum</td>\r\n<td>Dolor sit amet</td>\r\n<td>Consectetuer adipiscing</td>\r\n<td>Aliquam quis urna</td>\r\n<td>Sed felis</td>\r\n</tr>\r\n<tr>\r\n<th scope="row">Row header 2</th>\r\n<td>Nullam nec odio</td>\r\n<td>Vivamus turpis metus</td>\r\n<td>Feugiat sit amet</td>\r\n<td>Class aptent</td>\r\n<td>Ad litora torquent</td>\r\n</tr>\r\n<tr class="odd">\r\n<th scope="row">Row header 3</th>\r\n<td>Pulvinar sed</td>\r\n<td>Tincidunt sit amet</td>\r\n<td>Massa</td>\r\n<td>Dolor sit amet</td>\r\n<td>Consectetuer adipiscing</td>\r\n</tr>\r\n<tr>\r\n<th scope="row">Row header 4</th>\r\n<td>Vivamus turpis metus</td>\r\n<td>Feugiat sit amet</td>\r\n<td>Class aptent</td>\r\n<td>Ad litora torquent</td>\r\n<td>Nullam nec odio</td>\r\n</tr>\r\n<tr class="odd">\r\n<th scope="row">Row header 5</th>\r\n<td>Massa</td>\r\n<td>Dolor sit amet</td>\r\n<td>Tincidunt sit amet</td>\r\n<td>Pulvinar sed</td>\r\n<td>Consectetuer adipiscing</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Example: <em>&lt;table class="<strong>greystripes</strong>"&gt;&lt;thead&gt;...&lt;/thead&gt;&lt;tbody&gt;...&lt;/tbody&gt;&lt;tfoot&gt;...&lt;/tfoot&gt;&lt;/table&gt;</em></p>\r\n<table class="greystripes" border="0" width="100%" summary="Grey Stripes style">\r\n<thead> \r\n<tr>\r\n<th scope="col">Table header</th> <th scope="col">Column header 1</th> <th scope="col">Column header 2</th> <th scope="col">Column header 3</th> <th scope="col">Column header 4</th> <th scope="col">Column header 5</th>\r\n</tr>\r\n</thead> <tfoot> \r\n<tr>\r\n<th scope="row">Table footer</th>\r\n<td colspan="5">Footer data</td>\r\n</tr>\r\n</tfoot> \r\n<tbody>\r\n<tr class="odd">\r\n<th scope="row">Row header 1</th>\r\n<td>Lorem ipsum</td>\r\n<td>Dolor sit amet</td>\r\n<td>Consectetuer adipiscing</td>\r\n<td>Aliquam quis urna</td>\r\n<td>Sed felis</td>\r\n</tr>\r\n<tr>\r\n<th scope="row">Row header 2</th>\r\n<td>Nullam nec odio</td>\r\n<td>Vivamus turpis metus</td>\r\n<td>Feugiat sit amet</td>\r\n<td>Class aptent</td>\r\n<td>Ad litora torquent</td>\r\n</tr>\r\n<tr class="odd">\r\n<th scope="row">Row header 3</th>\r\n<td>Pulvinar sed</td>\r\n<td>Tincidunt sit amet</td>\r\n<td>Massa</td>\r\n<td>Dolor sit amet</td>\r\n<td>Consectetuer adipiscing</td>\r\n</tr>\r\n<tr>\r\n<th scope="row">Row header 4</th>\r\n<td>Vivamus turpis metus</td>\r\n<td>Feugiat sit amet</td>\r\n<td>Class aptent</td>\r\n<td>Ad litora torquent</td>\r\n<td>Nullam nec odio</td>\r\n</tr>\r\n<tr class="odd">\r\n<th scope="row">Row header 5</th>\r\n<td>Massa</td>\r\n<td>Dolor sit amet</td>\r\n<td>Tincidunt sit amet</td>\r\n<td>Pulvinar sed</td>\r\n<td>Consectetuer adipiscing</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 23, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 6, '', 0, '*', ''),
(50, 148, 'Upgraders', 'upgraders', '', '<p>If you are an experienced Joomla! 1.5 user, this Joomla! site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla! has strong continuity with Joomla! 1.6 while adding enhancements.</p>\r\n', '\r\n<p>The new user manager which will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2011-07-15 00:00:36', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 5, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(51, 149, 'User', 'user-plugins', '', '<p>Default on:</p><ul><li>Joomla Help</li></ul><p>Default off:</p><p>Two new plugins are available in 1.6 but are disabled by default.</p><ul><li>Contact Creator Help<br />Creates a new linked contact record for each new user created. </li><li>Profile Help<br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create. </li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 0, '', 0, '*', ''),
(52, 150, 'Users', 'users-component', '', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged in to the site.</p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:52:55', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 151, 'Using Joomla!', 'using-joomla', '', '<p>With Joomla! You can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p><p>This section of the sample data provides you with a brief introduction to Joomla! concepts and reference material to help you understand how Joomla! works.</p><p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 7, '', '', 1, 3, '', 0, '*', ''),
(54, 152, 'Weblinks', 'weblinks', '', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:20:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 153, 'Weblinks Module', 'weblinks-module', '', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\r\n<p>{loadposition weblinksload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:45:52', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, '', '', 1, 2, '', 0, '*', ''),
(56, 154, 'Who''s Online', 'whos-online', '', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\r\n<p>{loadposition whosonlineload}</p>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:34:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 3, '', 0, '*', ''),
(57, 155, 'Wobbegone', 'wobbegone', '', '<p><img src="images/sampledata/parks/animals/180px_wobbegong.jpg" border="0" alt="Wobbegone" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/800px_wobbegong.jpg" border="0" style="vertical-align: middle; border: 0;" /></p><p>Source: http://en.wikipedia.org/wiki/File:Wobbegong.jpg</p><p>Author: Richard Ling</p><p>Rights: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(58, 156, 'Justo accumsan', 'justo-accumsan', '', '<img src="images/lastest/2.png" width="150" height="150" class="caption" />\r\nDonec laoreet, nulla quis pellentesque condimentum, nisi orci molestie leo, non luctus augue massa sed lacus. Etiam lobortis neque vitae mi lacinia at viverra elit lacinia? Donec varius condimentum enim eget aliquet. Sed eros velit, sollicitudin quis pulvinar sit amet, consequat vel nisi! Vestibulum sed tellus mi. Donec porta lacus ut orci elementum ultrices. Aenean leo lectus, sodales vel tristique a, viverra id leo. In congue, justo elementum viverra adipiscing, elit sem lacinia tortor, et bibendum sapien massa in tortor. Suspendisse massa nisi, tempor sed molestie a, fringilla id tellus. Curabitur et nibh massa, vel rutrum nisl. Praesent nec ligula velit, ut semper elit. Suspendisse nulla lectus, varius vitae rutrum a, eleifend in sem! Donec mollis nisl sed mauris venenatis fringilla! Aliquam interdum, dui vel pharetra accumsan, ipsum nulla lobortis dolor, sed cursus massa elit lacinia mauris. Morbi purus quam, fermentum eu venenatis semper, ultricies ut nisl. In hac habitasse platea dictumst.\r\nPellentesque placerat tortor massa, ac interdum nisi. Maecenas nec justo at purus condimentum malesuada id vel est? Phasellus non erat leo! Integer ligula risus, vehicula eget pretium ut, sodales in elit. Praesent lectus erat, tempus ut tempor non, auctor et nisi. Nunc sollicitudin ultrices fermentum. Etiam id dui et arcu ullamcorper mattis. Praesent eros felis, rutrum ultrices venenatis scelerisque, interdum vel velit. Integer leo turpis, ultrices vitae pulvinar nec, placerat quis felis. In molestie suscipit nunc ac semper. Fusce pharetra nulla tellus, ut elementum erat. Morbi non diam eu neque accumsan tristique?\r\nProin a leo mauris! Donec consectetur, sem blandit mattis dapibus, erat quam dignissim erat, vulputate fringilla sem sem sit amet magna! Duis cursus fermentum pellentesque. Mauris mi elit, dignissim id ornare id, scelerisque sollicitudin orci? Sed libero dolor; pharetra mattis lacinia et, condimentum vulputate enim! Nunc lacinia lectus eget velit gravida non tristique turpis pulvinar. Nunc eget magna quis eros sagittis sollicitudin. Etiam blandit, magna sit amet dictum suscipit, odio tellus elementum ipsum, nec lobortis tellus nisi vel velit. Curabitur ultricies molestie consequat. Proin tempus bibendum sollicitudin.', '', 1, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-09-26 09:36:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(59, 157, 'Wrapper Module', 'wrapper-module', '', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\r\n<p>{loadposition wrapperload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:44:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 5, '', 0, '*', ''),
(60, 158, 'News Feeds', 'news-feeds', '', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:17:08', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 159, 'Breadcrumbs Module', 'breadcrumbs-module', '', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\r\n<p>{loadposition breadcrumbsload}</p>', '', 1, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:10:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 2, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 160, 'Content', 'content-plugins', '', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p><p>Default on:</p><ul><li>Email Cloaking Help</li><li>Load Module Help</li><li>Page Break Help</li><li>Page Navigation Help</li><li>Rating Help</li></ul><p>Default off:</p><ul><li>Code Highlighting (Geshi) Help</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 7, '', '', 1, 1, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '', '<p><img src="images/sampledata/parks/landscape/120px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" /></p>', '<p><img src="images/sampledata/parks/landscape/727px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" style="vertical-align: middle;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Adam J.W.C.</p><p class="caption">License: GNU Free Documentation License</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '', '<p><img src="images/sampledata/parks/landscape/180px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" style="border: 0;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" height="375" style="vertical-align: middle; border: 0;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Ormiston_Pound.JPG</p><p class="caption">Author:</p><p class="caption">License: GNU Free Public Documentation License</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 3, '', '', 1, 0, '', 0, '*', ''),
(66, 165, 'Latest Users Module', 'latest-users-module', '', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users">Help</a></p>\r\n<p>{loadposition userslatestload}</p>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:31:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 4, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', '', 2, 0, 0, 9, '2011-01-01 00:00:01', 42, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(68, 169, 'Phasellus in porta ', 'phasellus-in-porta', '', '<img src="images/slideshow/3.png" class="caption" alt="ZooTemlate" width="150" height="150" />\r\nAenean sed orci lacus. Nam eu sem arcu. Suspendisse potenti. Ut id purus sit amet arcu vestibulum tristique? Sed non nulla ut dui pulvinar tempus. Maecenas eget nunc magna! Pellentesque pulvinar orci in massa porta eget porttitor velit bibendum. Suspendisse condimentum, orci ut molestie pharetra, nisi nunc rhoncus nulla, sit amet lacinia tellus quam non lectus. In vel orci id elit ornare vestibulum. Pellentesque tincidunt mollis ligula ac mattis.\r\n\r\nCras id justo nec quam congue rhoncus. Mauris congue justo sit amet diam fringilla ac malesuada augue scelerisque. In hac habitasse platea dictumst. Proin ut tellus porta justo fermentum rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec erat lectus, egestas quis mattis ac, mollis a sapien. Praesent vitae dui ipsum, ut pulvinar nisl. Duis tristique, massa ultricies consectetur porttitor, ligula leo viverra leo, quis viverra magna diam quis lorem. Donec dictum tempus ullamcorper. Aenean accumsan pellentesque molestie. Etiam in nunc volutpat justo gravida laoreet eu et elit. Phasellus in porta dolor. Nam dictum sodales libero at ultricies. Integer aliquam purus gravida elit interdum placerat. Suspendisse ut arcu quis mauris bibendum dapibus? Nunc ultrices nibh in lorem interdum vel lacinia dolor facilisis.\r\n\r\nFusce rhoncus, justo sit amet mollis ornare, metus orci dignissim arcu, pulvinar fermentum lectus ipsum eu justo! Nulla facilisi. Sed sollicitudin diam nec purus bibendum at porttitor justo pulvinar! Vestibulum ut malesuada leo. In hac habitasse platea dictumst. Ut hendrerit lectus vitae ligula sagittis bibendum. Donec aliquet metus a est ornare rutrum. Sed tortor dolor, vulputate venenatis congue vitae, volutpat in lacus. Nunc sodales tellus ut lectus elementum vel convallis odio blandit! Phasellus dignissim felis in felis facilisis vulputate. Donec mattis sollicitudin sem eu ultricies. Nam orci leo, vulputate tempus varius sit amet, lobortis quis ante. Morbi sagittis consequat dolor, in consequat nibh condimentum vel. Nulla enim nisl, consectetur et euismod vel, pellentesque in lectus. Sed rhoncus, mauris euismod blandit blandit, massa tortor vestibulum risus, a pellentesque diam magna in augue. Sed interdum augue non arcu vestibulum porttitor.', '', 1, 0, 0, 76, '2011-09-26 05:01:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 05:01:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 170, 'Donec in justo', 'donec-in-justo', '', '<img src="images/slideshow/2.png" width="150" height="150" class="caption" />\r\nDonec in justo lacus, non laoreet ligula. Quisque malesuada velit a mauris tempor mattis quis in augue. Cras eros erat, convallis nec laoreet ut, venenatis eget justo. Quisque ac dolor est. Vivamus convallis pulvinar nibh eu sollicitudin. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent at mauris nec arcu luctus malesuada. Sed euismod nibh suscipit quam rhoncus facilisis. Praesent vitae ante eu odio laoreet rhoncus! Sed ac mi metus, vel consectetur tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris venenatis porttitor metus eget lacinia.\r\n\r\nNam magna sem, adipiscing non eleifend eget, posuere et purus. Donec nec accumsan ligula. Nunc rhoncus mollis fermentum! Integer eu sagittis mauris! Nulla orci augue; rutrum id faucibus sit amet, molestie eu nibh. Duis ultricies ullamcorper dictum! In tempor est a purus interdum quis faucibus turpis dapibus.\r\n\r\nCurabitur massa mauris, facilisis eu fringilla id, eleifend in mauris. Aliquam dapibus sagittis neque, eu cursus lacus tristique sit amet. Nunc feugiat lobortis rhoncus. Maecenas non faucibus nunc. Nunc non velit nisl. Aliquam porta mauris non leo rhoncus commodo at vel erat. Sed augue mi, eleifend ut malesuada a, sagittis a urna. Etiam vitae arcu ac sem aliquam tempus non cursus tortor. Etiam porttitor consectetur sollicitudin.', '', 1, 0, 0, 76, '2011-09-26 05:01:56', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 05:01:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(70, 171, 'Donec laoreet', 'donec-laoreet', '', '<img src="images/slideshow/1.png" width="150" height="150" class="caption" />\r\nDonec laoreet, nulla quis pellentesque condimentum, nisi orci molestie leo, non luctus augue massa sed lacus. Etiam lobortis neque vitae mi lacinia at viverra elit lacinia? Donec varius condimentum enim eget aliquet. Sed eros velit, sollicitudin quis pulvinar sit amet, consequat vel nisi! Vestibulum sed tellus mi. Donec porta lacus ut orci elementum ultrices. Aenean leo lectus, sodales vel tristique a, viverra id leo. In congue, justo elementum viverra adipiscing, elit sem lacinia tortor, et bibendum sapien massa in tortor. Suspendisse massa nisi, tempor sed molestie a, fringilla id tellus. Curabitur et nibh massa, vel rutrum nisl. Praesent nec ligula velit, ut semper elit. Suspendisse nulla lectus, varius vitae rutrum a, eleifend in sem! Donec mollis nisl sed mauris venenatis fringilla! Aliquam interdum, dui vel pharetra accumsan, ipsum nulla lobortis dolor, sed cursus massa elit lacinia mauris. Morbi purus quam, fermentum eu venenatis semper, ultricies ut nisl. In hac habitasse platea dictumst.\r\nPellentesque placerat tortor massa, ac interdum nisi. Maecenas nec justo at purus condimentum malesuada id vel est? Phasellus non erat leo! Integer ligula risus, vehicula eget pretium ut, sodales in elit. Praesent lectus erat, tempus ut tempor non, auctor et nisi. Nunc sollicitudin ultrices fermentum. Etiam id dui et arcu ullamcorper mattis. Praesent eros felis, rutrum ultrices venenatis scelerisque, interdum vel velit. Integer leo turpis, ultrices vitae pulvinar nec, placerat quis felis. In molestie suscipit nunc ac semper. Fusce pharetra nulla tellus, ut elementum erat. Morbi non diam eu neque accumsan tristique?\r\nProin a leo mauris! Donec consectetur, sem blandit mattis dapibus, erat quam dignissim erat, vulputate fringilla sem sem sit amet magna! Duis cursus fermentum pellentesque. Mauris mi elit, dignissim id ornare id, scelerisque sollicitudin orci? Sed libero dolor; pharetra mattis lacinia et, condimentum vulputate enim! Nunc lacinia lectus eget velit gravida non tristique turpis pulvinar. Nunc eget magna quis eros sagittis sollicitudin. Etiam blandit, magna sit amet dictum suscipit, odio tellus elementum ipsum, nec lobortis tellus nisi vel velit. Curabitur ultricies molestie consequat. Proin tempus bibendum sollicitudin.', '', 1, 0, 0, 76, '2011-09-26 05:02:11', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 05:02:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 172, 'Aenean convallis', 'aenean-convallis', '', '<img src="images/slideshow/5.png" class="caption" alt="ZooTemlate" width="150" height="150" />\r\nSed porta nibh at eros auctor vitae egestas justo feugiat. Duis nunc ligula, mattis vel condimentum eget, molestie consectetur erat. Fusce at consequat lorem. Nulla ut hendrerit lacus. Sed vulputate auctor eleifend. Sed vitae dui nibh. Nulla eu ipsum nulla, id eleifend ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar, mauris a tincidunt egestas, nunc purus auctor augue, vel condimentum lectus elit at enim. In blandit neque in nunc pulvinar tempor. Quisque risus libero, sagittis non semper vel, malesuada eu velit? Aenean pulvinar venenatis elementum. Nullam dui metus, sodales a lobortis adipiscing, sagittis id nibh. Aenean convallis pulvinar nisl, id venenatis nunc tincidunt sed.\r\n\r\nAliquam eget magna urna. Mauris convallis tristique libero sit amet pretium. Sed porta; augue vitae vulputate semper, purus lorem laoreet sapien, at consectetur tortor elit sit amet tellus. Sed tristique facilisis ligula, eget viverra tellus mattis eu. Pellentesque sit amet tempus sem. Fusce a dui sit amet urna condimentum cursus a sit amet massa? Nunc viverra ullamcorper lorem vitae mollis. Aenean in libero nisl! Suspendisse potenti. Vestibulum nulla nisi, accumsan quis convallis ac, dignissim at nibh.\r\n\r\nSed placerat sollicitudin felis, eu tincidunt ante ultricies semper! In ultrices, odio dapibus imperdiet scelerisque, ligula turpis dapibus ligula, sed ultricies tortor erat in quam. Cras ultricies, enim eget aliquam gravida, felis urna semper libero, eu dapibus lectus leo non lacus. Fusce ante lorem, ultricies euismod lacinia eu, hendrerit id lectus. Donec aliquam aliquet mollis? Proin aliquet, nisi sit amet ultrices molestie, leo sapien mattis urna, sit amet tristique orci leo vitae quam. Nunc cursus gravida gravida! Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce sed lectus non nibh fringilla blandit eget vitae ipsum. Suspendisse imperdiet sapien commodo nulla sollicitudin tempus. Curabitur at augue tincidunt lorem hendrerit egestas nec eu lorem.', '', 1, 0, 0, 76, '2011-09-26 05:02:28', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 05:02:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 173, 'Cras id justo', 'cras-id-justo', '', '<img src="images/slideshow/4.png" class="caption" alt="ZooTemlate" width="150" height="150" />\r\nAenean sed orci lacus. Nam eu sem arcu. Suspendisse potenti. Ut id purus sit amet arcu vestibulum tristique? Sed non nulla ut dui pulvinar tempus. Maecenas eget nunc magna! Pellentesque pulvinar orci in massa porta eget porttitor velit bibendum. Suspendisse condimentum, orci ut molestie pharetra, nisi nunc rhoncus nulla, sit amet lacinia tellus quam non lectus. In vel orci id elit ornare vestibulum. Pellentesque tincidunt mollis ligula ac mattis.\r\n\r\nCras id justo nec quam congue rhoncus. Mauris congue justo sit amet diam fringilla ac malesuada augue scelerisque. In hac habitasse platea dictumst. Proin ut tellus porta justo fermentum rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec erat lectus, egestas quis mattis ac, mollis a sapien. Praesent vitae dui ipsum, ut pulvinar nisl. Duis tristique, massa ultricies consectetur porttitor, ligula leo viverra leo, quis viverra magna diam quis lorem. Donec dictum tempus ullamcorper. Aenean accumsan pellentesque molestie. Etiam in nunc volutpat justo gravida laoreet eu et elit. Phasellus in porta dolor. Nam dictum sodales libero at ultricies. Integer aliquam purus gravida elit interdum placerat. Suspendisse ut arcu quis mauris bibendum dapibus? Nunc ultrices nibh in lorem interdum vel lacinia dolor facilisis.\r\n\r\nFusce rhoncus, justo sit amet mollis ornare, metus orci dignissim arcu, pulvinar fermentum lectus ipsum eu justo! Nulla facilisi. Sed sollicitudin diam nec purus bibendum at porttitor justo pulvinar! Vestibulum ut malesuada leo. In hac habitasse platea dictumst. Ut hendrerit lectus vitae ligula sagittis bibendum. Donec aliquet metus a est ornare rutrum. Sed tortor dolor, vulputate venenatis congue vitae, volutpat in lacus. Nunc sodales tellus ut lectus elementum vel convallis odio blandit! Phasellus dignissim felis in felis facilisis vulputate. Donec mattis sollicitudin sem eu ultricies. Nam orci leo, vulputate tempus varius sit amet, lobortis quis ante. Morbi sagittis consequat dolor, in consequat nibh condimentum vel. Nulla enim nisl, consectetur et euismod vel, pellentesque in lectus. Sed rhoncus, mauris euismod blandit blandit, massa tortor vestibulum risus, a pellentesque diam magna in augue. Sed interdum augue non arcu vestibulum porttitor.', '', 1, 0, 0, 76, '2011-09-26 05:02:42', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 05:02:42', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 174, 'Massa venenatis', 'massa-venenatis', '', '<img src="images/lastest/3.png" width="150" height="150" class="caption" />\r\nDonec in justo lacus, non laoreet ligula. Quisque malesuada velit a mauris tempor mattis quis in augue. Cras eros erat, convallis nec laoreet ut, venenatis eget justo. Quisque ac dolor est. Vivamus convallis pulvinar nibh eu sollicitudin. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent at mauris nec arcu luctus malesuada. Sed euismod nibh suscipit quam rhoncus facilisis. Praesent vitae ante eu odio laoreet rhoncus! Sed ac mi metus, vel consectetur tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris venenatis porttitor metus eget lacinia.\r\n\r\nNam magna sem, adipiscing non eleifend eget, posuere et purus. Donec nec accumsan ligula. Nunc rhoncus mollis fermentum! Integer eu sagittis mauris! Nulla orci augue; rutrum id faucibus sit amet, molestie eu nibh. Duis ultricies ullamcorper dictum! In tempor est a purus interdum quis faucibus turpis dapibus.\r\n\r\nCurabitur massa mauris, facilisis eu fringilla id, eleifend in mauris. Aliquam dapibus sagittis neque, eu cursus lacus tristique sit amet. Nunc feugiat lobortis rhoncus. Maecenas non faucibus nunc. Nunc non velit nisl. Aliquam porta mauris non leo rhoncus commodo at vel erat. Sed augue mi, eleifend ut malesuada a, sagittis a urna. Etiam vitae arcu ac sem aliquam tempus non cursus tortor. Etiam porttitor consectetur sollicitudin.', '', 1, 0, 0, 30, '2011-09-26 09:37:19', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 09:37:19', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 175, 'Nam et purus', 'nam-et-purus', '', '<img src="images/lastest/4.png" class="caption" alt="ZooTemlate" width="150" height="150" />\r\nAenean sed orci lacus. Nam eu sem arcu. Suspendisse potenti. Ut id purus sit amet arcu vestibulum tristique? Sed non nulla ut dui pulvinar tempus. Maecenas eget nunc magna! Pellentesque pulvinar orci in massa porta eget porttitor velit bibendum. Suspendisse condimentum, orci ut molestie pharetra, nisi nunc rhoncus nulla, sit amet lacinia tellus quam non lectus. In vel orci id elit ornare vestibulum. Pellentesque tincidunt mollis ligula ac mattis.\r\n\r\nCras id justo nec quam congue rhoncus. Mauris congue justo sit amet diam fringilla ac malesuada augue scelerisque. In hac habitasse platea dictumst. Proin ut tellus porta justo fermentum rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec erat lectus, egestas quis mattis ac, mollis a sapien. Praesent vitae dui ipsum, ut pulvinar nisl. Duis tristique, massa ultricies consectetur porttitor, ligula leo viverra leo, quis viverra magna diam quis lorem. Donec dictum tempus ullamcorper. Aenean accumsan pellentesque molestie. Etiam in nunc volutpat justo gravida laoreet eu et elit. Phasellus in porta dolor. Nam dictum sodales libero at ultricies. Integer aliquam purus gravida elit interdum placerat. Suspendisse ut arcu quis mauris bibendum dapibus? Nunc ultrices nibh in lorem interdum vel lacinia dolor facilisis.\r\n\r\nFusce rhoncus, justo sit amet mollis ornare, metus orci dignissim arcu, pulvinar fermentum lectus ipsum eu justo! Nulla facilisi. Sed sollicitudin diam nec purus bibendum at porttitor justo pulvinar! Vestibulum ut malesuada leo. In hac habitasse platea dictumst. Ut hendrerit lectus vitae ligula sagittis bibendum. Donec aliquet metus a est ornare rutrum. Sed tortor dolor, vulputate venenatis congue vitae, volutpat in lacus. Nunc sodales tellus ut lectus elementum vel convallis odio blandit! Phasellus dignissim felis in felis facilisis vulputate. Donec mattis sollicitudin sem eu ultricies. Nam orci leo, vulputate tempus varius sit amet, lobortis quis ante. Morbi sagittis consequat dolor, in consequat nibh condimentum vel. Nulla enim nisl, consectetur et euismod vel, pellentesque in lectus. Sed rhoncus, mauris euismod blandit blandit, massa tortor vestibulum risus, a pellentesque diam magna in augue. Sed interdum augue non arcu vestibulum porttitor.', '', 1, 0, 0, 30, '2011-09-26 09:37:32', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 09:37:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(75, 176, 'Morbi a nibh lectus', 'morbi-a-nibh-lectus', '', '<img src="images/news/1.png" width="150" height="150" class="caption" />\r\nMorbi a nibh lectus. Sed malesuada tincidunt metus vitae egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed mollis risus et nunc tincidunt quis vestibulum odio lobortis. Curabitur sit amet tortor eget enim dictum lacinia eu tincidunt libero. Etiam nec sapien justo. Sed laoreet bibendum velit vel fringilla. Mauris fermentum tincidunt justo. Sed facilisis sem justo, sed mollis dui. Quisque in neque lectus, nec gravida tortor.\r\n\r\nVestibulum a nibh arcu! Duis et ipsum arcu, id iaculis nisi. Donec sit amet facilisis odio. Mauris ut lacus leo. Aliquam erat volutpat. Nulla malesuada malesuada feugiat. Vivamus tristique, justo eget tristique commodo, turpis nisi commodo lorem, non pharetra tortor arcu quis purus. Nulla malesuada sagittis tortor et suscipit! Mauris vitae justo nisi, eu malesuada lectus. Suspendisse potenti.\r\n\r\nNunc imperdiet tellus sit amet ipsum dictum adipiscing. Sed vel felis quis ipsum interdum commodo in ut massa. Integer lobortis, orci ut hendrerit condimentum, enim libero commodo urna, viverra posuere sapien enim commodo velit. Morbi vel metus id leo hendrerit lobortis et a augue. Vivamus nec quam dui, ut pulvinar est. Sed lorem justo, auctor vitae suscipit eget, accumsan vel tellus. Nulla consectetur molestie orci, a pulvinar mi eleifend at. Donec mollis mattis ullamcorper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed eu mauris vitae lectus rhoncus volutpat. Phasellus in dictum mauris. Quisque tincidunt egestas sollicitudin! Phasellus est lectus, hendrerit vel tempus in, imperdiet vel purus. Morbi magna neque, luctus et condimentum vel, fermentum ut arcu. In hac habitasse platea dictumst.', '', 1, 0, 0, 29, '2011-09-26 10:18:38', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-26 10:18:38', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 2),
(35, 4),
(24, 1),
(50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) Engine=MyISAM;

--
-- Dumping data for table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_extensions`
--

DROP TABLE IF EXISTS `jos_extensions`;
CREATE TABLE IF NOT EXISTS `jos_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) Engine=MyISAM  AUTO_INCREMENT=10006 ;

--
-- Dumping data for table `jos_extensions`
--

INSERT INTO `jos_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2008","author":"PHPMailer","copyright":"Copyright (C) PHPMailer.","authorEmail":"","authorUrl":"http:\\/\\/phpmailer.codeworxtech.com\\/","version":"1.7.0","description":"Classes for sending email","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2008","author":"SimplePie","copyright":"Copyright (C) 2008 SimplePie","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.0.1","description":"A PHP-Based RSS and Atom Feed Framework.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2008","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"1.7.0","description":"Classes for UTF8","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.7.0","description":"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\\n\\t","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 1, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_unread', 'module', 'mod_unread', '', 1, 1, 1, 1, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"1.7.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.7.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2011","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.3.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jos_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.7.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.7.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.7.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"1.7.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"1.7.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"July 2011","author":"Joomla!","copyright":"(C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'Joomla! Content Management System', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Content Management System","type":"package","creationDate":"2006","author":"Joomla!","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"1.7.0","description":"The Joomla! Content Management System is one of the most popular content management system''s available today.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'ZT Tools', 'plugin', 'plg_ztools', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"ZT Tools","type":"plugin","creationDate":"January 30, 2012","author":"ZooTemplate.Com","copyright":"Copyright (C) 2008 - 2012 http:\\/\\/www.ZooTemplate.Com. All rights reserved.","authorEmail":"webmaster@ZooTemplate.com","authorUrl":"www.ZooTemplate.com","version":"2.5.0","description":"Plugin ZooTools support for ZooTemplate.","group":""}', '{"gzip_browsercache":"1","gzip_lifetime":"15","components":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'ZT Headline', 'module', 'mod_zt_headline', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZT Headline","type":"module","creationDate":"July 20, 2011","author":"ZooTemplate","copyright":"Copyright (C) 2008 - 2011 http:\\/\\/www.ZooTemplate.com. All rights reserved.","authorEmail":"support@zootemplate.com","authorUrl":"www.zootemplate.com","version":"1.7.1","description":"ZT_INSTALLATION","group":""}', '{"moduleclass_sfx":"","menuitem_type":"default","link_limage":"0","input_itemid":"0","intro_length":"30","timming":"5000","trans_duration":"500","ordering":"created","sort_order":"desc","cache_time":"900","rmcache":"","layout_style":"jv_slide1","@spacer":"","jv_news_thumbs":"zt-assets\\/","jv_news_height":"360","news_thumb_width":"300","news_thumb_height":"200","news_no_item":"10","news_event_type":"mouseover","jv_news_slidebar_width":"300","news_autorun":"1","jv_eoty_thumbs":"zt-assets\\/","jveoty_width":"960","jveoty_height":"308","jveoty_autorun":"1","jveoty_no_item":"5","jveoty_enable_description":"1","jveoty_height_des":"50","jveoty_enable_link_article":"1","jveoty_enable_btn":"1","jveoty_no_slice":"15","jveoty_effect_type":"random","jv_lago_thumbs":"zt-assets\\/","jv_lago_height":"300","jv_lago_main_width":"590","jv_lago_slidebar_width":"340","lago_hitem_sliderbar":"100","lago_thumb_width":"75","lago_thumb_height":"75","lago_no_item":"5","max_show_item":"3","lago_show_next":"0","lago_enable_link_apanel":"1","jv_lago_auto":"1","lago_enable_link_artslidebar":"1","lago_animation":"jvslideshow","jv_sello2_thumbs":"zt-assets\\/","sello2_temp":"1","jv_sello2_height":"140","jv_sello2_width":"915","sello2_no_items_per_line":"2","sello2_thumb_width":"168","sello2_thumb_height":"69","sello2_no_item":"10","sello2_show_next":"1","sello2_readmore":"1","sello2_autorun":"1","jv_sello1_thumbs":"zt-assets\\/","jv_sello1_width":"980","sello1_imgslide_height":"340","sello1_imgslide_width":"980","sello1_no_item":"8","sello1_animation":"jvslideshow","sello1_thumb_width":"102","sello1_thumb_height":"38","sello1_show_next":"1","sello1_readmore":"1","jv_maju_thumbs":"zt-assets\\/","jv_maju_width":"640","jv_maju_height":"306","maju_thumb_width":"56","maju_thumb_height":"45","maju_no_item":"4","maju_animation":"jvslideshow","maju_show_next":"0","maju_readmore":"1","jv_jv7_main_thumbs":"zt-assets\\/","jv7_main_width":"644","jv7_height":"300","jv7_no_item":"10","jv7_show_next":"1","jv7_autorun":"1","jv7_readmore":"1","jv_pedon_thumbs":"zt-assets\\/","jv_pedon_width":"640","jv_pedon_height":"306","pedon_thumb_width":"84","pedon_thumb_height":"35","pedon_no_item":"6","pedon_animation":"fadeslideright","pedon_show_next":"1","pedon_readmore":"1","jv_jv9_main_thumbs":"zt-assets\\/","jv9_main_width":"960","jv9_main_height":"320","jv9_expand_width":"700","jv9_height_desc":"80","jv9_no_item":"5","jv9_eventtype":"mouseenter","zt_flow_thumbs":"zt-assets\\/","zt_flow_width":"700","zt_flow_height":"230","zt_flow_thumb_width":"350","zt_flow_thumb_height":"230","zt_flow_no_item":"6","zt_flow_duration":"4000","zt_play":"1","zt_flow_show_next":"1","zt_flow_readmore":"1","zt_iner_thumbs":"zt-assets\\/","zt_iner_width":"640","zt_iner_height":"306","iner_thumb_width":"84","iner_thumb_height":"35","iner_no_item":"6","iner_animation":"fadeslideright","iner_show_next":"1","iner_readmore":"1","zt_scroll_thumbs":"zt-assets\\/","zt_scroll_height":"240","zt_scroll_width":"900","zt_scroll_thumb_width":"200","zt_scroll_thumb_height":"85","zt_scroll_item_width":"225","scroll_no_item":"12","transitions":"Fx.Transitions.Quad.easeOut","item_display":"4","duration":"2000","zt_scroll_next":"1","zt_scroll_autorun":"1","zt_meda_thumbs":"zt-assets\\/","zt_meda_width":"915","zt_meda_thumb_width":"225","zt_meda_thumb_height":"250","meda_no_item":"12","meda_transitions":"Fx.Transitions.Quad.easeOut","meda_item_display":"4","zt_meda_readmore":"1","meda_duration":"2000","zt_meda_next":"1","zt_meda_autorun":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'ZT Latest News', 'module', 'mod_zt_latestnews', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZT Latest News","type":"module","creationDate":"January 31, 2012","author":"Zootemplate","copyright":"Copyright (c) 2008 - 2012 Zootemplate. All rights reserved.","authorEmail":"info@Zootemplate.com","authorUrl":"www.Zootemplate.com","version":"2.5.0","description":"ZT Latest News","group":""}', '{"count":"5","ordering":"create_dsc","@spacer":"","show_front":"1","columns":"3","thumb":"1","thumbWidth":"100","thumbHeight":"100","showtitle":"1","showintro":"1","intro_lenght":"200","showdate":"1","readmore":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'ZT Contact Pro', 'module', 'mod_zt_contact_pro', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZT Contact Pro","type":"module","creationDate":"October 01, 2010","author":"ZooTemplate","copyright":"Copyright (C) 2008 - 2012 http:\\/\\/www.zootemplate.com. All rights reserved.","authorEmail":"support@zootemplate.com","authorUrl":"www.zootemplate.com","version":"2.5.1","description":"ZT_INSTALLATION","group":""}', '{"item":"","recapcha":"1","publickey":"6LeJ070SAAAAAMgcNly98cGGcDuYQjkm-mpVtrZS","privatekey":"6LeJ070SAAAAANQu6i66pftCAcNNaAgFWL_5CfCl","email":"support@zootemplate.com","subject":"ZooTemplate.Com","success":"Your contact form has been submitted, we will get back to you soon!","unsuccess":"Contact form submission has been error! Please try again later!","redirect":"","formmail":"{name:title}:{name:value}\\\\n{email:title}:{email:value}\\\\n{address:title}:{address:value}\\\\n{message:title}:{message:value}","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'zt_meda25', 'template', 'zt_meda25', '', 0, 1, 1, 0, '{"legacy":false,"name":"zt_meda25","type":"template","creationDate":"02\\/06\\/2012","author":"ZooTemplate.com","copyright":"ZooTemplate","authorEmail":"support@zootemplate.com","authorUrl":"www.zootemplate.com","version":"2.5.0","description":"<h1>ZT Meda - The cool template for BIZ<\\/h1><span>Thank you very much for using our services.<br \\/>Please check our  <a href=\\"http:\\/\\/www.zootemplate.com\\" title=\\"Joomla Templates\\">Joomla Templates<\\/a> Club for any further support.<\\/span>","group":""}', '{"zt_color":"black","zt_font":"3","zt_footer":"0","zt_footer_text":"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com","zt_fontfeature":"0","zt_rtl":"0","zt_mobile":"1","menutype":"mainmenu","zt_menustyle":"mega","xdelay":"350","xduration":"350","xtransition":"Fx.Transitions.linear","fancy":"0","transition":"Fx.Transitions.linear","duration":"500","gzip_folder":"zt-assets","gzip_merge":"0","gzip_optimize_css":"0","css-exclude":"","gzip_optimize_js":"0","js-exclude":"","gzip_optimize_html":"0","zt_layout":"lcr","zt_change_color":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_filters`
--

DROP TABLE IF EXISTS `jos_finder_filters`;
CREATE TABLE IF NOT EXISTS `jos_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_finder_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links`
--

DROP TABLE IF EXISTS `jos_finder_links`;
CREATE TABLE IF NOT EXISTS `jos_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_finder_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms0`
--

DROP TABLE IF EXISTS `jos_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms0`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms1`
--

DROP TABLE IF EXISTS `jos_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms1`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms2`
--

DROP TABLE IF EXISTS `jos_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms2`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms3`
--

DROP TABLE IF EXISTS `jos_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms3`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms4`
--

DROP TABLE IF EXISTS `jos_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms4`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms5`
--

DROP TABLE IF EXISTS `jos_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms6`
--

DROP TABLE IF EXISTS `jos_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms6`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms7`
--

DROP TABLE IF EXISTS `jos_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms7`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms8`
--

DROP TABLE IF EXISTS `jos_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms8`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms9`
--

DROP TABLE IF EXISTS `jos_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_terms9`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsa`
--

DROP TABLE IF EXISTS `jos_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_termsa`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsb`
--

DROP TABLE IF EXISTS `jos_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_termsb`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsc`
--

DROP TABLE IF EXISTS `jos_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_termsc`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsd`
--

DROP TABLE IF EXISTS `jos_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_termsd`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termse`
--

DROP TABLE IF EXISTS `jos_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_termse`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsf`
--

DROP TABLE IF EXISTS `jos_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_taxonomy`
--

DROP TABLE IF EXISTS `jos_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) Engine=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_finder_taxonomy`
--

INSERT INTO `jos_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `jos_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_terms`
--

DROP TABLE IF EXISTS `jos_finder_terms`;
CREATE TABLE IF NOT EXISTS `jos_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_finder_terms`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_terms_common`
--

DROP TABLE IF EXISTS `jos_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_finder_terms_common`
--

INSERT INTO `jos_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_tokens`
--

DROP TABLE IF EXISTS `jos_finder_tokens`;
CREATE TABLE IF NOT EXISTS `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) Engine=Memory;

--
-- Dumping data for table `jos_finder_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `jos_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) Engine=Memory;

--
-- Dumping data for table `jos_finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_types`
--

DROP TABLE IF EXISTS `jos_finder_types`;
CREATE TABLE IF NOT EXISTS `jos_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_finder_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_languages`
--

DROP TABLE IF EXISTS `jos_languages`;
CREATE TABLE IF NOT EXISTS `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  KEY `idx_ordering` (`ordering`)
) Engine=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_languages`
--

INSERT INTO `jos_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `published`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) Engine=MyISAM  AUTO_INCREMENT=519 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(459, 'zootemplate', 'Article Category', 'article-category', '', 'using-joomla/extensions/modules/content-modules/article-category', 'index.php?option=com_content&view=article&id=4', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 221, 222, 0, '*', 0),
(458, 'zootemplate', 'Home Page Beez5', 'home-page-beez5', '', 'using-joomla/extensions/templates/beez5/home-page-beez5', 'index.php?option=com_content&view=featured', 'component', -2, 456, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 269, 270, 0, '*', 0),
(457, 'zootemplate', 'Typography Beez5', 'typography-beez-5', '', 'using-joomla/extensions/templates/beez5/typography-beez-5', 'index.php?option=com_content&view=article&id=49', 'component', -2, 456, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 267, 268, 0, '*', 0),
(456, 'zootemplate', 'Beez5', 'beez5', '', 'using-joomla/extensions/templates/beez5', 'index.php?option=com_content&view=category&layout=blog&id=70', 'component', -2, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 266, 271, 0, '*', 0),
(453, 'zootemplate', 'Parameters', 'parameters', '', 'using-joomla/parameters', 'index.php?option=com_content&view=article&id=32', 'component', -2, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"1","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"1","link_parent_category":"1","show_author":"1","link_author":"1","show_create_date":"1","show_modify_date":"1","show_publish_date":"1","show_item_navigation":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 298, 299, 0, '*', 0),
(452, 'zootemplate', 'Featured Contacts', 'featured-contacts', '', 'using-joomla/extensions/components/contact-component/featured-contacts', 'index.php?option=com_contact&view=featured&id=16', 'component', -2, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 161, 162, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 347, 348, 0, '*', 0),
(448, 'mainmenu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 343, 344, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 345, 346, 0, '*', 0),
(446, 'mainmenu', 'Shop', 'shop', '', 'sample-sites/shop', 'index.php?Itemid=', 'alias', -2, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"429","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 340, 341, 0, '*', 0),
(447, 'zootemplate', 'Language Switcher', 'language-switcher', '', 'using-joomla/extensions/modules/utility-modules/language-switcher', 'index.php?option=com_content&view=article&id=26', 'component', -2, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 253, 254, 0, '*', 0),
(443, 'zootemplate', 'Article Categories', 'article-categories-view', '', 'using-joomla/extensions/modules/content-modules/article-categories-view', 'index.php?option=com_content&view=article&id=3', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 219, 220, 0, '*', 0),
(455, 'mainmenu', 'Example Pages', 'example-pages', '', 'example-pages', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"268","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 349, 350, 0, '*', 0),
(438, 'mainmenu', 'Weblinks', 'weblinks', '', 'site-map/weblinks', 'index.php?option=com_weblinks&view=categories&id=0', 'component', -2, 294, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(439, 'mainmenu', 'Contacts', 'contacts', '', 'site-map/contacts', 'index.php?option=com_contact&view=categories&id=0', 'component', -2, 294, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(437, 'zootemplate', 'Getting Started', 'getting-started', '', 'getting-started', 'index.php?option=com_content&view=article&id=22', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 125, 126, 0, '*', 0),
(436, 'zootemplate', 'Getting Help', 'getting-help', '', 'using-joomla/getting-help', 'index.php?option=com_content&view=article&id=21', 'component', -2, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 300, 301, 0, '*', 0),
(444, 'top', 'Terms of Use', 'sample-sites-2', '', 'sample-sites-2', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 309, 310, 0, '*', 0),
(435, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, -5, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"0","show_pagination_results":"0","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"1","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Bussiness Joomla Templates - ZT Meda","show_page_heading":0,"page_heading":"","pageclass_sfx":" home","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 1, 2, 1, '*', 0),
(432, 'general-links', 'Login ', 'shop-login', '', 'shop-login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 333, 334, 0, '*', 0),
(433, 'general-links', 'Directions', 'directions', '', 'directions', 'index.php?option=com_content&view=article&id=13', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 335, 336, 0, '*', 0),
(431, 'general-links', 'Growers', 'growers', '', 'growers', 'index.php?option=com_content&view=category&layout=blog&id=30', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"5","num_intro_articles":"0","num_columns":"1","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_noauth":"","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 329, 330, 0, '*', 0),
(429, 'general-links', 'Joomla Templates', 'welcome', '', 'welcome', '#', 'url', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 325, 326, 0, '*', 0),
(427, 'general-links', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', 'fruit-encyclopedia', 'index.php?option=com_contact&view=categories&id=37', 'component', -2, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"","maxLevel":"-1","show_empty_categories":"1","show_description":"1","show_description_image":"1","show_cat_num_articles":"1","display_num":"","show_headings":"0","filter_field":"hide","show_pagination":"","show_noauth":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":" categories-listalphabet","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 327, 328, 0, '*', 0),
(430, 'general-links', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=category&catid=47&id=36', 'component', -2, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"0","filter_field":"hide","show_pagination":"","show_noauth":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 331, 332, 0, '*', 0),
(423, 'zootemplate', 'Typography Beez 2', 'typography-beez-2', '', 'using-joomla/extensions/templates/beez-2/typography-beez-2', 'index.php?option=com_content&view=article&id=49', 'component', -2, 419, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 261, 262, 0, '*', 0),
(424, 'zootemplate', 'Home Page Beez 2', 'home-page-beez-2', '', 'using-joomla/extensions/templates/beez-2/home-page-beez-2', 'index.php?option=com_content&view=featured', 'component', -2, 419, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 263, 264, 0, '*', 0),
(422, 'zootemplate', 'Atomic', 'atomic', '', 'using-joomla/extensions/templates/atomic', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', -2, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"2","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 272, 277, 0, '*', 0),
(419, 'zootemplate', 'Beez 2', 'beez-2', '', 'using-joomla/extensions/templates/beez-2', 'index.php?option=com_content&view=category&layout=blog&id=69', 'component', -2, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 260, 265, 0, '*', 0),
(418, 'zootemplate', 'Custom HTML', 'custom-html', '', 'using-joomla/extensions/modules/display-modules/custom-html', 'index.php?option=com_content&view=article&id=12', 'component', -2, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 243, 244, 0, '*', 0),
(417, 'zootemplate', 'Weblinks', 'weblinks', '', 'using-joomla/extensions/modules/display-modules/weblinks', 'index.php?option=com_content&view=article&id=55', 'component', -2, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 241, 242, 0, '*', 0),
(416, 'zootemplate', 'Breadcrumbs', 'breadcrumbs', '', 'using-joomla/extensions/modules/navigation-modules/breadcrumbs', 'index.php?option=com_content&view=article&id=61', 'component', -2, 415, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 205, 206, 0, '*', 0),
(415, 'zootemplate', 'Navigation Modules', 'navigation-modules', '', 'using-joomla/extensions/modules/navigation-modules', 'index.php?option=com_content&view=category&id=75', 'component', -2, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_category_title":"","page_subheading":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","list_show_title":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","filter_field":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_limit":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 202, 207, 0, '*', 0),
(414, 'zootemplate', 'Utility Modules', 'utility-modules', '', 'using-joomla/extensions/modules/utility-modules', 'index.php?option=com_content&view=category&id=67', 'component', -2, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 246, 257, 0, '*', 0),
(413, 'zootemplate', 'Display Modules', 'display-modules', '', 'using-joomla/extensions/modules/display-modules', 'index.php?option=com_content&view=category&id=66', 'component', -2, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 232, 245, 0, '*', 0),
(412, 'zootemplate', 'User Modules', 'user-modules', '', 'using-joomla/extensions/modules/user-modules', 'index.php?option=com_content&view=category&id=65', 'component', -2, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 224, 231, 0, '*', 0),
(411, 'zootemplate', 'Content Modules', 'content-modules', '', 'using-joomla/extensions/modules/content-modules', 'index.php?option=com_content&view=category&id=64', 'component', -2, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"1","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 208, 223, 0, '*', 0),
(409, 'zootemplate', 'Password Reset', 'password-reset', '', 'using-joomla/extensions/components/users-component/password-reset', 'index.php?option=com_users&view=reset', 'component', -2, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 191, 192, 0, '*', 0),
(410, 'zootemplate', 'Feed Display', 'feed-display', '', 'using-joomla/extensions/modules/display-modules/feed-display', 'index.php?option=com_content&view=article&id=16', 'component', -2, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 237, 238, 0, '*', 0),
(405, 'zootemplate', 'Registration Form', 'registration-form', '', 'using-joomla/extensions/components/users-component/registration-form', 'index.php?option=com_users&view=registration', 'component', -2, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 187, 188, 0, '*', 0),
(406, 'zootemplate', 'Username Reminder Request', 'username-reminder', '', 'using-joomla/extensions/components/users-component/username-reminder', 'index.php?option=com_users&view=remind', 'component', -2, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 189, 190, 0, '*', 0),
(403, 'zootemplate', 'User Profile', 'user-profile', '', 'using-joomla/extensions/components/users-component/user-profile', 'index.php?option=com_users&view=profile', 'component', -2, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 183, 184, 0, '*', 0),
(404, 'zootemplate', 'Edit User Profile', 'edit-user-profile', '', 'using-joomla/extensions/components/users-component/edit-user-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', -2, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 185, 186, 0, '*', 0),
(400, 'support-and-help', 'Scenery', 'scenery', '', 'image-gallery/scenery', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', -2, 244, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 322, 323, 0, 'en-GB', 0),
(399, 'support-and-help', 'Ask in forum', 'animals', '', 'animals', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 365, 366, 0, 'en-GB', 0),
(516, 'zootemplate', 'Validate License', '2011-09-27-02-54-05', '', '2011-09-27-02-54-05', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 379, 380, 0, '*', 0),
(326, 'zootemplate', 'Related Items', 'related-items', '', 'using-joomla/extensions/modules/content-modules/related-items', 'index.php?option=com_content&view=article&id=37', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 217, 218, 0, '*', 0),
(325, 'zootemplate', 'Archive', 'archive', '', 'using-joomla/extensions/modules/content-modules/archive', 'index.php?option=com_content&view=article&id=2', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 215, 216, 0, '*', 0),
(323, 'zootemplate', 'User', 'user', '', 'using-joomla/extensions/plugins/user', 'index.php?option=com_content&view=article&id=51', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 292, 293, 0, '*', 0),
(324, 'zootemplate', 'Footer', 'footer', '', 'using-joomla/extensions/modules/display-modules/footer', 'index.php?option=com_content&view=article&id=19', 'component', -2, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 239, 240, 0, '*', 0),
(322, 'zootemplate', 'Search', 'search', '', 'using-joomla/extensions/plugins/search', 'index.php?option=com_content&view=article&id=41', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 290, 291, 0, '*', 0),
(321, 'zootemplate', 'Editors Extended', 'editors-extended', '', 'using-joomla/extensions/plugins/editors-extended', 'index.php?option=com_content&view=article&id=15', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 288, 289, 0, '*', 0),
(320, 'zootemplate', 'Editors', 'editors', '', 'using-joomla/extensions/plugins/editors', 'index.php?option=com_content&view=article&id=14', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 286, 287, 0, '*', 0),
(319, 'zootemplate', 'Content', 'content', '', 'using-joomla/extensions/plugins/content', 'index.php?option=com_content&view=article&id=62', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 284, 285, 0, '*', 0),
(318, 'zootemplate', 'Authentication', 'authentication', '', 'using-joomla/extensions/plugins/authentication', 'index.php?option=com_content&view=article&id=5', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 282, 283, 0, '*', 0),
(317, 'zootemplate', 'System', 'system', '', 'using-joomla/extensions/plugins/system', 'index.php?option=com_content&view=article&id=46', 'component', -2, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 294, 295, 0, '*', 0),
(309, 'zootemplate', 'News Flash', 'news-flash', '', 'using-joomla/extensions/modules/content-modules/news-flash', 'index.php?option=com_content&view=article&id=31', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 211, 212, 0, '*', 0),
(307, 'zootemplate', 'Random Image', 'random-image', '', 'using-joomla/extensions/modules/display-modules/random-image', 'index.php?option=com_content&view=article&id=36', 'component', -2, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 233, 234, 0, '*', 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(305, 'zootemplate', 'Banner', 'banner', '', 'using-joomla/extensions/modules/display-modules/banner', 'index.php?option=com_content&view=article&id=7', 'component', -2, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 235, 236, 0, '*', 0),
(306, 'zootemplate', 'Search', 'search', '', 'using-joomla/extensions/modules/utility-modules/search', 'index.php?option=com_content&view=article&id=40', 'component', -2, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 251, 252, 0, '*', 0),
(304, 'zootemplate', 'Statistics', 'statistics', '', 'using-joomla/extensions/modules/utility-modules/statistics', 'index.php?option=com_content&view=article&id=44', 'component', -2, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 249, 250, 0, '*', 0),
(303, 'zootemplate', 'Menu', 'menu', '', 'using-joomla/extensions/modules/navigation-modules/menu', 'index.php?option=com_content&view=article&id=29', 'component', -2, 415, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 203, 204, 0, '*', 0),
(302, 'zootemplate', 'Most Read', 'most-read', '', 'using-joomla/extensions/modules/content-modules/most-read', 'index.php?option=com_content&view=article&id=30', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 209, 210, 0, '*', 0),
(301, 'zootemplate', 'Who''s Online', 'whos-online', '', 'using-joomla/extensions/modules/user-modules/whos-online', 'index.php?option=com_content&view=article&id=56', 'component', -2, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 227, 228, 0, '*', 0),
(300, 'zootemplate', 'Latest Users', 'latest-users', '', 'using-joomla/extensions/modules/user-modules/latest-users', 'index.php?option=com_content&view=article&id=66', 'component', -2, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 225, 226, 0, '*', 0),
(445, 'mainmenu', 'Parks', 'parks', '', 'sample-sites/parks', 'index.php?Itemid=', 'alias', -2, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"243","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 338, 339, 0, '*', 0),
(294, 'mainmenu', 'Site Map', 'site-map', '', 'site-map', 'index.php?option=com_content&view=article&id=42', 'component', -2, 1, 1, 22, -4, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 3, 10, 0, '*', 0),
(290, 'mainmenu', 'Articles', 'articles', '', 'site-map/articles', 'index.php?option=com_content&view=categories&id=0', 'component', -2, 294, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 83, 92, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 84, 85, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 86, 87, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 88, 89, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 90, 91, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 105, 110, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 106, 107, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 108, 109, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 111, 116, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 112, 113, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 114, 115, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 117, 122, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 118, 119, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 120, 121, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 133, 134, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 123, 124, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 127, 132, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 128, 129, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 130, 131, 0, '*', 1),
(464, 'top', 'Home', 'home', '', 'home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 303, 304, 0, '*', 0),
(227, 'zootemplate', 'Weblinks Categories', 'weblinks-categories', '', 'using-joomla/extensions/components/weblinks-component/weblinks-categories', 'index.php?option=com_weblinks&view=categories&id=18', 'component', -2, 265, 5, 21, 6, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 169, 170, 0, '*', 0),
(233, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, -3, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(229, 'zootemplate', 'Single Contact', 'single-contact', '', 'using-joomla/extensions/components/contact-component/single-contact', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_crumb":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 159, 160, 0, '*', 0),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 313, 314, 0, '*', 0),
(296, 'support-and-help', 'About Us', 'park-links', '', 'park-links', '#', 'url', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 367, 368, 0, 'en-GB', 0),
(515, 'zootemplate', 'Sitemap', '2011-09-27-02-53-50', '', '2011-09-27-02-53-50', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 377, 378, 0, '*', 0),
(234, 'support-and-help', 'Frequently Asked Questions', 'park-blog', '', 'park-blog', '#', 'url', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 317, 318, 0, 'en-GB', 0),
(517, 'zootemplate', 'About Us', '2011-09-27-02-55-21', '', '2011-09-27-02-55-21', '#', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 381, 382, 0, '*', 0),
(518, 'support-and-help', 'Contact Us', '2011-09-27-03-06-25', '', '2011-09-27-03-06-25', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 383, 384, 0, '*', 0),
(238, 'mainmenu', 'Sample Sites', 'sample-sites', '', 'sample-sites', 'index.php?option=com_content&view=article&id=38', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 337, 342, 0, '*', 0),
(207, 'top', 'ZooTemplate', 'joomlaorg', '', 'joomlaorg', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 311, 312, 0, '*', 0),
(242, 'support-and-help', 'Contact Us', 'write-a-blog-post', '', 'write-a-blog-post', '', 'url', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 319, 320, 0, 'en-GB', 0),
(243, 'support-and-help', 'Tutorials', 'parks-home', '', 'parks-home', '#', 'url', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 315, 316, 0, 'en-GB', 0),
(244, 'support-and-help', 'Blog', 'image-gallery', '', 'image-gallery', '#', 'url', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 321, 324, 0, 'en-GB', 0),
(512, 'zootemplate', 'Privacy Policy', '2011-09-27-02-53-08', '', '2011-09-27-02-53-08', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 371, 372, 0, '*', 0),
(513, 'zootemplate', 'Copyright', '2011-09-27-02-53-21', '', '2011-09-27-02-53-21', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 373, 374, 0, '*', 0),
(514, 'zootemplate', 'Affiliate Program', '2011-09-27-02-53-36', '', '2011-09-27-02-53-36', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 375, 376, 0, '*', 0),
(270, 'zootemplate', 'Contact Component', 'contact-component', '', 'using-joomla/extensions/components/contact-component', 'index.php?option=com_content&view=article&id=9', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 154, 163, 0, '*', 0),
(279, 'zootemplate', 'The Joomla! Community', 'the-joomla-community', '', 'the-joomla-community', 'index.php?option=com_content&view=article&id=47', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 307, 308, 0, '*', 0),
(249, 'zootemplate', 'Submit a Weblink', 'submit-a-weblink', '', 'using-joomla/extensions/components/weblinks-component/submit-a-weblink', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', -2, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 165, 166, 0, '*', 0),
(251, 'zootemplate', 'Contact Categories', 'contact-categories', '', 'using-joomla/extensions/components/contact-component/contact-categories', 'index.php?option=com_contact&view=categories&id=16', 'component', -2, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 155, 156, 0, '*', 0),
(252, 'zootemplate', 'News Feed Categories', 'new-feed-categories', '', 'using-joomla/extensions/components/news-feeds-component/new-feed-categories', 'index.php?option=com_newsfeeds&view=categories&id=0', 'component', -2, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"Because this links to the root category the \\"uncategorised\\" category is displayed. ","maxLevel":"-1","show_empty_categories":"1","show_description":"1","show_description_image":"1","show_cat_num_articles":"1","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 173, 174, 0, '*', 0),
(253, 'zootemplate', 'News Feed Category', 'news-feed-category', '', 'using-joomla/extensions/components/news-feeds-component/news-feed-category', 'index.php?option=com_newsfeeds&view=category&id=17', 'component', -2, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 177, 178, 0, '*', 0),
(254, 'zootemplate', 'Single News Feed', 'single-news-feed', '', 'using-joomla/extensions/components/news-feeds-component/single-news-feed', 'index.php?option=com_newsfeeds&view=newsfeed&id=4', 'component', -2, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 175, 176, 0, '*', 0),
(255, 'zootemplate', 'Search', 'search', '', 'using-joomla/extensions/components/search-component/search', 'index.php?option=com_search&view=search', 'component', -2, 276, 5, 19, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"1","show_date":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 195, 196, 0, '*', 0),
(256, 'zootemplate', 'Archived Articles', 'archived-articles', '', 'using-joomla/extensions/components/content-component/archived-articles', 'index.php?option=com_content&view=archive', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"orderby_sec":"","order_date":"","display_num":"","filter_field":"","show_category":"1","link_category":"1","show_title":"1","link_titles":"1","show_intro":"1","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, '*', 0),
(257, 'zootemplate', 'Single Article', 'single-article', '', 'using-joomla/extensions/components/content-component/single-article', 'index.php?option=com_content&view=article&id=6', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 139, 140, 0, '*', 0),
(278, 'zootemplate', 'The Joomla! Project', 'the-joomla-project', '', 'the-joomla-project', 'index.php?option=com_content&view=article&id=48', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"1","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 305, 306, 0, '*', 0),
(259, 'zootemplate', 'Article Category Blog', 'article-category-blog', '', 'using-joomla/extensions/components/content-component/article-category-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 143, 144, 0, '*', 0),
(260, 'zootemplate', 'Article Category List', 'article-category-list', '', 'using-joomla/extensions/components/content-component/article-category-list', 'index.php?option=com_content&view=category&id=19', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 145, 146, 0, '*', 0),
(262, 'zootemplate', 'Featured Articles', 'featured-articles', '', 'using-joomla/extensions/components/content-component/featured-articles', 'index.php?option=com_content&view=featured', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 147, 148, 0, '*', 0),
(263, 'zootemplate', 'Submit Article', 'submit-article', '', 'using-joomla/extensions/components/content-component/submit-article', 'index.php?option=com_content&view=form&layout=edit', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 152, 0, '*', 0),
(265, 'zootemplate', 'Weblinks Component', 'weblinks-component', '', 'using-joomla/extensions/components/weblinks-component', 'index.php?option=com_content&view=article&id=54', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 164, 171, 0, '*', 0),
(266, 'zootemplate', 'Content Component', 'content-component', '', 'using-joomla/extensions/components/content-component', 'index.php?option=com_content&view=article&id=10', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"article-allow_ratings":"","article-allow_comments":"","show_category":"","link_category":"","show_title":"","link_titles":"","show_intro":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 138, 153, 0, '*', 0),
(267, 'zootemplate', 'News Feeds Component', 'news-feeds-component', '', 'using-joomla/extensions/components/news-feeds-component', 'index.php?option=com_content&view=article&id=60', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"Newsfeeds Categories View ","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 172, 179, 0, '*', 0),
(268, 'zootemplate', 'Components', 'components', '', 'using-joomla/extensions/components', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', -2, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"0","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 137, 200, 0, '*', 0),
(277, 'zootemplate', 'Using Extensions', 'extensions', '', 'using-joomla/extensions', 'index.php?option=com_content&view=categories&id=20', 'component', -2, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"","maxLevelcat":"1","show_empty_categories_cat":"1","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"0","drill_down_layout":"0","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 136, 297, 0, '*', 0),
(271, 'zootemplate', 'Users Component', 'users-component', '', 'using-joomla/extensions/components/users-component', 'index.php?option=com_content&view=article&id=52', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 180, 193, 0, '*', 0),
(272, 'zootemplate', 'Article Categories', 'article-categories', '', 'using-joomla/extensions/components/content-component/article-categories', 'index.php?option=com_content&view=categories&id=14', 'component', -2, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 141, 142, 0, '*', 0),
(273, 'zootemplate', 'Administrator Components', 'administrator-components', '', 'using-joomla/extensions/components/administrator-components', 'index.php?option=com_content&view=article&id=1', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 198, 199, 0, '*', 0),
(274, 'zootemplate', 'Weblinks Single Category', 'weblinks-single-category', '', 'using-joomla/extensions/components/weblinks-component/weblinks-single-category', 'index.php?option=com_weblinks&view=category&id=32', 'component', -2, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 167, 168, 0, '*', 0),
(275, 'zootemplate', 'Contact Single Category', 'contact-single-category', '', 'using-joomla/extensions/components/contact-component/contact-single-category', 'index.php?option=com_contact&view=category&catid=26&id=36', 'component', -2, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 158, 0, '*', 0),
(276, 'zootemplate', 'Search Component', 'search-component', '', 'using-joomla/extensions/components/search-component', 'index.php?option=com_content&view=article&id=39', 'component', -2, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 194, 197, 0, '*', 0),
(280, 'zootemplate', 'Using Joomla!', 'using-joomla', '', 'using-joomla', 'index.php?option=com_content&view=article&id=53', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 302, 0, '*', 0),
(281, 'zootemplate', 'Modules', 'modules', '', 'using-joomla/extensions/modules', 'index.php?option=com_content&view=category&id=22', 'component', -2, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 201, 258, 0, '*', 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(282, 'zootemplate', 'Templates', 'templates', '', 'using-joomla/extensions/templates', 'index.php?option=com_content&view=category&id=23', 'component', -2, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"2","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"0","filter_field":"hide","show_headings":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","show_pagination":"0","show_pagination_results":"","show_title":"1","link_titles":"1","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Templates","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 259, 278, 0, '*', 0),
(283, 'zootemplate', 'Languages', 'languages', '', 'using-joomla/extensions/languages', 'index.php?option=com_content&view=category&layout=blog&id=24', 'component', -2, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 279, 280, 0, '*', 0),
(284, 'zootemplate', 'Plugins', 'plugins', '', 'using-joomla/extensions/plugins', 'index.php?option=com_content&view=category&layout=blog&id=25', 'component', -2, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 281, 296, 0, '*', 0),
(285, 'zootemplate', 'Typography Atomic', 'typography-atomic', '', 'using-joomla/extensions/templates/atomic/typography-atomic', 'index.php?option=com_content&view=article&id=49', 'component', -2, 422, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 273, 274, 0, '*', 0),
(316, 'zootemplate', 'Home Page Atomic', 'home-page-atomic', '', 'using-joomla/extensions/templates/atomic/home-page-atomic', 'index.php?option=com_content&view=featured', 'component', -2, 422, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 275, 276, 0, '*', 0),
(313, 'zootemplate', 'Wrapper', 'wrapper', '', 'using-joomla/extensions/modules/utility-modules/wrapper', 'index.php?option=com_content&view=article&id=59', 'component', -2, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 255, 256, 0, '*', 0),
(312, 'zootemplate', 'Login', 'login', '', 'using-joomla/extensions/modules/user-modules/login', 'index.php?option=com_content&view=article&id=28', 'component', -2, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 229, 230, 0, '*', 0),
(311, 'zootemplate', 'Syndicate', 'syndicate', '', 'using-joomla/extensions/modules/utility-modules/syndicate', 'index.php?option=com_content&view=article&id=45', 'component', -2, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 247, 248, 0, '*', 0),
(310, 'zootemplate', 'Latest Articles', 'latest-articles', '', 'using-joomla/extensions/modules/content-modules/latest-articles', 'index.php?option=com_content&view=article&id=27', 'component', -2, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 213, 214, 0, '*', 0),
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 385, 0, '*', 0),
(402, 'zootemplate', 'Login Form', 'login-form', '', 'using-joomla/extensions/components/users-component/login-form', 'index.php?option=com_users&view=login', 'component', -2, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 181, 182, 0, '*', 0),
(462, 'general-links', 'Add a recipe', 'add-a-recipe', '', 'add-a-recipe', 'index.php?option=com_content&view=form&layout=edit', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 351, 352, 0, '*', 0),
(463, 'general-links', 'Recipes', 'recipes', '', 'recipes', 'index.php?option=com_content&view=category&id=76', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"0","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","list_show_title":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","filter_field":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_limit":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 353, 354, 0, '*', 0),
(465, 'mainmenu', 'Joomla! Stuff', 'joomla-stuff', '', 'joomla-stuff', 'index.php?option=com_content&view=article&id=24', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"2","mega_group":"0","mega_width":"400px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 13, 40, 0, '*', 0),
(466, 'mainmenu', 'Features', 'features', '', 'features', 'index.php?option=com_content&view=article&id=68', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"2","mega_group":"0","mega_width":"400px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 41, 66, 0, '*', 0),
(467, 'mainmenu', 'Typography', 'typography', '', 'typography', 'index.php?option=com_content&view=article&id=49', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 67, 68, 0, '*', 0),
(468, 'mainmenu', 'Join Club Now', 'services', '', '2011-05-16-04-11-11/services', 'http://www.zootemplate.com/Legal/Joomla-Templates-Club.html', 'url', 1, 484, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"2","mega_group":"0","mega_width":"300px","mega_colw":"150px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 70, 71, 0, '*', 0),
(487, 'mainmenu', 'Forums', '2011-05-16-07-24-28', '', '2011-05-16-04-11-11/2011-05-16-07-24-28', 'http://www.zootemplate.com/forums/', 'url', 1, 484, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 72, 73, 0, '*', 0),
(488, 'mainmenu', 'Blog', '2011-05-16-07-24-51', '', '2011-05-16-04-11-11/2011-05-16-07-24-51', 'http://www.zootemplate.com/blog.html', 'url', 1, 484, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 74, 75, 0, '*', 0),
(469, 'mainmenu', 'Demo', '2011-05-16-03-46-34', '', '2011-05-16-03-46-34', 'http://www.zootemplate.com/demo', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 81, 82, 0, '*', 0),
(470, 'mainmenu', 'Proin aliquet', 'proin-aliquet', '', 'joomla-stuff/joomla-overview/proin-aliquet', 'index.php?option=com_content&view=article&id=24', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"0","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 23, 24, 0, '*', 0),
(471, 'mainmenu', 'Member Area', 'member-area', '', 'joomla-stuff/member-area', 'index.php?option=com_content&view=article&id=46', 'component', -2, 465, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"Lorem Ipsum is not simply...","mega_cols":"1","mega_group":"1","mega_width":"200px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 32, 35, 0, '*', 0),
(472, 'mainmenu', 'Aenean euismod', 'aenean-euismod', '', 'joomla-stuff/joomla-overview/aenean-euismod', 'index.php?option=com_content&view=article&id=21', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 27, 28, 0, '*', 0),
(473, 'mainmenu', 'Joomla! Overview', 'joomla-overview', '', 'joomla-stuff/joomla-overview', 'index.php?option=com_content&view=article&id=48', 'component', 1, 465, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"1","mega_width":"200px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 14, 31, 0, '*', 0),
(474, 'mainmenu', 'Aliquet eleifend', 'aliquet-eleifend', '', 'joomla-stuff/joomla-overview/aliquet-eleifend', 'index.php?option=com_content&view=article&id=9', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 29, 30, 0, '*', 0),
(475, 'mainmenu', 'Vivamus at', 'vivamus-at', '', 'joomla-stuff/joomla-overview/vivamus-at', 'index.php?option=com_content&view=article&id=23', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 17, 18, 0, '*', 0),
(476, 'mainmenu', 'Praesent iaculis', 'praesent-iaculis', '', 'joomla-stuff/joomla-overview/praesent-iaculis', 'index.php?option=com_content&view=article&id=64', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 15, 16, 0, '*', 0),
(477, 'mainmenu', 'Vehicula velit', 'vehicula-velit', '', 'joomla-stuff/joomla-overview/vehicula-velit', 'index.php?option=com_content&view=article&id=27', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 25, 26, 0, '*', 0),
(478, 'mainmenu', 'Login', 'login', '', 'joomla-stuff/member-area/login', 'index.php?option=com_users&view=login', 'component', -2, 471, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"mod","mega_module_style":"xhtml","mega_subcontent_mod_modules":["16"]}', 33, 34, 0, '*', 0),
(479, 'mainmenu', 'Nulla facilisi', 'nulla-facilisi', '', 'joomla-stuff/joomla-overview/nulla-facilisi', 'index.php?option=com_content&view=article&id=72', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 19, 20, 0, '*', 0),
(480, 'mainmenu', 'Proin molestie', 'proin-molestie', '', 'joomla-stuff/joomla-overview/proin-molestie', 'index.php?option=com_content&view=article&id=69', 'component', 1, 473, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 21, 22, 0, '*', 0),
(481, 'mainmenu', 'Layout', 'layout', '', 'features/layout', 'index.php?option=com_content&view=article&id=8', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"1","mega_width":"200px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 42, 51, 0, '*', 0),
(482, 'mainmenu', 'MenuStyle', 'menustyle', '', 'features/menustyle', 'index.php?option=com_content&view=article&id=10', 'component', -2, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"Comes from a line in...","mega_cols":"1","mega_group":"1","mega_width":"150px","mega_colw":"150px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 60, 65, 0, '*', 0),
(483, 'mainmenu', 'Languages', 'languages', '', 'features/languages', 'index.php?option=com_content&view=article&id=22', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"1","mega_width":"200px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 52, 59, 0, '*', 0),
(484, 'mainmenu', 'Joomla Templates', '2011-05-16-04-11-11', '', '2011-05-16-04-11-11', 'http://www.zootemplate.com/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"188px","mega_colw":"188px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 69, 80, 0, '*', 0),
(485, 'mainmenu', 'Magento Themes', '2011-05-16-04-12-28', '', '2011-05-16-04-12-28', 'http://www.9magentothemes.com/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"185px","mega_colw":"185px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 93, 104, 0, '*', 0),
(486, 'mainmenu', 'Left + Content + Right', 'left-content-right', '', 'features/layout/left-content-right', 'index.php?option=com_content&view=article&id=24', 'component', 1, 481, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 43, 44, 0, '*', 0),
(489, 'mainmenu', 'Get Support', '2011-05-16-07-25-31', '', '2011-05-16-04-11-11/2011-05-16-07-25-31', 'http://www.zootemplate.com/Contact-Us/Support.html', 'url', 1, 484, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 76, 77, 0, '*', 0),
(490, 'mainmenu', 'Downloads', '2011-05-16-07-25-59', '', '2011-05-16-04-11-11/2011-05-16-07-25-59', 'http://www.zootemplate.com/forums/downloads.php', 'url', 1, 484, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 78, 79, 0, '*', 0),
(491, 'mainmenu', 'Sign Up', '2011-05-16-07-26-56', '', '2011-05-16-04-12-28/2011-05-16-07-26-56', 'http://www.9magentothemes.com/Magento-Themes/Magento-Themes-Club.html', 'url', 1, 485, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 94, 95, 0, '*', 0),
(492, 'mainmenu', 'Services', '2011-05-16-07-27-18', '', '2011-05-16-04-12-28/2011-05-16-07-27-18', 'http://www.9magentothemes.com/Magento-Services.html', 'url', 1, 485, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 96, 97, 0, '*', 0),
(493, 'mainmenu', 'Forums', '2011-05-16-07-27-38', '', '2011-05-16-04-12-28/2011-05-16-07-27-38', 'http://www.9magentothemes.com/forums', 'url', 1, 485, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 98, 99, 0, '*', 0),
(494, 'mainmenu', 'Demo', '2011-05-16-07-27-57', '', '2011-05-16-04-12-28/2011-05-16-07-27-57', 'http://www.9magentothemes.com/demo', 'url', 1, 485, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 100, 101, 0, '*', 0),
(495, 'mainmenu', 'Downloads', '2011-05-16-07-28-40', '', '2011-05-16-04-12-28/2011-05-16-07-28-40', 'http://www.9magentothemes.com/forums/downloads.php', 'url', 1, 485, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 102, 103, 0, '*', 0),
(496, 'mainmenu', 'Left + Content', 'left--content', '', 'features/layout/left--content', 'index.php?option=com_content&view=article&id=68', 'component', 1, 481, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 45, 46, 0, '*', 0),
(497, 'mainmenu', 'Content + Right', 'content--right', '', 'features/layout/content--right', 'index.php?option=com_content&view=article&id=72', 'component', 1, 481, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 47, 48, 0, '*', 0),
(498, 'mainmenu', 'Full Content', 'full-content', '', 'features/layout/full-content', 'index.php?option=com_content&view=article&id=72', 'component', 1, 481, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 49, 50, 0, '*', 0),
(499, 'mainmenu', 'Module Positions', 'module-positions', '', 'features/languages/module-positions', 'index.php?option=com_content&view=article&id=47', 'component', 1, 483, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 57, 58, 0, '*', 0),
(500, 'mainmenu', 'MegaMenu', '2011-05-16-07-31-11', '', 'features/menustyle/2011-05-16-07-31-11', 'index.php/?menustyle=mega', 'url', -2, 482, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 61, 62, 0, '*', 0),
(501, 'mainmenu', 'MooMenu', '2011-05-16-07-31-33', '', 'features/menustyle/2011-05-16-07-31-33', 'index.php/?menustyle=moo', 'url', -2, 482, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 63, 64, 0, '*', 0),
(502, 'mainmenu', 'RTL Language', '2011-05-16-07-32-12', '', 'features/languages/2011-05-16-07-32-12', 'index.php/?direction=rtl', 'url', 1, 483, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 53, 54, 0, '*', 0),
(503, 'mainmenu', 'LTR Language', '2011-05-16-07-32-36', '', 'features/languages/2011-05-16-07-32-36', 'index.php/?direction=ltr', 'url', 1, 483, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 55, 56, 0, '*', 0),
(504, 'mainmenu', 'Feature Product', '2011-08-26-04-54-44', '', 'joomla-stuff/2011-08-26-04-54-44', '#', 'url', 1, 465, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"1","mega_width":"200px","mega_colw":"200px","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 36, 39, 0, '*', 0),
(505, 'mainmenu', 'Feature Product', '2011-08-26-05-01-15', '', 'joomla-stuff/2011-08-26-04-54-44/2011-08-26-05-01-15', '', 'url', 1, 504, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"mod","mega_module_style":"ztmenu","mega_subcontent_mod_modules":["89"]}', 37, 38, 0, '*', 0),
(507, 'general-links', 'eCommerce', '2011-09-26-10-27-53', '', '2011-09-26-10-27-53', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 357, 358, 0, '*', 0),
(506, 'general-links', 'WordPress', '2011-09-26-10-27-36', '', '2011-09-26-10-27-36', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 355, 356, 0, '*', 0),
(508, 'general-links', 'Magento Themes ', '2011-09-26-10-28-05', '', '2011-09-26-10-28-05', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 359, 360, 0, '*', 0),
(509, 'general-links', 'Forums', '2011-09-26-10-28-16', '', '2011-09-26-10-28-16', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 361, 362, 0, '*', 0),
(510, 'general-links', 'PSD Templates ', '2011-09-26-10-28-35', '', '2011-09-26-10-28-35', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 363, 364, 0, '*', 0),
(511, 'zootemplate', 'Terms of Use', '2011-09-27-02-52-55', '', '2011-09-27-02-52-55', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 116, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"mega_showtitle":"1","mega_desc":"","mega_cols":"1","mega_group":"0","mega_width":"","mega_colw":"","mega_colxw":"","mega_class":"","mega_subcontent":"0","mega_module_style":"xhtml"}', 369, 370, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) Engine=MyISAM  AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'top', 'Top', 'Links for major types of users'),
(4, 'zootemplate', 'ZooTemplate ', 'ZooTemplate '),
(5, 'support-and-help', 'Support and Help', 'Support and Help'),
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(7, 'general-links', 'General Links ', 'Menu for the sample shop site.');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) Engine=MyISAM  AUTO_INCREMENT=102 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 'Book Store', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Books!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(19, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 2, 1, '{"menutype":"usermenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(20, 'Top', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"top","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","maxdepth":"10","window_open":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(22, 'Australian Parks ', '', '', 2, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"support-and-help","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, 'en-GB'),
(23, 'About Joomla!', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"zootemplate","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(68, 'Feature Product', '', '<div class="items">\r\n<div class="item"><img src="images/products/1.png" class="caption" width="40" height="40" /><div class="title">Nec metus nisl quam</div><div class="date">June 12th, 2015</div></div>\r\n<div class="item"><img src="images/products/2.png" class="caption" width="40" height="40" /><div class="title">Aliquam erat volutp</div><div class="date">June 13th, 2015</div></div>\r\n<div class="item"><img src="images/products/3.png" class="caption" width="40" height="40" /><div class="title">Bibendum dapibusqua</div><div class="date">June 14th, 2015</div></div>\r\n<div class="item"><img src="images/products/4.png" class="caption" width="40" height="40" /><div class="title">Etiam feugiat enims</div><div class="date">June 15th, 2015</div></div>\r\n</div>', 2, 'featureproduct', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 'Extensions', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"zootemplate","startLevel":"1","endLevel":"6","showAllChildren":"0","tag_id":"","class_sfx":"-menu","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(25, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 'This Site', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, 'archiveload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'What’s News ', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"6","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":" menu2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, 'articlespopularload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["26","29"],"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, 'feeddisplayload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash: Latest', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["20"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"horizontal","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(32, 'News Flash: Random', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"1","ordering":"rand()","layout":"vertical","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 1, 'randomimageload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, 'relateditemsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, 'searchload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Statistics', '', '', 1, 'statisticsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Users Latest', '', '', 1, 'userslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","linktowhat":"0","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Who''s Online', '', '', 1, 'whosonlineload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","linktowhat":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, 'wrapperload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Footer', '', '', 1, 'footerload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_footer', 1, 1, '{"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Login', '', '', 1, 'loginload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(45, 'Menu', '', '', 1, 'menuload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 'User 2', '', 'Curabitur mi tortor; volutpat malesuada ultricies sit amet, tempus sit amet ligula? Sed aliquam, elit eget aliquam iaculis...', 1, 'muser2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 'Weblinks', '', '', 1, 'weblinksload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, 'breadcrumbsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, 'articlescategoriesload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","maxlevel":"0","count":"0","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(56, 'Banners', '', '', 1, 'bannersload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(57, 'Fruit Shop', '', '', 3, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"general-links","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 'Social', '', '<ul>\r\n<li class="title">Social Social:</li>\r\n<li class="facebook"><img src="images/f.png" /></li>\r\n<li class="twiter"><img src="images/t.png" /></li>\r\n<li class="google"><img src="images/g.png" /></li>\r\n<li class="myspace"><img src="images/myspace.png" /></li>\r\n<li class="addin"><img src="images/addin.png" /></li>\r\n<li class="flirk"><img src="images/flirck.png" /></li>\r\n<li class="ins"><img src="images/in.png" /></li>\r\n</ul>', 1, 'col4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(62, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Search', '', '', 1, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'Signup Form', '', '<div class="info">Create an account you can download more than 200 templates for <a href="http://www.joomla.org/">Joomla</a> templates and extensions at <a href="http://www.zootemplate.com/">zootemplate!</a></div>\r\n<div class="link"><a class="readon4" href="http://www.zootemplate.com/forums/downloads.php"><span>Download!</span></a><a class="readon2" href="http://www.zootemplate.com/Legal/Joomla-Templates-Club.html"><span>Signin Now</span></a></div>', 1, 'col1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" free","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Articles Category', '', '', 1, 'articlescategoryload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(71, 'Top Menu (Atomic Template)', '', '', 1, 'atomic-topmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"zootemplate","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 'Monthly Newsletter', '', '<p>Subscribe to our monthly newsletter to be updated with our new offers.</p>\r\n<input type="text" id="your_name" maxlength="30" size="30" name="your_name" title="Name Invalid" value="Your name*" class="inputbox" />\r\n<input type="text" id="your_name" maxlength="30" size="30" name="your_email" title="Name Invalid" value="Your email*" class="inputbox" />\r\n<input type="submit" value="Subscribe" class="button" name="task_Subscribe" />', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'User 4', '', 'Quisque interdum interdum mauris ac iaculis. Proin tortor velit, ornare at dictum quis, laoreet vel dolor. In sed scelerisque metus.', 1, 'muser4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'User 3', '', 'Etiam laoreet risus ligula, at pellentesque magna. In euismod dapibus auctor. Quisque non est at risus dictum egestas.', 1, 'muser3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(83, 'User 5', '', 'Pellentesque sodales justo id nisi pretium placerat. Nam malesuada fermentum mauris sed porta donec eget arcu ut quam tincidunt vulputate fusce...', 0, 'user5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'User 1', '', 'In vitae mauris sem, quis ornare ipsum. Phasellus eu est condimentum sapien sodales mattis. Vivamus vitae...', 1, 'muser1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(79, 'User 1', '', '<img src="images/card/1.png" class="caption" />\r\nCras eu felis mi, nec tristique elit. Suspendisse at dui nec sem faucibus consequat quisque nec augue porttitor orci fermentum malesuada...', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" icon1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(80, 'User 2', '', '<img src="images/card/2.png" class="caption" />\r\nNulla ante massa, dictum vel adipiscing vel, feugiat quis erat. Curabitur nec justo dui? Nam eros ipsum, vulputate vel facilisis ultricies rutrum non orci...', 0, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" icon2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(81, 'User 3', '', '<img src="images/card/3.png" class="caption" />\r\nInteger eros dolor, placerat in tempus venenatis, fermentum eget arcu! Nunc venenatis eros in ipsum mattis euismod nullam molestie...', 0, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" icon3","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(82, 'User 4', '', '<img src="images/card/4.png" class="caption" />\r\nQuisque convallis, quam rutrum bibendum euismod, justo ante malesuada ligula, sed pellentesque velit mi eu erat fusce at ligula sit amet...', 0, 'user4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":" icon4","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 'Shop', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"2","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Shop!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(78, 'Contribute', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Contribute! ","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(84, 'User 6', '', 'Integer dapibus pellentesque dui, sed suscipit sem lacinia ac. Aenean eu velit in neque adipiscing pellentesque aenean quis dictum lorem sed ullamcorper...', 0, 'user6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(85, 'User 7', '', 'Ut sagittis rutrum aliquam. Maecenas neque nunc, porta et euismod in, aliquet et velit. Maecenas eget pretium ligula. Suspendisse quis nibh tortor...', 0, 'user7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(86, 'User 8', '', 'Praesent auctor, odio non rutrum lacinia, ligula risus ullamcorper orci in vestibulum nisl neque et est. Ut nec elit libero. Aliquam leo ligula, aliquet nec rutrum...', 0, 'user8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(87, 'ZT SlideShow', '', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zt_headline', 1, 0, '{"moduleclass_sfx":"","catid":["76"],"menuitem_type":"default","link_limage":"0","input_itemid":"0","intro_length":"30","timming":"5000","trans_duration":"500","ordering":"ordering","sort_order":"desc","cache_time":"900","layout_style":"jv_slide4","jv_news_thumbs":"zt-assets\\/","jv_news_height":"360","news_thumb_width":"300","news_thumb_height":"200","news_no_item":"10","news_event_type":"mouseover","news_autorun":"1","jv_eoty_thumbs":"zt-assets\\/","jveoty_width":"960","jveoty_height":"308","jveoty_autorun":"1","jveoty_no_item":"5","jveoty_enable_description":"1","jveoty_height_des":"50","jveoty_enable_link_article":"1","jveoty_enable_btn":"1","jveoty_no_slice":"15","jveoty_effect_type":"random","jv_lago_thumbs":"zt-assets\\/","jv_lago_height":"300","jv_lago_main_width":"590","jv_lago_slidebar_width":"340","lago_hitem_sliderbar":"100","lago_thumb_width":"75","lago_thumb_height":"75","lago_no_item":"5","max_show_item":"3","lago_show_next":"0","lago_enable_link_apanel":"1","jv_lago_auto":"1","lago_enable_link_artslidebar":"1","lago_animation":"jvslideshow","jv_sello2_thumbs":"zt-assets\\/","sello2_temp":"zt_sello2","jv_sello2_height":"415","jv_sello2_width":"960","sello2_no_items_per_line":"1","sello2_thumb_width":"465","sello2_thumb_height":"390","sello2_no_item":"10","sello2_show_next":"1","sello2_readmore":"1","sello2_autorun":"1","jv_sello1_thumbs":"zt-assets\\/","jv_sello1_width":"980","sello1_imgslide_height":"340","sello1_imgslide_width":"980","sello1_no_item":"8","sello1_animation":"jvslideshow","sello1_thumb_width":"102","sello1_thumb_height":"38","sello1_show_next":"1","sello1_readmore":"1","jv_maju_thumbs":"zt-assets\\/","jv_maju_width":"640","jv_maju_height":"306","maju_thumb_width":"56","maju_thumb_height":"45","maju_no_item":"4","maju_animation":"jvslideshow","maju_show_next":"0","maju_readmore":"1","jv_jv7_main_thumbs":"zt-assets\\/","jv7_main_width":"644","jv7_height":"300","jv7_no_item":"10","jv7_show_next":"1","jv7_autorun":"1","jv7_readmore":"1","jv_pedon_thumbs":"zt-assets\\/","jv_pedon_width":"640","jv_pedon_height":"306","pedon_thumb_width":"84","pedon_thumb_height":"35","pedon_no_item":"6","pedon_animation":"fadeslideright","pedon_show_next":"1","pedon_readmore":"1","jv_jv9_main_thumbs":"zt-assets\\/","jv9_main_width":"960","jv9_main_height":"320","jv9_expand_width":"700","jv9_height_desc":"80","jv9_no_item":"5","jv9_eventtype":"mouseenter","zt_flow_thumbs":"zt-assets\\/","zt_flow_width":"700","zt_flow_height":"230","zt_flow_thumb_width":"350","zt_flow_thumb_height":"230","zt_flow_no_item":"6","zt_flow_duration":"4000","zt_play":"1","zt_flow_show_next":"1","zt_flow_readmore":"1","zt_iner_thumbs":"zt-assets\\/","zt_iner_width":"640","zt_iner_height":"306","iner_thumb_width":"84","iner_thumb_height":"35","iner_no_item":"6","iner_animation":"fadeslideright","iner_show_next":"1","iner_readmore":"1","zt_scroll_thumbs":"zt-assets\\/","zt_scroll_height":"240","zt_scroll_width":"900","zt_scroll_thumb_width":"200","zt_scroll_thumb_height":"85","zt_scroll_item_width":"225","scroll_no_item":"12","transitions":"Fx.Transitions.Quad.easeOut","item_display":"4","duration":"2000","zt_scroll_next":"1","zt_scroll_autorun":"1","zt_meda_thumbs":"zt-assets\\/","zt_meda_width":"915","zt_meda_thumb_width":"225","zt_meda_thumb_height":"250","meda_no_item":"12","meda_transitions":"Fx.Transitions.Quad.easeOut","meda_item_display":"4","zt_meda_readmore":"1","meda_duration":"2000","zt_meda_next":"1","zt_meda_autorun":"1"}', 0, '*'),
(88, 'ZT HeadLine', '', '', 1, 'col2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zt_headline', 1, 1, '{"moduleclass_sfx":"","catid":["30"],"menuitem_type":"default","link_limage":"0","input_itemid":"0","intro_length":"10","timming":"5000","trans_duration":"500","ordering":"created","sort_order":"desc","cache_time":"900","layout_style":"jv_slide13","jv_news_thumbs":"zt-assets\\/","jv_news_height":"360","news_thumb_width":"300","news_thumb_height":"200","news_no_item":"10","news_event_type":"mouseover","news_autorun":"1","jv_eoty_thumbs":"zt-assets\\/","jveoty_width":"960","jveoty_height":"308","jveoty_autorun":"1","jveoty_no_item":"5","jveoty_enable_description":"1","jveoty_height_des":"50","jveoty_enable_link_article":"1","jveoty_enable_btn":"1","jveoty_no_slice":"15","jveoty_effect_type":"random","jv_lago_thumbs":"zt-assets\\/","jv_lago_height":"300","jv_lago_main_width":"590","jv_lago_slidebar_width":"340","lago_hitem_sliderbar":"100","lago_thumb_width":"75","lago_thumb_height":"75","lago_no_item":"5","max_show_item":"3","lago_show_next":"0","lago_enable_link_apanel":"1","jv_lago_auto":"1","lago_enable_link_artslidebar":"1","lago_animation":"jvslideshow","jv_sello2_thumbs":"zt-assets\\/","sello2_temp":"zt_sello2","jv_sello2_height":"140","jv_sello2_width":"915","sello2_no_items_per_line":"2","sello2_thumb_width":"168","sello2_thumb_height":"69","sello2_no_item":"10","sello2_show_next":"1","sello2_readmore":"1","sello2_autorun":"1","jv_sello1_thumbs":"zt-assets\\/","jv_sello1_width":"980","sello1_imgslide_height":"340","sello1_imgslide_width":"980","sello1_no_item":"8","sello1_animation":"jvslideshow","sello1_thumb_width":"102","sello1_thumb_height":"38","sello1_show_next":"1","sello1_readmore":"1","jv_maju_thumbs":"zt-assets\\/","jv_maju_width":"640","jv_maju_height":"306","maju_thumb_width":"56","maju_thumb_height":"45","maju_no_item":"4","maju_animation":"jvslideshow","maju_show_next":"0","maju_readmore":"1","jv_jv7_main_thumbs":"zt-assets\\/","jv7_main_width":"644","jv7_height":"300","jv7_no_item":"10","jv7_show_next":"1","jv7_autorun":"1","jv7_readmore":"1","jv_pedon_thumbs":"zt-assets\\/","jv_pedon_width":"640","jv_pedon_height":"306","pedon_thumb_width":"84","pedon_thumb_height":"35","pedon_no_item":"6","pedon_animation":"fadeslideright","pedon_show_next":"1","pedon_readmore":"1","jv_jv9_main_thumbs":"zt-assets\\/","jv9_main_width":"960","jv9_main_height":"320","jv9_expand_width":"700","jv9_height_desc":"80","jv9_no_item":"5","jv9_eventtype":"mouseenter","zt_flow_thumbs":"zt-assets\\/","zt_flow_width":"700","zt_flow_height":"230","zt_flow_thumb_width":"350","zt_flow_thumb_height":"230","zt_flow_no_item":"6","zt_flow_duration":"4000","zt_play":"1","zt_flow_show_next":"1","zt_flow_readmore":"1","zt_iner_thumbs":"zt-assets\\/","zt_iner_width":"640","zt_iner_height":"306","iner_thumb_width":"84","iner_thumb_height":"35","iner_no_item":"6","iner_animation":"fadeslideright","iner_show_next":"1","iner_readmore":"1","zt_scroll_thumbs":"zt-assets\\/","zt_scroll_height":"240","zt_scroll_width":"900","zt_scroll_thumb_width":"200","zt_scroll_thumb_height":"85","zt_scroll_item_width":"225","scroll_no_item":"12","transitions":"Fx.Transitions.Quad.easeOut","item_display":"4","duration":"2000","zt_scroll_next":"1","zt_scroll_autorun":"1","zt_meda_thumbs":"zt-assets\\/","zt_meda_width":"960","zt_meda_thumb_width":"299","zt_meda_thumb_height":"248","meda_no_item":"3","meda_transitions":"Fx.Transitions.Quad.easeOut","meda_item_display":"3","zt_meda_readmore":"0","meda_duration":"2000","zt_meda_next":"0","zt_meda_autorun":"0"}', 0, '*'),
(89, 'Feature Product', '', '<div class="items">\r\n<div class="item"><img src="images/products/1.png" class="caption" width="40" height="40" /><div class="title">Nec metus nisl quam</div><div class="date">June 12th, 2015</div></div>\r\n<div class="item"><img src="images/products/2.png" class="caption" width="40" height="40" /><div class="title">Aliquam erat volutp</div><div class="date">June 13th, 2015</div></div>\r\n<div class="item"><img src="images/products/3.png" class="caption" width="40" height="40" /><div class="title">Bibendum dapibusqua</div><div class="date">June 14th, 2015</div></div>\r\n<div class="item"><img src="images/products/4.png" class="caption" width="40" height="40" /><div class="title">Etiam feugiat enims</div><div class="date">June 15th, 2015</div></div>\r\n</div>', 1, 'featureproduct', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'ZT Latest News', '', '', 1, 'col3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zt_latestnews', 1, 0, '{"count":"3","ordering":"c_dsc","show_front":"1","catid":"29","columns":"3","thumb":"1","thumbWidth":"285","thumbHeight":"140","showtitle":"1","showintro":"1","intro_lenght":"230","showdate":"0","readmore":"1","moduleclass_sfx":""}', 0, '*'),
(91, 'Footer Menu', '', '', 0, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"top","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(92, 'General Links ', '', '', 1, 'user9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"general-links","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" title2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(93, 'Support and Help', '', '', 1, 'user10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"support-and-help","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" title2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(94, 'ZooTemplate ', '', '', 1, 'user11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"zootemplate","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" title2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(95, 'Contact Us', '', '', 1, 'user12', 42, '2012-02-06 09:59:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zt_contact_pro', 1, 1, '{"recapcha":"0","publickey":"6LeJ070SAAAAAMgcNly98cGGcDuYQjkm-mpVtrZS","privatekey":"6LeJ070SAAAAANQu6i66pftCAcNNaAgFWL_5CfCl","email":"support@zootemplate.com","subject":"ZooTemplate.Com","success":"Your contact form has been submitted, we will get back to you soon!","unsuccess":"Contact form submission has been error! Please try again later!","redirect":"","formmail":"{name:title}:{name:value}\\\\n{email:title}:{email:value}\\\\n{address:title}:{address:value}\\\\n{message:title}:{message:value}","moduleclass_sfx":" title2","cache":"1","cache_time":"900"}', 0, '*'),
(96, 'Member Login', '', '', 0, 'mlogin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(97, 'Search', '', '', 0, 'msearch', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(98, 'Login Form', '', '', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(99, 'Who''s Online', '', '', 4, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_whosonline', 1, 1, '{"showmode":"0","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(100, 'Other Resources', '', '', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"33","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'Joomla Link', '', '', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 101),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 205),
(16, 435),
(17, 0),
(18, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 435),
(28, 486),
(28, 496),
(28, 499),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 311),
(38, 300),
(39, 301),
(40, 313),
(41, 324),
(44, 312),
(45, 303),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 435),
(49, 417),
(52, 416),
(56, 305),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 0),
(61, 443),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 435),
(65, 499),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 201),
(72, 207),
(72, 227),
(72, 229),
(72, 234),
(72, 242),
(72, 243),
(72, 244),
(72, 249),
(72, 251),
(72, 252),
(72, 253),
(72, 254),
(72, 255),
(72, 256),
(72, 257),
(72, 259),
(72, 260),
(72, 262),
(72, 263),
(72, 265),
(72, 266),
(72, 267),
(72, 268),
(72, 270),
(72, 271),
(72, 272),
(72, 273),
(72, 274),
(72, 275),
(72, 276),
(72, 277),
(72, 278),
(72, 279),
(72, 280),
(72, 281),
(72, 282),
(72, 283),
(72, 284),
(72, 285),
(72, 296),
(72, 300),
(72, 301),
(72, 302),
(72, 303),
(72, 304),
(72, 305),
(72, 306),
(72, 307),
(72, 309),
(72, 310),
(72, 311),
(72, 312),
(72, 313),
(72, 316),
(72, 317),
(72, 318),
(72, 319),
(72, 320),
(72, 321),
(72, 322),
(72, 323),
(72, 324),
(72, 325),
(72, 326),
(72, 399),
(72, 400),
(72, 402),
(72, 403),
(72, 404),
(72, 405),
(72, 406),
(72, 409),
(72, 410),
(72, 411),
(72, 412),
(72, 413),
(72, 414),
(72, 415),
(72, 416),
(72, 417),
(72, 418),
(72, 419),
(72, 422),
(72, 423),
(72, 424),
(72, 427),
(72, 429),
(72, 430),
(72, 431),
(72, 432),
(72, 433),
(72, 435),
(72, 436),
(72, 437),
(72, 443),
(72, 444),
(72, 447),
(72, 449),
(72, 450),
(72, 452),
(72, 453),
(72, 456),
(72, 457),
(72, 458),
(72, 459),
(72, 462),
(72, 463),
(72, 464),
(72, 465),
(72, 466),
(72, 468),
(72, 470),
(72, 472),
(72, 473),
(72, 474),
(72, 475),
(72, 476),
(72, 477),
(72, 479),
(72, 480),
(72, 481),
(72, 483),
(72, 484),
(72, 485),
(72, 486),
(72, 487),
(72, 488),
(72, 489),
(72, 490),
(72, 491),
(72, 492),
(72, 493),
(72, 494),
(72, 495),
(72, 497),
(72, 499),
(72, 502),
(72, 503),
(72, 504),
(72, 505),
(73, 435),
(74, 435),
(75, 435),
(76, 285),
(76, 316),
(77, 0),
(78, 0),
(79, 499),
(80, 499),
(81, 499),
(82, 499),
(83, 499),
(84, 499),
(85, 499),
(86, 499),
(87, 435),
(87, 499),
(88, 435),
(88, 499),
(89, 0),
(90, 435),
(90, 499),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 201),
(98, 207),
(98, 234),
(98, 243),
(98, 244),
(98, 296),
(98, 399),
(98, 429),
(98, 444),
(98, 449),
(98, 450),
(98, 464),
(98, 465),
(98, 466),
(98, 468),
(98, 470),
(98, 472),
(98, 473),
(98, 474),
(98, 475),
(98, 476),
(98, 477),
(98, 479),
(98, 480),
(98, 481),
(98, 483),
(98, 484),
(98, 485),
(98, 486),
(98, 487),
(98, 488),
(98, 489),
(98, 490),
(98, 491),
(98, 492),
(98, 493),
(98, 494),
(98, 495),
(98, 496),
(98, 499),
(98, 502),
(98, 503),
(98, 504),
(98, 505),
(98, 506),
(98, 507),
(98, 508),
(98, 509),
(98, 510),
(98, 511),
(98, 512),
(98, 513),
(98, 514),
(98, 515),
(98, 516),
(98, 518),
(99, 201),
(99, 207),
(99, 234),
(99, 243),
(99, 244),
(99, 296),
(99, 399),
(99, 429),
(99, 444),
(99, 449),
(99, 450),
(99, 464),
(99, 465),
(99, 466),
(99, 468),
(99, 470),
(99, 472),
(99, 473),
(99, 474),
(99, 475),
(99, 476),
(99, 477),
(99, 479),
(99, 480),
(99, 481),
(99, 483),
(99, 484),
(99, 485),
(99, 486),
(99, 487),
(99, 488),
(99, 489),
(99, 490),
(99, 491),
(99, 492),
(99, 493),
(99, 494),
(99, 495),
(99, 497),
(99, 499),
(99, 502),
(99, 503),
(99, 504),
(99, 505),
(99, 506),
(99, 507),
(99, 508),
(99, 509),
(99, 510),
(99, 511),
(99, 512),
(99, 513),
(99, 514),
(99, 515),
(99, 516),
(99, 518),
(100, 201),
(100, 207),
(100, 234),
(100, 243),
(100, 244),
(100, 296),
(100, 399),
(100, 429),
(100, 444),
(100, 449),
(100, 450),
(100, 464),
(100, 465),
(100, 466),
(100, 468),
(100, 470),
(100, 472),
(100, 473),
(100, 474),
(100, 475),
(100, 476),
(100, 477),
(100, 479),
(100, 480),
(100, 481),
(100, 483),
(100, 484),
(100, 485),
(100, 486),
(100, 487),
(100, 488),
(100, 489),
(100, 490),
(100, 491),
(100, 492),
(100, 493),
(100, 494),
(100, 495),
(100, 497),
(100, 499),
(100, 502),
(100, 503),
(100, 504),
(100, 505),
(100, 506),
(100, 507),
(100, 508),
(100, 509),
(100, 510),
(100, 511),
(100, 512),
(100, 513),
(100, 514),
(100, 515),
(100, 516),
(100, 518),
(101, 201),
(101, 207),
(101, 234),
(101, 243),
(101, 244),
(101, 296),
(101, 399),
(101, 429),
(101, 444),
(101, 449),
(101, 450),
(101, 464),
(101, 465),
(101, 466),
(101, 468),
(101, 470),
(101, 472),
(101, 473),
(101, 474),
(101, 475),
(101, 476),
(101, 477),
(101, 479),
(101, 480),
(101, 481),
(101, 483),
(101, 484),
(101, 485),
(101, 486),
(101, 487),
(101, 488),
(101, 489),
(101, 490),
(101, 491),
(101, 492),
(101, 493),
(101, 494),
(101, 495),
(101, 497),
(101, 499),
(101, 502),
(101, 503),
(101, 504),
(101, 505),
(101, 506),
(101, 507),
(101, 508),
(101, 509),
(101, 510),
(101, 511),
(101, 512),
(101, 513),
(101, 514),
(101, 515),
(101, 516),
(101, 518);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) Engine=MyISAM  AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_overrider`
--

DROP TABLE IF EXISTS `jos_overrider`;
CREATE TABLE IF NOT EXISTS `jos_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_overrider`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_redirect_links`
--

DROP TABLE IF EXISTS `jos_redirect_links`;
CREATE TABLE IF NOT EXISTS `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(150) NOT NULL,
  `new_url` varchar(150) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) Engine=MyISAM  AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_redirect_links`
--

INSERT INTO `jos_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://192.168.1.159/zt_meda17/index.php?option=com_content&view=article&id=68&Itemid=467', '', 'http://192.168.1.159/zt_meda17/', '', 0, '2011-09-26 04:14:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_schemas`
--

DROP TABLE IF EXISTS `jos_schemas`;
CREATE TABLE IF NOT EXISTS `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_schemas`
--

INSERT INTO `jos_schemas` (`extension_id`, `version_id`) VALUES
(700, '1.7.0-2011-06-06-2');

-- --------------------------------------------------------

--
-- Table structure for table `jos_template_styles`
--

DROP TABLE IF EXISTS `jos_template_styles`;
CREATE TABLE IF NOT EXISTS `jos_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) Engine=MyISAM  AUTO_INCREMENT=117 ;

--
-- Dumping data for table `jos_template_styles`
--

INSERT INTO `jos_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default-Fruit Shop', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Matuna Market ","sitedescription":"Fruit Shop Sample Site","navposition":"left","html5":"0"}'),
(114, 'beez_20', 0, '0', 'Beez2 - Parks Site', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"","sitetitle":"Australian Parks","sitedescription":"Parks Sample Site","navposition":"center","templatecolor":"nature"}'),
(116, 'zt_meda25', 0, '1', 'zt_meda25 - Default', '{"zt_color":"default","zt_font":"3","zt_footer":"0","zt_footer_text":"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com","zt_fontfeature":"1","zt_rtl":"0","zt_mobile":"1","menutype":"mainmenu","zt_menustyle":"mega","xdelay":"350","xduration":"350","xtransition":"Fx.Transitions.linear","fancy":"0","transition":"Fx.Transitions.linear","duration":"500","gzip_folder":"zt-assets","gzip_merge":"1","gzip_optimize_css":"1","css-exclude":[""],"gzip_optimize_js":"1","js-exclude":[""],"gzip_optimize_html":"1","zt_layout":"-clr","zt_change_color":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_updates`
--

DROP TABLE IF EXISTS `jos_updates`;
CREATE TABLE IF NOT EXISTS `jos_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) Engine=MyISAM COMMENT='Available Updates' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_updates`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_update_categories`
--

DROP TABLE IF EXISTS `jos_update_categories`;
CREATE TABLE IF NOT EXISTS `jos_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) Engine=MyISAM COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_update_sites`
--

DROP TABLE IF EXISTS `jos_update_sites`;
CREATE TABLE IF NOT EXISTS `jos_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) Engine=MyISAM  COMMENT='Update Sites' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_update_sites`
--

INSERT INTO `jos_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_update_sites_extensions`
--

DROP TABLE IF EXISTS `jos_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) Engine=MyISAM COMMENT='Links extensions to update sites';

--
-- Dumping data for table `jos_update_sites_extensions`
--

INSERT INTO `jos_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700);

-- --------------------------------------------------------

--
-- Table structure for table `jos_usergroups`
--

DROP TABLE IF EXISTS `jos_usergroups`;
CREATE TABLE IF NOT EXISTS `jos_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) Engine=MyISAM  AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_usergroups`
--

INSERT INTO `jos_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(12, 2, 15, 16, 'Customer Group (Example)'),
(10, 3, 12, 13, 'Shop Suppliers (Example)');

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_notes`
--

DROP TABLE IF EXISTS `jos_user_notes`;
CREATE TABLE IF NOT EXISTS `jos_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) Engine=MyISAM AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_user_notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_user_profiles`
--

DROP TABLE IF EXISTS `jos_user_profiles`;
CREATE TABLE IF NOT EXISTS `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) Engine=MyISAM COMMENT='Simple user profile storage table';

--
-- Dumping data for table `jos_user_profiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_user_usergroup_map`
--

DROP TABLE IF EXISTS `jos_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) Engine=MyISAM;

--
-- Dumping data for table `jos_user_usergroup_map`
--

INSERT INTO `jos_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jos_viewlevels`
--

DROP TABLE IF EXISTS `jos_viewlevels`;
CREATE TABLE IF NOT EXISTS `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) Engine=MyISAM  AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_viewlevels`
--

INSERT INTO `jos_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) Engine=MyISAM  AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 32, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', '<p>Home of Joomla!</p>', '0000-00-00 00:00:00', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 33, 0, 'php.net', 'php', 'http://www.php.net', '<p>The language that Joomla! is developed in</p>', '0000-00-00 00:00:00', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 33, 0, 'MySQL', 'mysql', 'http://www.mysql.com', '<p>The database that Joomla! uses</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 32, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', '<p>Home of OSM</p>', '0000-00-00 00:00:00', 11, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 32, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', '<p>Joomla! Forums</p>', '0000-00-00 00:00:00', 4, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 33, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 32, 0, 'Baw Baw National Park', 'baw-baw-national-park', 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","width":"","height":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-09-27 03:57:34', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 31, 0, 'Kakadu', 'kakadu', 'http://www.environment.gov.au/parks/kakadu/index.html', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 32, 0, 'Pulu Keeling', 'pulu-keeling', 'http://www.environment.gov.au/parks/cocos/index.html', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","width":"","height":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-09-27 03:57:45', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '2010-07-10 23:44:03', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
