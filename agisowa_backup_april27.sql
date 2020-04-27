-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2020 at 09:26 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agisowa`
--

-- --------------------------------------------------------

--
-- Table structure for table `owa_action_fact`
--

CREATE TABLE `owa_action_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `action_label` varchar(255) DEFAULT NULL,
  `action_group` varchar(255) DEFAULT NULL,
  `numeric_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_ad_dim`
--

CREATE TABLE `owa_ad_dim` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_campaign_dim`
--

CREATE TABLE `owa_campaign_dim` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_click`
--

CREATE TABLE `owa_click` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `msec` varchar(255) DEFAULT NULL,
  `click_x` int(11) DEFAULT NULL,
  `click_y` int(11) DEFAULT NULL,
  `page_width` int(11) DEFAULT NULL,
  `page_height` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `approx_position` bigint(20) DEFAULT NULL,
  `dom_element_x` int(11) DEFAULT NULL,
  `dom_element_y` int(11) DEFAULT NULL,
  `dom_element_name` varchar(255) DEFAULT NULL,
  `dom_element_id` varchar(255) DEFAULT NULL,
  `dom_element_value` varchar(255) DEFAULT NULL,
  `dom_element_tag` varchar(255) DEFAULT NULL,
  `dom_element_text` varchar(255) DEFAULT NULL,
  `dom_element_class` varchar(255) DEFAULT NULL,
  `dom_element_parent_id` varchar(255) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `placement_id` bigint(20) DEFAULT NULL,
  `ad_group_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_click`
--

INSERT INTO `owa_click` (`id`, `visitor_id`, `session_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `last_impression_id`, `document_id`, `target_id`, `target_url`, `hour`, `minute`, `second`, `msec`, `click_x`, `click_y`, `page_width`, `page_height`, `position`, `approx_position`, `dom_element_x`, `dom_element_y`, `dom_element_name`, `dom_element_id`, `dom_element_value`, `dom_element_tag`, `dom_element_text`, `dom_element_class`, `dom_element_parent_id`, `tag_id`, `placement_id`, `ad_group_id`, `host`) VALUES
(1587939871961548124, 1587939869643524072, 1587939870842874271, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939871, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2745617899, 4264779492, 'http://localhost/agisInstall/testPage2.html', 15, 24, 31, '0.41391400', 99, 139, 998, 1096, 99139, 0, 8, 124, '(not set)', '(not set)', '(not set)', 'A', 'Click page two...', '(not set)', '', 0, 0, 0, '(not set)'),
(1587939905246512113, 1587939905568842733, 1587939905985612882, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939905, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2745617899, 0, '', 15, 25, 5, '0.69003700', 266, 383, 998, 1096, 266383, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BODY', '', '(not set)', '', 0, 0, 0, '(not set)'),
(1587940037865472113, 1587940031466514046, 1587940031513880978, 'c1002346b24d5116a78e282ae823652b', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587940037, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 1622844133, 3464513751, 'http://localhost/agisWP/blog', 15, 27, 17, '0.39441200', 259, 1066, 1106, 1096, 2591066, 0, 231, 1003, '(not set)', '(not set)', '(not set)', 'A', 'Blog', '(not set)', '', 0, 0, 0, '(not set)'),
(1587941116727332165, 1587939909359276806, 1587939909021612618, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587941116, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 2745617899, 0, '', 15, 45, 16, '0.44869900', 499, 433, 998, 1096, 499433, 0, 0, 0, '(not set)', '(not set)', '(not set)', 'BODY', '', '(not set)', '', 0, 0, 0, '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_commerce_line_item_fact`
--

CREATE TABLE `owa_commerce_line_item_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `unit_price` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_revenue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_commerce_transaction_fact`
--

CREATE TABLE `owa_commerce_transaction_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_source` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `total_revenue` bigint(20) DEFAULT NULL,
  `tax_revenue` bigint(20) DEFAULT NULL,
  `shipping_revenue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_configuration`
--

CREATE TABLE `owa_configuration` (
  `id` bigint(20) NOT NULL,
  `settings` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_configuration`
--

INSERT INTO `owa_configuration` (`id`, `settings`) VALUES
(1, 0x613a313a7b733a343a2262617365223b613a333a7b733a31343a22736368656d615f76657273696f6e223b693a31303b733a393a2269735f616374697665223b623a313b733a31363a22696e7374616c6c5f636f6d706c657465223b623a313b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `owa_document`
--

CREATE TABLE `owa_document` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_document`
--

INSERT INTO `owa_document` (`id`, `url`, `uri`, `page_title`, `page_type`) VALUES
(1622844133, 'http://localhost/agisWP', '/agisWP', 'AGIS Test Bed for Plugin Development - AGIS Test Bed', '(not set)'),
(2745617899, 'http://localhost/agisInstall/test.html', '/agisInstall/test.html', 'Jason Chat&#039;s Design Demo 2', '(not set)'),
(3464513751, 'http://localhost/agisWP/blog', '/agisWP/blog', 'Blog - AGIS Test Bed', '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_domstream`
--

CREATE TABLE `owa_domstream` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `domstream_guid` bigint(20) DEFAULT NULL,
  `events` blob,
  `duration` int(11) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `page_width` int(11) DEFAULT NULL,
  `page_height` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_exit`
--

CREATE TABLE `owa_exit` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_feed_request`
--

CREATE TABLE `owa_feed_request` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `ua_id` varchar(255) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `feed_reader_guid` varchar(255) DEFAULT NULL,
  `subscription_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` tinyint(2) DEFAULT NULL,
  `msec` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `feed_format` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_host`
--

CREATE TABLE `owa_host` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `full_host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_host`
--

INSERT INTO `owa_host` (`id`, `ip_address`, `host`, `full_host`, `city`, `country`, `latitude`, `longitude`) VALUES
(146471012, '::1', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_impression`
--

CREATE TABLE `owa_impression` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `placement_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `ad_group_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint(20) DEFAULT NULL,
  `last_impression_timestamp` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `msec` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_location_dim`
--

CREATE TABLE `owa_location_dim` (
  `id` bigint(20) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_location_dim`
--

INSERT INTO `owa_location_dim` (`id`, `country`, `country_code`, `state`, `city`, `latitude`, `longitude`) VALUES
(259604063, '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_os`
--

CREATE TABLE `owa_os` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_os`
--

INSERT INTO `owa_os` (`id`, `name`) VALUES
(2450605903, 'Linux');

-- --------------------------------------------------------

--
-- Table structure for table `owa_queue_item`
--

CREATE TABLE `owa_queue_item` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `event` blob,
  `insertion_datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insertion_timestamp` int(11) DEFAULT NULL,
  `handled_timestamp` int(11) DEFAULT NULL,
  `last_attempt_timestamp` int(11) DEFAULT NULL,
  `not_before_timestamp` int(11) DEFAULT NULL,
  `failed_attempt_count` int(11) DEFAULT NULL,
  `is_assigned` tinyint(1) DEFAULT NULL,
  `last_error_msg` varchar(255) DEFAULT NULL,
  `handled_by` varchar(255) DEFAULT NULL,
  `handler_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_referer`
--

CREATE TABLE `owa_referer` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `query_terms` varchar(255) DEFAULT NULL,
  `refering_anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `snippet` mediumtext,
  `is_searchengine` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_referer`
--

INSERT INTO `owa_referer` (`id`, `url`, `site_name`, `site`, `query_terms`, `refering_anchortext`, `page_title`, `snippet`, `is_searchengine`) VALUES
(118221093, '(none)', '', '', '', '', '(not set)', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owa_request`
--

CREATE TABLE `owa_request` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `inbound_visitor_id` bigint(20) DEFAULT NULL,
  `inbound_session_id` bigint(20) DEFAULT NULL,
  `feed_subscription_id` bigint(20) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` tinyint(2) DEFAULT NULL,
  `msec` int(11) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `prior_document_id` bigint(20) DEFAULT NULL,
  `is_comment` tinyint(1) DEFAULT NULL,
  `is_entry_page` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_request`
--

INSERT INTO `owa_request` (`id`, `visitor_id`, `session_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `inbound_visitor_id`, `inbound_session_id`, `feed_subscription_id`, `user_email`, `hour`, `minute`, `second`, `msec`, `document_id`, `site`, `os`, `prior_document_id`, `is_comment`, `is_entry_page`, `is_browser`, `is_robot`, `is_feedreader`) VALUES
(1587939869642367124, 1587939869643524072, 1587939870842874271, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939869, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 15, 24, 29, 1, '2745617899', '', 'Linux', 0, 0, 1, 1, 0, 0),
(1587939905943844113, 1587939905568842733, 1587939905985612882, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939905, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 15, 25, 5, 0, '2745617899', '', 'Linux', 0, 0, 1, 1, 0, 0),
(1587939908190756165, 1587939909359276806, 1587939909021612618, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939908, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 15, 25, 8, 1, '2745617899', '', 'Linux', 0, 0, 1, 1, 0, 0),
(1587940031590856123, 1587940031466514046, 1587940031513880978, 'c1002346b24d5116a78e282ae823652b', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587940031, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 15, 27, 11, 0, '1622844133', '', 'Linux', 2904373449, 0, 1, 1, 0, 0),
(1587940037402314113, 1587940038564615876, 1587940038109147318, 'c1002346b24d5116a78e282ae823652b', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587940037, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 15, 27, 17, 1, '3464513751', '', 'Linux', 1622844133, 0, 1, 1, 0, 0),
(1587941118538374113, 1587941119886979675, 1587941119348124460, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587941118, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 0, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 0, 0, 0, '(not set)', 15, 45, 18, 1, '2745617899', '', 'Linux', 0, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owa_search_term_dim`
--

CREATE TABLE `owa_search_term_dim` (
  `id` bigint(20) NOT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `term_count` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_search_term_dim`
--

INSERT INTO `owa_search_term_dim` (`id`, `terms`, `term_count`) VALUES
(118221093, '(none)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `owa_session`
--

CREATE TABLE `owa_session` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `num_pageviews` int(11) DEFAULT NULL,
  `num_comments` int(11) DEFAULT NULL,
  `is_bounce` tinyint(1) DEFAULT NULL,
  `prior_session_lastreq` bigint(20) DEFAULT NULL,
  `prior_session_id` bigint(20) DEFAULT NULL,
  `time_sinse_priorsession` int(11) DEFAULT NULL,
  `prior_session_year` tinyint(4) DEFAULT NULL,
  `prior_session_month` varchar(255) DEFAULT NULL,
  `prior_session_day` tinyint(2) DEFAULT NULL,
  `prior_session_dayofweek` int(11) DEFAULT NULL,
  `prior_session_hour` tinyint(2) DEFAULT NULL,
  `prior_session_minute` tinyint(2) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `first_page_id` bigint(20) DEFAULT NULL,
  `last_page_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL,
  `latest_attributions` blob,
  `num_goals` tinyint(1) DEFAULT NULL,
  `num_goal_starts` tinyint(1) DEFAULT NULL,
  `goals_value` bigint(20) DEFAULT NULL,
  `commerce_trans_count` int(11) DEFAULT NULL,
  `commerce_trans_revenue` bigint(20) DEFAULT NULL,
  `commerce_items_revenue` bigint(20) DEFAULT NULL,
  `commerce_items_count` int(11) DEFAULT NULL,
  `commerce_items_quantity` int(11) DEFAULT NULL,
  `commerce_shipping_revenue` bigint(20) DEFAULT NULL,
  `commerce_tax_revenue` bigint(20) DEFAULT NULL,
  `goal_1` tinyint(1) DEFAULT NULL,
  `goal_1_start` tinyint(1) DEFAULT NULL,
  `goal_1_value` bigint(20) DEFAULT NULL,
  `goal_2` tinyint(1) DEFAULT NULL,
  `goal_2_start` tinyint(1) DEFAULT NULL,
  `goal_2_value` bigint(20) DEFAULT NULL,
  `goal_3` tinyint(1) DEFAULT NULL,
  `goal_3_start` tinyint(1) DEFAULT NULL,
  `goal_3_value` bigint(20) DEFAULT NULL,
  `goal_4` tinyint(1) DEFAULT NULL,
  `goal_4_start` tinyint(1) DEFAULT NULL,
  `goal_4_value` bigint(20) DEFAULT NULL,
  `goal_5` tinyint(1) DEFAULT NULL,
  `goal_5_start` tinyint(1) DEFAULT NULL,
  `goal_5_value` bigint(20) DEFAULT NULL,
  `goal_6` tinyint(1) DEFAULT NULL,
  `goal_6_start` tinyint(1) DEFAULT NULL,
  `goal_6_value` bigint(20) DEFAULT NULL,
  `goal_7` tinyint(1) DEFAULT NULL,
  `goal_7_start` tinyint(1) DEFAULT NULL,
  `goal_7_value` bigint(20) DEFAULT NULL,
  `goal_8` tinyint(1) DEFAULT NULL,
  `goal_8_start` tinyint(1) DEFAULT NULL,
  `goal_8_value` bigint(20) DEFAULT NULL,
  `goal_9` tinyint(1) DEFAULT NULL,
  `goal_9_start` tinyint(1) DEFAULT NULL,
  `goal_9_value` bigint(20) DEFAULT NULL,
  `goal_10` tinyint(1) DEFAULT NULL,
  `goal_10_start` tinyint(1) DEFAULT NULL,
  `goal_10_value` bigint(20) DEFAULT NULL,
  `goal_11` tinyint(1) DEFAULT NULL,
  `goal_11_start` tinyint(1) DEFAULT NULL,
  `goal_11_value` bigint(20) DEFAULT NULL,
  `goal_12` tinyint(1) DEFAULT NULL,
  `goal_12_start` tinyint(1) DEFAULT NULL,
  `goal_12_value` bigint(20) DEFAULT NULL,
  `goal_13` tinyint(1) DEFAULT NULL,
  `goal_13_start` tinyint(1) DEFAULT NULL,
  `goal_13_value` bigint(20) DEFAULT NULL,
  `goal_14` tinyint(1) DEFAULT NULL,
  `goal_14_start` tinyint(1) DEFAULT NULL,
  `goal_14_value` bigint(20) DEFAULT NULL,
  `goal_15` tinyint(1) DEFAULT NULL,
  `goal_15_start` tinyint(1) DEFAULT NULL,
  `goal_15_value` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_session`
--

INSERT INTO `owa_session` (`id`, `visitor_id`, `site_id`, `referer_id`, `ua_id`, `host_id`, `os_id`, `location_id`, `referring_search_term_id`, `timestamp`, `yyyymmdd`, `year`, `month`, `day`, `dayofweek`, `dayofyear`, `weekofyear`, `last_req`, `ip_address`, `is_new_visitor`, `is_repeat_visitor`, `language`, `days_since_prior_session`, `days_since_first_session`, `num_prior_sessions`, `medium`, `source_id`, `ad_id`, `campaign_id`, `user_name`, `cv1_name`, `cv1_value`, `cv2_name`, `cv2_value`, `cv3_name`, `cv3_value`, `cv4_name`, `cv4_value`, `cv5_name`, `cv5_value`, `user_email`, `hour`, `minute`, `num_pageviews`, `num_comments`, `is_bounce`, `prior_session_lastreq`, `prior_session_id`, `time_sinse_priorsession`, `prior_session_year`, `prior_session_month`, `prior_session_day`, `prior_session_dayofweek`, `prior_session_hour`, `prior_session_minute`, `os`, `first_page_id`, `last_page_id`, `host`, `city`, `country`, `site`, `is_robot`, `is_browser`, `is_feedreader`, `latest_attributions`, `num_goals`, `num_goal_starts`, `goals_value`, `commerce_trans_count`, `commerce_trans_revenue`, `commerce_items_revenue`, `commerce_items_count`, `commerce_items_quantity`, `commerce_shipping_revenue`, `commerce_tax_revenue`, `goal_1`, `goal_1_start`, `goal_1_value`, `goal_2`, `goal_2_start`, `goal_2_value`, `goal_3`, `goal_3_start`, `goal_3_value`, `goal_4`, `goal_4_start`, `goal_4_value`, `goal_5`, `goal_5_start`, `goal_5_value`, `goal_6`, `goal_6_start`, `goal_6_value`, `goal_7`, `goal_7_start`, `goal_7_value`, `goal_8`, `goal_8_start`, `goal_8_value`, `goal_9`, `goal_9_start`, `goal_9_value`, `goal_10`, `goal_10_start`, `goal_10_value`, `goal_11`, `goal_11_start`, `goal_11_value`, `goal_12`, `goal_12_start`, `goal_12_value`, `goal_13`, `goal_13_start`, `goal_13_value`, `goal_14`, `goal_14_start`, `goal_14_value`, `goal_15`, `goal_15_start`, `goal_15_value`) VALUES
(1587939870842874271, 1587939869643524072, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939869, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 1587939869, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 15, 24, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Linux', 2745617899, 2745617899, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1587939905985612882, 1587939905568842733, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939905, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 1587939905, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 15, 25, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Linux', 2745617899, 2745617899, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1587939909021612618, 1587939909359276806, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587939908, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 1587939908, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 15, 25, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Linux', 2745617899, 2745617899, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1587940031513880978, 1587940031466514046, 'c1002346b24d5116a78e282ae823652b', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587940031, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 1587940031, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 15, 27, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Linux', 1622844133, 1622844133, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1587940038109147318, 1587940038564615876, 'c1002346b24d5116a78e282ae823652b', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587940037, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 1587940037, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 15, 27, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Linux', 3464513751, 3464513751, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1587941119348124460, 1587941119886979675, '86a9106ae65537651a8e456835b316ab', 118221093, 1668580229, 146471012, 2450605903, 259604063, 118221093, 1587941118, 20200426, 2020, 202004, 26, 'Sun', 116, 17, 1587941118, '::1', 1, 0, 'en-US', 0, 0, 0, 'direct', 118221093, 0, 0, 'mack', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', '(not set)', 15, 45, 1, 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 'Linux', 2745617899, 2745617899, '(not set)', '(not set)', '(not set)', '', 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owa_site`
--

CREATE TABLE `owa_site` (
  `id` bigint(20) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `site_family` varchar(255) DEFAULT NULL,
  `settings` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_site`
--

INSERT INTO `owa_site` (`id`, `site_id`, `domain`, `name`, `description`, `site_family`, `settings`) VALUES
(999279226, '86a9106ae65537651a8e456835b316ab', 'http://localhost', 'http://localhost', '', '', ''),
(2341804046, 'c1002346b24d5116a78e282ae823652b', 'http://localhost/agisWP/', 'Word Press Test', 'Word Press Test', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `owa_site_user`
--

CREATE TABLE `owa_site_user` (
  `site_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owa_source_dim`
--

CREATE TABLE `owa_source_dim` (
  `id` bigint(20) NOT NULL,
  `source_domain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_source_dim`
--

INSERT INTO `owa_source_dim` (`id`, `source_domain`) VALUES
(118221093, '(none)');

-- --------------------------------------------------------

--
-- Table structure for table `owa_ua`
--

CREATE TABLE `owa_ua` (
  `id` bigint(20) NOT NULL,
  `ua` varchar(255) DEFAULT NULL,
  `browser_type` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_ua`
--

INSERT INTO `owa_ua` (`id`, `ua`, `browser_type`, `browser`) VALUES
(1668580229, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36', 'Chrome', '81.0.4044');

-- --------------------------------------------------------

--
-- Table structure for table `owa_user`
--

CREATE TABLE `owa_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `temp_passkey` varchar(255) DEFAULT NULL,
  `creation_date` bigint(20) DEFAULT NULL,
  `last_update_date` bigint(20) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_user`
--

INSERT INTO `owa_user` (`id`, `user_id`, `password`, `role`, `real_name`, `email_address`, `temp_passkey`, `creation_date`, `last_update_date`, `api_key`) VALUES
(1, 'mack', '$2y$10$Wc3DOGw3vc58RbnJPlHioeTg25Q1vveVXm1oKSXoNp8zH98RCqwJW', 'admin', 'default admin', 'macrobber@gmail.com', '8361cf3939dc773882e4ccc54b4022a0', 1587939817, 1587939817, '1d1c21a1d09555d290fe14d29800698c');

-- --------------------------------------------------------

--
-- Table structure for table `owa_visitor`
--

CREATE TABLE `owa_visitor` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `first_session_id` bigint(20) DEFAULT NULL,
  `first_session_year` int(11) DEFAULT NULL,
  `first_session_month` varchar(255) DEFAULT NULL,
  `first_session_day` int(11) DEFAULT NULL,
  `first_session_dayofyear` int(11) DEFAULT NULL,
  `first_session_timestamp` bigint(20) DEFAULT NULL,
  `first_session_yyyymmdd` bigint(20) DEFAULT NULL,
  `last_session_id` bigint(20) DEFAULT NULL,
  `last_session_year` int(11) DEFAULT NULL,
  `last_session_month` varchar(255) DEFAULT NULL,
  `last_session_day` int(11) DEFAULT NULL,
  `last_session_dayofyear` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owa_visitor`
--

INSERT INTO `owa_visitor` (`id`, `user_name`, `user_email`, `first_session_id`, `first_session_year`, `first_session_month`, `first_session_day`, `first_session_dayofyear`, `first_session_timestamp`, `first_session_yyyymmdd`, `last_session_id`, `last_session_year`, `last_session_month`, `last_session_day`, `last_session_dayofyear`, `num_prior_sessions`) VALUES
(1587939869643524072, 'mack', '(not set)', 1587939870842874271, 2020, '202004', 26, 116, 1587939869, 20200426, 0, 0, '', 0, 0, 0),
(1587939905568842733, 'mack', '(not set)', 1587939905985612882, 2020, '202004', 26, 116, 1587939905, 20200426, 0, 0, '', 0, 0, 0),
(1587939909359276806, 'mack', '(not set)', 1587939909021612618, 2020, '202004', 26, 116, 1587939908, 20200426, 0, 0, '', 0, 0, 0),
(1587940031466514046, 'mack', '(not set)', 1587940031513880978, 2020, '202004', 26, 116, 1587940031, 20200426, 0, 0, '', 0, 0, 0),
(1587940038564615876, 'mack', '(not set)', 1587940038109147318, 2020, '202004', 26, 116, 1587940037, 20200426, 0, 0, '', 0, 0, 0),
(1587941119886979675, 'mack', '(not set)', 1587941119348124460, 2020, '202004', 26, 116, 1587941118, 20200426, 0, 0, '', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owa_action_fact`
--
ALTER TABLE `owa_action_fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_ad_dim`
--
ALTER TABLE `owa_ad_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_campaign_dim`
--
ALTER TABLE `owa_campaign_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_click`
--
ALTER TABLE `owa_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_commerce_line_item_fact`
--
ALTER TABLE `owa_commerce_line_item_fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `owa_commerce_transaction_fact`
--
ALTER TABLE `owa_commerce_transaction_fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `owa_configuration`
--
ALTER TABLE `owa_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_document`
--
ALTER TABLE `owa_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_domstream`
--
ALTER TABLE `owa_domstream`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_exit`
--
ALTER TABLE `owa_exit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_feed_request`
--
ALTER TABLE `owa_feed_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_host`
--
ALTER TABLE `owa_host`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_impression`
--
ALTER TABLE `owa_impression`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_location_dim`
--
ALTER TABLE `owa_location_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_os`
--
ALTER TABLE `owa_os`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_queue_item`
--
ALTER TABLE `owa_queue_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_referer`
--
ALTER TABLE `owa_referer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_request`
--
ALTER TABLE `owa_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_search_term_dim`
--
ALTER TABLE `owa_search_term_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_session`
--
ALTER TABLE `owa_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `yyyymmdd` (`yyyymmdd`);

--
-- Indexes for table `owa_site`
--
ALTER TABLE `owa_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_source_dim`
--
ALTER TABLE `owa_source_dim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_ua`
--
ALTER TABLE `owa_ua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owa_user`
--
ALTER TABLE `owa_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `owa_visitor`
--
ALTER TABLE `owa_visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owa_user`
--
ALTER TABLE `owa_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
