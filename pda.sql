-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2015 at 03:56 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pda`
--

-- --------------------------------------------------------

--
-- Table structure for table `calender`
--

CREATE TABLE IF NOT EXISTS `calender` (
  `uid` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `event_name` text,
  `description` text,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collab-details`
--

CREATE TABLE IF NOT EXISTS `collab-details` (
  `eventid` bigint(20) NOT NULL,
  `event-name` text NOT NULL,
  `user-list` longtext NOT NULL,
  `time` time NOT NULL,
  `user-state-list` longtext NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collab-history`
--

CREATE TABLE IF NOT EXISTS `collab-history` (
  `eventid` bigint(20) NOT NULL,
  `event-name` text NOT NULL,
  `user-list` longtext NOT NULL,
  `time` time NOT NULL,
  `user-state-list` longtext NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `uid` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `event_name` text,
  `description` text,
  `user_action` int(11) DEFAULT NULL,
  `action_msg` text,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` text,
  `password` text,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userlink`
--

CREATE TABLE IF NOT EXISTS `userlink` (
  `uid` int(11) NOT NULL,
  `links` text,
  `priority` text,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `uid` int(11) NOT NULL,
  `name` text,
  `dob` text,
  `designation` text,
  `description` text,
  `contact_num` bigint(20) DEFAULT NULL,
  `email` text,
  PRIMARY KEY (`uid`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
