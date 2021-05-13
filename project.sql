-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 01:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AccountID` int(14) NOT NULL,
  `RegisterID` int(14) NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Detail` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DateAccount` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `RegisterID` int(11) DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Detail` longtext COLLATE utf8_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hhh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `RegisterID` int(11) DEFAULT NULL,
  `Username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(2, 'model_def_application::register.register', '{\"uid\":\"application::register.register\",\"collectionName\":\"register\",\"kind\":\"collectionType\",\"info\":{\"name\":\"register\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Password\":{\"type\":\"password\",\"required\":true},\"Email\":{\"type\":\"string\",\"private\":false,\"required\":true,\"unique\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(3, 'model_def_application::sample.sample', '{\"uid\":\"application::sample.sample\",\"collectionName\":\"samples\",\"kind\":\"collectionType\",\"info\":{\"name\":\"sample\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"price\":{\"type\":\"float\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(4, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(5, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(6, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(7, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}', 'object', NULL, NULL),
(8, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(9, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(10, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(11, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(12, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(13, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::application::register.register', '{\"uid\":\"application::register.register\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Email\"],\"edit\":[[{\"name\":\"Password\",\"size\":6},{\"name\":\"Email\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(19, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(20, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(21, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(22, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(23, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(24, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(25, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', '', ''),
(26, 'model_def_application::accounts.accounts', '{\"uid\":\"application::accounts.accounts\",\"collectionName\":\"accounts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"accounts\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"RegisterID\":{\"type\":\"integer\"},\"Name\":{\"type\":\"string\",\"required\":true},\"surname\":{\"type\":\"string\",\"required\":true},\"Detail\":{\"type\":\"text\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(28, 'model_def_application::xcxzczx.xcxzczx', '{\"uid\":\"application::xcxzczx.xcxzczx\",\"collectionName\":\"xcxzczxes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"xcxzczx\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(29, 'model_def_application::product.product', '{\"uid\":\"application::product.product\",\"collectionName\":\"products\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Name\":{\"type\":\"string\"},\"Description\":{\"type\":\"string\"},\"Price\":{\"type\":\"decimal\"},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(31, 'model_def_application::category.category', '{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Name\":{\"type\":\"string\"},\"products\":{\"collection\":\"product\",\"via\":\"category\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(33, 'model_def_application::order.order', '{\"uid\":\"application::order.order\",\"collectionName\":\"orders\",\"kind\":\"collectionType\",\"info\":{\"name\":\"order\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"item\":{\"type\":\"json\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(35, 'model_def_application::subscriber.subscriber', '{\"uid\":\"application::subscriber.subscriber\",\"collectionName\":\"subscribers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"subscriber\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Email\":{\"type\":\"email\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(37, 'model_def_application::users.users', '{\"uid\":\"application::users.users\",\"collectionName\":\"users\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Users\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Weight\":{\"type\":\"decimal\"},\"High\":{\"type\":\"decimal\"},\"Sex\":{\"type\":\"string\"},\"Waist\":{\"type\":\"decimal\"},\"Date_of_birth\":{\"type\":\"datetime\"},\"RegisterID\":{\"type\":\"integer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(38, 'plugin_content_manager_configuration_content_types::application::users.users', '{\"uid\":\"application::users.users\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"Sex\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"Waist\":{\"edit\":{\"label\":\"Waist\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Waist\",\"searchable\":true,\"sortable\":true}},\"High\":{\"edit\":{\"label\":\"High\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"High\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"Sex\":{\"edit\":{\"label\":\"Sex\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sex\",\"searchable\":true,\"sortable\":true}},\"Date_of_birth\":{\"edit\":{\"label\":\"Date_of_birth\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Date_of_birth\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"Weight\":{\"edit\":{\"label\":\"Weight\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Weight\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"RegisterID\":{\"edit\":{\"label\":\"RegisterID\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegisterID\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"RegisterID\",\"size\":4},{\"name\":\"Weight\",\"size\":4}],[{\"name\":\"High\",\"size\":4},{\"name\":\"Sex\",\"size\":6}],[{\"name\":\"Waist\",\"size\":4},{\"name\":\"Date_of_birth\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"RegisterID\",\"Weight\",\"High\",\"Sex\",\"Waist\",\"Date_of_birth\"]}}', 'object', '', ''),
(39, 'model_def_application::admins.admins', '{\"uid\":\"application::admins.admins\",\"collectionName\":\"admins\",\"kind\":\"collectionType\",\"info\":{\"name\":\"admins\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"RegisterID\":{\"type\":\"integer\"},\"Username\":{\"type\":\"string\"},\"Password\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::application::admins.admins', '{\"uid\":\"application::admins.admins\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"RegisterID\":{\"edit\":{\"label\":\"RegisterID\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegisterID\",\"searchable\":true,\"sortable\":true}},\"Username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"Password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"RegisterID\",\"published_at\",\"created_at\"],\"edit\":[[{\"name\":\"RegisterID\",\"size\":4},{\"name\":\"Username\",\"size\":6}],[{\"name\":\"Password\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(41, 'model_def_application::resultcad.resultcad', '{\"uid\":\"application::resultcad.resultcad\",\"collectionName\":\"resultcads\",\"kind\":\"collectionType\",\"info\":{\"name\":\"resultcad\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"UserID\":{\"type\":\"integer\"},\"BMI\":{\"type\":\"decimal\"},\"Systolic_Blood_Pressure\":{\"type\":\"decimal\"},\"Diastolic_Blood_Pressure\":{\"type\":\"decimal\"},\"Glucose\":{\"type\":\"decimal\"},\"Cholesterol\":{\"type\":\"decimal\"},\"HDL_C\":{\"type\":\"decimal\"},\"Coronary_heart_disease\":{\"type\":\"decimal\"},\"risk_Diabetes\":{\"type\":\"decimal\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::application::resultcad.resultcad', '{\"uid\":\"application::resultcad.resultcad\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"UserID\":{\"edit\":{\"label\":\"UserID\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UserID\",\"searchable\":true,\"sortable\":true}},\"BMI\":{\"edit\":{\"label\":\"BMI\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BMI\",\"searchable\":true,\"sortable\":true}},\"Systolic_Blood_Pressure\":{\"edit\":{\"label\":\"Systolic_Blood_Pressure\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Systolic_Blood_Pressure\",\"searchable\":true,\"sortable\":true}},\"Diastolic_Blood_Pressure\":{\"edit\":{\"label\":\"Diastolic_Blood_Pressure\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Diastolic_Blood_Pressure\",\"searchable\":true,\"sortable\":true}},\"Glucose\":{\"edit\":{\"label\":\"Glucose\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Glucose\",\"searchable\":true,\"sortable\":true}},\"Cholesterol\":{\"edit\":{\"label\":\"Cholesterol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cholesterol\",\"searchable\":true,\"sortable\":true}},\"HDL_C\":{\"edit\":{\"label\":\"HDL_C\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HDL_C\",\"searchable\":true,\"sortable\":true}},\"Coronary_heart_disease\":{\"edit\":{\"label\":\"Coronary_heart_disease\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Coronary_heart_disease\",\"searchable\":true,\"sortable\":true}},\"risk_Diabetes\":{\"edit\":{\"label\":\"Risk_Diabetes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Risk_Diabetes\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\"],\"edit\":[[{\"name\":\"UserID\",\"size\":4},{\"name\":\"BMI\",\"size\":4},{\"name\":\"Systolic_Blood_Pressure\",\"size\":4}],[{\"name\":\"Diastolic_Blood_Pressure\",\"size\":4},{\"name\":\"Glucose\",\"size\":4},{\"name\":\"Cholesterol\",\"size\":4}],[{\"name\":\"HDL_C\",\"size\":4},{\"name\":\"Coronary_heart_disease\",\"size\":4},{\"name\":\"risk_Diabetes\",\"size\":4}]],\"editRelations\":[]}}', 'object', '', ''),
(43, 'model_def_application::resultdiabetes.resultdiabetes', '{\"uid\":\"application::resultdiabetes.resultdiabetes\",\"collectionName\":\"resultdiabetes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"resultdiabetes\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"UserID\":{\"type\":\"integer\"},\"BMI\":{\"type\":\"decimal\"},\"Systolic_Blood_Pressure\":{\"type\":\"decimal\"},\"Diastolic_Blood_Pressure\":{\"type\":\"decimal\"},\"Glucose\":{\"type\":\"decimal\"},\"Cholesterol\":{\"type\":\"decimal\"},\"HDI_C\":{\"type\":\"decimal\"},\"Diabetes\":{\"type\":\"decimal\"},\"risk_Coronary_heart_disease\":{\"type\":\"decimal\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL);
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(44, 'plugin_content_manager_configuration_content_types::application::resultdiabetes.resultdiabetes', '{\"uid\":\"application::resultdiabetes.resultdiabetes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"UserID\":{\"edit\":{\"label\":\"UserID\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UserID\",\"searchable\":true,\"sortable\":true}},\"BMI\":{\"edit\":{\"label\":\"BMI\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BMI\",\"searchable\":true,\"sortable\":true}},\"Systolic_Blood_Pressure\":{\"edit\":{\"label\":\"Systolic_Blood_Pressure\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Systolic_Blood_Pressure\",\"searchable\":true,\"sortable\":true}},\"Diastolic_Blood_Pressure\":{\"edit\":{\"label\":\"Diastolic_Blood_Pressure\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Diastolic_Blood_Pressure\",\"searchable\":true,\"sortable\":true}},\"Glucose\":{\"edit\":{\"label\":\"Glucose\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Glucose\",\"searchable\":true,\"sortable\":true}},\"Cholesterol\":{\"edit\":{\"label\":\"Cholesterol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cholesterol\",\"searchable\":true,\"sortable\":true}},\"HDI_C\":{\"edit\":{\"label\":\"HDI_C\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HDI_C\",\"searchable\":true,\"sortable\":true}},\"Diabetes\":{\"edit\":{\"label\":\"Diabetes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Diabetes\",\"searchable\":true,\"sortable\":true}},\"risk_Coronary_heart_disease\":{\"edit\":{\"label\":\"Risk_Coronary_heart_disease\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Risk_Coronary_heart_disease\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\"],\"edit\":[[{\"name\":\"UserID\",\"size\":4},{\"name\":\"BMI\",\"size\":4},{\"name\":\"Systolic_Blood_Pressure\",\"size\":4}],[{\"name\":\"Diastolic_Blood_Pressure\",\"size\":4},{\"name\":\"Glucose\",\"size\":4},{\"name\":\"Cholesterol\",\"size\":4}],[{\"name\":\"HDI_C\",\"size\":4},{\"name\":\"Diabetes\",\"size\":4},{\"name\":\"risk_Coronary_heart_disease\",\"size\":4}]],\"editRelations\":[]}}', 'object', '', ''),
(45, 'model_def_application::statistics.statistics', '{\"uid\":\"application::statistics.statistics\",\"collectionName\":\"statistics\",\"kind\":\"collectionType\",\"info\":{\"name\":\"statistics\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"AdminID\":{\"type\":\"integer\"},\"Cregister\":{\"type\":\"integer\"},\"Cuser\":{\"type\":\"integer\"},\"Cresultcad\":{\"type\":\"integer\"},\"Criskcad\":{\"type\":\"integer\"},\"Cresultdiabetes\":{\"type\":\"integer\"},\"Criskdiabetes\":{\"type\":\"integer\"},\"Cquiz\":{\"type\":\"integer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(46, 'plugin_content_manager_configuration_content_types::application::statistics.statistics', '{\"uid\":\"application::statistics.statistics\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"AdminID\":{\"edit\":{\"label\":\"AdminID\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AdminID\",\"searchable\":true,\"sortable\":true}},\"Cregister\":{\"edit\":{\"label\":\"Cregister\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cregister\",\"searchable\":true,\"sortable\":true}},\"Cuser\":{\"edit\":{\"label\":\"Cuser\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cuser\",\"searchable\":true,\"sortable\":true}},\"Cresultcad\":{\"edit\":{\"label\":\"Cresultcad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cresultcad\",\"searchable\":true,\"sortable\":true}},\"Criskcad\":{\"edit\":{\"label\":\"Criskcad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Criskcad\",\"searchable\":true,\"sortable\":true}},\"Cresultdiabetes\":{\"edit\":{\"label\":\"Cresultdiabetes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cresultdiabetes\",\"searchable\":true,\"sortable\":true}},\"Criskdiabetes\":{\"edit\":{\"label\":\"Criskdiabetes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Criskdiabetes\",\"searchable\":true,\"sortable\":true}},\"Cquiz\":{\"edit\":{\"label\":\"Cquiz\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cquiz\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"AdminID\",\"Cregister\",\"Cuser\"],\"editRelations\":[],\"edit\":[[{\"name\":\"AdminID\",\"size\":4},{\"name\":\"Cregister\",\"size\":4},{\"name\":\"Cuser\",\"size\":4}],[{\"name\":\"Cresultcad\",\"size\":4},{\"name\":\"Criskcad\",\"size\":4},{\"name\":\"Cresultdiabetes\",\"size\":4}],[{\"name\":\"Criskdiabetes\",\"size\":4},{\"name\":\"Cquiz\",\"size\":4}]]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` longtext COLLATE utf8_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Name`, `Description`, `Price`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `category`) VALUES
(1, 'a', 'a', '1.00', NULL, 1, 1, '2021-03-30 23:49:41', '2021-03-30 23:50:40', NULL),
(2, 'b', 'b', '2.00', NULL, 1, 1, '2021-03-30 23:50:50', '2021-03-30 23:50:50', NULL),
(3, 'c', 'c', '3.00', NULL, 1, 1, '2021-03-30 23:51:02', '2021-03-30 23:51:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(14) NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DateRegister` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Email`, `Password`, `DateRegister`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(22, 'ai@gmail.com', 'a', '2021-05-11 17:48:26', NULL, 1, 1, '2021-05-11 03:48:26', '2021-05-11 03:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `resultcads`
--

CREATE TABLE `resultcads` (
  `id` int(10) UNSIGNED NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BMI` decimal(10,2) DEFAULT NULL,
  `Systolic_Blood_Pressure` decimal(10,2) DEFAULT NULL,
  `Diastolic_Blood_Pressure` decimal(10,2) DEFAULT NULL,
  `Glucose` decimal(10,2) DEFAULT NULL,
  `Cholesterol` decimal(10,2) DEFAULT NULL,
  `HDL_C` decimal(10,2) DEFAULT NULL,
  `Coronary_heart_disease` decimal(10,2) DEFAULT NULL,
  `risk_Diabetes` decimal(10,2) DEFAULT NULL,
  `DateCAD` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resultdiabetes`
--

CREATE TABLE `resultdiabetes` (
  `id` int(14) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BMI` decimal(10,2) DEFAULT NULL,
  `Systolic Blood Pressure` int(3) NOT NULL,
  `Diastolic Blood Pressure` int(3) NOT NULL,
  `Glucose` decimal(10,2) DEFAULT NULL,
  `Cholesterol` decimal(10,2) DEFAULT NULL,
  `HDI-C` int(3) NOT NULL,
  `Diabetes` decimal(10,2) DEFAULT NULL,
  `risk Coronary heart disease` int(1) NOT NULL,
  `DateDiabetes` datetime DEFAULT NULL,
  `Systolic_Blood_Pressure` decimal(10,2) DEFAULT NULL,
  `Diastolic_Blood_Pressure` decimal(10,2) DEFAULT NULL,
  `HDI_C` decimal(10,2) DEFAULT NULL,
  `risk_Coronary_heart_disease` decimal(10,2) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `samples`
--

CREATE TABLE `samples` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(14) NOT NULL,
  `AdminID` int(11) DEFAULT NULL,
  `Cregister` int(11) DEFAULT NULL,
  `Cuser` int(11) DEFAULT NULL,
  `Cresultcad` int(11) DEFAULT NULL,
  `Criskcad` int(11) DEFAULT NULL,
  `Cresultdiabetes` int(11) DEFAULT NULL,
  `Criskdiabetes` int(11) DEFAULT NULL,
  `Cquiz` int(11) DEFAULT NULL,
  `Date statistics` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registrationToken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`) VALUES
(1, 'supanai', 'wanichanai', NULL, 'ausupanai@gmail.com', '$2a$10$0zuPkw/eeRbnojgcjkgi7.uDouTYcd0p23qzejugsEigSxje7xAWy', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fields` longtext COLLATE utf8_unicode_ci,
  `conditions` longtext COLLATE utf8_unicode_ci,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::content-manager.explorer.create', 'application::register.register', '[\"Email\",\"Password\"]', '[]', 2, '2021-03-16 22:36:29', '2021-03-23 00:34:04'),
(3, 'plugins::content-manager.explorer.read', 'application::register.register', '[\"Email\",\"Password\"]', '[]', 2, '2021-03-16 22:36:29', '2021-03-23 00:34:04'),
(5, 'plugins::content-manager.explorer.update', 'application::register.register', '[\"Email\",\"Password\"]', '[]', 2, '2021-03-16 22:36:29', '2021-03-23 00:34:04'),
(7, 'plugins::content-manager.explorer.delete', 'application::register.register', NULL, '[]', 2, '2021-03-16 22:36:29', '2021-03-16 22:36:30'),
(9, 'plugins::content-manager.explorer.publish', 'application::register.register', NULL, '[]', 2, '2021-03-16 22:36:29', '2021-03-16 22:36:30'),
(11, 'plugins::upload.read', NULL, NULL, '[]', 2, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(12, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(13, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(14, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(15, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(16, 'plugins::content-manager.explorer.create', 'application::register.register', '[\"Email\",\"Password\"]', '[\"admin::is-creator\"]', 3, '2021-03-16 22:36:30', '2021-03-23 00:34:04'),
(18, 'plugins::content-manager.explorer.read', 'application::register.register', '[\"Email\",\"Password\"]', '[\"admin::is-creator\"]', 3, '2021-03-16 22:36:30', '2021-03-23 00:34:04'),
(20, 'plugins::content-manager.explorer.update', 'application::register.register', '[\"Email\",\"Password\"]', '[\"admin::is-creator\"]', 3, '2021-03-16 22:36:30', '2021-03-23 00:34:04'),
(22, 'plugins::content-manager.explorer.delete', 'application::register.register', NULL, '[\"admin::is-creator\"]', 3, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(24, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(25, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(26, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(27, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(28, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(31, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(34, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(37, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(38, 'plugins::content-manager.explorer.delete', 'application::register.register', NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(40, 'plugins::content-manager.explorer.publish', 'application::register.register', NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(41, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(43, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(44, 'plugins::email.settings.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(45, 'plugins::upload.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(46, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(47, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(48, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(49, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(50, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(51, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(52, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(53, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(54, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(55, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(56, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(57, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(58, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(59, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(60, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(61, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(62, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(63, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(64, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(65, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(66, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(67, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(68, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(69, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(70, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(71, 'admin::users.create', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(72, 'admin::users.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(73, 'admin::users.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(74, 'admin::users.delete', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(75, 'admin::roles.create', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(76, 'admin::roles.read', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(77, 'admin::roles.update', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(78, 'admin::roles.delete', NULL, NULL, '[]', 1, '2021-03-16 22:36:30', '2021-03-16 22:36:30'),
(122, 'plugins::content-manager.explorer.delete', 'application::users.users', NULL, '[]', 1, '2021-05-11 03:11:10', '2021-05-11 03:11:10'),
(123, 'plugins::content-manager.explorer.publish', 'application::users.users', NULL, '[]', 1, '2021-05-11 03:11:10', '2021-05-11 03:11:10'),
(148, 'plugins::content-manager.explorer.create', 'application::register.register', '[\"Password\",\"Email\"]', '[]', 1, '2021-05-11 03:46:47', '2021-05-12 03:13:12'),
(149, 'plugins::content-manager.explorer.create', 'application::users.users', '[\"Weight\",\"High\",\"Sex\",\"Waist\",\"Date_of_birth\",\"RegisterID\"]', '[]', 1, '2021-05-11 03:46:47', '2021-05-12 03:13:12'),
(150, 'plugins::content-manager.explorer.read', 'application::register.register', '[\"Password\",\"Email\"]', '[]', 1, '2021-05-11 03:46:47', '2021-05-12 03:13:12'),
(151, 'plugins::content-manager.explorer.read', 'application::users.users', '[\"Weight\",\"High\",\"Sex\",\"Waist\",\"Date_of_birth\",\"RegisterID\"]', '[]', 1, '2021-05-11 03:46:47', '2021-05-12 03:13:12'),
(152, 'plugins::content-manager.explorer.update', 'application::register.register', '[\"Password\",\"Email\"]', '[]', 1, '2021-05-11 03:46:47', '2021-05-12 03:13:12'),
(153, 'plugins::content-manager.explorer.update', 'application::users.users', '[\"Weight\",\"High\",\"Sex\",\"Waist\",\"Date_of_birth\",\"RegisterID\"]', '[]', 1, '2021-05-11 03:46:47', '2021-05-12 03:13:12'),
(157, 'plugins::content-manager.explorer.delete', 'application::admins.admins', NULL, '[]', 1, '2021-05-12 03:45:22', '2021-05-12 03:45:22'),
(158, 'plugins::content-manager.explorer.publish', 'application::admins.admins', NULL, '[]', 1, '2021-05-12 03:45:22', '2021-05-12 03:45:22'),
(159, 'plugins::content-manager.explorer.create', 'application::admins.admins', '[\"RegisterID\",\"Username\",\"Password\"]', '[]', 1, '2021-05-12 03:47:40', '2021-05-12 03:47:40'),
(160, 'plugins::content-manager.explorer.read', 'application::admins.admins', '[\"RegisterID\",\"Username\",\"Password\"]', '[]', 1, '2021-05-12 03:47:40', '2021-05-12 03:47:40'),
(161, 'plugins::content-manager.explorer.update', 'application::admins.admins', '[\"RegisterID\",\"Username\",\"Password\"]', '[]', 1, '2021-05-12 03:47:40', '2021-05-12 03:47:40'),
(162, 'plugins::content-manager.explorer.create', 'application::resultcad.resultcad', '[\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\",\"Diastolic_Blood_Pressure\",\"Glucose\",\"Cholesterol\",\"HDL_C\",\"Coronary_heart_disease\",\"risk_Diabetes\"]', '[]', 1, '2021-05-12 03:53:15', '2021-05-12 04:08:31'),
(163, 'plugins::content-manager.explorer.read', 'application::resultcad.resultcad', '[\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\",\"Diastolic_Blood_Pressure\",\"Glucose\",\"Cholesterol\",\"HDL_C\",\"Coronary_heart_disease\",\"risk_Diabetes\"]', '[]', 1, '2021-05-12 03:53:15', '2021-05-12 04:08:31'),
(164, 'plugins::content-manager.explorer.update', 'application::resultcad.resultcad', '[\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\",\"Diastolic_Blood_Pressure\",\"Glucose\",\"Cholesterol\",\"HDL_C\",\"Coronary_heart_disease\",\"risk_Diabetes\"]', '[]', 1, '2021-05-12 03:53:15', '2021-05-12 04:08:31'),
(165, 'plugins::content-manager.explorer.delete', 'application::resultcad.resultcad', NULL, '[]', 1, '2021-05-12 03:53:15', '2021-05-12 03:53:15'),
(166, 'plugins::content-manager.explorer.publish', 'application::resultcad.resultcad', NULL, '[]', 1, '2021-05-12 03:53:15', '2021-05-12 03:53:15'),
(170, 'plugins::content-manager.explorer.delete', 'application::resultdiabetes.resultdiabetes', NULL, '[]', 1, '2021-05-12 03:57:43', '2021-05-12 03:57:43'),
(171, 'plugins::content-manager.explorer.publish', 'application::resultdiabetes.resultdiabetes', NULL, '[]', 1, '2021-05-12 03:57:43', '2021-05-12 03:57:43'),
(172, 'plugins::content-manager.explorer.create', 'application::resultdiabetes.resultdiabetes', '[\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\",\"Diastolic_Blood_Pressure\",\"Glucose\",\"Cholesterol\",\"HDI_C\",\"Diabetes\",\"risk_Coronary_heart_disease\"]', '[]', 1, '2021-05-12 03:59:13', '2021-05-12 04:08:12'),
(173, 'plugins::content-manager.explorer.read', 'application::resultdiabetes.resultdiabetes', '[\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\",\"Diastolic_Blood_Pressure\",\"Glucose\",\"Cholesterol\",\"HDI_C\",\"Diabetes\",\"risk_Coronary_heart_disease\"]', '[]', 1, '2021-05-12 03:59:13', '2021-05-12 04:08:12'),
(174, 'plugins::content-manager.explorer.update', 'application::resultdiabetes.resultdiabetes', '[\"UserID\",\"BMI\",\"Systolic_Blood_Pressure\",\"Diastolic_Blood_Pressure\",\"Glucose\",\"Cholesterol\",\"HDI_C\",\"Diabetes\",\"risk_Coronary_heart_disease\"]', '[]', 1, '2021-05-12 03:59:13', '2021-05-12 04:08:12'),
(175, 'plugins::content-manager.explorer.create', 'application::statistics.statistics', '[\"AdminID\",\"Cregister\",\"Cuser\",\"Cresultcad\",\"Criskcad\",\"Cresultdiabetes\",\"Criskdiabetes\",\"Cquiz\"]', '[]', 1, '2021-05-12 04:11:53', '2021-05-12 04:11:53'),
(176, 'plugins::content-manager.explorer.read', 'application::statistics.statistics', '[\"AdminID\",\"Cregister\",\"Cuser\",\"Cresultcad\",\"Criskcad\",\"Cresultdiabetes\",\"Criskdiabetes\",\"Cquiz\"]', '[]', 1, '2021-05-12 04:11:53', '2021-05-12 04:11:53'),
(177, 'plugins::content-manager.explorer.update', 'application::statistics.statistics', '[\"AdminID\",\"Cregister\",\"Cuser\",\"Cresultcad\",\"Criskcad\",\"Cresultdiabetes\",\"Criskdiabetes\",\"Cquiz\"]', '[]', 1, '2021-05-12 04:11:53', '2021-05-12 04:11:53'),
(178, 'plugins::content-manager.explorer.delete', 'application::statistics.statistics', NULL, '[]', 1, '2021-05-12 04:11:53', '2021-05-12 04:11:53'),
(179, 'plugins::content-manager.explorer.publish', 'application::statistics.statistics', NULL, '[]', 1, '2021-05-12 04:11:53', '2021-05-12 04:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-03-16 22:36:29', '2021-03-16 22:36:29'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-03-16 22:36:29', '2021-03-16 22:36:29'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-03-16 22:36:29', '2021-03-16 22:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `headers` longtext COLLATE utf8_unicode_ci,
  `events` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alternativeText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext COLLATE utf8_unicode_ci,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `previewUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_metadata` longtext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext COLLATE utf8_unicode_ci,
  `field` longtext COLLATE utf8_unicode_ci,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `RegisterID` int(11) DEFAULT NULL,
  `Weight` decimal(10,2) DEFAULT NULL,
  `High` decimal(10,2) DEFAULT NULL,
  `Sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Waist` decimal(10,2) DEFAULT NULL,
  `Date_of_birth` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `RegisterID`, `Weight`, `High`, `Sex`, `Waist`, `Date_of_birth`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 22, '42.00', '100.00', 'male', '44.00', '2021-05-04 05:00:00', NULL, 1, 1, '2021-05-11 03:49:51', '2021-05-11 03:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'application', 'register', 'count', 0, '', 1, NULL, NULL),
(2, 'application', 'register', 'create', 0, '', 1, NULL, NULL),
(3, 'application', 'register', 'count', 0, '', 2, NULL, NULL),
(4, 'application', 'register', 'create', 0, '', 2, NULL, NULL),
(5, 'application', 'register', 'delete', 0, '', 2, NULL, NULL),
(6, 'application', 'register', 'find', 0, '', 1, NULL, NULL),
(7, 'application', 'register', 'find', 1, '', 2, NULL, NULL),
(8, 'application', 'register', 'findone', 0, '', 1, NULL, NULL),
(9, 'application', 'register', 'findone', 1, '', 2, NULL, NULL),
(10, 'application', 'register', 'delete', 0, '', 1, NULL, NULL),
(12, 'application', 'register', 'update', 0, '', 1, NULL, NULL),
(13, 'application', 'register', 'update', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(34, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(35, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(36, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(37, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(38, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(39, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(40, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(41, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(42, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(43, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(44, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(45, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(46, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(47, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(48, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(49, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(50, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(51, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(52, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(53, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(54, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(55, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(56, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
(57, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(58, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(59, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(60, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(61, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(62, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(63, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(64, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(65, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(66, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(67, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(68, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(69, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(70, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(71, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(72, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(73, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(74, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(75, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(76, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(77, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(78, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(79, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(80, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(81, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(82, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(83, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(84, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(85, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(86, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(87, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(88, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(89, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(90, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(91, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(92, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(93, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(94, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(95, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(96, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(97, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(98, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
(99, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(100, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
(101, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(102, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(103, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
(104, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
(105, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(106, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(107, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(108, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(109, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(110, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(111, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(112, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(113, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(114, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(115, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(116, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(117, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(118, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(119, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(120, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(121, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(123, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(124, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(125, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(127, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(129, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(130, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(131, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(133, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(138, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(139, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(142, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(143, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(145, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(146, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(147, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(148, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(149, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(150, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(151, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(152, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(153, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(154, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(155, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(156, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(157, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(158, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(159, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(160, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(161, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(162, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(163, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(164, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(165, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(166, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(167, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(168, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(169, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(170, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(171, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(172, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(173, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(174, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(175, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(176, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(177, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(178, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(179, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(180, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(181, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(182, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(243, 'application', 'users', 'findone', 0, '', 2, NULL, NULL),
(244, 'application', 'users', 'count', 0, '', 1, NULL, NULL),
(245, 'application', 'users', 'count', 0, '', 2, NULL, NULL),
(246, 'application', 'users', 'create', 0, '', 1, NULL, NULL),
(247, 'application', 'users', 'create', 0, '', 2, NULL, NULL),
(248, 'application', 'users', 'delete', 0, '', 1, NULL, NULL),
(249, 'application', 'users', 'delete', 0, '', 2, NULL, NULL),
(250, 'application', 'users', 'find', 0, '', 1, NULL, NULL),
(251, 'application', 'users', 'find', 0, '', 2, NULL, NULL),
(252, 'application', 'users', 'findone', 0, '', 1, NULL, NULL),
(253, 'application', 'users', 'update', 0, '', 1, NULL, NULL),
(254, 'application', 'users', 'update', 0, '', 2, NULL, NULL),
(255, 'application', 'admins', 'count', 0, '', 1, NULL, NULL),
(256, 'application', 'admins', 'count', 0, '', 2, NULL, NULL),
(257, 'application', 'admins', 'create', 0, '', 1, NULL, NULL),
(258, 'application', 'admins', 'create', 0, '', 2, NULL, NULL),
(259, 'application', 'admins', 'delete', 0, '', 1, NULL, NULL),
(260, 'application', 'admins', 'delete', 0, '', 2, NULL, NULL),
(261, 'application', 'admins', 'find', 0, '', 1, NULL, NULL),
(262, 'application', 'admins', 'find', 0, '', 2, NULL, NULL),
(263, 'application', 'admins', 'findone', 0, '', 1, NULL, NULL),
(264, 'application', 'admins', 'findone', 0, '', 2, NULL, NULL),
(265, 'application', 'admins', 'update', 0, '', 2, NULL, NULL),
(266, 'application', 'admins', 'update', 0, '', 1, NULL, NULL),
(267, 'application', 'resultcad', 'count', 0, '', 1, NULL, NULL),
(268, 'application', 'resultcad', 'count', 0, '', 2, NULL, NULL),
(269, 'application', 'resultcad', 'create', 0, '', 1, NULL, NULL),
(270, 'application', 'resultcad', 'create', 0, '', 2, NULL, NULL),
(271, 'application', 'resultcad', 'delete', 0, '', 1, NULL, NULL),
(272, 'application', 'resultcad', 'delete', 0, '', 2, NULL, NULL),
(273, 'application', 'resultcad', 'find', 0, '', 1, NULL, NULL),
(274, 'application', 'resultcad', 'find', 0, '', 2, NULL, NULL),
(275, 'application', 'resultcad', 'findone', 0, '', 1, NULL, NULL),
(276, 'application', 'resultcad', 'findone', 0, '', 2, NULL, NULL),
(277, 'application', 'resultcad', 'update', 0, '', 1, NULL, NULL),
(278, 'application', 'resultcad', 'update', 0, '', 2, NULL, NULL),
(279, 'application', 'resultdiabetes', 'count', 0, '', 1, NULL, NULL),
(280, 'application', 'resultdiabetes', 'count', 0, '', 2, NULL, NULL),
(281, 'application', 'resultdiabetes', 'create', 0, '', 1, NULL, NULL),
(282, 'application', 'resultdiabetes', 'create', 0, '', 2, NULL, NULL),
(283, 'application', 'resultdiabetes', 'delete', 0, '', 1, NULL, NULL),
(284, 'application', 'resultdiabetes', 'delete', 0, '', 2, NULL, NULL),
(285, 'application', 'resultdiabetes', 'find', 0, '', 1, NULL, NULL),
(286, 'application', 'resultdiabetes', 'find', 0, '', 2, NULL, NULL),
(287, 'application', 'resultdiabetes', 'findone', 0, '', 1, NULL, NULL),
(288, 'application', 'resultdiabetes', 'findone', 0, '', 2, NULL, NULL),
(289, 'application', 'resultdiabetes', 'update', 0, '', 1, NULL, NULL),
(290, 'application', 'resultdiabetes', 'update', 0, '', 2, NULL, NULL),
(291, 'application', 'statistics', 'count', 0, '', 1, NULL, NULL),
(292, 'application', 'statistics', 'count', 0, '', 2, NULL, NULL),
(293, 'application', 'statistics', 'create', 0, '', 1, NULL, NULL),
(294, 'application', 'statistics', 'create', 0, '', 2, NULL, NULL),
(295, 'application', 'statistics', 'delete', 0, '', 1, NULL, NULL),
(296, 'application', 'statistics', 'delete', 0, '', 2, NULL, NULL),
(297, 'application', 'statistics', 'find', 0, '', 1, NULL, NULL),
(298, 'application', 'statistics', 'find', 0, '', 2, NULL, NULL),
(299, 'application', 'statistics', 'findone', 0, '', 1, NULL, NULL),
(300, 'application', 'statistics', 'findone', 0, '', 2, NULL, NULL),
(301, 'application', 'statistics', 'update', 0, '', 1, NULL, NULL),
(302, 'application', 'statistics', 'update', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmationToken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xcxzczxes`
--

CREATE TABLE `xcxzczxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `xcxzc` longtext COLLATE utf8_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountID`),
  ADD UNIQUE KEY `AccountID` (`AccountID`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_Email_unique` (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `resultcads`
--
ALTER TABLE `resultcads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resultdiabetes`
--
ALTER TABLE `resultdiabetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `samples`
--
ALTER TABLE `samples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indexes for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indexes for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RegisterID` (`RegisterID`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- Indexes for table `xcxzczxes`
--
ALTER TABLE `xcxzczxes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `AccountID` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `resultcads`
--
ALTER TABLE `resultcads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resultdiabetes`
--
ALTER TABLE `resultdiabetes`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `samples`
--
ALTER TABLE `samples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xcxzczxes`
--
ALTER TABLE `xcxzczxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`RegisterID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
