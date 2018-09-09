-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-09-09 07:01:37
-- 服务器版本： 5.7.23
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `taskflow`
--

-- --------------------------------------------------------

--
-- 表的结构 `taskflow_task_sub`
--

CREATE TABLE `taskflow_task_sub` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `method` char(50) DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` enum('waiting','running','pause','finished') NOT NULL DEFAULT 'waiting',
  `max_times` int(11) NOT NULL DEFAULT '5',
  `retry_times` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taskflow_task_sub`
--
ALTER TABLE `taskflow_task_sub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_id_method_unique` (`task_id`,`method`) USING BTREE,
  ADD KEY `task_id_status_index` (`task_id`,`status`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `taskflow_task_sub`
--
ALTER TABLE `taskflow_task_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-09-08 15:21:19
-- 服务器版本： 5.7.23
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskflow`
--

-- --------------------------------------------------------

--
-- 表的结构 `taskflow_task`
--

CREATE TABLE `taskflow_task` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `status` enum('normal','finished','pause','running') NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taskflow_task`
--
ALTER TABLE `taskflow_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `taskflow_task`
--
ALTER TABLE `taskflow_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;