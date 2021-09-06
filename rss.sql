-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 04:06 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adp`
--

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE `rss` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(400) NOT NULL,
  `link` varchar(400) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`id`, `title`, `description`, `image`, `link`, `postdate`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa,', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa, eget sagittis sapien scelerisque quis. Nam in lectus sed dolor molestie congue. Mauris facilisis quam risus. Aliquam ut ornare elit. Sed fringilla elementum orci, pellentesque interdum mi. Nunc purus purus, lacinia id neque a, sollicitudin eleifend risus. Aenean magna lorem, congue quis sollicitudin non, pretium at tellus. Integer porttitor pulvinar lacus a maximus.', 'img1', 'https://anshumanbharatiya.tk/', '2018-09-11 15:57:40'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa,', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa, eget sagittis sapien scelerisque quis. Nam in lectus sed dolor molestie congue. Mauris facilisis quam risus. Aliquam ut ornare elit. Sed fringilla elementum orci, pellentesque interdum mi. Nunc purus purus, lacinia id neque a, sollicitudin eleifend risus. Aenean magna lorem, congue quis sollicitudin non, pretium at tellus. Integer porttitor pulvinar lacus a maximus.', 'img2', 'https://anshumanbharatiya.tk/', '2020-07-15 15:57:40'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa, eget sagittis sapien scelerisque quis. Nam in lectus sed dolor molestie congue. Mauris facilisis quam risus. Aliquam ut ornare elit. Sed fringilla elementum orci, pellentesque interdum mi. Nunc purus purus, lacinia id neque a, sollicitudin eleifend risus. Aenean magna lorem, congue quis sollicitudin non, pretium at tellus. Integer porttitor pulvinar lacus a maximus.', 'img3', 'https://www.youtube.com/feed/library', '2021-07-14 16:03:55'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fermentum mi massa, eget sagittis sapien scelerisque quis. Nam in lectus sed dolor molestie congue. Mauris facilisis quam risus. Aliquam ut ornare elit. Sed fringilla elementum orci, pellentesque interdum mi. Nunc purus purus, lacinia id neque a, sollicitudin eleifend risus. Aenean magna lorem, congue quis sollicitudin non, pretium at tellus. Integer porttitor pulvinar lacus a maximus.', 'img4', 'https://www.youtube.com/feed/library', '2021-08-15 16:03:55'),
(5, 'Anshuman Bharatiya', 'Greetings! I am Anshuman Bharatiya, a Web Developer. At the beginning of my life, I was \"perfectly imperfect\" and had many flaws. I am always eager to learn new things and new technologies. Therefore, I earned my post-graduate master\'s degree in computer applications. I am looking for a position in an organization that will allow me to grow professionally as well as provide me with opportunities to be resourceful, innovative, and flexible. My work should be dedicated, and I should be faithful to my seniors.', 'https://anshumanbharatiya.tk/images/me1.webp', 'https://anshumanbharatiya.tk/', '2021-09-06 19:31:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rss`
--
ALTER TABLE `rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
