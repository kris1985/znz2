-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 01 月 21 日 15:19
-- 服务器版本: 5.5.25-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `znz`
--
CREATE DATABASE IF NOT EXISTS `znz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `znz`;

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(11) auto_increment NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `pwd` varchar(16) NOT NULL,
  `company` varchar(64) NOT NULL,
  `limit_ip_flag` int(11) NOT NULL,
  `limit_ips` varchar(120) NOT NULL,
  `access_flag` int(11) NOT NULL,
  `max_download_times` int(11) NOT NULL,
  `download_per_day` int(11) NOT NULL,
  `download_total` int(11) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_id` int(11) DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- --------------------------------------------------------

--
-- 表的结构 `t_user_auth`
--

CREATE TABLE IF NOT EXISTS `t_user_auth` (
  `id` int(11) auto_increment NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_path` varchar(240) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户访问权限表';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
