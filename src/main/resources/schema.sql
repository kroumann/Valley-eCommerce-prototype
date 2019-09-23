-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2019 at 06:13 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `valley`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` bigint(20) NOT NULL,
  `superior_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_lwef285q39g9a7n7rgfcdyodw` (`superior_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physical_product`
--

DROP TABLE IF EXISTS `physical_product`;
CREATE TABLE IF NOT EXISTS `physical_product` (
  `height` float NOT NULL,
  `length` float NOT NULL,
  `weight` float NOT NULL,
  `width` float NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `average_price` float NOT NULL,
  `date_time` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1td6gorl25rsvufiiive2svlx` (`brand_id`),
  KEY `FK_45g3a4rexapplpirj3jor716p` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `imageid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (parentid) references category(id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ---------------------------------------------------------
--
-- Table structure for table `produit_category`
--
DROP TABLE IF EXISTS `produit_category`;
CREATE TABLE IF NOT EXISTS `produit_category` (
    `productid` bigint(20) NOT NULL,
    `categoryid` bigint(20) NOT NULL,
    primary key (`productid`, `categoryid`),
    foreign key (`productid`) references product(`id`),
    foreign key (`categoryid`) references category(`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--  ---------------------------------------------------------
--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_type` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `store_owner_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_d0p5ly1cv6guij7sq1mbnr8ec` (`name`),
  KEY `FK_q2q7cq04ioh0mv037i48mvl7y` (`store_owner_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_collab_history`
--

DROP TABLE IF EXISTS `store_collab_history`;
CREATE TABLE IF NOT EXISTS `store_collab_history` (
  `id` bigint(20) NOT NULL,
  `collab_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hdff12d8c3108ny06ini55t23` (`collab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_history`
--

DROP TABLE IF EXISTS `store_history`;
CREATE TABLE IF NOT EXISTS `store_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5n685rt2glu9pxe0l1m4duvv0` (`store_id`),
  KEY `FK_gsp5ds0ktogc9u43hv43pgb6o` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_owner`
--

DROP TABLE IF EXISTS `store_owner`;
CREATE TABLE IF NOT EXISTS `store_owner` (
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_owner_collaborated_stores`
--

DROP TABLE IF EXISTS `store_owner_collaborated_stores`;
CREATE TABLE IF NOT EXISTS `store_owner_collaborated_stores` (
  `collaborators_user_id` bigint(20) NOT NULL,
  `collaborated_stores_id` bigint(20) NOT NULL,
  PRIMARY KEY (`collaborators_user_id`,`collaborated_stores_id`),
  KEY `FK_npqg2lxw1d01l0t7vgqb4mp62` (`collaborated_stores_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
CREATE TABLE IF NOT EXISTS `store_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `views` int(11) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nytc5kna59uyspbegkf3il5xw` (`product_id`),
  KEY `FK_eskpx52hpw1adtafvha4kixxc` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_product_history`
--

DROP TABLE IF EXISTS `store_product_history`;
CREATE TABLE IF NOT EXISTS `store_product_history` (
  `old_description` varchar(1000) DEFAULT NULL,
  `old_name` varchar(255) DEFAULT NULL,
  `old_product_price` float NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `store_productid` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
CREATE TABLE IF NOT EXISTS `user_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `added_date` datetime NOT NULL,
  `address` varchar(255) NOT NULL,
  `delivered_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `processed` bit(1) NOT NULL,
  `processed_date` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `store_product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hb44ymep6ddcjg3ulywjw0euo` (`store_product_id`),
  KEY `FK_aqx6wgd5ew0f8l9qlcuhuw5h6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` bigint(20) NOT NULL,
  `roles` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`roles`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `virtual_product`
--

DROP TABLE IF EXISTS `virtual_product`;
CREATE TABLE IF NOT EXISTS `virtual_product` (
  `serial` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

-- GENERATED ALWAYS AS(`form_data` ->> '$.type') 

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_data` JSON NOT NULL,
  `type` VARCHAR(255) NOT NULL,  
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  foreign key (`user_id`) references user(`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
